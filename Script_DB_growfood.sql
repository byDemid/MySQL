
-- https://growfood.pro/

CREATE DATABASE growfood;
USE growfood;

-- 1 таблицу пользователей
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  first_name VARCHAR(30) NOT NULL COMMENT "Имя пользователя",
  last_name VARCHAR(30) COMMENT "Фамилия пользователя",
  email VARCHAR(100) UNIQUE COMMENT "Почта",
  phone VARCHAR(30) NOT NULL UNIQUE COMMENT "Телефон",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Пользователи";  

-- 2 Таблица профилей
CREATE TABLE profiles (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "Ссылка на пользователя", 
  gender ENUM ('М','Ж') COMMENT "Пол",
  birthday DATE COMMENT "Дата рождения",
  height DECIMAL (5,2) COMMENT "Рост",
  weight DECIMAL (5,2) COMMENT "Вес",
  activity ENUM ('не занимаюсь спортом', 'тренировки 1-2 раза в неделю', 'тренировки 3-4 раза в неделю', 
   				'тренировки 4-5 раз в неделю', 'тренировки каждый день') COMMENT "Активность",
  subscription_id INT UNSIGNED COMMENT "Подписка",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Профили"; 

-- 3 Таблица Адресов доставки
CREATE TABLE delivery_address (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя", 
  city ENUM ('Санкт-Петербург','Москва') NOT NULL COMMENT "Город",
  street VARCHAR(50) NOT NULL COMMENT "Улица",
  house_number VARCHAR(15) NOT NULL COMMENT "Номер дома",
  entrance VARCHAR(15) NOT NULL COMMENT "Подъезд ",
  floors VARCHAR (5) COMMENT "Этаж",
  apartment_number VARCHAR(15) COMMENT "Номер квартира",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Адресса доставки"; 

-- 4 Таблица Карт
CREATE TABLE cards (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя", 
  card_types ENUM ('VISA','MasterCard','МИР') NOT NULL COMMENT "тип карты",
  card_number BIGINT UNSIGNED NOT NULL COMMENT "Номер карты",
  card_validity DATE NOT NULL COMMENT "Действие карты",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Карты пользователей"; 

-- 5 Таблица Блюд
CREATE TABLE dishes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(100) NOT NULL COMMENT "Название блюда",
  description VARCHAR(200) COMMENT "Описание",
  weight SMALLINT UNSIGNED COMMENT "Вес блюд",
  energy SMALLINT UNSIGNED COMMENT "Ккал",
  protein SMALLINT UNSIGNED COMMENT "Белок",
  fat SMALLINT UNSIGNED COMMENT "Жир", 
  carbohydrate SMALLINT UNSIGNED COMMENT "Углеводы",
  image JSON COMMENT "Метаданные файла",
  price DECIMAL(11,2) COMMENT "Цена",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Блюда"; 

-- 6 Таблица Меню 
CREATE TABLE menu (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  dish_id INT UNSIGNED NOT NULL COMMENT "Ссылка на блюда",
  program_id SET ('1','2','3','4','5','6','7','8','9') NOT NULL COMMENT "Ссылки на программы",
  day_of_week SET ('ПН','ВТ','СР','ЧТ','ПТ','СБ','ВС') NOT NULL COMMENT "Дни недели",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Меню";

-- 7 Таблица Программ
CREATE TABLE programs (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(50) NOT NULL COMMENT "Название программы",
  description VARCHAR(200) COMMENT "Описание",
  energy SMALLINT UNSIGNED COMMENT "Ккал",
  number_of_meals TINYINT UNSIGNED COMMENT "количество приемов пищи",
  price_min DECIMAL (11,2) UNSIGNED COMMENT "цена от, за день",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Программ";

-- 8 Таблица подписок
CREATE TABLE subscriptions (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  subscription_type_id INT UNSIGNED NOT NULL COMMENT "Ссылка на тип подписки",
  program_id INT UNSIGNED NOT NULL COMMENT "Название программы",
  price DECIMAL (11,2) UNSIGNED COMMENT "Цена",
  subscription_end_date DATE NOT NULL COMMENT "Время окончания подписки",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки" 
) COMMENT "Подписки";

-- 9 Таблица типов подписок
CREATE TABLE subscription_type (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(50) NOT NULL COMMENT "Тип подписки",
  number_of_day SMALLINT UNSIGNED COMMENT "количество дней в подписке",
  discount SMALLINT UNSIGNED COMMENT "Скидки",
  freezing BOOL COMMENT "проверка есть ли заморозка",  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Типы подписки";

-- 10 Таблица оплаты
CREATE TABLE payments (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  subscription_id INT UNSIGNED NOT NULL COMMENT "Ссылка на подписку",
  payment_type_id INT UNSIGNED NOT NULL COMMENT "Ссылка на тип оплаты",  
  payments DECIMAL (11,2) COMMENT "Сумма платежа",                           
  checking_payment BOOL COMMENT "проверка оплаты",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "оплата";

-- 11 Таблица Типы оплат  
CREATE TABLE payment_type (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(50) COMMENT "Типы оплаты",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Типы оплат";
  
-- 12 Таблица Курьеров 
CREATE TABLE couriers (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  first_name VARCHAR(30) NOT NULL COMMENT "Имя курьера",
  last_name VARCHAR(30) NOT NULL COMMENT "Фамилия курьера",
  birthday DATE COMMENT "Дата рождения",
  phone VARCHAR(30) NOT NULL UNIQUE COMMENT "Телефон",
  dat_of_employment DATE COMMENT "Дата приемана работу",
  working_shift VARCHAR(100) COMMENT "Рабочая смена",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Курьеры";  

-- 13 Таблица Заказа  
CREATE TABLE orders (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  subscription_id INT UNSIGNED NOT NULL COMMENT "Ссылка на подписку",  
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  courier_id INT UNSIGNED NOT NULL COMMENT "Ссылка на курьера",
  delivery_date DATETIME NOT NULL COMMENT "Дата и время доставки",
  delivery_address_id INT UNSIGNED NOT NULL COMMENT "Ссылка на адресс доставки",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания заказа",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Заказы";

-- 14 Таблица связий 
CREATE TABLE order_basket (
  orders_id INT UNSIGNED NOT NULL COMMENT "Ссылка на заказ",
  dish_id INT UNSIGNED NOT NULL COMMENT "Ссылка на блюда",
  quantity SMALLINT UNSIGNED COMMENT "Количество порций",
  PRIMARY KEY (orders_id, dish_id) COMMENT "Составной первичный ключ"
) COMMENT "Связь заказов и блюд";

-- 15 Таблица предпочтений   
CREATE TABLE preferences  (
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  dish_id INT UNSIGNED NOT NULL COMMENT "Ссылка на блюда",
  preference ENUM ('like','STOP-LIST') COMMENT "Оценка блюда",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
  PRIMARY KEY (user_id, dish_id) COMMENT "Составной первичный ключ"
) COMMENT "предпочтение";


-- Проставляем внешние ключи
SHOW TABLES;

DESC profiles;
ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE profiles
  ADD CONSTRAINT profiles_subscription_id_fk 
    FOREIGN KEY (subscription_id) REFERENCES subscriptions(id);


DESC delivery_address;
ALTER TABLE delivery_address
  ADD CONSTRAINT delivery_address_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id);

DESC cards;
ALTER TABLE cards
  ADD CONSTRAINT cards_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id);

DESC subscriptions;
ALTER TABLE subscriptions
  ADD CONSTRAINT subscriptions_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT subscriptions_subscription_type_id_fk 
    FOREIGN KEY (subscription_type_id) REFERENCES subscription_type(id),
  ADD CONSTRAINT subscriptions_program_id_fk 
    FOREIGN KEY (program_id) REFERENCES programs(id);

DESC menu;
ALTER TABLE menu
  ADD CONSTRAINT menu_dish_id_fk 
    FOREIGN KEY (dish_id) REFERENCES dishes(id);

DESC order_basket;
ALTER TABLE order_basket
  ADD CONSTRAINT order_basket_orders_id_fk 
    FOREIGN KEY (orders_id) REFERENCES orders(id),
  ADD CONSTRAINT order_basket_dish_id_fk 
    FOREIGN KEY (dish_id) REFERENCES dishes(id);

DESC orders;
ALTER TABLE orders
  ADD CONSTRAINT orders_subscription_id_fk 
    FOREIGN KEY (subscription_id) REFERENCES subscriptions(id),
  ADD CONSTRAINT orders_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT orders_courier_id_fk 
    FOREIGN KEY (courier_id) REFERENCES couriers(id),
  ADD CONSTRAINT orders_delivery_address_id_fk 
    FOREIGN KEY (delivery_address_id) REFERENCES delivery_address(id);
 
DESC payments;
ALTER TABLE payments
  ADD CONSTRAINT payments_subscription_id_fk 
    FOREIGN KEY (subscription_id) REFERENCES subscriptions(id),
  ADD CONSTRAINT payments_payment_type_id_fk 
    FOREIGN KEY (payment_type_id) REFERENCES payment_type(id);
   
DESC preferences;
ALTER TABLE preferences
  ADD CONSTRAINT preferences_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT preferences_dish_id_fk 
    FOREIGN KEY (dish_id) REFERENCES dishes(id);
   
   
-- Индексы 

-- Индекс по имени и фамилии пользователей
CREATE INDEX users_first_name_last_name_idx ON users(first_name, last_name);

DESC profiles;
-- Индекс по датам рождения
CREATE INDEX profiles_birthday_idx ON profiles(birthday);
SHOW INDEX FROM profiles;

DESC dishes ;
-- Индекс по именам блюд, ккл, 
CREATE INDEX dishes_name_idx ON dishes(name);
CREATE INDEX dishes_energy_idx ON dishes(energy);
SHOW INDEX FROM dishes;

DESC subscriptions;
-- Индекс на даты окончания подписок
CREATE INDEX subscriptions_subscription_end_date_idx ON subscriptions(subscription_end_date);
SHOW INDEX FROM subscriptions;

DESC couriers;
-- Индекс по имени и фамилии курьеров
CREATE INDEX couriers_first_name_last_name_idx ON couriers(first_name, last_name);
SHOW INDEX FROM couriers;




