SELECT * FROM customers
LIMIT 10;

SELECT * FROM orders
LIMIT 10;

SELECT * FROM books
LIMIT 10;


SELECT * FROM pg_Indexes
WHERE tablename='customers';
SELECT * FROM pg_Indexes
WHERE tablename='orders';
SELECT * FROM pg_Indexes
WHERE tablename='books';

CREATE INDEX customers_first_name_idx
ON customers(first_name);

EXPLAIN ANALYZE SELECT original_language, title, sales_in_millions FROM books
WHERE original_language='French'; 

SELECT pg_size_pretty 
(pg_total_relation_size('books'));

CREATE INDEX books_original_language_title_sales_in_millions_price 
ON books(original_language,title,sales_in_millions,price);

SELECT pg_size_pretty 
(pg_total_relation_size('books'));

DROP INDEX IF EXISTS
books_original_language_title_sales_in_millions_price;

SELECT NOW();
 
\COPY orders FROM 'orders_add.txt' DELIMITER ',' CSV HEADER;
 
SELECT NOW();

CREATE INDEX customers_first_name_email_address ON
customers(first_name,email_address);

SELECT * FROM pg_Indexes
WHERE tablename='customers';