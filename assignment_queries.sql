SELECT * FROM departments;

SELECT * FROM dept_emp;

SELECT * FROM dept_manager;

SELECT * FROM employees;

SELECT * FROM salaries;

SELECT * FROM titles;

-- Q1

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries on employees.emp_no = salaries.emp_no

-- Q2
SELECT employees.first_name, employees.first_name, employees.hire_date 
FROM employees
WHERE hire_date like '%1986%'

-- Q3
SELECT dept_manager.dept_no, dept_manager.emp_no, departments.dept_name, employees.first_name, employees.last_name
FROM dept_manager
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no

-- Q4
SELECT dept_emp.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no

--Q5
SELECT employees.first_name, employees.last_name, employees.sex 
FROM employees
WHERE last_name like 'B%' AND first_name like '%Hercules%'

--Q6
SELECT dept_emp.emp_no, employees.first_name, employees.last_name
from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
WHERE dept_emp.dept_no like '%d007'

--Q7
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name like '%Sales%' OR dept_name like '%Development%'

--Q8
SELECT 
  employees.last_name, 
  COUNT(employees.last_name) as same_last_names_count
FROM employees
GROUP BY employees.last_name
ORDER BY same_last_names_count DESC;



