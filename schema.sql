DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `leader_card_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
);


DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `live_id` bigint NOT NULL,
  `host_user_id` bigint NOT NULL,
  `status` int NOT NULL,
  `joined_user_count` bigint NOT NULL,
  `max_user_count` bigint NOT NULL,
  PRIMARY KEY (`id`)
);


DROP TABLE IF EXISTS `room_member`;
CREATE TABLE `room_member` (
  `room_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `score` bigint DEFAULT NULL,
  `judge_perfect` int DEFAULT NULL,
  `judge_great` int DEFAULT NULL,
  `judge_good` int DEFAULT NULL,
  `judge_bad` int DEFAULT NULL,
  `judge_miss` int DEFAULT NULL,
  `select_difficulty` int NOT NULL,
  PRIMARY KEY (`room_id`, `user_id`)
);
