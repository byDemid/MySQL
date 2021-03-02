-- Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT gender, COUNT(*) AS total
  FROM profiles 
    JOIN likes
      ON profiles.user_id = likes.user_id  
GROUP BY gender
ORDER BY total 
    DESC
   LIMIT 1; 

--  Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей).
SELECT SUM(likes_total) AS total_likes FROM
(SELECT COUNT(likes.id) AS likes_total
  FROM profiles
  LEFT JOIN likes 
         ON likes.target_id = profiles.user_id AND target_type_id = 2
   GROUP BY profiles.user_id
   ORDER BY profiles.birthday DESC
      LIMIT 10) AS user_likes;
     

-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети
SELECT 
  CONCAT(first_name, ' ', last_name) AS user, 
  COUNT(DISTINCT likes.id) + 
  COUNT(DISTINCT media.id) + 
  COUNT(DISTINCT messages.id) AS overall_activity
  FROM users
  LEFT JOIN likes
         ON users.id = likes.user_id 
  LEFT JOIN media
	     ON users.id = media.user_id
  LEFT JOIN messages
	     ON users.id = messages.from_user_id
   GROUP BY users.id  
   ORDER BY overall_activity
      LIMIT 10;
	 
