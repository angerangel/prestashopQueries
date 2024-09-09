--This find duplicate products in Prestashop
-- The last number is the number of language used by your prestashop
-- if you prestashop uses 3 languages (English, France and Spanish), then the last number is 3:

select name , COUNT(*) from ps8n_product_lang  group by name having COUNT(*) > 3 ;
