SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT emp_no, first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' and '1999-12-31'
    AND birth_date LIKE '%-12-25'
LIMIT 5 OFFSET 50;