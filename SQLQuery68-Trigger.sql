

/*insert into tblTransaction
-- it inserts
After trigger is called
rollback tran


insert into tblTransaction
--it does not insert
instead of trigger is call */


CREATE TRIGGER TR_tblTransaction
    ON tblTransaction
    AFTER DELETE, INSERT, UPDATE
    AS
    BEGIN
	select * from Inserted
	select * from Deleted
    END
	go

	begin tran
	insert into tblTransaction(Amount,DateOfTransaction,EmployeeNumber)
	values (123,'2005-07-10', 123)
	rollback tran
	go

	create trigger NameOfTrigger on NameOfTable
	instead of Delete,Insert
	as 
	begin
	set nocount on
	end