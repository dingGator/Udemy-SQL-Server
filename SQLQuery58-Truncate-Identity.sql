alter table tblEmployee 
add constraint PK_tblEmployee primary key(EmployeeNumber)

insert into tblEmployee(EmployeeNumber, 
						EmployeeFirstName, 
						EmployeeMiddleName, 
						EmployeeLastName,
						EmployeeGovernmentID,
						DateOfBirth,
						Department)

values (2004, 'FirstName', 'MiddleName', 'LastName',
		'AB12345FM','2014-01-01','Accounts')

delete from tblEmployee
 where EmployeeNumber =2004
 

 alter table tblEmployee
 drop constraint PK_tblEmployee

 create table tblEmployee2 
 (EmployeeNumber int constraint PK_tblEmployee2 primary key identity (1,1) ,
 EmployeeName nvarchar(20))

 insert into tblEmployee2
 values('My Name'),('My Name')

 select * from tblEmployee2

 -- if delete the two rows
 delete from tblEmployee2
  -- then insert two more rows
 -- the table continues with the counter identity 
  insert into tblEmployee2
 values('My Name'),('My Name')
 -- note the counter for the insert row is 3,4 for EmployeeNumber
 select* from tblEmployee2
 --and continues counter as each row is added


 --if truncate the table
 truncate table tblEmployee2
 -- in insert two more rows
 -- table counter starts over again on insert
 insert into tblEmployee2
 values('My Name'),('My Name')
 --note the counter for EmployeeNumber restart 1,2 
 select* from tblEmployee2
