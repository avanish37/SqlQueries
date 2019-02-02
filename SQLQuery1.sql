

/*While loop demonstration for NCPI or ETT*/
Declare
 @effective_date datetime
,@ett_date datetime
,@business_date datetime
,@ncpi_date datetime
BEGIN
Select
 @effective_date = '07 Dec 2013'
,@ett_date = '21 Feb 2019'
,@business_date = '20 Jan 2019' 
,@ncpi_date = '31 Dec 2013'

while(@ncpi_date <= @business_date)
begin
--PRINT '---------'
--SELECT @effective_date '@effective_date'
SELECT @ncpi_date '@ncpi_date'

Select @ncpi_date = DATEADD(YY, 1, @ncpi_date)
end
END


