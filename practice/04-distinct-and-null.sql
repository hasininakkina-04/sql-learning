-- DISTINCT AND NULL

-- Q1. Display unique product categories.
SELECT DISTINCT Category FROM Products;

-- Q2. Display unique product prices.
SELECT DISTINCT Price FROM Products;

-- Q3. Display unique categories for products costing more than 1000.
SELECT DISTINCT Category
FROM Products
WHERE Price > 1000;

-- Q4. Find students whose phone number is missing.
SELECT * FROM Students
WHERE Phone IS NULL;

-- Q5. Find students whose phone number is available.
SELECT * FROM Students
WHERE Phone IS NOT NULL;

-- Q6. Find CSE students whose phone number is missing.
SELECT * FROM Students
WHERE Branch = 'CSE' AND Phone IS NULL;
