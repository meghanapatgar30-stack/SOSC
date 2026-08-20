-- COLLEGE DATABASE DESIGN

-- Departments table
CREATE TABLE departments (
    department_id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL
);

-- Students table
CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    department TEXT,
    cgpa REAL
);

-- Courses table
CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY,
    course_name TEXT NOT NULL,
    department TEXT,
    credits INTEGER
);


-- INSERT DEPARTMENTS

INSERT INTO departments VALUES
(1, 'Computer Science'),
(2, 'Information Science'),
(3, 'Electronics'),
(4, 'Mechanical');


-- INSERT STUDENTS

INSERT INTO students VALUES
(1, 'Alice', 20, 'Computer Science', 8.7),
(2, 'Bob', 21, 'Information Science', 7.9),
(3, 'Charlie', 20, 'Electronics', 8.3),
(4, 'David', 22, 'Mechanical', 7.5),
(5, 'Emma', 21, 'Computer Science', 9.1),
(6, 'Frank', 20, 'Information Science', 8.5),
(7, 'Grace', 21, 'Electronics', 7.8),
(8, 'Henry', 22, 'Mechanical', 8.2),
(9, 'Isha', 20, 'Computer Science', 9.3),
(10, 'John', 21, 'Information Science', 8.0);


-- INSERT COURSES

INSERT INTO courses VALUES
(101, 'Database Management Systems', 'Computer Science', 4),
(102, 'Web Development', 'Information Science', 3),
(103, 'Digital Electronics', 'Electronics', 4),
(104, 'Engineering Mechanics', 'Mechanical', 3);


-- Retrieve all columns for all students
SELECT * FROM students;

-- Retrieve only student names and CGPAs
SELECT name, cgpa FROM students;

-- Filter students with CGPA greater than 8.0
SELECT * FROM students
WHERE cgpa > 8.0;

-- Count total students
SELECT COUNT(*) AS total_students
FROM students;

-- Calculate average CGPA
SELECT AVG(cgpa) AS average_cgpa
FROM students;

-- Find highest CGPA
SELECT MAX(cgpa) AS highest_cgpa
FROM students;

-- Find lowest CGPA
SELECT MIN(cgpa) AS lowest_cgpa
FROM students;

-- Find total CGPA
SELECT SUM(cgpa) AS total_cgpa
FROM students;

-- Count students in each department
SELECT department, COUNT(*) AS student_count
FROM students
GROUP BY department;

-- Find average CGPA by department
SELECT department, AVG(cgpa) AS average_cgpa
FROM students
GROUP BY department;
