import pandas as pd
from sklearn.preprocessing import LabelEncoder
from sklearn.model_selection import train_test_split

def preparar_datos(df):
    le = LabelEncoder()
    df['desercion_encoded'] = le.fit_transform(df['riesgo_desercion'])
    df['apoyo_familiar'] = df['apoyo_familiar'].map({
        'Bajo': 0,
        'Medio': 1,
        'Alto': 2
    })
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
