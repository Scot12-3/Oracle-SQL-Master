/************* The Complete Oracle SQL Bootcamp *************************
 * Author  : Oracle Master Training                                     *
 * Course  : The Complete Oracle SQL Bootcamp                           *
 * Lecture : Character Functions - Part 3 (TRIM, LTRIM, RTRIM Functions)*
 ************************************************************************/

SELECT TRIM ('     My Name is Adam   ') trimmed_text from dual;
SELECT TRIM (' ' FROM '     My Name is Adam   ') trimmed_text from dual;
SELECT TRIM (BOTH ' ' FROM '     My Name is Adam   ') trimmed_text from dual;
SELECT TRIM (LEADING ' ' FROM '     My Name is Adam   ') trimmed_text from dual;
SELECT TRIM (TRAILING ' ' FROM '     My Name is Adam   ') trimmed_text from dual;
SELECT TRIM (TRAILING 'm' FROM '     my Name is Adam   ') trimmed_text from dual;
SELECT TRIM (TRAILING 'm' FROM 'my Name is Adam') trimmed_text from dual;
SELECT TRIM (TRAILING 'm' FROM 'my Name is Adammmmm') trimmed_text from dual;
SELECT TRIM (LEADING 'm' FROM 'my Name is Adam') trimmed_text from dual;
SELECT TRIM (BOTH 'm' FROM 'my Name is Adam') trimmed_text from dual;
SELECT TRIM ('m' FROM 'my Name is Adam') trimmed_text from dual;
SELECT TRIM ('m' FROM 'my Name is Ada') trimmed_text from dual;
SELECT TRIM (TRAILING 'm' FROM 'my Name is Ada') trimmed_text from dual;
SELECT TRIM (TRAILING 'my' FROM 'my Name is Ada') trimmed_text from dual;

SELECT RTRIM ('  my Name is Adam  ') r_trimmed_text from dual;
SELECT LTRIM ('  my Name is Adam  ') l_trimmed_text from dual;
SELECT LTRIM ('my Name is Adam', 'my') l_trimmed_text from dual;
SELECT RTRIM ('my Name is Adam', 'my') r_trimmed_text from dual;
SELECT RTRIM ('my Name is Adammmm', 'my') r_trimmed_text from dual;
SELECT LTRIM ('www.yourwebsite.com', 'w.') l_trimmed_text from dual;
SELECT RTRIM(LTRIM('www.yourwebsitename.com', 'w.'),'.com') trimmed_text from dual;
SELECT ltrim('1237982434www.yourwebsitename.com', '0123456789') trimmed_text from dual;

--PART 4:
SELECT first_name, REPLACE(first_name,'a') rpl FROM employees;
SELECT first_name, REPLACE(first_name,'a','-') rpl FROM employees;
SELECT first_name, REPLACE(first_name,'le','-') rpl FROM employees;
SELECT first_name, REPLACE(first_name,'und','-') rpl FROM employees;
SELECT first_name, lpad(first_name,10,'*') pad FROM employees;
SELECT first_name, rpad(first_name,10,'*') pad FROM employees;
SELECT first_name, rpad(first_name,6,'*') pad FROM employees;
SELECT first_name, lpad(first_name,6,'*') pad FROM employees;
SELECT first_name, lpad('My name is ',20,'-') pad FROM employees;
SELECT first_name, lpad('My name is '||last_name ,20,'-') pad FROM employees;
-- End of code
SLECT first_name, rpad('My name is '||last_name ,20,'-') pad FROM employees;
