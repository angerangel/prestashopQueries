#This get all short description of active products

Select   
SQL_CALC_FOUND_ROWS 
ps8n_product_lang.id_product ,
ps8n_product_lang.name ,
ps8n_product_lang.id_lang ,
replace(replace(ps8n_product_lang.description_short, '\n', ' '), ';', ',')
      FROM 
	  ps8n_product_lang
	  INNER JOIN
	 ( ps8n_product,  ps8n_product_shop)
	  ON 
	  ( 
	  ps8n_product_lang.id_product =    ps8n_product.id_product
	  AND 
	  ps8n_product_lang.id_product =    ps8n_product_shop.id_product
	  )	  
WHERE  

ps8n_product_shop.active = 1
 
ORDER BY  ps8n_product_lang.name ;  
