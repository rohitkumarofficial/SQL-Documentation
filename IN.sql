/*
The IN operator is a logical operator that allows you to check whether a value matches any value in a list.
column | expression IN ( v1, v2, v3, ...)
*/

SELECT * FROM production.products;

/*Basic SQL Server IN operator example*/
SELECT
    product_name,
    list_price
FROM
    production.products
WHERE
    list_price IN (89.99, 109.99, 159.99)
ORDER BY
    list_price;

/*To find the products whose list prices are not one of the prices 89.99, 109.99, and 159.99, you use the NOT IN operator.*/
SELECT
    product_name,
    list_price
FROM
    production.products
WHERE
    list_price NOT IN (89.99, 109.99, 159.99)
ORDER BY
    list_price;

SELECT
    product_name,
    list_price
FROM
    production.products
WHERE
    product_id IN (
        SELECT
            product_id
        FROM
            production.stocks
        WHERE
            store_id = 1 AND quantity >= 30
    )
ORDER BY
    product_name;
