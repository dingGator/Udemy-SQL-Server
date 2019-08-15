 insert into tblTransaction values
(-2.77, '20150515', 132)

create trigger tr_ViewByDepartment
on dbo.ViewByDepartment
instead of Delete
as
begin
select *, 'ViewByDepartment' from deleted
end
select * from ViewByDepartment1 where TotalAmount = -2.77 
select * from ViewByDepartment2 where TotalAmount = -2.77 
select * from ViewByDepartment where TotalAmount = -2.77 
begin tran
select * from ViewByDepartment where TotalAmount = -2.77 
 and EmployeeNumber =132
 delete from ViewByDepartment
 where TotalAmount = -2.77 and EmployeeNumber = 132
 select * from ViewByDepartment where TotalAmount = -2.77 and EmployeeNumber =132
 rollback tran