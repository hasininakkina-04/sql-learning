-- GROUP BY AND HAVING PRACTICE
-- Table: Products
-- Columns: Product_ID, Product_Name, Price, Category

-- GROUP BY

-- Q1. Find the number of products in each category.
SELECT Category, COUNT(*) FROM Products GROUP BY Category;

-- Q2. Find the average price in each category.
SELECT Category, AVG(Price) FROM Products GROUP BY Category;

-- Q3. Find the cheapest product price in each category.
SELECT Category, MIN(Price) FROM Products GROUP BY Category;

-- Q4. Find the total price of products in each category.
SELECT Category AS Product_Category, SUM(Price) AS Total_Price
FROM Products
GROUP BY Category;


-- HAVING

-- Q5. Display categories having more than 2 products.
SELECT Category, COUNT(*)
FROM Products
GROUP BY Category
HAVING COUNT(*) > 2;

-- Q6. Display categories whose average price is greater than 2000.
SELECT Category, AVG(Price)
FROM Products
GROUP BY Category
HAVING AVG(Price) > 2000;

-- Q7. Display categories whose total product price exceeds 10000.
SELECT Category, SUM(Price)
FROM Products
GROUP BY Category
HAVING SUM(Price) > 10000;

-- Q8. Consider only products costing more than 1000.
-- Display categories having more than 1 such product.
SELECT Category, COUNT(*)
FROM Products
WHERE Price > 1000
GROUP BY Category
HAVING COUNT(*) > 1;

-- Q9. Display categories whose maximum product price exceeds 5000.
-- Sort by maximum price in descending order.
SELECT Category, MAX(Price)
FROM Products
GROUP BY Category
HAVING MAX(Price) > 5000
ORDER BY MAX(Price) DESC;
