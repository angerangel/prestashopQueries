--Get all products of a manufacturer

SELECT DISTINCT ps8n_product_lang.name
FROM ps8n_product, ps8n_product_lang,   ps8n_product_shop , ps8n_manufacturer
WHERE      
ps8n_manufacturer.name = 'Finelok'
AND  ps8n_product.id_product =  ps8n_product_lang.id_product     
AND  ps8n_product.id_manufacturer =  ps8n_manufacturer.id_manufacturer
AND  ps8n_product.id_product = ps8n_product_shop.id_product
AND  ps8n_product_shop.active=true     
AND  ps8n_product_lang.id_lang=1 
ORDER BY ps8n_product_lang.name    ;
