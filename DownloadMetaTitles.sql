#Download Meta Titles

select  name, meta_title FROM ps8n_product_lang, ps8n_product_shop  
     WHERE 
     ps8n_product_lang.id_product   =  ps8n_product_shop.id_product  
     AND
     ps8n_product_shop.active=true
     INTO OUTFILE "/var/lib/mysql-files/ElencoMetaTitle2.csv" ;
