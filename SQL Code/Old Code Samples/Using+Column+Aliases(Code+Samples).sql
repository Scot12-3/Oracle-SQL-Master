SELECT first_name, last_name, email FROM employees; 
SELECT first_name AS name, last_name as surname, email FROM employees; 
SELECT first_name AS "My     Name", email "E-mail" FROM employees; 
SELECT first_name AS "My Name", email "E-mail" FROM employees; 
SELECT employee_id, salary + nvl(salary*commission_pct,0) + 1000 new_salary, salary FROM employees;
SELECT employee_id, salary + nvl(salary*commission_pct,0) + 1000 "New Salary", salary FROM employees;


-- Additional examples and notes about column aliases (Oracle)

-- 1) Using an alias in ORDER BY (allowed):
SELECT first_name || ' ' || last_name AS full_name, salary
FROM employees
ORDER BY full_name;

-- 2) You cannot use a SELECT-list alias in the WHERE clause in the same SELECT.
-- This is invalid in Oracle and most SQL dialects:
-- SELECT first_name || ' ' || last_name AS full_name FROM employees WHERE full_name LIKE 'A%'; -- invalid

-- Correct: repeat the expression in WHERE, or use a subquery/inline view.
SELECT first_name || ' ' || last_name AS full_name, department_id
FROM employees
WHERE first_name || ' ' || last_name LIKE 'A%';

-- Subquery / inline view workaround (alias is visible to the outer query):
SELECT *
FROM (
  SELECT first_name || ' ' || last_name AS full_name, department_id
  FROM employees
) e
WHERE full_name LIKE 'A%';

-- 3) Aggregation examples: alias in ORDER BY is allowed, but GROUP BY must reference
-- the grouped expression (or its position). Using alias in GROUP BY is not portable.
SELECT department_id AS dept, COUNT(*) AS emp_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5
ORDER BY emp_count DESC;

-- 4) Using functions and formatting with aliases:
SELECT employee_id,
       hire_date,
       TO_CHAR(hire_date, 'YYYY-MM-DD') AS hire_day,
       TO_CHAR(salary, 'FM999,999,999.00') AS salary_text
FROM employees
WHERE ROWNUM <= 5; -- limit sample output

-- 5) Quoted aliases (preserve case / spaces); quoted aliases are case-sensitive:
SELECT first_name || ' ' || last_name AS "Full Name", email AS "E-mail Address"
FROM employees
WHERE ROWNUM <= 5;

-- 6) Example showing arithmetic aliases already present but with ORDER BY:
SELECT employee_id,
       salary + NVL(salary*commission_pct, 0) + 1000 AS new_salary,
       salary
FROM employees
ORDER BY new_salary DESC;

-- Notes:
-- * Aliases make result columns readable but are not always usable in WHERE/GROUP BY/HAVING
--   clauses of the same SELECT. Use expressions directly or an inline view when needed.
-- * ORDER BY can reference select aliases in Oracle.
-- * Quoted aliases allow spaces and mixed-case but must be referenced with the exact
--   quotes/casing if reused.

