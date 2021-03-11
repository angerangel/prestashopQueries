--If you don't set the same adress style for al countries, 
-- you'll have big trouble in Prestashop cart, 
-- because some mandatory fields of your defaul country will be missing from other countries customer
--Every time the user change country address, Prestashop change the fileds showed to user. Too bad

UPDATE  ps8n_address_format  SET  format = 'firstname lastname\r\ncompany\r\nvat_number\r\ndni\r\naddress1\r\naddress2\r\npostcode city\r\nState:name\r\nCountry:name\r\nphone' ;
