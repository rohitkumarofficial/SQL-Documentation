/*SQL Server JOIN
	SQL Server joins that allow you to combine data from two tables
	INNER JOIN,
	LEFT JOIN,
	RIGHT JOIN,
	FULL OUTER JOIN,
	CROSS JOIN
*/

/* Create SCHEMA*/
CREATE SCHEMA hr;

/*Create two table candidates and employees in hr schema*/
CREATE TABLE hr.candidates(
	id INT PRIMARY KEY IDENTITY,
	fullname VARCHAR(100) NOT NULL
);

CREATE TABLE hr.employees(
	id INT PRIMARY KEY IDENTITY,
	fullname VARCHAR(100) NOT NULL
);

/* Insert some records in both the tables*/
/* Let's call candidate  table the Left table*/
INSERT INTO
	hr.candidates(fullname)
VALUES
	('John Doe'),
    ('Lily Bush'),
    ('Peter Drucker'),
    ('Jane Doe');

/* Let's call employees  table the Right table*/
INSERT INTO 
	hr.employees(fullname)
VALUES	
	 ('John Doe'),
    ('Jane Doe'),
    ('Michael Scott'),
    ('Jack Sparrow');

/*INNER JOIN*/
/*Inner join produces a data set that includes rows from the left table, and matching rows from the right table*/

select * from hr.candidates;
select * from hr.employees;

SELECT
	c.id candidate_id,
	c.fullname candidate_name,
	e.id employee_id,
	e.fullname employee_name
FROM
	hr.candidates c
	INNER JOIN hr.employees e
	ON e.fullname = c.fullname

/*LEFT JOIN or LEFT OUTER JOIN*/
/*Left join selects data starting from the left table and matching rows in the right table.*/
SELECT 
	c.id candidate_id,
	c.fullname candidate_name,
	e.id employee_id,
	e.fullname employee_name
FROM
	hr.candidates c
	LEFT JOIN  hr.employees e
	ON  e.fullname = c.fullname;

/** Right JOIN or RIGHT OUTER JON*/
/*Right join selects data starting from the right table and matching rows in the left table.*/
SELECT  
    c.id candidate_id,
    c.fullname candidate_name,
    e.id employee_id,
    e.fullname employee_name
FROM 
    hr.candidates c
    RIGHT JOIN hr.employees e 
        ON e.fullname = c.fullname;

/** FULL JOIN or FULL OUTER JON*/
/*returns a result set that contains all rows from both left and right tables, 
with the matching rows from both sides where available. In case there is no match, 
the missing side will have NULL values.*/
select * from hr.candidates;
select * from hr.employees;

SELECT  
    c.id candidate_id,
    c.fullname candidate_name,
    e.id employee_id,
    e.fullname employee_name
FROM 
    hr.candidates c
    FULL JOIN hr.employees e 
        ON e.fullname = c.fullname;

/*CROSS JOIN*/
SELECT
    product_id,
    product_name,
    store_id,
    0 AS quantity
FROM
    production.products
CROSS JOIN sales.stores
ORDER BY
    product_name,
    store_id;
