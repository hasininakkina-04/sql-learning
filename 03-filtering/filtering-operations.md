# SQL Filtering Operations

## 1. WHERE

WHERE filters rows based on a condition.

'sql
SELECT * FROM Products
WHERE Price < 1000;
'

## 2. Comparison Operators

| Operator | Meaning |
|---       |---|
| =        | Equal to |
| >        | Greater than |
| <        | Less than |
| >=       | Greater than or equal to |
| <=       | Less than or equal to |
| <>       | Not equal to |

Example:

'sql
SELECT * FROM Products
WHERE Category = 'Electronics';
'

Text values are generally enclosed in single quotes.

## 3. AND

All conditions must be TRUE.

'sql
SELECT * FROM Products
WHERE Category = 'Electronics'
AND Price < 1000;
'

## 4. OR

At least one condition must be TRUE.

`sql
SELECT * FROM Products
WHERE Category = 'Electronics'
OR Category = 'Furniture';
'

## 5. NOT

Reverses a condition.

'sql
SELECT * FROM Products
WHERE NOT Category = 'Furniture';
'

Alternatively:

'sql
SELECT * FROM Products
WHERE Category <> 'Furniture';
'

## 6. Combining Conditions

'sql
SELECT * FROM Products
WHERE Category = 'Electronics'
AND Price BETWEEN 500 AND 2000;
'

This retrieves Electronics products priced between 500 and 2000.

Remember:

- WHERE filters rows.
- AND requires all conditions to be TRUE.
- OR requires at least one condition to be TRUE.
- NOT reverses a condition.
