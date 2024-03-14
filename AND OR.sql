/*
The AND is a logical operator that allows you to combine two Boolean expressions
The OR is a logical operator that allows you to combine two Boolean expressions
boolean_expression AND boolean_expression 
*/

/*Basic SQL Server AND operator*/
SELECT 
  * 
FROM 
  production.products 
WHERE 
  category_id = 1 
  AND list_price > 400 
ORDER BY 
  list_price DESC;

/*Using multiple SQL Server AND operators*/
 SELECT 
  * 
FROM 
  production.products 
WHERE 
  category_id = 1 
  AND list_price > 380 
  AND brand_id = 1 
ORDER BY 
  list_price DESC;

/* Using the AND operator with other logical operators*/
 SELECT 
  * 
FROM 
  production.products 
WHERE 
  brand_id = 1 
  OR brand_id = 9
  AND list_price > 1000 
ORDER BY 
  list_price DESC;