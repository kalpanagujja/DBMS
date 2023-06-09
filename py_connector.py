import mysql.connector
from mysql.connector import errorcode
from mysql.connector.errors import DataError

# Method to get the records from the database to store in a file and to present it.
def WriteRows(conn,Query,file):
    cur = conn.cursor()
    cur.execute(Query)
    q = Query.split(' ')
    file.write(q[3]+" Table:\n")
    print(q[3]+" Table:")
    for rec in cur.fetchall():
        line=""
        for r in rec:
            line+=str(r)+","
        file.write(line+"\n")
        print(line)
    file.write("\n")
    print("\n")

try:
    # Connecting to Database
    conn = mysql.connector.connect(
        user = "root",
        password = "root@123",
        host = "localhost",
        database = "railwayDB"
    )
    print("database successfully connected!")

    # Opening a file to write
    file = open('output.txt','w')
    print("File successfully opened!")

    # Querying the Tables
    WriteRows(conn,"select * from passenger",file)
    WriteRows(conn,"select * from train",file)
    WriteRows(conn,"select * from station",file)
    WriteRows(conn,"select * from ticket",file)
    WriteRows(conn,"select * from schedule",file)
    print("Dataset created into the file successfully!")
    
except mysql.connector.Error as err:
    print("Error connecting to database")
    exit()
except IOError:
    print("File not found or path incorrect")
    exit()
finally:
    conn.close()
