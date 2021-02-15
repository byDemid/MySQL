#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'voluptas', '2017-09-25 11:00:31', '2019-06-20 18:30:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'consectetur', '2015-01-20 13:50:55', '2012-05-27 07:28:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'repellendus', '2020-05-04 04:54:17', '2013-12-28 03:46:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'quis', '2016-06-18 11:10:11', '2011-09-16 04:43:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'aspernatur', '2011-08-04 06:31:22', '2014-03-03 05:34:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'perspiciatis', '2019-10-24 23:24:35', '2018-10-30 17:01:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'cupiditate', '2017-06-07 13:58:45', '2011-07-05 00:58:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'delectus', '2019-04-16 13:33:15', '2018-02-02 23:19:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'atque', '2018-03-14 07:13:56', '2015-09-29 11:24:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'consequuntur', '2017-02-07 20:43:06', '2013-09-24 21:52:47');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '2013-01-04 03:31:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 11, '2015-03-11 05:02:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 21, '2019-07-15 18:58:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 31, '2016-11-12 12:39:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 41, '2015-12-30 05:04:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 51, '2020-08-30 18:17:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 61, '2012-07-29 19:48:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 71, '2016-07-23 16:12:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 81, '2011-05-10 12:24:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 91, '2021-01-25 12:24:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '2016-08-31 21:24:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 12, '2017-08-22 17:16:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 22, '2014-04-30 05:20:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 32, '2012-02-26 20:52:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 42, '2019-07-26 18:52:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 52, '2014-11-17 13:28:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 62, '2019-05-26 08:40:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 72, '2017-09-30 06:35:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 82, '2014-05-06 02:01:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 92, '2013-10-10 08:14:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '2011-03-30 19:40:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 13, '2017-12-18 00:00:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 23, '2019-10-06 05:56:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 33, '2017-08-15 15:57:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 43, '2012-09-10 17:17:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 53, '2011-11-21 19:43:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 63, '2012-08-30 00:45:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 73, '2019-12-07 23:50:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 83, '2012-06-28 03:15:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 93, '2020-03-10 03:01:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2020-09-08 15:27:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 14, '2014-06-09 10:39:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 24, '2012-02-25 21:18:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 34, '2011-09-27 05:15:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 44, '2017-01-01 19:59:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 54, '2012-04-10 08:57:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 64, '2014-02-25 04:18:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 74, '2013-01-16 23:13:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 84, '2013-12-10 07:52:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 94, '2018-01-09 11:36:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2017-01-10 19:15:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 15, '2019-01-12 06:34:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 25, '2014-09-06 21:04:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 35, '2011-11-05 01:34:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 45, '2012-04-10 22:58:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 55, '2014-09-12 02:08:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 65, '2016-12-24 08:52:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 75, '2017-04-04 11:19:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 85, '2011-06-30 16:37:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 95, '2016-09-19 02:27:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '2015-10-28 14:24:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 16, '2017-08-21 03:48:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 26, '2018-01-15 00:44:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 36, '2012-09-29 17:35:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 46, '2018-06-18 16:34:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 56, '2014-06-24 12:46:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 66, '2020-09-09 05:59:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 76, '2012-08-23 08:02:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 86, '2014-03-31 14:11:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 96, '2019-03-30 07:43:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '2018-10-25 23:11:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 17, '2017-11-17 00:31:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 27, '2019-08-18 00:22:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 37, '2011-06-16 15:43:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 47, '2011-09-27 07:28:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 57, '2013-09-18 13:45:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 67, '2013-07-09 11:54:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 77, '2013-04-09 00:14:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 87, '2011-02-28 20:51:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 97, '2018-06-07 09:19:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '2020-10-03 01:09:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 18, '2019-10-02 15:10:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 28, '2015-07-06 17:20:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 38, '2020-04-11 07:08:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 48, '2019-03-29 12:29:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 58, '2020-11-04 08:44:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 68, '2012-03-07 07:41:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 78, '2016-12-29 13:10:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 88, '2013-02-27 04:47:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 98, '2013-11-27 21:49:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '2020-12-07 10:20:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 19, '2011-06-26 17:43:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 29, '2014-11-28 02:21:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 39, '2020-09-21 14:48:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 49, '2018-02-09 11:45:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 59, '2018-08-28 11:33:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 69, '2016-02-17 01:24:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 79, '2012-09-26 03:39:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 89, '2019-05-17 14:32:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 99, '2011-11-23 05:36:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '2011-07-26 01:07:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 20, '2015-08-25 02:53:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 30, '2012-04-15 23:06:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 40, '2020-03-23 13:43:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 50, '2017-07-28 17:30:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 60, '2017-05-24 05:24:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 70, '2019-03-27 17:04:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 80, '2014-07-16 21:01:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 90, '2015-12-26 10:17:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 100, '2020-12-20 09:17:32');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 1, '2016-01-13 11:45:31', '2016-12-17 07:30:04', '2021-02-11 15:15:15', '2019-03-31 04:48:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 2, '2020-03-30 07:12:13', '2016-10-11 04:00:40', '2015-12-28 20:37:42', '2011-09-13 09:32:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 3, 3, '2020-12-06 09:04:43', '2016-08-25 23:59:00', '2018-11-06 03:26:08', '2017-11-14 15:36:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 1, '2021-02-15 13:13:45', '2012-12-03 06:16:35', '2019-04-12 08:49:48', '2017-07-31 05:07:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 5, 2, '2020-07-14 22:44:26', '2012-11-30 09:07:21', '2014-06-17 20:58:37', '2018-09-19 07:41:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 6, 3, '2013-05-04 19:31:11', '2017-03-21 02:36:00', '2017-09-29 03:10:48', '2011-08-14 23:26:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 7, 1, '2020-12-13 13:34:16', '2017-05-14 00:16:56', '2020-06-15 23:54:20', '2011-11-01 06:54:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 8, 2, '2018-05-30 16:00:33', '2016-01-15 18:52:15', '2016-07-26 23:44:21', '2012-11-08 16:07:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 3, '2015-03-12 16:47:02', '2017-12-26 01:21:22', '2013-10-16 12:54:10', '2017-08-23 16:46:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 10, 1, '2019-12-27 22:25:08', '2018-03-14 12:45:32', '2016-02-25 03:16:54', '2017-06-11 17:32:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 11, 2, '2017-07-09 22:50:13', '2015-10-06 01:42:17', '2011-05-26 20:14:21', '2019-12-05 05:24:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 12, 3, '2020-03-03 07:57:46', '2012-08-15 22:22:58', '2017-11-14 07:16:11', '2018-11-27 03:02:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 13, 1, '2011-12-29 03:58:43', '2015-03-15 01:02:50', '2019-06-02 01:06:33', '2016-10-25 07:18:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 14, 2, '2019-01-20 13:45:33', '2016-10-11 12:32:39', '2014-09-23 05:52:25', '2011-12-17 05:56:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 15, 3, '2020-03-22 03:06:07', '2020-02-17 10:54:43', '2016-06-23 06:53:30', '2019-08-17 13:36:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 16, 1, '2011-05-19 02:40:49', '2018-08-26 07:38:58', '2019-09-09 15:25:46', '2017-06-05 05:00:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 17, 2, '2021-01-31 13:36:33', '2013-09-23 22:27:56', '2013-08-29 04:34:04', '2015-12-11 15:42:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 18, 3, '2015-06-03 23:19:17', '2011-05-22 21:41:13', '2011-02-23 10:02:15', '2019-06-06 23:33:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 19, 1, '2014-10-07 13:46:17', '2014-11-14 07:28:30', '2016-07-24 01:24:27', '2011-05-10 21:49:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 20, 2, '2013-11-13 23:55:09', '2019-11-13 16:30:23', '2019-05-10 13:19:33', '2018-07-25 21:58:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 21, 3, '2019-09-23 05:57:32', '2015-09-16 20:18:59', '2017-02-10 12:54:31', '2016-05-10 04:48:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 22, 1, '2017-06-18 17:33:08', '2011-06-19 05:59:11', '2013-08-03 19:30:51', '2015-05-22 21:29:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 23, 2, '2016-06-25 10:46:32', '2021-01-01 23:53:01', '2015-06-23 19:20:37', '2012-02-28 16:39:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 24, 3, '2015-10-24 01:56:21', '2018-07-11 02:42:42', '2018-05-18 12:11:44', '2017-01-06 23:33:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 25, 1, '2011-06-25 16:33:14', '2013-12-26 17:08:18', '2020-08-07 21:26:19', '2019-07-24 05:56:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 26, 2, '2018-12-04 00:46:00', '2012-10-31 10:37:38', '2013-06-23 06:23:45', '2015-09-08 17:12:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 27, 3, '2012-12-29 16:20:51', '2014-12-07 12:58:05', '2014-07-10 22:29:02', '2017-01-17 16:44:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 28, 1, '2017-02-24 20:42:50', '2014-11-22 00:05:48', '2016-10-16 22:47:42', '2011-08-09 13:01:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 29, 2, '2018-01-25 13:25:17', '2013-09-08 15:11:21', '2014-07-04 22:09:42', '2019-10-14 05:41:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 30, 3, '2016-02-28 01:53:41', '2011-03-19 17:57:44', '2019-09-18 13:53:02', '2015-02-22 12:42:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 31, 1, '2011-10-27 14:16:39', '2013-01-25 13:30:26', '2019-04-26 05:22:32', '2012-03-10 14:54:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 32, 2, '2015-11-23 16:19:07', '2018-07-13 01:30:59', '2021-01-02 11:09:46', '2011-04-26 17:52:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 33, 3, '2020-03-06 11:17:54', '2015-07-17 16:44:53', '2014-12-11 20:43:29', '2015-03-30 18:21:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 34, 1, '2018-11-22 10:41:29', '2020-12-18 20:39:11', '2014-10-16 16:18:34', '2015-10-08 04:59:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 35, 2, '2013-03-02 15:46:25', '2017-05-10 17:55:02', '2011-04-13 09:29:01', '2012-03-10 00:30:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 36, 3, '2020-03-27 15:10:53', '2012-09-19 05:19:45', '2011-12-05 08:14:29', '2018-01-11 09:57:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 37, 1, '2019-05-08 07:45:58', '2018-08-08 14:16:59', '2015-12-14 11:34:15', '2016-12-29 13:15:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 38, 2, '2017-11-02 13:23:42', '2020-05-09 09:07:57', '2020-03-25 15:10:05', '2015-09-30 08:44:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 39, 3, '2013-02-12 19:34:24', '2014-12-31 17:02:08', '2016-06-18 19:28:28', '2018-11-21 18:06:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 40, 1, '2014-01-28 23:23:43', '2019-02-01 04:01:02', '2018-08-22 13:10:09', '2013-12-11 08:40:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 41, 2, '2015-04-28 00:24:48', '2013-10-10 15:01:57', '2014-07-06 19:54:26', '2012-11-25 23:46:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 42, 3, '2014-02-01 09:08:24', '2017-06-12 14:53:22', '2011-03-27 22:57:47', '2015-05-06 02:37:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 43, 1, '2012-04-06 15:29:20', '2019-10-26 01:27:17', '2019-10-03 06:10:19', '2014-03-04 01:15:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 44, 2, '2019-08-28 22:08:27', '2016-09-05 06:18:40', '2013-08-18 00:45:38', '2011-06-09 00:24:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 45, 3, '2017-09-14 10:20:46', '2019-05-16 05:53:33', '2020-05-04 12:45:09', '2013-10-21 06:42:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 46, 1, '2018-10-17 21:37:45', '2015-11-15 22:08:13', '2012-04-22 05:20:18', '2012-05-19 15:03:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 47, 2, '2015-07-18 16:55:15', '2017-03-16 19:49:58', '2012-04-03 20:46:34', '2013-10-13 22:43:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 48, 3, '2015-01-18 09:45:21', '2013-01-06 22:29:11', '2013-11-10 12:00:08', '2013-12-09 12:53:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 49, 1, '2017-05-20 20:54:16', '2014-01-03 08:56:08', '2014-02-22 16:14:35', '2015-02-07 07:09:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 50, 2, '2012-02-20 22:28:01', '2016-11-24 13:28:42', '2014-04-29 18:10:22', '2012-01-02 06:16:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 51, 3, '2012-05-07 18:21:56', '2017-08-12 23:37:31', '2015-05-01 11:08:12', '2017-02-19 08:46:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 52, 1, '2019-11-20 06:08:34', '2019-04-10 22:03:35', '2011-03-12 15:44:27', '2011-09-17 19:45:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 53, 2, '2015-01-09 06:42:16', '2012-05-03 12:48:20', '2012-02-09 02:06:11', '2018-07-16 09:53:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 54, 3, '2013-09-14 12:00:59', '2011-04-20 07:55:44', '2012-05-25 06:20:15', '2014-05-13 00:27:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 55, 1, '2020-11-05 09:11:36', '2015-10-18 04:44:05', '2015-10-12 13:26:25', '2018-09-30 22:50:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 56, 2, '2013-03-27 12:56:58', '2020-06-26 05:49:37', '2011-12-17 06:38:58', '2019-09-16 09:15:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 57, 3, '2011-07-29 22:05:39', '2019-01-11 05:03:16', '2015-02-28 11:33:47', '2020-02-28 15:04:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 58, 1, '2019-03-11 02:09:00', '2019-09-05 21:03:46', '2018-04-14 12:38:59', '2019-08-16 05:15:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 59, 2, '2014-06-09 21:11:08', '2018-12-02 04:03:42', '2018-01-12 09:09:37', '2018-01-17 17:02:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 60, 3, '2013-02-28 09:03:19', '2013-03-06 17:14:18', '2013-05-29 13:14:42', '2012-10-21 09:20:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 61, 1, '2011-12-27 05:44:36', '2014-03-12 20:56:32', '2011-06-23 20:34:03', '2019-12-26 13:49:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 62, 2, '2013-06-06 05:07:16', '2017-07-14 10:18:04', '2019-07-03 03:09:44', '2014-01-10 07:45:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 63, 3, '2015-09-24 15:30:23', '2017-11-18 04:47:39', '2017-06-21 19:39:11', '2019-01-08 15:53:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 64, 1, '2015-11-12 12:54:12', '2021-01-28 12:00:52', '2013-08-21 07:09:09', '2019-02-24 09:42:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 65, 2, '2019-02-03 21:35:19', '2011-05-18 23:28:12', '2012-10-31 23:45:00', '2017-08-23 22:32:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 66, 3, '2014-12-28 04:35:56', '2011-11-19 21:01:18', '2011-11-13 04:24:45', '2011-08-27 00:20:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 67, 1, '2018-04-21 09:22:24', '2015-11-09 21:58:38', '2018-01-17 08:15:39', '2016-08-15 18:14:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 68, 2, '2019-01-30 19:00:07', '2019-02-25 03:49:20', '2019-04-24 00:32:10', '2015-01-08 12:29:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 69, 3, '2013-02-04 01:30:55', '2011-08-16 03:30:36', '2016-06-21 21:42:22', '2018-06-25 18:37:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 70, 1, '2014-07-15 23:52:47', '2011-11-20 15:58:05', '2015-06-27 08:32:58', '2012-06-05 17:44:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 71, 2, '2018-07-30 22:09:15', '2016-04-25 02:16:38', '2013-08-18 23:01:01', '2020-02-18 06:19:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 72, 3, '2018-07-13 08:25:14', '2020-10-10 16:56:23', '2016-07-02 06:53:07', '2017-05-02 18:02:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 73, 1, '2020-12-11 20:04:09', '2014-11-20 10:10:49', '2016-01-16 05:44:52', '2012-08-18 22:17:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 74, 2, '2011-12-13 02:03:17', '2016-05-18 08:08:30', '2016-04-11 21:29:05', '2013-10-31 17:49:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 75, 3, '2017-10-25 00:06:46', '2019-10-01 21:52:54', '2015-04-29 10:29:38', '2016-04-10 09:22:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 76, 1, '2013-12-10 14:48:11', '2017-01-08 03:31:05', '2018-09-21 10:00:39', '2017-01-19 18:50:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 77, 2, '2012-08-16 03:49:12', '2016-08-03 11:28:26', '2015-08-06 19:59:12', '2018-12-15 13:59:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 78, 3, '2011-06-16 20:14:51', '2021-02-07 04:51:06', '2016-12-27 20:32:58', '2016-08-23 17:26:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 79, 1, '2016-05-02 21:23:05', '2019-06-27 18:18:37', '2015-06-26 23:56:31', '2012-07-28 06:09:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 80, 2, '2013-11-03 23:32:24', '2020-02-15 18:29:06', '2015-05-17 03:00:21', '2018-04-27 00:21:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 81, 3, '2011-05-09 16:17:45', '2011-04-22 19:21:31', '2013-10-18 09:25:11', '2011-02-18 04:36:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 82, 1, '2014-09-22 01:46:22', '2016-01-18 11:43:57', '2013-06-09 22:31:08', '2016-12-24 05:38:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 83, 2, '2019-04-07 03:20:39', '2017-03-30 01:52:42', '2016-11-03 14:54:53', '2017-05-31 04:48:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 84, 3, '2012-10-23 04:30:24', '2012-02-24 08:21:50', '2014-09-05 15:00:31', '2013-05-10 18:33:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 85, 1, '2012-07-20 10:40:57', '2013-02-21 20:56:19', '2013-08-17 23:26:45', '2014-02-28 01:15:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 86, 2, '2015-12-22 15:47:41', '2018-09-01 23:57:48', '2020-02-21 05:04:07', '2020-03-09 03:55:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 87, 3, '2016-08-13 11:14:11', '2016-05-27 18:50:40', '2016-11-19 19:16:16', '2016-08-23 23:15:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 88, 1, '2017-09-10 18:33:37', '2019-04-17 03:40:45', '2011-07-11 09:16:39', '2015-11-18 15:22:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 89, 2, '2015-03-25 10:47:25', '2015-09-04 12:33:25', '2015-03-02 23:35:05', '2020-01-12 22:23:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 90, 3, '2011-03-31 20:15:51', '2011-12-14 04:39:46', '2016-06-23 23:07:43', '2011-08-17 11:57:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 91, 1, '2021-01-06 08:02:51', '2018-08-27 12:38:03', '2011-04-27 07:40:25', '2011-10-12 07:15:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 92, 2, '2018-12-15 02:10:07', '2013-10-08 04:30:44', '2015-06-29 16:16:36', '2016-02-29 10:57:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 93, 3, '2020-02-18 17:20:42', '2017-02-08 12:34:29', '2013-01-07 09:15:36', '2012-04-11 09:00:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 94, 1, '2017-03-08 11:58:45', '2015-10-17 02:59:37', '2020-01-07 06:10:10', '2016-10-24 06:50:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 95, 2, '2016-12-03 16:39:44', '2016-12-28 10:00:13', '2016-05-12 06:13:46', '2013-10-30 04:57:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 96, 3, '2020-02-08 23:48:08', '2012-10-01 20:56:30', '2018-05-05 08:42:03', '2011-07-12 10:35:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 97, 1, '2019-03-22 02:13:31', '2012-11-25 16:31:47', '2012-02-20 17:20:47', '2017-10-23 04:50:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 98, 2, '2015-11-30 17:16:24', '2014-10-13 04:28:43', '2018-01-06 16:15:45', '2014-06-14 12:14:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 99, 3, '2016-07-26 12:18:26', '2011-04-16 21:23:20', '2017-09-21 12:26:19', '2012-03-27 12:10:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 100, 1, '2011-10-24 16:37:40', '2012-04-24 10:34:44', '2016-03-09 05:14:17', '2015-08-01 06:58:09');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Friend', '2016-05-03 09:58:50', '2014-04-01 01:23:06');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Request sent', '2016-11-04 11:43:14', '2011-11-17 07:21:44');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Follow', '2013-10-19 16:53:13', '2020-02-29 16:09:25');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'est', 2907, NULL, 1, '2011-02-26 22:06:10', '2011-10-13 07:34:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 'consequatur', 5, NULL, 2, '2020-12-07 08:09:48', '2016-02-23 08:24:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 'quos', 27606299, NULL, 3, '2011-09-25 12:06:34', '2016-01-24 22:43:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, 'facilis', 3698, NULL, 1, '2017-03-21 18:48:57', '2016-02-01 19:03:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 'iusto', 142752, NULL, 2, '2011-12-15 17:59:30', '2017-01-15 18:47:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, 'animi', 483454, NULL, 3, '2015-12-20 17:38:26', '2018-10-14 01:17:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, 'reiciendis', 53342232, NULL, 1, '2016-12-06 21:53:26', '2019-11-16 10:49:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 'voluptas', 33004, NULL, 2, '2013-09-15 03:50:04', '2013-09-30 19:46:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 'optio', 3515, NULL, 3, '2013-07-31 14:15:38', '2016-12-27 18:00:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, 'consequuntur', 880003540, NULL, 1, '2015-03-25 08:15:00', '2018-09-12 20:25:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, 'fugit', 896524, NULL, 2, '2011-09-02 11:37:19', '2015-02-17 12:13:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, 'occaecati', 932431084, NULL, 3, '2015-03-13 09:41:32', '2020-11-18 07:33:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, 'deserunt', 62, NULL, 1, '2017-04-03 08:00:07', '2016-11-14 05:38:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, 'pariatur', 6245, NULL, 2, '2019-04-17 20:00:47', '2019-11-07 05:23:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, 'consequatur', 9960877, NULL, 3, '2018-09-15 05:54:53', '2014-04-10 16:58:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, 'illo', 7, NULL, 1, '2020-01-02 22:08:25', '2018-04-24 11:51:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, 'doloribus', 4277726, NULL, 2, '2015-12-14 11:47:57', '2018-08-10 00:02:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, 'nulla', 60919, NULL, 3, '2019-08-10 17:58:50', '2018-12-24 03:55:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, 'facere', 0, NULL, 1, '2019-01-09 14:28:51', '2014-03-09 17:05:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, 'reprehenderit', 89361, NULL, 2, '2020-03-20 04:25:56', '2019-01-17 22:43:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, 'aut', 0, NULL, 3, '2015-08-23 17:32:58', '2019-11-04 07:57:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'repellendus', 912, NULL, 1, '2015-03-29 00:50:51', '2017-06-11 08:42:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, 'quia', 591125, NULL, 2, '2016-07-24 21:13:26', '2019-01-12 14:10:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, 'est', 961025, NULL, 3, '2018-03-31 03:42:33', '2019-11-29 00:50:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, 'harum', 71577, NULL, 1, '2012-08-05 18:54:46', '2019-08-22 14:40:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, 'ducimus', 357, NULL, 2, '2014-12-04 02:39:24', '2017-03-07 20:26:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'in', 111748, NULL, 3, '2014-01-04 07:33:38', '2013-04-15 03:35:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, 'quam', 2699, NULL, 1, '2013-09-17 13:34:30', '2013-07-16 11:13:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, 'aut', 795, NULL, 2, '2018-02-18 12:01:13', '2011-03-19 06:06:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, 'ea', 8929, NULL, 3, '2011-03-11 11:47:20', '2016-04-19 21:34:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, 'dolor', 45981, NULL, 1, '2019-09-26 18:39:21', '2015-05-31 19:36:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, 'aliquam', 71667, NULL, 2, '2019-08-10 22:35:10', '2014-04-09 15:01:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, 'fuga', 103490, NULL, 3, '2013-03-31 18:11:11', '2013-10-24 18:56:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'aut', 106669, NULL, 1, '2017-11-28 20:15:33', '2019-06-18 11:58:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, 'quia', 9, NULL, 2, '2014-08-30 07:48:50', '2019-01-02 18:52:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, 'iusto', 19, NULL, 3, '2011-07-31 04:57:13', '2013-03-27 19:27:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, 'et', 367, NULL, 1, '2015-03-14 23:14:53', '2020-09-15 04:43:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, 'dolorum', 0, NULL, 2, '2013-12-27 18:31:02', '2020-08-11 01:31:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, 'modi', 0, NULL, 3, '2011-12-05 23:38:34', '2012-04-20 21:38:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, 'et', 449202, NULL, 1, '2011-09-05 08:00:55', '2016-08-27 06:04:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, 'doloribus', 219455, NULL, 2, '2015-03-14 19:48:53', '2018-08-19 05:01:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, 'molestiae', 752166312, NULL, 3, '2014-07-30 07:36:54', '2013-03-18 05:08:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, 'vel', 3, NULL, 1, '2020-04-18 19:18:17', '2014-09-16 00:19:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, 'ea', 3743022, NULL, 2, '2014-05-30 20:20:45', '2013-09-15 18:39:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, 'excepturi', 8, NULL, 3, '2012-03-02 18:53:48', '2020-10-13 14:18:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, 'assumenda', 0, NULL, 1, '2015-07-30 16:44:12', '2019-01-21 22:54:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, 'veritatis', 844107, NULL, 2, '2013-03-06 03:51:30', '2019-05-05 19:30:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, 'aliquid', 2, NULL, 3, '2013-03-28 05:35:42', '2011-10-11 02:21:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'sequi', 5, NULL, 1, '2013-06-02 07:10:13', '2016-09-17 03:59:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, 'pariatur', 6941, NULL, 2, '2020-12-23 22:19:46', '2016-02-10 19:49:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 51, 'tempore', 4, NULL, 3, '2019-11-21 06:40:45', '2016-04-15 17:26:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 52, 'fugit', 0, NULL, 1, '2017-06-21 07:34:58', '2015-07-25 01:20:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 53, 'accusantium', 704108, NULL, 2, '2018-01-22 06:23:18', '2015-12-19 04:20:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 54, 'nesciunt', 33, NULL, 3, '2018-10-01 07:33:10', '2012-07-02 09:24:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 55, 'iure', 361465, NULL, 1, '2012-08-31 19:17:35', '2015-08-09 07:44:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 56, 'non', 472722, NULL, 2, '2018-04-13 12:38:39', '2013-01-22 21:04:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 57, 'quam', 0, NULL, 3, '2012-11-20 06:44:57', '2018-08-20 00:00:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 58, 'omnis', 3857647, NULL, 1, '2019-01-02 08:01:26', '2021-02-04 23:50:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 59, 'in', 6, NULL, 2, '2011-08-21 07:27:35', '2014-06-04 22:09:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 60, 'itaque', 863611025, NULL, 3, '2012-08-25 10:57:37', '2018-08-22 07:31:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 61, 'magni', 3, NULL, 1, '2017-11-06 13:42:26', '2018-11-15 10:38:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 62, 'molestiae', 281627958, NULL, 2, '2019-12-01 01:57:36', '2014-11-11 16:07:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 63, 'natus', 342, NULL, 3, '2019-01-20 15:54:49', '2011-08-14 02:19:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 64, 'ipsum', 96788418, NULL, 1, '2019-06-18 08:52:14', '2016-10-20 03:33:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 65, 'aut', 37270208, NULL, 2, '2012-05-01 02:31:56', '2018-07-24 23:46:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 66, 'quia', 62, NULL, 3, '2013-03-27 22:46:57', '2013-12-24 00:49:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 67, 'qui', 71, NULL, 1, '2020-03-19 05:32:23', '2012-12-12 15:53:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 68, 'mollitia', 88, NULL, 2, '2013-04-01 12:16:38', '2015-05-04 00:06:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 69, 'voluptates', 6, NULL, 3, '2012-01-29 17:10:55', '2019-05-15 08:40:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 70, 'mollitia', 104780751, NULL, 1, '2019-01-21 09:28:49', '2012-02-10 07:29:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 71, 'iure', 5933441, NULL, 2, '2017-09-24 04:26:40', '2021-01-19 16:39:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 72, 'non', 6, NULL, 3, '2020-11-25 05:13:44', '2012-02-29 09:28:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 73, 'ullam', 9364, NULL, 1, '2016-10-14 17:33:16', '2020-11-15 17:36:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 74, 'eum', 1726763, NULL, 2, '2017-06-24 18:06:44', '2013-06-20 12:29:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 75, 'hic', 279, NULL, 3, '2017-11-19 21:36:40', '2012-05-04 05:57:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 76, 'a', 650, NULL, 1, '2011-05-02 21:25:28', '2018-02-23 07:48:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 77, 'enim', 3, NULL, 2, '2014-10-26 20:15:30', '2014-03-09 23:02:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 78, 'totam', 2, NULL, 3, '2017-02-16 01:37:53', '2019-06-13 01:20:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 79, 'quidem', 12, NULL, 1, '2018-02-05 20:22:34', '2017-06-28 02:20:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 80, 'sed', 718, NULL, 2, '2012-01-16 07:10:15', '2011-02-27 14:34:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 81, 'tempora', 581012, NULL, 3, '2020-03-18 18:58:57', '2015-04-21 15:17:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 82, 'rem', 7595, NULL, 1, '2015-05-30 06:27:00', '2016-04-23 12:35:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 83, 'laboriosam', 8454849, NULL, 2, '2020-06-12 05:26:20', '2014-09-25 01:06:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 84, 'ut', 0, NULL, 3, '2020-12-03 13:06:02', '2013-11-22 23:27:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 85, 'nemo', 480767, NULL, 1, '2011-06-12 00:41:42', '2013-07-24 06:27:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 86, 'voluptatem', 209, NULL, 2, '2015-02-05 11:42:46', '2015-07-27 05:20:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 87, 'eos', 65840, NULL, 3, '2020-11-24 02:05:36', '2016-12-23 22:03:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 88, 'hic', 965841, NULL, 1, '2020-09-24 16:53:18', '2012-04-28 01:54:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 89, 'corrupti', 65, NULL, 2, '2014-09-10 11:46:05', '2020-05-04 14:58:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 90, 'voluptates', 93469, NULL, 3, '2018-01-08 14:31:15', '2013-12-13 01:26:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 91, 'rem', 3, NULL, 1, '2014-08-21 23:07:47', '2013-11-26 09:23:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 92, 'et', 870817, NULL, 2, '2011-02-28 07:00:05', '2014-10-18 17:51:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 93, 'molestias', 0, NULL, 3, '2019-02-17 23:52:45', '2018-09-26 16:49:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 94, 'ducimus', 211049, NULL, 1, '2015-01-12 22:58:43', '2016-04-24 18:32:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 95, 'dignissimos', 0, NULL, 2, '2017-11-01 02:03:13', '2019-07-01 06:48:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 96, 'quibusdam', 286902, NULL, 3, '2011-08-13 23:09:30', '2013-09-19 11:11:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 97, 'facilis', 29666644, NULL, 1, '2013-11-21 01:46:13', '2013-07-08 17:23:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 98, 'dolores', 5800118, NULL, 2, '2017-06-04 23:20:32', '2019-01-26 15:59:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 99, 'laudantium', 0, NULL, 3, '2013-10-02 18:54:08', '2017-09-28 22:33:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 100, 'et', 7041593, NULL, 1, '2017-12-26 19:05:25', '2019-09-29 00:46:03');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Picture', '2012-12-28 21:13:08', '2014-11-16 23:24:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Video', '2016-11-14 08:09:39', '2017-05-26 00:05:33');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Audio', '2015-06-24 01:21:13', '2015-08-26 00:16:26');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 1, 1, 'Magni dolorem voluptatem cumque reprehenderit. Laudantium expedita pariatur voluptatem aut aliquid dolorem omnis ducimus.', 1, 0, '2020-05-19 05:11:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 2, 2, 'Praesentium quisquam doloremque et quisquam officia ea. Aut iure delectus est ex porro ratione. In ut est et accusantium tempore voluptas quis vero.', 1, 0, '2016-08-31 03:48:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 3, 3, 'Sint sed quidem dolor. Et et et qui porro cumque sunt ipsam. Corrupti non perferendis ab nisi asperiores sint dolorem. Quis et et eum quae.', 0, 1, '2011-06-28 04:44:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 4, 4, 'Rerum est quia velit ducimus asperiores earum. Quia quo possimus qui saepe. Natus ipsum quod et. Autem iure occaecati occaecati eos ut qui.', 0, 1, '2017-09-28 14:55:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 5, 5, 'Maxime voluptatibus quas qui. Modi ut beatae sint. Saepe in officiis non temporibus soluta eligendi dicta. Sunt iure est modi est.', 1, 0, '2017-12-26 09:37:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 6, 6, 'Sit et doloremque autem accusantium nulla rerum soluta. Itaque qui doloribus mollitia adipisci molestiae delectus voluptas distinctio. Qui eaque aut aliquid ipsam eius omnis a architecto. Tempore vel necessitatibus reprehenderit quas et ad voluptas.', 1, 1, '2018-04-26 16:39:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 7, 7, 'Molestias inventore dolor ducimus necessitatibus et et omnis. Officia sit vel assumenda provident. Repellendus molestias laboriosam alias cum voluptas consequatur. Voluptatem explicabo iusto dolorem. Quae magni enim odit quis delectus ducimus.', 1, 0, '2012-09-20 18:53:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 8, 8, 'Sed tenetur recusandae et expedita est animi eos. Aliquam facere facilis assumenda quae. Dolores ipsa mollitia non nostrum minus.', 1, 1, '2011-06-14 16:40:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 9, 9, 'Animi facere et voluptates accusamus praesentium explicabo sequi. Omnis similique iure voluptas qui minima. Facere est ad dolores. Natus maiores consectetur consectetur dolor ex voluptatem aut.', 1, 0, '2018-07-10 04:21:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 10, 10, 'At voluptatibus eos aliquid accusamus quibusdam quos. Voluptatem hic rerum nulla. Nihil quo et qui corporis. Ab beatae veniam amet voluptate.', 0, 0, '2016-04-03 16:26:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 11, 11, 'Sit saepe qui aperiam aliquid non vel. Et aut culpa praesentium corrupti ipsa. Aliquid omnis optio laborum et aut laudantium iste.', 0, 0, '2012-06-02 08:21:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 12, 12, 'Velit voluptas provident voluptatem odit illum voluptas. Corrupti laboriosam non aliquam blanditiis dolor inventore quae. Sint consequatur voluptatem sed perferendis similique rem omnis.', 1, 1, '2013-06-13 23:34:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 13, 13, 'Aut quos officia assumenda error eveniet. Sint sunt distinctio dicta quis aperiam qui id officia.', 0, 1, '2017-11-06 22:08:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 14, 14, 'Provident est tempore aut excepturi ut consequatur quis amet. Adipisci consequatur repellendus autem maiores. Labore voluptates sunt amet perspiciatis nulla sapiente. Deserunt quaerat illum placeat et.', 1, 1, '2018-11-18 14:48:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 15, 15, 'Aut sequi qui nulla adipisci delectus. Modi sunt tempora fuga magni saepe exercitationem. Ex dolor et repudiandae consequuntur. Et totam tempora sed aut. Autem assumenda voluptate architecto magni similique pariatur.', 1, 0, '2011-08-20 20:20:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 16, 16, 'Vitae reprehenderit libero sunt nesciunt minus minus. Et eos aperiam aliquam fugit exercitationem corporis. Consectetur pariatur corporis ut sed nesciunt.', 0, 1, '2019-01-18 00:02:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 17, 17, 'Ad quaerat fuga sed. Reprehenderit minus et non. Dignissimos illo accusantium necessitatibus et et vitae quo. Facilis iure saepe et aperiam illo at.', 0, 1, '2018-02-02 01:50:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 18, 18, 'Laborum voluptatem ipsa aut repellendus. Tenetur voluptas aliquam enim voluptatem et delectus. Iure eius recusandae omnis facere ipsam praesentium. Corporis sequi beatae ullam quo nulla cupiditate.', 1, 0, '2017-09-30 06:00:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 19, 19, 'Facilis tempore blanditiis unde cupiditate culpa. Doloremque enim sequi debitis ab aliquid illum amet. Eius sed fugit officiis vel ea. Dolores itaque ut alias quaerat sit.', 1, 0, '2020-09-11 22:15:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 20, 20, 'Reprehenderit molestiae occaecati et aut. Est ut repellat quo quod dicta rem. Ad cupiditate reiciendis repellat vero fugit eum.', 0, 1, '2016-08-18 13:13:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 21, 21, 'Provident quaerat rerum facilis incidunt quisquam iusto. Dolore officia architecto laudantium velit commodi qui id. Excepturi fugit maxime cupiditate dolore.', 0, 1, '2019-02-07 17:23:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 22, 22, 'Assumenda et eaque exercitationem voluptas assumenda fuga. Enim natus odit possimus nam dicta magnam occaecati. Ab nihil nisi aspernatur ea minus laborum adipisci non. Iure accusamus qui voluptas ullam odio aliquid eveniet.', 1, 1, '2015-03-31 15:59:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 23, 23, 'Esse consequatur quod ipsum velit mollitia id. Et doloremque in minus soluta odio ullam occaecati. Quo aut asperiores ut quasi.', 1, 1, '2016-06-17 08:13:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 24, 24, 'Ea cupiditate voluptas sint amet non ut. Eum quos et error. Debitis molestias non dignissimos quae consequatur. Beatae aut eius molestiae inventore corrupti quos.', 0, 1, '2011-04-17 09:54:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 25, 25, 'Incidunt rerum perspiciatis deserunt quia necessitatibus. Ut ratione dignissimos eum sit. Aut cupiditate eius facilis sint eaque. Consequuntur dolor molestias adipisci. Quia facilis repudiandae illo aliquid architecto sapiente voluptatem ea.', 1, 0, '2020-07-26 08:27:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 26, 26, 'Nihil qui voluptatem ullam odit et. Hic totam qui quod veniam quasi officiis quidem. Ut expedita sunt excepturi ipsam. Reprehenderit dolores autem id.', 0, 0, '2016-02-26 05:24:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 27, 27, 'Sed quis et molestias. Quia laborum molestiae consectetur nulla harum quia. Quam consectetur accusamus sed aperiam et ratione qui eligendi. Sed blanditiis quidem quo architecto vero laudantium.', 1, 0, '2018-02-07 13:04:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 28, 28, 'Quo facere repellat debitis qui. Quod dignissimos et eligendi aut. Velit aliquid doloribus animi laborum.', 0, 0, '2013-06-29 05:20:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 29, 29, 'Explicabo et earum eum corrupti necessitatibus ut et. Similique autem voluptatibus debitis earum architecto omnis et. Repudiandae doloremque est voluptatem et blanditiis voluptate nam.', 0, 0, '2015-11-20 21:53:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 30, 30, 'Vitae id delectus blanditiis in. Nobis et atque ea et voluptatibus molestiae. Autem omnis sed dolores sed ab.', 0, 0, '2013-09-08 18:04:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 31, 31, 'Molestiae eum magnam praesentium vero voluptatibus. Quia quia neque vero eos. Nobis cumque pariatur perferendis facere deleniti.', 0, 0, '2020-07-31 20:42:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 32, 32, 'Quis minus quia sunt. Est eaque voluptate deleniti eum deleniti atque harum. Sit qui dolore tempora id aperiam.', 0, 0, '2012-02-06 17:09:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 33, 33, 'Unde molestiae qui neque libero neque. Nulla architecto ad excepturi sunt est quis. Animi eius dolor sed in.', 1, 0, '2014-07-21 16:35:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 34, 34, 'Et tempore delectus quam perferendis fuga. Illum ullam dolor autem possimus voluptas in aut maiores. Unde adipisci est consequuntur. Assumenda qui consequatur eaque consectetur delectus labore nihil.', 0, 1, '2017-01-14 03:11:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 35, 35, 'Debitis sapiente enim ea at excepturi. Nam aut praesentium inventore repudiandae aperiam. Consequatur omnis eum mollitia et nihil quo.', 1, 0, '2011-06-02 01:39:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 36, 36, 'Repellat quisquam similique qui aperiam facere est. Nihil deserunt maiores et pariatur consequuntur et quam. Quia odit est corrupti voluptatem quidem.', 0, 0, '2013-12-11 18:11:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 37, 37, 'Natus iste corrupti facilis exercitationem rem. Dolores dolorem non minima nobis et incidunt voluptatem. Quia veritatis ut dolorem culpa ullam impedit sed qui. Adipisci sit distinctio deserunt sint perspiciatis.', 1, 0, '2014-01-30 14:57:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 38, 38, 'Ipsa impedit deserunt et nihil aut culpa. Rerum expedita consequatur rerum officiis et tempore at. Doloribus rerum quisquam in fuga.', 1, 1, '2019-07-24 05:43:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 39, 39, 'Accusamus nostrum perspiciatis iure quasi similique saepe excepturi. Corrupti veritatis vitae eos. Aut voluptates quia sequi molestiae impedit qui consequatur laudantium. Error amet mollitia dicta ea facilis.', 0, 0, '2014-01-12 14:41:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 40, 40, 'Repellat voluptatum et corrupti omnis ipsa tempora repellat molestiae. Illum vel velit dicta inventore eos beatae.', 1, 0, '2018-05-08 01:06:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 41, 41, 'Aut non illum architecto minima non. Quia et libero repellendus repellendus. Rem hic sint unde consequuntur vel. Qui facere similique ab autem odio est.', 0, 1, '2012-01-18 10:52:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 42, 42, 'Reiciendis veniam consequatur labore dolorem enim. Hic numquam commodi et blanditiis deserunt quia quo aliquam. Alias nobis illo dicta laborum et.', 1, 1, '2019-07-11 12:07:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 43, 43, 'Dolores laudantium commodi labore. Est nihil quasi eius dolorum. Facilis neque quos aperiam. Alias aliquam eveniet ut dolore eos quo.', 1, 1, '2011-03-12 11:11:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 44, 44, 'Ducimus cupiditate culpa cupiditate ut dolor ex. Quos ea sed consequuntur mollitia sequi iure unde. Deserunt est qui sed et labore. Sed modi ducimus dicta voluptas aut ea.', 0, 0, '2019-07-19 21:26:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 45, 45, 'Vero deleniti aliquam aut. Et temporibus nostrum consequatur voluptatem voluptatibus quo. Enim enim totam iusto doloremque asperiores nobis quod.', 1, 0, '2013-12-26 05:42:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 46, 46, 'Qui doloremque quia quidem nobis voluptas odio dicta cupiditate. Eveniet quae ut nostrum laudantium. Consequatur architecto veritatis natus nemo possimus repudiandae voluptas.', 0, 1, '2017-06-09 06:46:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 47, 47, 'Accusamus ipsum fugiat possimus modi. Libero minus quibusdam deserunt et dolorem est. Quibusdam sit sunt qui. Error magnam aut excepturi sunt nihil voluptatibus vel.', 1, 1, '2015-07-22 01:19:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 48, 48, 'Perspiciatis aliquid architecto iste. Aut odit ab illum laborum eveniet quam ipsam. Sint et repudiandae officiis sunt sit odit ullam. Dolor qui est suscipit doloremque.', 1, 0, '2019-02-01 11:45:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 49, 49, 'Sit consequatur earum maiores ipsum adipisci velit tempora. Unde consectetur inventore asperiores architecto dolores corrupti facere harum.', 1, 0, '2020-05-14 02:28:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 50, 50, 'Fuga officiis autem deserunt enim illum eum. Voluptate facilis ab est eius aspernatur labore. Officiis totam voluptate facilis tempore molestias dicta.', 0, 0, '2020-02-08 15:03:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 51, 51, 'Aspernatur eligendi modi magnam voluptatum non voluptatem et. Amet eligendi ut impedit et officiis. Velit laboriosam quod ipsum accusantium atque et aut. Dolorum facere laudantium ut.', 0, 1, '2015-11-03 20:59:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 52, 52, 'Voluptatibus non veniam beatae recusandae voluptas qui. Rerum dolore neque et deserunt modi.', 1, 1, '2017-05-12 07:43:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 53, 53, 'Vitae velit vel consequatur quia. Vel vel et dolorem nihil nulla similique nihil impedit. Molestiae minima accusantium dignissimos libero.', 0, 0, '2016-10-30 07:35:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 54, 54, 'Optio eius itaque sequi et aut nihil earum quae. Qui ratione perspiciatis voluptatem voluptas nesciunt possimus. Esse enim optio alias. Blanditiis nostrum dignissimos quaerat ipsum voluptatem.', 0, 0, '2020-06-23 11:12:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 55, 55, 'Illo sed cupiditate quia quis vel. Ea aut sit quia vero quisquam. Rerum ducimus est minima placeat quod aut rerum.', 1, 1, '2017-03-26 10:27:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 56, 56, 'Qui et iure reprehenderit reprehenderit. Quo incidunt eum quidem hic quos sint. Adipisci dolore modi fuga architecto. Ut nemo et quasi qui at ratione officia.', 1, 0, '2012-02-02 06:29:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 57, 57, 'Ea incidunt in accusamus repellendus impedit id. Qui occaecati architecto eos odio quam tempore. Rerum fugit soluta voluptatum veniam.', 0, 0, '2016-01-22 12:55:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 58, 58, 'Sit adipisci dicta corrupti quidem suscipit. Iste esse dolores cumque in molestiae. Corporis commodi perspiciatis excepturi eligendi repellendus quibusdam sed aut. Recusandae ipsam fuga sed assumenda quia magnam est.', 1, 0, '2012-10-26 18:52:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 59, 59, 'Corporis ad eaque cupiditate quia nostrum. Corporis quis ea necessitatibus iste eos.', 0, 0, '2018-07-02 00:19:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 60, 60, 'Et libero consequuntur a commodi dolor quia. Dignissimos soluta maxime et et cum aliquid animi. Quam assumenda reiciendis cupiditate quisquam eum voluptas totam.', 0, 0, '2017-11-14 00:45:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 61, 61, 'Ad iste sit esse fuga iusto. Ipsam ea quia molestiae ut omnis. Quasi labore non sint ut corrupti est est illum.', 0, 1, '2017-11-19 05:39:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 62, 62, 'Esse voluptatem hic aut qui libero quod rerum. Reprehenderit ipsam doloremque minima dolor voluptatum aut tempora occaecati. Ut mollitia ab laudantium et.', 0, 0, '2015-11-13 21:37:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 63, 63, 'Iure aut maxime aut. Hic aut laudantium dolores ut porro expedita officia. Assumenda iusto quia veniam soluta.', 1, 0, '2012-08-06 04:02:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 64, 64, 'Iure nihil ratione voluptas alias voluptas. Quis similique animi repudiandae omnis quas. Pariatur et officia adipisci ut et omnis. Consequatur error eos culpa dolorem quia. Molestias sunt ipsam at ad reprehenderit at quas odit.', 0, 0, '2014-03-29 13:14:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 65, 65, 'Dolorem voluptatum ut et sed. Dolorum dolores ut possimus asperiores autem occaecati. Quasi nihil maiores voluptatem eum vitae ea itaque.', 0, 0, '2012-06-04 07:06:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 66, 66, 'Numquam nostrum culpa ut totam rerum non quis. Magni officia possimus a quia nobis repudiandae. Sapiente et ad excepturi enim unde ea rerum. Sed culpa dicta quibusdam et non omnis. Suscipit est reiciendis maiores nihil aut provident.', 0, 1, '2018-07-12 19:34:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 67, 67, 'Eum quas cumque iure velit tempore atque odit. Mollitia aut minima dolores. A fugiat velit voluptatum labore. Nulla sed velit voluptatem laborum rerum minima autem.', 0, 0, '2020-09-02 01:22:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 68, 68, 'Ut sunt sunt eum voluptatem ea pariatur. Ad qui in placeat quo autem sit voluptas. Ut nisi magni id non qui quisquam ex praesentium.', 0, 0, '2012-12-12 13:33:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 69, 69, 'Minima et praesentium iste id. Nostrum dicta quibusdam omnis nemo autem voluptatem. Ut ut amet minima voluptatibus aut culpa molestias.', 0, 1, '2014-11-17 09:10:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 70, 70, 'Sit corporis architecto non distinctio rem tempore. Quidem quis fuga ipsa tempora fugiat vero non et. Quos rem sed iusto cumque sed.', 1, 0, '2020-05-13 15:42:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 71, 71, 'Voluptatem quia laudantium vel veritatis nobis. Aut corporis harum libero quam ipsa est.', 0, 1, '2017-04-06 16:20:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 72, 72, 'Est magnam numquam voluptas ut tenetur numquam impedit molestiae. Quaerat culpa ut alias iure. Asperiores voluptatem voluptatum beatae dolor.', 0, 0, '2012-03-12 05:20:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 73, 73, 'Aut nostrum sed ex modi. Cupiditate odit perspiciatis voluptas aut sequi reprehenderit. Sit vel molestias ipsam eius minima.', 1, 1, '2016-09-22 07:10:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 74, 74, 'Saepe dolorum natus vero facere suscipit qui enim voluptate. Et doloribus incidunt quasi provident. Quis illo ex provident dolorem adipisci recusandae. Consequatur odit vero at voluptas vero rerum voluptatem est.', 0, 1, '2012-12-31 15:58:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 75, 75, 'Ducimus laudantium veniam sit dicta. Numquam tenetur laudantium molestias recusandae suscipit. Molestias debitis aliquid tenetur et quod voluptates. Iusto velit iure at.', 0, 0, '2013-01-11 16:58:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 76, 76, 'Fugiat delectus corrupti in ex omnis nulla. Velit vero eius ex explicabo autem soluta. Molestiae et repellat et consequatur.', 0, 1, '2011-07-29 05:27:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 77, 77, 'Ut sunt molestias et et sed ut nihil quia. Tenetur voluptatem ad adipisci nemo. Esse qui neque dolor vitae recusandae et ea voluptatum. Inventore facilis iste dolorum alias. Eveniet ipsam aut sed quibusdam similique.', 0, 1, '2015-05-10 15:16:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 78, 78, 'Incidunt ipsum minus quia corrupti earum vero qui. Minus quae corrupti magni saepe iste qui nam sunt. Rerum quos quisquam aut et ab consequuntur et. Excepturi nesciunt qui accusamus voluptatibus commodi. Est minima quis quia optio.', 1, 0, '2013-10-05 07:28:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 79, 79, 'Est saepe consequatur qui magnam incidunt dignissimos. Ut quis et harum consequatur id quam. Debitis qui vero eius velit.', 1, 1, '2019-06-26 12:54:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 80, 80, 'Sed est a rem reiciendis atque minus a eligendi. Error id voluptatibus sit nisi in et ex. Magnam mollitia id aut dolorem. Quia nostrum aliquam voluptas vitae veniam qui.', 0, 1, '2020-04-13 21:38:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 81, 81, 'Non id facilis illo et dolorum labore temporibus reprehenderit. Qui sit qui distinctio et est impedit corporis. Recusandae sit voluptatem enim iste autem. Et inventore doloribus occaecati suscipit iure incidunt enim.', 0, 1, '2013-03-03 01:37:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 82, 82, 'Perferendis adipisci et ut neque. Qui quam dignissimos omnis consequatur odit magni. Et aut fugiat rerum ratione dolore temporibus.', 1, 1, '2011-09-13 10:21:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 83, 83, 'Sunt alias excepturi aut sunt. Impedit ratione doloribus et ad sunt sunt nam. Qui rerum perspiciatis id dignissimos sed fugiat doloremque.', 1, 0, '2012-03-25 00:26:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 84, 84, 'Aut fugiat qui velit veritatis totam. Eligendi in praesentium deleniti soluta. Nobis cum vel consequatur velit consequatur occaecati. Quis aut unde suscipit maxime aut aliquam.', 0, 1, '2012-09-08 12:28:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 85, 85, 'Accusamus tempora ipsa cum neque est repellat quos. Minus quos cupiditate occaecati. Laborum vel doloribus tempora qui. Esse asperiores modi natus est dolores sunt.', 0, 1, '2011-11-01 19:36:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 86, 86, 'Quos illo iste qui ut ducimus et. Asperiores architecto vitae harum consectetur. Inventore nihil qui nostrum doloremque sit laboriosam impedit. Vero vero nesciunt ut qui.', 1, 0, '2017-02-01 14:50:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 87, 87, 'Ipsum molestiae vitae illum veritatis. Voluptatem recusandae ipsa qui non atque aut. Quidem debitis ut voluptates incidunt quia.', 1, 1, '2013-03-10 09:34:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 88, 88, 'Ad veritatis quos ut tempore. Nobis voluptatem dolorum qui sed rerum ullam. Aut et occaecati tenetur sed tempora ipsa placeat.', 0, 1, '2016-03-07 08:33:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 89, 89, 'Doloribus aut perferendis eum aut suscipit nostrum. Asperiores similique quis voluptatem architecto sint eaque ipsum. Unde alias dolor omnis suscipit. Qui sed magnam placeat ipsum. Nulla dolorem quod voluptas eius totam est corporis est.', 1, 0, '2017-03-12 11:08:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 90, 90, 'Non possimus hic aperiam molestias labore incidunt et fugit. Fugiat voluptas et quas quia animi eligendi. Nostrum enim unde autem qui repellendus. Est dolorum tempora sit quis fugit ullam vel.', 0, 1, '2019-08-18 14:15:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 91, 91, 'Repellendus ut et qui sapiente. In minus et dolores aliquid veritatis. Esse ut est aliquid. Ut velit consequuntur magni porro labore.', 1, 1, '2019-05-19 12:33:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 92, 92, 'Nam inventore pariatur nesciunt ut quas qui corporis quod. Iusto autem nihil voluptas qui cum aut rerum. Nihil quae tenetur reiciendis sed voluptatum. Similique id earum veniam praesentium rerum nobis.', 1, 1, '2015-06-14 16:04:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 93, 93, 'Excepturi accusamus quidem et itaque. Omnis in consequatur quia deserunt magnam. Accusamus consequatur iure a et quia rerum quis libero.', 0, 1, '2020-12-20 23:56:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 94, 94, 'Laboriosam eius tenetur et. Labore magnam consequatur ullam reprehenderit enim. Molestiae exercitationem et cupiditate. Omnis aut magni provident pariatur et recusandae.', 0, 1, '2013-06-19 04:03:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 95, 95, 'Quidem et molestiae numquam ea. Ea aut laboriosam sunt repellendus repudiandae. Ut sed beatae quidem qui. Voluptatem voluptas sint quos illo nobis dignissimos veniam. Enim beatae aut dicta.', 1, 0, '2011-03-19 16:29:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 96, 96, 'Eos perspiciatis quaerat sint molestias quo libero. Vel possimus et et et sapiente et quia quae. Tempore qui sed commodi.', 1, 0, '2019-11-20 16:39:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 97, 97, 'Magni quidem adipisci occaecati repellendus id adipisci. Ratione voluptates blanditiis necessitatibus facilis eaque sunt nesciunt minus. Et a est eos est omnis. Magni et velit esse ipsum iure.', 0, 0, '2012-07-29 02:24:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 98, 98, 'Qui ducimus consequatur est ullam. Cumque ea quam ut cumque ut rerum molestias. Explicabo dolor ex dolor ipsam libero qui id.', 1, 1, '2011-10-04 03:23:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 99, 99, 'Eveniet facilis aliquid qui consequuntur. Minus aliquid officiis optio qui et et velit. Blanditiis molestiae maxime quia omnis rem. Ipsum veniam asperiores ut optio.', 1, 1, '2020-06-23 03:37:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 100, 100, 'Accusamus aut fugiat a unde vero voluptatem at. Qui nulla blanditiis animi facilis illo iste.', 0, 0, '2012-12-09 15:47:01');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'm', '2020-07-03', 'Lake Mireille', 'Norway', '2019-04-12 00:12:56', '2016-07-31 15:52:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'm', '2014-10-07', 'Parkermouth', 'Nauru', '2014-10-11 19:58:28', '2020-01-23 15:32:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'f', '2014-07-06', 'Ankundingport', 'Vietnam', '2015-09-13 21:04:34', '2020-11-29 09:54:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'f', '2020-10-16', 'East Tremaineland', 'Yemen', '2020-06-17 17:15:14', '2013-06-22 02:11:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'm', '2013-02-11', 'Port Landenfort', 'Qatar', '2018-11-08 21:34:53', '2016-10-06 15:00:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'm', '2015-10-11', 'Mikeshire', 'Uganda', '2019-07-11 08:47:08', '2014-05-21 15:21:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'f', '2019-04-30', 'Dorotheaview', 'Guatemala', '2019-10-17 04:38:42', '2020-05-27 20:47:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'f', '2017-07-14', 'North Vidal', 'Turkey', '2011-03-28 22:36:22', '2017-02-17 11:36:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'm', '2017-04-19', 'New Lilyanbury', 'Macedonia', '2017-03-26 22:42:16', '2012-05-03 22:59:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'f', '2016-08-04', 'North Zoeville', 'Cape Verde', '2013-03-08 08:57:20', '2017-01-20 06:05:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'f', '2019-03-08', 'Leopoldotown', 'Tunisia', '2012-09-30 15:17:26', '2011-07-04 17:39:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'f', '2011-07-15', 'Port Solon', 'Cyprus', '2018-03-10 04:18:51', '2019-09-13 11:53:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'f', '2017-08-01', 'Port Pietrofurt', 'Reunion', '2015-06-08 12:05:52', '2017-08-12 20:57:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'm', '2013-02-21', 'Runolfsdottirfort', 'Sweden', '2018-12-08 00:46:05', '2015-07-20 23:24:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'f', '2017-07-21', 'West Luella', 'Solomon Islands', '2014-02-01 14:41:58', '2014-11-28 16:17:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'f', '2014-07-03', 'New Mireya', 'Norfolk Island', '2013-01-11 20:21:45', '2013-09-22 11:36:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'f', '2019-12-11', 'Stehrfurt', 'Turks and Caicos Islands', '2011-09-11 01:18:12', '2020-10-31 03:47:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'm', '2019-06-08', 'Lake Lyda', 'Pakistan', '2020-11-25 22:50:56', '2015-02-08 05:06:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'f', '2014-06-05', 'West Reynaport', 'Turkey', '2013-07-16 00:37:09', '2015-01-04 21:58:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'f', '2017-12-20', 'Wildermanland', 'New Caledonia', '2013-11-27 07:04:04', '2016-09-12 18:27:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'f', '2018-11-05', 'Simonisbury', 'Taiwan', '2020-04-19 14:42:46', '2015-06-11 16:52:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'f', '2012-02-22', 'Maggiebury', 'United States Minor Outlying Islands', '2019-08-09 04:37:00', '2017-09-02 17:24:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'm', '2011-12-18', 'South Caitlyn', 'Belize', '2014-05-31 07:53:51', '2011-10-21 01:44:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'f', '2014-10-07', 'Avischester', 'Palau', '2016-11-07 07:34:48', '2019-06-05 02:28:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'f', '2021-02-08', 'South Abel', 'Germany', '2019-11-15 06:06:40', '2020-03-26 19:33:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'f', '2020-09-13', 'North Tess', 'Djibouti', '2014-06-22 20:34:59', '2014-03-06 02:02:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'f', '2013-02-03', 'Lake Issac', 'Sao Tome and Principe', '2014-09-05 15:09:51', '2012-08-29 15:11:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'm', '2018-05-26', 'Bogisichburgh', 'French Southern Territories', '2017-02-27 23:14:45', '2016-12-06 12:31:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'f', '2011-12-12', 'Rippinburgh', 'Cocos (Keeling) Islands', '2014-05-16 15:15:10', '2016-08-26 16:27:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'f', '2019-02-08', 'Port Miguel', 'Cote d\'Ivoire', '2011-05-30 10:23:54', '2011-04-06 17:31:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'm', '2011-12-29', 'East Chadrickburgh', 'Dominican Republic', '2019-07-06 17:10:01', '2012-03-09 02:17:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'f', '2020-08-23', 'Ginafort', 'Malaysia', '2014-03-29 10:53:41', '2018-03-10 04:29:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'm', '2012-01-11', 'Dibberttown', 'Jersey', '2016-07-03 05:37:28', '2016-12-27 21:06:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'f', '2012-04-06', 'Lubowitzport', 'Lithuania', '2013-04-04 05:26:00', '2016-07-02 17:22:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'm', '2017-01-17', 'Lake Dessie', 'Guam', '2019-08-02 17:05:07', '2020-03-11 11:19:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'f', '2018-06-30', 'Bradenburgh', 'Iceland', '2019-08-06 16:28:25', '2014-03-07 19:15:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'm', '2014-07-04', 'Savionfurt', 'Dominica', '2014-04-02 02:50:36', '2017-05-24 15:23:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'f', '2013-05-12', 'North Sarai', 'Oman', '2017-11-13 12:12:39', '2012-04-16 19:40:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'm', '2019-07-04', 'Farrellbury', 'Belize', '2016-01-29 04:16:52', '2020-01-16 16:01:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'f', '2019-05-12', 'Lake Dane', 'Guatemala', '2012-08-19 23:24:25', '2019-08-29 12:36:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'm', '2020-11-12', 'Lake Cleora', 'Congo', '2020-07-20 07:43:37', '2017-05-20 15:31:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'm', '2019-12-09', 'Heidenreichbury', 'Malaysia', '2012-06-04 01:05:33', '2013-08-03 14:27:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'm', '2012-01-09', 'Haleighburgh', 'Myanmar', '2015-01-17 16:17:40', '2017-11-06 15:13:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'f', '2011-03-16', 'West Claud', 'Czech Republic', '2016-04-20 18:44:57', '2015-03-20 21:11:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'f', '2013-10-16', 'Lake Mikelborough', 'New Zealand', '2020-01-24 15:26:13', '2012-12-12 11:26:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'f', '2014-09-17', 'Schowalterland', 'Denmark', '2020-02-06 13:08:00', '2014-01-18 13:08:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'f', '2018-06-15', 'South Alphonsomouth', 'Saint Pierre and Miquelon', '2020-08-09 10:28:30', '2015-02-15 17:14:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'm', '2019-10-03', 'West Soniastad', 'Nauru', '2016-03-11 07:31:29', '2016-07-22 20:03:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'm', '2015-08-11', 'Meghanside', 'Netherlands', '2019-04-20 02:42:00', '2014-10-14 05:49:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'm', '2016-12-16', 'Yasminestad', 'Marshall Islands', '2017-03-03 17:29:16', '2014-01-02 09:21:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'f', '2017-04-09', 'East Holliehaven', 'Algeria', '2011-05-02 18:59:01', '2013-11-17 05:19:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'm', '2013-08-22', 'Isomville', 'Heard Island and McDonald Islands', '2011-05-25 13:52:44', '2012-08-18 15:23:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'f', '2014-04-03', 'Nayeliview', 'Faroe Islands', '2019-04-21 19:16:04', '2013-08-24 08:54:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'f', '2011-10-25', 'Zboncakmouth', 'British Virgin Islands', '2013-06-25 13:04:20', '2011-11-10 14:19:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'f', '2011-06-01', 'Leolachester', 'Cuba', '2018-07-19 02:06:02', '2019-08-22 05:25:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'm', '2017-06-04', 'Violafort', 'Solomon Islands', '2020-07-27 05:15:18', '2020-02-21 21:11:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'f', '2013-05-09', 'West Modesto', 'Bosnia and Herzegovina', '2012-07-15 19:34:12', '2011-07-27 20:19:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'f', '2016-07-03', 'Port Augustineland', 'Guinea-Bissau', '2013-12-07 14:51:47', '2015-08-01 02:19:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'f', '2015-10-08', 'North Cletusstad', 'Pitcairn Islands', '2019-11-06 04:59:12', '2020-11-04 17:38:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'm', '2014-12-20', 'South Nels', 'Anguilla', '2014-04-21 01:54:22', '2011-09-24 17:47:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'm', '2020-10-01', 'Kelleyton', 'Mauritius', '2011-03-25 02:24:50', '2013-08-03 08:36:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'f', '2016-05-14', 'New Jaquelin', 'Morocco', '2013-10-01 21:09:37', '2012-05-30 01:27:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'f', '2018-10-30', 'Paigeberg', 'Belize', '2012-12-17 01:21:23', '2014-09-13 12:30:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'f', '2013-05-08', 'Lake Delpha', 'Macao', '2012-10-31 15:47:44', '2014-12-28 18:02:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'm', '2011-12-08', 'Asaborough', 'Montenegro', '2014-04-14 15:57:42', '2014-12-05 23:51:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'm', '2021-01-01', 'Edwinaborough', 'Korea', '2012-08-27 08:30:14', '2019-02-20 03:04:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'f', '2011-03-18', 'New Alexandrinechester', 'Jersey', '2011-10-02 17:05:44', '2021-01-29 19:55:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'm', '2018-06-05', 'Thieltown', 'Norway', '2016-07-19 19:55:05', '2014-09-23 01:50:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'm', '2020-08-02', 'South Othaland', 'United Arab Emirates', '2013-05-25 01:35:20', '2013-02-25 01:47:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'm', '2016-05-11', 'West Oscarville', 'Palau', '2016-04-21 15:02:45', '2017-06-17 00:18:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'm', '2015-08-28', 'Hudsonbury', 'Korea', '2012-05-09 11:39:00', '2014-10-25 21:56:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'f', '2014-11-16', 'Durganchester', 'Sao Tome and Principe', '2021-02-15 03:45:48', '2015-05-02 21:20:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'f', '2020-08-30', 'Evelineberg', 'Nepal', '2019-10-30 22:17:01', '2015-02-13 17:38:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'f', '2014-06-11', 'New Maximo', 'Ecuador', '2017-03-18 16:27:39', '2016-03-11 01:56:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'm', '2012-09-07', 'West Mekhihaven', 'Morocco', '2017-09-20 05:09:38', '2011-08-08 11:26:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'm', '2016-02-27', 'Baileyhaven', 'Cook Islands', '2011-12-03 05:39:44', '2012-02-11 02:20:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'm', '2016-10-03', 'Port Tabithamouth', 'Brunei Darussalam', '2015-05-28 02:38:35', '2013-02-23 03:14:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'm', '2014-07-21', 'Glennieton', 'Luxembourg', '2015-10-30 22:16:43', '2012-04-07 04:36:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'f', '2018-08-17', 'New Stephanyburgh', 'Qatar', '2019-07-23 05:14:09', '2012-12-06 23:09:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'f', '2014-03-23', 'East Issac', 'Spain', '2015-05-21 10:18:50', '2015-11-07 06:28:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'f', '2015-08-21', 'Estevanchester', 'Liechtenstein', '2011-03-28 06:25:57', '2019-11-27 06:07:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'f', '2011-10-12', 'Alvachester', 'Vietnam', '2019-04-27 11:07:36', '2012-04-07 21:20:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'f', '2018-01-16', 'Lucioland', 'Lithuania', '2019-05-10 00:05:32', '2018-07-11 10:28:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'f', '2016-05-01', 'Stephanmouth', 'New Caledonia', '2018-08-12 08:07:09', '2020-07-07 13:17:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'f', '2013-05-29', 'North Genovevastad', 'Iran', '2019-12-14 09:58:20', '2012-12-26 11:10:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'm', '2017-10-30', 'Alisaborough', 'Antarctica (the territory South of 60 deg S)', '2011-03-13 12:51:11', '2012-09-07 19:21:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'f', '2020-11-20', 'New Lessiefurt', 'Fiji', '2012-10-07 23:16:26', '2018-11-10 23:37:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'f', '2014-02-14', 'Port Chanelleshire', 'Reunion', '2013-09-20 14:40:09', '2016-02-21 12:37:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'f', '2013-09-21', 'East Vaughnside', 'Turkmenistan', '2018-10-14 17:39:15', '2016-01-06 12:53:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'f', '2018-07-27', 'East Aronhaven', 'Maldives', '2019-12-09 06:56:10', '2011-10-06 16:11:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'f', '2016-04-24', 'Port Lisettebury', 'Greece', '2013-01-03 08:56:11', '2011-12-17 11:18:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'f', '2020-09-22', 'Deronstad', 'Liechtenstein', '2018-11-08 21:28:40', '2015-08-08 17:08:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'm', '2017-11-30', 'Port Clarissaport', 'Macedonia', '2018-10-21 05:44:33', '2018-12-16 11:02:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'm', '2013-05-22', 'New Mikel', 'Bulgaria', '2011-05-04 15:41:16', '2013-10-09 15:54:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'f', '2014-04-09', 'West Emely', 'Somalia', '2017-08-06 11:19:03', '2015-05-06 10:43:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'f', '2011-10-16', 'Muellerstad', 'Zambia', '2017-02-04 22:17:09', '2015-10-19 05:49:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'm', '2020-06-27', 'Tyrellburgh', 'Guyana', '2011-07-31 19:27:12', '2020-05-06 00:44:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'm', '2021-01-21', 'Ruthfort', 'Israel', '2014-10-29 23:28:42', '2013-05-11 22:39:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'm', '2014-01-25', 'Jayceeport', 'Albania', '2011-07-31 20:48:13', '2020-07-12 18:09:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'm', '2016-12-09', 'Marvinville', 'Korea', '2011-06-09 20:11:17', '2013-08-31 00:51:40');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Sam', 'Hane', 'pollich.demario@example.com', '1-310-580-6905x451', '2017-07-22 16:20:59', '2015-05-14 20:11:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'King', 'Nikolaus', 'mustafa.leuschke@example.net', '1-427-883-8638x1512', '2016-10-07 19:51:40', '2019-05-15 08:51:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Arlie', 'Purdy', 'rbode@example.net', '284.897.4707x856', '2018-05-19 00:51:26', '2016-08-03 00:32:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Krystel', 'Balistreri', 'evie.glover@example.com', '(380)347-4995x600', '2020-03-04 21:35:30', '2020-04-11 12:55:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Damien', 'Wehner', 'margarett44@example.org', '00493529767', '2019-05-12 13:32:26', '2012-02-21 03:30:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Nya', 'Reichel', 'srowe@example.org', '(802)528-4958x0156', '2019-07-22 14:23:20', '2020-07-26 12:01:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Elmore', 'Hettinger', 'alice.kub@example.com', '(499)493-4464', '2013-08-17 03:24:50', '2016-10-19 07:28:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Michelle', 'Gusikowski', 'christian15@example.com', '06656403868', '2016-04-05 16:38:38', '2011-10-31 10:37:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Kayleigh', 'McKenzie', 'cecelia.smitham@example.org', '1-683-689-8849x944', '2012-06-13 15:55:06', '2014-10-27 21:13:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Beaulah', 'Nolan', 'tianna.gislason@example.net', '121-846-1966x7417', '2012-04-05 01:42:54', '2019-07-09 08:46:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Helmer', 'Steuber', 'gene.wolff@example.com', '06126228741', '2015-10-26 17:10:10', '2018-10-24 18:58:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Petra', 'Prosacco', 'sgreen@example.com', '043.079.3143x787', '2016-04-04 17:08:16', '2011-12-31 17:52:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Cordie', 'Prosacco', 'xcollins@example.com', '+50(8)4586998917', '2015-12-30 12:20:47', '2011-11-01 20:16:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Edwina', 'Beahan', 'goyette.mia@example.org', '(581)125-8382', '2011-11-11 03:41:23', '2020-08-02 06:06:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Angelo', 'Harvey', 'karlie.koch@example.net', '1-834-024-6502x92563', '2015-11-13 04:57:10', '2018-05-12 16:58:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Christophe', 'Deckow', 'milo.abbott@example.net', '07518880259', '2012-08-21 20:48:41', '2014-06-18 08:35:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Cathryn', 'Fahey', 'mmarquardt@example.net', '655-169-0773', '2013-06-28 11:16:11', '2015-01-15 21:25:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Bernhard', 'Sporer', 'hettie.ondricka@example.org', '(993)492-0889x8354', '2020-03-11 00:06:34', '2013-04-03 17:18:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Ignacio', 'Walsh', 'declan79@example.com', '1-734-861-0061', '2019-11-19 20:12:18', '2017-06-30 23:49:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Audrey', 'Haag', 'jolie.lueilwitz@example.com', '+16(8)5688717088', '2016-07-27 10:27:12', '2012-06-30 11:51:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Grayce', 'Stamm', 'mayer.lillie@example.net', '346.678.5824', '2015-01-21 15:23:50', '2015-09-25 19:39:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Jackson', 'Kozey', 'jennie44@example.org', '613-564-6667x559', '2019-12-08 04:00:53', '2019-02-03 07:32:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Marcos', 'Purdy', 'hauck.jenifer@example.com', '754.194.5250', '2016-11-21 06:58:45', '2018-08-13 20:55:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Joshua', 'Reilly', 'violette76@example.org', '905-736-2126', '2011-09-22 10:24:55', '2013-03-03 15:10:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Candido', 'Senger', 'dcartwright@example.com', '1-017-537-2179x163', '2013-07-31 14:28:14', '2013-06-14 01:45:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Florida', 'Murphy', 'mazie34@example.org', '930-065-9437x893', '2017-10-18 22:14:48', '2017-09-03 20:29:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Margarete', 'VonRueden', 'brenda.stanton@example.org', '(638)006-5141x524', '2017-03-20 14:00:50', '2019-12-30 14:33:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Brain', 'Nienow', 'teagan28@example.org', '133.700.8299x885', '2015-03-05 21:45:45', '2013-11-19 09:42:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Josiane', 'Feest', 'wmurazik@example.com', '958-518-2598x9537', '2014-01-30 17:42:25', '2015-09-02 07:16:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Mossie', 'Davis', 'osborne.ledner@example.org', '993-464-6811x24526', '2011-04-24 01:43:48', '2020-02-15 13:11:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Emmalee', 'Walter', 'mckenzie.blanda@example.com', '+84(9)3922239701', '2020-11-09 04:23:51', '2012-04-11 05:11:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Savannah', 'Farrell', 'wsimonis@example.org', '(473)968-5892x9785', '2018-09-11 00:02:26', '2016-11-26 00:21:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Elmira', 'Altenwerth', 'kiera79@example.com', '220.271.5362', '2013-02-27 19:12:20', '2015-09-12 12:52:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Kylie', 'Mann', 'johns.gladyce@example.com', '075-070-7229x524', '2014-09-15 12:00:06', '2014-09-10 12:02:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Bradly', 'Senger', 'samson.kirlin@example.org', '614-510-1530x81108', '2015-05-22 21:09:37', '2014-12-29 14:38:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Angelica', 'Ziemann', 'fhalvorson@example.net', '361-576-5847', '2017-03-15 08:19:49', '2020-01-21 08:31:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Christelle', 'Goodwin', 'praynor@example.org', '1-920-650-7135x922', '2013-02-27 19:34:50', '2016-02-21 06:28:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Zion', 'Koss', 'valentine.greenfelder@example.com', '340.190.9084x639', '2020-02-13 23:45:18', '2016-03-09 12:51:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Maye', 'Kuhlman', 'ullrich.joelle@example.com', '1-115-142-7621x97024', '2013-02-22 15:32:04', '2018-07-19 08:22:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Berneice', 'Pagac', 'goyette.weldon@example.net', '020-327-1100x958', '2018-04-01 20:51:24', '2021-01-10 09:34:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Chelsea', 'Spinka', 'evan74@example.org', '+12(4)8233029485', '2017-01-12 13:14:11', '2018-05-23 01:19:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Reinhold', 'Simonis', 'earlene76@example.com', '1-669-573-4689', '2014-05-16 20:05:06', '2013-09-05 04:39:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Trace', 'Quitzon', 'dante04@example.net', '1-763-792-3861', '2020-05-03 00:30:52', '2014-06-01 18:30:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Harold', 'Hammes', 'roosevelt23@example.net', '(204)209-5581x0645', '2014-09-24 03:10:43', '2012-07-17 14:00:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Randal', 'Dibbert', 'misael25@example.org', '03737783155', '2020-03-03 19:48:19', '2014-03-20 18:52:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Stella', 'Welch', 'angelina36@example.com', '(336)015-7059x4864', '2013-05-03 00:55:18', '2015-12-11 03:28:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Eudora', 'Macejkovic', 'bmorissette@example.org', '+87(6)9481162181', '2014-11-22 14:49:18', '2015-01-03 02:09:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Chelsie', 'Purdy', 'stephanie.haley@example.com', '08291887987', '2012-08-25 03:08:16', '2015-10-18 13:50:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Gracie', 'Kunze', 'boris70@example.org', '090.189.9961', '2013-03-29 13:19:24', '2017-06-29 12:48:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Roberto', 'Goyette', 'orie.hudson@example.com', '(570)655-9883x0781', '2012-08-16 03:46:49', '2017-03-08 22:12:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Albertha', 'Hane', 'cassin.catharine@example.com', '1-217-448-9364', '2018-03-30 04:47:13', '2011-05-27 02:38:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Tiffany', 'Lowe', 'alvis.jast@example.com', '176.403.1824x715', '2015-06-01 18:55:13', '2020-04-14 07:10:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Wilmer', 'Kulas', 'fhaag@example.org', '05095271574', '2014-08-09 13:01:31', '2017-03-19 10:16:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Ophelia', 'Walter', 'blanche.wilkinson@example.org', '+76(9)2834810802', '2014-01-21 01:43:50', '2013-07-14 10:27:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Iliana', 'Jenkins', 'georgette30@example.com', '(424)274-2758', '2015-04-23 06:02:51', '2018-06-24 16:11:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Mckenna', 'Stoltenberg', 'lowell12@example.net', '815.108.8362x6302', '2020-09-02 21:26:57', '2013-06-10 20:59:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Willa', 'Wiza', 'ykeeling@example.net', '(264)519-9093', '2011-07-31 14:31:40', '2018-06-05 18:35:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Joanie', 'Ledner', 'legros.mireya@example.org', '(380)986-0154', '2020-06-28 20:32:30', '2020-12-25 16:08:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Jerrold', 'Streich', 'ben.durgan@example.org', '(292)899-2712', '2020-06-03 10:13:05', '2019-02-25 21:07:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Elvera', 'Gutmann', 'conner.bode@example.org', '+11(3)4125710176', '2017-07-28 07:40:33', '2016-12-16 22:52:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Brennon', 'Funk', 'kara.corkery@example.net', '832.434.6935', '2019-05-28 21:06:05', '2018-10-29 17:26:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Delphia', 'Swift', 'florence.oberbrunner@example.com', '(450)669-9080', '2016-12-30 16:22:37', '2013-03-19 15:40:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Ryder', 'Legros', 'kkoch@example.com', '432-869-5295x52603', '2017-01-29 12:03:51', '2019-06-06 21:32:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Deon', 'Auer', 'hannah58@example.org', '530.108.1971', '2017-12-24 15:09:16', '2016-08-29 09:28:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Gus', 'Hand', 'lorenzo74@example.com', '161-267-4684x022', '2013-07-09 18:50:58', '2011-11-07 09:33:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Alanis', 'Jast', 'alexandrine.boyle@example.com', '(270)846-9150x934', '2017-09-07 03:11:41', '2017-09-19 07:45:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Dale', 'Schaden', 'annamae.moen@example.com', '011-564-7870', '2020-05-21 20:44:09', '2018-05-26 01:28:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Sophia', 'Kerluke', 'hwilderman@example.net', '+66(5)0054463647', '2018-11-01 11:51:49', '2019-04-28 03:16:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Foster', 'Block', 'ttoy@example.com', '1-108-121-5276', '2020-12-21 17:13:08', '2016-11-06 14:34:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Jordon', 'Pollich', 'kara.luettgen@example.com', '231-928-0545x2708', '2013-02-03 02:56:52', '2015-08-29 14:51:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Katheryn', 'Dietrich', 'ewiegand@example.org', '+93(9)2679309645', '2016-06-28 22:07:43', '2011-12-28 15:00:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Orie', 'Hane', 'carolanne83@example.com', '1-094-090-2424', '2018-02-17 05:11:47', '2018-03-19 08:03:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Dorian', 'Kassulke', 'vada94@example.com', '1-006-432-4879', '2014-07-30 09:41:19', '2018-03-14 23:09:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Kari', 'Emmerich', 'switting@example.org', '503-224-1289x744', '2016-05-31 08:27:08', '2018-09-22 17:56:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Alda', 'Schulist', 'thiel.ettie@example.com', '(408)006-8825x5216', '2017-10-07 02:26:16', '2014-11-19 20:41:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Lew', 'Ruecker', 'feil.hassan@example.com', '201.421.0322x2281', '2017-05-18 23:49:33', '2014-04-30 22:54:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Helene', 'Gerhold', 'fgorczany@example.net', '167.021.8993x942', '2015-08-31 20:31:54', '2018-02-25 20:11:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Torey', 'McDermott', 'clare.moen@example.org', '(181)028-7224x51975', '2019-07-07 17:52:59', '2013-02-18 10:45:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Katelin', 'Williamson', 'mcglynn.clifton@example.net', '+62(0)6969422305', '2020-02-22 10:05:07', '2020-07-30 17:49:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Gilda', 'Carroll', 'dominique.stanton@example.org', '893.820.5120', '2019-12-13 18:16:08', '2016-02-08 18:42:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Edmond', 'Auer', 'lisandro.johns@example.net', '322-823-1157x927', '2020-03-09 05:05:38', '2011-09-26 12:27:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Lucio', 'Jast', 'haag.lucile@example.com', '1-529-492-9061', '2016-06-03 01:06:44', '2011-05-01 14:44:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Brandy', 'Carroll', 'mavis.walter@example.org', '1-526-075-7631x3405', '2012-08-06 04:23:13', '2019-04-22 22:15:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Verna', 'Wisozk', 'plakin@example.net', '1-791-646-2473x682', '2018-02-18 21:53:13', '2011-04-21 11:14:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Cydney', 'Block', 'bennett.hayes@example.com', '1-637-296-2755x99126', '2015-11-26 23:31:00', '2020-06-17 08:04:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Sabrina', 'Medhurst', 'eosinski@example.org', '602-839-4964', '2021-02-10 19:35:19', '2011-07-07 09:03:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Natasha', 'Orn', 'jacklyn19@example.net', '+60(8)9939368533', '2017-03-31 02:26:09', '2013-04-29 04:55:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Cecelia', 'Altenwerth', 'ivory40@example.net', '835-460-9813x41323', '2019-09-05 04:06:50', '2012-12-16 09:31:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Cierra', 'Little', 'gina.ullrich@example.net', '(401)626-4178x864', '2012-12-23 22:58:55', '2015-01-10 04:40:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Santos', 'Hickle', 'uriah.boyer@example.org', '(640)744-8317x6998', '2020-06-04 19:52:55', '2017-11-01 18:47:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Lennie', 'Ankunding', 'lolita13@example.com', '(044)183-4896', '2014-12-28 08:56:06', '2017-05-05 06:24:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Etha', 'Russel', 'jettie23@example.org', '(480)182-2926', '2011-10-19 23:40:26', '2014-07-04 18:48:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Horace', 'Swaniawski', 'russel.ana@example.com', '426-305-3243x712', '2020-03-13 16:33:33', '2012-03-30 21:09:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Hillary', 'O\'Hara', 'erolfson@example.net', '636-296-3666x20343', '2015-03-11 13:25:58', '2013-04-18 04:36:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Linda', 'Hand', 'rice.jayme@example.com', '+81(9)4602240601', '2019-08-08 21:45:19', '2013-06-05 12:28:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Violette', 'Witting', 'domenica.schaefer@example.net', '05609103702', '2017-01-22 04:48:04', '2012-05-26 09:09:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Pearl', 'Jacobson', 'jast.emanuel@example.net', '(316)389-6596x050', '2015-09-10 12:07:53', '2021-01-16 05:08:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Bernard', 'Pacocha', 'mable19@example.org', '1-961-846-0830', '2018-01-11 04:34:23', '2019-01-19 19:17:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Nicole', 'Quitzon', 'annamarie.stoltenberg@example.com', '081.246.3318x2934', '2015-09-23 13:32:51', '2020-11-11 19:46:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Rico', 'Mann', 'astrid09@example.com', '1-951-655-0197x30977', '2012-08-01 04:28:30', '2018-06-07 03:09:47');


