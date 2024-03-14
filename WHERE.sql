/*
SELECT
    select_list
FROM
    table_name
WHERE
    search_condition;
*/

select * from production.products;

select  
	product_id,
    product_name,
    category_id,
    model_year,
    list_price 
from production.products
where category_id = 1
order by list_price desc;

/* WHERE clause with AND operator*/
select  
	product_id,
    product_name,
    category_id,
    model_year,
    list_price 
from production.products
where category_id = 1 AND model_year = 2017
order by list_price desc;

/* WHERE with comparision*/
select  
	product_id,
    product_name,
    category_id,
    model_year,
    list_price 
from production.products
where category_id = 1 AND model_year = 2017 AND list_price > 299
order by list_price desc;

/*Where clause with OR*/
SELECT
    product_id,
    product_name,
    category_id,
    model_year,
    list_price
FROM
    production.products
WHERE
    list_price > 3000 OR model_year = 2018
ORDER BY
    list_price DESC;

/*WHERE clause with between two values*/
SELECT
    product_id,
    product_name,
    category_id,
    model_year,
    list_price
FROM
    production.products
WHERE
    list_price between 3000 AND 4000
ORDER BY
    list_price DESC;

/* WHERE clause with IN*/
SELECT
    product_id,
    product_name,
    category_id,
    model_year,
    list_price
FROM
    production.products
WHERE
    list_price IN (299.99, 369.99)
ORDER BY
    list_price DESC;

/*Finding rows whoose values containing string using LIKE*/
SELECT
    product_id,
    product_name,
    category_id,
    model_year,
    list_price
FROM
    production.products
WHERE
    product_name LIKE '%Electra Cruiser 1%'
ORDER BY
    list_price;