-- AGGREGATE FUNCTIONS PRACTICE
-- Table: Products
-- Columns: Product_ID, Product_Name, Price, Category

-- Q1. Find the total number of products.
SELECT COUNT(*) FROM Products;

-- Q2. Find the total price of all products.
SELECT SUM(Price) FROM Products;

-- Q3. Find the average price of all products.
SELECT AVG(Price) FROM Products;

-- Q4. Find the cheapest product price.
SELECT MIN(Price) FROM Products;

-- Q5. Find the most expensive product price.
SELECT MAX(Price) FROM Products;

-- Q6. Count the number of Electronics products.
SELECT COUNT(*) FROM Products WHERE Category = 'Electronics';

-- Q7. Find the average price of Furniture products.
SELECT AVG(Price) FROM Products WHERE Category = 'Furniture';

-- Q8. Find the highest price among Electronics products.
SELECT MAX(Price) FROM Products WHERE Category = 'Electronics';
