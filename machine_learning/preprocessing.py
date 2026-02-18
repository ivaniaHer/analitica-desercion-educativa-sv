import pandas as pd
from sklearn.preprocessing import LabelEncoder
from sklearn.model_selection import train_test_split

def preparar_datos(df):
    """
       Realiza el preprocesamiento del dataset para entrenamiento
       de modelos de clasificación.
       - Codificación de la variable objetivo 'riesgo_desercion' utilizando LabelEncoder.
       - Transformación ordinal de la variable 'apoyo_familiar'.
       - Eliminación de la columna identificadora 'id_estudiante'.
       - Separación de variables predictoras (X) y variable objetivo (y).
       - Codificación One-Hot para variables categóricas nominales
         ('dispositivo_tecnologico' y 'modalidad_educativa').
       - División del conjunto de datos en entrenamiento y prueba
         (70% entrenamiento, 30% prueba) usando estratificación.

       Args:
           df (pd.DataFrame): DataFrame original con los datos
                              de los estudiantes.

       Returns:
           tuple:
               X_train (pd.DataFrame): Variables predictoras de entrenamiento.
               X_test (pd.DataFrame): Variables predictoras de prueba.
               y_train (pd.Series): Variable objetivo de entrenamiento.
               y_test (pd.Series): Variable objetivo de prueba.
       """
    le = LabelEncoder()
    df['desercion_encoded'] = le.fit_transform(df['riesgo_desercion'])
    df['apoyo_familiar'] = df['apoyo_familiar'].map({
        'Bajo': 0,
        'Medio': 1,
        'Alto': 2
    })
    df = df.drop(columns=["id_estudiante"])
    X = df.drop(['riesgo_desercion', 'desercion_encoded'], axis=1)
    y = df['desercion_encoded']

    X = pd.get_dummies(
        X,
        columns=['dispositivo_tecnologico', 'modalidad_educativa'],
        drop_first=True
    )
    X_train, X_test, y_train, y_test = train_test_split(
        X, y,
        test_size=0.3,
        random_state=42,
        stratify=y
    )

    return X_train, X_test, y_train, y_test
