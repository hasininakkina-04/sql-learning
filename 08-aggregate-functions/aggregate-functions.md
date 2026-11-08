# SQL Aggregate Functions

Aggregate functions perform calculations on multiple rows and return a single result.

## 1. COUNT()

Counts rows or non-NULL values.

```sql
SELECT COUNT(*) AS Total_Products
FROM Products;
```

COUNT(*) counts all rows.

COUNT(column_name) counts only non-NULL values in that column.

## 2. SUM()

Calculates the total.

```sql
SELECT SUM(Price) AS Total_Price
FROM Products;
```

## 3. AVG()

Calculates the average.

```sql
SELECT AVG(Price) AS Average_Price
FROM Products;
```

## 4. MIN()

Finds the smallest value.

```sql
SELECT MIN(Price) AS Cheapest_Price
FROM Products;
```

## 5. MAX()

Finds the largest value.

```sql
SELECT MAX(Price) AS Highest_Price
FROM Products;
```

## 6. Aggregate Functions with WHERE

Aggregate functions can be combined with WHERE.

Example: Count Electronics products.

```sql
SELECT COUNT(*) AS Electronics_Count
FROM Products
WHERE Category = 'Electronics';
```

Example: Find the highest-priced Electronics product.

```sql
SELECT MAX(Price) AS Highest_Electronics_Price
FROM Products
WHERE Category = 'Electronics';
```

## Summary

| Function | Purpose |
|---|---|
| COUNT() | Count |
| SUM() | Total |
| AVG() | Average |
| MIN() | Minimum |
| MAX() | Maximum |

## Practice Status

Practice questions for this topic are maintained separately in the practice folder.
