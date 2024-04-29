--GET the total value of product in stock, only active products

SELECT SUM(`quantity` * `price`) FROM ps8n_product WHERE active=true ;

/*Only for one Brand,
 TIP: to get brand numbers just use:  
     select * from ps8n_manufacturer  ;
*/

SELECT DISTINCT ps8n_product_lang.name, ps8n_product.quantity  , ps8n_product.price  
FROM  ps8n_product_lang, ps8n_product, ps8n_product_shop
WHERE
ps8n_product.id_product=ps8n_product_lang.id_product
AND
ps8n_product.id_product=ps8n_product_shop.id_product
AND
ps8n_product.id_manufacturer=4 --this is the brand id number
AND 
ps8n_product_shop.active=true ;
