# DISTINCT and NULL

## 1. DISTINCT

DISTINCT removes duplicate rows from the query result.

Example:

```sql
SELECT DISTINCT Category
FROM Products;
```

This returns each category only once.

### DISTINCT with Multiple Columns

```sql
SELECT DISTINCT Category, Price
FROM Products;
```

DISTINCT checks the complete combination of selected columns.

For example:

| Category | Price |
|---|---:|
| Electronics | 500 |
| Electronics | 800 |
| Furniture | 500 |
| Furniture | 3000 |

Electronics appears twice because the combinations are different.

## 2. NULL

NULL represents missing or unknown information.

NULL is different from:

- 0
- Empty string
- The text 'Unknown'

## 3. IS NULL

Finds rows with missing values.

```sql
SELECT * FROM Students
WHERE Phone IS NULL;
```

## 4. IS NOT NULL

Finds rows with available values.

```sql
SELECT * FROM Students
WHERE Phone IS NOT NULL;
```

## 5. Important Rule

Incorrect:

```sql
WHERE Phone = NULL;
```

Correct:

```sql
WHERE Phone IS NULL;
```

## 6. NULL in Conditions

```sql
SELECT * FROM Students
WHERE Age > 18;
```

If Age is NULL, SQL cannot determine whether the condition is TRUE.

SQL uses three-valued logic:

- TRUE
- FALSE
- UNKNOWN

WHERE returns only rows where the condition is TRUE.
