from sklearn.tree import DecisionTreeClassifier


def decision_tree():
    return DecisionTreeClassifier(
        max_depth=5,
        min_samples_leaf=5,
        random_state=42
    )