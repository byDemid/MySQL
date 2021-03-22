
-- Запрос показывает типы и сумму оплаченных(подтверженных ) подписок за все время (можно выбрать временные рамки)
SELECT 
  pt.name 'Payment type', 
  COUNT(p.subscription_id) 'Quantity', 
  SUM(pay.payments)  'Total' 
    FROM users u 
    JOIN profiles p
      ON u.id = p.user_id
    JOIN subscriptions s
      ON u.id = s.user_id 
    JOIN payments pay
      ON s.id = pay.subscription_id AND pay.checking_payment = '1'
    JOIN payment_type pt
      ON pay.payment_type_id = pt.id
GROUP BY pt.id;

-- Пользователи с еще действующей и уже оплаченной подпиской на сегодняшний день 
SELECT
  CONCAT(u.first_name, ' ', u.last_name) 'User'
  FROM users u
  JOIN subscriptions s
    ON u.id = s.user_id AND s.subscription_end_date > NOW()
  JOIN payments p
    ON s.id = p.subscription_id AND p.checking_payment = '1';
    
  
-- Кто из пользователей по гендерному типу более активно ставит лайки блюдам
SELECT
   (SELECT gender FROM profiles p WHERE user_id = pr.user_id) AS gender,
    COUNT(*) AS total
     FROM preferences pr
    WHERE pr.preference = 'like'
 GROUP BY gender
 ORDER BY total DESC
    LIMIT 1;  
   
-- Запрос показывает кто из пользователей уже сделал заказ , по какой программе

SELECT CONCAT(u.first_name, ' ', u.last_name) 'Пользователь', p.name 'Программа', o.delivery_date 'дата доставки', pt.name 'Тип оплаты'
  FROM users u 
  JOIN orders o  
    ON u.id = o.user_id
  JOIN subscriptions s
    ON u.id = s.user_id
  JOIN programs p
    ON s.program_id = p.id
  JOIN payments pay
    ON s.id = pay.subscription_id
  JOIN payment_type pt
    ON pay.payment_type_id = pt.id
    ORDER BY p.name;
   
 -- Представления 
 -- Заказы пользователей из Москвы с адресом и временем доставки
CREATE VIEW new_orders ( users, address, delivery_date, orders)
AS SELECT
  CONCAT(u.first_name, ' ', u.last_name),
  CONCAT (' ул. ', da.street, ' дом№ ', da.house_number, ' Подъезд ', da.entrance, ' Этаж ', da.floors,' кв ', da.apartment_number),
  o.delivery_date,
  o.id
  FROM users u
  JOIN delivery_address da
    ON u.id = da.user_id AND da.city = 'Москва' 
  JOIN orders o
    ON u.id = o.user_id;
   

-- Представление на приготовление блюд на кухне, на определенную дату 

CREATE VIEW order_for_cooking ( Dishes, Quantity, Delivery_Date)
AS SELECT 
  d.name, ob.quantity, o.delivery_date 
    FROM dishes d
    JOIN order_basket ob
      ON d.id = ob.dish_id
    JOIN orders o
      ON ob.orders_id = o.id
   WHERE o.delivery_date > '2021-04-13' AND o.delivery_date < '2021-04-15'
GROUP BY d.name  
ORDER BY o.delivery_date;


-- Процедура подсчета стоимости программы с учетом подписки
DELIMITER // 
DROP PROCEDURE IF EXISTS subscription_sum//
CREATE PROCEDURE subscription_sum (IN program_price INT, IN number_of_day INT, IN discount INT)
BEGIN
  SET @subscription_sum = program_pric * number_of_day - (program_pric * number_of_day * (discount / 100)) ;
END//
DELIMITER ;



-- Триггер, при создании пользователя в таблице user, добавит строку в таблице профеле 
DELIMITER // 
CREATE TRIGGER users_inser AFTER INSERT ON users
  FOR EACH ROW
  BEGIN
	  INSERT INTO profiles VALUES (NEW.id, NULL, NULL, NULL, NULL, NULL, NULL, DEFAULT, DEFAULT);
  END;
DELIMITER ;