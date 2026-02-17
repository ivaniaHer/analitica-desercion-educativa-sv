import pandas as pd
from sqlalchemy import create_engine
import matplotlib.pyplot as plt
from machine_learning.evaluation import evaluar_modelo
from machine_learning.models import decision_tree, random_forest
from machine_learning.preprocessing import preparar_datos

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
print("=== Decision Tree ===")
evaluar_modelo(decision_tree(), X_train, X_test, y_train, y_test)

print('\n------- Random Forest --------\n')
evaluar_modelo(random_forest(), X_train, X_test, y_train, y_test)