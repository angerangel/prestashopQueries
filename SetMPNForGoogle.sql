--If your products ha not an MPN, this create a valid MPN

UPDATE  ps8n_product, ps8n_product_lang  SET ps8n_product.mpn=ps8n_product_lang.name WHERE  ps8n_product.id_product=ps8n_product_lang.id_product   ;
