# the table containing the files is ps8n_attachment
# there you'll find id_attachment of the file and the file_name.
# table ps8n_attachment_lang contains for which languages is the attachment, with name and description (so every language has the desription in language)
# table ps8n_product_attachment  link id_product with id_attachment


INSERT INTO ps8n_product_attachment (id_product , id_attachment ) VALUES( 1, 1 ) ON DUPLICATE KEY UPDATE   #change 1 and 1 with the values you need
