SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena')
	OR first_name = 'Vidya'
	OR first_name = 'Maya'
		AND gender = 'male'
	ORDER BY first_name;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT emp_no, first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' and '1999-12-31';

SELECT emp_no, first_name, last_name
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT emp_no, first_name, last_name 
FROM employees
WHERE last_name LIKE 'E%'
	AND last_name LIKE '%e';

SELECT emp_no, first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' and '1999-12-31'
	AND birth_date LIKE '%-12-25';
	
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
	AND last_name NOT LIKE '%qu%';