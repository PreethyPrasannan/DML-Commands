-- CREATING DATABASE
create database Employees;

use employees;

-- CREATING TABLE MANAGERS
CREATE TABLE Managers (
Manager_ID int primary key,
First_Name varchar (50) not null,
Last_Name varchar (50) not null,
DOB date not null,
Age int check (Age>18 and Age<65),
Last_Update timestamp not null default current_timestamp,
Gender char(1) check (Gender in ('M','F','O')),
Department Varchar (50) not null,
Salary decimal (10,2) not null
);

insert into Managers (Manager_Id, First_Name, Last_Name, DOB, Age, Gender, Department, Salary) 
VALUES
(121, 'Salini', 'Pattnaik', '1990-02-15', 33, 'F', 'Admin', 38000),
(122, 'Dileep', 'Sam', '1991-04-21', 34, 'M', 'Sales', 54000),
(123, 'Velegala', 'Prasad', '1982-06-11', 31, 'M', 'Sales', 29000),
(124, 'Aaliya', 'Kalam', '1996-04-04', 28, 'F', 'HR', 30000),
(125, 'Abhilasha', 'Kumar', '1981-02-24', 32, 'F', 'Marketing',24000),
(126, 'Simran', 'Mohan', '1989-04-11', 36, 'F', 'IT', 30000),
(127, 'Vijay', 'Sethupathy', '1990-01-01', 32, 'M', 'IT', 40000),
(128, 'christy', 'james', '1997-12-12', 33, 'M', 'Sales', 26000),
(129, 'Tovino', 'Thomas', '1987-09-19', 41, 'M', 'HR', 37000),
(130, 'Rinku', 'Ram', '1985-12-20', 38, 'F', 'HR', 22000);

SELECT * FROM MANAGERS;

-- RETRIVING NAME AND DOB OF MANAGER_ID 101
select First_Name,Last_Name,DOB
from Managers
where Manager_ID = 121;

-- ANNUAL INCOME OF ALL MANAGERS
select Manager_ID,First_Name,Last_Name,(salary * 12) as Annual_Income
from Managers;

-- DISPLAYING RECORDS OF ALL MANAGERS EXCEPT Aaliya
select * from Managers
where First_Name != 'Aaliya';

-- DISPLAYING IT DEPARTMENT MANAGERS WITH SALARY ABOVE 25000 
select * from Managers
where Department= 'IT' and Salary>25000;

-- DISPLAYING LIST OF MANAGERS WITH SALARY 10000 TO 35000
select * from Managers
where Salary between 10000 and	35000;