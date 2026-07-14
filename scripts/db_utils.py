import sqlite3

DATABASE_PATH = "../data/database/supermarket.db"

def create_connection():
    """
    Creates and returns a SQLite database connection.
    """
    conn = sqlite3.connect(DATABASE_PATH)
    return conn