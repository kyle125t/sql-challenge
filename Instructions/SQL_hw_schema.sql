-- Table drops
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


-- Departments table
CREATE TABLE departments (
dept_no VARCHAR PRIMARY KEY NOT NULL,
dept_name VARCHAR NOT NULL);

-- Department Employees table
CREATE TABLE dept_emp (
demp_no INT NOT NULL,
dept_no VARCHAR NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no));

-- Department Managers table
CREATE TABLE dept_manager (
dept_no VARCHAR NOT NULL,
emp_no INT NOT NULL);

-- Employees table
CREATE TABLE employees (
emp_no  INT PRIMARY KEY NOT NULL,
emp_title_id VARCHAR NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR NOT NULL,
hire_date DATE NOT NULL,
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));

-- Salaries table
CREATE TABLE salaries (
emp_no INT PRIMARY KEY NOT NULL,
salary INT NOT NULL);

-- Titles table
CREATE TABLE titles (
title_id VARCHAR PRIMARY KEY NOT NULL,
title VARCHAR NOT NULL);

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;
