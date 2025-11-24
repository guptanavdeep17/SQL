create database SQL_Assignment;
use SQL_Assignment;
create table Employees
( EmpID int unique, 
 EmpName Varchar(100),
 Department char(50),
 City varchar(50),
 Salary int ,
 HireDate varchar(25)
 );
 
insert into Employees values(101,'Rahul Mehta','Sales','Delhi',55000,'2020-04-12') ;
insert into Employees values(102,'Priya Sharma','HR','Mumbai',62000,'2019-09-25') ;
insert into Employees values(103,'Aman Singh','IT',' Bengaluru',72000,'2021-03-10') ;
insert into Employees values(104,'Neha Patel','Sales','Delhi',48000,'2022-01-14') ;
insert into Employees values(105,'Karan Joshi','Marketing','Pune',45000,'2018-07-22') ;
insert into Employees values(106,'Divya Nair','IT','Chennai',81000,'2019-12-11') ;
insert into Employees values(107,'Raj Kumar','HR','Delhi',60000,'2020-05-28') ;
insert into Employees values(108,'Simran Kaur','Finance','Mumbai',58000,'2021-08-03') ;
insert into Employees values(109,'Arjun Reddy','IT','Hyderabad',70000,'2022-02-18') ;
insert into Employees values(110,'Anjali Das','Sales','Kolkata',51000,'2023-01-15') ;


--  Question 1 : Show employees working in either the ‘IT’ or ‘HR’ departments.
select * from Employees where Department = 'IT' or Department = 'HR';

--  Question 2 : Retrieve employees whose department is in ‘Sales’, ‘IT’, or ‘Finance’.
select * from Employees 
where Department = 'IT' 
or Department = 'Sales' 
or Department = 'Finance';

--  Question 3 : Display employees whose salary is between ₹50,000 and ₹70,000.
select * from Employees 
where salary >= 50000 and salary <=70000;

--  Question 4 : List employees whose names start with the letter ‘A’.
select * from Employees 
where EmpName like 'A%';

--  Question 5 : Find employees whose names contain the substring ‘an’.
select * from Employees 
where EmpName like '%an%';

--  Question 6 : Show employees who are from ‘Delhi’ or ‘Mumbai’ and earn more than ₹55,000.
select * from Employees 
where (City = 'Delhi' or City = 'Mumbai') and Salary > 55000;

--  Question 7 : Display all employees except those from the ‘HR’ department.
select * from Employees
where Department != 'HR';

--  Question 8 : Get all employees hired between 2019 and 2022, ordered by HireDate (oldest first).
select * from Employees
where HireDate between '2019-01-01' and '2022-12-31'
order by HireDate ASC;
