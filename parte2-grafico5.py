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
    SELECT 
        SUM(IX_Men10) AS suma_men10, 
        SUM(Ix_Tot) AS suma_total
    FROM hogar;
"""

# Lee los datos en un DataFrame de pandas
cursor = conn.cursor()
cursor.execute(sql_query)
data = cursor.fetchone()
cursor.close()

# Cierra la conexión
conn.close()

# Extrae los datos
suma_men10 = data[0]
suma_total = data[1]

# Calcula el porcentaje
porcentaje_men10 = (suma_men10 / suma_total) * 100

# Crea el gráfico de torta
labels = ['Menores', 'Resto']
sizes = [porcentaje_men10, 100 - porcentaje_men10]
colors = ['#ff9999', '#66b3ff']
explode = (0.1, 0)  # Explode IX_Men10

plt.pie(sizes, labels=labels, autopct='%1.1f%%', startangle=90, colors=colors, explode=explode)
plt.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle.
plt.title('Porcentaje de menores de 10 años(IX_Men10) con respecto al total de personas en el hogar(Ix_Tot)')
plt.show()
