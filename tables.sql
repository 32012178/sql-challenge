CREATE TABLE departments (
    dept_no VARCHAR(200) NOT NULL,
    dept_name VARCHAR(200) NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(200) NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE salaries (
    emp_no INTEGER NOT NULL,
    salary INTEGER NOT NULL,
    PRIMARY KEY (emp_no)	
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(200) NOT NULL,
    emp_no INTEGER NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE employees (
    emp_no INTEGER NOT NULL,
    emp_title_id VARCHAR(200) NOT NULL,
    birth_date VARCHAR(200) NOT NULL,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    sex VARCHAR(2) NOT NULL,
    hire_date VARCHAR(200) NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY(emp_no) REFERENCES salaries(emp_no),
	FOREIGN KEY(emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE titles (
    title_id VARCHAR(200) NOT NULL,
    title VARCHAR(200) NOT NULL,
   	PRIMARY KEY(title_id)
);

