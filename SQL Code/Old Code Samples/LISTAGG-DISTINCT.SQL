--19C LISTAGG DISTINCT

--The LISTAGG aggregate function now supports duplicate elimination by using the new DISTINCT keyword. 
--The LISTAGG aggregate function orders the rows for each group in a query according to the ORDER BY expression and then concatenates the values into a single string. 
--With the new DISTINCT keyword, duplicate values can be removed from the specified expression before concatenation into a single string. 
--This removes the need to create complex query processing to find the distinct values prior to using the aggregate LISTAGG function.
-- With the DISTINCT option, the processing to remove duplicate values can be done directly within the LISTAGG function. 
--The result is simpler, faster, more efficient SQL.

select d.dname,   
       listagg (e.job,', ' on overflow truncate with count)     
                within group (order by e.job) jobs  
  from scott.dept d, scott.emp e     
 where d.deptno = e.deptno     
 group by d.dname;
-- Example with DISTINCT

SELECT d.dname,   
       (select LISTAGG(job,', ' ON OVERFLOW TRUNCATE WITH COUNT)    
               WITHIN GROUP (ORDER BY job)   
          from (select unique job job   
                  from scott.emp e  
                 where d.deptno = e.deptno)) jobs  
  FROM scott.dept d;

select d.dname,   
       listagg (DISTINCT e.job,', ' on overflow truncate with count)     
                within group (order by e.job) jobs  
  from scott.dept d, scott.emp e     
 where d.deptno = e.deptno     
 group by d.dname;
