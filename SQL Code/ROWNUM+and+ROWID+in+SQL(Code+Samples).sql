/************* The Complete Oracle SQL Bootcamp ****************
 * Author  : Oracle Master Training                            *
 * Course  : The Complete Oracle SQL Bootcamp                  *
 * Lecture : ROWNUM and ROWID in SQL                           *
 ***************************************************************/

SELECT employee_id, first_name, last_name, salary, rowid, rownum from employees;
SELECT employee_id, first_name, last_name, salary, rowid, rownum from employees where department_id = 60;
SELECT employee_id, first_name, last_name, salary, rowid, rownum from employees where department_id = 80;
SELECT employee_id, first_name, last_name, salary, rowid, rownum from employees 
       WHERE department_id = 80 and rownum <= 5 order by salary desc;
https://att-c.udemycdn.com/2022-11-05_08-33-25-ee3d554af98cd8ec9c033b9d9f1d0d57/original.sql?response-content-disposition=attachment%3B+filename%3DGROUP%2BBY%2BClause%2B%2528Part%2B1%2529%2B%2528Code%2BSamples%2529.sql&Expires=1758155916&Signature=EJWiGuf-RLSiZgMJYfVMDyXjfVfb5QUsAzkpImUpnu3DImUtV81uvjlEhNl25MgQwfKap~LC6rs6XEldHyQnGLVGmaizlRJjrzwFKTjax3jmU2yUvk1ub4s1~M2USDXtDPGbcp-thw-Ks2f0mjhg4-5viwtIpzv~ZWeFIFbKi6m6pZA5GYqGZlDxmcDe0zJE2HeBmSt8Dw12To4ydBrR0VjmIfzdtij-JVp0vl7IhAzsyrLBVDv6A7PpHT6JYOaFsbisDDIXITEdBxajPs6rmhDGzeo7~Rnz83hxdNo51AbyNMnVdL~JoZziSQISd8xExs-gDyl1jQJIXZ~tZNugmg__&Key-Pair-Id=K3MG148K9RIRF4