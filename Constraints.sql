-- =====================================
-- SQL CONSTRAINTS
-- =====================================

-- Create Student Table

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Age INT CHECK (Age >= 18),
    Department VARCHAR(50) DEFAULT 'Computer Science'
);

--------------------------------------------------

-- Insert Valid Records

INSERT INTO Student VALUES
(101, 'Rahul', 'rahul@gmail.com', 22, 'IT');

INSERT INTO Student(StudentID, Name, Email, Age)
VALUES
(102, 'Priya', 'priya@gmail.com', 21);

--------------------------------------------------

-- PRIMARY KEY
-- StudentID must be unique and cannot be NULL

--------------------------------------------------

-- NOT NULL
-- Name cannot be NULL

--------------------------------------------------

-- UNIQUE
-- Email must be unique

--------------------------------------------------

-- CHECK
-- Age must be greater than or equal to 18

--------------------------------------------------

-- DEFAULT
-- Department will be 'Computer Science' if no value is provided

--------------------------------------------------

-- Display Data

SELECT * FROM Student;
