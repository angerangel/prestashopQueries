SELECT ps8n_product_lang.name,  ps8n_product_lang.description_short   
   FROM ps8n_product,ps8n_product_lang  
   WHERE 
      ps8n_product.id_product =  ps8n_product_lang.id_product  
      AND 
      ps8n_product.on_sale=true ;
