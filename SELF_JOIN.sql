CREATE TABLE EmployeeManager (
    EmpID INT,
    EmployeeName VARCHAR(50),
    ManagerID INT
);

INSERT INTO EmployeeManager VALUES
(1,'Rahul',3),
(2,'Priya',3),
(3,'Amit',NULL);

SELECT
    E.EmployeeName AS Employee,
    M.EmployeeName AS Manager
FROM EmployeeManager E
LEFT JOIN EmployeeManager M
ON E.ManagerID = M.EmpID;
