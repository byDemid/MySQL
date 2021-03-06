-- 1.1 В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
USE sample;
START TRANSACTION;
SELECT * FROM shop.users WHERE shop.users.id = 1;
INSERT INTO sample.users SELECT * FROM shop.users WHERE shop.users.id = 1;
SELECT * FROM sample.users;
COMMIT;

-- 1.2 Создайте представление, которое выводит название name товарной позиции из таблицы 
-- products и соответствующее название каталога name из таблицы catalogs.
USE shop;
CREATE VIEW new_catalogs (name_products, name_catalog)
AS SELECT products.name, catalogs.name
     FROM products
     JOIN catalogs
       ON products.catalog_id = catalogs.id;     
SELECT * FROM new_catalogs;
SHOW TABLES;

-- 2.1 Создайте двух пользователей которые имеют доступ к базе данных shop. 
-- Первому пользователю shop_read должны быть доступны только запросы на чтение данных, 
-- второму пользователю shop — любые операции в пределах базы данных shop.
CREATE USER 'shop_read'@'localhost' IDENTIFIED BY 'pass';
GRANT SELECT, SHOW VIEW ON shop.* TO 'shop_read'@'localhost';

CREATE USER 'shop'@'localhost' IDENTIFIED BY 'shop';
GRANT ALL ON shop.* TO 'shop'@'localhost';

-- 3.1 Создайте хранимую функцию hello(), которая будет возвращать приветствие, 
-- в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать 
-- фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
DELIMITER // 
CREATE FUNCTION hello ()
RETURNS TINYTEXT NO SQL
BEGIN
  DECLARE hour INT;
  SET hour = HOUR(NOW());
  CASE
    WHEN hour BETWEEN 0 AND 5 THEN 
      RETURN "Доброй ночи";
    WHEN hour BETWEEN 6 AND 11 THEN 
      RETURN "Доброе утро";
    WHEN hour BETWEEN 12 AND 17 THEN 
      RETURN "Добрый день";
    WHEN hour BETWEEN 18 AND 23 THEN 
      RETURN "Добрый вечер";
  END CASE;
 END//
DELIMITER ;