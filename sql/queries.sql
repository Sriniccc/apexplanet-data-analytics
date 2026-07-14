-- ==========================================
-- TASK 2 : SQL FUNDAMENTALS
-- Supermarket Sales Database
-- ==========================================

-- 1. Display all records
SELECT * FROM sales;

-- 2. Display selected columns
SELECT invoice_id, branch, city, sales
FROM sales;

-- 3. Sales greater than 500
SELECT *
FROM sales
WHERE sales > 500;

-- 4. Sort sales in descending order
SELECT *
FROM sales
ORDER BY sales DESC;

-- 5. Display first 10 records
SELECT *
FROM sales
LIMIT 10;

-- ==========================================
-- AGGREGATE FUNCTIONS
-- ==========================================

-- 6. Total number of transactions
SELECT COUNT(*) AS total_transactions
FROM sales;

-- 7. Total sales
SELECT SUM(sales) AS total_sales
FROM sales;

-- 8. Average sales
SELECT AVG(sales) AS average_sales
FROM sales;

-- 9. Maximum sale
SELECT MAX(sales) AS highest_sale
FROM sales;

-- 10. Minimum sale
SELECT MIN(sales) AS lowest_sale
FROM sales;

-- ==========================================
-- GROUP BY & HAVING
-- ==========================================

-- 11. Total sales by branch
SELECT branch, SUM(sales) AS total_sales
FROM sales
GROUP BY branch;

-- 12. Total sales by city
SELECT city, SUM(sales) AS total_sales
FROM sales
GROUP BY city;

-- 13. Average rating by product line
SELECT product_line, AVG(rating) AS average_rating
FROM sales
GROUP BY product_line;

-- 14. Number of transactions by payment method
SELECT payment, COUNT(*) AS total_transactions
FROM sales
GROUP BY payment;

-- 15. Branches with total sales greater than 100000
SELECT branch, SUM(sales) AS total_sales
FROM sales
GROUP BY branch
HAVING SUM(sales) > 100000;

-- ==========================================
-- JOINS
-- ==========================================

-- 16. INNER JOIN - Sales with Branch Details
SELECT
    s.invoice_id,
    s.branch,
    b.city,
    s.sales
FROM sales s
INNER JOIN branches b
ON s.branch = b.branch;

-- 17. LEFT JOIN - Show all sales with branch information
SELECT
    s.invoice_id,
    s.branch,
    b.city,
    s.sales
FROM sales s
LEFT JOIN branches b
ON s.branch = b.branch;

-- ==========================================
-- SUBQUERY
-- ==========================================

-- 18. Transactions with sales above average
SELECT *
FROM sales
WHERE sales >
(
    SELECT AVG(sales)
    FROM sales
);

-- ==========================================
-- CTE
-- ==========================================

-- 19. Sales by Branch using CTE
WITH branch_sales AS
(
    SELECT
        branch,
        SUM(sales) AS total_sales
    FROM sales
    GROUP BY branch
)

SELECT *
FROM branch_sales;

-- ==========================================
-- WINDOW FUNCTIONS
-- ==========================================

-- 20. ROW_NUMBER
SELECT
    invoice_id,
    sales,
    ROW_NUMBER() OVER (ORDER BY sales DESC) AS row_num
FROM sales;

-- 21. RANK
SELECT
    invoice_id,
    sales,
    RANK() OVER (ORDER BY sales DESC) AS sales_rank
FROM sales;

-- 22. LAG
SELECT
    invoice_id,
    sales,
    LAG(sales) OVER (ORDER BY sales) AS previous_sale
FROM sales;

-- 23. LEAD
SELECT
    invoice_id,
    sales,
    LEAD(sales) OVER (ORDER BY sales) AS next_sale
FROM sales;

-- ==========================================
-- SQL VIEWS
-- ==========================================

CREATE VIEW IF NOT EXISTS sales_summary AS
SELECT
    branch,
    SUM(sales) AS total_sales
FROM sales
GROUP BY branch;

SELECT *
FROM sales_summary;

