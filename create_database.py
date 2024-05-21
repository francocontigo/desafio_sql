import psycopg2
from dotenv import load_dotenv
import os

load_dotenv()

PASS_TEST = os.getenv("PASS_TEST")
USER_TEST = os.getenv("USER_TEST")
PORT_TEST = os.getenv("PORT_TEST")


def create_database():
    con = psycopg2.connect(
        host="localhost",
        database="postgres",
        user=USER_TEST,
        password=PASS_TEST,
        port=PORT_TEST,
    )
    con.autocommit = True
    cur = con.cursor()
    sql = """CREATE DATABASE DB_Teste;"""
    cur.execute(sql)
    con.close()


def main():
    create_database()


if __name__ == "__main__":
    main()
