SELECT sum(s.salary) AS 'Total Compensation', d.dept_name AS 'Department' FROM salaries s 
INNER JOIN dept_emp de ON s.emp_no = de.emp_no
INNER JOIN departments d ON d.dept_no = de.dept_no 
WHERE d.dept_name = 'Marketing' AND year(s.from_date) <=1992
AND year (s.to_date) >= 1990;
SELECT t.title AS 'Titles', count(birth_date) AS 'Employees by Title Born After 1965'
FROM employees e INNER JOIN titles t ON
t.emp_no = e.emp_no where e.birth_date 
>'1965_01_01' group by t.title;
SELECT t.title AS 'Titles', avg(s.salary) AS 'Average Salary'
FROM salaries s INNER JOIN titles t ON
t.emp_no = s.emp_no group by t.title;
