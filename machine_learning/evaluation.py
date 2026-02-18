from sklearn.metrics import accuracy_score, classification_report, confusion_matrix

def evaluar_modelo(modelo, X_train, X_test, y_train, y_test):
    """
        Entrena un modelo de clasificación y evalúa su desempeño
        utilizando métricas estándar.
        - Ajusta (fit) el modelo con los datos de entrenamiento.
        - Genera predicciones sobre el conjunto de prueba.
        - Calcula y muestra:
            * Accuracy en entrenamiento.
            * Accuracy en prueba.
            * Matriz de confusión.
            * Reporte de clasificación (precision, recall, f1-score).
        Args:
            modelo: Modelo de clasificación compatible con scikit-learn.
            X_train (pd.DataFrame): Variables predictoras de entrenamiento.
            X_test (pd.DataFrame): Variables predictoras de prueba.
            y_train (pd.Series): Variable objetivo de entrenamiento.
            y_test (pd.Series): Variable objetivo de prueba.
        Returns:
            None: La función imprime las métricas de evaluación.
        """
    modelo.fit(X_train, y_train)
    y_pred = modelo.predict(X_test)

    print("Train accuracy:", modelo.score(X_train, y_train))
    print("Test accuracy:", accuracy_score(y_test, y_pred))
    print(confusion_matrix(y_test, y_pred))
    print(classification_report(y_test, y_pred))
