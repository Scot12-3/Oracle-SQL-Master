/************* The Complete Oracle SQL Bootcamp *************
 * Author  : Oracle Master Training                         *
 * Course  : The Complete Oracle SQL Bootcamp               *
 * Lecture : AVG Function 									*
 ************************************************************/

SELECT avg(salary), avg(all salary), avg(distinct salary) FROM employees;

SELECT avg(salary), avg(all salary), avg(distinct salary)
FROM employees WHERE job_id = 'IT_PROG';

SELECT avg(salary), avg(all salary), avg(distinct salary), salary 
FROM employees WHERE job_id = 'IT_PROG';

SELECT avg(commission_pct) FROM employees;

SELECT avg(commission_pct), avg(nvl(commission_pct,0)) FROM employees;

SELECT avg(commission_pct), avg(nvl(commission_pct,0)), 
       avg(case when commission_pct is null then 0 else commission_pct end);
FROM employees;
/************************************************************
 * End of The Complete Oracle SQL Bootcamp                 *
 ************************************************************/
-- Oracle Master Training - https://www.oraclemaster.eu
-- For more Oracle SQL and PL/SQL code samples visit:   
--  https://www.oraclemaster.eu/blog    
-- For more Oracle training and videos visit:

--  https://www.oraclemaster.eu/oracle-training-courses
