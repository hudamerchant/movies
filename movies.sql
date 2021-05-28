-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2021 at 12:42 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-05-19 17:41:37', '2021-05-19 17:41:37', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_countdown`
--

CREATE TABLE `wp_countdown` (
  `id` mediumint(9) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `after_expiry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_countdown`
--

INSERT INTO `wp_countdown` (`id`, `title`, `time`, `after_expiry`, `message`, `created_at`) VALUES
(1, '', '0000-00-00 00:00:00', '', '', '2021-05-28 22:15:56'),
(2, 'gjsabj', '2021-04-28 03:16:00', 'message', 'jdlnk,ms.', '2021-05-28 22:16:45'),
(3, 'test timmer', '2021-05-07 06:25:00', 'hide', '', '2021-05-28 22:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/movies', 'yes'),
(2, 'home', 'http://localhost/movies', 'yes'),
(3, 'blogname', 'Custom Post Type', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'hudazehra2510@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:280:{s:9:\"movies/?$\";s:26:\"index.php?post_type=movies\";s:39:\"movies/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=movies&feed=$matches[1]\";s:34:\"movies/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=movies&feed=$matches[1]\";s:26:\"movies/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=movies&paged=$matches[1]\";s:10:\"project/?$\";s:27:\"index.php?post_type=project\";s:40:\"project/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:35:\"project/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:27:\"project/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=project&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"movies/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"movies/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"movies/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"movies/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"movies/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"movies/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"movies/([^/]+)/embed/?$\";s:39:\"index.php?movies=$matches[1]&embed=true\";s:27:\"movies/([^/]+)/trackback/?$\";s:33:\"index.php?movies=$matches[1]&tb=1\";s:47:\"movies/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?movies=$matches[1]&feed=$matches[2]\";s:42:\"movies/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?movies=$matches[1]&feed=$matches[2]\";s:35:\"movies/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?movies=$matches[1]&paged=$matches[2]\";s:42:\"movies/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?movies=$matches[1]&cpage=$matches[2]\";s:31:\"movies/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?movies=$matches[1]&page=$matches[2]\";s:23:\"movies/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"movies/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"movies/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"movies/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"movies/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"movies/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"Genre/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?Genre=$matches[1]&feed=$matches[2]\";s:41:\"Genre/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?Genre=$matches[1]&feed=$matches[2]\";s:22:\"Genre/([^/]+)/embed/?$\";s:38:\"index.php?Genre=$matches[1]&embed=true\";s:34:\"Genre/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?Genre=$matches[1]&paged=$matches[2]\";s:16:\"Genre/([^/]+)/?$\";s:27:\"index.php?Genre=$matches[1]\";s:56:\"layout_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?layout_category=$matches[1]&feed=$matches[2]\";s:51:\"layout_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?layout_category=$matches[1]&feed=$matches[2]\";s:32:\"layout_category/([^/]+)/embed/?$\";s:48:\"index.php?layout_category=$matches[1]&embed=true\";s:44:\"layout_category/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?layout_category=$matches[1]&paged=$matches[2]\";s:26:\"layout_category/([^/]+)/?$\";s:37:\"index.php?layout_category=$matches[1]\";s:52:\"layout_pack/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?layout_pack=$matches[1]&feed=$matches[2]\";s:47:\"layout_pack/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?layout_pack=$matches[1]&feed=$matches[2]\";s:28:\"layout_pack/([^/]+)/embed/?$\";s:44:\"index.php?layout_pack=$matches[1]&embed=true\";s:40:\"layout_pack/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?layout_pack=$matches[1]&paged=$matches[2]\";s:22:\"layout_pack/([^/]+)/?$\";s:33:\"index.php?layout_pack=$matches[1]\";s:52:\"layout_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?layout_type=$matches[1]&feed=$matches[2]\";s:47:\"layout_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?layout_type=$matches[1]&feed=$matches[2]\";s:28:\"layout_type/([^/]+)/embed/?$\";s:44:\"index.php?layout_type=$matches[1]&embed=true\";s:40:\"layout_type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?layout_type=$matches[1]&paged=$matches[2]\";s:22:\"layout_type/([^/]+)/?$\";s:33:\"index.php?layout_type=$matches[1]\";s:46:\"scope/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?scope=$matches[1]&feed=$matches[2]\";s:41:\"scope/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?scope=$matches[1]&feed=$matches[2]\";s:22:\"scope/([^/]+)/embed/?$\";s:38:\"index.php?scope=$matches[1]&embed=true\";s:34:\"scope/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?scope=$matches[1]&paged=$matches[2]\";s:16:\"scope/([^/]+)/?$\";s:27:\"index.php?scope=$matches[1]\";s:53:\"module_width/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?module_width=$matches[1]&feed=$matches[2]\";s:48:\"module_width/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?module_width=$matches[1]&feed=$matches[2]\";s:29:\"module_width/([^/]+)/embed/?$\";s:45:\"index.php?module_width=$matches[1]&embed=true\";s:41:\"module_width/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?module_width=$matches[1]&paged=$matches[2]\";s:23:\"module_width/([^/]+)/?$\";s:34:\"index.php?module_width=$matches[1]\";s:40:\"et_pb_layout/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"et_pb_layout/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"et_pb_layout/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"et_pb_layout/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"et_pb_layout/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"et_pb_layout/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"et_pb_layout/([^/]+)/embed/?$\";s:60:\"index.php?post_type=et_pb_layout&name=$matches[1]&embed=true\";s:33:\"et_pb_layout/([^/]+)/trackback/?$\";s:54:\"index.php?post_type=et_pb_layout&name=$matches[1]&tb=1\";s:41:\"et_pb_layout/([^/]+)/page/?([0-9]{1,})/?$\";s:67:\"index.php?post_type=et_pb_layout&name=$matches[1]&paged=$matches[2]\";s:48:\"et_pb_layout/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?post_type=et_pb_layout&name=$matches[1]&cpage=$matches[2]\";s:37:\"et_pb_layout/([^/]+)(?:/([0-9]+))?/?$\";s:66:\"index.php?post_type=et_pb_layout&name=$matches[1]&page=$matches[2]\";s:29:\"et_pb_layout/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"et_pb_layout/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"et_pb_layout/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"et_pb_layout/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"et_pb_layout/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"et_pb_layout/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"project/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"project/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"project/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"project/([^/]+)/embed/?$\";s:40:\"index.php?project=$matches[1]&embed=true\";s:28:\"project/([^/]+)/trackback/?$\";s:34:\"index.php?project=$matches[1]&tb=1\";s:48:\"project/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:43:\"project/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:36:\"project/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&paged=$matches[2]\";s:43:\"project/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&cpage=$matches[2]\";s:32:\"project/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?project=$matches[1]&page=$matches[2]\";s:24:\"project/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"project/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"project/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:57:\"project_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?project_category=$matches[1]&feed=$matches[2]\";s:52:\"project_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?project_category=$matches[1]&feed=$matches[2]\";s:33:\"project_category/([^/]+)/embed/?$\";s:49:\"index.php?project_category=$matches[1]&embed=true\";s:45:\"project_category/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?project_category=$matches[1]&paged=$matches[2]\";s:27:\"project_category/([^/]+)/?$\";s:38:\"index.php?project_category=$matches[1]\";s:52:\"project_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?project_tag=$matches[1]&feed=$matches[2]\";s:47:\"project_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?project_tag=$matches[1]&feed=$matches[2]\";s:28:\"project_tag/([^/]+)/embed/?$\";s:44:\"index.php?project_tag=$matches[1]&embed=true\";s:40:\"project_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?project_tag=$matches[1]&paged=$matches[2]\";s:22:\"project_tag/([^/]+)/?$\";s:33:\"index.php?project_tag=$matches[1]\";s:44:\"et_theme_builder/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"et_theme_builder/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"et_theme_builder/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"et_theme_builder/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"et_theme_builder/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"et_theme_builder/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"et_theme_builder/([^/]+)/embed/?$\";s:64:\"index.php?post_type=et_theme_builder&name=$matches[1]&embed=true\";s:37:\"et_theme_builder/([^/]+)/trackback/?$\";s:58:\"index.php?post_type=et_theme_builder&name=$matches[1]&tb=1\";s:45:\"et_theme_builder/([^/]+)/page/?([0-9]{1,})/?$\";s:71:\"index.php?post_type=et_theme_builder&name=$matches[1]&paged=$matches[2]\";s:52:\"et_theme_builder/([^/]+)/comment-page-([0-9]{1,})/?$\";s:71:\"index.php?post_type=et_theme_builder&name=$matches[1]&cpage=$matches[2]\";s:41:\"et_theme_builder/([^/]+)(?:/([0-9]+))?/?$\";s:70:\"index.php?post_type=et_theme_builder&name=$matches[1]&page=$matches[2]\";s:33:\"et_theme_builder/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"et_theme_builder/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"et_theme_builder/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"et_theme_builder/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"et_theme_builder/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"et_theme_builder/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"et_template/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"et_template/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"et_template/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"et_template/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"et_template/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"et_template/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"et_template/([^/]+)/embed/?$\";s:59:\"index.php?post_type=et_template&name=$matches[1]&embed=true\";s:32:\"et_template/([^/]+)/trackback/?$\";s:53:\"index.php?post_type=et_template&name=$matches[1]&tb=1\";s:40:\"et_template/([^/]+)/page/?([0-9]{1,})/?$\";s:66:\"index.php?post_type=et_template&name=$matches[1]&paged=$matches[2]\";s:47:\"et_template/([^/]+)/comment-page-([0-9]{1,})/?$\";s:66:\"index.php?post_type=et_template&name=$matches[1]&cpage=$matches[2]\";s:36:\"et_template/([^/]+)(?:/([0-9]+))?/?$\";s:65:\"index.php?post_type=et_template&name=$matches[1]&page=$matches[2]\";s:28:\"et_template/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"et_template/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"et_template/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"et_template/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"et_template/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"et_template/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"et_header_layout/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"et_header_layout/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"et_header_layout/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"et_header_layout/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"et_header_layout/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"et_header_layout/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"et_header_layout/([^/]+)/embed/?$\";s:64:\"index.php?post_type=et_header_layout&name=$matches[1]&embed=true\";s:37:\"et_header_layout/([^/]+)/trackback/?$\";s:58:\"index.php?post_type=et_header_layout&name=$matches[1]&tb=1\";s:45:\"et_header_layout/([^/]+)/page/?([0-9]{1,})/?$\";s:71:\"index.php?post_type=et_header_layout&name=$matches[1]&paged=$matches[2]\";s:52:\"et_header_layout/([^/]+)/comment-page-([0-9]{1,})/?$\";s:71:\"index.php?post_type=et_header_layout&name=$matches[1]&cpage=$matches[2]\";s:41:\"et_header_layout/([^/]+)(?:/([0-9]+))?/?$\";s:70:\"index.php?post_type=et_header_layout&name=$matches[1]&page=$matches[2]\";s:33:\"et_header_layout/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"et_header_layout/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"et_header_layout/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"et_header_layout/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"et_header_layout/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"et_header_layout/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:42:\"et_body_layout/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"et_body_layout/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"et_body_layout/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"et_body_layout/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"et_body_layout/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"et_body_layout/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"et_body_layout/([^/]+)/embed/?$\";s:62:\"index.php?post_type=et_body_layout&name=$matches[1]&embed=true\";s:35:\"et_body_layout/([^/]+)/trackback/?$\";s:56:\"index.php?post_type=et_body_layout&name=$matches[1]&tb=1\";s:43:\"et_body_layout/([^/]+)/page/?([0-9]{1,})/?$\";s:69:\"index.php?post_type=et_body_layout&name=$matches[1]&paged=$matches[2]\";s:50:\"et_body_layout/([^/]+)/comment-page-([0-9]{1,})/?$\";s:69:\"index.php?post_type=et_body_layout&name=$matches[1]&cpage=$matches[2]\";s:39:\"et_body_layout/([^/]+)(?:/([0-9]+))?/?$\";s:68:\"index.php?post_type=et_body_layout&name=$matches[1]&page=$matches[2]\";s:31:\"et_body_layout/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"et_body_layout/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"et_body_layout/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"et_body_layout/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"et_body_layout/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"et_body_layout/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"et_footer_layout/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"et_footer_layout/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"et_footer_layout/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"et_footer_layout/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"et_footer_layout/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"et_footer_layout/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"et_footer_layout/([^/]+)/embed/?$\";s:64:\"index.php?post_type=et_footer_layout&name=$matches[1]&embed=true\";s:37:\"et_footer_layout/([^/]+)/trackback/?$\";s:58:\"index.php?post_type=et_footer_layout&name=$matches[1]&tb=1\";s:45:\"et_footer_layout/([^/]+)/page/?([0-9]{1,})/?$\";s:71:\"index.php?post_type=et_footer_layout&name=$matches[1]&paged=$matches[2]\";s:52:\"et_footer_layout/([^/]+)/comment-page-([0-9]{1,})/?$\";s:71:\"index.php?post_type=et_footer_layout&name=$matches[1]&cpage=$matches[2]\";s:41:\"et_footer_layout/([^/]+)(?:/([0-9]+))?/?$\";s:70:\"index.php?post_type=et_footer_layout&name=$matches[1]&page=$matches[2]\";s:33:\"et_footer_layout/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"et_footer_layout/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"et_footer_layout/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"et_footer_layout/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"et_footer_layout/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"et_footer_layout/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=18&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:18:\"countdown/main.php\";i:1;s:26:\"countdown_timmer/index.php\";i:2;s:16:\"movies/index.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Divi', 'yes'),
(41, 'stylesheet', 'divi_child', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:17:\"swpsmtp_uninstall\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '18', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1636998087', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:67:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:17:\"et_support_center\";b:1;s:24:\"et_support_center_system\";b:1;s:31:\"et_support_center_remote_access\";b:1;s:31:\"et_support_center_documentation\";b:1;s:27:\"et_support_center_safe_mode\";b:1;s:22:\"et_support_center_logs\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}s:9:\"sidebar-6\";a:0:{}s:9:\"sidebar-7\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:9:{i:1622245300;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1622266900;a:2:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1622266901;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1622310100;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622310119;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622310124;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622742100;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1624038259;a:1:{s:32:\"et_core_page_resource_auto_clear\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2592000;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:2:{s:22:\"EDcxxAZqxqiqhdJPMUUaWa\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BUBTpBo61zkSla/ED5m6Cm.11zi5BN1\";s:10:\"created_at\";i:1622143117;}s:22:\"eGYF12X26m34OqFdzey4ta\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BrvW1Hn8iexozAhNGa9dEr9e9TbSMV0\";s:10:\"created_at\";i:1622239631;}}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1621446247;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(122, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7.2-partial-1.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:5:\"5.7.1\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7.2-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-rollback-1.zip\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:5:\"5.7.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1622223730;s:15:\"version_checked\";s:5:\"5.7.1\";s:12:\"translations\";a:0:{}}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(149, 'finished_updating_comment_type', '1', 'yes'),
(150, 'current_theme', 'Divi Child', 'yes'),
(151, 'theme_mods_divi_child', 'a:5:{i:0;b:0;s:18:\"custom_css_post_id\";i:6;s:16:\"et_pb_css_synced\";s:3:\"yes\";s:18:\"nav_menu_locations\";a:1:{s:12:\"primary-menu\";i:2;}s:39:\"et_updated_layouts_built_for_post_types\";s:3:\"yes\";}', 'yes'),
(152, 'theme_switched', '', 'yes'),
(153, 'et_pb_cache_notice', 'a:1:{s:5:\"4.9.3\";s:6:\"ignore\";}', 'yes'),
(158, 'et_core_version', '4.9.3', 'yes'),
(160, 'et_divi', 'a:108:{s:39:\"static_css_custom_css_safety_check_done\";b:1;s:23:\"2_5_flush_rewrite_rules\";s:4:\"done\";s:30:\"et_flush_rewrite_rules_library\";s:5:\"4.9.3\";s:31:\"divi_previous_installed_version\";s:0:\"\";s:29:\"divi_latest_installed_version\";s:5:\"4.9.3\";s:27:\"divi_skip_font_subset_force\";b:1;s:27:\"et_pb_clear_templates_cache\";b:1;s:23:\"builder_custom_defaults\";O:8:\"stdClass\":0:{}s:33:\"customizer_settings_migrated_flag\";b:1;s:34:\"builder_custom_defaults_unmigrated\";b:0;s:40:\"divi_email_provider_credentials_migrated\";b:1;s:22:\"builder_global_presets\";O:8:\"stdClass\":0:{}s:29:\"custom_defaults_migrated_flag\";b:1;s:15:\"divi_1_3_images\";s:7:\"checked\";s:21:\"et_pb_layouts_updated\";b:1;s:30:\"library_removed_legacy_layouts\";b:1;s:30:\"divi_2_4_documentation_message\";s:9:\"triggered\";s:9:\"divi_logo\";s:0:\"\";s:14:\"divi_fixed_nav\";s:2:\"on\";s:26:\"divi_gallery_layout_enable\";s:5:\"false\";s:18:\"divi_color_palette\";s:63:\"#000000|#ffffff|#e02b20|#e09900|#edf000|#7cda24|#0c71c3|#8300e9\";s:15:\"divi_grab_image\";s:5:\"false\";s:15:\"divi_blog_style\";s:5:\"false\";s:12:\"divi_sidebar\";s:16:\"et_right_sidebar\";s:22:\"divi_shop_page_sidebar\";s:16:\"et_right_sidebar\";s:23:\"divi_show_facebook_icon\";s:2:\"on\";s:22:\"divi_show_twitter_icon\";s:2:\"on\";s:21:\"divi_show_google_icon\";s:2:\"on\";s:24:\"divi_show_instagram_icon\";s:2:\"on\";s:18:\"divi_show_rss_icon\";s:2:\"on\";s:17:\"divi_facebook_url\";s:1:\"#\";s:16:\"divi_twitter_url\";s:1:\"#\";s:15:\"divi_google_url\";s:1:\"#\";s:18:\"divi_instagram_url\";s:1:\"#\";s:12:\"divi_rss_url\";s:0:\"\";s:34:\"divi_woocommerce_archive_num_posts\";i:9;s:17:\"divi_catnum_posts\";i:6;s:21:\"divi_archivenum_posts\";i:5;s:20:\"divi_searchnum_posts\";i:5;s:17:\"divi_tagnum_posts\";i:5;s:16:\"divi_date_format\";s:6:\"M j, Y\";s:16:\"divi_use_excerpt\";s:5:\"false\";s:26:\"divi_responsive_shortcodes\";s:2:\"on\";s:33:\"divi_gf_enable_all_character_sets\";s:5:\"false\";s:16:\"divi_back_to_top\";s:5:\"false\";s:18:\"divi_smooth_scroll\";s:5:\"false\";s:25:\"divi_disable_translations\";s:5:\"false\";s:29:\"divi_enable_responsive_images\";s:2:\"on\";s:27:\"divi_minify_combine_scripts\";s:2:\"on\";s:26:\"divi_minify_combine_styles\";s:2:\"on\";s:15:\"divi_custom_css\";s:0:\"\";s:21:\"divi_enable_dropdowns\";s:2:\"on\";s:14:\"divi_home_link\";s:2:\"on\";s:15:\"divi_sort_pages\";s:10:\"post_title\";s:15:\"divi_order_page\";s:3:\"asc\";s:22:\"divi_tiers_shown_pages\";i:3;s:32:\"divi_enable_dropdowns_categories\";s:2:\"on\";s:21:\"divi_categories_empty\";s:2:\"on\";s:27:\"divi_tiers_shown_categories\";i:3;s:13:\"divi_sort_cat\";s:4:\"name\";s:14:\"divi_order_cat\";s:3:\"asc\";s:20:\"divi_disable_toptier\";s:5:\"false\";s:27:\"et_pb_post_type_integration\";a:4:{s:4:\"post\";s:2:\"on\";s:4:\"page\";s:2:\"on\";s:7:\"project\";s:2:\"on\";s:6:\"movies\";s:2:\"on\";}s:21:\"et_pb_static_css_file\";s:2:\"on\";s:19:\"et_pb_css_in_footer\";s:3:\"off\";s:25:\"et_pb_product_tour_global\";s:2:\"on\";s:24:\"et_enable_classic_editor\";s:2:\"on\";s:14:\"divi_postinfo2\";a:4:{i:0;s:6:\"author\";i:1;s:4:\"date\";i:2;s:10:\"categories\";i:3;s:8:\"comments\";}s:22:\"divi_show_postcomments\";s:2:\"on\";s:15:\"divi_thumbnails\";s:2:\"on\";s:20:\"divi_page_thumbnails\";s:5:\"false\";s:23:\"divi_show_pagescomments\";s:5:\"false\";s:14:\"divi_postinfo1\";a:3:{i:0;s:6:\"author\";i:1;s:4:\"date\";i:2;s:10:\"categories\";}s:21:\"divi_thumbnails_index\";s:2:\"on\";s:19:\"divi_seo_home_title\";s:5:\"false\";s:25:\"divi_seo_home_description\";s:5:\"false\";s:22:\"divi_seo_home_keywords\";s:5:\"false\";s:23:\"divi_seo_home_canonical\";s:5:\"false\";s:23:\"divi_seo_home_titletext\";s:0:\"\";s:29:\"divi_seo_home_descriptiontext\";s:0:\"\";s:26:\"divi_seo_home_keywordstext\";s:0:\"\";s:18:\"divi_seo_home_type\";s:27:\"BlogName | Blog description\";s:22:\"divi_seo_home_separate\";s:3:\" | \";s:21:\"divi_seo_single_title\";s:5:\"false\";s:27:\"divi_seo_single_description\";s:5:\"false\";s:24:\"divi_seo_single_keywords\";s:5:\"false\";s:25:\"divi_seo_single_canonical\";s:5:\"false\";s:27:\"divi_seo_single_field_title\";s:9:\"seo_title\";s:33:\"divi_seo_single_field_description\";s:15:\"seo_description\";s:30:\"divi_seo_single_field_keywords\";s:12:\"seo_keywords\";s:20:\"divi_seo_single_type\";s:21:\"Post title | BlogName\";s:24:\"divi_seo_single_separate\";s:3:\" | \";s:24:\"divi_seo_index_canonical\";s:5:\"false\";s:26:\"divi_seo_index_description\";s:5:\"false\";s:19:\"divi_seo_index_type\";s:24:\"Category name | BlogName\";s:23:\"divi_seo_index_separate\";s:3:\" | \";s:28:\"divi_integrate_header_enable\";s:2:\"on\";s:26:\"divi_integrate_body_enable\";s:2:\"on\";s:31:\"divi_integrate_singletop_enable\";s:2:\"on\";s:34:\"divi_integrate_singlebottom_enable\";s:2:\"on\";s:21:\"divi_integration_head\";s:0:\"\";s:21:\"divi_integration_body\";s:0:\"\";s:27:\"divi_integration_single_top\";s:0:\"\";s:30:\"divi_integration_single_bottom\";s:0:\"\";s:15:\"divi_468_enable\";s:5:\"false\";s:14:\"divi_468_image\";s:0:\"\";s:12:\"divi_468_url\";s:0:\"\";s:16:\"divi_468_adsense\";s:0:\"\";}', 'yes'),
(161, 'widget_aboutmewidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(162, 'widget_adsensewidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(163, 'widget_advwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(164, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:3:\"400\";s:4:\"crop\";i:1;}', 'yes'),
(165, 'shop_single_image_size', 'a:3:{s:5:\"width\";s:3:\"510\";s:6:\"height\";s:4:\"9999\";s:4:\"crop\";i:0;}', 'yes'),
(166, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";s:3:\"157\";s:6:\"height\";s:3:\"157\";s:4:\"crop\";i:1;}', 'yes'),
(167, 'et_safe_mode_plugins_allowlist', 'a:8:{i:0;s:15:\"etdev/etdev.php\";i:1;s:15:\"bloom/bloom.php\";i:2;s:19:\"monarch/monarch.php\";i:3;s:29:\"divi-builder/divi-builder.php\";i:4;s:27:\"ari-adminer/ari-adminer.php\";i:5;s:31:\"query-monitor/query-monitor.php\";i:6;s:27:\"woocommerce/woocommerce.php\";i:7;s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";}', 'yes'),
(168, 'et_support_center_installed', 'true', 'yes'),
(169, 'et_images_temp_folder', 'C:\\xampp\\htdocs\\movies/wp-content/uploads/et_temp', 'yes'),
(170, 'et_schedule_clean_images_last_time', '1622060707', 'yes'),
(171, 'et_bfb_settings', 'a:2:{s:10:\"enable_bfb\";s:2:\"on\";s:10:\"toggle_bfb\";s:2:\"on\";}', 'yes'),
(172, '_transient_et_builder_show_bfb_welcome_modal', '1', 'yes'),
(173, 'et_support_center_setup_done', 'processed', 'yes'),
(174, 'et_pb_builder_options', 'a:2:{i:0;b:0;s:35:\"email_provider_credentials_migrated\";b:1;}', 'yes'),
(175, 'recovery_mode_email_last_sent', '1622239631', 'yes'),
(176, 'et_account_status', 'active', 'no'),
(178, 'recently_activated', 'a:1:{s:29:\"easy-wp-smtp/easy-wp-smtp.php\";i:1622140404;}', 'yes'),
(183, 'et_google_api_settings', 'a:3:{s:7:\"api_key\";s:0:\"\";s:26:\"enqueue_google_maps_script\";s:2:\"on\";s:16:\"use_google_fonts\";s:2:\"on\";}', 'yes'),
(184, 'et_automatic_updates_options', 'a:2:{s:8:\"username\";s:0:\"\";s:7:\"api_key\";s:0:\"\";}', 'no'),
(192, 'Genre_children', 'a:0:{}', 'yes'),
(193, 'category_children', 'a:0:{}', 'yes'),
(216, '_transient_health-check-site-status-result', '{\"good\":\"12\",\"recommended\":\"6\",\"critical\":\"2\"}', 'yes'),
(287, 'action_scheduler_hybrid_store_demarkation', '46', 'yes'),
(288, 'schema-ActionScheduler_StoreSchema', '3.0.1621669711', 'yes'),
(289, 'schema-ActionScheduler_LoggerSchema', '2.0.1621669711', 'yes'),
(291, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1622240034;s:7:\"checked\";a:6:{s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:18:\"countdown/main.php\";s:5:\"1.0.1\";s:26:\"countdown_timmer/index.php\";s:3:\"1.0\";s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:5:\"1.4.6\";s:9:\"hello.php\";s:5:\"1.7.2\";s:16:\"movies/index.php\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:18:\"countdown/main.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/countdown\";s:4:\"slug\";s:9:\"countdown\";s:6:\"plugin\";s:18:\"countdown/main.php\";s:11:\"new_version\";s:3:\"0.2\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/countdown/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/plugin/countdown.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:53:\"https://s.w.org/plugins/geopattern-icon/countdown.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:29:\"easy-wp-smtp/easy-wp-smtp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/easy-wp-smtp\";s:4:\"slug\";s:12:\"easy-wp-smtp\";s:6:\"plugin\";s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:11:\"new_version\";s:5:\"1.4.6\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/easy-wp-smtp/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/easy-wp-smtp.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/easy-wp-smtp/assets/icon-128x128.png?rev=1242044\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/easy-wp-smtp/assets/banner-772x250.png?rev=1650323\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(292, '_site_transient_et_update_all_plugins', 'O:8:\"stdClass\":3:{s:7:\"checked\";a:6:{s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:18:\"countdown/main.php\";s:5:\"1.0.1\";s:26:\"countdown_timmer/index.php\";s:3:\"1.0\";s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:5:\"1.4.6\";s:9:\"hello.php\";s:5:\"1.7.2\";s:16:\"movies/index.php\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"last_checked\";i:1622240028;}', 'no'),
(293, 'swpsmtp_options', 'a:6:{s:16:\"from_email_field\";s:0:\"\";s:15:\"from_name_field\";s:0:\"\";s:23:\"force_from_name_replace\";i:0;s:8:\"sub_mode\";i:0;s:13:\"smtp_settings\";a:7:{s:4:\"host\";s:16:\"smtp.example.com\";s:15:\"type_encryption\";s:4:\"none\";s:4:\"port\";i:25;s:13:\"autentication\";s:3:\"yes\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:13:\"log_file_name\";s:33:\"logs\\.60afe5f399a6d7.10991406.txt\";}s:15:\"allowed_domains\";s:12:\"bG9jYWxob3N0\";}', 'yes'),
(351, '_site_transient_timeout_browser_01f7aec3f03fa333d53a844e50ec45aa', '1622665529', 'no'),
(352, '_site_transient_browser_01f7aec3f03fa333d53a844e50ec45aa', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"90.0.4430.212\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(353, '_site_transient_timeout_php_check_722257398ed85eaa39d12bc29012c839', '1622665530', 'no'),
(354, '_site_transient_php_check_722257398ed85eaa39d12bc29012c839', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(371, 'timmer_data', 'a:4:{s:5:\"title\";s:5:\"gsakj\";s:4:\"date\";s:16:\"2021-04-27T04:26\";s:6:\"expire\";s:4:\"hide\";s:10:\"expiry_msg\";s:6:\"bs,ams\";}', 'yes'),
(385, 'core_updater.lock', '1622140131', 'no'),
(449, '_site_transient_timeout_theme_roots', '1622225530', 'no'),
(450, '_site_transient_theme_roots', 'a:5:{s:4:\"Divi\";s:7:\"/themes\";s:10:\"divi_child\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(451, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1622223733;s:7:\"checked\";a:5:{s:4:\"Divi\";s:5:\"4.9.3\";s:10:\"divi_child\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.3\";}s:8:\"response\";a:1:{s:4:\"Divi\";a:3:{s:11:\"new_version\";s:5:\"4.9.4\";s:5:\"theme\";s:4:\"Divi\";s:3:\"url\";s:52:\"https://www.elegantthemes.com/api/changelog/divi.txt\";}}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(452, '_site_transient_et_update_themes', 'O:8:\"stdClass\":3:{s:7:\"checked\";a:5:{s:4:\"Divi\";s:5:\"4.9.3\";s:10:\"divi_child\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.3\";}s:8:\"response\";a:1:{s:4:\"Divi\";a:3:{s:11:\"new_version\";s:5:\"4.9.4\";s:5:\"theme\";s:4:\"Divi\";s:3:\"url\";s:52:\"https://www.elegantthemes.com/api/changelog/divi.txt\";}}s:12:\"last_checked\";i:1622223733;}', 'no'),
(462, '_transient_timeout_et_core_path', '1622326444', 'no'),
(463, '_transient_et_core_path', 'C:/xampp/htdocs/movies/wp-content/themes/Divi/core', 'no'),
(464, '_transient_timeout_et_core_version', '1622326444', 'no'),
(465, '_transient_et_core_version', '4.9.3', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(6, 10, '_edit_last', '1'),
(7, 10, '_edit_lock', '1621452315:1'),
(8, 10, '_et_pb_post_hide_nav', 'default'),
(9, 10, '_et_pb_page_layout', 'et_right_sidebar'),
(10, 10, '_et_pb_side_nav', 'off'),
(11, 10, '_et_pb_use_builder', ''),
(12, 10, '_et_pb_first_image', ''),
(13, 10, '_et_pb_truncate_post', ''),
(14, 10, '_et_pb_truncate_post_date', ''),
(15, 10, '_et_pb_old_content', ''),
(16, 2, '_edit_lock', '1621447432:1'),
(17, 13, '_edit_last', '1'),
(18, 13, '_edit_lock', '1621452309:1'),
(19, 13, '_et_pb_post_hide_nav', 'default'),
(20, 13, '_et_pb_page_layout', 'et_right_sidebar'),
(21, 13, '_et_pb_side_nav', 'off'),
(22, 13, '_et_pb_use_builder', ''),
(23, 13, '_et_pb_first_image', ''),
(24, 13, '_et_pb_truncate_post', ''),
(25, 13, '_et_pb_truncate_post_date', ''),
(26, 13, '_et_pb_old_content', ''),
(27, 15, '_edit_last', '1'),
(28, 15, '_edit_lock', '1621452303:1'),
(29, 15, '_et_pb_post_hide_nav', 'default'),
(30, 15, '_et_pb_page_layout', 'et_right_sidebar'),
(31, 15, '_et_pb_side_nav', 'off'),
(32, 15, '_et_pb_use_builder', ''),
(33, 15, '_et_pb_first_image', ''),
(34, 15, '_et_pb_truncate_post', ''),
(35, 15, '_et_pb_truncate_post_date', ''),
(36, 15, '_et_pb_old_content', ''),
(37, 17, '_menu_item_type', 'post_type'),
(38, 17, '_menu_item_menu_item_parent', '0'),
(39, 17, '_menu_item_object_id', '2'),
(40, 17, '_menu_item_object', 'page'),
(41, 17, '_menu_item_target', ''),
(42, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 17, '_menu_item_xfn', ''),
(44, 17, '_menu_item_url', ''),
(45, 17, '_menu_item_orphaned', '1621451455'),
(46, 18, '_edit_last', '1'),
(47, 18, '_edit_lock', '1621496810:1'),
(48, 19, '_menu_item_type', 'custom'),
(49, 19, '_menu_item_menu_item_parent', '0'),
(50, 19, '_menu_item_object_id', '19'),
(51, 19, '_menu_item_object', 'custom'),
(52, 19, '_menu_item_target', ''),
(53, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 19, '_menu_item_xfn', ''),
(55, 19, '_menu_item_url', 'http://localhost/movies/movies/'),
(57, 20, '_menu_item_type', 'taxonomy'),
(58, 20, '_menu_item_menu_item_parent', '0'),
(59, 20, '_menu_item_object_id', '3'),
(60, 20, '_menu_item_object', 'genre'),
(61, 20, '_menu_item_target', ''),
(62, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 20, '_menu_item_xfn', ''),
(64, 20, '_menu_item_url', ''),
(65, 20, '_menu_item_orphaned', '1621452519'),
(66, 21, '_menu_item_type', 'taxonomy'),
(67, 21, '_menu_item_menu_item_parent', '0'),
(68, 21, '_menu_item_object_id', '4'),
(69, 21, '_menu_item_object', 'genre'),
(70, 21, '_menu_item_target', ''),
(71, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 21, '_menu_item_xfn', ''),
(73, 21, '_menu_item_url', ''),
(74, 21, '_menu_item_orphaned', '1621452519'),
(75, 22, '_menu_item_type', 'taxonomy'),
(76, 22, '_menu_item_menu_item_parent', '0'),
(77, 22, '_menu_item_object_id', '5'),
(78, 22, '_menu_item_object', 'genre'),
(79, 22, '_menu_item_target', ''),
(80, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(81, 22, '_menu_item_xfn', ''),
(82, 22, '_menu_item_url', ''),
(83, 22, '_menu_item_orphaned', '1621452520'),
(84, 23, '_menu_item_type', 'taxonomy'),
(85, 23, '_menu_item_menu_item_parent', '0'),
(86, 23, '_menu_item_object_id', '3'),
(87, 23, '_menu_item_object', 'genre'),
(88, 23, '_menu_item_target', ''),
(89, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(90, 23, '_menu_item_xfn', ''),
(91, 23, '_menu_item_url', ''),
(92, 23, '_menu_item_orphaned', '1621456657'),
(93, 24, '_menu_item_type', 'taxonomy'),
(94, 24, '_menu_item_menu_item_parent', '0'),
(95, 24, '_menu_item_object_id', '1'),
(96, 24, '_menu_item_object', 'category'),
(97, 24, '_menu_item_target', ''),
(98, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(99, 24, '_menu_item_xfn', ''),
(100, 24, '_menu_item_url', ''),
(101, 24, '_menu_item_orphaned', '1621456701'),
(102, 18, '_wp_page_template', 'default'),
(103, 18, '_et_pb_post_hide_nav', 'default'),
(104, 18, '_et_pb_page_layout', 'et_no_sidebar'),
(105, 18, '_et_pb_side_nav', 'off'),
(106, 18, '_et_pb_use_builder', ''),
(107, 18, '_et_pb_first_image', ''),
(108, 18, '_et_pb_truncate_post', ''),
(109, 18, '_et_pb_truncate_post_date', ''),
(110, 18, '_et_pb_old_content', ''),
(111, 32, '_edit_last', '1'),
(114, 32, '_et_post_bg_color', '#ffffff'),
(115, 32, '_et_post_bg_layout', 'light'),
(116, 32, '_et_pb_show_title', 'on'),
(117, 32, '_et_pb_post_hide_nav', 'default'),
(118, 32, '_et_pb_page_layout', 'et_right_sidebar'),
(119, 32, '_et_pb_side_nav', 'off'),
(120, 32, '_et_pb_use_builder', ''),
(121, 32, '_et_pb_first_image', ''),
(122, 32, '_et_pb_truncate_post', ''),
(123, 32, '_et_pb_truncate_post_date', ''),
(124, 32, '_et_pb_old_content', ''),
(125, 32, '_edit_lock', '1621668575:1'),
(126, 34, '_edit_last', '1'),
(128, 34, '_et_post_bg_color', '#ffffff'),
(129, 34, '_et_post_bg_layout', 'light'),
(130, 34, '_et_pb_show_title', 'on'),
(131, 34, '_et_pb_post_hide_nav', 'default'),
(132, 34, '_et_pb_page_layout', 'et_right_sidebar'),
(133, 34, '_et_pb_side_nav', 'off'),
(134, 34, '_et_pb_use_builder', ''),
(135, 34, '_et_pb_first_image', ''),
(136, 34, '_et_pb_truncate_post', ''),
(137, 34, '_et_pb_truncate_post_date', ''),
(138, 34, '_et_pb_old_content', ''),
(139, 34, '_edit_lock', '1621668935:1'),
(140, 36, '_edit_last', '1'),
(141, 36, '_et_post_bg_color', '#ffffff'),
(142, 36, '_et_post_bg_layout', 'light'),
(143, 36, '_et_pb_show_title', 'on'),
(144, 36, '_et_pb_post_hide_nav', 'default'),
(145, 36, '_et_pb_page_layout', 'et_right_sidebar'),
(146, 36, '_et_pb_side_nav', 'off'),
(147, 36, '_et_pb_use_builder', ''),
(148, 36, '_et_pb_first_image', ''),
(149, 36, '_et_pb_truncate_post', ''),
(150, 36, '_et_pb_truncate_post_date', ''),
(151, 36, '_et_pb_old_content', ''),
(152, 36, '_edit_lock', '1621668989:1'),
(153, 38, '_edit_last', '1'),
(154, 38, '_et_post_bg_color', '#ffffff'),
(155, 38, '_et_post_bg_layout', 'light'),
(156, 38, '_et_pb_show_title', 'on'),
(157, 38, '_et_pb_post_hide_nav', 'default'),
(158, 38, '_et_pb_page_layout', 'et_right_sidebar'),
(159, 38, '_et_pb_side_nav', 'off'),
(160, 38, '_et_pb_use_builder', ''),
(161, 38, '_et_pb_first_image', ''),
(162, 38, '_et_pb_truncate_post', ''),
(163, 38, '_et_pb_truncate_post_date', ''),
(164, 38, '_et_pb_old_content', ''),
(165, 38, '_edit_lock', '1621669010:1'),
(166, 40, '_edit_last', '1'),
(167, 40, '_et_post_bg_color', '#ffffff'),
(168, 40, '_et_post_bg_layout', 'light'),
(169, 40, '_et_pb_show_title', 'on'),
(170, 40, '_et_pb_post_hide_nav', 'default'),
(171, 40, '_et_pb_page_layout', 'et_right_sidebar'),
(172, 40, '_et_pb_side_nav', 'off'),
(173, 40, '_et_pb_use_builder', ''),
(174, 40, '_et_pb_first_image', ''),
(175, 40, '_et_pb_truncate_post', ''),
(176, 40, '_et_pb_truncate_post_date', ''),
(177, 40, '_et_pb_old_content', ''),
(178, 40, '_edit_lock', '1621669033:1'),
(179, 42, '_edit_last', '1'),
(184, 42, '_et_post_bg_color', '#ffffff'),
(185, 42, '_et_post_bg_layout', 'light'),
(186, 42, '_et_pb_show_title', 'on'),
(187, 42, '_et_pb_post_hide_nav', 'default'),
(188, 42, '_et_pb_page_layout', 'et_right_sidebar'),
(189, 42, '_et_pb_side_nav', 'off'),
(190, 42, '_et_pb_use_builder', ''),
(191, 42, '_et_pb_first_image', ''),
(192, 42, '_et_pb_truncate_post', ''),
(193, 42, '_et_pb_truncate_post_date', ''),
(194, 42, '_et_pb_old_content', ''),
(195, 42, '_edit_lock', '1621669443:1'),
(196, 44, '_edit_last', '1'),
(198, 44, '_et_post_bg_color', '#ffffff'),
(199, 44, '_et_post_bg_layout', 'light'),
(200, 44, '_et_pb_show_title', 'on'),
(201, 44, '_et_pb_post_hide_nav', 'default'),
(202, 44, '_et_pb_page_layout', 'et_right_sidebar'),
(203, 44, '_et_pb_side_nav', 'off'),
(204, 44, '_et_pb_use_builder', ''),
(205, 44, '_et_pb_first_image', ''),
(206, 44, '_et_pb_truncate_post', ''),
(207, 44, '_et_pb_truncate_post_date', ''),
(208, 44, '_et_pb_old_content', ''),
(209, 44, '_edit_lock', '1621669483:1'),
(210, 46, '_edit_last', '1'),
(212, 46, '_et_post_bg_color', '#ffffff'),
(213, 46, '_et_post_bg_layout', 'light'),
(214, 46, '_et_pb_show_title', 'on'),
(215, 46, '_et_pb_post_hide_nav', 'default'),
(216, 46, '_et_pb_page_layout', 'et_right_sidebar'),
(217, 46, '_et_pb_side_nav', 'off'),
(218, 46, '_et_pb_use_builder', ''),
(219, 46, '_et_pb_first_image', ''),
(220, 46, '_et_pb_truncate_post', ''),
(221, 46, '_et_pb_truncate_post_date', ''),
(222, 46, '_et_pb_old_content', ''),
(223, 46, '_edit_lock', '1621669845:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-05-19 17:41:37', '2021-05-19 17:41:37', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-05-19 17:41:37', '2021-05-19 17:41:37', '', 0, 'http://localhost/movies/?p=1', 0, 'post', '', 1),
(2, 1, '2021-05-19 17:41:37', '2021-05-19 17:41:37', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/movies/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-05-19 17:41:37', '2021-05-19 17:41:37', '', 0, 'http://localhost/movies/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-05-19 17:41:37', '2021-05-19 17:41:37', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/movies.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-05-19 17:41:37', '2021-05-19 17:41:37', '', 0, 'http://localhost/movies/?page_id=3', 0, 'page', '', 0),
(6, 1, '2021-05-19 17:56:39', '2021-05-19 17:56:39', '', 'divi_child', '', 'publish', 'closed', 'closed', '', 'divi_child', '', '', '2021-05-19 17:56:47', '2021-05-19 17:56:47', '', 0, 'http://localhost/movies/2021/05/19/divi_child/', 0, 'custom_css', '', 0),
(7, 1, '2021-05-19 17:56:39', '2021-05-19 17:56:39', '', 'divi_child', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-05-19 17:56:39', '2021-05-19 17:56:39', '', 6, 'http://localhost/movies/?p=7', 0, 'revision', '', 0),
(10, 1, '2021-05-19 17:59:50', '2021-05-19 17:59:50', 'WordPress environment for a new custom post type including the different sections in the admin. This function takes two arguments: the first one is an unique of the custom post type and the second one an array demonstrating the properties of the new custom post type. Here it\'s another array containing the different labels, which indicates the text strings to be displayed in the different sections of the custom post type displays the custom post type name in the dashboard are displayed in and buttons respectively. I think the rest are pretty self explanatory.', 'Movie 1', '', 'publish', 'open', 'closed', '', 'movie-1', '', '', '2021-05-19 19:25:15', '2021-05-19 19:25:15', '', 0, 'http://localhost/movies/?post_type=movies&#038;p=10', 0, 'movies', '', 0),
(11, 1, '2021-05-19 17:59:50', '2021-05-19 17:59:50', '', 'Movie 1', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-05-19 17:59:50', '2021-05-19 17:59:50', '', 10, 'http://localhost/movies/?p=11', 0, 'revision', '', 0),
(12, 1, '2021-05-19 18:01:46', '2021-05-19 18:01:46', 'WordPress environment for a new custom post type including the different sections in the admin. This function takes two arguments: the first one is an unique of the custom post type and the second one an array demonstrating the properties of the new custom post type. Here it\'s another array containing the different labels, which indicates the text strings to be displayed in the different sections of the custom post type displays the custom post type name in the dashboard are displayed in and buttons respectively. I think the rest are pretty self explanatory.', 'Movie 1', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-05-19 18:01:46', '2021-05-19 18:01:46', '', 10, 'http://localhost/movies/?p=12', 0, 'revision', '', 0),
(13, 1, '2021-05-19 19:08:30', '2021-05-19 19:08:30', 'plugin. Upon activation, the plugin will <em>add</em> a new menu item in your <em>WordPress</em> admin menu called CPT UI. Now go to CPT UI » <em>Add</em> New to <em>create</em> a new <em>custom post type</em>. First, you need to provide a slug for your <em>custom post type</em>.plugin. Upon activation, the plugin will <em>add</em> a new menu item in your <em>WordPress</em> admin menu called CPT UI. Now go to CPT UI » <em>Add</em> New to <em>create</em> a new <em>custom post type</em>. First, you need to provide a slug for your <em>custom post type</em>.plugin. Upon activation, the plugin will <em>add</em> a new menu item in your <em>WordPress</em> admin menu called CPT UI. Now go to CPT UI » <em>Add</em> New to <em>create</em> a new <em>custom post type</em>. First, you need to provide a slug for your <em>custom post type</em>.', 'Movie 2', '', 'publish', 'open', 'closed', '', 'movie-2', '', '', '2021-05-19 19:25:09', '2021-05-19 19:25:09', '', 0, 'http://localhost/movies/?post_type=movies&#038;p=13', 0, 'movies', '', 0),
(14, 1, '2021-05-19 19:08:30', '2021-05-19 19:08:30', 'plugin. Upon activation, the plugin will <em>add</em> a new menu item in your <em>WordPress</em> admin menu called CPT UI. Now go to CPT UI » <em>Add</em> New to <em>create</em> a new <em>custom post type</em>. First, you need to provide a slug for your <em>custom post type</em>.plugin. Upon activation, the plugin will <em>add</em> a new menu item in your <em>WordPress</em> admin menu called CPT UI. Now go to CPT UI » <em>Add</em> New to <em>create</em> a new <em>custom post type</em>. First, you need to provide a slug for your <em>custom post type</em>.plugin. Upon activation, the plugin will <em>add</em> a new menu item in your <em>WordPress</em> admin menu called CPT UI. Now go to CPT UI » <em>Add</em> New to <em>create</em> a new <em>custom post type</em>. First, you need to provide a slug for your <em>custom post type</em>.', 'Movie 2', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2021-05-19 19:08:30', '2021-05-19 19:08:30', '', 13, 'http://localhost/movies/?p=14', 0, 'revision', '', 0),
(15, 1, '2021-05-19 19:09:48', '2021-05-19 19:09:48', 'plugin. Upon activation, the plugin will <em>add</em> a new menu item in your <em>WordPress</em> admin menu called CPT UI. Now go to CPT UI » <em>Add</em> New to <em>create</em> a new <em>custom post type</em>. First, you need to provide a slug for your <em>custom post type</em>.plugin. Upon activation, the plugin will <em>add</em> a new menu item in your <em>WordPress</em> admin menu called CPT UI. Now go to CPT UI » <em>Add</em> New to <em>create</em> a new <em>custom post type</em>. First, you need to provide a slug for your <em>custom post type</em>.plugin. Upon activation, the plugin will <em>add</em> a new menu item in your <em>WordPress</em> admin menu called CPT UI. Now go to CPT UI » <em>Add</em> New to <em>create</em> a new <em>custom post type</em>. First, you need to provide a slug for your <em>custom post type</em>.', 'Movie 3', '', 'publish', 'open', 'closed', '', 'movie-3', '', '', '2021-05-19 19:25:02', '2021-05-19 19:25:02', '', 0, 'http://localhost/movies/?post_type=movies&#038;p=15', 0, 'movies', '', 0),
(16, 1, '2021-05-19 19:09:48', '2021-05-19 19:09:48', 'plugin. Upon activation, the plugin will <em>add</em> a new menu item in your <em>WordPress</em> admin menu called CPT UI. Now go to CPT UI » <em>Add</em> New to <em>create</em> a new <em>custom post type</em>. First, you need to provide a slug for your <em>custom post type</em>.plugin. Upon activation, the plugin will <em>add</em> a new menu item in your <em>WordPress</em> admin menu called CPT UI. Now go to CPT UI » <em>Add</em> New to <em>create</em> a new <em>custom post type</em>. First, you need to provide a slug for your <em>custom post type</em>.plugin. Upon activation, the plugin will <em>add</em> a new menu item in your <em>WordPress</em> admin menu called CPT UI. Now go to CPT UI » <em>Add</em> New to <em>create</em> a new <em>custom post type</em>. First, you need to provide a slug for your <em>custom post type</em>.', 'Movie 3', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-05-19 19:09:48', '2021-05-19 19:09:48', '', 15, 'http://localhost/movies/?p=16', 0, 'revision', '', 0),
(17, 1, '2021-05-19 19:10:54', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-19 19:10:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/movies/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2021-05-19 20:49:50', '2021-05-19 20:49:50', '<div>\r\n<div>[List_movies Genre=\'Fiction\']</div>\r\n</div>', 'posts', '', 'publish', 'closed', 'closed', '', 'posts', '', '', '2021-05-20 05:08:40', '2021-05-20 05:08:40', '', 0, 'http://localhost/movies/?page_id=18', 0, 'page', '', 0),
(19, 1, '2021-05-19 20:37:51', '2021-05-19 19:29:51', '', 'Movies', '', 'publish', 'closed', 'closed', '', 'movies', '', '', '2021-05-19 20:37:51', '2021-05-19 20:37:51', '', 0, 'http://localhost/movies/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2021-05-19 19:28:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-19 19:28:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/movies/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2021-05-19 19:28:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-19 19:28:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/movies/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2021-05-19 19:28:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-19 19:28:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/movies/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2021-05-19 20:37:36', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-19 20:37:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/movies/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2021-05-19 20:38:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-19 20:38:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/movies/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2021-05-19 20:49:50', '2021-05-19 20:49:50', '[all_movies]', 'posts', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2021-05-19 20:49:50', '2021-05-19 20:49:50', '', 18, 'http://localhost/movies/?p=25', 0, 'revision', '', 0),
(26, 1, '2021-05-19 21:24:27', '2021-05-19 21:24:27', '[List_movies]', 'posts', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2021-05-19 21:24:27', '2021-05-19 21:24:27', '', 18, 'http://localhost/movies/?p=26', 0, 'revision', '', 0),
(27, 1, '2021-05-19 21:26:57', '2021-05-19 21:26:57', '[List_movies Genre=\'horror\']', 'posts', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2021-05-19 21:26:57', '2021-05-19 21:26:57', '', 18, 'http://localhost/movies/?p=27', 0, 'revision', '', 0),
(28, 1, '2021-05-19 21:32:38', '2021-05-19 21:32:38', '[all_movies]', 'posts', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2021-05-19 21:32:38', '2021-05-19 21:32:38', '', 18, 'http://localhost/movies/?p=28', 0, 'revision', '', 0),
(29, 1, '2021-05-20 05:05:27', '2021-05-20 05:05:27', '<div>\r\n<div>[List_movies]</div>\r\n</div>', 'posts', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2021-05-20 05:05:27', '2021-05-20 05:05:27', '', 18, 'http://localhost/movies/?p=29', 0, 'revision', '', 0),
(30, 1, '2021-05-20 05:06:29', '2021-05-20 05:06:29', '<div>\r\n<div>[List_movies Genre=\'Horror\']</div>\r\n</div>', 'posts', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2021-05-20 05:06:29', '2021-05-20 05:06:29', '', 18, 'http://localhost/movies/?p=30', 0, 'revision', '', 0),
(31, 1, '2021-05-20 05:08:40', '2021-05-20 05:08:40', '<div>\r\n<div>[List_movies Genre=\'Fiction\']</div>\r\n</div>', 'posts', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2021-05-20 05:08:40', '2021-05-20 05:08:40', '', 18, 'http://localhost/movies/?p=31', 0, 'revision', '', 0),
(32, 1, '2021-05-22 07:30:44', '2021-05-22 07:30:44', '', 'kuch bhi', '', 'publish', 'open', 'open', '', 'kuch-bhi', '', '', '2021-05-22 07:31:01', '2021-05-22 07:31:01', '', 0, 'http://localhost/movies/?p=32', 0, 'post', '', 0),
(33, 1, '2021-05-22 07:31:01', '2021-05-22 07:31:01', '', 'kuch bhi', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2021-05-22 07:31:01', '2021-05-22 07:31:01', '', 32, 'http://localhost/movies/?p=33', 0, 'revision', '', 0),
(34, 1, '2021-05-22 07:37:09', '2021-05-22 07:37:09', '', 'test', '', 'publish', 'open', 'open', '', 'test', '', '', '2021-05-22 07:37:09', '2021-05-22 07:37:09', '', 0, 'http://localhost/movies/?p=34', 0, 'post', '', 0),
(35, 1, '2021-05-22 07:37:09', '2021-05-22 07:37:09', '', 'test', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2021-05-22 07:37:09', '2021-05-22 07:37:09', '', 34, 'http://localhost/movies/?p=35', 0, 'revision', '', 0),
(36, 1, '2021-05-22 07:38:04', '0000-00-00 00:00:00', '', 'new1', '', 'draft', 'open', 'open', '', '', '', '', '2021-05-22 07:38:04', '2021-05-22 07:38:04', '', 0, 'http://localhost/movies/?p=36', 0, 'post', '', 0),
(37, 1, '2021-05-22 07:38:04', '2021-05-22 07:38:04', '', 'new1', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2021-05-22 07:38:04', '2021-05-22 07:38:04', '', 36, 'http://localhost/movies/?p=37', 0, 'revision', '', 0),
(38, 1, '2021-05-22 07:38:57', '0000-00-00 00:00:00', '', 'new 2', '', 'draft', 'open', 'open', '', '', '', '', '2021-05-22 07:38:57', '2021-05-22 07:38:57', '', 0, 'http://localhost/movies/?p=38', 0, 'post', '', 0),
(39, 1, '2021-05-22 07:38:57', '2021-05-22 07:38:57', '', 'new 2', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2021-05-22 07:38:57', '2021-05-22 07:38:57', '', 38, 'http://localhost/movies/?p=39', 0, 'revision', '', 0),
(40, 1, '2021-05-22 07:39:19', '0000-00-00 00:00:00', '', 'gvhjbn', '', 'draft', 'open', 'open', '', '', '', '', '2021-05-22 07:39:19', '2021-05-22 07:39:19', '', 0, 'http://localhost/movies/?p=40', 0, 'post', '', 0),
(41, 1, '2021-05-22 07:39:19', '2021-05-22 07:39:19', '', 'gvhjbn', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2021-05-22 07:39:19', '2021-05-22 07:39:19', '', 40, 'http://localhost/movies/?p=41', 0, 'revision', '', 0),
(42, 1, '2021-05-22 07:39:43', '2021-05-22 07:39:43', '', 'wgsavjbhzjn', '', 'publish', 'open', 'open', '', 'wgsavjbhzjn', '', '', '2021-05-22 07:42:15', '2021-05-22 07:42:15', '', 0, 'http://localhost/movies/?p=42', 0, 'post', '', 0),
(43, 1, '2021-05-22 07:42:15', '2021-05-22 07:42:15', '', 'wgsavjbhzjn', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2021-05-22 07:42:15', '2021-05-22 07:42:15', '', 42, 'http://localhost/movies/?p=43', 0, 'revision', '', 0),
(44, 1, '2021-05-22 07:46:32', '2021-05-22 07:46:32', '', 'fgcgv,hkb', '', 'publish', 'open', 'open', '', 'fgcgvhkb', '', '', '2021-05-22 07:46:32', '2021-05-22 07:46:32', '', 0, 'http://localhost/movies/?p=44', 0, 'post', '', 0),
(45, 1, '2021-05-22 07:46:32', '2021-05-22 07:46:32', '', 'fgcgv,hkb', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2021-05-22 07:46:32', '2021-05-22 07:46:32', '', 44, 'http://localhost/movies/?p=45', 0, 'revision', '', 0),
(46, 1, '2021-05-22 07:50:16', '2021-05-22 07:50:16', '', 'dcfvghbjnkm', '', 'publish', 'open', 'open', '', 'dcfvghbjnkm', '', '', '2021-05-22 07:50:16', '2021-05-22 07:50:16', '', 0, 'http://localhost/movies/?p=46', 0, 'post', '', 0),
(47, 1, '2021-05-22 07:50:16', '2021-05-22 07:50:16', '', 'dcfvghbjnkm', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2021-05-22 07:50:16', '2021-05-22 07:50:16', '', 46, 'http://localhost/movies/?p=47', 0, 'revision', '', 0),
(48, 1, '2021-05-27 18:26:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-05-27 18:26:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/movies/?p=48', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Fiction', 'fiction', 0),
(4, 'Horror', 'horror', 0),
(5, 'Tragedy', 'tragedy', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 3, 0),
(13, 4, 0),
(13, 5, 0),
(15, 3, 0),
(15, 4, 0),
(15, 5, 0),
(19, 2, 0),
(32, 1, 0),
(34, 1, 0),
(36, 1, 0),
(38, 1, 0),
(40, 1, 0),
(42, 1, 0),
(44, 1, 0),
(46, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'nav_menu', '', 0, 0),
(3, 3, 'Genre', '', 0, 2),
(4, 4, 'Genre', '', 0, 2),
(5, 5, 'Genre', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"b400ad4a940f07a5f25a528541943a93bf4042fed98bb058d2544ce3590da6e1\";a:4:{s:10:\"expiration\";i:1622408125;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\";s:5:\"login\";i:1622235325;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '48'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:20:\"add-post-type-movies\";i:1;s:21:\"add-post-type-project\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-post_format\";i:4;s:20:\"add-project_category\";i:5;s:15:\"add-project_tag\";}'),
(20, 1, 'wp_user-settings', 'post_dfw=off&editor=tinymce'),
(21, 1, 'wp_user-settings-time', '1621452149'),
(22, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BeXskZUINe76obrUkMK/PRTZ02KuRR0', 'admin', 'hudazehra2510@gmail.com', 'http://localhost/movies', '2021-05-19 17:41:35', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_countdown`
--
ALTER TABLE `wp_countdown`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_countdown`
--
ALTER TABLE `wp_countdown`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
