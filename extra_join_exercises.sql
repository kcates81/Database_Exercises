SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
WHERE e.gender = 'F'
AND dm.to_date = '9999-01-01';

SELECT DISTINCT t.title, COUNT(*)
FROM employees as e
JOIN dept_emp as de
  ON de.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = de.dept_no
JOIN titles as t
    ON t.emp_no =  de.emp_no 
WHERE de.to_date > NOW() AND de.dept_no = 'd009' AND t.to_date > NOW()
GROUP BY t.title;

SELECT DISTINCT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, s.salary
FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
JOIN salaries AS s
    ON s.emp_no = dm.emp_no
WHERE dm.emp_no = e.emp_no AND dm.to_date > NOW() AND s.to_date > NOW();

SELECT d.dept_no, d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, e.gender
FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
WHERE e.gender = 'F'
AND dm.to_date = '9999-01-01';