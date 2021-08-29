--details of each employee: employee number, last name, first name, sex, and salary
SELECT e.emp_num, e.last_name, e.first_name, e.sex, s.salary
FROM "Employee" AS e
INNER JOIN "Salaries" AS s
ON e.emp_num = s.emp_num
ORDER BY emp_num ASC;

--first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name,last_name,hire_date
FROM "Employee"
WHERE hire_date LIKE '%1986' ;

--List the managers department number, department name, the manager's employee number, last name, first name.
SELECT DISTINCT m.dept_num, d.dept_name, m.emp_num,e.last_name, e.first_name
FROM "Dept_manager" AS m
JOIN "Employee"  AS e 
ON m.emp_num = e.emp_num
JOIN "Departments" d 
ON m.dept_num = d.dept_num;

--List the department of each employee with the following information: employee number, last name, first name, and department name
SELECT DISTINCT m.dept_num, d.dept_name, m.emp_num,e.last_name, e.first_name
FROM "Dept_employee" AS m
JOIN "Employee"  AS e 
ON m.emp_num = e.emp_num
JOIN "Departments"  AS d 
ON m.dept_num = d.dept_num
ORDER BY dept_num ASC;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B.
SELECT first_name,last_name,sex
FROM "Employee"
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%' ;

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT DISTINCT m.dept_num, d.dept_name, m.emp_num,e.last_name, e.first_name
FROM "Dept_employee" AS m
JOIN "Employee"  AS e 
ON m.emp_num = e.emp_num
JOIN "Departments"  AS d 
ON m.dept_num = d.dept_num
WHERE dept_name LIKE 'Sales'
ORDER BY dept_num ASC;

--List all employees in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.
SELECT DISTINCT m.dept_num, d.dept_name, m.emp_num,e.last_name, e.first_name
FROM "Dept_employee" AS m
JOIN "Employee"  AS e 
ON m.emp_num = e.emp_num
JOIN "Departments"  AS d 
ON m.dept_num = d.dept_num
WHERE dept_name LIKE 'Sales' OR dept_name LIKE 'Development'
ORDER BY dept_num ASC;

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT COUNT (emp_num) AS last_name_count, last_name 
FROM "Employee"
GROUP BY last_name
ORDER BY last_name_count DESC;


