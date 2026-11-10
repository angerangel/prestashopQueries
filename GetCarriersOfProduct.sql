/* You get product associations.
   Each carrier needs a row; so 4 carriers for a product = 4 rows.
   id_carrier_reference is not id_carrier.
   A prdouct with no carriers, it's a product associated to all active carriers. So you can delete rows of that product in order to associate to all carriers.
*/

select * FROM ps8n_product_carrier WHERE id_product=38084 ;

/*
+------------+----------------------+---------+
| id_product | id_carrier_reference | id_shop |
+------------+----------------------+---------+
|      38084 |                    1 |       1 |
|      38084 |                    2 |       1 |
|      38084 |                    9 |       1 |
|      38084 |                   28 |       1 |
+------------+----------------------+---------+
*/
