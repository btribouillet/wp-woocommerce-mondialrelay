# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.2.6-MariaDB)
# Database: woocommerce-mondialrelay-test
# Generation Time: 2017-11-15 01:23:55 +0000
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
	(3,'blogname','Wordpress','yes'),
	(4,'blogdescription','Wordpress WooCommerce','yes'),
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
	(53,'show_on_front','posts','yes'),
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
	(84,'page_on_front','0','yes'),
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
	(105,'cron','a:9:{i:1510712068;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1510742795;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1510751668;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1510785995;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1510786277;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1510786800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1510794868;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1512432000;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}','yes'),
	(122,'can_compress_scripts','0','no'),
	(139,'current_theme','Storefront','yes'),
	(140,'theme_mods_storefront','a:5:{i:0;b:0;s:17:\"storefront_styles\";s:4645:\"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #d5d9db;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #d5d9db;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #ffffff;\n			}\n\n			table th {\n				background-color: #f8f8f8;\n			}\n\n			table tbody td {\n				background-color: #fdfdfd;\n			}\n\n			table tbody tr:nth-child(2n) td {\n				background-color: #fbfbfb;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #2c2d33;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #9aa0a7;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #d5d9db;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #2c2d33;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #2c2d33;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #484c51;\n			}\n\n			.widget h1 {\n				border-bottom-color: #484c51;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #43454b;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #75777d;\n			}\n\n			a  {\n				color: #96588a;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type=\"button\"]:focus,\n			input[type=\"reset\"]:focus,\n			input[type=\"submit\"]:focus {\n				outline-color: #96588a;\n			}\n\n			button, input[type=\"button\"], input[type=\"reset\"], input[type=\"submit\"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #96588a;\n				border-color: #96588a;\n				color: #ffffff;\n			}\n\n			button:hover, input[type=\"button\"]:hover, input[type=\"reset\"]:hover, input[type=\"submit\"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #7d3f71;\n				border-color: #7d3f71;\n				color: #ffffff;\n			}\n\n			button.alt, input[type=\"button\"].alt, input[type=\"reset\"].alt, input[type=\"submit\"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current, .widget a.button.checkout {\n				background-color: #2c2d33;\n				border-color: #2c2d33;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type=\"button\"].alt:hover, input[type=\"reset\"].alt:hover, input[type=\"submit\"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #13141a;\n				border-color: #13141a;\n				color: #ffffff;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #f8f8f8;\n			}\n\n			.site-footer {\n				background-color: #f0f0f0;\n				color: #61656b;\n			}\n\n			.site-footer a:not(.button) {\n				color: #2c2d33;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #494c50;\n			}\n\n			#order_review,\n			#payment .payment_methods > li .payment_box {\n				background-color: #ffffff;\n			}\n\n			#payment .payment_methods > li {\n				background-color: #fafafa;\n			}\n\n			#payment .payment_methods > li:hover {\n				background-color: #f5f5f5;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #b3b9c0;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #9aa0a7;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #24252b;\n				}\n			}\";s:29:\"storefront_woocommerce_styles\";s:2231:\"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #d5d9db;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #ffffff;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #43454b;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #75777d;\n			}\n\n			.onsale {\n				border-color: #43454b;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #96588a;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #96588a;\n			}\n\n			.woocommerce-breadcrumb,\n			#reviews .commentlist li .comment_container {\n				background-color: #f8f8f8;\n			}\n\n			.order_details {\n				background-color: #f8f8f8;\n			}\n\n			.order_details li {\n				border-bottom: 1px dotted #e3e3e3;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#f8f8f8 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#f8f8f8 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #43454b;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #96588a;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #96588a;\n				color: #ffffff;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #7d3f71;\n				border-color: #7d3f71;\n				color: #ffffff;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #9aa0a7;\n				}\n			}\";s:18:\"custom_css_post_id\";i:-1;s:39:\"storefront_woocommerce_extension_styles\";s:0:\"\";}','yes'),
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
	(620,'_transient_timeout__woocommerce_helper_subscriptions','1510709127','no'),
	(621,'_transient__woocommerce_helper_subscriptions','a:0:{}','no'),
	(622,'_site_transient_timeout_theme_roots','1510710171','no'),
	(623,'_site_transient_theme_roots','a:1:{s:10:\"storefront\";s:7:\"/themes\";}','no'),
	(624,'_transient_timeout__woocommerce_helper_updates','1510751428','no'),
	(625,'_transient__woocommerce_helper_updates','a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1510708227;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}','no'),
	(628,'_site_transient_timeout_browser_6cd77015ec4a62e4fdace07d0b0a8f84','1511313031','no'),
	(629,'_site_transient_browser_6cd77015ec4a62e4fdace07d0b0a8f84','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"62.0.3202.94\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),
	(630,'_transient_timeout_wc_report_sales_by_date','1510795068','no'),
	(631,'_transient_wc_report_sales_by_date','a:24:{s:32:\"785187e71e3726acb05b3348d9261701\";a:0:{}s:32:\"62a10eedb1de2628094fb7ee07ede61a\";a:0:{}s:32:\"c0a30d7c64e0f2ca2bbff5605ab4edb5\";a:0:{}s:32:\"69197d3226dd3c523905bd34b01372d9\";N;s:32:\"91cbabbc8b1dfffd7e7deb7d6aabfa52\";a:0:{}s:32:\"47bc348a62ace75fc190a7d9b44f05f9\";a:0:{}s:32:\"6d5bca45b9c3ae2325a9c3502b107e02\";a:0:{}s:32:\"20b0a3ad920b59a4888dfe758e2824ab\";a:0:{}s:32:\"d29da89537d0fad2686ec68d9f136103\";a:0:{}s:32:\"6c2789cd8db7ca8dcf34e12138289132\";a:0:{}s:32:\"95407cb2bd580971b70a9735a05f30c4\";a:0:{}s:32:\"b3cfa8d4fc4b271d869024af46e8ff5c\";N;s:32:\"5d82ed47c0f89b0bc094a64bc1809249\";a:0:{}s:32:\"df7cb488fc3a54ad918d556226f7045d\";a:0:{}s:32:\"f4f30f6cb12401848bc95f6a2bc19d5d\";a:0:{}s:32:\"bcdfcce48231f3289a4603707da7f360\";a:0:{}s:32:\"42a47cf5bc1fde2fd839c3c5bc3a159e\";a:0:{}s:32:\"7e1256fc50256e25d0c20eebd9b0e2e6\";a:0:{}s:32:\"e621526407e32c72645ea259af436a29\";a:0:{}s:32:\"4453e3f4e3e2ee8cb985d9d9335ec046\";N;s:32:\"7fd2bd26463054edd1d2bc32d22b5fb0\";a:0:{}s:32:\"7aa7ce51258ad597bf682c37f07c2adf\";a:0:{}s:32:\"a01836ddeb0207c35c81926361df1adc\";a:0:{}s:32:\"9eb787b5344d4261a7e6a4ac5a1b5fe4\";a:0:{}}','no'),
	(632,'_transient_timeout_wc_admin_report','1510794631','no'),
	(633,'_transient_wc_admin_report','a:1:{s:32:\"67aafd6e515e490b377e6efc44317a06\";a:0:{}}','no'),
	(634,'_transient_timeout_wc_low_stock_count','1513300231','no'),
	(635,'_transient_wc_low_stock_count','0','no'),
	(636,'_transient_timeout_wc_outofstock_count','1513300231','no'),
	(637,'_transient_wc_outofstock_count','0','no'),
	(638,'_transient_timeout_feed_66a70e9599b658d5cc038e8074597e7c','1510751432','no'),
	(639,'_transient_feed_66a70e9599b658d5cc038e8074597e7c','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"https://wpfr.net\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Site officiel de la communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 14 Nov 2017 22:52:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Certification WordPress par WPFR, appel à contributions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2017 06:46:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1931227\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Le chantier lié à la mise en place d&#8217;une certification WordPress accessible via le Compte Personnel de Formation (CPF) et enregistré auprès du Registre National des Certifications Professionnelles (RNCP) est en marche. Ce dernier est mené par Maxime Bernard-Jacquet avec nous l&#8217;espérons des résultats concrets pour 2018. Cette mission a été relancée lors de la<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/UUGDJmDzVjE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"Le 30 septembre, c’est le WordPress Translation Day 2017 !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/PgJgl5KXQwk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Sep 2017 12:03:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"traduction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1883236\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1488:\"Le troisième WordPress Translation Day aura lieu le 30 septembre 2017 ! Le 30/09 se déroulera un marathon mondial de 24 heures dédié à la traduction et à la localisation de la plate-forme WordPress et de son écosystème : thèmes, extensions, applications… Organisé par l&#8217;équipe WordPress Polyglots dont la mission est de traduire WordPress dans<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/PgJgl5KXQwk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"#GEN5, l’évènement numérique du grand-Est où l’on cause WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/POlUtKLV2DI/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wpfr.net/gen5-evenement-numerique-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 05 Sep 2017 11:59:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1860285\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1488:\"La 5e édition de Grand-Est Numérique ou #GEN5 aura lieu les 21 et 22 septembre 2017 au Centre Foire et Congrès de Metz. Cet évènement réservé aux professionnels du numérique nous propose un programme de conférences, tables rondes et autres ateliers participatifs. Deux sessions autour de WordPress vous seront proposées par votre humble serviteur. WPFR<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/POlUtKLV2DI\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/gen5-evenement-numerique-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wpfr.net/gen5-evenement-numerique-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"BlendWebMix 2017 : WPFR est partenaire !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/WzJcLpFnZ7Q/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wpfr.net/blendwebmix-2017-wpfr-partenaire/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 16 Aug 2017 10:00:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1780344\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1513:\"Le BlendWebMix 2017 aura lieu les 26 et 27 octobre 2017 à Lyon. Pour l&#8217;occasion, WPFR vous propose une billetterie communautaire pour vous faire profiter de tarifs avantageux. Le BlendWebMix est un évènement Web similaire aux WordCamps organisés par la communauté WordPress. Elle rassemble des orateurs talentueux aux multiples compétences Web qui vous feront partager leurs<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=WzJcLpFnZ7Q:LaqrXUsOGtI:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=WzJcLpFnZ7Q:LaqrXUsOGtI:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/WzJcLpFnZ7Q\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wpfr.net/blendwebmix-2017-wpfr-partenaire/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wpfr.net/blendwebmix-2017-wpfr-partenaire/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:30:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"Compte rendu de la réunion du 10 juillet 2017\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/HOXhXbdFR7A/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 03 Aug 2017 06:22:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Association\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1689645\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1481:\"Présents : Xavier Borderie, Benoît Catherineau et Aurélien Denis L’ordre du jour Les finances Actions en cours et à venir Questions diverses Aurélien Denis, Président, ouvre la séance en rappelant que l&#8217;association compte à ce jour 225 membres à jour de leur cotisation. Il passe la parole à Xavier pour parler des finances. Les finances<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HOXhXbdFR7A:_7ilDV_EV8s:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HOXhXbdFR7A:_7ilDV_EV8s:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=HOXhXbdFR7A:_7ilDV_EV8s:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HOXhXbdFR7A:_7ilDV_EV8s:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HOXhXbdFR7A:_7ilDV_EV8s:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=HOXhXbdFR7A:_7ilDV_EV8s:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/HOXhXbdFR7A\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Benoît Catherineau\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/compte-rendu-reunion-10-juillet-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"Les résultats du grand sondage de la communauté francophone de WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/_z7qQytCHB8/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://wpfr.net/resultats-grand-sondage-de-communaute-francophone-de-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 14 Jul 2017 12:52:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:7:\"Brèves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:7:\"sondage\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1647338\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1513:\"Fin mai, un grand sondage était lancé par Maxime Bernard-Jacquet au nom de la communauté francophone de WordPress afin de mieux identifier comment elle se composait ! Aujourd&#8217;hui les résultats sont disponibles. La première statistique intéressante est la participation, puisque ce sont 1000 personnes qui ont répondues à ce questionnaire. Ceci permet donc d&#8217;avoir des<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_z7qQytCHB8:88mzRUJSvF0:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_z7qQytCHB8:88mzRUJSvF0:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=_z7qQytCHB8:88mzRUJSvF0:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_z7qQytCHB8:88mzRUJSvF0:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_z7qQytCHB8:88mzRUJSvF0:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=_z7qQytCHB8:88mzRUJSvF0:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/_z7qQytCHB8\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Benoît Catherineau\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wpfr.net/resultats-grand-sondage-de-communaute-francophone-de-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://wpfr.net/resultats-grand-sondage-de-communaute-francophone-de-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Cap des 200 adhérents WPFR franchi !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/dZ9emWhTWPc/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/cap-200-adherents-wpfr-franchi/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 13 Jun 2017 15:16:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1642124\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1476:\"C&#8217;est officiel, l&#8217;association WordPress Francophone compte 200 membres à jour de cotisation ! Ouvertes depuis septembre 2016, les adhésions en ligne remportent un vif succès et nous sommes heureux de voir que la communauté WordPress se porte bien. On se donne rendez-vous à Paris pour le WordCamp Europe du 16 et 17 juin prochain. Le<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=dZ9emWhTWPc:XRx8AZKI2zs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=dZ9emWhTWPc:XRx8AZKI2zs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=dZ9emWhTWPc:XRx8AZKI2zs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=dZ9emWhTWPc:XRx8AZKI2zs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=dZ9emWhTWPc:XRx8AZKI2zs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=dZ9emWhTWPc:XRx8AZKI2zs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/dZ9emWhTWPc\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wpfr.net/cap-200-adherents-wpfr-franchi/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/cap-200-adherents-wpfr-franchi/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"Un grand sondage pour mieux connaître la communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/ArHvRJvd55Y/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wpfr.net/grand-sondage-mieux-connaitre-communaute/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 23 May 2017 14:15:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1638548\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1516:\"Maxime et Alexandre, les « chefs cuistot » de la communauté viennent de lancer un sondage à destination de la communauté francophone de WordPress. L&#8217;objectif est de mieux connaitre celles et ceux qui la composent. Alors que vous soyez débutant ou confirmé, simple utilisateur, bidouilleur passionné ou professionnel venez répondre à ce questionnaire qui permettra de mieux<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ArHvRJvd55Y:rW_1swugq14:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ArHvRJvd55Y:rW_1swugq14:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=ArHvRJvd55Y:rW_1swugq14:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ArHvRJvd55Y:rW_1swugq14:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ArHvRJvd55Y:rW_1swugq14:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=ArHvRJvd55Y:rW_1swugq14:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/ArHvRJvd55Y\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Benoît Catherineau\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wpfr.net/grand-sondage-mieux-connaitre-communaute/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpfr.net/grand-sondage-mieux-connaitre-communaute/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"Compte rendu de la réunion du bureau du 9 mars 2017\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/scUWeRFptEQ/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wpfr.net/compte-rendu-reunion-bureau-9-mars-2017/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 03 Apr 2017 09:02:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:8:\"Réunion\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1629790\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1529:\"Présent : Willy Bahuaud, Xavier, Borderie, Benoît Catherineau et Aurélien Denis L’élection du nouveau bureau a été clôturée le 4 mars 2017. Le résultat donne vainqueur les 3 candidats suivants : Benoît Catherineau, Xavier Borderie, Aurélien Denis. Cette réunion a pour objet l’installation du nouveau bureau de WPFR. L’ordre du jour Répartition des postes de Président, Secrétaire<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=scUWeRFptEQ:5gEow5Kjbq4:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=scUWeRFptEQ:5gEow5Kjbq4:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=scUWeRFptEQ:5gEow5Kjbq4:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=scUWeRFptEQ:5gEow5Kjbq4:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=scUWeRFptEQ:5gEow5Kjbq4:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=scUWeRFptEQ:5gEow5Kjbq4:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/scUWeRFptEQ\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Benoît Catherineau\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wpfr.net/compte-rendu-reunion-bureau-9-mars-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"9\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/compte-rendu-reunion-bureau-9-mars-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Résultats des élections du bureau 2017\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/_rNOgYbgrxk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpfr.net/resultats-elections-bureau-2017/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 13 Mar 2017 14:35:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1625743\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1487:\"Suite à la votation électronique qui s&#8217;est déroulée du 24 février au 3 mars 2017, nous vous communiquons les résultats pour l&#8217;élection du bureau 2017. Vous avez été 54% des adhérents à participer au vote, soit 87 suffrages exprimés. 5 candidatures étaient présentées pour 3 postes à pourvoir. Chaque candidat a reçu une majorité de<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_rNOgYbgrxk:qyaNilbMKjw:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_rNOgYbgrxk:qyaNilbMKjw:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=_rNOgYbgrxk:qyaNilbMKjw:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_rNOgYbgrxk:qyaNilbMKjw:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_rNOgYbgrxk:qyaNilbMKjw:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=_rNOgYbgrxk:qyaNilbMKjw:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/_rNOgYbgrxk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/resultats-elections-bureau-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wpfr.net/resultats-elections-bureau-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:48:\"http://feeds.feedburner.com/WordpressFrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:4:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:20:\"wordpressfrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:14:\"emailServiceId\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordpressFrancophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:18:\"feedburnerHostname\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://feedburner.google.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"feedFlare\";a:9:{i:0;a:5:{s:4:\"data\";s:24:\"Subscribe with NewsGator\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:112:\"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://www.newsgator.com/images/ngsub1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:24:\"Subscribe with Bloglines\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:77:\"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone\";s:3:\"src\";s:48:\"http://www.bloglines.com/images/sub_modern11.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:23:\"Subscribe with Netvibes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:98:\"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:39:\"//www.netvibes.com/img/add2netvibes.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:21:\"Subscribe with Google\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:93:\"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:51:\"http://buttons.googlesyndication.com/fusion/add.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:25:\"Subscribe with Pageflakes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:101:\"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:87:\"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:21:\"Subscribe with Plusmo\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:86:\"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:43:\"http://plusmo.com/res/graphics/fbplusmo.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:23:\"Subscribe with Live.com\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:81:\"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:141:\"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:25:\"Subscribe with Mon Yahoo!\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:99:\"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:60:\"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:25:\"Subscribe with Excite MIX\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:89:\"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://image.excite.co.uk/mix/addtomix.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:10:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"tsQ38SOXSpgrxtMYgq1Lv37nuIk\";s:13:\"last-modified\";s:29:\"Wed, 15 Nov 2017 00:14:40 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Wed, 15 Nov 2017 01:10:32 GMT\";s:7:\"expires\";s:29:\"Wed, 15 Nov 2017 01:10:32 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";}}s:5:\"build\";s:14:\"20170404165330\";}','no'),
	(640,'_transient_timeout_feed_mod_66a70e9599b658d5cc038e8074597e7c','1510751432','no'),
	(641,'_transient_feed_mod_66a70e9599b658d5cc038e8074597e7c','1510708232','no'),
	(642,'_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6','1510751433','no'),
	(643,'_transient_feed_76f8d9281c01f21e505004d0986f50c6','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n		\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:79:\"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Planète WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"https://wpfr.net/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Toute l’actualité de WordPress en français !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:8:{i:0;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"Beaver Builder 2.0 Hoover est arrivé (Page builder WordPress)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/CQrwB_c1w7Y/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://www.wpnormandie.fr/beaver-builder-2-0-hoover-est-arrive-page-builder-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 13 Nov 2017 17:15:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:394:\"\n		        Beaver Builder 2.0, Hoover est arrivé. Nommée d&#8217;après le barrage Hoover au USA, cette nouvelle mouture du célèbre Page builder pour WordPress est une version majeure de l’outil. Beaver Builder 2.0 introduis un grand nombre d&#8217;options de personnalisation. Pour rappel, Beaver Builder existe depuis 4 ans. Il est utilisé sur plus de 500 000 sites [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:464:\"Beaver Builder 2.0, Hoover est arrivé. Nommée d&#8217;après le barrage Hoover au USA, cette nouvelle mouture du célèbre Page builder pour WordPress est une version majeure de l’outil. Beaver Builder 2.0 introduis un grand nombre d&#8217;options de personnalisation. Pour rappel, Beaver Builder existe depuis 4 ans. Il est utilisé sur plus de 500 000 sites [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/CQrwB_c1w7Y\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://www.wpnormandie.fr/beaver-builder-2-0-hoover-est-arrive-page-builder-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Ajouter une nouvelle zone de menu à un thème WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/IMSrVAxOQzk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wpformation.com/ajouter-une-nouvelle-zone-de-menu-a-un-theme-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 13 Nov 2017 07:10:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:538:\"\n		        Vous avez enfin trouvé le thème WordPress idéal mais une ombre se dessine au tableau : il vous permet de créer seulement un menu (une seule navigation). Vous auriez bien aimé pouvoir ajouter un nouveau menu à votre thème, par exemple dans le footer de votre site ? Pas de problème, le CMS WordPress permet de [&#8230;]\n\n\nAjouter une nouvelle zone de menu à un thème WordPress est un article de WP FormationFormation WordPress, SEO &amp; WooCommerce - Pour ne rien manquer : Abonnez-vous à la newsletter !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1415:\"<p><img width=\"1200\" height=\"900\" src=\"https://cdn.wpformation.com/wp-content/uploads/2017/10/ajouter-menu-wordpress.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"Ajouter un menu à son thème WordPress\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />Vous avez enfin trouvé le thème WordPress idéal mais une ombre se dessine au tableau : il vous permet de créer seulement un menu (une seule navigation). Vous auriez bien aimé pouvoir ajouter un nouveau menu à votre thème, par exemple dans le footer de votre site ? Pas de problème, le CMS WordPress permet de [&#8230;]</p>\n<p></p>\n<hr>\n<a rel=\"nofollow\" href=\"https://wpformation.com/ajouter-une-nouvelle-zone-de-menu-a-un-theme-wordpress/\">Ajouter une nouvelle zone de menu à un thème WordPress</a> est un article de <a title=\"Formation WordPress Ecommerce\" href=\"https://wpformation.com\">WP Formation</a><br /><a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a> &amp; <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">WooCommerce</a> - Pour ne rien manquer : <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous à la newsletter</a> !</p>\n<hr><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/IMSrVAxOQzk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wpformation.com/ajouter-une-nouvelle-zone-de-menu-a-un-theme-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"Comment optimiser un site WordPress sans se ruiner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/JqUgDG0Kj7k/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wpmarmite.com/optimiser-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 09 Nov 2017 06:30:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:393:\"\n		        \nUn site rapide et sans ralentissement. Vous en avez toujours rêvé, n&rsquo;est-ce pas ? Un site lent ca ne plait à personne, ni à vous, ni à vos visiteurs. C&rsquo;est...\nComment optimiser un site WordPress sans se ruiner est un article de WP Marmite, le blog qui vous aide à tirer le meilleur de WordPress.\nAbonnez-vous à la newsletter pour recevoir les suivants.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:833:\"<p><img width=\"640\" height=\"220\" src=\"https://media-6d6e.kxcdn.com/wp-content/uploads/2017/11/accelerer-wordpress.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>Un site rapide et sans ralentissement. Vous en avez toujours rêvé, n&rsquo;est-ce pas ? Un site lent ca ne plait à personne, ni à vous, ni à vos visiteurs. C&rsquo;est...</p>\n<p><a rel=\"nofollow\" href=\"https://wpmarmite.com/optimiser-wordpress/\">Comment optimiser un site WordPress sans se ruiner</a> est un article de <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>, le blog qui vous aide à tirer le meilleur de WordPress.<br />\n<a href=\"https://wpmarmite.com/newsletter\">Abonnez-vous à la newsletter</a> pour recevoir les suivants.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/JqUgDG0Kj7k\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wpmarmite.com/optimiser-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"Vous aimez WordPress soutenez WeThinkWP !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/IZ9fuvNBi6k/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://www.thivinfo.com/blog/vous-aimez-wordpress-soutenez-wethinkwp/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 06 Nov 2017 17:12:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:680:\"\n		        Comme vous le savez je suis développeur WordPress et j&#8217;essaie de m&#8217;impliquer dans la communauté en participant au forum d&#8217;entraide, en traduisant plusieurs extension WordPress en Français, en proposant des extensions gratuites sur le dépôt WordPress  et en créant quelques troll sur le Slack WordPress francophone ? Une autre initiative à vu le jour il y a quelques mois et c&#8217;est une initiative qui me tient à cœur et à laquelle j&#8217;ai tenu à participer en étant interviewé lors du dernier WordCamp Europe qui s&#8217;est tenu à Paris en juin 2017: WeThinkWP Pourquoi ce projet me tient à coeur? La première…		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:750:\"Comme vous le savez je suis développeur WordPress et j&#8217;essaie de m&#8217;impliquer dans la communauté en participant au forum d&#8217;entraide, en traduisant plusieurs extension WordPress en Français, en proposant des extensions gratuites sur le dépôt WordPress  et en créant quelques troll sur le Slack WordPress francophone ? Une autre initiative à vu le jour il y a quelques mois et c&#8217;est une initiative qui me tient à cœur et à laquelle j&#8217;ai tenu à participer en étant interviewé lors du dernier WordCamp Europe qui s&#8217;est tenu à Paris en juin 2017: WeThinkWP Pourquoi ce projet me tient à coeur? La première…<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/IZ9fuvNBi6k\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://www.thivinfo.com/blog/vous-aimez-wordpress-soutenez-wethinkwp/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WordPress 4.9 : Découvrez toutes les nouvelles fonctionnalités\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/ZVvKKOhtOFk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"https://wpmarmite.com/wordpress-4-9/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 06 Nov 2017 11:23:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:437:\"\n		        \nSalut, les Cuistots, c&rsquo;est Alex et bienvenue dans ce nouvel article où l&rsquo;on va découvrir les nouvelles fonctionnalités de WordPress 4.9. En fait, il s&rsquo;agit de la transcription de la...\nWordPress 4.9 : Découvrez toutes les nouvelles fonctionnalités est un article de WP Marmite, le blog qui vous aide à tirer le meilleur de WordPress.\nAbonnez-vous à la newsletter pour recevoir les suivants.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:865:\"<p><img width=\"640\" height=\"220\" src=\"https://media-6d6e.kxcdn.com/wp-content/uploads/2017/11/wordpress-4-9.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>Salut, les Cuistots, c&rsquo;est Alex et bienvenue dans ce nouvel article où l&rsquo;on va découvrir les nouvelles fonctionnalités de WordPress 4.9. En fait, il s&rsquo;agit de la transcription de la...</p>\n<p><a rel=\"nofollow\" href=\"https://wpmarmite.com/wordpress-4-9/\">WordPress 4.9 : Découvrez toutes les nouvelles fonctionnalités</a> est un article de <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>, le blog qui vous aide à tirer le meilleur de WordPress.<br />\n<a href=\"https://wpmarmite.com/newsletter\">Abonnez-vous à la newsletter</a> pour recevoir les suivants.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/ZVvKKOhtOFk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"https://wpmarmite.com/wordpress-4-9/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"Synchroniser sa base de données WordPress avec VersionPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/dL9s9Y9SffI/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://wpchannel.com/synchroniser-base-de-donnees-wordpress-versionpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 06 Nov 2017 07:30:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:374:\"\n		        Avec VersionPress, annuler la mise à jour d&#8217;une extension devient un jeu d&#8217;enfant. Fini les mises à jour qui endommagent votre site Web et qui génèrent des plaintes de la part de vos visiteurs. La question du versionnement de base de données est un sujet complexe sous WordPress. En effet, en tant que développeur, j&#8217;ai [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Channel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:653:\"<img width=\"465\" height=\"300\" src=\"https://wpchannel.com/images/2017/11/wordpress-mac-465x300.jpg\" class=\"webfeedsFeaturedVisual wp-post-image\" alt=\"\" style=\"margin: auto;margin-bottom: 5px;max-width: 100%\" />Avec VersionPress, annuler la mise à jour d&#8217;une extension devient un jeu d&#8217;enfant. Fini les mises à jour qui endommagent votre site Web et qui génèrent des plaintes de la part de vos visiteurs. La question du versionnement de base de données est un sujet complexe sous WordPress. En effet, en tant que développeur, j&#8217;ai [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/dL9s9Y9SffI\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://wpchannel.com/synchroniser-base-de-donnees-wordpress-versionpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"Définir un fichier .htaccess optimisé pour WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/fUV_QYlhxv8/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://wpformation.com/htaccess-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 06 Nov 2017 07:30:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:549:\"\n		        Le fichier .htaccess se situe à la racine de votre site web. Il permet de donner des instructions sur les modalités d’accès au contenu de votre site grâce à des fichiers de configuration spécifiques aux serveurs web Apache. Cela peut sous entendre des règles d’accès, de blocage, de cache, etc... Qui dit « accès aux [&#8230;]\n\n\nDéfinir un fichier .htaccess optimisé pour WordPress est un article de WP FormationFormation WordPress, SEO &amp; WooCommerce - Pour ne rien manquer : Abonnez-vous à la newsletter !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1375:\"<p><img width=\"1500\" height=\"482\" src=\"https://cdn.wpformation.com/wp-content/uploads/2017/10/htaccess-pour-WordPress.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"htaccess-pour-WordPress\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />Le fichier .htaccess se situe à la racine de votre site web. Il permet de donner des instructions sur les modalités d’accès au contenu de votre site grâce à des fichiers de configuration spécifiques aux serveurs web Apache. Cela peut sous entendre des règles d’accès, de blocage, de cache, etc... Qui dit « accès aux [&#8230;]</p>\n<p></p>\n<hr>\n<a rel=\"nofollow\" href=\"https://wpformation.com/htaccess-wordpress/\">Définir un fichier .htaccess optimisé pour WordPress</a> est un article de <a title=\"Formation WordPress Ecommerce\" href=\"https://wpformation.com\">WP Formation</a><br /><a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a> &amp; <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">WooCommerce</a> - Pour ne rien manquer : <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous à la newsletter</a> !</p>\n<hr><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/fUV_QYlhxv8\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://wpformation.com/htaccess-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"Faire du Domain Mapping avec WordPress multisite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/BiXHoC4-n24/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://www.thivinfo.com/blog/tutoriels/faire-du-domain-mapping-avec-wordpress-multisite/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 03 Nov 2017 18:20:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:708:\"\n		        Dans l&#8217;épisode précédent, je vous présentais simplement (du moins je l&#8217;espère) comment mettre en place un multisite sous WordPress. nous avons vu que nous pouvions donc créer sur la base d&#8217;une seule installation WordPress autant de site que nous voulions. Les sites créés avaient alors 2 syntaxes possibles: en sous-domaine ex: site1.example.com en sous-dossier ex: example.com/site1 Avouez que c&#8217;est un bon début mais que si en plus on pouvait avoir une URL personnalisée&#8230; alors ce serait parfait! Quand je parle d&#8217;URL personnalisée, je veux dire une adresse de site comme thivinfo.com pour le 1er site et tartempion.com pour le second.…		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:778:\"Dans l&#8217;épisode précédent, je vous présentais simplement (du moins je l&#8217;espère) comment mettre en place un multisite sous WordPress. nous avons vu que nous pouvions donc créer sur la base d&#8217;une seule installation WordPress autant de site que nous voulions. Les sites créés avaient alors 2 syntaxes possibles: en sous-domaine ex: site1.example.com en sous-dossier ex: example.com/site1 Avouez que c&#8217;est un bon début mais que si en plus on pouvait avoir une URL personnalisée&#8230; alors ce serait parfait! Quand je parle d&#8217;URL personnalisée, je veux dire une adresse de site comme thivinfo.com pour le 1er site et tartempion.com pour le second.…<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/BiXHoC4-n24\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://www.thivinfo.com/blog/tutoriels/faire-du-domain-mapping-avec-wordpress-multisite/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:32:\"http://feeds.feedburner.com/wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:4:\"wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"iSFplRHjiy2+bLHrxxIbut7ZJHs\";s:13:\"last-modified\";s:29:\"Wed, 15 Nov 2017 00:53:41 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Wed, 15 Nov 2017 01:10:33 GMT\";s:7:\"expires\";s:29:\"Wed, 15 Nov 2017 01:10:33 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:43:\"quic=\":443\"; ma=2592000; v=\"41,39,38,37,35\"\";}}s:5:\"build\";s:14:\"20170404165330\";}','no'),
	(644,'_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6','1510751433','no'),
	(645,'_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6','1510708233','no'),
	(646,'_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af','1510751433','no'),
	(647,'_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af','<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/\'>Certification WordPress par WPFR, appel à contributions</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/CQrwB_c1w7Y/\'>Beaver Builder 2.0 Hoover est arrivé (Page builder WordPress)</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/IMSrVAxOQzk/\'>Ajouter une nouvelle zone de menu à un thème WordPress</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/JqUgDG0Kj7k/\'>Comment optimiser un site WordPress sans se ruiner</a></li></ul></div>','no'),
	(648,'_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e','1510751433','no'),
	(649,'_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e','a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:11:\"WordCamp US\";s:3:\"url\";s:29:\"https://2017.us.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2017-12-01 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:18:\"Nashville, TN, USA\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:36.1566085;s:9:\"longitude\";d:-86.7784909;}}}}','no'),
	(651,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(658,'woocommerce_store_address','','yes'),
	(659,'woocommerce_store_address_2','','yes'),
	(660,'woocommerce_store_city','','yes'),
	(661,'woocommerce_store_postcode','','yes'),
	(662,'woocommerce_version','3.2.3','yes'),
	(666,'_transient_timeout_wc_shipping_method_count_1_1481756499','1513300470','no'),
	(667,'_transient_wc_shipping_method_count_1_1481756499','4','no'),
	(673,'woocommerce_db_version','3.2.3','yes'),
	(675,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.8.3.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.8.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.8.3\";s:7:\"version\";s:5:\"4.8.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1510708659;s:15:\"version_checked\";s:5:\"4.8.3\";s:12:\"translations\";a:0:{}}','no'),
	(676,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1510708707;s:7:\"checked\";a:2:{s:27:\"woocommerce/woocommerce.php\";s:5:\"3.2.3\";s:53:\"woocommerce-mondialrelay/woocommerce-mondialrelay.php\";s:6:\"3.3.29\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.2.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.2.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:7:\"default\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";s:7:\"default\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),
	(677,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1510708662;s:7:\"checked\";a:1:{s:10:\"storefront\";s:5:\"2.2.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no'),
	(678,'_transient_timeout_plugin_slugs','1510795109','no'),
	(679,'_transient_plugin_slugs','a:2:{i:0;s:27:\"woocommerce/woocommerce.php\";i:1;s:53:\"woocommerce-mondialrelay/woocommerce-mondialrelay.php\";}','no');

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
	(37,10,'_wc_review_count','0');

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
	(2,1,'2016-12-14 23:46:34','2016-12-14 22:46:34','Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href=\"http://wp-woocommerce.local/wp-admin/\">Tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !','Page d&rsquo;exemple','','publish','closed','open','','page-d-exemple','','','2016-12-14 23:46:34','2016-12-14 22:46:34','',0,'http://wp-woocommerce.local/?page_id=2',0,'page','',0),
	(5,1,'2016-12-14 23:50:01','2016-12-14 22:50:01','','Shop','','publish','closed','closed','','shop','','','2016-12-14 23:50:01','2016-12-14 22:50:01','',0,'http://wp-woocommerce.local/?page_id=5',0,'page','',0),
	(6,1,'2016-12-14 23:50:01','2016-12-14 22:50:01','[woocommerce_cart]','Cart','','publish','closed','closed','','cart','','','2016-12-14 23:50:01','2016-12-14 22:50:01','',0,'http://wp-woocommerce.local/?page_id=6',0,'page','',0),
	(7,1,'2016-12-14 23:50:01','2016-12-14 22:50:01','[woocommerce_checkout]','Checkout','','publish','closed','closed','','checkout','','','2016-12-14 23:50:01','2016-12-14 22:50:01','',0,'http://wp-woocommerce.local/?page_id=7',0,'page','',0),
	(8,1,'2016-12-14 23:50:01','2016-12-14 22:50:01','[woocommerce_my_account]','My Account','','publish','closed','closed','','my-account','','','2016-12-14 23:50:01','2016-12-14 22:50:01','',0,'http://wp-woocommerce.local/?page_id=8',0,'page','',0),
	(10,1,'2016-12-14 23:52:53','2016-12-14 22:52:53','Test','Produit de test','','publish','open','closed','','produit-de-test','','','2016-12-14 23:52:53','2016-12-14 22:52:53','',0,'http://wp-woocommerce.local/?post_type=product&#038;p=10',0,'product','',0),
	(13,1,'2017-11-15 02:17:42','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2017-11-15 02:17:42','0000-00-00 00:00:00','',0,'http://test.mondialrelay-woocommerce.test/?p=13',0,'post','',0);

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
	(15,1,'session_tokens','a:1:{s:64:\"0bcd78734bff9583e7966797f00dd3f18a836d2879e4ae48de182730b8c03f2a\";a:4:{s:10:\"expiration\";i:1510881024;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1510708224;}}'),
	(16,1,'wpwc_dashboard_quick_press_last_post_id','13'),
	(17,1,'manageedit-shop_ordercolumnshidden','a:1:{i:0;s:15:\"billing_address\";}'),
	(18,1,'_woocommerce_persistent_cart','a:1:{s:4:\"cart\";a:1:{s:32:\"d3d9446802a44259755d38e6d163e820\";a:9:{s:10:\"product_id\";i:10;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:10:\"line_total\";i:10;s:8:\"line_tax\";i:0;s:13:\"line_subtotal\";i:10;s:17:\"line_subtotal_tax\";i:0;s:13:\"line_tax_data\";a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}}}}'),
	(19,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
	(20,1,'_woocommerce_persistent_cart_1','a:1:{s:4:\"cart\";a:1:{s:32:\"d3d9446802a44259755d38e6d163e820\";a:9:{s:10:\"product_id\";i:10;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:10:\"line_total\";i:20;s:8:\"line_tax\";d:4;s:13:\"line_subtotal\";i:20;s:17:\"line_subtotal_tax\";d:4;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:1:{i:1;d:4;}s:5:\"total\";a:1:{i:1;d:4;}}}}}'),
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
	(14,'1','a:27:{s:4:\"cart\";s:319:\"a:1:{s:32:\"d3d9446802a44259755d38e6d163e820\";a:9:{s:10:\"product_id\";i:10;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:10:\"line_total\";i:20;s:8:\"line_tax\";d:4;s:13:\"line_subtotal\";i:20;s:17:\"line_subtotal_tax\";d:4;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:1:{i:1;d:4;}s:5:\"total\";a:1:{i:1;d:4;}}}}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:23:\"coupon_discount_amounts\";s:6:\"a:0:{}\";s:27:\"coupon_discount_tax_amounts\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:19:\"cart_contents_total\";i:10;s:5:\"total\";i:0;s:8:\"subtotal\";i:10;s:15:\"subtotal_ex_tax\";i:10;s:9:\"tax_total\";i:0;s:5:\"taxes\";s:6:\"a:0:{}\";s:14:\"shipping_taxes\";s:6:\"a:0:{}\";s:13:\"discount_cart\";i:0;s:17:\"discount_cart_tax\";i:0;s:14:\"shipping_total\";i:0;s:18:\"shipping_tax_total\";i:0;s:9:\"fee_total\";i:0;s:4:\"fees\";s:6:\"a:0:{}\";s:8:\"customer\";s:665:\"a:25:{s:2:\"id\";i:1;s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"FR\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"FR\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:15:\"admin@admin.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:11:\"cart_totals\";s:433:\"a:15:{s:8:\"subtotal\";s:2:\"20\";s:12:\"subtotal_tax\";d:4;s:14:\"shipping_total\";s:1:\"3\";s:12:\"shipping_tax\";d:0.6;s:14:\"shipping_taxes\";a:1:{i:1;d:0.6000000000000001;}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";s:1:\"0\";s:19:\"cart_contents_total\";s:2:\"20\";s:17:\"cart_contents_tax\";d:4;s:19:\"cart_contents_taxes\";a:1:{i:1;d:4;}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:4:\"27.6\";s:9:\"total_tax\";d:4.6;}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:737:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_d5e70f9d0616a3beeda2974f4d5696d7\";s:5:\"rates\";a:2:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:20:\"Mondial Relay France\";s:4:\"cost\";s:4:\"3.00\";s:5:\"taxes\";a:1:{i:1;d:0.6000000000000001;}}s:12:\"\0*\0meta_data\";a:1:{s:8:\"Articles\";s:25:\"Produit de test &times; 2\";}}s:11:\"flat_rate:2\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:2\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:2;s:5:\"label\";s:22:\"Autre livraison France\";s:4:\"cost\";s:4:\"2.00\";s:5:\"taxes\";a:1:{i:1;d:0.4;}}s:12:\"\0*\0meta_data\";a:1:{s:8:\"Articles\";s:25:\"Produit de test &times; 2\";}}}}\";s:25:\"previous_shipping_methods\";s:62:\"a:1:{i:0;a:2:{i:0;s:11:\"flat_rate:1\";i:1;s:11:\"flat_rate:2\";}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:2;}\";s:21:\"chosen_payment_method\";s:3:\"cod\";}',1510881032);

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
