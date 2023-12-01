--for a single product:
UPDATE  ps8n_product  set  id_tax_rules_group = 66 where id_product=25 ;
UPDATE  ps8n_product_shop  set  id_tax_rules_group = 66 where id_product=25 ;

--for all products
UPDATE  ps8n_product  set  id_tax_rules_group = 66 ;
UPDATE  ps8n_product_shop  set  id_tax_rules_group = 66 ;
