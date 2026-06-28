use cases;
select * from emp;

alter table emp
add column salary_category varchar(5);


update emp
set salary_category="A"
where salary>70000;

update emp
set salary_category="B"
where salary between 60000 and 70000;

update emp
set salary_category="C"
where salary<60000;

alter table emp
add column sal_category varchar(5);



update emp 
set sal_category = (
CASE 
        WHEN salary >= 70000 THEN 'A'
        WHEN salary between 60000 and  70000 THEN 'B'
        ELSE 'C'
    END 
);



-- column working_status:
-- If status = 'Active' → 'Working'
-- 'On Leave' → 'Temporarily Off'
--  Resigned → 'Left Company'

alter table emp
add column working_status varchar(20);

update emp
set working_status = (
case
when status="Active" then "working"
when status="On Leave" then "temporarily off"
else "Left Company"
end);

