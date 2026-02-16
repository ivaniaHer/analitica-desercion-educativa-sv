from sklearn.metrics import accuracy_score, classification_report, confusion_matrix

def evaluar_modelo(modelo, X_train, X_test, y_train, y_test):

    modelo.fit(X_train, y_train)

    y_pred = modelo.predict(X_test)

    print("Train accuracy:", modelo.score(X_train, y_train))
    print("Test accuracy:", accuracy_score(y_test, y_pred))
    print(confusion_matrix(y_test, y_pred))
    print(classification_report(y_test, y_pred))
