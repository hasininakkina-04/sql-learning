# GROUP BY and HAVING

## 1. GROUP BY

`GROUP BY` combines rows that have the same value in a specified column into groups.

### Syntax

```sql
SELECT column_name, AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name;
```

### Example: Count products in each category

```sql
SELECT Category, COUNT(*)
FROM Products
GROUP BY Category;
```

### Other examples

Average price in each category:

```sql
SELECT Category, AVG(Price)
FROM Products
GROUP BY Category;
```

Total price in each category:

```sql
SELECT Category, SUM(Price)
FROM Products
GROUP BY Category;
```

Cheapest product in each category:

```sql
SELECT Category, MIN(Price)
FROM Products
GROUP BY Category;
```

## 2. Important GROUP BY Rule

When using GROUP BY, every selected column must generally be:

- Included in GROUP BY, or
- Used inside an aggregate function.

Incorrect:

```sql
SELECT Category, Product_Name, COUNT(*)
FROM Products
GROUP BY Category;
```

This is invalid because Product_Name is neither grouped nor aggregated.

## 3. HAVING

`HAVING` filters groups created by GROUP BY.

### Syntax

```sql
SELECT column_name, AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;
```

### Example: Categories with more than 3 products

```sql
SELECT Category, COUNT(*)
FROM Products
GROUP BY Category
HAVING COUNT(*) > 3;
```

### More examples

Categories with average price above 2000:

```sql
SELECT Category, AVG(Price)
FROM Products
GROUP BY Category
HAVING AVG(Price) > 2000;
```

Categories with total price above 10000:

```sql
SELECT Category, SUM(Price)
FROM Products
GROUP BY Category
HAVING SUM(Price) > 10000;
```

## 4. WHERE vs HAVING

| WHERE | HAVING |
|---|---|
| Filters individual rows | Filters groups |
| Applied before GROUP BY | Applied after GROUP BY |
| Commonly filters normal columns | Commonly filters aggregate results |

## 5. Combining WHERE and HAVING

Example: Consider products costing more than 1000, then display categories containing more than one such product.

```sql
SELECT Category, COUNT(*)
FROM Products
WHERE Price > 1000
GROUP BY Category
HAVING COUNT(*) > 1;
```

Explanation:

1. FROM selects the Products table.
2. WHERE filters products costing more than 1000.
3. GROUP BY groups the remaining products by category.
4. HAVING keeps categories with more than one product.
5. SELECT displays the category and count.

## 6. Sorting Grouped Results

Example: Display categories by maximum product price, highest first.

```sql
SELECT Category, MAX(Price)
FROM Products
GROUP BY Category
ORDER BY MAX(Price) DESC;
```

## 7. Logical Query Processing Order

A simplified logical order:

1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY

## 8. Key Takeaways

- GROUP BY creates groups based on matching values.
- Aggregate functions calculate values for each group.
- HAVING filters groups.
- WHERE filters rows before grouping.
- WHERE and HAVING can be used together.
- ORDER BY sorts the final grouped results.
