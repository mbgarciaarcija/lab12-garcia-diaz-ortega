import psycopg2
import matplotlib.pyplot as plt

# Datos de conexión
db_config = {
    'host': 'localhost',
    'database': 'lab12',
    'user': 'postgres',
    'password': '12345',
    'port': '5432',
}

# Crea la conexión
conn = psycopg2.connect(**db_config)

# Define la consulta SQL
sql_query = """
    SELECT 'Varon' AS Genero, COUNT(CH04) AS Total
    FROM individual
    WHERE CH04 = 1
    UNION ALL
    SELECT 'Mujer' AS Genero, COUNT(CH04) AS Total
    FROM individual
    WHERE CH04 = 2;
"""

# Lee los datos en un DataFrame de pandas
cursor = conn.cursor()
cursor.execute(sql_query)
data = cursor.fetchall()
cursor.close()

# Cierra la conexión
conn.close()

# Extrae los datos para el gráfico de barras
generos = [row[0] for row in data]
totales = [row[1] for row in data]

# Crea el gráfico de barras
plt.bar(generos, totales, color=['blue', 'pink'])
plt.xlabel('Género')
plt.ylabel('Total')
plt.title('Distribución por Género')
plt.show()

