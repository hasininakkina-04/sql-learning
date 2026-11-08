# Basic SQL Queries

## 1. What is a SQL Query?

A query is a request or command given to a database to perform an operation or retrieve information.

## 2. SELECT

SELECT is used to choose the columns we want to retrieve.

'sql
SELECT Name FROM Students;
'

This retrieves the Name column from Students.

## 3. FROM

FROM specifies the table from which we want to retrieve data.

'sql
SELECT Name FROM Students;
'

## 4. SELECT *

The asterisk (*) retrieves all columns.

'sql
SELECT * FROM Students;
'

## 5. Selecting Multiple Columns

Use commas to select multiple columns.

'sql
SELECT Name, Age FROM Students;
'

## 6. Basic Query Structure

'sql
SELECT column_name
FROM table_name;


Remember:

- SELECT → Which columns?
- FROM → Which table?

## 7. Example

'sql
SELECT Product_Name, Price
FROM Products;
'

This retrieves product names and prices from the Products table.
