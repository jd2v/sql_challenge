CREATE TABLE Employees (
    employee_no INT   NOT NULL,
    employee_title_id VARCHAR NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date DATE   NOT NULL,
    FOREIGN KEY (employee_title_id) REFERENCES Titles (title_id),
    PRIMARY KEY (employee_no)
);

CREATE TABLE Department_Manager (
    department_no VARCHAR   NOT NULL,
    employee_no INT   NOT NULL,
    FOREIGN KEY (employee_no) REFERENCES employees (employee_no),
    FOREIGN KEY (department_no) REFERENCES Departments (department_no),
    PRIMARY KEY (department_no, employee_no)
);

CREATE TABLE Department_Employees (
    employee_no INT   NOT NULL,
    department_no VARCHAR   NOT NULL,
    FOREIGN KEY (employee_no) REFERENCES employees (employee_no),
    FOREIGN KEY (department_no) REFERENCES Departments (department_no),
    PRIMARY KEY (employee_no, department_no)
);

CREATE TABLE Departments (
    department_no VARCHAR   NOT NULL,
    department_name VARCHAR   NOT NULL,
    PRIMARY KEY (department_no)
);

CREATE TABLE Salaries (
    employee_no INT   NOT NULL,
    salary INT   NOT NULL,
    FOREIGN KEY (employee_no) REFERENCES Employees (employee_no),
	PRIMARY KEY (employee_no)
);

﻿CREATE TABLE Titles (
    title_id VARCHAR   NOT NULL,
    title VARCHAR   NOT NULL,
    PRIMARY KEY (title_id)
);