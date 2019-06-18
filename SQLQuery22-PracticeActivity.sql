--Practice Activity 4

--original --given
select system_type_id, column_id, system_type_id / column_id as Calculation
from sys.all_columns
go

--1
select system_type_id, column_id , system_type_id *1.0000 / column_id as Calculation1
from sys.all_columns
go
--2
select system_type_id, column_id , floor(system_type_id*1.0000 / column_id) as Calculation2
from sys.all_columns
go

--3
select system_type_id, column_id , ceiling(system_type_id*1.0000 / column_id) as Calculation3
from sys.all_columns
go

--4
select system_type_id, column_id , round(system_type_id / column_id,1) as Calculation4
from sys.all_columns
go
--5
select system_type_id, column_id , try_convert(tinyint,system_type_id *2 ) as Calculation5
from sys.all_columns