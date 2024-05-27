DROP DATABASE IF EXISTS EMPLOYEES;
CREATE DATABASE EMPLOYEES;
USE EMPLOYEES;
CREATE TABLE Employees(
	emp_no INT(11),
    birth_date DATE,
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    gender ENUM("M","f"),
    hire_date DATE,
    CONSTRAINT pk_employees PRIMARY KEY(emp_no)
    );

CREATE TABLE Salaries(
	emp_no INT(11),
    salary INT(11),
    from_date DATE,
    to_date DATE,
    CONSTRAINT pk_salaries PRIMARY KEY(emp_no,from_date),
    CONSTRAINT fk_salaries FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
    ON UPDATE CASCADE ON DELETE NO ACTION
    );
CREATE TABLE Departments(
	dept_no CHAR(4),
    dept_name VARCHAR(40),
    CONSTRAINT pk_departments PRIMARY KEY(dept_no),
    CONSTRAINT uk_departments UNIQUE KEY(dept_name)
    );
CREATE TABLE Dept_emp(
	emp_no INT(11),
    dept_no CHAR(4),
	from_date DATE,
    to_date DATE,
    CONSTRAINT pk_dept_emp PRIMARY KEY(emp_no,dept_no),
    CONSTRAINT fk_Dept_Empoyee FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
    ON UPDATE CASCADE ON DELETE NO ACTION,
    CONSTRAINT fk_Dept_department FOREIGN KEY(dept_no) REFERENCES Departments(dept_no)
    ON UPDATE CASCADE ON DELETE NO ACTION
    );
CREATE TABLE Dept_manager(
	dept_no CHAR(14),
    emp_no INT(11),
    from_date DATE,
    to_date DATE,
    CONSTRAINT pk_dept_manager PRIMARY KEY(dept_no,emp_no),
    CONSTRAINT fk_dept_manager_department FOREIGN KEY(dept_no) REFERENCES Departments(dept_no)
    ON UPDATE CASCADE ON DELETE NO ACTION,
    CONSTRAINT fk_dept_manager_employees FOREIGN KEY(emp_no) REFERENCES Employees(emp_no)
    ON UPDATE CASCADE ON DELETE NO ACTION
    );
CREATE TABLE Titles(
	emp_no INT(11),
    title VARCHAR(50),
    from_date DATE,
    to_date DATE,
    CONSTRAINT pk_titles PRIMARY KEY(emp_no,title,from_date),
    CONSTRAINT fk_titles FOREIGN KEY(emp_no) REFERENCES Employees(emp_no)
    );