-- Sort by salary (ascending)
SELECT * FROM Employee
ORDER BY Salary ASC;

-- Sort by salary (descending)
SELECT * FROM Employee
ORDER BY Salary DESC;

-- Sort by department and salary
SELECT * FROM Employee
ORDER BY Department ASC, Salary DESC;
