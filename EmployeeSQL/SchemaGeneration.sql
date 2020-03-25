/* Create tables for database */

CREATE TABLE employees (
	emp_no VARCHAR(40) PRIMARY KEY,
	birth_date VARCHAR(40) NOT NULL,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	gender VARCHAR(40) NOT NULL,
	hire_date VARCHAR(40)
);

CREATE TABLE departments (
	dept_no VARCHAR(40) PRIMARY KEY,
	dept_name VARCHAR(40) NOT NULL
);

CREATE TABLE salaries (
	id SERIAL PRIMARY KEY,
	emp_no VARCHAR(40) NOT NULL,
	salary INT NOT NULL,
	from_date VARCHAR(40),
	to_date VARCHAR(40),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE title (
	id SERIAL PRIMARY KEY,
	emp_no VARCHAR(40) NOT NULL,
	title VARCHAR(40) NOT NULL,
	from_date VARCHAR(40),
	to_date VARCHAR(40),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager (
	id SERIAL PRIMARY KEY,
	dept_no VARCHAR(40) NOT NULL,
	emp_no VARCHAR(40) NOT NULL,
	from_date VARCHAR(40),
	to_date VARCHAR(40),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
	id SERIAL PRIMARY KEY,
	emp_no VARCHAR(40) NOT NULL,
	dept_no VARCHAR(40) NOT NULL,
	from_date VARCHAR(40),
	to_date VARCHAR(40),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
