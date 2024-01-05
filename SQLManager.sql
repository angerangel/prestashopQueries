-- the table containing the all SQL queries in Prestashop SQL Manager is ps8n_request_sql 
-- please note the the name of column sql is a reserved word, so you have to tu backstick char to use it, like `sql`

INSERT into ps8n_request_sql (`name`,`sql`) VALUES ('my query','SELECT * FROM ps8n_request_sql') ;

SELECT `name`,`sql`,id_request_sql FROM ps8n_request_sql WHERE id_request_sql = 1 ;
