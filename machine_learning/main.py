"""
Script principal para entrenamiento, evaluación y exportación
de modelos de clasificación para predicción de riesgo de deserción.
"""

import pandas as pd
from sqlalchemy import create_engine
import matplotlib.pyplot as plt
from machine_learning.models import decision_tree, random_forest, logistic_regression
from machine_learning.preprocessing import preparar_datos, preparar_datos_completo
from machine_learning.evaluation import evaluar_y_guardar, resultados_modelos, fecha_actual, evaluar_heuristico
from heuristic_model import modelo_scoring
from sklearn.metrics import (
    accuracy_score,
    classification_report,
    recall_score,
    f1_score
)
from sklearn.preprocessing import StandardScaler

# CONFIGURACIÓN
scaler = StandardScaler()
usuario = "root"
password = "root"
host = "localhost"
database = "desercion_educativa"

engine = create_engine(
    f'mysql+pymysql://{usuario}:{password}@{host}/{database}'
)

# CARGA DE DATOS

df = pd.read_sql("SELECT * FROM dataset_ml", engine)
# Visualización básica
df['riesgo_desercion'].value_counts().plot(kind='bar')
plt.title('Distribución de Deserción')
plt.xlabel('Categoría')
plt.ylabel('Cantidad')
# plt.show()

X_train, X_test, y_train, y_test = preparar_datos(df)

# ENTRENAMIENTO MODELOS

dt_model = evaluar_y_guardar(
    "Decision Tree",
    decision_tree(),
    X_train, X_test,
    y_train, y_test
)

rf_model = evaluar_y_guardar(
    "Random Forest",
    random_forest(),
    X_train, X_test,
    y_train, y_test
)

# Escalamiento para regresión logística
X_train_scaled = scaler.fit_transform(X_train)
X_test_scaled = scaler.transform(X_test)

lr_model = evaluar_y_guardar(
    "Logistic Regression",
    logistic_regression(),
    X_train_scaled, X_test_scaled,
    y_train, y_test
)


# PREDICCIONES COMPLETAS (LOGÍSTICA)

X_full, y_full, le = preparar_datos_completo(df)
X_full_scaled = scaler.transform(X_full)
df["riesgo_predicho_encoded"] = lr_model.predict(X_full_scaled)
df["riesgo_predicho"] = le.inverse_transform(df["riesgo_predicho_encoded"])

# Probabilidades por clase
probs = lr_model.predict_proba(X_full_scaled)
for i, clase in enumerate(lr_model.classes_):
    df[f"prob_clase_{clase}"] = probs[:, i]
df["fecha_modelo"] = fecha_actual
print("Accuracy global dataset completo:",
      accuracy_score(y_full, df["riesgo_predicho_encoded"]))
df.to_csv("predicciones_estudiantes.csv", index=False)

# IMPORTANCIA DE VARIABLES (LOGÍSTICA MULTICLASE)

importancias = pd.DataFrame(
    lr_model.coef_.T,
    columns=lr_model.classes_,
    index=X_train.columns
)
importancias["impacto_total"] = importancias.abs().sum(axis=1)
importancias = importancias.sort_values(by="impacto_total", ascending=False)
importancias["fecha_modelo"] = fecha_actual
def clasificar_importancia(valor):
    if valor > 3:
        return "Alta"
    elif valor > 1.5:
        return "Media"
    else:
        return "Baja"

importancias["nivel_importancia"] = importancias["impacto_total"].apply(clasificar_importancia)

importancias.to_csv("importancia_variables.csv")

print(importancias)

# MODELO HEURÍSTICO

evaluar_heuristico(
    "Heuristic Scoring",
    X_test,
    y_test,
    modelo_scoring
)

# EXPORTAR RESULTADOS DE MODELOS

df_resultados = pd.DataFrame(resultados_modelos)
df_resultados.to_csv("model_results.csv", index=False)

heuristic_acc = df_resultados[df_resultados["modelo"] == "Heuristic Scoring"]["accuracy"].values[0]
logistic_acc = df_resultados[df_resultados["modelo"] == "Logistic Regression"]["accuracy"].values[0]

comparacion = pd.DataFrame({
    "modelo": ["Heuristic Scoring", "Logistic Regression"],
    "accuracy": [heuristic_acc, logistic_acc],
    "fecha_modelo": fecha_actual
})

comparacion.to_csv("heuristic_vs_logistic.csv", index=False)

print("\nArchivos CSV generados correctamente:")
print("- model_results.csv")
print("- predicciones_estudiantes.csv")
print("- importancia_variables.csv")
print("- heuristic_vs_logistic.csv")