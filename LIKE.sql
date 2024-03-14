/*The SQL Server LIKE operator is a logical operator that checks if a character string matches a specified pattern
column | expression LIKE pattern [ESCAPE escape_character]
*/

SELECT
    customer_id,
    first_name,
    last_name
FROM
    sales.customers
WHERE
    last_name LIKE 'z%'
ORDER BY
    first_name;

/*start and end match*/
SELECT
	customer_id,
	first_name,
	last_name
FROM
    sales.customers
WHERE
    last_name LIKE 't%s'
ORDER BY
    first_name;

SELECT
    customer_id,
    first_name,
    last_name
FROM
    sales.customers
WHERE
    last_name LIKE '_u%'
ORDER BY
    first_name; 

SELECT
    customer_id,
    first_name,
    last_name
FROM
    sales.customers
WHERE
    last_name LIKE '[YZ]%'
ORDER BY
    last_name;

SELECT
    customer_id,
    first_name,
    last_name
FROM
    sales.customers
WHERE
    last_name LIKE '[A-C]%'
ORDER BY
    first_name;

SELECT
    customer_id,
    first_name,
    last_name
FROM
    sales.customers
WHERE
    first_name NOT LIKE 'A%'
ORDER BY
    first_name;

/**********/
CREATE TABLE sales.feedbacks (
  feedback_id INT IDENTITY(1, 1) PRIMARY KEY, 
  comment VARCHAR(255) NOT NULL
);

INSERT INTO sales.feedbacks(comment)
VALUES('Can you give me 30% discount?'),
      ('May I get me 30USD off?'),
      ('Is this having 20% discount today?');

SELECT 
   feedback_id,
   comment
FROM 
   sales.feedbacks
WHERE 
   comment LIKE '%30%';