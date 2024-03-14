/*
NULL = 0
NULL <> 0
NULL > 0
NULL = NULL
*/

/* 
The WHERE clause returns rows that cause its predicate to evaluate to TRUE. However, the following expression evaluates to UNKNOWN. and it will return 
empty result set
*/
SELECT
    customer_id,
    first_name,
    last_name,
    phone
FROM
    sales.customers
WHERE
    phone = NULL
ORDER BY
    first_name,
    last_name;

/*To test whether a value is NULL or not, you always use the IS NULL operator.
	value is NULL => IS NULL
	value is not null => IS NOT NULL
*/
SELECT
    customer_id,
    first_name,
    last_name,
    phone
FROM
    sales.customers
WHERE
    phone IS NOT NULL
ORDER BY
    first_name,
    last_name;
