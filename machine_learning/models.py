from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier


def decision_tree():
    return DecisionTreeClassifier(
        max_depth=5,
        min_samples_leaf=5,
        random_state=42
    )

def random_forest():
    return RandomForestClassifier(
        n_estimators=100,
        random_state=42
    )

