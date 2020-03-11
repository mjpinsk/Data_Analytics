SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM "Employees" e
JOIN "Salaries" s
ON e.emp_no = s.emp_no;

SELECT e.last_name, e.first_name, e.hire_date 
FROM "Employees" e
WHERE EXTRACT(year FROM e.hire_date) = 1986;

SELECT d.dept_no, d.dept_name, ma.emp_no, e.last_name, e.first_name, ma.from_date, ma.to_date
FROM "Departments" d
JOIN "Dept_manager" ma 
ON d.dept_no = ma.dept_no
JOIN "Employees" e
ON ma.emp_no = e.emp_no;

SELECT emp.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Departments" d
JOIN "Dept_emp" emp
ON d.dept_no = emp.dept_no
JOIN "Employees" e
ON emp.emp_no = e.emp_no;

SELECT * FROM "Employees"
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';
	
SELECT emp.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Departments" d
JOIN "Dept_emp" emp
ON d.dept_no = emp.dept_no
JOIN "Employees" e
ON emp.emp_no = e.emp_no
WHERE d.dept_name = 'Sales';

SELECT emp.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Departments" d
JOIN "Dept_emp" emp
ON d.dept_no = emp.dept_no
JOIN "Employees" e
ON emp.emp_no = e.emp_no
WHERE d.dept_name = 'Sales'
    OR d.dept_name = 'Development';
	
SELECT last_name, COUNT(last_name) FROM "Employees"
GROUP BY last_name
ORDER BY COUNT DESC;