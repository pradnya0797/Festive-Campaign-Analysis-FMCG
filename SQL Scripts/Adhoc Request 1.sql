/*  1. Provide a list of products with a base price greater than 500 and 
that are featured in promo type of 'BOGOF' (Buy One Get One Free).  */


SELECT DISTINCT p.product_name,
                f.base_price
FROM   fact_events f
       JOIN dim_products p
         ON f.product_code = p.product_code
WHERE  f.promo_type = 'BOGOF'
       AND f.base_price > 500;
