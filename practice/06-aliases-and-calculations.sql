-- ALIASES AND CALCULATED COLUMNS

-- Q1. Display Product_Name with the alias Product.
SELECT Product_Name AS Product FROM Products;

-- Q2. Display Price with the alias Cost.
SELECT Price AS Cost FROM Products;

-- Q3. Display product names and prices with aliases.
SELECT Product_Name AS Product, Price AS Cost
FROM Products;

-- Q4. Display Electronics products with aliases,
-- sorted by price in ascending order.
SELECT Product_Name AS Product, Price AS Cost
FROM Products
WHERE Category = 'Electronics'
ORDER BY Price ASC;


-- CALCULATED COLUMNS

-- Q5. Display double the price of every product.
SELECT Product_Name, Price, Price * 2 AS Double_Price
FROM Products;

-- Q6. Add 100 to every product price.
SELECT Product_Name, Price + 100 AS Price_With_100
FROM Products;

-- Q7. Calculate the price after a 10% discount.
SELECT Product_Name, Price,
       Price * 0.9 AS Discounted_Price
FROM Products;

-- Q8. Calculate the price after adding 10% tax.
SELECT Product_Name,
       Price AS Original_Price,
       Price * 1.10 AS Final_Price
FROM Products
WHERE Category = 'Electronics';

-- Q9. Increase Electronics product prices by 20%
-- and sort by the calculated price.
SELECT Product_Name AS Product,
       Price * 1.20 AS Final_Price
FROM Products
WHERE Category = 'Electronics'
ORDER BY Final_Price ASC;
