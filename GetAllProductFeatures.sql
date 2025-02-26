
SELECT 
ps8n_product.id_product, ps8n_product_lang.name, ps8n_product_lang.description_short ,  
ps8n_feature_lang.name, ps8n_feature_value_lang.value
FROM 
ps8n_product, ps8n_product_lang  ,  ps8n_product_shop, ps8n_feature_lang, ps8n_feature_value_lang,  ps8n_feature_product
WHERE 
ps8n_product.id_product =  ps8n_product_lang.id_product 
AND ps8n_product.id_product=ps8n_product_shop.id_product
AND  ps8n_product_shop.active=true 
AND ps8n_product_lang.id_lang=2
AND  ps8n_feature_lang.id_lang=2
AND ps8n_feature_value_lang.id_lang=2
AND  ps8n_product.id_product=ps8n_feature_product.id_product
AND ps8n_feature_product.id_feature = ps8n_feature_lang.id_feature
AND ps8n_feature_value_lang.id_feature_value = ps8n_feature_product.id_feature_value
order BY ps8n_product_lang.name, ps8n_feature_lang.name
;

/* result:
+------------+------------+-------------------------------------------------------------+---------------+--------+
| id_product | name       | description_short                                           | name          | value  |
+------------+------------+-------------------------------------------------------------+---------------+--------+
|      33382 | cap        | blue cap                                                    | Color         | blue   |
|      33382 | plug       | blue plug                                                   | Color         | blue   |
|      33383 | fitting    | Union fitting                                               | Size          | 10mm   |
+------------+------------+-------------------------------------------------------------+---------------+--------+
*/
