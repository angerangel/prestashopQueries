#Query to retrive code and short descriptionof the active product.

SELECT ps8n_product_lang.name,  ps8n_product_lang.description_short   
   FROM ps8n_product,ps8n_product_lang,   ps8n_product_shop
   WHERE 
      ps8n_product.id_product =  ps8n_product_lang.id_product 
      AND
      ps8n_product.id_product =  ps8n_product_shop.id_product 
      AND 
      ps8n_product_shop.active=true 
      AND
      ps8n_product_lang.id_lang=1;
      
      --This way we gat all in English
