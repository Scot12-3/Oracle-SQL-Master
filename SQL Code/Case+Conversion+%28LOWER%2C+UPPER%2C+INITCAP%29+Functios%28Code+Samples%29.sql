/************* The Complete Oracle SQL Bootcamp ****************
 * Author  : Oracle Master Training                            *
 * Course  : The Complete Oracle SQL Bootcamp                  *
 * Lecture : Case Conversion (LOWER, UPPER, INITCAP) Functios  *
 ***************************************************************/

SELECT first_name, UPPER(first_name), 
       last_name, LOWER(last_name), 
       email, INITCAP(email) FROM employees;
       
SELECT first_name, UPPER(first_name), 
       last_name, LOWER(last_name), 
       email, INITCAP(email) FROM employees
WHERE job_id = 'IT_PROG';

SELECT first_name, UPPER(first_name), 
       last_name, LOWER(last_name), 
       email, INITCAP(email),
       UPPER('bmw i8')FROM employees
WHERE job_id = 'IT_PROG';

SELECT * FROM employees
WHERE last_name = 'KING';

SELECT * FROM employees
WHERE last_name = 'king';

SELECT * FROM employees
WHERE LOWER(last_name) = 'king';

SELECT * FROM employees
WHERE UPPER(last_name) = 'KING';

SELECT * FROM employees
WHERE INITCAP(last_name) = 'King';

SELECT first_name, last_name FROM employees
WHERE LOWER(first_name) = 'steven' AND LOWER(last_name) = 'king';

SELECT first_name, last_name FROM employees
WHERE UPPER(first_name) = 'STEVEN' AND UPPER(last_name) = 'KING';

SELECT first_name, last_name FROM employees
WHERE INITCAP(first_name) = 'Steven' AND INITCAP(last_name) = 'King';
-- Case conversion functions are useful when you want to perform case-insensitive searches.
-- However, using these functions on columns in the WHERE clause can prevent the use of indexes, potentially impacting performance.
-- To perform case-insensitive searches while still utilizing indexes, consider using case-insensitive collation or functional indexes if supported by your database system.

-- End of code