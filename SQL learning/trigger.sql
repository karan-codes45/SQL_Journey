# Trigger in SQL 

create database Trg;

use trg ;

create table employee (
Emp_name varchar(25) ,
salary int ,
age int ) ;

create table employee_log (
log_id int auto_increment primary key ,
message varchar(250) ) ;

# insert 

Delimiter //

create trigger trg_insert_after 
after insert 
on employee 
for each row 
begin
		insert into employee_log (message)
        value (concat("New Employee added Name is : ",New.Emp_Name));
end //

Delimiter ;

insert into employee value("Sai",35000,22);
insert into employee value("sham",45000,25);
insert into employee value("Ganesh",65000,27);


select * from employee ;

select * from employee_log ;

select * 
from employee_log 
where message like "%Om%";

# Update 

Delimiter // 

create Trigger trg_Update_after_new 
after update 
on employee 
for each row 
begin 
		insert into employee_log(message) 
        value(concat(old.Emp_name," Salary Chaged from ",old.salary," To ",new.salary));
        
end //

delimiter ;

select * from employee ;

select * from employee_log ;
update employee 
set salary = 41000
where Emp_name = "Om" ;

select * from employee_log;

# Delete 

Delimiter //

create trigger trg_delete_before 
before delete 
on employee 
for each row 
begin 
		insert into employee_log(Message) 
        value(concat("Delete Employee from table name is ",old.Emp_name)) ;
End // 

Delimiter ;


select * from employee ;

select * from employee_log ;

delete from employee 
where emp_name = "Sham" ;
