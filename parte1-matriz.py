import numpy as np
import psycopg2
import seaborn as sns
import matplotlib.pyplot as plt

# Datos de conexión
db_config = {
    'host': 'localhost',
    'database': 'lab12',
    'user': 'postgres',
    'password': '12345',
    'port': '5432',
}

# Nombres de los campos
column_names = ['CH04', 'CH07', 'CH08', 'NIVEL_ED', 'ESTADO', 'CAT_INAC', 'IPCF']

# Crea la conexión
conn = psycopg2.connect(**db_config)

# Define la consulta SQL
sql_query = """
    SELECT 
        CH04, CH07, CH08, NIVEL_ED, ESTADO, CAT_INAC, IPCF
    FROM individual;
"""

# Lee los datos en un arreglo NumPy
cursor = conn.cursor()
cursor.execute(sql_query)
data = np.array(cursor.fetchall(), dtype=float)  # Convertir a tipo float
cursor.close()

# Calcula la matriz de correlación
correlation_matrix = np.corrcoef(data, rowvar=False)

# Cierra la conexión
conn.close()

# Ajusta el tamaño de la figura
plt.figure(figsize=(10, 8))

# Crea un DataFrame de seaborn para la matriz de correlación
correlation_df = sns.heatmap(correlation_matrix, annot=True, fmt=".2f", cmap="coolwarm",
                             xticklabels=column_names, yticklabels=column_names)
plt.title("Matriz de Correlación")
plt.show()
