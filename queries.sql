-- ALTER TABLE employees ADD gender varchar(20);

SELECT first_name, last_name, salary, email FROM employees
WHERE gender = "Female";

SELECT gender, MIN(salary) AS min_salary, round(AVG(salary), 2) AS average_salary 
FROM employees
GROUP BY gender;

SELECT gender, SUM(salary) AS total_salary
FROM employees
GROUP BY gender;

SELECT employees.first_name, employees.last_name, 
departments.department_name, departments.department_id
FROM departments
INNER JOIN employees ON 
departments.department_id = employees.department_id
WHERE departments.department_id = 10;
