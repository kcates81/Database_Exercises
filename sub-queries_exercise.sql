SELECT hire_date, emp_no, last_name
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employeesy
    WHERE emp_no = '101010'
);

SELECT E.emp_no, E.first_name, E.last_name, titles.title
FROM titles
JOIN employees as E 
ON titles.emp_no = E.emp_no
WHERE E.emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE gender = 'F'
);