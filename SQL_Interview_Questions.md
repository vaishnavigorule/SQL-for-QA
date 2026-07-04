# SQL Interview Questions for QA Engineers

This document contains commonly asked SQL interview questions for Manual Testing, Database Testing, and QA Engineer interviews.

---

# Basic SQL

## 1. What is SQL?
SQL (Structured Query Language) is used to store, retrieve, update, and manage data in relational databases.

---

## 2. What are the different SQL commands?

- DDL (CREATE, ALTER, DROP, TRUNCATE)
- DML (INSERT, UPDATE, DELETE)
- DQL (SELECT)
- DCL (GRANT, REVOKE)
- TCL (COMMIT, ROLLBACK, SAVEPOINT)

---

## 3. Difference between DELETE, DROP and TRUNCATE?

| DELETE | TRUNCATE | DROP |
|---------|----------|------|
| Removes rows | Removes all rows | Removes entire table |
| Can use WHERE | No WHERE | Deletes structure also |
| Can rollback | Depends on DB | Cannot recover easily |

---

## 4. Difference between CHAR and VARCHAR?

- CHAR → Fixed length
- VARCHAR → Variable length

---

## 5. What is a Primary Key?

A column that uniquely identifies each record and cannot contain NULL values.

---

## 6. What is a Foreign Key?

A column that creates a relationship between two tables.

---

## 7. What is a Unique Key?

Ensures unique values in a column.

---

## 8. What is NOT NULL?

Ensures a column cannot contain NULL values.

---

## 9. What is a CHECK Constraint?

Restricts values based on a condition.

Example:

CHECK (Age >=18)

---

## 10. What is a DEFAULT Constraint?

Assigns a default value when none is provided.

---

# SELECT Queries

## 11. How do you display all records?

```sql
SELECT * FROM Employee;
```

---

## 12. How do you display specific columns?

```sql
SELECT Name, Salary FROM Employee;
```

---

## 13. What is DISTINCT?

Removes duplicate values.

```sql
SELECT DISTINCT Department
FROM Employee;
```

---

# WHERE Clause

## 14. What is the WHERE clause?

Filters records based on conditions.

---

## 15. Difference between WHERE and HAVING?

| WHERE | HAVING |
|--------|---------|
| Filters rows | Filters groups |
| Used before GROUP BY | Used after GROUP BY |

---

# ORDER BY

## 16. What is ORDER BY?

Sorts records.

ASC → Ascending

DESC → Descending

---

# Aggregate Functions

## 17. Name aggregate functions.

- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

---

## 18. Difference between COUNT(*) and COUNT(column)?

COUNT(*) counts all rows.

COUNT(column) ignores NULL values.

---

## 19. What is GROUP BY?

Groups similar records together.

---

## 20. What is HAVING?

Filters grouped data.

---

# LIKE Operator

## 21. How do you find names starting with 'A'?

```sql
SELECT *
FROM Employee
WHERE Name LIKE 'A%';
```

---

## 22. What does % mean?

Represents zero or more characters.

---

## 23. What does _ mean?

Represents exactly one character.

---

# BETWEEN

## 24. What is BETWEEN?

Filters values within a range.

---

# IN Operator

## 25. What is IN?

Checks multiple values.

Example:

```sql
WHERE Department IN ('HR','IT')
```

---

# NULL

## 26. Difference between NULL and 0?

NULL means unknown.

0 is an actual value.

---

## 27. How do you check NULL values?

```sql
IS NULL
```

---

# JOINS

## 28. What is JOIN?

Combines data from multiple tables.

---

## 29. Types of JOINs?

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN
- CROSS JOIN
- SELF JOIN

---

## 30. Difference between INNER JOIN and LEFT JOIN?

INNER JOIN returns matching rows.

LEFT JOIN returns all rows from the left table.

---

## 31. What is CROSS JOIN?

Returns Cartesian Product.

---

## 32. What is SELF JOIN?

A table joined with itself.

---

# Subqueries

## 33. What is a Subquery?

A query inside another query.

---

## 34. Where can Subqueries be used?

- SELECT
- WHERE
- FROM
- HAVING

---

## 35. Difference between JOIN and Subquery?

JOIN combines tables.

Subquery uses one query inside another.

---

# Views

## 36. What is a View?

A virtual table based on a SQL query.

---

## 37. Why are Views used?

- Security
- Reusability
- Simplify complex queries

---

## 38. Do Views store data?

No.

---

# Constraints

## 39. Name SQL Constraints.

- PRIMARY KEY
- FOREIGN KEY
- UNIQUE
- CHECK
- DEFAULT
- NOT NULL

---

## 40. Why are Constraints used?

To maintain data integrity.

---

# SQL Functions

## 41. Name String Functions.

- UPPER()
- LOWER()
- LENGTH()
- CONCAT()

---

## 42. Name Numeric Functions.

- ROUND()
- CEIL()
- FLOOR()
- ABS()

---

## 43. Name Aggregate Functions.

- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

---

## 44. Name Date Functions.

- CURDATE()
- NOW()
- YEAR()
- MONTH()
- DAY()

---

# QA SQL Questions

## 45. Why does a QA Engineer need SQL?

To verify backend data, validate APIs, test databases, and compare UI data with database records.

---

## 46. How is SQL used in Database Testing?

- Validate inserted records
- Verify updated records
- Check deleted records
- Verify data integrity

---

## 47. What database have you worked with?

Example Answer:

"I have practiced SQL using MySQL and worked with queries involving joins, subqueries, aggregate functions, constraints, and database validation."

---

## 48. Which SQL topics are most important for QA?

- SELECT
- WHERE
- GROUP BY
- HAVING
- JOINS
- Subqueries
- Aggregate Functions
- Constraints

---

## 49. How do you verify data after form submission?

Execute a SELECT query using the submitted data and compare it with the application's displayed information.

---

## 50. What is Database Testing?

Database Testing verifies the correctness, integrity, consistency, and reliability of data stored in the database.

---

# Frequently Asked SQL Interview Queries

### Find Highest Salary

```sql
SELECT MAX(Salary)
FROM Employee;
```

### Find Second Highest Salary

```sql
SELECT MAX(Salary)
FROM Employee
WHERE Salary <
(
SELECT MAX(Salary)
FROM Employee
);
```

### Count Employees

```sql
SELECT COUNT(*)
FROM Employee;
```

### Department-wise Employee Count

```sql
SELECT Department,
COUNT(*)
FROM Employee
GROUP BY Department;
```

### Employees with Salary Greater than Average

```sql
SELECT *
FROM Employee
WHERE Salary >
(
SELECT AVG(Salary)
FROM Employee
);
```

---

# Interview Tips

- Understand concepts instead of memorizing queries.
- Practice writing SQL queries daily.
- Learn JOINs and Subqueries thoroughly.
- Explain your thought process during interviews.
- Be prepared to solve SQL problems on a whiteboard or online editor.
