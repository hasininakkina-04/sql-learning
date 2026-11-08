-- WHERE, COMPARISON OPERATORS, AND, OR, NOT

-- Q1. Find products costing less than 1000.
SELECT * FROM Products WHERE Price < 1000;

-- Q2. Find Electronics products costing less than 1000.
SELECT * FROM Products
WHERE Category = 'Electronics' AND Price < 1000;

-- Q3. Find products belonging to Electronics or Furniture.
SELECT * FROM Products
WHERE Category = 'Electronics' OR Category = 'Furniture';

-- Q4. Find products that do not belong to Furniture.
SELECT * FROM Products
WHERE Category <> 'Furniture';
