CREATE TABLE departments (
    dept_no VARCHAR(4) PRIMARY KEY,
    dept_name VARCHAR(40)
);

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title VARCHAR(10) REFERENCES titles (title_id),
    birth_date DATE,
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    sex VARCHAR(1),
    hire_date DATE
);

CREATE TABLE titles (
    title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(50)
);

CREATE TABLE dept_emp (
    emp_no INT REFERENCES employees (emp_no),
    dept_no VARCHAR(4) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE salaries (
    emp_no INT REFERENCES employees (emp_no),
    salary INT,
    PRIMARY KEY (emp_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(4) REFERENCES departments (dept_no),
    emp_no INT REFERENCES employees (emp_no),
    PRIMARY KEY (dept_no, emp_no)
);