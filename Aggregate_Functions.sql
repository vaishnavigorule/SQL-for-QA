-- Total employees
SELECT COUNT(*) FROM Employee;

-- Highest salary
SELECT MAX(Salary) FROM Employee;

-- Lowest salary
SELECT MIN(Salary) FROM Employee;

-- Average salary
SELECT AVG(Salary) FROM Employee;

-- Total salary
SELECT SUM(Salary) FROM Employee;

-- Department-wise employee count
SELECT Department, COUNT(*)
FROM Employee
GROUP BY Department;

-- Departments having more than 2 employees
SELECT Department, COUNT(*)
FROM Employee
GROUP BY Department
HAVING COUNT(*) > 2;
