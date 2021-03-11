-- 1. Проанализировать какие запросы могут выполняться наиболее
-- часто в процессе работы приложения и добавить необходимые индексы.
SHOW TABLES;

DESC users;
-- Отрабатываем составной индекс  имя, фамилия
CREATE INDEX users_first_name_last_name_idx ON users(first_name, last_name);
SHOW INDEX FROM users;

DESC profiles;
-- Поиск по индексу страна, город
CREATE INDEX profiles_country_city_idx ON profiles(country, city);
-- поиск по дню рождения
CREATE INDEX profiles_birthday_idx ON profiles(birthday);
SHOW INDEX FROM profiles;

DESC media;
-- поиск по файлу
CREATE INDEX media_filename_idx ON media(filename);
SHOW INDEX FROM media;

DESC messages;
-- Поиск сообщение по пользователю
CREATE INDEX messages_from_user_id_idx ON messages(from_user_id);
CREATE INDEX messages_to_user_id_idx ON messages(to_user_id);
-- Поиск сообщения по тексту (не знаю как нужно реолизовать чтобы искал любое слово в тексте)
SHOW INDEX FROM messages;

DESC friendship;
-- поиск по друзьям уже создо первичным 
SHOW INDEX FROM friendship;

DESC communities;
-- индекс группы уже был создан уникальный
SHOW INDEX FROM communities;

-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы;
-- среднее количество пользователей в группах;
-- самый молодой пользователь в группе;
-- самый старший пользователь в группе;
-- общее количество пользователей в группе;
-- всего пользователей в системе;
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100.

SELECT DISTINCT communities.name,
  COUNT(*) OVER() / (SELECT COUNT(*) FROM communities) AS average,
  FIRST_VALUE(CONCAT(users.first_name, ' ', users.last_name, ' ', profiles.birthday)) 
      OVER (w ORDER BY profiles.birthday DESC) AS young_user,
  FIRST_VALUE(CONCAT(users.first_name, ' ', users.last_name, ' ', profiles.birthday)) 
      OVER (w ORDER BY profiles.birthday) AS old_user,
  COUNT(*) OVER w AS users_in_group,
  (SELECT COUNT(*) FROM users) AS users_in_data,
  COUNT(*) OVER w / (SELECT COUNT(*) FROM users) * 100 AS `%%`  
  FROM users
   LEFT JOIN profiles ON users.id = profiles.user_id
   LEFT JOIN communities_users ON profiles.user_id = communities_users.user_id
   LEFT JOIN communities ON communities_users.community_id = communities.id
      WINDOW w AS (PARTITION BY communities_users.community_id)
    ORDER BY communities.name;

 
