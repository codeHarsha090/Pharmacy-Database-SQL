CREATE DATABASE IF NOT EXISTS MasterPracticeDB;

USE MasterPracticeDB;

-- 1. DDL (Data Definition Language) & TABLE CREATION

CREATE TABLE S1 (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(50),
    Section VARCHAR(10),
    Semester INT,
    Address VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary DECIMAL(10,2),
    dept_id INT,
    emp_city VARCHAR(50),
    emp_country VARCHAR(50)
);

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

CREATE TABLE S2 (
    id INT, 
    name VARCHAR(50), 
    age INT
);

ALTER TABLE S2 ADD column_name VARCHAR(20);

select*from Student2;

ALTER TABLE S2 MODIFY column_name INT;

ALTER TABLE S2 DROP COLUMN column_name;

RENAME TABLE S2 TO Student2;

-- =====================================================================
-- 2. DML (Data Manipulation Language) - INSERT, UPDATE, DELETE
-- =====================================================================

INSERT INTO S1 VALUES 
(1, 'Alice', 19, 'CSE', 'A', 2, 'vizag'), 
(2, 'Bob', 17, 'CSE', 'B', 2, 'Hyderabad'), 
(3, 'Charlie', 20, 'ECE', 'A', 3, 'vizag');

select*from s1;

INSERT INTO employees VALUES 
(1, 'Sarah', 28, 15000, 10, 'New York', 'USA'), 
(2, 'John', 30, 20000, 10, 'Allahabad', 'India'), 
(3, 'Mike', 35, 18000, 20, 'Chicago', 'USA');

select*from employees;

INSERT INTO department VALUES (10, 'IT', 'New York'), (20, 'HR', 'Chicago');

select*from department;

INSERT INTO Student2 VALUES (1, 'Arun', 25);

select * from student2;

select*from employees;

SET SQL_SAFE_UPDATES = 0;

UPDATE employees SET age = 29 WHERE name = 'Sarah';

UPDATE Student2 SET age = 29 WHERE name = 'Arun';

DELETE FROM Student2 WHERE name = 'Arun';

TRUNCATE TABLE Student2;

-- =====================================================================
-- 3. DQL (Data Query Language) - SELECT COMMANDS
-- =====================================================================
SELECT * FROM S1;
SELECT name, salary FROM employees;

-- =====================================================================
-- 4. OPERATORS (Arithmetic, Relational, Logical)
-- =====================================================================
SELECT name, Age+2 AS "Revised Age" FROM S1;

SELECT emp_id, salary, salary * 1.05 AS Increased_Salary FROM employees;

SELECT * FROM employees WHERE emp_city = 'Allahabad' AND emp_country = 'India';

-- =====================================================================
-- 5. ALIASES & AGGREGATION FUNCTIONS
-- =====================================================================
SELECT ID AS Student_ID, Name AS Student_Name FROM S1;

SELECT COUNT(*) AS total_students FROM S1;

SELECT SUM(salary) AS total_salary FROM employees;

SELECT AVG(Age) AS Average_Age, MAX(Age) AS highest_Age, MIN(Age) AS lowest_Age FROM S1;

-- =====================================================================
-- 6. GROUP BY & HAVING
-- =====================================================================
SELECT Department, COUNT(*) AS Student_Count FROM S1 GROUP BY Department;

SELECT Department, MAX(Age) AS Maximum_Age FROM S1 GROUP BY Department HAVING MIN(Age) > 18;

-- =====================================================================
-- 7. ALL TYPES OF SQL NUMERIC FUNCTIONS
-- =====================================================================
SELECT ABS(-25.5) AS Absolute_Value; 

SELECT SIGN(-50) AS Negative_Sign, SIGN(50) AS Positive_Sign;

SELECT CEIL(12.34) AS Ceiling_Val, FLOOR(12.99) AS Floor_Val;

SELECT ROUND(15.68) AS Rounded_Val, TRUNCATE(15.689, 1) AS Truncated_Val; 

SELECT POWER(2, 3) AS Power_Val, SQRT(16) AS Square_Root;

SELECT RAND() AS Random_Number, MOD(10, 3) AS Remainder_Mod;

-- =====================================================================
-- 8. ALL TYPES OF DBMS STRING FUNCTIONS
-- =====================================================================
SELECT CONCAT(Name, ' from ', Department) AS Student_Info FROM S1;

select*from S1;

SELECT UPPER(Name) AS Uppercase, LOWER(Department) AS Lowercase FROM S1;

SELECT LENGTH(Name) AS Byte_Length FROM S1;

SELECT SUBSTRING(Name, 1, 3) AS First_Three_Chars FROM S1;

-- =====================================================================
-- 9. ALL TYPES OF DBMS DATE AND TIME FUNCTIONS
-- =====================================================================
SELECT NOW() AS Current_DateTime;

SELECT CURDATE() AS Current_Date_Only;

SELECT CURTIME() AS Current_Time_Only;

SELECT DATE(NOW()) AS Extracted_Date;

SELECT EXTRACT(DAY FROM NOW()) AS Extracted_Day;

-- =====================================================================
-- *** NEW ADDITION: DATE_FORMAT SPECIFIERS FROM IMAGE 1000120028.jpg ***
-- =====================================================================
SELECT 
    DATE_FORMAT(NOW(), '%a') AS Weekday_Name_Short,     -- %a: Sun-Sat
    DATE_FORMAT(NOW(), '%b') AS Month_Name_Short,       -- %b: Jan-Dec
    DATE_FORMAT(NOW(), '%c') AS Month_Numeric,          -- %c: 0-12
    DATE_FORMAT(NOW(), '%D') AS Day_Of_Month_Suffix,    -- %D: 1st, 2nd, 3rd...
    DATE_FORMAT(NOW(), '%d') AS Day_Numeric_Pad,        -- %d: 00-31
    DATE_FORMAT(NOW(), '%e') AS Day_Numeric,            -- %e: 0-31
    DATE_FORMAT(NOW(), '%f') AS Microseconds,           -- %f: 000000-999999
    DATE_FORMAT(NOW(), '%H') AS Hour_24_Pad,            -- %H: Hour (00-23, padded)
    DATE_FORMAT(NOW(), '%h') AS Hour_12_Pad,            -- %h: Hour (01-12)
    DATE_FORMAT(NOW(), '%I') AS Hour_12_Pad_Alt,        -- %I: Hour (01-12, alternate)
    DATE_FORMAT(NOW(), '%i') AS Minutes,                -- %i: Minutes (00-59)
    DATE_FORMAT(NOW(), '%j') AS Day_Of_Year,            -- %j: Day of year (001-366)
    DATE_FORMAT(NOW(), '%k') AS Hour_24                 -- %k: Hour (0-23, unpadded)
;

-- Example combining multiple specifiers:
SELECT DATE_FORMAT(NOW(), '%a, %b %D - %H:%i') AS Combined_Formatted_Date;


-- =====================================================================
-- 10. ALL TYPES OF DBMS CONTROL FLOW FUNCTIONS
-- =====================================================================
SELECT Name, IF(Age >= 18, 'Adult', 'Minor') AS Age_Status FROM S1;

SELECT name, IFNULL(emp_city, 'Unknown City') AS City_Check FROM employees;

-- =====================================================================
-- 11. TYPE CONVERSIONS
-- =====================================================================
SELECT CAST('2026-07-28' AS DATE) AS Casted_Date;

SELECT CONVERT(salary, CHAR) AS String_Salary FROM employees;

-- =====================================================================
-- 12. NESTED QUERIES (SUBQUERIES)
-- =====================================================================
SELECT name, salary FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT name FROM employees WHERE dept_id IN (SELECT dept_id FROM department WHERE location = 'New York');


SELECT e.name, e.salary FROM employees e WHERE salary > (SELECT AVG(salary) FROM employees WHERE dept_id = e.dept_id);












