-- Display employees with their department names

SELECT
    Employee.EmpID,
    Employee.Name,
    Department.DepartmentName
FROM Employee
INNER JOIN Department
ON Employee.DepartmentID = Department.DepartmentID;
