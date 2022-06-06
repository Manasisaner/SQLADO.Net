----------UC1 CreateDatabase---------
create database Payroll_Service2
use  Payroll_Service2

-------UC2------
create table employee_payroll
(
id int(50) identity,
name varchar (35),
salary money,
start_date date
)

--------UC3--------
insert into employee_payroll values
('Rakesh',25000.0,'2020-03-08','M');

insert into employee_payroll values
('Raj',12000.0,'2018-06-09','F'),
('Ansh',30000.0,'2022-01-07','M'),
('Aryansh',33300.0,'2020-09-09','M'),
('Seema',45000.0,'2022-08-07','M'),
('Pihu',39000.0,'2021-09-01','F')

--------UC4---------
select * from employee_payroll

--------UC5---------
select * from employee_payroll where name='Raj';

select getdate();
select * from employee_payroll where start_date between '2020-01-1'and getdate();

-------UC6---------
alter table employee_payroll add gender varchar(1)

update employee_payroll set gender='M' where name in('Ansh','Aryansh','Raj')

update employee_payroll set gender='F' where name in ('Seema','Pihu');

------UC7---------

select SUM(salary) from employee_payroll

select MAX(salary) from employee_payroll

select MIN(salary) from employee_payroll

select AVG(salary) from employee_payroll

select gender from employee_Payroll group by gender;

select SUM(salary) from employee_payroll group by gender

-------UC8--------

delete from employee_payroll


alter table employee_payroll add PhoneNo varchar(10)

update employee_payroll set PhoneNo='8120304098' where id='14'

ALTER TABLE employee_payroll ADD Deduction int not null default 0 ;

ALTER TABLE employee_payroll ADD Taxable_Pay int not null default 0 ;

ALTER TABLE employee_payroll ADD Net_Pay int not null default 0 ;

ALTER TABLE employee_payroll Add Department varchar(30)
---------------------------UC10--------------------------

Insert into employee_payroll
(name,Salary,start_date,gender,PhoneNo,Department,Deduction,Taxable_Pay,Net_Pay) Values
('Terisa',45000,'2015.04.28','F','8274862678','Banking',1000,500,300000);

select * from employee_payroll;