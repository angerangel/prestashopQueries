-- First of all let's find the id of aour category:

 select id_category from ps8n_category_lang where name like 'FatherCategory';
 
 
 -- Now we get all products childred, for example ID of father is 991
 
SELECT DISTINCT
ps8n_product_lang.name ,
replace(replace(replace(replace(ps8n_product_lang.description_short, '\n', ' '), ';', ','),'<p>',''),'</p>',' ')
FROM
ps8n_product_lang, ps8n_product_shop, ps8n_product
WHERE
ps8n_product_shop.active = 1
AND
ps8n_product_lang.id_lang =2
AND
ps8n_product_shop.id_product = ps8n_product_lang.id_product
AND 
ps8n_product.id_category_default  IN  (select id_category from ps8n_category WHERE id_parent=991 )
AND
ps8n_product.id_product = ps8n_product_lang.id_product

;
