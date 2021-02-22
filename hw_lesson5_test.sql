-- 1.1
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME,
  updated_at DATETIME
) COMMENT = 'Покупатели';

SHOW TABLES;

INSERT INTO
  users (name, birthday_at, created_at, updated_at)
VALUES
  ('Рома', '1991-01-01', NULL, NULL),
  ('Ваня', '1992-02-02', NULL, NULL),
  ('Петр', '1993-03-03', NULL, NULL),
  ('Анна', '1994-04-04', NULL, NULL),
  ('Галя', '1995-05-05', NULL, NULL),
  ('Саша', '1996-06-06', NULL, NULL);
 
SELECT * FROM users;
 
UPDATE
  users
SET
  created_at = NOW(),
  updated_at = NOW();
 
-- 1.2  
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(255),
  updated_at VARCHAR(255)
) COMMENT = 'Покупатели';

INSERT INTO
  users (name, birthday_at, created_at, updated_at)
VALUES
  ('Рома', '1991-01-01', '20.10.2017 8:10', '20.10.2017 8:10'),
  ('Ваня', '1992-02-02', '20.10.2017 8:10', '20.10.2017 8:10'),
  ('Петр', '1993-03-03', '20.10.2017 8:10', '20.10.2017 8:10'),
  ('Анна', '1994-04-04', '20.10.2017 8:10', '20.10.2017 8:10'),
  ('Галя', '1995-05-05', '20.10.2017 8:10', '20.10.2017 8:10'),
  ('Саша', '1996-06-06', '20.10.2017 8:10', '20.10.2017 8:10');
 
SELECT * FROM users;

UPDATE
  users
SET
  created_at = STR_TO_DATE(created_at, '%d.%m.%Y %k:%i'),
  updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %k:%i');

ALTER TABLE
  users
CHANGE
  created_at created_at DATETIME DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE
  users
CHANGE
  updated_at updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

DESCRIBE users;

-- 1.3 
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';

INSERT INTO
  storehouses_products (storehouse_id, product_id, value)
VALUES
  (1, 543, 0),
  (1, 789, 2500),
  (1, 3432, 0),
  (1, 826, 30),
  (1, 719, 500),
  (1, 638, 1);
  
SELECT * FROM storehouses_products
ORDER BY IF(value > 0, 0, 1), value;

-- 1.4
SELECT * FROM users;
SELECT name  
  FROM users
  WHERE DATE_FORMAT(birthday_at, '%M') IN ('may', 'august');

-- 1.5
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');
 
SELECT * FROM catalogs
WHERE id IN (5, 1, 2)
ORDER BY FIELD(id, 5, 1, 2);

-- 2.1
SELECT
  AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) AS age
FROM
  users;
 
-- 2.2
 SELECT
  DATE_FORMAT(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))), '%W') AS day,
  COUNT(*) AS total
FROM
  users
GROUP BY
  day
ORDER BY
  total DESC;
  
-- 2.3
SELECT * FROM catalogs;
SELECT ROUND(EXP(SUM(LN(id)))) FROM catalogs;
