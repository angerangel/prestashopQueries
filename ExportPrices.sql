#This query export prices to an external file in CSV format, morevore it puts main category. 
#This way you can create a price list to print for users, ordered by category and by code.

SET @sql = CONCAT(
"SELECT ps8n_category_lang.name, ps8n_product_lang.name, ps8n_product_lang.description_short,  ps8n_product.price  FROM  ps8n_product_lang, ps8n_product,  ps8n_product_shop, ps8n_category_lang
    WHERE 
    ps8n_product.id_product=ps8n_product_lang.id_product
    AND
    ps8n_product.id_category_default=ps8n_category_lang.id_category
    AND
    ps8n_category_lang.id_lang=2
    AND
    ps8n_product_lang.id_lang=2
    AND 
    ps8n_product_shop.active=true 
    AND
    ps8n_product.id_product=ps8n_product_shop.id_product
    ORDER BY ps8n_category_lang.name, ps8n_product_lang.name  
    INTO OUTFILE '",
     CONCAT('/var/lib/mysql-files/Listino-',  NOW() + 0, '.csv\' ') ,  
    " FIELDS ENCLOSED BY '§' ;" )  ;

    PREPARE statement FROM @sql;

    EXECUTE statement;
    DEALLOCATE PREPARE statement;
