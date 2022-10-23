#Get all active products with minimum rder quantiy greater than 1

SELECT ps8n_product_lang.name, ps8n_product_lang.description_short ,  ps8n_product.minimal_quantity
FROM ps8n_product,ps8n_product_lang, ps8n_product_shop 
WHERE ps8n_product.id_product = ps8n_product_lang.id_product
AND ps8n_product.id_product = ps8n_product_shop.id_product 
AND ps8n_product_shop.active=true 
AND ps8n_product_lang.id_lang=2 
AND  ps8n_product.minimal_quantity >  1;
