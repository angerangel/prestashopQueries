--This code show all the short description of the active product of a category, and of a signle language of you choiche.

SELECT DISTINCT ps8n_product_lang.name,  ps8n_product_lang.description_short   
FROM ps8n_product, ps8n_product_lang,   ps8n_product_shop   
WHERE      
ps8n_product.id_product =  ps8n_product_lang.id_product     
AND   ps8n_product.id_product =  ps8n_product_shop.id_product     
AND        ps8n_product_shop.active=true     
AND       ps8n_product_lang.id_lang=1  --language
AND       ps8n_product.id_category_default = 993  --category
ORDER BY ps8n_product_lang.name    ;

