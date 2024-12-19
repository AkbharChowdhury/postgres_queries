CREATE OR REPLACE FUNCTION pounds(amount numeric(5,2)) 
RETURNS money as
$body$
	SELECT amount::double precision::numeric::money
$body$
LANGUAGE SQL

 create view product_details as SELECT 
 	product.name,
    product.supplier,
	pounds(item.price) price
   FROM product
     LEFT JOIN item ON item.product_id = product.id
  ORDER BY product.name;

 select * from product_details;