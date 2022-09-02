# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.15)
# Database: annaler_development
# Generation Time: 2016-11-17 16:15:09 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table activities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `activities`;

CREATE TABLE `activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `limit_user` int(11) DEFAULT NULL,
  `other_table_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `column_num` int(11) DEFAULT NULL,
  `column_detail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;

INSERT INTO `activities` (`id`, `date`, `time`, `title`, `content`, `limit_user`, `other_table_name`, `created_at`, `updated_at`, `column_num`, `column_detail`)
VALUES
	(114,'2016-10-28','16:14:00','米築','<p>米築</p>\r\n',1,'PULGUMYF','2016-10-28 08:14:54','2016-10-28 08:15:04',2,'{\"GZKKWBRY_1\":\"米築1\", \"WVKSSYFN_2\":\"美麗華\"}');

/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ar_internal_metadata
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ar_internal_metadata`;

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`)
VALUES
	('environment','development','2016-10-17 08:46:10','2016-10-17 08:46:10');

/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cates`;

CREATE TABLE `cates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `cates` WRITE;
/*!40000 ALTER TABLE `cates` DISABLE KEYS */;

INSERT INTO `cates` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'最新消息','2016-10-18 09:40:00','2016-10-18 09:40:00'),
	(2,'關於智慧財產權','2016-10-18 09:40:13','2016-10-18 09:40:13');

/*!40000 ALTER TABLE `cates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ckeditor_assets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ckeditor_assets`;

CREATE TABLE `ckeditor_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_file_name` varchar(255) NOT NULL,
  `data_content_type` varchar(255) DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `assetable_id` int(11) DEFAULT NULL,
  `assetable_type` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ckeditor_assetable_type` (`assetable_type`,`type`,`assetable_id`),
  KEY `idx_ckeditor_assetable` (`assetable_type`,`assetable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table footers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `footers`;

CREATE TABLE `footers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_ch` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `address_ch` varchar(255) DEFAULT NULL,
  `address_en` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sub_ch` varchar(255) DEFAULT NULL,
  `sub_en` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `content_ch` text,
  `content_en` text,
  `service_en` varchar(255) DEFAULT NULL,
  `service_ch` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `footers` WRITE;
/*!40000 ALTER TABLE `footers` DISABLE KEYS */;

INSERT INTO `footers` (`id`, `title_ch`, `title_en`, `address_ch`, `address_en`, `tel`, `email`, `sub_ch`, `sub_en`, `created_at`, `updated_at`, `fax`, `content_ch`, `content_en`, `service_en`, `service_ch`)
VALUES
	(1,'勵傑國際智慧財產權事務所','Horizon Intellectual Property Office','30068新竹市東大路一段十五號二樓','The second floor of a section of East Da Road, Hsinchu City','886-3-5620101','horizon.office@msa.hinet.net','Copyright © 2016 Horizon Intellectual Property Office. All rights reserved','Copyright © 2016 Horizon Intellectual Property Office. All rights reserved','2016-10-17 08:47:18','2016-10-17 09:01:47','886-3-5627075',NULL,NULL,NULL,NULL),
	(4,'','','','','','','','1','2016-10-18 08:37:03','2016-10-19 03:18:53','','<p>◎受聘企業法人及個人常年法律暨智慧財產權顧問</p>\r\n\r\n<p>◎受聘企業法人智慧財產權講習及相關教育訓練課程</p>\r\n\r\n<p>◎專業承辦國內外專利、商標、著作權申請及維護等相關程序</p>\r\n\r\n<p>◎提供專利、商標及著作權分析、規劃、保護、規避、侵害及救濟</p>\r\n\r\n<p>◎提供智慧財產權評價、技術移轉及相關諮詢服務</p>\r\n\r\n<p>◎提供專利、商標、著作權之檢索、調查、分析、規劃及法規諮詢</p>\r\n\r\n<p>◎提供商標文字、圖形設計服務</p>\r\n\r\n<p>◎專業承辦國內及國際民、刑事訴訟、非訟案件及智權法訴訟</p>\r\n\r\n<p>◎提供撰擬契約、章程、工商書信、證件等各類文件與翻譯及公證服務</p>\r\n\r\n<p>◎代為研究法律問題，提供書面意見</p>\r\n','<P> ◎ Consultant for legal and intellectual property rights of legal person and individual employed by the enterprise for a long time </ p>\n\n<P> ◎ Employed corporate intellectual property rights and related education and training courses </ p>\n\n<P> ◎ professional contractors at home and abroad patent, trademark, copyright application and maintenance and other related procedures </ p>\n\n<P> Provide patent, trademark and copyright analysis, planning, protection, circumvention, infringement and relief </ p>\n\n<P> ◎ Provide intellectual property rights evaluation, technology transfer and related consulting services </ p>\n\n<P> ◎ Provide patent, trademark, copyright search, investigation, analysis, planning and regulatory advice </ p>\n\n<P> ◎ provide trademark text, graphic design services </ p>\n\n<P> ◎ Professional contractors in domestic and international civil, criminal, non-litigation and intellectual property lawsuits </ p>\n\n<P> ◎ to provide written contract, charter, business letters, documents and other documents and translation and notarization services </ p>\n\n<P> ◎ on behalf of the study of legal issues, to provide written comments </ p>',NULL,NULL),
	(5,'','','','','','','2','1','2016-10-18 08:37:08','2016-11-16 08:00:13','','<p>勵傑國際智慧財產權事務所成立於1999年，是一個人才濟濟、且充滿熱忱與活力的服務團隊，本所具有多位法律顧問、專業代理人、智慧財產權顧問、並與多名有訴訟經驗律師合作以滿足客戶各類需求。</p>\r\n\r\n<p>在現今智慧財產權法律保障演變甚為快速暨繁瑣之際，為您精確分析、充分掌握資訊、讓您事半功倍贏得先機，另外本所以熱忱、關懷及服務為核心價值，並以廣納優秀人才、重視經驗傳承、強調專業創新、發揮團隊合作，以及實現永續經營為宗旨。</p>\r\n\r\n<p>未來更將一本初衷為所有客戶在智慧財產權之領域中以最合理之收費，做最專業、最優質之服務。</p>\r\n','<P> ◎ Consultant for legal and intellectual property rights of legal person and individual employed by the enterprise for a long time </ p>\n\n<P> ◎ Employed corporate intellectual property rights and related education and training courses </ p>\n\n<P> ◎ professional contractors at home and abroad patent, trademark, copyright application and maintenance and other related procedures </ p>\n\n<P> Provide patent, trademark and copyright analysis, planning, protection, circumvention, infringement and relief </ p>\n\n<P> ◎ Provide intellectual property rights evaluation, technology transfer and related consulting services </ p>\n\n<P> ◎ Provide patent, trademark, copyright search, investigation, analysis, planning and regulatory advice </ p>\n\n<P> ◎ provide trademark text, graphic design services </ p>\n\n<P> ◎ Professional contractors in domestic and international civil, criminal, non-litigation and intellectual property lawsuits </ p>\n\n<P> ◎ to provide written contract, charter, business letters, documents and other documents and translation and notarization services </ p>\n\n<P> ◎ on behalf of the study of legal issues, to provide written comments </ p>',NULL,NULL);

/*!40000 ALTER TABLE `footers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table msgs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `msgs`;

CREATE TABLE `msgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `cate_id` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `msgs` WRITE;
/*!40000 ALTER TABLE `msgs` DISABLE KEYS */;

INSERT INTO `msgs` (`id`, `title`, `cate_id`, `content`, `created_at`, `updated_at`, `user_id`)
VALUES
	(1,'關於智慧財產權','2','<p>勵傑國際智慧財產權事務所成立於1999年，是一個人才濟濟、且充滿熱忱與活力的服務團隊，本所具有多位法律顧問、專業代理人、智慧財產權顧問、並與多名有訴訟經驗律師合作以滿足客戶各類需求。</p>\r\n\r\n<p>在現今智慧財產權法律保障演變甚為快速暨繁瑣之際，為您精確分析、充分掌握資訊、讓您事半功倍贏得先機，另外本所以熱忱、關懷及服務為核心價值，並以廣納優秀人才、重視經驗傳承、強調專業創新、發揮團隊合作，以及實現永續經營為宗旨。</p>\r\n\r\n<p>未來更將一本初衷為所有客戶在智慧財產權之領域中以最合理之收費，做最專業、最優質之服務。</p>\r\n','2016-10-18 09:41:11','2016-10-19 02:56:29',1),
	(2,'22','1','<p>33</p>\r\n','2016-10-18 09:41:18','2016-10-18 09:41:18',1),
	(3,'44','2','<p>555</p>\r\n','2016-10-18 09:41:24','2016-10-18 09:41:24',1);

/*!40000 ALTER TABLE `msgs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table other_LBRBBDEX
# ------------------------------------------------------------

DROP TABLE IF EXISTS `other_LBRBBDEX`;

CREATE TABLE `other_LBRBBDEX` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TRBYBXUX_1` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `other_LBRBBDEX` WRITE;
/*!40000 ALTER TABLE `other_LBRBBDEX` DISABLE KEYS */;

INSERT INTO `other_LBRBBDEX` (`id`, `TRBYBXUX_1`, `name`, `sex`, `phone`, `birthday`, `address`, `email`, `created_at`, `updated_at`)
VALUES
	(1,'1','1','1','1','2016-11-11','1','1','2016-11-11 00:00:00','2016-11-11 00:00:00');

/*!40000 ALTER TABLE `other_LBRBBDEX` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table other_PULGUMYF
# ------------------------------------------------------------

DROP TABLE IF EXISTS `other_PULGUMYF`;

CREATE TABLE `other_PULGUMYF` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `GZKKWBRY_1` varchar(255) DEFAULT NULL,
  `WVKSSYFN_2` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `other_PULGUMYF` WRITE;
/*!40000 ALTER TABLE `other_PULGUMYF` DISABLE KEYS */;

INSERT INTO `other_PULGUMYF` (`id`, `GZKKWBRY_1`, `WVKSSYFN_2`, `name`, `sex`, `phone`, `birthday`, `address`, `email`, `created_at`, `updated_at`)
VALUES
	(1,'8789','3','123','1','123','2016-10-28','97','9879','2016-10-28 17:43:03','2016-10-28 17:43:03'),
	(2,'8789','3','123','1','123','2016-10-28','97','9879','2016-10-28 17:43:03','2016-10-28 17:43:03'),
	(3,'98','9123','123qwe','1','22','2016-10-28','98','98','2016-10-28 17:44:03','2016-10-28 17:44:03'),
	(4,'98','9123','123qwe','1','22','2016-10-28','98','98','2016-10-28 17:44:03','2016-10-28 17:44:03'),
	(5,'33','333','11','1','111','2016-10-29','222','22','2016-10-29 14:11:59','2016-10-29 14:11:59'),
	(6,'797','98','2','1','2','2016-10-30','ui','8989','2016-10-30 15:12:06','2016-10-30 15:12:06'),
	(7,'797','98','2','1','2','2016-10-30','ui','8989','2016-10-30 15:12:06','2016-10-30 15:12:06'),
	(8,'797','98','2','1','2','2016-10-30','ui','8989','2016-10-30 15:12:06','2016-10-30 15:12:06'),
	(9,'33','444','qq','2','qqq','2016-11-10','11','22','2016-11-10 15:48:57','2016-11-10 15:48:57');

/*!40000 ALTER TABLE `other_PULGUMYF` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table other_QPWFBIHL
# ------------------------------------------------------------

DROP TABLE IF EXISTS `other_QPWFBIHL`;

CREATE TABLE `other_QPWFBIHL` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MEYICYXE_1` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table other_VXQBXBXJ
# ------------------------------------------------------------

DROP TABLE IF EXISTS `other_VXQBXBXJ`;

CREATE TABLE `other_VXQBXBXJ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `XLSIQFEL_1` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table resumes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `resumes`;

CREATE TABLE `resumes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `resumes` WRITE;
/*!40000 ALTER TABLE `resumes` DISABLE KEYS */;

INSERT INTO `resumes` (`id`, `name`, `attachment`, `created_at`, `updated_at`)
VALUES
	(9,'愛','12247109_1226451107370972_7448280937401119228_n.jpg','2016-10-30 02:39:48','2016-10-30 02:39:48');

/*!40000 ALTER TABLE `resumes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20161011090140'),
	('20161011090229'),
	('20161011090529'),
	('20161012061052'),
	('20161012094432'),
	('20161012094450'),
	('20161013112128'),
	('20161013112129'),
	('20161017062618'),
	('20161017072426'),
	('20161019033758'),
	('20161019085204'),
	('20161020060809'),
	('20161020072825'),
	('20161027075303'),
	('20161116075256');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table table_refs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `table_refs`;

CREATE TABLE `table_refs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activite_id` int(11) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `column_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `table_refs` WRITE;
/*!40000 ALTER TABLE `table_refs` DISABLE KEYS */;

INSERT INTO `table_refs` (`id`, `activite_id`, `table_name`, `column_name`, `name`, `created_at`, `updated_at`)
VALUES
	(2,12,'ta','cn','name','2016-10-20 07:40:31','2016-10-20 07:40:31');

/*!40000 ALTER TABLE `table_refs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `provider`, `uid`, `name`, `level`)
VALUES
	(1,'nvizero@yahoo.com.tw','$2a$11$8x85DxearHjGpJ0XGKKAg.oP2ID/3qHN.5ZPAbBS64p6Mn6XKHjve',NULL,NULL,NULL,19,'2016-11-16 07:59:19','2016-11-10 07:49:19','::1','::1','2016-10-17 08:46:37','2016-11-16 07:59:19',NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
