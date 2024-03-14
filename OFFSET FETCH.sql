/* Syntax 
	ORDER BY column_list [ASC |DESC]
	OFFSET offset_row_count {ROW | ROWS}
	FETCH {FIRST | NEXT} fetch_row_count {ROW | ROWS} ONLY
*/

/*Skip the first 10 records*/
SELECT
    product_name,
    list_price
FROM
    [BikeStores].production.[products]
ORDER BY
    list_price,
    product_name 
OFFSET 10 ROWS;

/*Skip the first 10 and next next 10*/
SELECT
    product_name,
    list_price
FROM
   [BikeStores].production.[products]
ORDER BY
    list_price,
    product_name 
OFFSET 10 ROWS 
FETCH NEXT 10 ROWS ONLY;
	

/*get top 10 rows ordered by from 0 to N*/
SELECT
    product_name,
    list_price
FROM
    [BikeStores].production.[products]
ORDER BY
    list_price DESC,
    product_name 
OFFSET 0 ROWS 
FETCH FIRST 10 ROWS ONLY;