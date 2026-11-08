-- IN, NOT IN, BETWEEN, LIKE

-- IN

-- Q1. Find Electronics and Furniture products.
SELECT * FROM Products
WHERE Category IN ('Electronics', 'Furniture');

-- Q2. Find products with prices 500, 1500 or 5000.
SELECT * FROM Products
WHERE Price IN (500, 1500, 5000);

-- Q3. Exclude Electronics products.
SELECT * FROM Products
WHERE Category NOT IN ('Electronics');

-- Q4. Find products belonging to the listed categories.
SELECT * FROM Products
WHERE Category IN ('Electronics', 'Furniture', 'Clothing');

-- Q5. Find Electronics and Furniture products sorted by price.
SELECT * FROM Products
WHERE Category IN ('Electronics', 'Furniture')
ORDER BY Price ASC;


-- BETWEEN

-- Q6. Find products priced between 500 and 5000.
SELECT * FROM Products
WHERE Price BETWEEN 500 AND 5000;

-- Q7. Find products priced between 1000 and 7000.
SELECT * FROM Products
WHERE Price BETWEEN 1000 AND 7000;

-- Q8. Find Electronics products priced between 500 and 2000.
SELECT * FROM Products
WHERE Category = 'Electronics'
AND Price BETWEEN 500 AND 2000;

-- Q9. Find products priced between 500 and 7000,
-- sorted from highest to lowest.
SELECT * FROM Products
WHERE Price BETWEEN 500 AND 7000
ORDER BY Price DESC;

-- Q10. Find the 3 cheapest products priced between 500 and 7000.
SELECT * FROM Products
WHERE Price BETWEEN 500 AND 7000
ORDER BY Price ASC
LIMIT 3;


-- LIKE

-- Q11. Find product names starting with L.
SELECT * FROM Products
WHERE Product_Name LIKE 'L%';

-- Q12. Find product names ending with e.
SELECT * FROM Products
WHERE Product_Name LIKE '%e';

-- Q13. Find product names containing phone.
SELECT * FROM Products
WHERE Product_Name LIKE '%phone%';

-- Q14. Find product names containing oo.
SELECT * FROM Products
WHERE Product_Name LIKE '%oo%';

-- Q15. Find product names starting with K and costing less than 1000.
SELECT * FROM Products
WHERE Product_Name LIKE 'K%' AND Price < 1000;

-- Q16. Find product names containing e, sorted by price.
SELECT * FROM Products
WHERE Product_Name LIKE '%e%'
ORDER BY Price ASC;
