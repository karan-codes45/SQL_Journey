use basic_p1;

-- create a table take 10 entries and perform operations use select,from,where,between,and,or

-- create a table 
create table employees(ID int,name varchar(20),salary int,experience_in_years int);

select * from employees;

-- insert values
insert into employees(ID,name,salary,experience_in_years) values
(1,"karan",40000,1),
(2,"yash",50000,4),
(3,"sahil",60000,6),
(4,"ayush",55000,5),
(5,"vinayak",65000,7),
(7,"varun",80000,9),
(8,"atharv",75000,10),
(9,"ritesh",35000,2),
(10,"aditya",120000,11)
;

-- give all information of employee whoose employee number is 9
select * from employees where ID=9;

-- give the employees names and id only who have more than 5 years of experience
select ID,name from employees where experience_in_years>5;

-- select employees which have more than 5 years of experience and more than 60000 of salary
select * from employees where experience_in_years>5 and salary>=60000;

-- give the employees which have experience between 1 to  5 years
select * from employees where  experience_in_years between 1 and 5;

-- select all employees which have experience between 5 and 11 and have salary more than 70000
select * from employees where experience_in_years between 5 and 11 and salary>=70000;