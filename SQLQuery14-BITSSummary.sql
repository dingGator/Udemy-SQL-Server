-- to remember integer types sizes
-- Bigint							8 bytea		-2^63 to 2^63-1
-- Int = up to 2,000,000,000		4 bytes		-2^31 to 2^31-1
-- Tinyint = 0-255					1 bytes		    0 to 255
-- Smallint = -32767 to 32768		2 bytes		-2^15 to 2^15-1

--BITS

-- Decimal (p--precision, s--scale)
-- Numeric (p--precision, s--scale)

-- precision:				1-9			5	bytes
--							10-19		9	bytes
--							20-28		13	bytes
--							29-38		17	bytes

--non integer number

--------   decimal  ---------
declare @myvar1 as decimal(7,2)
-- 12345.67 is valid for the above
-- 123456.7 is not valid
set @myvar1 = 12345.67
select @myvar1 as myDecimal1
print (@myvar1)

