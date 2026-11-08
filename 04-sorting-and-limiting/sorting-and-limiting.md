# Sorting and Limiting Results

## 1. ORDER BY

ORDER BY sorts the returned results.

### ASC — Ascending

Smallest to largest or A to Z.

```sql
SELECT * FROM Products
ORDER BY Price ASC;
```

### DESC — Descending

Largest to smallest or Z to A.

```sql
SELECT * FROM Products
ORDER BY Price DESC;
```

## 2. Combining WHERE and ORDER BY

```sql
SELECT Product_Name, Price
FROM Products
WHERE Category = 'Electronics'
ORDER BY Price ASC;
```

This filters Electronics products and sorts them by price.

## 3. LIMIT

LIMIT restricts the number of rows returned.

```sql
SELECT * FROM Products
LIMIT 3;
```

## 4. Combining ORDER BY and LIMIT

Find the three cheapest products:

```sql
SELECT * FROM Products
ORDER BY Price ASC
LIMIT 3;
```

Find the two most expensive products:

```sql
SELECT * FROM Products
ORDER BY Price DESC
LIMIT 2;
```

## Important

- ORDER BY sorts results.
- ASC means ascending.
- DESC means descending.
- LIMIT restricts returned rows.
- ORDER BY does not permanently rearrange stored data.
