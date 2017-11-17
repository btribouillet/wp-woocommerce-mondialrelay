# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.2.6-MariaDB)
# Database: woocommerce-mondialrelay-test
# Generation Time: 2017-11-17 15:48:05 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table wpwc_commentmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_commentmeta`;

CREATE TABLE `wpwc_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wpwc_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_comments`;

CREATE TABLE `wpwc_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wpwc_comments` WRITE;
/*!40000 ALTER TABLE `wpwc_comments` DISABLE KEYS */;

INSERT INTO `wpwc_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`)
VALUES
	(1,1,'Un commentateur WordPress','wapuu@wordpress.example','https://wordpress.org/','','2016-12-14 23:46:34','2016-12-14 22:46:34','Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);

/*!40000 ALTER TABLE `wpwc_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wpwc_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_links`;

CREATE TABLE `wpwc_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wpwc_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_options`;

CREATE TABLE `wpwc_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wpwc_options` WRITE;
/*!40000 ALTER TABLE `wpwc_options` DISABLE KEYS */;

INSERT INTO `wpwc_options` (`option_id`, `option_name`, `option_value`, `autoload`)
VALUES
	(1,'siteurl','http://test.mondialrelay-woocommerce.test','yes'),
	(2,'home','http://test.mondialrelay-woocommerce.test','yes'),
	(3,'blogname','Wordpress WooCommerce','yes'),
	(4,'blogdescription','Wordpress de test pour le plugin WooCommerce Mondial Relay','yes'),
	(5,'users_can_register','0','yes'),
	(6,'admin_email','admin@admin.com','yes'),
	(7,'start_of_week','1','yes'),
	(8,'use_balanceTags','0','yes'),
	(9,'use_smilies','1','yes'),
	(10,'require_name_email','1','yes'),
	(11,'comments_notify','1','yes'),
	(12,'posts_per_rss','10','yes'),
	(13,'rss_use_excerpt','0','yes'),
	(14,'mailserver_url','mail.example.com','yes'),
	(15,'mailserver_login','login@example.com','yes'),
	(16,'mailserver_pass','password','yes'),
	(17,'mailserver_port','110','yes'),
	(18,'default_category','1','yes'),
	(19,'default_comment_status','open','yes'),
	(20,'default_ping_status','open','yes'),
	(21,'default_pingback_flag','1','yes'),
	(22,'posts_per_page','10','yes'),
	(23,'date_format','j F Y','yes'),
	(24,'time_format','G \\h i \\m\\i\\n','yes'),
	(25,'links_updated_date_format','j F Y G \\h i \\m\\i\\n','yes'),
	(26,'comment_moderation','0','yes'),
	(27,'moderation_notify','1','yes'),
	(28,'permalink_structure','','yes'),
	(29,'rewrite_rules','','yes'),
	(30,'hack_file','0','yes'),
	(31,'blog_charset','UTF-8','yes'),
	(32,'moderation_keys','','no'),
	(33,'active_plugins','a:2:{i:0;s:53:\"woocommerce-mondialrelay/woocommerce-mondialrelay.php\";i:1;s:27:\"woocommerce/woocommerce.php\";}','yes'),
	(34,'category_base','','yes'),
	(35,'ping_sites','http://rpc.pingomatic.com/','yes'),
	(36,'comment_max_links','2','yes'),
	(37,'gmt_offset','0','yes'),
	(38,'default_email_category','1','yes'),
	(39,'recently_edited','','no'),
	(40,'template','storefront','yes'),
	(41,'stylesheet','storefront','yes'),
	(42,'comment_whitelist','1','yes'),
	(43,'blacklist_keys','','no'),
	(44,'comment_registration','0','yes'),
	(45,'html_type','text/html','yes'),
	(46,'use_trackback','0','yes'),
	(47,'default_role','subscriber','yes'),
	(48,'db_version','38590','yes'),
	(49,'uploads_use_yearmonth_folders','1','yes'),
	(50,'upload_path','','yes'),
	(51,'blog_public','1','yes'),
	(52,'default_link_category','2','yes'),
	(53,'show_on_front','page','yes'),
	(54,'tag_base','','yes'),
	(55,'show_avatars','1','yes'),
	(56,'avatar_rating','G','yes'),
	(57,'upload_url_path','','yes'),
	(58,'thumbnail_size_w','150','yes'),
	(59,'thumbnail_size_h','150','yes'),
	(60,'thumbnail_crop','1','yes'),
	(61,'medium_size_w','300','yes'),
	(62,'medium_size_h','300','yes'),
	(63,'avatar_default','mystery','yes'),
	(64,'large_size_w','1024','yes'),
	(65,'large_size_h','1024','yes'),
	(66,'image_default_link_type','none','yes'),
	(67,'image_default_size','','yes'),
	(68,'image_default_align','','yes'),
	(69,'close_comments_for_old_posts','0','yes'),
	(70,'close_comments_days_old','14','yes'),
	(71,'thread_comments','1','yes'),
	(72,'thread_comments_depth','5','yes'),
	(73,'page_comments','0','yes'),
	(74,'comments_per_page','50','yes'),
	(75,'default_comments_page','newest','yes'),
	(76,'comment_order','asc','yes'),
	(77,'sticky_posts','a:0:{}','yes'),
	(78,'widget_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(81,'uninstall_plugins','a:0:{}','no'),
	(82,'timezone_string','Europe/Paris','yes'),
	(83,'page_for_posts','0','yes'),
	(84,'page_on_front','2','yes'),
	(85,'default_post_format','0','yes'),
	(86,'link_manager_enabled','0','yes'),
	(87,'finished_splitting_shared_terms','1','yes'),
	(88,'site_icon','0','yes'),
	(89,'medium_large_size_w','768','yes'),
	(90,'medium_large_size_h','0','yes'),
	(91,'initial_db_version','38590','yes'),
	(92,'wpwc_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:131:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop Manager\";s:12:\"capabilities\";a:109:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}}','yes'),
	(93,'fresh_site','0','yes'),
	(94,'WPLANG','fr_FR','yes'),
	(95,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(96,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(97,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(98,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(99,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(100,'sidebars_widgets','a:1:{s:19:\"wp_inactive_widgets\";a:0:{}}','yes'),
	(101,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(102,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(103,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(104,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(105,'cron','a:9:{i:1510936976;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1510958795;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1510959077;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1510959600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1510976576;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1511019748;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1511019776;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1512432000;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}','yes'),
	(122,'can_compress_scripts','0','no'),
	(139,'current_theme','Storefront','yes'),
	(140,'theme_mods_storefront','a:5:{i:0;b:0;s:17:\"storefront_styles\";s:5060:\"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #333333;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #333333;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #838383;\n			}\n\n			table th {\n				background-color: #f8f8f8;\n			}\n\n			table tbody td {\n				background-color: #fdfdfd;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #fbfbfb;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #ffffff;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #6d6d6d;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #333333;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #ffffff;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #333333;\n			}\n\n			.widget h1 {\n				border-bottom-color: #333333;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #6d6d6d;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #9f9f9f;\n			}\n\n			a  {\n				color: #96588a;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type=\"button\"]:focus,\n			input[type=\"reset\"]:focus,\n			input[type=\"submit\"]:focus {\n				outline-color: #96588a;\n			}\n\n			button, input[type=\"button\"], input[type=\"reset\"], input[type=\"submit\"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #eeeeee;\n				border-color: #eeeeee;\n				color: #333333;\n			}\n\n			button:hover, input[type=\"button\"]:hover, input[type=\"reset\"]:hover, input[type=\"submit\"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			button.alt, input[type=\"button\"].alt, input[type=\"reset\"].alt, input[type=\"submit\"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #333333;\n				border-color: #333333;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type=\"button\"].alt:hover, input[type=\"reset\"].alt:hover, input[type=\"submit\"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #1a1a1a;\n				border-color: #1a1a1a;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #e6e6e6;\n				color: #6d6d6d;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #f8f8f8;\n			}\n\n			.site-footer {\n				background-color: #f0f0f0;\n				color: #6d6d6d;\n			}\n\n			.site-footer a:not(.button) {\n				color: #333333;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #333333;\n			}\n\n			#order_review {\n				background-color: #ffffff;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #fafafa;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #f5f5f5;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #f0f0f0;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #868686;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #6d6d6d;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #f0f0f0;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #f5f5f5;\n				}\n\n				.site-header {\n					border-bottom-color: #f0f0f0;\n				}\n			}\";s:29:\"storefront_woocommerce_styles\";s:2283:\"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #333333;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #ffffff;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #6d6d6d;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #9f9f9f;\n			}\n\n			.onsale {\n				border-color: #6d6d6d;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #96588a;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #96588a;\n			}\n\n			.order_details {\n				background-color: #f8f8f8;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #e3e3e3;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#f8f8f8 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#f8f8f8 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #6d6d6d;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #96588a;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #eeeeee;\n				color: #333333;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			.button.loading {\n				color: #eeeeee;\n			}\n\n			.button.loading:hover {\n				background-color: #eeeeee;\n			}\n\n			.button.loading:after {\n				color: #333333;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #6d6d6d;\n				}\n			}\";s:18:\"custom_css_post_id\";i:18;s:39:\"storefront_woocommerce_extension_styles\";s:0:\"\";}','yes'),
	(141,'theme_switched','','yes'),
	(149,'woocommerce_default_country','FR','yes'),
	(150,'woocommerce_allowed_countries','all','yes'),
	(151,'woocommerce_all_except_countries','','yes'),
	(152,'woocommerce_specific_allowed_countries','','yes'),
	(153,'woocommerce_ship_to_countries','','yes'),
	(154,'woocommerce_specific_ship_to_countries','','yes'),
	(155,'woocommerce_default_customer_address','geolocation','yes'),
	(156,'woocommerce_calc_taxes','yes','yes'),
	(157,'woocommerce_demo_store','no','yes'),
	(158,'woocommerce_demo_store_notice','This is a demo store for testing purposes &mdash; no orders shall be fulfilled.','no'),
	(159,'woocommerce_currency','EUR','yes'),
	(160,'woocommerce_currency_pos','right','yes'),
	(161,'woocommerce_price_thousand_sep','','yes'),
	(162,'woocommerce_price_decimal_sep',',','yes'),
	(163,'woocommerce_price_num_decimals','2','yes'),
	(164,'woocommerce_weight_unit','g','yes'),
	(165,'woocommerce_dimension_unit','cm','yes'),
	(166,'woocommerce_enable_review_rating','yes','yes'),
	(167,'woocommerce_review_rating_required','yes','no'),
	(168,'woocommerce_review_rating_verification_label','yes','no'),
	(169,'woocommerce_review_rating_verification_required','no','no'),
	(170,'woocommerce_shop_page_id','5','yes'),
	(171,'woocommerce_shop_page_display','','yes'),
	(172,'woocommerce_category_archive_display','','yes'),
	(173,'woocommerce_default_catalog_orderby','menu_order','yes'),
	(174,'woocommerce_cart_redirect_after_add','no','yes'),
	(175,'woocommerce_enable_ajax_add_to_cart','yes','yes'),
	(176,'shop_catalog_image_size','a:3:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";i:1;}','yes'),
	(177,'shop_single_image_size','a:3:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"600\";s:4:\"crop\";i:1;}','yes'),
	(178,'shop_thumbnail_image_size','a:3:{s:5:\"width\";s:3:\"180\";s:6:\"height\";s:3:\"180\";s:4:\"crop\";i:1;}','yes'),
	(179,'woocommerce_enable_lightbox','yes','yes'),
	(180,'woocommerce_manage_stock','yes','yes'),
	(181,'woocommerce_hold_stock_minutes','60','no'),
	(182,'woocommerce_notify_low_stock','yes','no'),
	(183,'woocommerce_notify_no_stock','yes','no'),
	(184,'woocommerce_stock_email_recipient','admin@admin.com','no'),
	(185,'woocommerce_notify_low_stock_amount','2','no'),
	(186,'woocommerce_notify_no_stock_amount','0','yes'),
	(187,'woocommerce_hide_out_of_stock_items','no','yes'),
	(188,'woocommerce_stock_format','','yes'),
	(189,'woocommerce_file_download_method','force','no'),
	(190,'woocommerce_downloads_require_login','no','no'),
	(191,'woocommerce_downloads_grant_access_after_payment','yes','no'),
	(192,'woocommerce_prices_include_tax','no','yes'),
	(193,'woocommerce_tax_based_on','shipping','yes'),
	(194,'woocommerce_shipping_tax_class','inherit','yes'),
	(195,'woocommerce_tax_round_at_subtotal','no','yes'),
	(196,'woocommerce_tax_classes','Reduced Rate\nZero Rate','yes'),
	(197,'woocommerce_tax_display_shop','excl','yes'),
	(198,'woocommerce_tax_display_cart','excl','no'),
	(199,'woocommerce_price_display_suffix','','yes'),
	(200,'woocommerce_tax_total_display','itemized','no'),
	(201,'woocommerce_enable_shipping_calc','yes','no'),
	(202,'woocommerce_shipping_cost_requires_address','no','no'),
	(203,'woocommerce_ship_to_destination','billing','no'),
	(204,'woocommerce_enable_coupons','yes','yes'),
	(205,'woocommerce_calc_discounts_sequentially','no','no'),
	(206,'woocommerce_enable_guest_checkout','yes','no'),
	(207,'woocommerce_force_ssl_checkout','no','yes'),
	(208,'woocommerce_unforce_ssl_checkout','no','yes'),
	(209,'woocommerce_cart_page_id','6','yes'),
	(210,'woocommerce_checkout_page_id','7','yes'),
	(211,'woocommerce_terms_page_id','','no'),
	(212,'woocommerce_checkout_pay_endpoint','order-pay','yes'),
	(213,'woocommerce_checkout_order_received_endpoint','order-received','yes'),
	(214,'woocommerce_myaccount_add_payment_method_endpoint','add-payment-method','yes'),
	(215,'woocommerce_myaccount_delete_payment_method_endpoint','delete-payment-method','yes'),
	(216,'woocommerce_myaccount_set_default_payment_method_endpoint','set-default-payment-method','yes'),
	(217,'woocommerce_myaccount_page_id','8','yes'),
	(218,'woocommerce_enable_signup_and_login_from_checkout','yes','no'),
	(219,'woocommerce_enable_myaccount_registration','no','no'),
	(220,'woocommerce_enable_checkout_login_reminder','yes','no'),
	(221,'woocommerce_registration_generate_username','yes','no'),
	(222,'woocommerce_registration_generate_password','no','no'),
	(223,'woocommerce_myaccount_orders_endpoint','orders','yes'),
	(224,'woocommerce_myaccount_view_order_endpoint','view-order','yes'),
	(225,'woocommerce_myaccount_downloads_endpoint','downloads','yes'),
	(226,'woocommerce_myaccount_edit_account_endpoint','edit-account','yes'),
	(227,'woocommerce_myaccount_edit_address_endpoint','edit-address','yes'),
	(228,'woocommerce_myaccount_payment_methods_endpoint','payment-methods','yes'),
	(229,'woocommerce_myaccount_lost_password_endpoint','lost-password','yes'),
	(230,'woocommerce_logout_endpoint','customer-logout','yes'),
	(231,'woocommerce_email_from_name','Wordpress','no'),
	(232,'woocommerce_email_from_address','admin@admin.com','no'),
	(233,'woocommerce_email_header_image','','no'),
	(234,'woocommerce_email_footer_text','Wordpress - Powered by WooCommerce','no'),
	(235,'woocommerce_email_base_color','#557da1','no'),
	(236,'woocommerce_email_background_color','#f5f5f5','no'),
	(237,'woocommerce_email_body_background_color','#fdfdfd','no'),
	(238,'woocommerce_email_text_color','#505050','no'),
	(239,'woocommerce_api_enabled','yes','yes'),
	(245,'recently_activated','a:0:{}','yes'),
	(246,'woocommerce_admin_notices','a:0:{}','yes'),
	(248,'_transient_woocommerce_webhook_ids','a:0:{}','yes'),
	(249,'widget_woocommerce_widget_cart','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(250,'widget_woocommerce_layered_nav_filters','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(251,'widget_woocommerce_layered_nav','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(252,'widget_woocommerce_price_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(253,'widget_woocommerce_product_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(254,'widget_woocommerce_product_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(255,'widget_woocommerce_product_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(256,'widget_woocommerce_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(257,'widget_woocommerce_rating_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(258,'widget_woocommerce_recent_reviews','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(259,'widget_woocommerce_recently_viewed_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(260,'widget_woocommerce_top_rated_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(262,'_transient_wc_count_comments','O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}','yes'),
	(263,'woocommerce_meta_box_errors','a:0:{}','yes'),
	(271,'woocommerce_paypal-ec_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes'),
	(272,'woocommerce_stripe_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes'),
	(273,'woocommerce_paypal_settings','a:2:{s:7:\"enabled\";s:2:\"no\";s:5:\"email\";s:15:\"admin@admin.com\";}','yes'),
	(274,'woocommerce_cheque_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes'),
	(275,'woocommerce_bacs_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes'),
	(276,'woocommerce_cod_settings','a:1:{s:7:\"enabled\";s:3:\"yes\";}','yes'),
	(277,'_transient_shipping-transient-version','1481756499','yes'),
	(293,'_transient_product_query-transient-version','1481755973','yes'),
	(294,'_transient_product-transient-version','1481755973','yes'),
	(295,'woocommerce_flat_rate_1_settings','a:3:{s:5:\"title\";s:20:\"Mondial Relay France\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:1:\"3\";}','yes'),
	(297,'woocommerce_flat_rate_2_settings','a:3:{s:5:\"title\";s:22:\"Autre livraison France\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:1:\"2\";}','yes'),
	(300,'woocommerce_flat_rate_3_settings','a:3:{s:5:\"title\";s:20:\"Mondial Relay Europe\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:1:\"5\";}','yes'),
	(301,'_transient_woocommerce_cache_excluded_uris','a:6:{i:0;s:3:\"p=6\";i:1;s:6:\"/cart/\";i:2;s:3:\"p=7\";i:3;s:10:\"/checkout/\";i:4;s:3:\"p=8\";i:5;s:12:\"/my-account/\";}','yes'),
	(302,'woocommerce_flat_rate_4_settings','a:3:{s:5:\"title\";s:22:\"Autre livraison Europe\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:1:\"4\";}','yes'),
	(336,'mondialrelay_code_client','BDTEST13','yes'),
	(337,'mondialrelay_cle_privee','PrivateK','yes'),
	(338,'mondialrelay_mode_colis','CCC','yes'),
	(339,'mondialrelay_mode_livraison','24R','yes'),
	(340,'mondialrelay_assurance','0','yes'),
	(341,'mondialrelay_pays_livraison','FR','yes'),
	(342,'mondialrelay_code_postal','','yes'),
	(343,'mondialrelay_geolocalisation','true','yes'),
	(344,'mondialrelay_pays_autorises','','yes'),
	(345,'mondialrelay_ssl','false','yes'),
	(346,'mondialrelay_map','true','yes'),
	(347,'mondialrelay_street_view','false','yes'),
	(348,'mondialrelay_zoom','false','yes'),
	(349,'mondialrelay_search_delay','','yes'),
	(350,'mondialrelay_search_far','75','yes'),
	(351,'mondialrelay_nb_results','7','yes'),
	(352,'mondialrelay_style','img {\r\n        display: inline-block!important;\r\n}','yes'),
	(353,'mondialrelay_mode_recherche','24R','yes'),
	(354,'mondialrelay_texte_selection','Cliquez ici pour choisir un point de livraison Mondial Relay','yes'),
	(355,'mondialrelay_texte_aucun','Vous n\\\'avez pas sélectionné de point Mondial Relay','yes'),
	(356,'mondialrelay_texte_choix','Choisir ce point Mondial Relay','yes'),
	(357,'mondialrelay_texte_erreur','Veuillez sélectionner un point relais','yes'),
	(358,'mondialrelay_vendeur_adresse1','Expediteur','yes'),
	(359,'mondialrelay_vendeur_adresse2','','yes'),
	(360,'mondialrelay_vendeur_adresse3','1 Rue Expediteur','yes'),
	(361,'mondialrelay_vendeur_adresse4','','yes'),
	(362,'mondialrelay_vendeur_cp','75000','yes'),
	(363,'mondialrelay_vendeur_ville','Paris','yes'),
	(364,'mondialrelay_vendeur_pays','FR','yes'),
	(365,'mondialrelay_vendeur_tel','0123456789','yes'),
	(366,'mondialrelay_vendeur_tel2','','yes'),
	(367,'mondialrelay_vendeur_email','','yes'),
	(368,'mondialrelay_ids_livraison','a:2:{i:0;s:11:\"flat_rate:1\";i:1;s:11:\"flat_rate:3\";}','yes'),
	(369,'mondialrelay_parcelshop_picker','3.2','yes'),
	(370,'mondialrelay_google_map_key','','yes'),
	(371,'mondialrelay_google_map_init','true','yes'),
	(372,'mondialrelay_fancybox_init','true','yes'),
	(373,'mondialrelay_state_order','','yes'),
	(374,'mondialrelay_email_send','1','yes'),
	(375,'mondialrelay_email_expedition_sujet','Votre commande n°[expedition] a été expédiée.','yes'),
	(376,'mondialrelay_email_expedition_message','Bonjour [prenom] [nom],<br><br>\n\nNous vous informons que votre commande a été expédiée. Vous la recevrez sous peu, mais si vous souhaitez garder un œil dessus, vous pouvez vous rendre sur [lien] en indiquant le numéro [expedition] pour suivre son trajet.<br><br>\n\nSi nous pouvons vous être utiles de quelque manière que ce soit, n\\\'hésitez pas à nous le faire savoir.<br><br>\n\nVotre service client','yes'),
	(377,'mondialrelay_debug','1','yes'),
	(378,'mondialrelay_menu_position','58.1','yes'),
	(379,'mondialrelay_woocommerce_folder','woocommerce','yes'),
	(455,'theme_mods_twentyseventeen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1484236744;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes'),
	(545,'woocommerce_shipping_debug_mode','no','no'),
	(555,'storefront_cleared_widgets','1','yes'),
	(556,'storefront_nux_dismissed','1','yes'),
	(598,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(599,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(600,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(611,'storefront_nux_fresh_site','0','yes'),
	(612,'_transient_timeout_external_ip_address_127.0.0.1','1511312973','no'),
	(613,'_transient_external_ip_address_127.0.0.1','2a01:cb19:8111:8700:f8ef:aa9b:c744:71c1','no'),
	(614,'woocommerce_enable_reviews','yes','yes'),
	(618,'_transient_wc_attribute_taxonomies','a:0:{}','yes'),
	(628,'_site_transient_timeout_browser_6cd77015ec4a62e4fdace07d0b0a8f84','1511313031','no'),
	(629,'_site_transient_browser_6cd77015ec4a62e4fdace07d0b0a8f84','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"62.0.3202.94\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),
	(634,'_transient_timeout_wc_low_stock_count','1513300231','no'),
	(635,'_transient_wc_low_stock_count','0','no'),
	(636,'_transient_timeout_wc_outofstock_count','1513300231','no'),
	(637,'_transient_wc_outofstock_count','0','no'),
	(651,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(658,'woocommerce_store_address','','yes'),
	(659,'woocommerce_store_address_2','','yes'),
	(660,'woocommerce_store_city','','yes'),
	(661,'woocommerce_store_postcode','','yes'),
	(666,'_transient_timeout_wc_shipping_method_count_1_1481756499','1513300470','no'),
	(667,'_transient_wc_shipping_method_count_1_1481756499','4','no'),
	(677,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1510933371;s:7:\"checked\";a:1:{s:10:\"storefront\";s:5:\"2.2.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no'),
	(683,'_site_transient_timeout_theme_roots','1510935113','no'),
	(684,'_site_transient_theme_roots','a:1:{s:10:\"storefront\";s:7:\"/themes\";}','no'),
	(686,'_transient_timeout_wc_report_sales_by_date','1511019980','no'),
	(687,'_transient_wc_report_sales_by_date','a:32:{s:32:\"9434c9703b84a417034507986744cdf4\";a:0:{}s:32:\"454626203a12a3564f24887e05309204\";a:0:{}s:32:\"eb33d51fc78f7ffc5e9c83afe99217ee\";a:0:{}s:32:\"3d25bd7348a84b1a191a330240fd9401\";N;s:32:\"2eaffef7e25b6ecf2232f0a3e31f985b\";a:0:{}s:32:\"32cb40ee4f42281e3c739c9bf33cca60\";a:0:{}s:32:\"d98fd70659441432f7d77a8e48c98f2c\";a:0:{}s:32:\"3cdec8b1c43cf5a80736f5d8013877ac\";a:0:{}s:32:\"a467276dcf580cd408192c5d1bda33ad\";a:0:{}s:32:\"47b599fd34c4a107016cb61b420399f2\";a:0:{}s:32:\"f20c4c3a1224978104ffb5905574a60b\";a:0:{}s:32:\"ee2498f1abdb40a39b601d81a1d4194e\";N;s:32:\"bd544269e26cae3bfa3913664b9d1134\";a:0:{}s:32:\"db6fdc6fff00cb6faf2b3df24a5d0212\";a:0:{}s:32:\"9619075e2a635368d92f26a3e4c0a3ab\";a:0:{}s:32:\"c31f7bb94d20bd13385292baa9a698db\";a:0:{}s:32:\"8956820088fce4b2abe1e9405190db10\";a:0:{}s:32:\"a9662cb0f3c8e13dad21f04e2e63bfc3\";a:0:{}s:32:\"32494621d1b2196d9664c6b2df6bdfd4\";a:0:{}s:32:\"030e3ad4273dd9a8946183cda20ca6cc\";N;s:32:\"814e5dc69e16da6d0cb98515198788a6\";a:0:{}s:32:\"bbfe79086b1a942d63f6ac24c5c4af8a\";a:0:{}s:32:\"60198d677c7ca5912180d76e9644acc0\";a:0:{}s:32:\"36888099f9e6f03b221a44e6aa928143\";a:0:{}s:32:\"3d89a9525325e7f062a3f61bd1307d40\";a:0:{}s:32:\"6631075e171d1ed19c9c61b49ef54a80\";a:0:{}s:32:\"112ed224973036e38a0cbb264daaff2d\";a:0:{}s:32:\"d3603a94b947bf012c968a03b40abfb0\";N;s:32:\"f462bc6a2eff678686afa578f35b8fdd\";a:0:{}s:32:\"2c0bb29e59d7ade0d90ab6a271e09338\";a:0:{}s:32:\"6d63efa004a3105e48c34e9fbcf6d251\";a:0:{}s:32:\"935af98db182a55ecffe3ed964d6362c\";a:0:{}}','no'),
	(688,'_transient_timeout_wc_admin_report','1511019722','no'),
	(689,'_transient_wc_admin_report','a:1:{s:32:\"67aafd6e515e490b377e6efc44317a06\";a:0:{}}','no'),
	(690,'_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e','1510976526','no'),
	(691,'_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e','a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:3:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:11:\"WordCamp US\";s:3:\"url\";s:29:\"https://2017.us.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2017-12-01 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:18:\"Nashville, TN, USA\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:36.1566085;s:9:\"longitude\";d:-86.7784909;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:64:\"Meetup WordPress Melun sur le thème du e-commerce (WooCommerce)\";s:3:\"url\";s:63:\"https://www.meetup.com/Meetup-WordPress-Melun/events/244376874/\";s:6:\"meetup\";s:22:\"Meetup WordPress Melun\";s:10:\"meetup_url\";s:46:\"https://www.meetup.com/Meetup-WordPress-Melun/\";s:4:\"date\";s:19:\"2017-11-16 18:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:13:\"Melun, France\";s:7:\"country\";s:2:\"fr\";s:8:\"latitude\";d:48.536919;s:9:\"longitude\";d:2.655111;}}i:2;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:14:\"WordCamp Paris\";s:3:\"url\";s:31:\"https://2018.paris.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-03-09 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:5:\"Paris\";s:7:\"country\";s:2:\"FR\";s:8:\"latitude\";d:48.8240692;s:9:\"longitude\";d:2.3722989;}}}}','no'),
	(692,'_transient_timeout__woocommerce_helper_subscriptions','1510934228','no'),
	(693,'_transient__woocommerce_helper_subscriptions','a:0:{}','no'),
	(694,'_transient_timeout__woocommerce_helper_updates','1510976528','no'),
	(695,'_transient__woocommerce_helper_updates','a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1510933328;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}','no'),
	(697,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(699,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"4.9\";s:7:\"version\";s:3:\"4.9\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1510933347;s:15:\"version_checked\";s:3:\"4.9\";s:12:\"translations\";a:0:{}}','no'),
	(701,'_transient_timeout_plugin_slugs','1511019753','no'),
	(702,'_transient_plugin_slugs','a:2:{i:0;s:27:\"woocommerce/woocommerce.php\";i:1;s:53:\"woocommerce-mondialrelay/woocommerce-mondialrelay.php\";}','no'),
	(703,'_transient_timeout_wc_upgrade_notice_3.2.4','1511019754','no'),
	(704,'_transient_wc_upgrade_notice_3.2.4','','no'),
	(705,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1510933369;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.2.4\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.2.4.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:7:\"default\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";s:7:\"default\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),
	(708,'woocommerce_version','3.2.4','yes'),
	(709,'woocommerce_db_version','3.2.4','yes'),
	(711,'_transient_timeout_files_7c93654e04f6506c1eaef3afe541f68347af85c870f90da312f8029','1510937010','no'),
	(712,'_transient_files_7c93654e04f6506c1eaef3afe541f68347af85c870f90da312f8029','a:189:{s:7:\"404.php\";s:92:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/404.php\";s:11:\"archive.php\";s:96:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/archive.php\";s:28:\"assets/fonts/FontAwesome.otf\";s:113:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/fonts/FontAwesome.otf\";s:36:\"assets/fonts/fontawesome-webfont.eot\";s:121:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/fonts/fontawesome-webfont.eot\";s:36:\"assets/fonts/fontawesome-webfont.svg\";s:121:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/fonts/fontawesome-webfont.svg\";s:36:\"assets/fonts/fontawesome-webfont.ttf\";s:121:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/fonts/fontawesome-webfont.ttf\";s:37:\"assets/fonts/fontawesome-webfont.woff\";s:122:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/fonts/fontawesome-webfont.woff\";s:38:\"assets/fonts/fontawesome-webfont.woff2\";s:123:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/fonts/fontawesome-webfont.woff2\";s:39:\"assets/images/admin/storefront-icon.svg\";s:124:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/admin/storefront-icon.svg\";s:49:\"assets/images/admin/welcome-screen/automattic.png\";s:134:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/admin/welcome-screen/automattic.png\";s:51:\"assets/images/admin/welcome-screen/child-themes.jpg\";s:136:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/admin/welcome-screen/child-themes.jpg\";s:61:\"assets/images/admin/welcome-screen/storefront-bundle-hero.png\";s:146:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/admin/welcome-screen/storefront-bundle-hero.png\";s:35:\"assets/images/credit-cards/amex.svg\";s:120:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/credit-cards/amex.svg\";s:37:\"assets/images/credit-cards/diners.svg\";s:122:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/credit-cards/diners.svg\";s:39:\"assets/images/credit-cards/discover.svg\";s:124:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/credit-cards/discover.svg\";s:34:\"assets/images/credit-cards/jcb.svg\";s:119:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/credit-cards/jcb.svg\";s:36:\"assets/images/credit-cards/laser.svg\";s:121:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/credit-cards/laser.svg\";s:38:\"assets/images/credit-cards/maestro.svg\";s:123:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/credit-cards/maestro.svg\";s:41:\"assets/images/credit-cards/mastercard.svg\";s:126:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/credit-cards/mastercard.svg\";s:37:\"assets/images/credit-cards/paypal.svg\";s:122:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/credit-cards/paypal.svg\";s:38:\"assets/images/credit-cards/unknown.svg\";s:123:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/credit-cards/unknown.svg\";s:35:\"assets/images/credit-cards/visa.svg\";s:120:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/credit-cards/visa.svg\";s:41:\"assets/images/customizer/controls/2cl.png\";s:126:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/customizer/controls/2cl.png\";s:41:\"assets/images/customizer/controls/2cr.png\";s:126:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/customizer/controls/2cr.png\";s:67:\"assets/images/customizer/starter-content/categories/accessories.jpg\";s:152:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/customizer/starter-content/categories/accessories.jpg\";s:63:\"assets/images/customizer/starter-content/categories/hoodies.jpg\";s:148:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/customizer/starter-content/categories/hoodies.jpg\";s:63:\"assets/images/customizer/starter-content/categories/tshirts.jpg\";s:148:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/customizer/starter-content/categories/tshirts.jpg\";s:49:\"assets/images/customizer/starter-content/hero.jpg\";s:134:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/customizer/starter-content/hero.jpg\";s:60:\"assets/images/customizer/starter-content/products/beanie.jpg\";s:145:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/customizer/starter-content/products/beanie.jpg\";s:58:\"assets/images/customizer/starter-content/products/belt.jpg\";s:143:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/customizer/starter-content/products/belt.jpg\";s:57:\"assets/images/customizer/starter-content/products/cap.jpg\";s:142:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/customizer/starter-content/products/cap.jpg\";s:70:\"assets/images/customizer/starter-content/products/hoodie-with-logo.jpg\";s:155:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/customizer/starter-content/products/hoodie-with-logo.jpg\";s:72:\"assets/images/customizer/starter-content/products/hoodie-with-pocket.jpg\";s:157:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/customizer/starter-content/products/hoodie-with-pocket.jpg\";s:72:\"assets/images/customizer/starter-content/products/hoodie-with-zipper.jpg\";s:157:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/customizer/starter-content/products/hoodie-with-zipper.jpg\";s:60:\"assets/images/customizer/starter-content/products/hoodie.jpg\";s:145:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/customizer/starter-content/products/hoodie.jpg\";s:69:\"assets/images/customizer/starter-content/products/long-sleeve-tee.jpg\";s:154:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/customizer/starter-content/products/long-sleeve-tee.jpg\";s:58:\"assets/images/customizer/starter-content/products/polo.jpg\";s:143:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/customizer/starter-content/products/polo.jpg\";s:64:\"assets/images/customizer/starter-content/products/sunglasses.jpg\";s:149:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/customizer/starter-content/products/sunglasses.jpg\";s:60:\"assets/images/customizer/starter-content/products/tshirt.jpg\";s:145:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/customizer/starter-content/products/tshirt.jpg\";s:63:\"assets/images/customizer/starter-content/products/vneck-tee.jpg\";s:148:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/images/customizer/starter-content/products/vneck-tee.jpg\";s:24:\"assets/js/admin/admin.js\";s:109:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/js/admin/admin.js\";s:28:\"assets/js/admin/admin.min.js\";s:113:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/js/admin/admin.min.js\";s:29:\"assets/js/admin/customizer.js\";s:114:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/js/admin/customizer.js\";s:33:\"assets/js/admin/customizer.min.js\";s:118:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/js/admin/customizer.min.js\";s:33:\"assets/js/admin/plugin-install.js\";s:118:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/js/admin/plugin-install.js\";s:37:\"assets/js/admin/plugin-install.min.js\";s:122:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/js/admin/plugin-install.min.js\";s:21:\"assets/js/homepage.js\";s:106:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/js/homepage.js\";s:25:\"assets/js/homepage.min.js\";s:110:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/js/homepage.min.js\";s:23:\"assets/js/navigation.js\";s:108:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/js/navigation.js\";s:27:\"assets/js/navigation.min.js\";s:112:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/js/navigation.min.js\";s:32:\"assets/js/skip-link-focus-fix.js\";s:117:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/js/skip-link-focus-fix.js\";s:36:\"assets/js/skip-link-focus-fix.min.js\";s:121:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/js/skip-link-focus-fix.min.js\";s:33:\"assets/js/woocommerce/checkout.js\";s:118:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/js/woocommerce/checkout.js\";s:37:\"assets/js/woocommerce/checkout.min.js\";s:122:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/js/woocommerce/checkout.min.js\";s:36:\"assets/js/woocommerce/header-cart.js\";s:121:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/js/woocommerce/header-cart.js\";s:40:\"assets/js/woocommerce/header-cart.min.js\";s:125:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/js/woocommerce/header-cart.min.js\";s:27:\"assets/sass/admin/admin.css\";s:112:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/admin/admin.css\";s:28:\"assets/sass/admin/admin.scss\";s:113:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/admin/admin.scss\";s:30:\"assets/sass/admin/buttons.scss\";s:115:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/admin/buttons.scss\";s:43:\"assets/sass/admin/customizer/customizer.css\";s:128:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/admin/customizer/customizer.css\";s:44:\"assets/sass/admin/customizer/customizer.scss\";s:129:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/admin/customizer/customizer.scss\";s:36:\"assets/sass/admin/plugin-install.css\";s:121:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/admin/plugin-install.css\";s:37:\"assets/sass/admin/plugin-install.scss\";s:122:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/admin/plugin-install.scss\";s:48:\"assets/sass/admin/welcome-screen/welcome-rtl.css\";s:133:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/admin/welcome-screen/welcome-rtl.css\";s:44:\"assets/sass/admin/welcome-screen/welcome.css\";s:129:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/admin/welcome-screen/welcome.css\";s:45:\"assets/sass/admin/welcome-screen/welcome.scss\";s:130:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/admin/welcome-screen/welcome.scss\";s:27:\"assets/sass/base/_base.scss\";s:112:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/base/_base.scss\";s:29:\"assets/sass/base/_layout.scss\";s:114:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/base/_layout.scss\";s:26:\"assets/sass/base/icons.css\";s:111:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/base/icons.css\";s:27:\"assets/sass/base/icons.scss\";s:112:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/base/icons.scss\";s:35:\"assets/sass/jetpack/jetpack-rtl.css\";s:120:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/jetpack/jetpack-rtl.css\";s:31:\"assets/sass/jetpack/jetpack.css\";s:116:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/jetpack/jetpack.css\";s:32:\"assets/sass/jetpack/jetpack.scss\";s:117:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/jetpack/jetpack.scss\";s:30:\"assets/sass/utils/_mixins.scss\";s:115:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/utils/_mixins.scss\";s:33:\"assets/sass/utils/_variables.scss\";s:118:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/utils/_variables.scss\";s:39:\"assets/sass/vendors/_modular-scale.scss\";s:124:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/_modular-scale.scss\";s:35:\"assets/sass/vendors/_normalize.scss\";s:120:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/_normalize.scss\";s:47:\"assets/sass/vendors/font-awesome/_animated.scss\";s:132:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/font-awesome/_animated.scss\";s:54:\"assets/sass/vendors/font-awesome/_bordered-pulled.scss\";s:139:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/font-awesome/_bordered-pulled.scss\";s:43:\"assets/sass/vendors/font-awesome/_core.scss\";s:128:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/font-awesome/_core.scss\";s:50:\"assets/sass/vendors/font-awesome/_fixed-width.scss\";s:135:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/font-awesome/_fixed-width.scss\";s:44:\"assets/sass/vendors/font-awesome/_icons.scss\";s:129:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/font-awesome/_icons.scss\";s:45:\"assets/sass/vendors/font-awesome/_larger.scss\";s:130:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/font-awesome/_larger.scss\";s:43:\"assets/sass/vendors/font-awesome/_list.scss\";s:128:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/font-awesome/_list.scss\";s:45:\"assets/sass/vendors/font-awesome/_mixins.scss\";s:130:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/font-awesome/_mixins.scss\";s:43:\"assets/sass/vendors/font-awesome/_path.scss\";s:128:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/font-awesome/_path.scss\";s:54:\"assets/sass/vendors/font-awesome/_rotated-flipped.scss\";s:139:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/font-awesome/_rotated-flipped.scss\";s:52:\"assets/sass/vendors/font-awesome/_screen-reader.scss\";s:137:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/font-awesome/_screen-reader.scss\";s:46:\"assets/sass/vendors/font-awesome/_stacked.scss\";s:131:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/font-awesome/_stacked.scss\";s:48:\"assets/sass/vendors/font-awesome/_variables.scss\";s:133:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/font-awesome/_variables.scss\";s:50:\"assets/sass/vendors/font-awesome/font-awesome.scss\";s:135:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/font-awesome/font-awesome.scss\";s:44:\"assets/sass/vendors/modular-scale/_calc.scss\";s:129:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/modular-scale/_calc.scss\";s:53:\"assets/sass/vendors/modular-scale/_function-list.scss\";s:138:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/modular-scale/_function-list.scss\";s:48:\"assets/sass/vendors/modular-scale/_function.scss\";s:133:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/modular-scale/_function.scss\";s:53:\"assets/sass/vendors/modular-scale/_generate-list.scss\";s:138:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/modular-scale/_generate-list.scss\";s:43:\"assets/sass/vendors/modular-scale/_pow.scss\";s:128:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/modular-scale/_pow.scss\";s:46:\"assets/sass/vendors/modular-scale/_ratios.scss\";s:131:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/modular-scale/_ratios.scss\";s:47:\"assets/sass/vendors/modular-scale/_respond.scss\";s:132:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/modular-scale/_respond.scss\";s:48:\"assets/sass/vendors/modular-scale/_round-px.scss\";s:133:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/modular-scale/_round-px.scss\";s:49:\"assets/sass/vendors/modular-scale/_sort-list.scss\";s:134:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/modular-scale/_sort-list.scss\";s:45:\"assets/sass/vendors/modular-scale/_tests.scss\";s:130:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/vendors/modular-scale/_tests.scss\";s:66:\"assets/sass/woocommerce/extensions/advanced-product-labels-rtl.css\";s:151:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/advanced-product-labels-rtl.css\";s:62:\"assets/sass/woocommerce/extensions/advanced-product-labels.css\";s:147:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/advanced-product-labels.css\";s:63:\"assets/sass/woocommerce/extensions/advanced-product-labels.scss\";s:148:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/advanced-product-labels.scss\";s:59:\"assets/sass/woocommerce/extensions/ajax-layered-nav-rtl.css\";s:144:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/ajax-layered-nav-rtl.css\";s:55:\"assets/sass/woocommerce/extensions/ajax-layered-nav.css\";s:140:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/ajax-layered-nav.css\";s:56:\"assets/sass/woocommerce/extensions/ajax-layered-nav.scss\";s:141:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/ajax-layered-nav.scss\";s:51:\"assets/sass/woocommerce/extensions/bookings-rtl.css\";s:136:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/bookings-rtl.css\";s:47:\"assets/sass/woocommerce/extensions/bookings.css\";s:132:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/bookings.css\";s:48:\"assets/sass/woocommerce/extensions/bookings.scss\";s:133:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/bookings.scss\";s:49:\"assets/sass/woocommerce/extensions/brands-rtl.css\";s:134:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/brands-rtl.css\";s:45:\"assets/sass/woocommerce/extensions/brands.css\";s:130:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/brands.css\";s:46:\"assets/sass/woocommerce/extensions/brands.scss\";s:131:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/brands.scss\";s:50:\"assets/sass/woocommerce/extensions/bundles-rtl.css\";s:135:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/bundles-rtl.css\";s:46:\"assets/sass/woocommerce/extensions/bundles.css\";s:131:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/bundles.css\";s:47:\"assets/sass/woocommerce/extensions/bundles.scss\";s:132:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/bundles.scss\";s:61:\"assets/sass/woocommerce/extensions/composite-products-rtl.css\";s:146:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/composite-products-rtl.css\";s:57:\"assets/sass/woocommerce/extensions/composite-products.css\";s:142:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/composite-products.css\";s:58:\"assets/sass/woocommerce/extensions/composite-products.scss\";s:143:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/composite-products.scss\";s:51:\"assets/sass/woocommerce/extensions/deposits-rtl.css\";s:136:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/deposits-rtl.css\";s:47:\"assets/sass/woocommerce/extensions/deposits.css\";s:132:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/deposits.css\";s:48:\"assets/sass/woocommerce/extensions/deposits.scss\";s:133:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/deposits.scss\";s:56:\"assets/sass/woocommerce/extensions/mix-and-match-rtl.css\";s:141:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/mix-and-match-rtl.css\";s:52:\"assets/sass/woocommerce/extensions/mix-and-match.css\";s:137:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/mix-and-match.css\";s:53:\"assets/sass/woocommerce/extensions/mix-and-match.scss\";s:138:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/mix-and-match.scss\";s:54:\"assets/sass/woocommerce/extensions/photography-rtl.css\";s:139:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/photography-rtl.css\";s:50:\"assets/sass/woocommerce/extensions/photography.css\";s:135:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/photography.css\";s:51:\"assets/sass/woocommerce/extensions/photography.scss\";s:136:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/photography.scss\";s:62:\"assets/sass/woocommerce/extensions/product-reviews-pro-rtl.css\";s:147:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/product-reviews-pro-rtl.css\";s:58:\"assets/sass/woocommerce/extensions/product-reviews-pro.css\";s:143:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/product-reviews-pro.css\";s:59:\"assets/sass/woocommerce/extensions/product-reviews-pro.scss\";s:144:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/product-reviews-pro.scss\";s:53:\"assets/sass/woocommerce/extensions/quick-view-rtl.css\";s:138:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/quick-view-rtl.css\";s:49:\"assets/sass/woocommerce/extensions/quick-view.css\";s:134:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/quick-view.css\";s:50:\"assets/sass/woocommerce/extensions/quick-view.scss\";s:135:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/quick-view.scss\";s:66:\"assets/sass/woocommerce/extensions/ship-multiple-addresses-rtl.css\";s:151:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/ship-multiple-addresses-rtl.css\";s:62:\"assets/sass/woocommerce/extensions/ship-multiple-addresses.css\";s:147:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/ship-multiple-addresses.css\";s:63:\"assets/sass/woocommerce/extensions/ship-multiple-addresses.scss\";s:148:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/ship-multiple-addresses.scss\";s:56:\"assets/sass/woocommerce/extensions/smart-coupons-rtl.css\";s:141:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/smart-coupons-rtl.css\";s:52:\"assets/sass/woocommerce/extensions/smart-coupons.css\";s:137:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/smart-coupons.css\";s:53:\"assets/sass/woocommerce/extensions/smart-coupons.scss\";s:138:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/smart-coupons.scss\";s:61:\"assets/sass/woocommerce/extensions/variation-swatches-rtl.css\";s:146:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/variation-swatches-rtl.css\";s:57:\"assets/sass/woocommerce/extensions/variation-swatches.css\";s:142:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/variation-swatches.css\";s:58:\"assets/sass/woocommerce/extensions/variation-swatches.scss\";s:143:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/variation-swatches.scss\";s:52:\"assets/sass/woocommerce/extensions/wishlists-rtl.css\";s:137:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/wishlists-rtl.css\";s:48:\"assets/sass/woocommerce/extensions/wishlists.css\";s:133:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/wishlists.css\";s:49:\"assets/sass/woocommerce/extensions/wishlists.scss\";s:134:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/extensions/wishlists.scss\";s:43:\"assets/sass/woocommerce/woocommerce-rtl.css\";s:128:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/woocommerce-rtl.css\";s:39:\"assets/sass/woocommerce/woocommerce.css\";s:124:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/woocommerce.css\";s:40:\"assets/sass/woocommerce/woocommerce.scss\";s:125:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/assets/sass/woocommerce/woocommerce.scss\";s:12:\"comments.php\";s:97:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/comments.php\";s:20:\"content-homepage.php\";s:105:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/content-homepage.php\";s:16:\"content-none.php\";s:101:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/content-none.php\";s:16:\"content-page.php\";s:101:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/content-page.php\";s:18:\"content-single.php\";s:103:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/content-single.php\";s:11:\"content.php\";s:96:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/content.php\";s:10:\"footer.php\";s:95:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/footer.php\";s:13:\"functions.php\";s:98:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/functions.php\";s:10:\"header.php\";s:95:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/header.php\";s:36:\"inc/admin/class-storefront-admin.php\";s:121:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/inc/admin/class-storefront-admin.php\";s:45:\"inc/admin/class-storefront-plugin-install.php\";s:130:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/inc/admin/class-storefront-plugin-install.php\";s:24:\"inc/class-storefront.php\";s:109:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/inc/class-storefront.php\";s:64:\"inc/customizer/class-storefront-customizer-control-arbitrary.php\";s:149:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/inc/customizer/class-storefront-customizer-control-arbitrary.php\";s:59:\"inc/customizer/class-storefront-customizer-control-more.php\";s:144:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/inc/customizer/class-storefront-customizer-control-more.php\";s:66:\"inc/customizer/class-storefront-customizer-control-radio-image.php\";s:151:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/inc/customizer/class-storefront-customizer-control-radio-image.php\";s:46:\"inc/customizer/class-storefront-customizer.php\";s:131:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/inc/customizer/class-storefront-customizer.php\";s:40:\"inc/jetpack/class-storefront-jetpack.php\";s:125:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/inc/jetpack/class-storefront-jetpack.php\";s:38:\"inc/nux/class-storefront-nux-admin.php\";s:123:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/inc/nux/class-storefront-nux-admin.php\";s:44:\"inc/nux/class-storefront-nux-guided-tour.php\";s:129:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/inc/nux/class-storefront-nux-guided-tour.php\";s:48:\"inc/nux/class-storefront-nux-starter-content.php\";s:133:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/inc/nux/class-storefront-nux-starter-content.php\";s:28:\"inc/storefront-functions.php\";s:113:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/inc/storefront-functions.php\";s:37:\"inc/storefront-template-functions.php\";s:122:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/inc/storefront-template-functions.php\";s:33:\"inc/storefront-template-hooks.php\";s:118:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/inc/storefront-template-hooks.php\";s:48:\"inc/woocommerce/class-storefront-woocommerce.php\";s:133:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/inc/woocommerce/class-storefront-woocommerce.php\";s:61:\"inc/woocommerce/storefront-woocommerce-template-functions.php\";s:146:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/inc/woocommerce/storefront-woocommerce-template-functions.php\";s:57:\"inc/woocommerce/storefront-woocommerce-template-hooks.php\";s:142:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/inc/woocommerce/storefront-woocommerce-template-hooks.php\";s:9:\"index.php\";s:94:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/index.php\";s:19:\"languages/README.md\";s:104:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/languages/README.md\";s:24:\"languages/storefront.pot\";s:109:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/languages/storefront.pot\";s:8:\"loop.php\";s:93:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/loop.php\";s:8:\"page.php\";s:93:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/page.php\";s:14:\"screenshot.png\";s:99:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/screenshot.png\";s:10:\"search.php\";s:95:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/search.php\";s:11:\"sidebar.php\";s:96:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/sidebar.php\";s:10:\"single.php\";s:95:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/single.php\";s:13:\"style-rtl.css\";s:98:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/style-rtl.css\";s:9:\"style.css\";s:94:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/style.css\";s:10:\"style.scss\";s:95:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/style.scss\";s:22:\"template-fullwidth.php\";s:107:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/template-fullwidth.php\";s:21:\"template-homepage.php\";s:106:\"/Users/clement/Dev/github/woocommerce-mondialrelay-test/wp-content/themes/storefront/template-homepage.php\";}','no'),
	(716,'_transient_is_multi_author','0','yes');

/*!40000 ALTER TABLE `wpwc_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wpwc_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_postmeta`;

CREATE TABLE `wpwc_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wpwc_postmeta` WRITE;
/*!40000 ALTER TABLE `wpwc_postmeta` DISABLE KEYS */;

INSERT INTO `wpwc_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(1,2,'_wp_page_template','default'),
	(4,10,'_edit_last','1'),
	(5,10,'_edit_lock','1481756209:1'),
	(6,10,'_visibility','visible'),
	(7,10,'_stock_status','instock'),
	(8,10,'total_sales','0'),
	(9,10,'_downloadable','no'),
	(10,10,'_virtual','no'),
	(11,10,'_tax_status','taxable'),
	(12,10,'_tax_class',''),
	(13,10,'_purchase_note',''),
	(14,10,'_featured','no'),
	(15,10,'_weight','300'),
	(16,10,'_length',''),
	(17,10,'_width',''),
	(18,10,'_height',''),
	(19,10,'_sku',''),
	(20,10,'_product_attributes','a:0:{}'),
	(21,10,'_regular_price','10'),
	(22,10,'_sale_price',''),
	(23,10,'_sale_price_dates_from',''),
	(24,10,'_sale_price_dates_to',''),
	(25,10,'_price','10'),
	(26,10,'_sold_individually',''),
	(27,10,'_manage_stock','no'),
	(28,10,'_backorders','no'),
	(29,10,'_stock',''),
	(30,10,'_upsell_ids','a:0:{}'),
	(31,10,'_crosssell_ids','a:0:{}'),
	(32,10,'_product_version','2.6.9'),
	(33,10,'_product_image_gallery',''),
	(34,10,'_wc_rating_count','a:0:{}'),
	(35,10,'_wc_average_rating','0'),
	(36,7,'_edit_lock','1484236536:1'),
	(37,10,'_wc_review_count','0'),
	(38,14,'_wp_trash_meta_status','publish'),
	(39,14,'_wp_trash_meta_time','1510933451'),
	(40,15,'_wp_trash_meta_status','publish'),
	(41,15,'_wp_trash_meta_time','1510933462'),
	(42,16,'_wp_trash_meta_status','publish'),
	(43,16,'_wp_trash_meta_time','1510933480'),
	(44,17,'_wp_trash_meta_status','publish'),
	(45,17,'_wp_trash_meta_time','1510933560'),
	(46,2,'_edit_lock','1510933511:1'),
	(47,2,'_edit_last','1');

/*!40000 ALTER TABLE `wpwc_postmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wpwc_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_posts`;

CREATE TABLE `wpwc_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wpwc_posts` WRITE;
/*!40000 ALTER TABLE `wpwc_posts` DISABLE KEYS */;

INSERT INTO `wpwc_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
	(1,1,'2016-12-14 23:46:34','2016-12-14 22:46:34','Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!','Bonjour tout le monde&nbsp;!','','publish','open','open','','bonjour-tout-le-monde','','','2016-12-14 23:46:34','2016-12-14 22:46:34','',0,'http://wp-woocommerce.local/?p=1',0,'post','',1),
	(2,1,'2016-12-14 23:46:34','2016-12-14 22:46:34','Un site Wordpress incluant WooCommerce directement configuré afin de tester le plugin Mondial Relay dans un environnement standard.','Wordpress de test pour le plugin Mondial Relay','','publish','closed','open','','page-d-exemple','','','2017-11-17 16:47:32','2017-11-17 15:47:32','',0,'http://wp-woocommerce.local/?page_id=2',0,'page','',0),
	(5,1,'2016-12-14 23:50:01','2016-12-14 22:50:01','','Shop','','publish','closed','closed','','shop','','','2016-12-14 23:50:01','2016-12-14 22:50:01','',0,'http://wp-woocommerce.local/?page_id=5',0,'page','',0),
	(6,1,'2016-12-14 23:50:01','2016-12-14 22:50:01','[woocommerce_cart]','Cart','','publish','closed','closed','','cart','','','2016-12-14 23:50:01','2016-12-14 22:50:01','',0,'http://wp-woocommerce.local/?page_id=6',0,'page','',0),
	(7,1,'2016-12-14 23:50:01','2016-12-14 22:50:01','[woocommerce_checkout]','Checkout','','publish','closed','closed','','checkout','','','2016-12-14 23:50:01','2016-12-14 22:50:01','',0,'http://wp-woocommerce.local/?page_id=7',0,'page','',0),
	(8,1,'2016-12-14 23:50:01','2016-12-14 22:50:01','[woocommerce_my_account]','My Account','','publish','closed','closed','','my-account','','','2016-12-14 23:50:01','2016-12-14 22:50:01','',0,'http://wp-woocommerce.local/?page_id=8',0,'page','',0),
	(10,1,'2016-12-14 23:52:53','2016-12-14 22:52:53','Test','Produit de test','','publish','open','closed','','produit-de-test','','','2016-12-14 23:52:53','2016-12-14 22:52:53','',0,'http://wp-woocommerce.local/?post_type=product&#038;p=10',0,'product','',0),
	(13,1,'2017-11-15 02:17:42','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2017-11-15 02:17:42','0000-00-00 00:00:00','',0,'http://test.mondialrelay-woocommerce.test/?p=13',0,'post','',0),
	(14,1,'2017-11-17 16:44:11','2017-11-17 15:44:11','{\n    \"blogdescription\": {\n        \"value\": \"Wordpress de test pour le plugin WooCommerce Mondial Relay\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-17 15:44:11\"\n    }\n}','','','trash','closed','closed','','98902e8c-f6e9-4e7e-b99a-e5b29eb3b4f6','','','2017-11-17 16:44:11','2017-11-17 15:44:11','',0,'http://test.mondialrelay-woocommerce.test/?p=14',0,'customize_changeset','',0),
	(15,1,'2017-11-17 16:44:22','2017-11-17 15:44:22','{\n    \"blogname\": {\n        \"value\": \"Wordpress WooCommerce\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-17 15:44:22\"\n    }\n}','','','trash','closed','closed','','3cb03792-76c6-4e78-a0d6-de30ef5c372c','','','2017-11-17 16:44:22','2017-11-17 15:44:22','',0,'http://test.mondialrelay-woocommerce.test/?p=15',0,'customize_changeset','',0),
	(16,1,'2017-11-17 16:44:40','2017-11-17 15:44:40','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-17 15:44:40\"\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-17 15:44:40\"\n    }\n}','','','trash','closed','closed','','13ec65b1-a95b-4e2d-874c-2c2167f2b285','','','2017-11-17 16:44:40','2017-11-17 15:44:40','',0,'http://test.mondialrelay-woocommerce.test/?p=16',0,'customize_changeset','',0),
	(17,1,'2017-11-17 16:46:00','2017-11-17 15:46:00','{\n    \"custom_css[storefront]\": {\n        \"value\": \".site-header .site-branding {\\n    width: auto;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-17 15:46:00\"\n    }\n}','','','trash','closed','closed','','2013310a-34c5-40ea-8a69-a930b45f8114','','','2017-11-17 16:46:00','2017-11-17 15:46:00','',0,'http://test.mondialrelay-woocommerce.test/?p=17',0,'customize_changeset','',0),
	(18,1,'2017-11-17 16:46:00','2017-11-17 15:46:00','.site-header .site-branding {\n    width: auto;\n}','storefront','','publish','closed','closed','','storefront','','','2017-11-17 16:46:00','2017-11-17 15:46:00','',0,'http://test.mondialrelay-woocommerce.test/?p=18',0,'custom_css','',0),
	(19,1,'2017-11-17 16:46:00','2017-11-17 15:46:00','.site-header .site-branding {\n    width: auto;\n}','storefront','','inherit','closed','closed','','18-revision-v1','','','2017-11-17 16:46:00','2017-11-17 15:46:00','',18,'http://test.mondialrelay-woocommerce.test/?p=19',0,'revision','',0),
	(20,1,'2017-11-17 16:47:32','2017-11-17 15:47:32','Un site Wordpress incluant WooCommerce directement configuré afin de tester le plugin Mondial Relay dans un environnement standard.','Wordpress de test pour le plugin Mondial Relay','','inherit','closed','closed','','2-revision-v1','','','2017-11-17 16:47:32','2017-11-17 15:47:32','',2,'http://test.mondialrelay-woocommerce.test/?p=20',0,'revision','',0);

/*!40000 ALTER TABLE `wpwc_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wpwc_term_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_term_relationships`;

CREATE TABLE `wpwc_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wpwc_term_relationships` WRITE;
/*!40000 ALTER TABLE `wpwc_term_relationships` DISABLE KEYS */;

INSERT INTO `wpwc_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
	(1,1,0),
	(10,2,0);

/*!40000 ALTER TABLE `wpwc_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wpwc_term_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_term_taxonomy`;

CREATE TABLE `wpwc_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wpwc_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wpwc_term_taxonomy` DISABLE KEYS */;

INSERT INTO `wpwc_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`)
VALUES
	(1,1,'category','',0,1),
	(2,2,'product_type','',0,1),
	(3,3,'product_type','',0,0),
	(4,4,'product_type','',0,0),
	(5,5,'product_type','',0,0),
	(6,6,'product_visibility','',0,0),
	(7,7,'product_visibility','',0,0),
	(8,8,'product_visibility','',0,0),
	(9,9,'product_visibility','',0,0),
	(10,10,'product_visibility','',0,0),
	(11,11,'product_visibility','',0,0),
	(12,12,'product_visibility','',0,0),
	(13,13,'product_visibility','',0,0),
	(14,14,'product_visibility','',0,0);

/*!40000 ALTER TABLE `wpwc_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wpwc_termmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_termmeta`;

CREATE TABLE `wpwc_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wpwc_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_terms`;

CREATE TABLE `wpwc_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wpwc_terms` WRITE;
/*!40000 ALTER TABLE `wpwc_terms` DISABLE KEYS */;

INSERT INTO `wpwc_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
	(1,'Non classé','non-classe',0),
	(2,'simple','simple',0),
	(3,'grouped','grouped',0),
	(4,'variable','variable',0),
	(5,'external','external',0),
	(6,'exclude-from-search','exclude-from-search',0),
	(7,'exclude-from-catalog','exclude-from-catalog',0),
	(8,'featured','featured',0),
	(9,'outofstock','outofstock',0),
	(10,'rated-1','rated-1',0),
	(11,'rated-2','rated-2',0),
	(12,'rated-3','rated-3',0),
	(13,'rated-4','rated-4',0),
	(14,'rated-5','rated-5',0);

/*!40000 ALTER TABLE `wpwc_terms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wpwc_usermeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_usermeta`;

CREATE TABLE `wpwc_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wpwc_usermeta` WRITE;
/*!40000 ALTER TABLE `wpwc_usermeta` DISABLE KEYS */;

INSERT INTO `wpwc_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
	(1,1,'nickname','admin'),
	(2,1,'first_name',''),
	(3,1,'last_name',''),
	(4,1,'description',''),
	(5,1,'rich_editing','true'),
	(6,1,'comment_shortcuts','false'),
	(7,1,'admin_color','fresh'),
	(8,1,'use_ssl','0'),
	(9,1,'show_admin_bar_front','true'),
	(10,1,'locale',''),
	(11,1,'wpwc_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
	(12,1,'wpwc_user_level','10'),
	(13,1,'dismissed_wp_pointers',''),
	(14,1,'show_welcome_panel','0'),
	(15,1,'session_tokens','a:1:{s:64:\"b3b92bcf8fce298487a3cc0d3ff1b53ba3e0fcc15e3fb11e2a125eb63136fe03\";a:4:{s:10:\"expiration\";i:1511106121;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1510933321;}}'),
	(16,1,'wpwc_dashboard_quick_press_last_post_id','13'),
	(17,1,'manageedit-shop_ordercolumnshidden','a:1:{i:0;s:15:\"billing_address\";}'),
	(18,1,'_woocommerce_persistent_cart','a:1:{s:4:\"cart\";a:1:{s:32:\"d3d9446802a44259755d38e6d163e820\";a:9:{s:10:\"product_id\";i:10;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:10:\"line_total\";i:10;s:8:\"line_tax\";i:0;s:13:\"line_subtotal\";i:10;s:17:\"line_subtotal_tax\";i:0;s:13:\"line_tax_data\";a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}}}}'),
	(19,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
	(20,1,'_woocommerce_persistent_cart_1','a:1:{s:4:\"cart\";a:1:{s:32:\"d3d9446802a44259755d38e6d163e820\";a:9:{s:10:\"product_id\";i:10;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:10:\"line_total\";i:10;s:8:\"line_tax\";d:2;s:13:\"line_subtotal\";i:10;s:17:\"line_subtotal_tax\";d:2;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:1:{i:1;d:2;}s:5:\"total\";a:1:{i:1;d:2;}}}}}'),
	(21,1,'closedpostboxes_dashboard','a:4:{i:0;s:18:\"dashboard_activity\";i:1;s:36:\"woocommerce_dashboard_recent_reviews\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
	(22,1,'metaboxhidden_dashboard','a:0:{}'),
	(23,1,'meta-box-order_dashboard','a:4:{s:6:\"normal\";s:48:\"dashboard_right_now,woocommerce_dashboard_status\";s:4:\"side\";s:95:\"dashboard_quick_press,dashboard_primary,dashboard_activity,woocommerce_dashboard_recent_reviews\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}');

/*!40000 ALTER TABLE `wpwc_usermeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wpwc_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_users`;

CREATE TABLE `wpwc_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wpwc_users` WRITE;
/*!40000 ALTER TABLE `wpwc_users` DISABLE KEYS */;

INSERT INTO `wpwc_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`)
VALUES
	(1,'admin','$P$BWTcfSaVXasSobzMcIGb2WHQwN/qRV/','admin','admin@admin.com','','2016-12-14 22:46:34','',0,'admin');

/*!40000 ALTER TABLE `wpwc_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wpwc_woocommerce_api_keys
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_woocommerce_api_keys`;

CREATE TABLE `wpwc_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wpwc_woocommerce_attribute_taxonomies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_woocommerce_attribute_taxonomies`;

CREATE TABLE `wpwc_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wpwc_woocommerce_downloadable_product_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_woocommerce_downloadable_product_permissions`;

CREATE TABLE `wpwc_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wpwc_woocommerce_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_woocommerce_log`;

CREATE TABLE `wpwc_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wpwc_woocommerce_order_itemmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_woocommerce_order_itemmeta`;

CREATE TABLE `wpwc_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wpwc_woocommerce_order_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_woocommerce_order_items`;

CREATE TABLE `wpwc_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wpwc_woocommerce_payment_tokenmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_woocommerce_payment_tokenmeta`;

CREATE TABLE `wpwc_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wpwc_woocommerce_payment_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_woocommerce_payment_tokens`;

CREATE TABLE `wpwc_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wpwc_woocommerce_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_woocommerce_sessions`;

CREATE TABLE `wpwc_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wpwc_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `wpwc_woocommerce_sessions` DISABLE KEYS */;

INSERT INTO `wpwc_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`)
VALUES
	(18,'1','a:12:{s:4:\"cart\";s:319:\"a:1:{s:32:\"d3d9446802a44259755d38e6d163e820\";a:9:{s:10:\"product_id\";i:10;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:10:\"line_total\";i:10;s:8:\"line_tax\";d:2;s:13:\"line_subtotal\";i:10;s:17:\"line_subtotal_tax\";d:2;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:1:{i:1;d:2;}s:5:\"total\";a:1:{i:1;d:2;}}}}\";s:11:\"cart_totals\";s:418:\"a:15:{s:8:\"subtotal\";s:2:\"10\";s:12:\"subtotal_tax\";d:2;s:14:\"shipping_total\";s:1:\"3\";s:12:\"shipping_tax\";d:0.6;s:14:\"shipping_taxes\";a:1:{i:1;d:0.6;}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";s:1:\"0\";s:19:\"cart_contents_total\";s:2:\"10\";s:17:\"cart_contents_tax\";d:2;s:19:\"cart_contents_taxes\";a:1:{i:1;d:2;}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:4:\"15.6\";s:9:\"total_tax\";d:2.6;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:737:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_840b09c16ae427f734a440e1b8cf8a7d\";s:5:\"rates\";a:2:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:20:\"Mondial Relay France\";s:4:\"cost\";s:4:\"3.00\";s:5:\"taxes\";a:1:{i:1;d:0.6000000000000001;}}s:12:\"\0*\0meta_data\";a:1:{s:8:\"Articles\";s:25:\"Produit de test &times; 1\";}}s:11:\"flat_rate:2\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:2\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:2;s:5:\"label\";s:22:\"Autre livraison France\";s:4:\"cost\";s:4:\"2.00\";s:5:\"taxes\";a:1:{i:1;d:0.4;}}s:12:\"\0*\0meta_data\";a:1:{s:8:\"Articles\";s:25:\"Produit de test &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:62:\"a:1:{i:0;a:2:{i:0;s:11:\"flat_rate:1\";i:1;s:11:\"flat_rate:2\";}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:2;}\";s:8:\"customer\";s:665:\"a:25:{s:2:\"id\";i:1;s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"FR\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"FR\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:15:\"admin@admin.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:10:\"wc_notices\";N;}',1511106124);

/*!40000 ALTER TABLE `wpwc_woocommerce_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wpwc_woocommerce_shipping_zone_locations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_woocommerce_shipping_zone_locations`;

CREATE TABLE `wpwc_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(90))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wpwc_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wpwc_woocommerce_shipping_zone_locations` DISABLE KEYS */;

INSERT INTO `wpwc_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`)
VALUES
	(1,1,'FR','country'),
	(2,2,'DE','country'),
	(3,2,'BE','country'),
	(4,2,'ES','country');

/*!40000 ALTER TABLE `wpwc_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wpwc_woocommerce_shipping_zone_methods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_woocommerce_shipping_zone_methods`;

CREATE TABLE `wpwc_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wpwc_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wpwc_woocommerce_shipping_zone_methods` DISABLE KEYS */;

INSERT INTO `wpwc_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`)
VALUES
	(1,1,'flat_rate',1,1),
	(1,2,'flat_rate',2,1),
	(2,3,'flat_rate',1,1),
	(2,4,'flat_rate',2,1);

/*!40000 ALTER TABLE `wpwc_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wpwc_woocommerce_shipping_zones
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_woocommerce_shipping_zones`;

CREATE TABLE `wpwc_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wpwc_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wpwc_woocommerce_shipping_zones` DISABLE KEYS */;

INSERT INTO `wpwc_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`)
VALUES
	(1,'France',0),
	(2,'Europe',0);

/*!40000 ALTER TABLE `wpwc_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wpwc_woocommerce_tax_rate_locations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_woocommerce_tax_rate_locations`;

CREATE TABLE `wpwc_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(90))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wpwc_woocommerce_tax_rates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wpwc_woocommerce_tax_rates`;

CREATE TABLE `wpwc_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(191)),
  KEY `tax_rate_class` (`tax_rate_class`(191)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wpwc_woocommerce_tax_rates` WRITE;
/*!40000 ALTER TABLE `wpwc_woocommerce_tax_rates` DISABLE KEYS */;

INSERT INTO `wpwc_woocommerce_tax_rates` (`tax_rate_id`, `tax_rate_country`, `tax_rate_state`, `tax_rate`, `tax_rate_name`, `tax_rate_priority`, `tax_rate_compound`, `tax_rate_shipping`, `tax_rate_order`, `tax_rate_class`)
VALUES
	(1,'FR','','20.0000','VAT',1,0,1,0,'');

/*!40000 ALTER TABLE `wpwc_woocommerce_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
