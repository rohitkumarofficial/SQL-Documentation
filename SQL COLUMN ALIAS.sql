/*SQL server column alias*/
SELECT
    first_name,
    last_name
FROM
    sales.customers
ORDER BY
    first_name;

/* Column name will no column name*/
SELECT
    first_name + ' ' + last_name
FROM
    sales.customers
ORDER BY
    first_name;

/*Give a alias name to column*/
SELECT
    first_name + ' ' + last_name AS 'Full Name'
FROM
    sales.customers
ORDER BY
    first_name;

SELECT
    category_name 'Product Category'
FROM
    production.categories
ORDER BY
    'Product Category' desc;