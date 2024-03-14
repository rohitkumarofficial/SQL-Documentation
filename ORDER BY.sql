/*
SELECT
    select_list
FROM
    table_name
ORDER BY 
    column_name | expression [ASC | DESC ];
*/

/* Default sorting */
SELECT
    first_name,
    last_name
FROM
    sales.customers
ORDER BY
    first_name;

/* DESC sorting*/
SELECT
	first_name,
	last_name
FROM
	sales.customers
ORDER BY
	first_name DESC;

/* Order by multiple columns*/
SELECT
    city,
    first_name,
    last_name
FROM
    sales.customers
ORDER BY
    city,
    first_name;

/*Multiple column with different order*/
SELECT
    city,
    first_name,
    last_name
FROM
    sales.customers
ORDER BY
    city DESC,
    first_name ASC;

	/*Sort by column which is not selected */
SELECT
	city,
	first_name,
	last_name
FROM
    sales.customers
ORDER BY
    state;

/* Sort by expression*/
/* Len() check the length of the string*/
SELECT
    first_name,
    last_name
FROM
    sales.customers
ORDER BY
    LEN(first_name) DESC;

/*Sort by ordinal position of column*/
SELECT
    first_name,
    last_name
FROM
    sales.customers
ORDER BY
    1,
    2;

