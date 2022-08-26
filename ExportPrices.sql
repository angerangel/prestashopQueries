#This query export prices to an external file in CSV format, morevore it puts main category. 
#This way you can create a price list to print for users, ordered by category and by code.
#I have to use a variable for creating the query, because the SELECT statement doesn't permits function in file name.
#The § char is very common on keyboards, but nobody use it,so it's very handful to separate fields and avoid problems with carriage returns.
#It show the last 2 parent categories (Example: Parts/Wheels)
#Please note that MySql permits to write only in a specific folder, in my case (ububtu) /var/lib/mysql-files .

SET @sql = CONCAT(
    "SELECT
        ps8n_category_lang.name, t1.cname, t1.pname, t1.ds,t1.price
     FROM
     ps8n_category_lang,  ps8n_category,
    (SELECT  ps8n_product.id_category_default as 'id_c', ps8n_category_lang.name as 'cname', ps8n_product_lang.name as 'pname',
    replace(replace(replace(replace(ps8n_product_lang.description_short,'\n','' ),'<p>',' '),'</p>',' '),'<br>',' ') as 'ds',
    ps8n_product.price as 'price'
         FROM  ps8n_product_lang, ps8n_product,  ps8n_product_shop, ps8n_category_lang
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
        ps8n_product.id_product=ps8n_product_shop.id_product  ) as t1
    WHERE
        t1.id_c=ps8n_category.id_category
    AND
        ps8n_category_lang.id_category=ps8n_category.id_parent
    AND
        ps8n_category_lang.id_lang=2
    ORDER BY ps8n_category_lang.name, t1.cname, t1.pname
    INTO OUTFILE '",
    CONCAT('/var/lib/mysql-files/Listino-',  NOW() + 0, '.csv\' ') ,  " FIELDS ENCLOSED BY '§' ;"
    );

    PREPARE statement FROM @sql;
    EXECUTE statement;

