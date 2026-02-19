from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier
from sklearn.linear_model import LogisticRegression

def decision_tree():
    """
        Crea y devuelve un modelo de Árbol de Decisión para clasificación.
        - max_depth=5: Limita la profundidad del árbol para evitar sobreajuste.
        - min_samples_leaf=5: Define el número mínimo de muestras requeridas en una hoja.
        - random_state=42: Garantiza reproducibilidad en los resultados.
        Returns:
            DecisionTreeClassifier: Modelo configurado de Árbol de Decisión.
        """
    return DecisionTreeClassifier(
        max_depth=5,
        min_samples_leaf=5,
        random_state=42
    )

def random_forest():
    """
       Crea y devuelve un modelo de Random Forest para clasificación.
       - n_estimators=100: Número de árboles que conforman el bosque.
       - random_state=42: Garantiza reproducibilidad en los resultados.
       Returns:
           RandomForestClassifier: Modelo configurado de Random Forest.
       """
    return RandomForestClassifier(
        n_estimators=100,
        random_state=42
    )

def logistic_regression():
    """
        Crea y devuelve un modelo de Regresión Logística para clasificación.
        - max_iter=1000: Número máximo de iteraciones para asegurar convergencia.
        - random_state=42: Garantiza reproducibilidad en los resultados.
        Returns:
            LogisticRegression: Modelo configurado de Regresión Logística.
        """
    return LogisticRegression(
        max_iter=1000,
        random_state=42
    )