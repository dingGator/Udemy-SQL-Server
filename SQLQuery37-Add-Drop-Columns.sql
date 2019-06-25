


select * from tblEmployee
alter table tblEmployee
add Department varchar(10)

alter table tblEmployee
drop column Department

alter table tblEmployee
add Department varchar (15)




alter table tblEmployee
alter column Department varchar(20)

insert into tblEmployee
values(130,	'Gail',	'A',	'Wu',	'CM739047D',	'19690326',	'HR')

select * from tblEmployee

insert into tblEmployee
(	[EmployeeNumber],
	[EmployeeFirstName],
	[EmployeeMiddleName],
	[EmployeeLastName],
	[EmploeeGovernmentID],
	[DateOfBirth],
	[Department])
values(132,'Dylan',	'A','Word',	'HN513777D',	'19920914','Customer Relations')

select * from tblEmployee

insert into tblEmployee
(	[EmployeeNumber],
	[EmployeeFirstName],
	[EmployeeMiddleName],
	[EmployeeLastName],
	[EmploeeGovernmentID],
	[DateOfBirth],
	[Department])
values	(123,'Jane','',	'Zwilling',	'AB123456G',	'19850101',	'Commercial'),
		(124,'Carolyn',	'Andrea',	'Zimmerman',	'AB234578H','19750601','Litigation')

select * from tblEmployee