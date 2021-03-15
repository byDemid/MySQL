-- 1 Создайте таблицу logs типа Archive. 
-- Пусть при каждом создании записи в таблицах users, 
-- catalogs и products в таблицу logs помещается время и дата создания записи, 
-- название таблицы, идентификатор первичного ключа и содержимое поля name.

CREATE TABLE logs (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  tabl_name VARCHAR (50) NOT NULL COMMENT "Имя таблицы",
  row_id INT UNSIGNED NOT NULL,
  row_name VARCHAR (255)
) ENGINE = Archive;

CREATE TRIGGER products_inser AFTER INSERT ON products
FOR EACH ROW
  BEGIN
	  INSERT INTO logs VALUES (NULL, DEFAULT, "products", NEW.id, NEW.name);
  END;

CREATE TRIGGER users_inser AFTER INSERT ON users
  FOR EACH ROW
  BEGIN
	  INSERT INTO logs VALUES (NULL, DEFAULT, "users", NEW.id, NEW.name);
  END;

 CREATE TRIGGER catalogs_inser AFTER INSERT ON catalogs
 FOR EACH ROW
 BEGIN
	  INSERT INTO logs VALUES (NULL, DEFAULT, "catalogs", NEW.id, NEW.name);
 END;

