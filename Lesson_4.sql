SHOW TABLES;

DESC users;
SELECT * FROM users LIMIT 10;
UPDATE users SET updated_at = NOW() WHERE updated_at < created_at;

DESC profiles;
SELECT * FROM profiles LIMIT 10;
UPDATE profiles SET updated_at = NOW() WHERE updated_at < created_at;

DESC messages;
SELECT * FROM messages LIMIT 10;
UPDATE messages SET
  from_user_id = FLOOR(1 + RAND() * 100),
  to_user_id = FLOOR(1 + RAND() * 100);
  
 DESC media;
 SELECT * FROM media LIMIT 10;
 UPDATE media SET updated_at = NOW() WHERE updated_at < created_at;
 UPDATE media SET
  user_id = FLOOR(1 + RAND() * 100);
CREATE TEMPORARY TABLE extensions (name VARCHAR(10));
INSERT INTO extensions VALUES ('avi'), ('png'), ('mp3'), ('mpeg4');
SELECT * FROM extensions;
UPDATE media SET filename = CONCAT('https://dropbox.com/vk/', filename, '.', (SELECT name FROM extensions ORDER BY RAND() LIMIT 1));
UPDATE media SET size = FLOOR(10000 + (RAND() * 1000000)) WHERE size < 1000;
UPDATE media SET metadata = CONCAT('{"owner":"', (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id), '"}');  
ALTER TABLE media MODIFY COLUMN metadata JSON;

DESC media_types;
SELECT * FROM media_types;

DESC friendship;
SELECT * FROM friendship LIMIT 10;
ALTER TABLE friendship DROP COLUMN requested_at;
UPDATE friendship SET updated_at = NOW() WHERE updated_at < created_at;
UPDATE friendship SET 
  user_id = FLOOR(1 + RAND() * 100),
  friend_id = FLOOR(1 + RAND() * 100);
UPDATE friendship SET friend_id = friend_id + 1 WHERE user_id = friend_id;

DESC friendship_statuses; 
SELECT * FROM friendship_statuses;
UPDATE friendship_statuses SET updated_at = NOW() WHERE updated_at < created_at;

DESC communities;
SELECT * FROM communities;
UPDATE communities SET owner_id = FLOOR(1 + RAND() * 100);
UPDATE communities SET updated_at = NOW() WHERE updated_at < created_at;

DESC communities_users;
SELECT * FROM communities_users;