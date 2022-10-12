#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '78', '77', 'Voluptate est laborum id perspiciatis repudiandae. Molestiae fuga nostrum libero enim ut ea. Officiis quisquam magnam porro sint suscipit.', 'autem', 15, NULL, '1981-03-05 08:38:22', '1991-11-06 02:37:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '81', '72', 'Voluptas molestiae non et. Cum et architecto eveniet ea reiciendis dolor. Odio repudiandae voluptatem iure molestiae sit. Et veritatis voluptatum ab veritatis.', 'nihil', 714, NULL, '1992-09-08 16:50:22', '1971-03-31 19:37:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '42', '84', 'Ab ea officiis libero quibusdam vitae. Vitae sunt dolor odio et non. Et et vel eum quia ea et voluptatem ex.', 'at', 2366, NULL, '2012-01-28 23:29:48', '2012-08-22 00:05:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '25', '79', 'Nisi labore consequatur et. Rerum ut est sunt nobis sed. Non error porro aut praesentium sit atque incidunt hic.', 'odit', 58425335, NULL, '1976-04-28 07:46:25', '1991-05-29 16:06:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '67', '56', 'Quia eligendi doloremque praesentium deserunt odit. Totam commodi facere enim eligendi est voluptatem. Non nesciunt facilis quae pariatur. Sit dolor iure sequi temporibus.', 'cum', 6948160, NULL, '2014-06-11 15:26:29', '1978-08-01 14:29:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '31', '9', 'Perferendis ut sapiente quibusdam iste consectetur possimus. Consequuntur dolor dicta qui in. Enim quis quia dolorem ut porro. Dolore magni asperiores sit ut.', 'quisquam', 0, NULL, '1974-11-11 05:00:07', '2004-01-17 01:31:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '10', '87', 'Voluptate voluptas amet enim est dolor voluptatem. Et quos exercitationem quae aut nihil. Omnis autem ut et nisi vel sunt.', 'sint', 3, NULL, '2007-08-15 03:57:03', '1983-07-28 18:28:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '60', '90', 'Reiciendis ut impedit temporibus. Voluptas ut doloremque nisi maxime. Cum perspiciatis ut impedit.', 'quod', 2065740, NULL, '2014-08-12 23:56:00', '2017-09-29 18:03:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '60', '17', 'Voluptate voluptates debitis molestias itaque consectetur. Nemo quasi voluptas doloremque. Ipsa facere aut non ad in officia quia. Et sint excepturi ut est ipsum assumenda aut.', 'et', 77273, NULL, '2017-08-18 12:04:05', '1994-05-24 08:28:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '73', '77', 'Beatae reprehenderit et qui excepturi et ratione. Quo quas sapiente officia pariatur deserunt. Molestiae temporibus aliquam temporibus aut ea.', 'nulla', 10, NULL, '1975-08-20 21:34:50', '1978-01-06 20:17:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '25', '41', 'Aut inventore dolorem iste totam in in suscipit. A eaque pariatur a aut ea sunt.', 'ut', 5336, NULL, '2010-05-16 03:04:36', '2004-12-10 13:42:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '77', '49', 'Commodi fugit enim nemo. Velit numquam esse est ad assumenda odio ut.', 'ut', 6294282, NULL, '2008-11-05 17:54:39', '1977-06-08 11:15:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '99', '34', 'Rerum dignissimos modi maxime laboriosam quae deleniti dolorem qui. Voluptatem quia et rem quidem animi et. Dolor et optio est est et.', 'nemo', 70366575, NULL, '2006-06-24 00:25:18', '1987-06-07 21:56:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '8', '80', 'Enim voluptatem quidem voluptatibus itaque tempora molestias aut. Consequatur non est voluptas perferendis nisi et. Quia quisquam molestias dolor beatae. Vero exercitationem qui laboriosam incidunt consectetur aut officia vitae.', 'at', 29883312, NULL, '1986-12-14 01:25:32', '1998-10-14 02:58:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '30', '46', 'Deserunt eaque iste asperiores minus optio expedita in. Unde id amet repellat harum. Exercitationem minus quod voluptate aut natus ducimus labore.', 'iure', 5823, NULL, '1983-10-29 06:17:58', '1988-12-18 00:24:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '67', '8', 'Molestias animi perferendis tempora. Possimus est omnis voluptas aut. Est molestiae et vero cum asperiores labore. Consequatur omnis quos tenetur et et aperiam voluptate.', 'numquam', 337311248, NULL, '1988-12-27 15:10:43', '1987-12-30 13:54:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '23', '47', 'In ad earum accusamus et blanditiis velit aperiam quia. Sit voluptatem expedita rerum minus reprehenderit. Ducimus blanditiis esse et doloribus voluptas provident. Et qui ducimus sit. Delectus voluptatum sed officiis minus.', 'in', 6415, NULL, '2021-05-10 18:58:55', '2003-11-06 09:18:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '79', '64', 'Eos praesentium enim quis rerum tempore culpa velit. Iure ea suscipit impedit facere hic perspiciatis. In suscipit eum magnam voluptatum sapiente soluta.', 'adipisci', 9391576, NULL, '2003-05-18 22:58:01', '2011-11-25 18:18:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '30', '3', 'Vero consectetur quis sunt voluptate suscipit. Assumenda voluptatem autem accusantium non. Temporibus dolorem non harum ut aut. Deleniti et qui nobis provident.', 'voluptas', 392374239, NULL, '1997-02-04 04:18:07', '1974-08-21 22:38:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '43', '96', 'Aut expedita eveniet sunt necessitatibus itaque quia. Cupiditate aut consequatur id debitis rerum enim. Architecto ipsam sit ipsum quis itaque reprehenderit asperiores.', 'itaque', 0, NULL, '1970-06-24 20:55:24', '2010-02-25 11:32:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '59', '73', 'Quaerat libero reiciendis et velit tenetur rerum aut. Voluptatum et dolor dolor qui nemo. Molestiae excepturi tenetur sit iste vitae id hic aut. Aliquam praesentium est ea quasi in vitae illum. A corrupti aut sit atque nostrum cumque molestias.', 'ab', 8, NULL, '1971-01-01 00:06:25', '2021-09-06 05:30:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '5', '69', 'Magni aut repellendus sapiente id laborum. Et quia et maxime ducimus et eos. Quo asperiores illum dolores doloremque. Qui ab commodi a.', 'cum', 844592860, NULL, '1999-08-11 13:55:32', '1974-11-28 06:57:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '60', '64', 'Iste reiciendis sit sed. Dolores dolorum ipsum et et laborum explicabo deserunt. Sed molestias ea dicta. Officia exercitationem suscipit aperiam enim.', 'aut', 92, NULL, '1978-04-19 11:05:44', '2006-02-26 16:06:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '58', '20', 'Repellat adipisci aliquam quia inventore. Eum provident enim ducimus quo sint doloribus. Facere earum dignissimos aut tenetur.', 'ut', 41492, NULL, '2010-11-18 08:43:22', '1976-10-04 19:40:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '81', '31', 'Et eos soluta quis aut. Et qui et recusandae veniam reiciendis.', 'possimus', 14, NULL, '1978-07-16 00:07:48', '1980-03-16 22:51:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '96', '5', 'Excepturi voluptatem deleniti et ut qui praesentium. Non voluptas et vel qui ab ea. Dolorum quia aut facere perferendis.', 'mollitia', 458, NULL, '1973-01-14 19:09:30', '1970-10-22 21:00:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '71', '73', 'Sed odio eum dolorum sapiente. Beatae ut aut ut. Aut ut reiciendis et consectetur perspiciatis voluptates quidem libero.', 'reiciendis', 287443, NULL, '1980-07-01 22:46:36', '2004-02-05 15:08:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '53', '70', 'Dolor reprehenderit occaecati ab quaerat voluptatum adipisci incidunt. Corporis tempora ut ipsa. Pariatur dolores impedit sapiente fugiat. Et et sit sit id. Dicta enim est facere voluptate aperiam sunt sequi blanditiis.', 'rem', 299177, NULL, '1972-05-06 01:30:43', '2010-07-22 12:21:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '6', '61', 'Beatae libero omnis quia. Laudantium et rerum debitis aspernatur dolorum provident. Ut fugiat ducimus reiciendis mollitia rerum qui necessitatibus atque. Quo non maxime aliquid rerum quod et veritatis ut.', 'error', 282, NULL, '1981-05-21 11:55:30', '1978-09-06 05:33:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '50', '36', 'Ut nulla voluptatem ut quae omnis. Ex vero provident labore deserunt mollitia voluptatem harum ut. Assumenda corporis odio suscipit quidem. Dolor eos maxime itaque dolorem laborum.', 'ea', 5857, NULL, '2014-04-06 18:49:06', '1985-03-15 01:12:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '7', '16', 'Maiores quod soluta veritatis eos necessitatibus. Fuga excepturi magnam numquam velit in veritatis.', 'reiciendis', 564397202, NULL, '1999-02-09 21:13:09', '1990-06-06 23:02:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '43', '29', 'Quis est quia aut repellendus. Vel est est iste et. Impedit itaque sit molestias quidem adipisci. Aut ab nesciunt numquam corporis.', 'nostrum', 6, NULL, '2003-07-16 18:27:04', '2004-05-22 06:50:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '62', '21', 'Molestiae nesciunt voluptatem tempore et quibusdam. Quaerat ducimus inventore quia in incidunt.', 'quia', 9840, NULL, '1973-09-28 01:06:11', '1977-07-30 05:55:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '93', '92', 'Dolores culpa mollitia nihil tempora. Consequatur sint voluptas omnis eum voluptas nobis eum nobis. Et provident ut corporis autem ea consequatur. Sapiente et aut est a eveniet dolores sint.', 'asperiores', 6, NULL, '2005-03-06 01:14:13', '1983-05-21 16:09:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '24', '35', 'Mollitia et aut consectetur reiciendis. Sed voluptatem rerum nesciunt quisquam facilis minima molestiae. Velit quae blanditiis eaque porro. Delectus laudantium autem provident vitae consequatur velit.', 'occaecati', 0, NULL, '2004-12-13 08:26:56', '1996-03-30 10:49:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '88', '82', 'Ea doloremque doloribus velit et nihil deserunt quisquam. Quos velit facere et reprehenderit suscipit architecto optio. Autem aut ullam est quia autem illo.', 'ratione', 464554572, NULL, '1984-01-21 10:27:23', '2004-10-25 10:45:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '7', '92', 'Itaque rerum quo qui unde cum earum et. Repudiandae eum ipsam molestias et. Eligendi labore earum perferendis corporis aut ipsa.', 'unde', 41390446, NULL, '1983-04-08 05:43:36', '1970-01-19 08:56:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '51', '67', 'Ut eos repudiandae eum enim qui iure doloremque. Magnam aut aut perferendis ullam. Assumenda alias porro nulla voluptas omnis. Eius totam et repellat veritatis. Ut iusto molestiae et aspernatur voluptatum et nobis.', 'quo', 9064, NULL, '1985-08-26 06:59:50', '1973-09-14 23:46:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '56', '8', 'Et minus libero distinctio placeat minus accusamus repudiandae. Quia tempora est ipsa aut ut. Incidunt ex repellendus voluptas distinctio aut. Beatae voluptate labore asperiores voluptatum aut.', 'et', 45278, NULL, '2001-08-14 23:45:42', '1991-06-22 22:02:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '86', '37', 'Quam odio consequatur consequatur eum. Est distinctio quisquam quia quod magni praesentium consequatur.', 'maiores', 739223, NULL, '2001-11-25 22:41:10', '2008-04-29 20:21:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '39', '81', 'Id eligendi voluptas minus et eius molestiae dolore. Quis adipisci quae consequatur cumque explicabo. Ab iste id in.', 'quia', 78879964, NULL, '1979-10-28 16:29:55', '1995-10-31 06:52:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '41', '9', 'Est fugiat iste iure occaecati sequi. Iure velit nemo aut. Perspiciatis voluptatem et enim autem adipisci numquam molestiae. Voluptatem odit enim voluptatum vel nam assumenda.', 'nobis', 237, NULL, '1986-02-18 04:58:26', '2002-07-30 10:27:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '54', '94', 'Et velit magnam earum qui officia vel ex amet. Fuga expedita consequatur itaque quos officiis in nam sunt. Impedit est amet maiores.', 'consequatur', 334, NULL, '1970-09-04 08:21:34', '2016-04-10 08:46:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '79', '59', 'Et omnis cum ullam distinctio maxime et natus. Unde et reiciendis et provident adipisci. Fuga voluptas voluptatem quasi dolore hic est maxime. Sed eligendi velit ea est.', 'iste', 873234, NULL, '2011-09-30 18:30:11', '1997-07-08 14:41:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '55', '28', 'Illo minus sint asperiores ratione adipisci. Omnis ipsam laboriosam culpa eius similique aut atque. Cumque fuga officia minima deleniti. Mollitia cumque repellat mollitia voluptatem assumenda sint repudiandae ipsam.', 'adipisci', 284911305, NULL, '2017-04-10 14:55:47', '1973-02-04 17:49:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '95', '61', 'Repellat et odio est soluta. Est enim numquam et. Harum nobis enim dolorem et. Ut minus quos nemo error est quidem earum. Rerum omnis quibusdam sit placeat.', 'et', 14202, NULL, '1970-09-16 16:13:42', '1977-08-09 10:43:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '43', '37', 'Fugit nam ducimus omnis perferendis minima. Repellat ex ad quae possimus consequatur quia.', 'nostrum', 179083, NULL, '2009-12-11 08:03:36', '2002-12-28 23:24:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '89', '5', 'Eos quis non at consequatur aliquam explicabo quia odit. Voluptatem sed officia ipsam rerum at officia. Labore dicta odit qui dolores.', 'consequatur', 1223, NULL, '2016-04-11 16:56:18', '1997-01-23 18:46:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '57', '81', 'Blanditiis exercitationem omnis eligendi qui tenetur et. Aperiam ut vel quaerat a velit. Similique libero sunt dolorum.', 'ea', 9, NULL, '1977-01-30 08:10:46', '2021-06-07 20:50:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '96', '81', 'Velit aut autem ut explicabo. Ut et nihil maiores aut recusandae rem. Amet consequatur repudiandae numquam nesciunt praesentium rerum.', 'sed', 4623947, NULL, '1971-12-13 12:24:19', '1990-08-16 09:14:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '15', '84', 'Quo et perferendis saepe molestiae voluptate. Est vel et suscipit soluta id est debitis. Non omnis excepturi ipsa aut cupiditate soluta voluptatem. Maxime maxime magni voluptas et et tempore.', 'a', 0, NULL, '1981-05-10 06:46:57', '1992-05-17 09:24:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '63', '22', 'Ratione qui molestiae quasi facilis aut saepe quasi. A quod ea voluptatum dolor sunt repellat aspernatur. Non autem nesciunt mollitia eos.', 'labore', 6, NULL, '1971-10-18 04:45:11', '2008-08-17 02:06:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '76', '13', 'Consectetur officiis est explicabo dignissimos. Minus error et aperiam vero est ex expedita impedit. Et et est est dolores voluptas molestiae voluptas.', 'eveniet', 4202, NULL, '1972-09-29 16:33:08', '2016-07-28 03:09:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '88', '31', 'Sed explicabo sunt molestiae beatae totam. Illo impedit veritatis doloremque amet dolorem itaque a quia. Eius sapiente dolorem quia velit. Adipisci ducimus consectetur veritatis illo.', 'animi', 2, NULL, '2013-04-07 01:17:52', '1978-01-01 08:56:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '21', '74', 'Labore ut officiis dolore quasi facilis ut. Iste molestiae consequatur dignissimos accusamus enim.', 'et', 20747, NULL, '1974-06-03 15:49:45', '1979-04-07 12:52:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '68', '59', 'Dolores voluptatem molestiae molestias aliquid esse consequatur. Unde iure ut facere officiis sed. Quo quibusdam nam eum incidunt. Pariatur explicabo perspiciatis fugiat reprehenderit. Rerum non atque perferendis cupiditate.', 'consequatur', 9266, NULL, '2020-06-18 19:57:23', '1997-09-11 12:22:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '55', '9', 'Quisquam voluptas deserunt ratione est voluptatum. Aut adipisci culpa rerum exercitationem. Sed accusantium sint sed quos placeat. Qui alias incidunt dolor laborum excepturi et.', 'accusantium', 3150, NULL, '1986-08-28 13:02:39', '1983-10-09 21:45:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '68', '8', 'Nulla aut enim quisquam delectus nostrum. Tenetur expedita ipsa libero et modi dicta. Beatae at deleniti est doloremque.', 'iste', 10680784, NULL, '2000-05-10 11:51:06', '2014-04-01 21:32:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '2', '46', 'Inventore quas animi rerum voluptas vitae officia facilis. Omnis ullam animi dolorem cupiditate.', 'enim', 181, NULL, '1985-10-06 10:50:43', '1999-10-19 22:41:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '67', '56', 'Culpa expedita delectus quia necessitatibus tempora sit eveniet. Et modi iste dolores temporibus tempore non veritatis dignissimos. Et quas nihil vel. Minima necessitatibus ipsum voluptatibus repellat et ea exercitationem et.', 'esse', 49582, NULL, '1976-08-01 03:15:19', '2005-03-02 07:55:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '73', '61', 'Voluptate consequuntur aut sed sint. Quae dolor non quaerat dicta cupiditate ut quae. Facilis ipsum dolorem deserunt neque consequatur dolores nemo.', 'est', 240, NULL, '1979-03-11 23:15:34', '1978-07-23 12:02:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '17', '15', 'Quisquam quia non id non recusandae. Nesciunt quidem ea doloribus explicabo. Et id hic et molestiae et odio.', 'earum', 0, NULL, '2005-05-12 15:11:37', '2022-05-10 08:10:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '97', '5', 'Temporibus tempora dolorum dolor est maiores molestiae illum. Sit est facilis maxime. Est ullam sapiente aut sint et.', 'voluptates', 9, NULL, '2019-12-14 17:15:02', '1991-09-04 05:48:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '20', '54', 'Quia fugiat maxime voluptatem consectetur enim architecto consequatur ut. Dolorum provident distinctio quam quia. Nisi suscipit libero et perferendis assumenda.', 'recusandae', 4, NULL, '1980-10-27 19:18:40', '1972-06-01 17:48:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '86', '16', 'Est et aspernatur aliquam dolor enim. Ut voluptatibus nisi ipsam quibusdam. Inventore maiores iure dignissimos consequatur. Quis placeat unde consequatur voluptatem.', 'recusandae', 73, NULL, '2013-01-14 11:50:58', '1983-03-11 03:19:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '34', '100', 'Magni quis architecto inventore iste earum nihil dolorem iusto. Illo non rerum error doloribus sit rem repudiandae. Dolor nam consequatur qui commodi.', 'odit', 3528, NULL, '2021-04-13 15:58:07', '1970-06-08 01:44:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '99', '97', 'Ducimus minima sit totam quibusdam nulla harum ipsum reiciendis. Sit beatae totam assumenda est quos et. Et porro dolorem tempora sit.', 'cum', 314124, NULL, '1972-12-27 12:59:39', '1997-06-07 06:54:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '22', '74', 'Distinctio fuga ipsam amet architecto aut et. Qui possimus labore id aperiam voluptas voluptatibus animi. Corrupti quia aut aut consequatur.', 'culpa', 68800386, NULL, '1971-10-15 00:51:14', '2008-09-19 21:09:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '9', '10', 'Itaque aliquid nobis natus quod temporibus sunt perferendis. At sunt qui cupiditate et dolorem hic. Animi nulla dolorem dolore omnis quis. Facere est saepe perspiciatis facere aliquam.', 'sit', 44, NULL, '1993-09-11 15:04:31', '1970-04-27 21:05:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '5', '29', 'Cumque ut consequatur dicta voluptatem eos occaecati eius. Tempore sit atque necessitatibus enim optio ex deserunt. Laudantium quibusdam ab eum est laborum natus atque.', 'et', 0, NULL, '2006-09-03 08:06:49', '2008-08-13 05:46:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '83', '72', 'Ut aliquam ut dolorum blanditiis aut odio accusamus. Totam nisi esse natus. In iste sint cum perferendis. Natus nemo est facilis voluptatem quia.', 'sequi', 0, NULL, '1997-02-15 05:03:56', '1981-05-07 15:52:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '88', '37', 'Voluptates qui quisquam harum quae ipsa dolor voluptatum. Soluta et et molestiae rem vitae. Et cumque iste voluptas nesciunt quo ut aperiam. Perferendis quia consequatur nobis quo soluta beatae.', 'in', 803, NULL, '2002-01-10 22:47:05', '1974-08-20 19:44:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '80', '55', 'Vel molestiae necessitatibus eum. Voluptas quae rem quia debitis sit. Et fuga at non eaque quia id at omnis. Consequatur vel nesciunt sunt nihil optio.', 'nostrum', 129850, NULL, '1985-10-31 13:05:48', '1974-08-14 18:14:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '44', '82', 'Nulla quos ea vero perspiciatis tenetur est. Ipsa ipsam et aliquid. Nesciunt quos quos dolor minima dolorem nulla. Sunt beatae quia sequi itaque.', 'ex', 88, NULL, '2021-10-07 13:10:33', '2012-10-17 16:47:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '1', '11', 'Hic voluptas non nesciunt voluptatem qui dolor qui. Et aut rerum voluptatibus nam unde quasi nulla. Laboriosam debitis et impedit voluptatem quia et corrupti et.', 'eos', 30464, NULL, '2009-06-02 14:47:05', '1986-08-19 01:46:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '38', '73', 'Inventore perspiciatis quaerat molestiae laboriosam dolor possimus ipsam error. Velit et voluptas doloribus accusantium incidunt. Beatae facere consequatur velit corporis. Consectetur hic non aut dolorem ratione. Voluptatibus earum quae quos et doloremque libero molestias nesciunt.', 'et', 717609507, NULL, '1970-04-14 16:28:32', '1988-05-29 13:51:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '71', '54', 'Voluptate autem quibusdam ut voluptate sit dignissimos. Sint nam et quibusdam quia voluptate. Dicta cumque minima porro sed earum nisi.', 'aut', 38485552, NULL, '1982-08-27 21:54:48', '1990-08-31 22:31:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '88', '68', 'Ut eos qui vel omnis voluptas dolor officia. Nisi aut porro autem omnis omnis culpa consequatur et. Sint cupiditate quo dolores blanditiis. Molestiae earum ut molestiae dolorem.', 'voluptate', 79561450, NULL, '2009-11-04 20:10:31', '2022-04-17 05:06:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '59', '8', 'Ipsum quis officia rerum qui esse. Et placeat ut dolore et asperiores. Labore architecto nesciunt officia ea quidem.', 'nam', 7403, NULL, '2016-11-29 10:31:04', '1995-09-28 13:44:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '21', '44', 'Odio distinctio ipsa minus rerum ex. Soluta recusandae incidunt voluptas totam soluta amet rerum laboriosam. Est accusamus facere voluptas. Velit corporis et asperiores est perferendis ut amet.', 'quia', 0, NULL, '1972-09-02 20:08:45', '1975-11-18 14:26:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '23', '55', 'Ut ut et ratione maxime dolorem. Eius tenetur velit voluptas iusto voluptatum non quam. Tempore maxime sed eos autem voluptas unde iure soluta. Quae nihil quaerat necessitatibus laudantium et repellat occaecati.', 'in', 462643377, NULL, '1973-11-19 09:43:37', '1972-03-31 17:08:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '44', '21', 'Ut eligendi aut voluptatum facere voluptatem. Sunt aut quis voluptatibus qui. Sed quo dolorum aut ut quod neque.', 'voluptate', 185, NULL, '1986-07-20 01:08:15', '1995-04-24 10:45:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '52', '66', 'Ad earum iste ea porro earum eaque magnam. Magnam sequi sed dolores ex ea qui. Velit molestiae et et reiciendis minus qui.', 'iure', 7976389, NULL, '2014-11-01 03:52:26', '2009-02-19 01:09:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '95', '60', 'Suscipit quis recusandae consectetur repellendus. Doloribus maxime magnam nesciunt fugiat repellat. Ut sit et omnis ab eos nam.', 'ex', 86711, NULL, '2001-03-24 18:21:28', '1993-09-03 10:09:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '75', '99', 'Voluptate dolor reiciendis porro totam sunt aperiam. Qui autem perspiciatis optio voluptas vel ut. Delectus ratione omnis minima voluptas.', 'ut', 203792522, NULL, '1978-06-21 16:15:56', '2009-05-23 07:34:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '89', '57', 'Hic dignissimos aliquid voluptates omnis ut quibusdam eaque. Alias quibusdam et est unde. Voluptas eos at maiores et dolores eos.', 'aut', 0, NULL, '1976-07-26 02:28:59', '2004-11-25 21:24:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '70', '76', 'Occaecati et vel repellat magni in. Similique ut dolorem et ut ipsa ipsam velit.', 'sit', 35, NULL, '2000-07-12 12:23:55', '2011-05-06 11:41:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '94', '50', 'Consequatur qui consectetur enim qui ducimus. Consequuntur commodi qui porro libero laboriosam iste. Nam incidunt et recusandae voluptas ab.', 'impedit', 0, NULL, '2013-10-09 14:21:45', '1998-02-23 20:28:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '31', '37', 'Qui iure minus minus saepe repellendus quo. Recusandae eum pariatur numquam fugit sequi omnis. Temporibus temporibus aut rem dolorem unde voluptates. Sed est nihil voluptatum corporis qui totam sit unde.', 'nemo', 85672534, NULL, '1996-05-06 14:48:57', '1970-07-10 07:36:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '32', '31', 'Repudiandae quibusdam voluptatem repudiandae autem reprehenderit voluptatibus explicabo. Delectus autem possimus facilis quaerat. Doloremque ea velit deleniti voluptatem illo quis. Accusantium consectetur accusamus harum est rerum laudantium.', 'at', 6183, NULL, '2018-01-23 13:04:07', '2020-11-29 23:22:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '48', '69', 'Optio sint nesciunt aliquam. Magni facilis et iure ut vero earum officiis explicabo. Esse laudantium commodi numquam voluptatem eaque. Aut quam sint quo magnam voluptatibus quasi.', 'ipsam', 137, NULL, '2008-06-30 08:19:19', '1981-03-21 00:02:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '4', '18', 'Error vel dolorem voluptates laudantium fugiat velit. Iusto repellat optio occaecati. Animi et tempore qui molestias sit. Voluptatum quaerat mollitia odit aut.', 'quisquam', 98950473, NULL, '1978-09-01 20:55:08', '2007-02-12 00:49:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '23', '92', 'Ipsa quidem quam perspiciatis tempora expedita optio. Ducimus delectus quis veniam consequatur natus quos. Animi sint amet quibusdam rerum placeat qui in quod. Error et sunt dolor culpa optio harum dolor.', 'eius', 0, NULL, '2002-05-18 03:05:24', '1979-01-22 10:27:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '85', '81', 'Eum omnis et dicta saepe quas. Autem soluta sequi sint fugit repellat in libero. Est et praesentium velit et officiis corrupti architecto aut. Dolor deserunt iste aut quisquam non.', 'aperiam', 527557773, NULL, '1976-12-05 11:14:14', '2021-10-08 04:35:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '99', '6', 'Quia est neque consequatur ducimus est neque a. Nam non quos mollitia qui excepturi. Nostrum sit voluptas qui.', 'ea', 978073, NULL, '1995-01-31 16:43:56', '2019-11-11 22:10:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '25', '21', 'Nesciunt occaecati rem minus earum consequuntur dolore est. Laborum facilis doloremque laudantium tenetur explicabo doloribus nulla. Expedita inventore perspiciatis rerum eaque dolor id.', 'doloribus', 64, NULL, '2009-01-20 22:57:24', '1972-10-16 10:02:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '61', '68', 'Aut quod sed modi quos maxime qui ad. Quod aspernatur aut voluptatibus ratione. Doloremque eum dolores non ipsam debitis.', 'consequatur', 0, NULL, '1992-05-01 23:36:29', '2022-09-17 02:21:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '42', '12', 'Aut harum deserunt nulla omnis unde libero. Dolore omnis et tempora aspernatur natus est nobis. Totam qui cum neque dolorem laboriosam eos.', 'libero', 9, NULL, '2015-07-27 00:27:42', '1985-08-06 08:01:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '33', '36', 'Illum a optio et facere fuga. Eius sint aut voluptatem ex facilis et in.', 'sunt', 46027771, NULL, '1981-11-26 16:36:02', '1990-04-02 19:22:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '72', '7', 'Voluptatum corporis delectus nam quae. Est architecto mollitia et. Debitis sequi repellendus commodi beatae nisi voluptatem a. Voluptatibus vero et sed voluptatem.', 'rerum', 100, NULL, '2002-08-18 14:10:19', '1980-08-22 02:43:42');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'autem', '1972-10-02 13:28:13', '1974-12-22 21:56:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'aliquid', '1998-12-11 16:25:54', '2010-04-16 04:24:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'corporis', '1994-10-09 00:50:26', '2002-06-10 05:44:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'libero', '2005-02-02 18:01:59', '2011-06-25 09:41:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'voluptates', '1982-09-09 02:44:59', '1988-03-09 18:16:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'reprehenderit', '2010-01-01 09:32:35', '2000-08-26 12:41:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'qui', '1995-02-05 16:32:13', '1980-12-27 00:58:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'exercitationem', '2010-10-16 13:46:42', '2005-10-27 18:24:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'ullam', '1974-03-13 12:10:33', '2005-06-14 08:00:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'aut', '1977-09-08 09:44:09', '1999-05-22 06:54:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('11', 'velit', '1986-10-01 09:25:48', '1978-02-02 08:50:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('12', 'aut', '2017-06-30 09:08:44', '2004-09-08 05:25:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('13', 'harum', '1977-12-10 00:05:27', '1994-01-11 02:32:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('14', 'ut', '1979-05-10 21:12:28', '2004-05-31 16:50:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('15', 'doloremque', '2003-11-27 23:17:34', '1998-01-17 14:53:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('16', 'blanditiis', '2009-04-13 22:05:32', '2001-10-17 17:11:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('17', 'cupiditate', '2019-05-02 12:10:33', '2021-03-02 11:06:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('18', 'odit', '1989-07-23 00:48:19', '2018-04-14 20:46:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('19', 'vero', '1987-07-08 18:38:22', '1986-03-03 07:27:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('20', 'labore', '1980-04-08 02:13:09', '2013-11-27 13:19:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('21', 'doloremque', '1980-03-05 10:31:46', '2015-09-28 13:40:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('22', 'temporibus', '1995-07-01 20:12:01', '1997-06-21 12:51:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('23', 'quia', '1997-11-01 01:34:51', '2018-06-06 14:53:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('24', 'officiis', '2001-10-16 03:54:00', '1989-09-29 19:05:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('25', 'hic', '2001-07-30 23:57:39', '2009-02-15 16:30:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('26', 'doloribus', '2009-02-13 00:31:53', '1993-08-24 21:03:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('27', 'iure', '1999-08-01 00:50:38', '2017-12-10 11:35:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('28', 'est', '1978-04-27 03:03:21', '1982-04-17 15:35:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('29', 'non', '1971-04-05 19:12:10', '1975-10-31 00:54:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('30', 'ut', '1986-05-28 13:37:29', '1994-06-19 20:47:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('31', 'aut', '1998-04-10 05:32:40', '1990-08-16 01:50:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('32', 'voluptate', '2001-12-16 20:31:41', '1981-01-17 14:02:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('33', 'officiis', '1994-09-29 18:20:06', '1996-03-19 03:03:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('34', 'tenetur', '2009-11-21 20:04:15', '1988-05-12 19:03:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('35', 'quis', '1982-08-23 16:43:35', '2007-12-21 16:55:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('36', 'commodi', '1983-05-03 06:13:31', '2002-01-29 22:49:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('37', 'doloremque', '1996-09-28 22:28:21', '1986-09-18 20:15:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('38', 'mollitia', '1971-09-11 08:08:48', '1987-12-02 14:11:54');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('39', 'cupiditate', '2002-12-25 22:10:42', '1990-07-29 00:37:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('40', 'amet', '2000-07-01 13:01:29', '1979-03-22 21:49:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('41', 'quas', '2007-12-16 10:34:46', '1973-06-11 05:36:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('42', 'sed', '1997-01-24 02:39:23', '1981-01-16 01:21:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('43', 'omnis', '2022-01-11 23:23:25', '1995-08-09 07:10:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('44', 'natus', '1974-10-17 09:30:01', '1970-04-18 21:35:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('45', 'quia', '2000-04-27 08:19:40', '2003-07-09 21:04:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('46', 'rerum', '1985-06-26 08:36:18', '1990-03-30 19:54:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('47', 'minima', '2004-07-29 22:35:41', '2022-03-26 18:55:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('48', 'quo', '2012-09-13 19:48:11', '1998-02-18 18:03:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('49', 'velit', '1975-01-30 10:40:10', '1993-05-26 08:45:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('50', 'magni', '1984-04-22 16:30:26', '2001-06-16 02:37:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('51', 'nesciunt', '2007-05-16 18:19:03', '2000-04-24 21:50:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('52', 'et', '1988-04-07 18:43:13', '1993-01-22 13:38:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('53', 'harum', '1997-09-09 23:29:53', '2007-12-15 16:49:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('54', 'est', '1999-10-21 23:13:45', '1989-11-08 10:21:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('55', 'est', '2009-10-26 10:23:26', '1979-02-20 20:10:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('56', 'ex', '1991-04-04 19:35:59', '1991-07-12 00:06:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('57', 'ipsam', '1999-11-13 11:50:15', '2009-04-16 14:30:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('58', 'voluptas', '2013-03-24 03:10:19', '1970-02-14 04:52:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('59', 'sit', '1971-12-10 02:04:01', '2022-02-05 07:28:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('60', 'saepe', '1986-04-29 18:27:07', '2018-02-14 12:42:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('61', 'voluptas', '1986-04-21 20:22:42', '1979-07-11 02:42:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('62', 'velit', '1976-01-15 21:47:50', '2009-10-13 21:23:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('63', 'iusto', '2009-05-15 18:33:29', '1981-10-27 22:51:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('64', 'omnis', '2010-08-07 04:16:19', '1996-12-12 12:06:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('65', 'sequi', '1981-10-03 08:11:09', '2016-11-16 15:05:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('66', 'consequatur', '1970-06-09 17:24:15', '2012-01-28 19:07:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('67', 'quo', '2008-04-18 01:50:38', '1979-01-03 01:05:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('68', 'ab', '1972-11-19 11:36:49', '2010-05-05 02:45:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('69', 'est', '2001-02-24 16:57:17', '1996-07-18 22:12:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('70', 'id', '2005-04-04 19:44:36', '1998-04-07 16:28:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('71', 'dolorem', '2006-07-23 15:12:42', '2010-01-03 01:21:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('72', 'repellat', '2010-09-09 20:31:36', '1981-10-27 11:16:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('73', 'odio', '2010-07-11 23:46:17', '2010-01-12 23:29:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('74', 'ducimus', '1996-11-14 17:52:54', '1978-02-06 09:01:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('75', 'et', '2016-12-03 09:28:35', '2014-05-23 00:58:33');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('76', 'dolorem', '1973-10-09 19:04:51', '2009-10-06 07:41:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('77', 'autem', '2003-06-02 01:05:52', '1985-10-03 02:34:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('78', 'velit', '1985-08-01 18:05:47', '2004-08-23 11:43:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('79', 'corrupti', '1979-09-09 01:32:11', '1994-07-12 13:31:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('80', 'itaque', '2009-08-09 08:12:28', '1994-04-15 10:52:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('81', 'et', '1987-02-11 10:35:18', '1990-04-05 21:55:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('82', 'aspernatur', '1977-01-02 13:38:36', '1974-02-26 18:24:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('83', 'ab', '1998-09-19 03:25:12', '2002-08-22 16:58:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('84', 'est', '2020-08-23 19:55:57', '1982-01-21 23:17:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('85', 'quia', '2003-12-23 19:53:16', '2003-08-26 08:25:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('86', 'labore', '1970-06-28 10:36:36', '2015-01-24 15:22:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('87', 'officiis', '2005-10-26 21:09:41', '1997-04-22 06:18:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('88', 'consequuntur', '1999-06-24 16:12:40', '2008-10-15 23:00:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('89', 'sit', '1980-12-01 14:53:05', '1984-06-20 11:02:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('90', 'vel', '2018-02-09 11:22:19', '2021-08-27 18:48:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('91', 'sint', '1985-04-05 10:13:31', '2017-05-06 15:06:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('92', 'neque', '2014-10-12 00:41:01', '1987-01-11 23:10:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('93', 'dolores', '2010-07-30 08:40:32', '2012-12-02 12:48:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('94', 'ut', '2022-01-17 08:16:15', '1971-03-30 01:13:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('95', 'nam', '2012-11-13 21:43:39', '1989-09-03 23:10:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('96', 'ipsam', '1985-06-14 14:31:56', '1981-07-10 10:29:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('97', 'eos', '1971-12-01 12:53:56', '1990-03-13 22:49:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('98', 'nam', '2013-05-03 10:23:31', '2004-10-18 16:42:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('99', 'error', '2005-03-15 05:18:14', '1981-10-18 19:30:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('100', 'quas', '1987-09-23 12:54:26', '2020-05-19 22:50:08');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'similique', '43');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'et', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'veniam', '14');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'est', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'et', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'accusamus', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'ut', '91');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'dolores', '18');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'optio', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'aliquam', '38');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'distinctio', '14');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'odio', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'distinctio', '94');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'modi', '45');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'deserunt', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'dolor', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'ratione', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'mollitia', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'rerum', '48');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'ut', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'eaque', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'reiciendis', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'voluptatem', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'et', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'corporis', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'eum', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'dolor', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'magni', '68');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'eligendi', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'eum', '90');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'molestiae', '91');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'hic', '92');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'illo', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'nemo', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'saepe', '37');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'dignissimos', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'facere', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'necessitatibus', '28');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'eligendi', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'autem', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'voluptates', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'natus', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'consequatur', '92');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'quisquam', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'omnis', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'et', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'dolorem', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'et', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'et', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'labore', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'quidem', '35');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'ut', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'debitis', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'ut', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'voluptatum', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'necessitatibus', '55');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'qui', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'esse', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'sint', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'et', '34');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'autem', '75');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'aut', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'ad', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'fugiat', '92');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'et', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'quo', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'quia', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'ut', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'deleniti', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'voluptatem', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'ea', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'voluptates', '53');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'quia', '45');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'nesciunt', '55');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'quis', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'maxime', '88');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'similique', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'animi', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'voluptatibus', '57');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'repellendus', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'numquam', '95');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'rem', '91');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'aliquam', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'asperiores', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'ut', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'natus', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'sunt', '35');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'veniam', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'aspernatur', '100');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'rerum', '57');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'et', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'laborum', '75');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'numquam', '70');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'ut', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'qui', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'rem', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'enim', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'ducimus', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'est', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'beatae', '16');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '61', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '93', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '92', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '66', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '27', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '52', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '74', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '73', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '93', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '30', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '73', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '28', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '4', '13');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '39', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '48', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '9', '16');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '87', '17');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '20', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '92', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '1', '20');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('21', '83', '21');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('22', '52', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('23', '63', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('24', '57', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('25', '17', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('26', '81', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('27', '99', '27');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('28', '42', '28');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('29', '92', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('30', '96', '30');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('31', '18', '31');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('32', '52', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('33', '89', '33');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('34', '9', '34');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('35', '18', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('36', '15', '36');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('37', '60', '37');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('38', '91', '38');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('39', '88', '39');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('40', '53', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('41', '20', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('42', '60', '42');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('43', '81', '43');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('44', '24', '44');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('45', '98', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('46', '28', '46');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('47', '33', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('48', '85', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('49', '47', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('50', '24', '50');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('51', '85', '51');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('52', '29', '52');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('53', '76', '53');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('54', '48', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('55', '86', '55');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('56', '93', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('57', '29', '57');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('58', '85', '58');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('59', '34', '59');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('60', '21', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('61', '81', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('62', '52', '62');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('63', '72', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('64', '69', '64');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('65', '61', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('66', '90', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('67', '84', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('68', '21', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('69', '80', '69');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('70', '72', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('71', '73', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('72', '100', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('73', '31', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('74', '53', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('75', '24', '75');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('76', '29', '76');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('77', '81', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('78', '56', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('79', '13', '79');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('80', '27', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('81', '80', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('82', '98', '82');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('83', '56', '83');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('84', '56', '84');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('85', '46', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('86', '41', '86');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('87', '48', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('88', '75', '88');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('89', '25', '89');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('90', '82', '90');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('91', '95', '91');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('92', '5', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('93', '33', '93');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('94', '67', '94');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('95', '73', '95');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('96', '93', '96');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('97', '56', '97');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('98', '57', '98');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('99', '14', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('100', '36', '100');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_photo_id` (`photo_id`),
  CONSTRAINT `fk_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', 'f', '2012-03-23', '11', '2003-04-23 22:36:59', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', 'f', '1992-06-05', '17', '1990-01-28 11:57:29', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', 'f', '1985-07-01', '66', '1998-04-13 02:35:43', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', 'f', '1982-12-18', '53', '2016-09-24 02:52:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', 'm', '1989-05-15', '36', '2001-07-20 13:06:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', 'f', '1990-10-15', '96', '1986-08-18 03:01:24', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', 'm', '1991-04-21', '86', '2000-06-21 18:31:51', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', 'm', '1988-07-25', '16', '1972-12-07 19:43:37', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', 'm', '1978-08-08', '83', '1994-01-31 18:29:47', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', 'f', '2016-08-21', '80', '2021-06-29 19:07:50', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', 'f', '1971-05-13', '41', '1989-08-21 06:04:06', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', 'm', '2015-01-14', '45', '2019-08-13 16:20:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', 'm', '1971-08-13', '33', '1977-07-17 19:48:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', 'f', '2019-11-19', '2', '2016-07-23 08:01:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', 'm', '1990-07-06', '8', '1989-02-08 16:01:32', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', 'm', '1971-09-18', '72', '2021-10-02 01:13:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', 'm', '1999-07-05', '68', '2005-04-09 06:39:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', 'm', '2017-05-31', '78', '1981-08-26 19:29:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', 'm', '1983-11-06', '39', '1999-03-05 19:17:59', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', 'm', '2011-09-27', '33', '2007-11-01 04:35:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', 'm', '2011-12-28', '67', '1993-07-26 15:48:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', 'f', '2004-06-01', '7', '2015-05-24 05:04:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', 'm', '1972-02-26', '16', '2000-10-20 04:56:25', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', 'm', '2015-12-28', '15', '1975-07-18 11:16:47', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', 'f', '1971-08-18', '20', '1990-09-01 19:46:46', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', 'f', '1988-05-28', '78', '1989-05-14 07:46:38', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', 'm', '2003-01-09', '13', '1972-07-24 11:21:44', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', 'f', '1989-12-25', '49', '2010-07-31 07:58:33', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', 'm', '1990-06-10', '39', '1990-03-19 01:49:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', 'm', '1989-05-30', '65', '2009-07-02 17:22:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', 'm', '1976-01-21', '95', '2021-08-11 17:47:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', 'm', '1977-11-21', '49', '1995-06-14 16:55:50', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', 'm', '1998-08-26', '82', '2005-08-19 10:10:40', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', 'f', '2003-10-01', '60', '1981-01-20 02:31:35', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', 'm', '2001-05-24', '1', '2003-02-27 01:45:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', 'f', '1973-05-16', '17', '1974-07-31 08:30:18', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', 'f', '1985-02-10', '56', '1998-06-19 17:06:49', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', 'm', '2019-11-21', '87', '1984-06-17 16:22:53', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', 'f', '2008-07-10', '32', '1979-04-25 06:13:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', 'f', '2000-12-18', '38', '2005-04-11 07:25:07', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', 'f', '2001-05-05', '66', '1987-02-13 06:50:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', 'f', '2000-01-18', '73', '1971-08-26 21:43:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', 'f', '1994-08-09', '82', '1980-02-07 15:17:10', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', 'm', '2001-04-01', '99', '1970-04-24 21:51:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', 'f', '2011-08-24', '74', '1992-06-16 12:29:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', 'm', '2015-12-08', '89', '2018-01-19 00:31:15', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', 'm', '1978-12-09', '70', '1991-11-08 02:12:38', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', 'm', '2015-06-02', '42', '1989-07-15 12:26:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', 'f', '1982-08-08', '67', '2019-10-19 02:35:11', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', 'f', '1986-11-26', '8', '2019-11-20 07:38:10', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', 'f', '1984-10-31', '74', '1976-09-02 01:21:53', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', 'f', '1991-07-22', '33', '1986-06-06 13:33:35', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', 'm', '1984-09-12', '15', '1995-12-01 21:38:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', 'f', '2018-09-24', '90', '2008-03-27 00:22:05', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', 'm', '2020-06-04', '47', '1989-12-24 20:20:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', 'm', '1996-09-19', '35', '2020-09-20 05:48:49', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', 'f', '1983-03-06', '67', '2013-12-26 08:41:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', 'f', '2017-10-19', '60', '2008-12-11 09:14:46', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', 'm', '2012-09-03', '83', '1980-11-25 08:25:49', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', 'f', '2008-08-06', '6', '2014-05-26 13:45:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', 'f', '1980-05-07', '24', '2013-07-10 15:11:44', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', 'm', '2000-05-21', '78', '2006-07-03 09:46:35', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', 'f', '2017-10-29', '54', '1986-02-20 15:54:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', 'm', '1990-09-30', '5', '1995-11-02 06:56:18', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', 'f', '2010-02-21', '37', '1992-12-07 02:12:37', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', 'f', '2003-07-18', '54', '2018-09-02 00:43:46', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', 'm', '2003-07-20', '22', '1983-10-10 14:51:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', 'm', '1984-09-20', '93', '2011-12-11 19:56:41', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', 'm', '1988-10-29', '41', '1981-08-22 10:52:14', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', 'm', '1990-09-25', '53', '2016-09-05 08:28:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', 'm', '2014-05-19', '30', '1996-06-12 19:10:16', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', 'f', '2019-03-27', '7', '2003-12-16 05:10:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', 'f', '2000-04-22', '26', '1971-08-15 05:18:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', 'm', '1982-07-10', '12', '1996-08-24 22:43:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', 'f', '2008-03-19', '5', '1985-05-14 16:37:59', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', 'f', '1974-12-21', '100', '2021-06-25 18:20:35', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', 'f', '1985-08-15', '1', '1976-08-27 19:46:43', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', 'm', '1972-10-18', '74', '1990-04-30 05:13:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', 'm', '2021-10-31', '41', '2019-12-04 10:35:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', 'm', '2006-04-04', '67', '1982-02-24 15:00:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', 'm', '1972-05-06', '82', '1988-02-11 16:52:50', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', 'f', '1992-08-27', '15', '1988-04-16 20:04:24', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', 'm', '1995-09-05', '99', '1994-06-30 16:03:49', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', 'm', '2010-09-11', '97', '1983-06-19 04:07:32', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', 'm', '1993-08-31', '4', '2009-03-05 02:11:34', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', 'm', '1970-03-09', '46', '2014-11-22 22:29:15', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', 'm', '1972-04-09', '31', '2000-05-07 22:31:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', 'f', '1971-01-29', '71', '2009-08-12 12:00:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', 'f', '1985-08-05', '5', '2022-03-01 03:48:18', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', 'f', '1997-06-11', '14', '1983-12-10 16:04:51', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', 'f', '2004-04-22', '76', '2012-07-17 00:27:49', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', 'm', '1992-10-30', '29', '2011-08-02 21:39:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', 'f', '2021-06-23', '91', '2009-07-12 17:24:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', 'm', '1997-09-27', '30', '1980-01-25 01:32:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', 'm', '1987-03-01', '33', '1973-04-28 12:22:24', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', 'f', '1999-03-26', '28', '2008-11-25 04:54:07', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', 'f', '2000-11-03', '84', '2008-05-05 05:10:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', 'm', '2016-05-24', '54', '1977-02-18 13:48:10', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', 'm', '1995-08-08', '20', '1979-09-05 07:24:12', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', 'f', '1994-05-08', '24', '2007-11-26 00:00:53', NULL);


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Coy', 'Rutherford', 'dstreich@example.com', '2ed81d39c599827261c0823573e5777132d297d3', '89244665693', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Erick', 'Kreiger', 'klein.reilly@example.net', '03636373083d4adf692a5b5a448dedcef0b3e846', '89579423856', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Aubree', 'Gorczany', 'kristin55@example.org', 'fa40354589645ca5cbb3d799568d362b97116f91', '89539251960', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Evert', 'Hahn', 'price38@example.net', 'b45a47c6f38ea39e2390eff7f4675d47cc5b2029', '89821737925', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Fay', 'Schamberger', 'annamarie38@example.net', '1c2bb96cfa887c2e37f04c73fe44d9289adb4f44', '89563448949', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Coleman', 'Lemke', 'joany92@example.com', 'a8372c3e07965c8b7bd7c4060abf6db03eee913a', '89780554702', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Amos', 'Pagac', 'walter.connor@example.org', '89710516c64f935b2d52cb512e5ee1ab5a22ce20', '89167246697', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Aniyah', 'Kuvalis', 'muriel.beatty@example.com', 'f9e6fea009a8be5a4bdb983be0a34fe70bcab1c2', '89640372906', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Reggie', 'Pfeffer', 'luis82@example.com', '43bbf0ff7688a577df5a115aae1af231002f02d3', '89595754906', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Julius', 'Wolff', 'hpfannerstill@example.com', 'c62c47535263122d5489482714a94f324300cf02', '89454467833', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('11', 'Raymundo', 'Huels', 'welch.madge@example.org', '8a334f53adf182b7583daefedf1e494ec810ea6f', '89660374851', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('12', 'Ettie', 'Rath', 'uriel.bartell@example.com', '1a3b2ee0e61849c02e8ef83d144e3b587042261b', '89039555830', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('13', 'Hyman', 'Dare', 'alfonzo89@example.net', 'b0125514d0ed5905ff52ac989f0968372ee3fbcc', '89099864736', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('14', 'Khalid', 'Shanahan', 'reynold38@example.org', '904e69eba352dd4b721af1eebe4f95d082982520', '89205643564', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('15', 'Thad', 'Green', 'erdman.annabelle@example.com', '719120707db0f0901d7b3ab041650fe4cdb3db3e', '89209400598', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('16', 'Maryse', 'Towne', 'roosevelt08@example.com', 'bb89b7ed972a23783c0d6d06c9ca94ed7440ef9a', '89674962112', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('17', 'Timothy', 'Kuhn', 'zkuhic@example.net', 'f5def757fe02d85ba3a04cdde7015c81e4cd2127', '89094806607', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('18', 'Carey', 'Kris', 'awillms@example.com', '51784c641cb4dddb2357a93d547f39554e48c0d7', '89340816491', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('19', 'Esta', 'Stoltenberg', 'nikolaus.jimmy@example.com', '66d586e450ec236322134de40101d54d57d36224', '89877532246', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('20', 'Meredith', 'Walsh', 'balistreri.stefanie@example.net', '3fc10e23b9a6e94a902096c40b984cc34b989de8', '89472482830', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('21', 'Adaline', 'Rohan', 'miguel.hahn@example.net', '811ec050030068dd2f9338e974cbecc51cacc56a', '89957705922', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('22', 'Candida', 'Nolan', 'kirlin.miguel@example.org', 'e5c7f079e9a492a96d03185a79added5c5ab643b', '89262892549', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('23', 'Hailie', 'Abernathy', 'rhiannon13@example.com', '1fcf607e80222ccea07e24deaddba643624a3270', '89974600777', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('24', 'Gregory', 'Hagenes', 'ottis97@example.com', '079a4f24b25ce4d74a2fcbd0620af3a8b244ea22', '89958639217', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('25', 'Jacynthe', 'Lind', 'marquardt.orrin@example.com', 'a5a9ad330db8a005fb4501fb9b0a0a993e7c827d', '89714135291', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('26', 'Arturo', 'Flatley', 'bahringer.enos@example.net', 'c4affb0fed626f43ea81a3ebecc12227efe73646', '89449932953', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('27', 'Allene', 'Franecki', 'gerlach.emerson@example.com', 'c2490505bd7621015e927152b218f97811f99838', '89193937249', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('28', 'Ruth', 'Herman', 'qhuel@example.net', '3aa5b808858df23255d56bb456a88813cb1b72a3', '89835355548', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('29', 'Mya', 'Rempel', 'abbott.esther@example.org', 'f6fb122e7b1b95526109880ed4f29f2bb9dd722e', '89515618692', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('30', 'Kariane', 'Kshlerin', 'kennedi.douglas@example.net', '995dd2e932359a6a2fb5090016ca3892e34847be', '89402530821', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('31', 'Pamela', 'Moore', 'ebba.o\'hara@example.com', '1411f05023252f3010aaaaca302987c409fb5e65', '89239417589', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('32', 'Eric', 'Gibson', 'dulce.miller@example.com', 'acf5d2e3f96454a06dbeb35177823f94348d4a16', '89138133689', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('33', 'Carlee', 'Kuphal', 'berry.bartell@example.org', 'fd19296b31e5fba0221034357abba6f3e24ee9eb', '89664611606', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('34', 'Dena', 'Wolff', 'gsauer@example.org', 'ef2f7543543fe97b33d5b7590153cf41e9dfdfe5', '89002438793', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('35', 'Karen', 'Braun', 'sporer.marguerite@example.org', '2427aa66f45554c75996b8049de15f6b1d780af3', '89624312152', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('36', 'Jermain', 'Davis', 'zakary.bartell@example.net', 'd1dcd5574e62f861d47250ab43f538d539a9ade7', '89173821306', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('37', 'Isaiah', 'Schiller', 'irving.cruickshank@example.net', '3d3d17524667064833ee8a7e65418cecae1ff4af', '89544867760', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('38', 'Bertha', 'VonRueden', 'considine.boris@example.org', '0bb0a71101374f5a7da0c2499c81b489123fdd95', '89272660817', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('39', 'Queenie', 'Hermann', 'zledner@example.com', 'dae46e6ea746be8723ec6ca01059948192bf406b', '89719857553', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('40', 'Sandra', 'Mayer', 'kaci.champlin@example.org', '06e411587f582606ef0ec754253f3536e20a5cfa', '89723343276', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('41', 'Linnea', 'Adams', 'lspinka@example.org', '3ecae6e9742cdaa4775202610cc5f9a71fea1619', '89138361799', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('42', 'Peggie', 'Brekke', 'markus.marks@example.org', 'a3647ea89a669beaab75913cb1c87f14da756d1d', '89843168736', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('43', 'Antonia', 'Leffler', 'runolfsdottir.domenick@example.net', '5ea98d24d8e3ece4c31fb6f485ee17f1b96ca2c1', '89878883348', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('44', 'Francisca', 'Kling', 'duane.koelpin@example.com', 'a0d5c3097b0080436794e25d5c113dba53314a05', '89670773238', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('45', 'Chris', 'Lowe', 'jany.bartell@example.org', '4661d8ca8b9a606ba869dd224b072455df8cda6d', '89597329187', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('46', 'Hollie', 'Schneider', 'hbecker@example.com', '3825fae40675eb897d5797b58b2823ce2d7ed4b6', '89543603162', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('47', 'Dario', 'Wolf', 'salma52@example.com', '9d3d349fe3a4d2b7b0c00f457af96acbde2b6837', '89255320202', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('48', 'Libbie', 'Renner', 'cdooley@example.com', 'dcefbc286fa057428a6deab1095609da21cb0f54', '89397189340', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('49', 'Kennith', 'Donnelly', 'valentin.konopelski@example.net', '3f50089dfefcc0e0e680a9ac578559ae0c791806', '89679442280', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('50', 'Destini', 'Williamson', 'memmerich@example.net', '8bff359051a570603178788a0b37a604df2842d9', '89794006120', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('51', 'Abigayle', 'Hodkiewicz', 'ocie73@example.org', '3543154f1ca4a65ec83f7a168618149aca538d51', '89304908945', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('52', 'Hilma', 'Predovic', 'skunde@example.net', 'b1d7fbbc0cd607f37e6ccb13bf6109cbb52addf8', '89391208782', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('53', 'Madge', 'Purdy', 'kankunding@example.org', 'ca5bfbe696880ac7084238cbb43427a5ece7ac09', '89922879466', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('54', 'Yvonne', 'Roob', 'jabari00@example.net', '209831836f92c3b194b85d7e59977da4c64ade82', '89779775728', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('55', 'Wiley', 'Reinger', 'althea.olson@example.com', '327640e5496c6cb6a67142251a75e2c74c62db2b', '89499145301', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('56', 'Elna', 'Beier', 'terence89@example.org', '03489dc6bfd539fd27ef8e5b7d93868c7fda7d74', '89025523849', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('57', 'Josefina', 'Hoppe', 'braun.jerry@example.net', '41685c02e51f0dd1ab5f91e896d1a9cafca2678e', '89757632737', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('58', 'Tristian', 'Wolff', 'ferry.kennedi@example.com', '799b746041ae46765168d60bd71987a1e2095e65', '89674202381', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('59', 'Jessika', 'Moen', 'bertram.klein@example.org', '482fe17be656b037479b0b5dc87c774d4b9cf0d0', '89975963337', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('60', 'Amber', 'Grant', 'tatyana35@example.com', 'd98ab7ebed5fa7a55345640b8298a7c0ce538edb', '89151552012', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('61', 'Alexa', 'Kuhlman', 'predovic.hershel@example.net', 'e3958693430519bb63a9c1994ec9abda5b0a7eb2', '89319973192', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('62', 'Emmanuel', 'Franecki', 'tgerlach@example.com', '002988259e3e7f646b85b06f39aef4f71ade5b99', '89589732583', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('63', 'Triston', 'Lakin', 'bartell.liza@example.com', '609be4a007569c01560b50b922a1e60bdfea57dc', '89213788382', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('64', 'Terrence', 'Wyman', 'hollie70@example.org', '9f3d4142350f962fa32ac17fef47b7e3a883e407', '89623739979', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('65', 'Haleigh', 'Mayert', 'iharber@example.net', '761860db0e1cac555665537b7d882426065d1258', '89715363146', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('66', 'Leann', 'Gutkowski', 'cwaters@example.com', '017d0ff074db044d258cba2ea953079d9f8bdf1b', '89886595014', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('67', 'Laurianne', 'Kerluke', 'qmuller@example.com', '6dcf66000c45705839cef4d28551168727c1a130', '89657036364', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('68', 'Walker', 'Goyette', 'cassin.johanna@example.com', 'ed40d90f2462c600e6accd5ce6c9f42091228708', '89806468064', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('69', 'Eloise', 'Padberg', 'wschamberger@example.com', '207b9c5bc6e231c23dfd951171e96d30bf907832', '89824318798', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('70', 'Sarah', 'Greenholt', 'wisozk.ernie@example.net', 'e404ced756896c4402f11c6598515324c55cb45d', '89378471701', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('71', 'Rosalyn', 'Auer', 'dschiller@example.org', 'd357ee33089568d5afc26de5f38c63476067534b', '89043451682', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('72', 'Marianna', 'Kovacek', 'vonrueden.owen@example.org', '37ce9d9d7684caa67c1253d2bed9a69cc77df1ec', '89119975356', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('73', 'Danielle', 'Douglas', 'tyshawn76@example.org', 'fbf24fe846197787d501939994f8cae12c04c8b2', '89269208643', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('74', 'Fidel', 'Cole', 'zo\'keefe@example.com', 'c743cff40e50782497f08f5bf08bfeeaa459820f', '89342698876', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('75', 'Leonard', 'Wilkinson', 'nelle.hyatt@example.org', 'a55bf9f2311a3f582c39db03af5231f80c76c31d', '89111536725', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('76', 'Golda', 'Luettgen', 'raleigh.reilly@example.net', '07bcd8a582024f4bd5ac514b3f4a4815af1a343a', '89264379519', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('77', 'Rosalind', 'Huel', 'watsica.eugene@example.com', 'd34f75fd737465a817f807d281bb5a8f67af00c9', '89620170824', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('78', 'Alvina', 'Schuster', 'muriel17@example.org', '850b931203bb7e06f0aed25ce069fa737f49a6a1', '89739272287', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('79', 'Seth', 'McClure', 'wilson.witting@example.net', '48bbae38fd949cdf09371cbd1ffc388865da755f', '89035147225', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('80', 'Elwin', 'Kulas', 'oo\'connell@example.org', 'becf5aba8142f6b2d0fba35c87ab0d5ead98cc60', '89668387433', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('81', 'Ervin', 'Gislason', 'astrid58@example.net', '77872b4b92397c7ed66c94f35ebda35801a561ee', '89180696996', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('82', 'Santiago', 'Bashirian', 'declan59@example.org', '4cf36c7d4466cdd0394e64cf30725a6aa9afb0dd', '89211913710', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('83', 'Damon', 'Smith', 'phackett@example.net', '96aeef6f6ddc63f6e72e146d1ab4021ab1db6332', '89412060411', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('84', 'Ronny', 'Klocko', 'jast.fritz@example.org', '9746bb273bdb0818db809bcab088875e5e3c3247', '89538141977', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('85', 'Kristofer', 'Walker', 'hodkiewicz.felton@example.org', '041f139fc74d8ef0d251be45bfd90733cf16a205', '89647563820', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('86', 'Malachi', 'Bradtke', 'ortiz.willow@example.org', 'd6692d67448b230945e7c37f0593defd38f1fc92', '89724540712', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('87', 'Ismael', 'Harris', 'justine.kozey@example.com', '5d67281a2307c6bfcbc8dd96c2ece89a0e5765ae', '89297156511', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('88', 'Lenore', 'Rohan', 'lula.hills@example.org', 'd16307e856527f18a3bb62f2c69aeda52281da37', '89968557026', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('89', 'Marjory', 'Dickinson', 'dsimonis@example.org', 'a752ed69f6a49700b3af263e053675ef0ca45ea5', '89788049250', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('90', 'Ismael', 'Fadel', 'nmurphy@example.net', '8e1ab229ee3eed7c38df9f373fbd3713473a2655', '89442570695', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('91', 'Asha', 'Gulgowski', 'caterina13@example.net', 'e6030324336ec6cc7119d4dd8a1a61f964dbeeb1', '89554726530', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('92', 'Brown', 'Jacobi', 'ottilie94@example.net', 'eb20fe5c3f556d42410ea873c5d88ece639c3543', '89673464544', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('93', 'Ralph', 'Koelpin', 'd\'amore.iva@example.org', 'bb88f6ed7b5db7d06b6132202f56cae42f3b1187', '89124054723', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('94', 'Shanie', 'Osinski', 'hester.simonis@example.com', '1f17125121ec9132f355777efd0de42dd9a073dd', '89833830700', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('95', 'Montana', 'Gulgowski', 'bking@example.org', '9d978b445ef0d61cc05f4a2400ca40e5621a7923', '89397881954', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('96', 'Martine', 'Muller', 'ugoyette@example.org', 'd0c8b5f645f162bf2bc470900db597a97f106cf4', '89645904353', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('97', 'Destinee', 'Collins', 'gkirlin@example.net', '840c00a333de63ef5d6e40b3c5f367bb1bb52c22', '89921178305', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('98', 'Antonina', 'Frami', 'nfeil@example.org', 'f9ccd4372d99000305afa8ee0e74db92aaceb0c2', '89155629107', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('99', 'Arnulfo', 'Rice', 'wisozk.syble@example.net', '9107a852e07ab8f5ea3c1e62da8e69ae26cab733', '89874620752', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('100', 'Lucius', 'Sanford', 'brakus.wilhelmine@example.org', '69bad7cbf10c6b93abad349b618d7da31d0d5d14', '89897734713', '0');


