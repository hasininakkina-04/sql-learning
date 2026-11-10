-- JOINS PRACTICE
-- Tables:
-- Students(Student_ID, Name)
-- Marks(Mark_ID, Student_ID, Subject, Mark)


-- INNER JOIN

-- Q1. Display students and their corresponding marks.
SELECT S.Name, M.Mark
FROM Students AS S
INNER JOIN Marks AS M
ON S.Student_ID = M.Student_ID;


-- Q2. Display students and their corresponding subjects.
SELECT S.Name, M.Subject
FROM Students AS S
INNER JOIN Marks AS M
ON S.Student_ID = M.Student_ID;


-- LEFT JOIN

-- Q3. Display all students and their marks, including students without marks.
SELECT S.Name, M.Mark
FROM Students AS S
LEFT JOIN Marks AS M
ON S.Student_ID = M.Student_ID;


-- Q4. Display all students and their subjects, including students without subjects.
SELECT S.Name, M.Subject
FROM Students AS S
LEFT JOIN Marks AS M
ON S.Student_ID = M.Student_ID;


-- Q5. Display all students, but show only Java marks when a matching Java record exists.
SELECT S.Name, M.Subject, M.Mark
FROM Students AS S
LEFT JOIN Marks AS M
ON S.Student_ID = M.Student_ID
AND M.Subject = 'Java';


-- RIGHT JOIN

-- Q6. Display every marks record along with the corresponding student's name.
-- Include records without matching students.
SELECT S.Name, M.Mark
FROM Students AS S
RIGHT JOIN Marks AS M
ON S.Student_ID = M.Student_ID;


-- Q7. Display every marks record, but show only Java marks.
-- Include records without matching students.
SELECT S.Name, M.Subject, M.Mark
FROM Students AS S
RIGHT JOIN Marks AS M
ON S.Student_ID = M.Student_ID
AND M.Subject = 'Java';


-- FULL OUTER JOIN

-- Q8. Display every student and every marks record, including unmatched records.
SELECT S.Name, M.Mark
FROM Students AS S
FULL OUTER JOIN Marks AS M
ON S.Student_ID = M.Student_ID;


-- FINDING UNMATCHED RECORDS

-- Q9. Display students who don't have matching marks.
SELECT S.Name, M.Mark
FROM Students AS S
LEFT JOIN Marks AS M
ON S.Student_ID = M.Student_ID
WHERE M.Student_ID IS NULL;


-- Q10. Display marks records that don't have a matching student.
SELECT S.Name, M.Mark
FROM Students AS S
RIGHT JOIN Marks AS M
ON S.Student_ID = M.Student_ID
WHERE S.Student_ID IS NULL;


-- Q11. Solve Q10 using LEFT JOIN instead of RIGHT JOIN.
SELECT S.Name, M.Mark
FROM Marks AS M
LEFT JOIN Students AS S
ON M.Student_ID = S.Student_ID
WHERE S.Student_ID IS NULL;


-- SELF JOIN

-- Table: Employees
-- Columns: Employee_ID, Name, Manager_ID


-- Q12. Display employee names and their corresponding manager names.
SELECT E.Name AS Employee, M.Name AS Manager
FROM Employees AS E
LEFT JOIN Employees AS M
ON E.Manager_ID = M.Employee_ID;


-- Q13. Display only employees who have a manager.
SELECT E.Name AS Employee, M.Name AS Manager
FROM Employees AS E
INNER JOIN Employees AS M
ON E.Manager_ID = M.Employee_ID;


-- Q14. Display employees who report directly to Rahul.
SELECT E.Name AS Employee, M.Name AS Manager
FROM Employees AS E
INNER JOIN Employees AS M
ON E.Manager_ID = M.Employee_ID
WHERE M.Name = 'Rahul';
