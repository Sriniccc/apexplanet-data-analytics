# Task 2 Report – SQL & Data Extraction

**Internship:** ApexPlanet Data Analytics Internship  
**Task:** Task 2 – SQL & Data Extraction  
**Author:** Srinic  
**Date:** July 2026

---

# Objective

The objective of Task 2 was to strengthen SQL fundamentals, perform business-oriented data analysis using SQL, and integrate Python with a relational database for automated data extraction and analysis.

---

# Dataset

**Dataset Used:** Supermarket Sales Dataset

The dataset contains transactional sales records, including:

- Invoice ID
- Branch
- City
- Customer Type
- Gender
- Product Line
- Unit Price
- Quantity
- Sales
- Payment Method
- Rating
- Gross Income
- Date and Time

The cleaned dataset generated in Task 1 was imported into a SQLite database for querying and analysis.

---

# Tools & Technologies

- Python 3.14
- SQLite
- Pandas
- Jupyter Notebook
- VS Code
- Git & GitHub

---

# Activities Performed

## 1. Database Setup

- Created a local SQLite database.
- Imported the cleaned supermarket sales dataset.
- Verified successful data import.

---

## 2. SQL Fundamentals

Executed a variety of SQL queries including:

- SELECT
- WHERE
- ORDER BY
- LIMIT
- Aggregate Functions
  - COUNT()
  - SUM()
  - AVG()
  - MIN()
  - MAX()
- GROUP BY
- HAVING

---

## 3. Advanced SQL

Implemented advanced SQL concepts such as:

- INNER JOIN
- LEFT JOIN
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
  - ROW_NUMBER()
  - RANK()
  - LAG()
  - LEAD()

---

## 4. Business Analysis

Generated business insights including:

- Monthly Sales Trend
- Product Category Performance
- Top Revenue Transactions
- Moving Average of Sales
- Cumulative Sales Analysis

---

## 5. SQL Optimization

- Created SQL Views
- Used `EXPLAIN QUERY PLAN`
- Implemented indexing for improved query performance

---

## 6. Python & SQL Integration

Successfully connected Python with SQLite using the `sqlite3` library.

Implemented:

- Database connection module (`db_utils.py`)
- SQL execution using Python
- Data extraction with `pandas.read_sql()`
- Parameterized SQL queries to improve security and prevent SQL injection

---

# Key Outcomes

- Successfully executed more than **20 SQL queries** covering fundamental and advanced SQL concepts.
- Demonstrated integration of SQL with Python for automated data extraction.
- Applied analytical SQL techniques to generate meaningful business insights.
- Organized the project into a structured repository following industry best practices.

---

# Skills Gained

Throughout this task, I strengthened my understanding of:

- SQL Query Writing
- Database Management
- Data Extraction
- Data Aggregation
- Business Analytics
- Python–SQL Integration
- Query Optimization
- Git & GitHub Workflow

---

# Conclusion

Task 2 provided practical experience in working with relational databases using SQL and integrating them with Python. The project enhanced my ability to retrieve, analyze, and process structured data while following professional development practices suitable for real-world data analytics projects.

---

**Project Repository:** GitHub

**Status:** ✅ Completed Successfully