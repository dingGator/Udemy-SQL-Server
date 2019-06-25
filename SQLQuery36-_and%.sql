select * from tblEmployee 
where [EmployeeLastName] = 'word'
select * from tblEmployee 
where [EmployeeLastName] <> 'word'
select * from tblEmployee 
where [EmployeeLastName] >= 'word'
select * from tblEmployee 
where [EmployeeLastName] like 'w%'

select * from tblEmployee 
where [EmployeeLastName] like '%w'

select * from tblEmployee 
where [EmployeeLastName] like '%w%'

select * from tblEmployee 
where [EmployeeLastName] like '_w%'

select * from tblEmployee 
where [EmployeeLastName] like '[r-t]%'

select * from tblEmployee 
where [EmployeeLastName] like '[rst]%'


--	 %	=0-infinity characters
--	_	=1 character 
-- [A-G] = in range a-g
-- [AGQ] = A, G or Q
-- [^AGQ]= NOT A,G, or Q



