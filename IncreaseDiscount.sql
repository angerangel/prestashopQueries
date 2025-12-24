--To increase discoutn of 1%

UPDATE ps8n_specific_price
   set reduction =  reduction + 0.01
   where
   ps8n_specific_price.reduction <> 0
   and id_product IN (SELECT ps8n_product_shop.id_product FROM ps8n_product_shop WHERE ps8n_product_shop.active=true ) ;
