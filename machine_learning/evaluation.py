from sklearn.metrics import accuracy_score, classification_report, recall_score, f1_score
from datetime import datetime

fecha_actual = datetime.now().strftime("%Y-%m-%d")

resultados_modelos = []

def evaluar_y_guardar(nombre_modelo, modelo, X_train, X_test, y_train, y_test):
    """
        Entrena un modelo de clasificación, evalúa su desempeño y guarda sus métricas.
        Parameters
        nombre_modelo: str
            Nombre identificador del modelo evaluado.
        modelo: object
            Modelo de machine learning compatible con scikit-learn
            (debe implementar los métodos fit() y predict()).
        X_train: array-like
            Conjunto de características para entrenamiento.
        X_test: array-like
            Conjunto de características para prueba.
        y_train: array-like
            Etiquetas reales para entrenamiento.
        y_test: array-like
            Etiquetas reales para prueba.

        Description
        - Entrena el modelo con los datos de entrenamiento.
        - Genera predicciones sobre el conjunto de prueba.
        - Calcula métricas de evaluación: accuracy, recall macro y F1 weighted.
        - Guarda los resultados junto con la fecha en la lista global 'resultados_modelos'.
        - Imprime un reporte de clasificación detallado.
        """
    modelo.fit(X_train, y_train)

    y_pred = modelo.predict(X_test)

    acc = accuracy_score(y_test, y_pred)
    recall_macro = recall_score(y_test, y_pred, average="macro")
    f1_weighted = f1_score(y_test, y_pred, average="weighted")
    resultados_modelos.append({
        "modelo": nombre_modelo,
        "accuracy": acc,
        "recall_macro": recall_macro,
        "f1_weighted": f1_weighted,
        "fecha_modelo": fecha_actual
    })
    print(f"\n------- {nombre_modelo} -------")
    print("Accuracy:", acc)
    print(classification_report(y_test, y_pred))
    return modelo


def evaluar_heuristico(nombre_modelo, X_test, y_test, funcion_scoring):
    """
        Evalúa un modelo heurístico basado en reglas (scoring manual) y guarda sus métricas.
        Parameters
        nombre_modelo: str
            Nombre identificador del modelo heurístico.
        X_test: pandas.DataFrame
            Conjunto de características para prueba.
        y_test: pandas.Series
            Etiquetas reales correspondientes al conjunto de prueba.
        funcion_scoring: function
            Función personalizada que recibe una fila del DataFrame
            y devuelve la categoría de riesgo predicha.
        Description
        - Crea una copia del conjunto de prueba.
        - Agrega la columna 'riesgo_real'.
        - Convierte las etiquetas numéricas a etiquetas categóricas.
        - Aplica la función heurística fila por fila.
        - Calcula métricas de evaluación (accuracy, recall macro y F1 weighted).
        - Guarda los resultados junto con la fecha en la lista global 'resultados_modelos'.
        - Imprime el reporte de clasificación.
        """
    X_temp = X_test.copy()
    X_temp["riesgo_real"] = y_test.values

    reverse_map = {0: 'Alto', 1: 'Bajo', 2: 'Medio'}
    X_temp["riesgo_real"] = X_temp["riesgo_real"].map(reverse_map)

    y_pred = X_temp.apply(funcion_scoring, axis=1)

    acc = accuracy_score(X_temp["riesgo_real"], y_pred)
    recall_macro = recall_score(X_temp["riesgo_real"], y_pred, average="macro")
    f1_weighted = f1_score(X_temp["riesgo_real"], y_pred, average="weighted")

    resultados_modelos.append({
        "modelo": nombre_modelo,
        "accuracy": acc,
        "recall_macro": recall_macro,
        "f1_weighted": f1_weighted,
        "fecha_modelo": fecha_actual
    })

    print(f"\n------- {nombre_modelo} -------")
    print("Accuracy:", acc)
    print(classification_report(X_temp["riesgo_real"], y_pred))

