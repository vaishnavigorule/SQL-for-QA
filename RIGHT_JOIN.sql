SELECT
    Employee.Name,
    Department.DepartmentName
FROM Employee
RIGHT JOIN Department
ON Employee.DepartmentID = Department.DepartmentID;
