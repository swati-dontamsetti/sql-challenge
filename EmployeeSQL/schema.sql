-- Data Engineering
-- Create tables, import data from csv, check that data is imported correctly

CREATE TABLE Departments (
    dept_no varchar NOT NULL,
    dept_name varchar NOT NULL,
    PRIMARY KEY (dept_no)
);

select * from Departments;

CREATE TABLE Employees (
    emp_no serial NOT NULL,
    birth_date date NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    gender varchar(1) NOT NULL,
    hire_date date NOT NULL,
    PRIMARY KEY (emp_no)
);

select * from Employees;

CREATE TABLE Dept_Emp (
    emp_no int NOT NULL,
    dept_no varchar NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

select * from dept_emp;

CREATE TABLE Dept_Manager (
    dept_no varchar NOT NULL,
    emp_no int NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

select * from dept_manager;

CREATE TABLE Salaries (
    emp_no int NOT NULL,
    salary money NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

select * from salaries;

CREATE TABLE Titles (
	emp_no int NOT NULL,
    title varchar NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

select * from titles;