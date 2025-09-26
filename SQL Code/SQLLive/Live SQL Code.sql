select employee_id, first_name, salary from
hr.employees order by first_name desc, salary desc;

select first_name, salary, commission_pct from hr.employees order by COMMISSION_PCT

select first_name, salary, commission_pct from hr.employees order by COMMISSION_PCT

select employee_id, first_name, salary from
hr.employees order by first_name desc, salary desc

SELECT first_name, last_name, job_id, salary FROM
HR.EMPLOYEES where (job_id = 'IT_PROG' OR job_id = 'ST_CLERK') AND salary > 5000

SELECT first_name, last_name, job_id, salary FROM
HR.EMPLOYEES 
where salary > 10000 AND (DEPARTMENT_ID = 20 or DEPARTMENT_ID = 30)

SELECT first_name, last_name, job_id, salary FROM
HR.EMPLOYEES where (job_id = 'IT_PROG' OR job_id = 'ST_CLERK') AND salary > 5000

SELECT first_name, last_name, job_id, salary FROM
HR.EMPLOYEES 
where salary > 10000 AND (DEPARTMENT_ID = 20 or DEPARTMENT_ID = 30)

SELECT first_name, last_name, job_id, salary FROM
HR.EMPLOYEES where (job_id = 'IT_PROG' OR job_id = 'ST_CLERK') AND salary > 5000

SELECT FIRST_NAME, LAST_NAME, JOB_ID, SALARY
FROM HR.EMPLOYEES 
WHERE JOB_ID = 'IT_PROG' OR SALARY >= 5000

SELECT LAST_NAME, JOB_ID, SALARY
FROM HR.EMPLOYEES 
WHERE JOB_ID not in('SA_MAN', 'ST_CLERK','SH_CLERK', 'AD_PRES')

SELECT * FROM
HR.EMPLOYEES WHERE salary > 10000 AND job_id IN ('SA_MAN', 'SA_REP')

SELECT * FROM
HR.EMPLOYEES WHERE salary > 10000 AND job_id NOT IN ('SA_MAN', 'SA_REP')

SELECT LAST_NAME, JOB_ID, SALARY
FROM HR.EMPLOYEES 
WHERE JOB_ID not in('SA_MAN', 'ST_CLERK','SH_CLERK')

SELECT FIRST_NAME, LAST_NAME, JOB_ID, SALARY
FROM HR.EMPLOYEES 
WHERE JOB_ID = 'IT_PROG' OR SALARY >= 5000
ORDER BY FIRST_NAME OR JOB_ID DESC

SELECT FIRST_NAME, LAST_NAME, JOB_ID, SALARY
FROM HR.EMPLOYEES 
WHERE JOB_ID = 'IT_PROG' OR SALARY >= 5000
ORDER BY FIRST_NAME AND JOB_ID DESC

select commission_pct FROM hr.employees

select commission_pct FROM hr.employees while commission_pct is not null

select avg(commission_pct) FROM hr.employees

select max(SALARY) FROM hr.employees

select max(HIRE_DATE) FROM hr.employees

select max(salary),max(HIRE_DATE) FROM hr.employees

select max(salary),max(HIRE_DATE), max(first_name) FROM hr.employees

select avg(salary),max(HIRE_DATE), max(first_name) FROM hr.employees

select min(salary),max(HIRE_DATE), max(first_name) FROM hr.employees

select max(salary),max(HIRE_DATE), max(first_name) FROM hr.employees

select max(salary),max(HIRE_DATE), max(first_name) FROM hr.employees

select min(salary),min(commission_pct), min(nvl(commission_pct,0)),
min(hire_date), min(first_name) FROM hr.employees

select * from hr.EMPLOYEES
order by first_name

select listagg(first_name, ',') WITHIN GROUP (ORDER BY first_name)
"Employees" FROM hr.employees where job_id = 'ST_CLERK'

select listagg(first_name, ',') WITHIN GROUP (ORDER BY last_name, salary desc)
"Employees" FROM hr.employees where job_id = 'ST_CLERK'

SELECT job_id, avg(salary) FROM hr.EMPLOYEES
WHERE avg(salary) > 10000
group by job_id

SELECT max(avg(salary)) FROM hr.EMPLOYEES
group by department_id

SELECT min(avg(salary)) FROM hr.EMPLOYEES
group by department_id

SELECT department_id, COUNT(*) AS "Number of employees"
FROM hr.employees
WHERE salary > 10000
GROUP BY department_id
HAVING COUNT(*) > 10

SELECT min(avg(salary)), max(avg(salary)) FROM hr.EMPLOYEES
group by department_id

SELECT * from HR.employees where job_id = 'SA_REP'
OR SALARY > 10000

SELECT * FROM HR.EMPLOYEES 
WHERE JOB_ID = 'SA_REP'

SELECT * FROM HR.EMPLOYEES 
ORDER BY FIRST_NAME ASC
WHERE JOB_ID = 'SA_REP'

SELECT * FROM HR.EMPLOYEES 

WHERE JOB_ID = 'SA_REP'
ORDER BY FIRST_NAME ASC

SELECT FIRST_NAME, LAST_NAME, JOB_ID, SALARY
FROM HR.EMPLOYEES 
WHERE JOB_ID = 'IT_PROG' AND SALARY >= 5000
ORDER BY FIRST_NAME ASC

SELECT FIRST_NAME, LAST_NAME, JOB_ID, SALARY
FROM HR.EMPLOYEES 
WHERE JOB_ID = 'IT_PROG' AND SALARY >= 5000
ORDER BY FIRST_NAME DESC

SELECT FIRST_NAME, LAST_NAME, JOB_ID, SALARY
FROM HR.EMPLOYEES 
WHERE JOB_ID = 'IT_PROG' OR SALARY >= 5000
ORDER BY FIRST_NAME DESC

SELECT FIRST_NAME, LAST_NAME, JOB_ID, SALARY
FROM HR.EMPLOYEES 
WHERE JOB_ID = 'IT_PROG' OR SALARY >= 5000

ORDER BY FIRST_NAME AND JOB_ID DESC
