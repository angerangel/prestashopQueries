
SELECT ps8n_product.id_product, ps8n_product_lang.name, ps8n_product_lang.id_lang, ps8n_product_lang.description_short ,   ps8n_product.id_category_default,    ps8n_category_lang.name
FROM ps8n_product, ps8n_product_lang  , ps8n_category_lang, ps8n_product_shop
WHERE 
ps8n_product.id_product =  ps8n_product_lang.id_product 
AND ps8n_product.id_product=ps8n_product_shop.id_product
AND  ps8n_product_shop.active=true 
AND ps8n_product_lang.id_lang=2
AND ps8n_category_lang.id_lang = 2
AND ps8n_category_lang.id_category =  ps8n_product.id_category_default
;

--get products default category
