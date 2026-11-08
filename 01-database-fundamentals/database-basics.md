# Database Fundamentals

## 1. What is a Database?

A database is an organized collection of data that can be stored, accessed, and managed.

Example: A college database can store student details, marks, attendance, etc.

## 2. What is SQL?

SQL stands for Structured Query Language.

It is a language used to communicate with relational databases.

We use SQL to:
- Retrieve data.
- Insert new data.
- Update existing data.
- Delete data.
- Create and manage tables.

## 3. What is a DBMS?

DBMS stands for Database Management System.

It is software that helps us create, manage, and interact with databases.

## 4. What is PostgreSQL?

PostgreSQL is a relational Database Management System (DBMS) that uses SQL.

Other examples include MySQL, Oracle Database, and Microsoft SQL Server.

## 5. Database vs DBMS vs SQL

- Database: Where data is stored.
- DBMS: Software used to manage the database.
- SQL: Language used to communicate with the DBMS.

## 6. Tables, Rows, and Columns

Relational databases organize data into tables.

Example: Students

| Student_ID | Name | Age | Branch |
|---|---|---|---|
| 1 | Anu | 20 | CSE |
| 2 | Ravi | 21 | ECE |
| 3 | Kiran | 19 | CSE |

- Table: Collection of related data.
- Row: One complete record.
- Column: One particular attribute.
- Entity: A thing we want to store information about, such as Student or Product.

## 7. Primary Key (PK)

A primary key uniquely identifies every row in a table.

Example: Student_ID

Rules:
- Must be unique.
- Cannot contain NULL.
- A primary key can consist of one or multiple columns.

## 8. Foreign Key (FK)

A foreign key connects one table to another by referring to a key in the other table.

Example:

Students:

| Student_ID | Name |
|---|---|
| 1 | Anu |
| 2 | Ravi |

Marks:

| Mark_ID | Student_ID | Subject | Mark |
|---|---|---|---|
| 101 | 1 | Java | 90 |
| 102 | 1 | SQL | 85 |
| 103 | 2 | Java | 80 |

Here:
- Student_ID in Students is the Primary Key.
- Student_ID in Marks is a Foreign Key.

One student can have multiple marks records, so foreign key values can repeat.
