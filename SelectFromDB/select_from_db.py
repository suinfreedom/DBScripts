import mysql.connector
import sys
from mysql.connector import Error

try:
    connection = mysql.connector.connect(host='192.168.22.133',
                                         database='name',
                                         user='root',
                                         password='root')

    sql_select_query = sys.argv[1]

    cursor = connection.cursor()
    cursor.execute(sql_select_query)
    records = cursor.fetchall()

    print("INSERT INTO name.device_uuid (serial, uuid, rootca, clientcert, clientkey)")
    print("VALUES")
    for row in records:
        print("('"+row[0]+"','"+row[1]+"','"+row[2]+"','"+row[3]+"','"+row[4]+"'),")
    
       

except Error as e:
    print("Error reading data from MySQL table", e)
finally:
    if (connection.is_connected()):
        connection.close()
        cursor.close()
        print("MySQL connection is closed")
