--tblEmployee
create table tblEmployee
(
EmployeeNumber int not null,
EmployeeFirstName varchar(50) not null,
EmployeeMiddleName varchar(50) null, 
EmployeeLastName varchar(50) not null,
EmploeeGovernmentID char(10) null,
DateOfBirth date not null
)