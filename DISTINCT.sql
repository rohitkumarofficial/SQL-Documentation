/*
SELECT 
  DISTINCT column_name 
FROM 
  table_name;
*/

select * from sales.customers order by city;

/* distinct keyword with one column for getting unique record*/
select distinct city from sales.customers order by city;

select distinct city, state from sales.customers order by city;

/* using distinct with NULL*/
select distinct phone from sales.customers order by phone;

/* Note - Both DISTINCT and GROUP BY clause reduces the number of returned rows in the result
	set by removing the duplicates.
	However, you should use the GROUP BY clause when you want to apply an aggregate function to one or more columns.
*/