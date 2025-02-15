import json
import pymysql
import os

def lambda_handler(event, context):
    db_host = os.environ['db_host']
    db_username = os.environ['db_username']
    db_password = os.environ['db_password']

    # Connect to the RDS instance
    connection = pymysql.connect(
        host=db_host,
        user=db_username,
        password=db_password,
        database='mydatabase'
    )

    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM your_table")
        result = cursor.fetchall()

    connection.close()

    return {
        'statusCode': 200,
        'body': json.dumps(result)
    }
