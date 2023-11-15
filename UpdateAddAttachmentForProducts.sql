/* the table containing the files is ps8n_attachment
 there you'll find id_attachment of the file and the file_name.
 table ps8n_attachment_lang contains for which languages is the attachment, with name and description (so every language has the desription in language)
 table ps8n_product_attachment  link id_product with id_attachment
 table ps8n_product_lang contain product name and id_product
*/

SELECT DISTINCT `id_product` , `name` FROM `ps8n_product_lang` ; #this help you to search id_product, add a WHERE clause to filter the result

SELECT id_attachment FROM ps8n_product_attachment WHERE id_product = 23 ;  #this way you find the id attachment of a product (change 23 with id of your product)

SELECT file_name FROM ps8n_attachment WHERE `file`="0ab48f5cf9c0a85073b9232d7f364654959ab941"; # here you get the file neame from file hash ("file" in prestashop)

#This return all products without attachemnt and active
SELECT DISTINCT  id_product , name 
FROM `ps8n_product_lang`
where not exists  (	 
	 SELECT DISTINCT ps8n_product_attachment.id_product
FROM ps8n_product_attachment
WHERE
ps8n_product_attachment.id_product = ps8n_product_lang.id_product 
) 
AND 
exists (
SELECT DISTINCT
ps8n_product_shop.id_product
FROM
ps8n_product_shop
WHERE
ps8n_product_shop.active =1
AND
ps8n_product_lang.id_product = ps8n_product_shop.id_product
)
;


INSERT INTO ps8n_product_attachment (id_product , id_attachment ) VALUES( 1, 1 ) ON DUPLICATE KEY UPDATE  ; #change 1 and 1 with the values you need
