/* Data Analysis */

/* Question 1 */
SELECT e.emp_no,e.last_name,e.first_name,e.gender,s.salary
FROM employees AS e
JOIN salaries AS s ON e.emp_no = s.emp_no;

/* Question 2 */
ALTER TABLE employees ALTER COLUMN hire_date TYPE DATE USING hire_date::date ;
SELECT e.emp_no, e.hire_date 
FROM employees AS e
WHERE e.hire_date > '1986-01-01' AND e.hire_date < '1987-01-01';

/* Question 3 */
ALTER TABLE dept_manager
	ALTER COLUMN from_date TYPE DATE USING from_date::date,
	ALTER COLUMN to_date TYPE DATE USING to_date::date;

SELECT dm.dept_no,
	d.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name,
	dm.from_date,
	dm.to_date
FROM dept_manager AS dm
JOIN departments AS d ON dm.dept_no = d.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no;

/* Question 4 */
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no;

/* Question 5 */
SELECT * 
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

/* Question 6 */
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

/* Question 7 */
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

/* Question 8 */
SELECT last_name, COUNT(e.emp_no) AS "Employees with this Last Name" 
FROM employees AS e
GROUP BY (last_name)