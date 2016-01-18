-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18-Jan-2016 às 03:47
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quatrorodas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=157 ;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://quatrorodas.localhost', 'yes'),
(2, 'home', 'http://quatrorodas.localhost', 'yes'),
(3, 'blogname', '4 Rodas', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'lucas.lmmf@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:0:{}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', '4rodas', 'yes'),
(40, 'stylesheet', '4rodas', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '35700', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'page', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'uninstall_plugins', 'a:0:{}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '2', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'initial_db_version', '35700', 'yes'),
(91, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(92, 'WPLANG', 'pt_BR', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'cron', 'a:4:{i:1453073838;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1453073839;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1453073864;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"4.4.1";s:12:"last_checked";i:1453051412;}', 'yes'),
(111, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1453051415;}', 'yes'),
(114, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1453051417;}', 'yes'),
(120, 'can_compress_scripts', '1', 'yes'),
(123, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1452815162;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(124, 'current_theme', '4Rodas by Lucas', 'yes'),
(125, 'theme_mods_4rodas', 'a:1:{i:0;b:0;}', 'yes'),
(126, 'theme_switched', '', 'yes'),
(137, 'rewrite_rules', 'a:76:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(147, '_transient_timeout_plugin_slugs', '1453092315', 'no'),
(148, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(149, '_transient_timeout_dash_01e18dead815ce736e3b9cccfbd773a5', '1453049115', 'no'),
(150, '_transient_dash_01e18dead815ce736e3b9cccfbd773a5', '<div class="rss-widget"><p><strong>Erro de RSS</strong>: WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>Erro de RSS</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(155, '_site_transient_timeout_theme_roots', '1453053216', 'yes'),
(156, '_site_transient_theme_roots', 'a:1:{s:6:"4rodas";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=22 ;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_last', '1'),
(3, 2, '_edit_lock', '1452894515:1'),
(4, 6, '_wp_attached_file', '2016/01/imbb.png'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:320;s:6:"height";i:206;s:4:"file";s:16:"2016/01/imbb.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"imbb-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"imbb-300x193.png";s:5:"width";i:300;s:6:"height";i:193;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(6, 7, '_wp_attached_file', '2016/01/img1.png'),
(7, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:597;s:6:"height";i:483;s:4:"file";s:16:"2016/01/img1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"img1-300x243.png";s:5:"width";i:300;s:6:"height";i:243;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(8, 8, '_wp_attached_file', '2016/01/img2.png'),
(9, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:351;s:6:"height";i:244;s:4:"file";s:16:"2016/01/img2.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"img2-300x209.png";s:5:"width";i:300;s:6:"height";i:209;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(10, 9, '_wp_attached_file', '2016/01/img3.png'),
(11, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:348;s:6:"height";i:245;s:4:"file";s:16:"2016/01/img3.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"img3-300x211.png";s:5:"width";i:300;s:6:"height";i:211;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(12, 10, '_wp_attached_file', '2016/01/img4.png'),
(13, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:351;s:6:"height";i:247;s:4:"file";s:16:"2016/01/img4.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"img4-300x211.png";s:5:"width";i:300;s:6:"height";i:211;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(14, 11, '_wp_attached_file', '2016/01/img5.png'),
(15, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:349;s:6:"height";i:243;s:4:"file";s:16:"2016/01/img5.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img5-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"img5-300x209.png";s:5:"width";i:300;s:6:"height";i:209;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(16, 12, '_wp_attached_file', '2016/01/imga.png'),
(17, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:319;s:6:"height";i:204;s:4:"file";s:16:"2016/01/imga.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"imga-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"imga-300x192.png";s:5:"width";i:300;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(18, 13, '_wp_attached_file', '2016/01/imgc.png'),
(19, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:316;s:6:"height";i:204;s:4:"file";s:16:"2016/01/imgc.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"imgc-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"imgc-300x194.png";s:5:"width";i:300;s:6:"height";i:194;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(20, 14, '_wp_attached_file', '2016/01/imgd.png'),
(21, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:306;s:6:"height";i:206;s:4:"file";s:16:"2016/01/imgd.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"imgd-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"imgd-300x202.png";s:5:"width";i:300;s:6:"height";i:202;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=19 ;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2016-01-14 23:37:15', '2016-01-14 23:37:15', '    <div class="linha1">\r\n        <div class="col-md-5 no-padding div-esquerda">\r\n            <img class="img-responsive img-esquerda" src="/wp-content/uploads/2016/01/img1.png">\r\n        </div>\r\n\r\n        <div class="col-md-7 no-padding div-direita">\r\n\r\n            <div class="col-md-6 no-padding">\r\n                <img class="img-responsive" src="/wp-content/uploads/2016/01/img2.png">\r\n                <img class="img-responsive" src="/wp-content/uploads/2016/01/img4.png">\r\n            </div>\r\n            <div class="col-md-6 no-padding">\r\n                <img class="img-responsive" src="/wp-content/uploads/2016/01/img3.png">\r\n                <img class="img-responsive" src="/wp-content/uploads/2016/01/img5.png">\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class="linha2">\r\n        <div class="col-md-3 img1">\r\n            <img class="img-responsive" src="/wp-content/uploads/2016/01/imga.png">\r\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\r\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\r\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\r\n        </div>\r\n        <div class="col-md-3 img2">\r\n            <img class="img-responsive" src="/wp-content/uploads/2016/01/imbb.png">\r\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\r\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\r\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\r\n        </div>\r\n        <div class="col-md-3 img3">\r\n            <img class="img-responsive" src="/wp-content/uploads/2016/01/imgc.png">\r\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\r\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\r\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\r\n        </div>\r\n        <div class="col-md-3 img4">\r\n            <img class="img-responsive" src="/wp-content/uploads/2016/01/imgd.png">\r\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\r\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\r\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\r\n        </div>\r\n    </div>', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2016-01-15 21:50:24', '2016-01-15 21:50:24', '', 0, 'http://quatrorodas.localhost/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-01-14 23:37:45', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-01-14 23:37:45', '0000-00-00 00:00:00', '', 0, 'http://quatrorodas.localhost/?p=3', 0, 'post', '', 0),
(4, 1, '2016-01-15 17:17:55', '2016-01-15 17:17:55', 'Esta é uma página de exemplo. É diferente de um post porque ela ficará em um local e será exibida na navegação do seu site (na maioria dos temas). A maioria das pessoas começa com uma página de introdução aos potenciais visitantes do site. Ela pode ser assim:\n\n<blockquote>Olá! Eu sou um bike courrier de dia, ator amador à noite e este é meu blog. Eu moro em São Paulo, tenho um cachorro chamado Tonico e eu gosto de caipirinhas. (E de ser pego pela chuva.)</blockquote>\n\nou assim:\n\n<blockquote>A XYZ foi fundada em 1971 e desde então vem proporcionando produtos de qualidade a seus clientes. Localizada em Valinhos, XYZ emprega mais de 2.000 pessoas e faz várias contribuições para a comunidade local.</blockquote>\nComo um novo usuário do WordPress, você deve ir até o <a href="http://quatrorodas.localhost/wp-admin/">seu painel</a> para excluir essa página e criar novas páginas com seu próprio conteúdo. Divirta-se!', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-01-15 17:17:55', '2016-01-15 17:17:55', '', 2, 'http://quatrorodas.localhost/index.php/2016/01/15/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2016-01-15 17:20:54', '2016-01-15 17:20:54', '\r\n    <div class="linha1">\r\n        <div class="col-md-5 no-padding div-esquerda">\r\n            <img class="img-responsiv img-esquerda" src="/wp-content/themes/4rodas/assets/img/exe.jpg">\r\n        </div>\r\n\r\n        <div class="col-md-7 no-padding div-direita">\r\n\r\n            <div class="col-md-6 no-padding">\r\n                <img class="img-responsive" src="/wp-content/themes/4rodas/assets/img/exe.jpg">\r\n                <img class="img-responsive" src="/wp-content/themes/4rodas/assets/img/exe.jpg">\r\n            </div>\r\n            <div class="col-md-6 no-padding">\r\n                <img class="img-responsive" src="/wp-content/themes/4rodas/assets/img/exe.jpg">\r\n                <img class="img-responsive" src="/wp-content/themes/4rodas/assets/img/exe.jpg">\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class="linha2">\r\n        <div class="col-md-3 img1">\r\n            <img class="img-responsive" src="/wp-content/themes/4rodas/assets/img/exe.jpg">\r\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\r\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\r\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\r\n        </div>\r\n        <div class="col-md-3 img2">\r\n            <img class="img-responsive" src="/wp-content/themes/4rodas/assets/img/exe.jpg">\r\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\r\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\r\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\r\n        </div>\r\n        <div class="col-md-3 img3">\r\n            <img class="img-responsive" src="/wp-content/themes/4rodas/assets/img/exe.jpg">\r\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\r\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\r\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\r\n        </div>\r\n        <div class="col-md-3 img4">\r\n            <img class="img-responsive" src="/wp-content/themes/4rodas/assets/img/exe.jpg">\r\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\r\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\r\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\r\n        </div>\r\n    </div>', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-01-15 17:20:54', '2016-01-15 17:20:54', '', 2, 'http://quatrorodas.localhost/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2016-01-15 21:42:10', '2016-01-15 21:42:10', '', 'imbb', '', 'inherit', 'open', 'closed', '', 'imbb', '', '', '2016-01-15 21:42:10', '2016-01-15 21:42:10', '', 0, 'http://quatrorodas.localhost/wp-content/uploads/2016/01/imbb.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2016-01-15 21:42:13', '2016-01-15 21:42:13', '', 'img1', '', 'inherit', 'open', 'closed', '', 'img1', '', '', '2016-01-15 21:42:13', '2016-01-15 21:42:13', '', 0, 'http://quatrorodas.localhost/wp-content/uploads/2016/01/img1.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2016-01-15 21:42:15', '2016-01-15 21:42:15', '', 'img2', '', 'inherit', 'open', 'closed', '', 'img2', '', '', '2016-01-15 21:42:15', '2016-01-15 21:42:15', '', 0, 'http://quatrorodas.localhost/wp-content/uploads/2016/01/img2.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2016-01-15 21:42:17', '2016-01-15 21:42:17', '', 'img3', '', 'inherit', 'open', 'closed', '', 'img3', '', '', '2016-01-15 21:42:17', '2016-01-15 21:42:17', '', 0, 'http://quatrorodas.localhost/wp-content/uploads/2016/01/img3.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2016-01-15 21:42:19', '2016-01-15 21:42:19', '', 'img4', '', 'inherit', 'open', 'closed', '', 'img4', '', '', '2016-01-15 21:42:19', '2016-01-15 21:42:19', '', 0, 'http://quatrorodas.localhost/wp-content/uploads/2016/01/img4.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2016-01-15 21:42:21', '2016-01-15 21:42:21', '', 'img5', '', 'inherit', 'open', 'closed', '', 'img5', '', '', '2016-01-15 21:42:21', '2016-01-15 21:42:21', '', 0, 'http://quatrorodas.localhost/wp-content/uploads/2016/01/img5.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2016-01-15 21:42:23', '2016-01-15 21:42:23', '', 'imga', '', 'inherit', 'open', 'closed', '', 'imga', '', '', '2016-01-15 21:42:23', '2016-01-15 21:42:23', '', 0, 'http://quatrorodas.localhost/wp-content/uploads/2016/01/imga.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2016-01-15 21:42:26', '2016-01-15 21:42:26', '', 'imgc', '', 'inherit', 'open', 'closed', '', 'imgc', '', '', '2016-01-15 21:42:26', '2016-01-15 21:42:26', '', 0, 'http://quatrorodas.localhost/wp-content/uploads/2016/01/imgc.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2016-01-15 21:42:28', '2016-01-15 21:42:28', '', 'imgd', '', 'inherit', 'open', 'closed', '', 'imgd', '', '', '2016-01-15 21:42:28', '2016-01-15 21:42:28', '', 0, 'http://quatrorodas.localhost/wp-content/uploads/2016/01/imgd.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2016-01-15 21:45:16', '2016-01-15 21:45:16', '    <div class="linha1">\n        <div class="col-md-5 no-padding div-esquerda">\n            <img class="img-responsiv img-esquerda" src="/wp-content/uploads/2016/01/img1.png">\n        </div>\n\n        <div class="col-md-7 no-padding div-direita">\n\n            <div class="col-md-6 no-padding">\n                <img class="img-responsive" src="/wp-content/uploads/2016/01/img2.png">\n                <img class="img-responsive" src="/wp-content/uploads/2016/01/img3.png">\n            </div>\n            <div class="col-md-6 no-padding">\n                <img class="img-responsive" src="/wp-content/uploads/2016/01/img4.png">\n                <img class="img-responsive" src="/wp-content/uploads/2016/01/img5.png">\n            </div>\n        </div>\n    </div>\n\n    <div class="linha2">\n        <div class="col-md-3 img1">\n            <img class="img-responsive" src="/wp-content/uploads/2016/01/imga.png">\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\n        </div>\n        <div class="col-md-3 img2">\n            <img class="img-responsive" src="/wp-content/uploads/2016/01/imbb.png">\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\n        </div>\n        <div class="col-md-3 img3">\n            <img class="img-responsive" src="/wp-content/themes/4rodas/assetsimg/exe.jpg">\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\n        </div>\n        <div class="col-md-3 img4">\n            <img class="img-responsive" src="/wp-content/themes/4rodas/assets/img/exe.jpg">\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\n        </div>\n    </div>', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2016-01-15 21:45:16', '2016-01-15 21:45:16', '', 2, 'http://quatrorodas.localhost/2-autosave-v1/', 0, 'revision', '', 0),
(16, 1, '2016-01-15 21:45:34', '2016-01-15 21:45:34', '    <div class="linha1">\r\n        <div class="col-md-5 no-padding div-esquerda">\r\n            <img class="img-responsiv img-esquerda" src="/wp-content/uploads/2016/01/img1.png">\r\n        </div>\r\n\r\n        <div class="col-md-7 no-padding div-direita">\r\n\r\n            <div class="col-md-6 no-padding">\r\n                <img class="img-responsive" src="/wp-content/uploads/2016/01/img2.png">\r\n                <img class="img-responsive" src="/wp-content/uploads/2016/01/img3.png">\r\n            </div>\r\n            <div class="col-md-6 no-padding">\r\n                <img class="img-responsive" src="/wp-content/uploads/2016/01/img4.png">\r\n                <img class="img-responsive" src="/wp-content/uploads/2016/01/img5.png">\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class="linha2">\r\n        <div class="col-md-3 img1">\r\n            <img class="img-responsive" src="/wp-content/uploads/2016/01/imga.png">\r\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\r\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\r\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\r\n        </div>\r\n        <div class="col-md-3 img2">\r\n            <img class="img-responsive" src="/wp-content/uploads/2016/01/imbb.png">\r\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\r\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\r\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\r\n        </div>\r\n        <div class="col-md-3 img3">\r\n            <img class="img-responsive" src="/wp-content/uploads/2016/01/imgc.png">\r\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\r\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\r\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\r\n        </div>\r\n        <div class="col-md-3 img4">\r\n            <img class="img-responsive" src="/wp-content/uploads/2016/01/imgd.png">\r\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\r\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\r\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\r\n        </div>\r\n    </div>', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-01-15 21:45:34', '2016-01-15 21:45:34', '', 2, 'http://quatrorodas.localhost/2-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2016-01-15 21:46:28', '2016-01-15 21:46:28', '    <div class="linha1">\r\n        <div class="col-md-5 no-padding div-esquerda">\r\n            <img class="img-responsiv img-esquerda" src="/wp-content/uploads/2016/01/img1.png">\r\n        </div>\r\n\r\n        <div class="col-md-7 no-padding div-direita">\r\n\r\n            <div class="col-md-6 no-padding">\r\n                <img class="img-responsive" src="/wp-content/uploads/2016/01/img2.png">\r\n                <img class="img-responsive" src="/wp-content/uploads/2016/01/img4.png">\r\n            </div>\r\n            <div class="col-md-6 no-padding">\r\n                <img class="img-responsive" src="/wp-content/uploads/2016/01/img3.png">\r\n                <img class="img-responsive" src="/wp-content/uploads/2016/01/img5.png">\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class="linha2">\r\n        <div class="col-md-3 img1">\r\n            <img class="img-responsive" src="/wp-content/uploads/2016/01/imga.png">\r\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\r\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\r\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\r\n        </div>\r\n        <div class="col-md-3 img2">\r\n            <img class="img-responsive" src="/wp-content/uploads/2016/01/imbb.png">\r\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\r\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\r\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\r\n        </div>\r\n        <div class="col-md-3 img3">\r\n            <img class="img-responsive" src="/wp-content/uploads/2016/01/imgc.png">\r\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\r\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\r\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\r\n        </div>\r\n        <div class="col-md-3 img4">\r\n            <img class="img-responsive" src="/wp-content/uploads/2016/01/imgd.png">\r\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\r\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\r\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\r\n        </div>\r\n    </div>', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-01-15 21:46:28', '2016-01-15 21:46:28', '', 2, 'http://quatrorodas.localhost/2-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2016-01-15 21:50:24', '2016-01-15 21:50:24', '    <div class="linha1">\r\n        <div class="col-md-5 no-padding div-esquerda">\r\n            <img class="img-responsive img-esquerda" src="/wp-content/uploads/2016/01/img1.png">\r\n        </div>\r\n\r\n        <div class="col-md-7 no-padding div-direita">\r\n\r\n            <div class="col-md-6 no-padding">\r\n                <img class="img-responsive" src="/wp-content/uploads/2016/01/img2.png">\r\n                <img class="img-responsive" src="/wp-content/uploads/2016/01/img4.png">\r\n            </div>\r\n            <div class="col-md-6 no-padding">\r\n                <img class="img-responsive" src="/wp-content/uploads/2016/01/img3.png">\r\n                <img class="img-responsive" src="/wp-content/uploads/2016/01/img5.png">\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class="linha2">\r\n        <div class="col-md-3 img1">\r\n            <img class="img-responsive" src="/wp-content/uploads/2016/01/imga.png">\r\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\r\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\r\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\r\n        </div>\r\n        <div class="col-md-3 img2">\r\n            <img class="img-responsive" src="/wp-content/uploads/2016/01/imbb.png">\r\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\r\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\r\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\r\n        </div>\r\n        <div class="col-md-3 img3">\r\n            <img class="img-responsive" src="/wp-content/uploads/2016/01/imgc.png">\r\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\r\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\r\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\r\n        </div>\r\n        <div class="col-md-3 img4">\r\n            <img class="img-responsive" src="/wp-content/uploads/2016/01/imgd.png">\r\n            <p class="label-imgs">Audi S3 Merces-Benz CLA 45 AMG</p>\r\n            <p class="desc-imgs">Pista Livre para o embate entre os dois cometas de cauda curta</p>\r\n            <p class="link-imgs">+ Troller t4x JEEP RENEGADE</p>\r\n        </div>\r\n    </div>', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-01-15 21:50:24', '2016-01-15 21:50:24', '', 2, 'http://quatrorodas.localhost/2-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=18 ;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'administrador'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"27969f1633f2c6fe5b525737667d1fd0072a138462db164cb8e8fc67c6d32ff5";a:4:{s:10:"expiration";i:1454024261;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36";s:5:"login";i:1452814661;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'wp_user-settings', 'editor=html'),
(17, 1, 'wp_user-settings-time', '1452878452');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'administrador', '$P$BzQIva7XamxIT69vAK8ccvtZ6mMyqp/', 'administrador', 'lucas.lmmf@gmail.com', '', '2016-01-14 23:37:14', '', 0, 'administrador');
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
