"""
Script principal para el entrenamiento, evaluación y comparación
de modelos de clasificación orientados a la predicción del riesgo
de deserción estudiantil.

Flujo general del proceso:

1. Conexión a base de datos MySQL y carga de datos desde la vista 'dataset_ml'.
2. Análisis exploratorio básico: visualización de la distribución
   de la variable objetivo 'riesgo_desercion'.
3. Preprocesamiento de datos mediante la función preparar_datos().
4. Entrenamiento y evaluación de modelos supervisados:
   - Decision Tree
   - Random Forest
   - Logistic Regression (con escalamiento previo)
5. Análisis de coeficientes del modelo de Regresión Logística
   para interpretación de variables.
6. Evaluación comparativa de un modelo heurístico basado en reglas
   (modelo_scoring) frente a los datos reales.

Modelos utilizados:
- Árbol de Decisión
- Random Forest
- Regresión Logística
- Modelo heurístico de puntuación

El objetivo es comparar desempeño predictivo y analizar
la importancia de variables en el riesgo de deserción.
"""

import pandas as pd
from sqlalchemy import create_engine
import matplotlib.pyplot as plt
from machine_learning.evaluation import evaluar_modelo
from machine_learning.models import decision_tree, random_forest, logistic_regression
from machine_learning.preprocessing import preparar_datos
from heuristic_model import modelo_scoring
from sklearn.metrics import accuracy_score, classification_report
from sklearn.preprocessing import StandardScaler

scaler = StandardScaler()

# conexion sql
usuario = "root"
password = "root"
host = "localhost"
database = "desercion_educativa"

engine = create_engine(f'mysql+pymysql://{usuario}:{password}@{host}/{database}')

# leer la view
df = pd.read_sql("SELECT * FROM dataset_ml", engine)
df['riesgo_desercion'].value_counts().plot(kind='bar')
plt.title('Distribución de Deserción')
plt.xlabel('Categoría')
plt.ylabel('Cantidad')
# plt.show()

X_train, X_test, y_train, y_test = preparar_datos(df)
print("------- Decision Tree -------")
evaluar_modelo(decision_tree(), X_train, X_test, y_train, y_test)

print('\n------- Random Forest --------\n')
evaluar_modelo(random_forest(), X_train, X_test, y_train, y_test)

# Regresion logistica
X_train_scaled = scaler.fit_transform(X_train)
X_test_scaled = scaler.transform(X_test)

print("------- Logistic Regression -------")
evaluar_modelo(logistic_regression(), X_train_scaled, X_test_scaled, y_train, y_test)

modelo = logistic_regression()
modelo.fit(X_train_scaled, y_train)

importancias = pd.DataFrame({
    "variable": X_train.columns,
    "coeficiente": modelo.coef_[0]
})
print(importancias)

# Heurístic model test

X_test_copy = X_test.copy()
X_test_copy['riesgo_real'] = y_test.values

reverse_map = {0: 'Alto', 1: 'Bajo',2:'Medio'}
X_test_copy['riesgo_real']=X_test_copy['riesgo_real'].map(reverse_map)
X_test_copy['pred_scoring']=X_test_copy.apply(modelo_scoring, axis=1)
print("------- Decision Tree -------")
print(f'Accuracy scoring: ',accuracy_score(X_test_copy['riesgo_real'], X_test_copy['pred_scoring']))
print(classification_report(X_test_copy['riesgo_real'], X_test_copy['pred_scoring']))