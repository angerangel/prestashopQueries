--Get the products with "On sale" tag active 

SELECT ps8n_product_lang.name ,  ps8n_product.id_product   
   FROM ps8n_product,ps8n_product_lang,   ps8n_product_shop
   WHERE 
      ps8n_product.id_product =  ps8n_product_lang.id_product 
      AND
      ps8n_product.id_product =  ps8n_product_shop.id_product 
      AND 
      ps8n_product_shop.active=true 
      AND
	  ps8n_product_shop.on_sale = 1
	  AND
      ps8n_product_lang.id_lang=1;
