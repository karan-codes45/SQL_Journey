create database Aggregate_function ;

use Aggregate_function ;
select * from emp;

select min(sal) as Minimum_salary,
max(sal) as maximum_salary,
avg(sal) as average_salary,
sum(sal) as total_salary
from emp;

select min(hiredate) as First_Joiner,
max(hiredate) as Recent_Joiner
from emp;
 select count(*) as emp_count from emp;