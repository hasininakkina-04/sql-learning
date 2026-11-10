# SQL JOINS

## 1. What are JOINs?

A JOIN is used to combine rows from two or more tables based on a related column between them.

In relational databases, information is often distributed across multiple tables to avoid unnecessary duplication.

For example:

**Students Table**

| Student_ID | Name | Branch |
|---|---|---|
| 1 | Anu | CSE |
| 2 | Ravi | ECE |
| 3 | Kiran | CSE |
| 4 | Priya | IT |

**Marks Table**

| Mark_ID | Student_ID | Subject | Mark |
|---|---|---|---|
| 101 | 1 | Java | 90 |
| 102 | 1 | SQL | 85 |
| 103 | 2 | Java | 80 |
| 104 | 3 | Java | 95 |
| 105 | 5 | Python | 88 |

Both tables contain Student_ID.

This column allows us to connect student information with their marks.

## 2. JOIN Syntax

```sql
SELECT columns
FROM Table1
JOIN Table2
ON Table1.common_column = Table2.common_column;
```

- SELECT: Specifies the columns to retrieve.
- FROM: Specifies the first table.
- JOIN: Specifies the second table.
- ON: Defines the matching condition.

Table aliases can make queries shorter and easier to read.

Example:

```sql
SELECT S.Name, M.Subject, M.Mark
FROM Students AS S
INNER JOIN Marks AS M
ON S.Student_ID = M.Student_ID;
```

## 3. INNER JOIN

### Meaning

INNER JOIN returns only the rows that have matching values in both tables.

Unmatched records are excluded.

### Syntax

```sql
SELECT columns
FROM Table1
INNER JOIN Table2
ON Table1.common_column = Table2.common_column;
```

### Example

```sql
SELECT S.Name, M.Subject, M.Mark
FROM Students AS S
INNER JOIN Marks AS M
ON S.Student_ID = M.Student_ID;
```

### Important points

- Only matching records are returned.
- Unmatched rows from either table are excluded.
- JOIN alone means INNER JOIN in PostgreSQL.

## 4. LEFT JOIN

### Meaning

LEFT JOIN returns all records from the left table and matching records from the right table.

If there is no matching record in the right table, its columns contain NULL.

### Syntax

```sql
SELECT columns
FROM Table1
LEFT JOIN Table2
ON Table1.common_column = Table2.common_column;
```

### Example

```sql
SELECT S.Name, M.Subject, M.Mark
FROM Students AS S
LEFT JOIN Marks AS M
ON S.Student_ID = M.Student_ID;
```

### Important points

- Every record from the left table is preserved.
- Matching records from the right table are included.
- Unmatched right-side columns contain NULL.

## 5. RIGHT JOIN

### Meaning

RIGHT JOIN returns all records from the right table and matching records from the left table.

If no matching record exists in the left table, its columns contain NULL.

### Syntax

```sql
SELECT columns
FROM Table1
RIGHT JOIN Table2
ON Table1.common_column = Table2.common_column;
```

### Example

```sql
SELECT S.Name, M.Subject, M.Mark
FROM Students AS S
RIGHT JOIN Marks AS M
ON S.Student_ID = M.Student_ID;
```

### Important points

- Every record from the right table is preserved.
- Matching records from the left table are included.
- Unmatched left-side columns contain NULL.

## 6. FULL OUTER JOIN

### Meaning

FULL OUTER JOIN returns all records from both tables.

It includes matching and unmatched records.

Where a matching record does not exist, the missing side contains NULL.

### Syntax

```sql
SELECT columns
FROM Table1
FULL OUTER JOIN Table2
ON Table1.common_column = Table2.common_column;
```

### Example

```sql
SELECT S.Name, M.Subject, M.Mark
FROM Students AS S
FULL OUTER JOIN Marks AS M
ON S.Student_ID = M.Student_ID;
```

### Important points

- Matching records from both tables are included.
- Unmatched records from the left table are included.
- Unmatched records from the right table are included.
- Missing values are represented by NULL.

## 7. SELF JOIN

### Meaning

A SELF JOIN joins a table with itself.

It is useful when records in the same table are related to other records in that table.

For example, an Employees table can contain:

- Employee_ID
- Employee_Name
- Manager_ID

Manager_ID references another employee's Employee_ID.

### Example

```sql
SELECT
    E.Employee_Name AS Employee,
    M.Employee_Name AS Manager
FROM Employees AS E
LEFT JOIN Employees AS M
ON E.Manager_ID = M.Employee_ID;
```

### Important points

- The same table is used twice.
- Different aliases are necessary to distinguish the two references.
- Useful for employee-manager relationships and hierarchical data.

## 8. ON vs WHERE in LEFT JOIN

This is an important distinction.

### Using ON

```sql
SELECT S.Name, M.Subject, M.Mark
FROM Students AS S
LEFT JOIN Marks AS M
ON S.Student_ID = M.Student_ID
AND M.Subject = 'Java';
```

The condition is applied while matching records.

All students are preserved, but only Java marks are matched.

Students without Java marks still appear with NULL values in the Marks columns.

### Using WHERE

```sql
SELECT S.Name, M.Subject, M.Mark
FROM Students AS S
LEFT JOIN Marks AS M
ON S.Student_ID = M.Student_ID
WHERE M.Subject = 'Java';
```

The WHERE condition filters the resulting rows.

Students without matching Java records are excluded because their Subject value is NULL.

Therefore, this query behaves like an INNER JOIN for this condition.

### Remember

- ON defines how records are matched.
- WHERE filters the resulting rows.
- Moving a condition from ON to WHERE can change the result of an outer join.

## 9. Comparison of JOIN Types

| JOIN Type | Result |
|---|---|
| INNER JOIN | Only matching rows |
| LEFT JOIN | All left rows + matching right rows |
| RIGHT JOIN | All right rows + matching left rows |
| FULL OUTER JOIN | All rows from both tables |
| SELF JOIN | A table joined with itself |

## 10. Common Mistakes

1. Forgetting the ON condition.
2. Using incorrect columns for matching.
3. Forgetting table aliases when column names are ambiguous.
4. Assuming LEFT JOIN and INNER JOIN return the same records.
5. Confusing ON and WHERE conditions in outer joins.
6. Forgetting that unmatched columns in outer joins contain NULL.
7. Assuming SELF JOIN requires a separate table.

## 11. Practical Applications

JOINs are commonly used in:

- E-commerce applications to combine customers and orders.
- Banking systems to retrieve customer account information.
- Student management systems to combine student details and marks.
- Employee management systems to retrieve employee-manager relationships.
- Hospital systems to combine patient and appointment information.

## Key Takeaways

- JOINs combine related information from multiple tables.
- The ON clause specifies the matching condition.
- INNER JOIN returns matching records.
- LEFT JOIN preserves all records from the left table.
- RIGHT JOIN preserves all records from the right table.
- FULL OUTER JOIN preserves records from both tables.
- SELF JOIN connects records within the same table.
- ON and WHERE can produce different results when used with outer joins.
