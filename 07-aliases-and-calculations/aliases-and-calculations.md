# Aliases and Calculated Columns

## 1. AS — Aliases

AS provides a temporary name to a column or table in a query.

### Column Alias

```sql
SELECT Product_Name AS Product,
       Price AS Cost
FROM Products;
```

The result displays Product and Cost as column names.

### Table Alias

```sql
SELECT *
FROM Products AS P;
```

Here, P is an alias for Products.

Important:

- Aliases do not permanently rename database columns or tables.
- Use commas to separate selected columns.
- SELECT aliases can generally be used in ORDER BY.

## 2. Calculated Columns

SQL supports mathematical calculations in queries.

| Operator | Meaning |
|---|---|
| + | Addition |
| - | Subtraction |
| * | Multiplication |
| / | Division |

### Double the Price

```sql
SELECT Product_Name,
       Price * 2 AS Double_Price
FROM Products;
```

### Add 100

```sql
SELECT Product_Name,
       Price + 100 AS Price_With_100
FROM Products;
```

### Calculate 10% Discount

```sql
SELECT Product_Name,
       Price * 0.9 AS Discounted_Price
FROM Products;
```

### Calculate 10% Tax

```sql
SELECT Product_Name,
       Price * 1.10 AS Final_Price
FROM Products;
```

## 3. Combining Calculations with Filtering

```sql
SELECT Product_Name,
       Price * 1.10 AS Final_Price
FROM Products
WHERE Category = 'Electronics'
ORDER BY Final_Price ASC;
```

## Important

- Calculations do not change original stored values.
- In PostgreSQL, a SELECT-list alias generally cannot be reused in another expression in that same SELECT list.
- Use the original column name for such calculations.
