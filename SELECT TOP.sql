/*
SELECT TOP (expression) [PERCENT]
    [WITH TIES]
FROM 
    table_name
ORDER BY 
    column_name;
*/

/* Select top 10 records*/
SELECT top 10 product_name, list_price from production.products order by list_price desc;

/* Select top records by percentage*/
select top 1 percent product_name, list_price from production.products order by list_price desc;

/*3) Using SELECT TOP WITH TIES to include rows that match the values in the last row*/
select top 3 with TIES product_name, list_price from production.products order by list_price desc;