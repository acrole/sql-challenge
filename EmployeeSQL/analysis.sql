--1

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

--2
SELECT emp_no, first_name, last_name, hire_date FROM employees
WHERE hire_date >= '1985-12-31'
AND hire_date < '1987-01-01';

--3 

SELECT dept_managers.dept_no,
		departments.dept_name,
		dept_managers.emp_no,
		employees.last_name,
		employees.first_name
FROM dept_managers
INNER JOIN departments ON
dept_managers.dept_no = departments.dept_no
INNER JOIN employees ON
dept_managers.emp_no = employees.emp_no;

--4

SELECT employees.emp_no,
		employees.last_name,
		employees.first_name, 
		departments.dept_name
FROM employees
INNER JOIN dept_managers ON
employees.emp_no = dept_managers.emp_no
INNER JOIN departments 
dept_managers.dept_no = departments.dept_no;

--5 

SELECT * FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--6 

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp ON
e.emp_no = dept_emp.emp_no
INNER JOIN departments AS d ON 
dept_emp.dept_no = d.dept_no
WHERE dept_name = 'Sales'

--7 

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp ON
e.emp_no = dept_emp.emp_no
INNER JOIN departments AS d ON
dept_emp.dept_no = d.dept_no
WHERE dept_name = 'Sales' OR
		dept_name = 'Development';

--8

SELECT last_name, COUNT(last_name) FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) desc;