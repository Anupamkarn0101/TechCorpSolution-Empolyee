-- BEGINNER OF THE PROJECT — CRUD Operations (CRUD = Create, Read, Update, Delete)

-- CREATE THE TABLE

DROP TABLE IF EXISTS employees;
 
CREATE TABLE employees (
    user_id     INT PRIMARY KEY,
    username    VARCHAR(60) UNIQUE NOT NULL,
    full_name   VARCHAR(100) NOT NULL,
    email       VARCHAR(100) UNIQUE NOT NULL,
    role        VARCHAR(20) NOT NULL CHECK (role IN ('admin', 'agent', 'requester')),
    department  VARCHAR(50),
    job_title   VARCHAR(80),
    phone       VARCHAR(30),
    location    VARCHAR(60),
    join_date   DATE
);

-- _______________________________________________________________________________________________________

-- READ THE TABLE

Select * from employees;

--_________________________________________________________________________________________________________

-- UPDATE THE TABLE - ADDING A NEW EMPLOYEE

INSERT INTO employees (user_id, username, full_name, email, role, department, job_title, phone, location, join_date)
VALUES (502, 'ankit.verma', 'Ankit Verma', 'ankit.verma@techcorpsolutions.com',
        'requester', 'IT Support', 'IT Support Associate', '9720929060', 'Kolkata', '2026-08-22');
		
--___________________________________________________________________________________

-- UPDATE- TO UPDATE IN EMPLOOYEE TABLE


-- CHANGE EMPLOYEE JOB TITTLE

UPDATE employees
SET job_title = 'Senior IT Support Associate' , department = 'IT Support', role = 'agent'
WHERE user_id = 501;

-- CHECK THE CHANGES

SELECT user_id, full_name, department, job_title, role FROM employees WHERE user_id = 501;


-- DELETE — THE EMPLOYEE 501

DELETE FROM employees WHERE user_id = 501;

-- CHECKING 
SELECT * FROM employees WHERE user_id = 501;

--_____________________________________________________________________________________

--BASIC OPERATIONS

-- CHECING IF THE DATA IS ADDED OR NOT
SELECT * FROM employees WHERE user_id = 501;

-- CHECKING 1ST 10 EMPLOYEE DATA ONLY
SELECT * FROM employees LIMIT 10;

-- VIEW SPECIFIC COLUMN
SELECT full_name, department, job_title FROM employees LIMIT 10;

-- VIEW EMPLOYEE FROM DEPARTMENT = 'IT SUPPORT'
SELECT full_name, department FROM employees WHERE department = 'IT Support';

-- VIEW EMPLOYEE WHOSE NAME STARTS WITH - 'A'
SELECT full_name FROM employees WHERE full_name LIKE 'A%';

