ALTER TABLE tblTransaction
add constraint PK_tblTransaction_EmployeeNumber foreign key (EmployeeNumber)
references tblEmployee(EmployeeNumber)

--***a must**same data type for primary and foreign key
--thus it can be referenced each other

select E.EmployeeNumber, T.*
from tblEmployee as E
right join tblTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
where T.amount in(-179.47,786.22,-967.36,957.03)

begin tran
alter table tblTransaction alter column EmployeeNumber int null

alter table tblTransaction 
add constraint DF_tblTraction default 124 for EmployeeNumber

alter table tblTransaction with nocheck

add constraint PK_tblTransaction_EmployeeNumber 
foreign key(EmployeeNumber)
references tblEmployee(EmployeeNumber)
on update cascade
on delete no action
--this will update table tblTransaction when the tblEmployee table is updated

update tblEmployee set EmployeeNumber =9123 where EmployeeNumber =123

add constraint PK_tblTransaction_EmployeeNumber 
foreign key(EmployeeNumber)
references tblEmployee(EmployeeNumber)
on update set null


add constraint PK_tblTransaction_EmployeeNumber 
foreign key(EmployeeNumber)
references tblEmployee(EmployeeNumber)
on update set default


add constraint PK_tblTransaction_EmployeeNumber 
foreign key(EmployeeNumber)
references tblEmployee(EmployeeNumber)
on update cascade
on delete cascade
--this will update table tblTransaction when the tblEmployee table is updated

add constraint PK_tblTransaction_EmployeeNumber 
foreign key(EmployeeNumber)
references tblEmployee(EmployeeNumber)
on update cascade
on delete set null


add constraint PK_tblTransaction_EmployeeNumber 
foreign key(EmployeeNumber)
references tblEmployee(EmployeeNumber)
on update cascade
on delete cascade
rollback tran