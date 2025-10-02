/************* The Complete Oracle SQL Bootcamp ****************
 * Author  : Oracle Master Training                            *
 * Course  : The Complete Oracle SQL Bootcamp                  *
 * Lecture : Logical Operators                                 *
 ***************************************************************/

SELECT * FROM employees WHERE job_id = 'SA_REP' OR salary > 10000;
SELECT * FROM EMPLOYEES WHERE salary > 10000 AND job_id IN ('SA_MAN', 'SA_REP');
SELECT * FROM EMPLOYEES WHERE salary > 10000 AND job_id NOT IN ('SA_MAN', 'SA_REP');
SELECT * FROM EMPLOYEES WHERE salary > 10000 AND (job_id = 'SA_MAN' OR job_id = 'SA_REP');
SELECT * FROM EMPLOYEES WHERE department_id = 50 AND salary < 5000;
SELECT * FROM EMPLOYEES WHERE commission_pct IS NOT NULL;
SELECT * FROM EMPLOYEES WHERE hire_date > TO_DATE('01-JAN-2010', 'DD-MON-YYYY');
SELECT * FROM EMPLOYEES WHERE job_id LIKE 'SA_%';
SELECT * FROM EMPLOYEES WHERE salary BETWEEN 5000 AND 12000;
SELECT * FROM EMPLOYEES WHERE manager_id IS NULL;
SELECT * FROM EMPLOYEES WHERE department_id IN (10, 20, 30);
SELECT * FROM EMPLOYEES WHERE job_id NOT IN ('IT_PROG', 'FI_ACCOUNT');
SELECT * FROM EMPLOYEES WHERE salary <= 7000 OR commission_pct > 0.2;
SELECT * FROM EMPLOYEES WHERE first_name = 'John' AND last_name = 'Doe';
SELECT * FROM EMPLOYEES WHERE salary > 9000 AND department_id = 80;
SELECT * FROM EMPLOYEES WHERE job_id = 'HR_REP' OR department_id = 40;
SELECT * FROM EMPLOYEES WHERE salary < 6000 AND job_id LIKE '%REP';
SELECT * FROM EMPLOYEES WHERE hire_date BETWEEN TO_DATE('01-JAN-2005', 'DD-MON-YYYY') AND TO_DATE('31-DEC-2015', 'DD-MON-YYYY');
SELECT * FROM EMPLOYEES WHERE salary > 10000 AND commission_pct IS NULL;
SELECT * FROM EMPLOYEES WHERE department_id = 60 AND job_id = 'IT_PROG';
SELECT * FROM EMPLOYEES WHERE last_name LIKE 'S%';
SELECT * FROM EMPLOYEES WHERE salary > 8000 AND job_id IN ('SA_MAN', 'SA_REP', 'IT_PROG');
SELECT * FROM EMPLOYEES WHERE department_id NOT IN (50, 60, 70);
SELECT * FROM EMPLOYEES WHERE salary < 4000 OR job_id = 'HR_REP';
