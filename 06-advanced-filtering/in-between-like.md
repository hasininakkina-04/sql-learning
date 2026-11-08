# Advanced SQL Filtering

## 1. IN

IN checks whether a column value matches any value in a given list.

```sql
SELECT * FROM Products
WHERE Category IN ('Electronics', 'Furniture');
```

Equivalent to:

```sql
SELECT * FROM Products
WHERE Category = 'Electronics'
OR Category = 'Furniture';
```

## 2. NOT IN

Excludes specified values.

```sql
SELECT * FROM Products
WHERE Category NOT IN ('Electronics');
```

## 3. BETWEEN

BETWEEN checks whether a value falls within a range.

Both endpoints are included.

```sql
SELECT * FROM Products
WHERE Price BETWEEN 500 AND 5000;
```

Equivalent to:

```sql
SELECT * FROM Products
WHERE Price >= 500
AND Price <= 5000;
```

## 4. LIKE

LIKE performs pattern matching on text.

Two important wildcards:

| Wildcard | Meaning |
|---|---|
| % | Any number of characters, including zero |
| _ | Exactly one character |

### Starts with L

```sql
SELECT * FROM Products
WHERE Product_Name LIKE 'L%';
```

### Ends with e

```sql
SELECT * FROM Products
WHERE Product_Name LIKE '%e';
```

### Contains phone

```sql
SELECT * FROM Products
WHERE Product_Name LIKE '%phone%';
```

### LIKE vs =

`=` checks an exact match.

`LIKE` checks a pattern.

## 5. PostgreSQL Note

- LIKE is case-sensitive.
- ILIKE is case-insensitive.

Example:

```sql
SELECT * FROM Products
WHERE Product_Name ILIKE 'l%';
```
