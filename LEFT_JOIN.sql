SELECT
    Employee.Name,
    Department.DepartmentName
FROM Employee
LEFT JOIN Department
ON Employee.DepartmentID = Department.DepartmentID;
