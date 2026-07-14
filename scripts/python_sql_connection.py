import pandas as pd
from db_utils import create_connection

# Create database connection
conn = create_connection()

# -------------------------------
# Query 1: Total Sales by Branch
# -------------------------------
query = """
SELECT
    branch,
    SUM(sales) AS total_sales
FROM sales
GROUP BY branch;
"""

df = pd.read_sql(query, conn)

print("Total Sales by Branch:")
print(df)

print("\n" + "="*50 + "\n")

# ----------------------------------------
# Query 2: Parameterized Query
# ----------------------------------------
branch_name = "A"

query = """
SELECT *
FROM sales
WHERE branch = ?;
"""

df = pd.read_sql(query, conn, params=(branch_name,))

print(f"Sales Records for Branch {branch_name}:")
print(df.head())

# Close the connection
conn.close()