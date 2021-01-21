DROP TABLE departments;

CREATE TABLE departments(
	dept_no VARCHAR(10),
	dept_name VARCHAR(30),
	PRIMARY KEY (dept_no)
);

SELECT * FROM departments;

DROP TABLE employees;

CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title VARCHAR(10),
	birth_date DATE NOT NULL,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(2),
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

SELECT * FROM employees;

DROP TABLE dept_emp;

CREATE TABLE dept_emp(
		emp_no INT,
		dept_no VARCHAR,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

DROP TABLE dept_managers;

CREATE TABLE dept_managers (
	dept_no VARCHAR(10),
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_managers;


DROP TABLE salaries;

CREATE TABLE salaries(
	emp_no BIGINT NOT NULL,
	salary BIGINT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries


DROP TABLE titles

CREATE TABLE titles(
	title_id VARCHAR(10) NOT NULL,
	title VARCHAR(20)
);



