-- ORDER BY, ASC, DESC, LIMIT

-- Q1. Sort products by price in ascending order.
SELECT * FROM Products ORDER BY Price ASC;

-- Q2. Display product names and prices in descending price order.
SELECT Product_Name, Price
FROM Products
ORDER BY Price DESC;

-- Q3. Display Electronics products sorted by price.
SELECT * FROM Products
WHERE Category = 'Electronics'
ORDER BY Price ASC;

-- Q4. Display the first 3 products.
SELECT * FROM Products LIMIT 3;

-- Q5. Display the 3 cheapest products.
SELECT * FROM Products
ORDER BY Price ASC
LIMIT 3;

-- Q6. Display the 2 most expensive products.
SELECT * FROM Products
ORDER BY Price DESC
LIMIT 2;

-- Q7. Display the 3 cheapest Electronics products.
SELECT * FROM Products
WHERE Category = 'Electronics'
ORDER BY Price ASC
LIMIT 3;
