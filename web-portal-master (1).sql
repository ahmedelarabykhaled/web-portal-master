-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 19, 2019 at 03:38 PM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web-portal-master`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-09-15 13:12:39', '2019-09-15 13:12:39', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/workspace/portal-master-project', 'yes'),
(2, 'home', 'http://localhost/workspace/portal-master-project', 'yes'),
(3, 'blogname', 'web-portal-master', 'yes'),
(4, 'blogdescription', 'Plug&#039;in Sandbox is an experimentation environment to develop and test 5G software components and Virtual Network Function 					(VNF) chains. It allows researchers to collaborate on a shared platform and make their experiments reproducible as much as  					possible.', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ahmedkh.elaraby@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:158:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:47:\"index.php/home_page/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"index.php/home_page/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"index.php/home_page/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"index.php/home_page/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"index.php/home_page/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"index.php/home_page/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"index.php/home_page/([^/]+)/embed/?$\";s:42:\"index.php?home_page=$matches[1]&embed=true\";s:40:\"index.php/home_page/([^/]+)/trackback/?$\";s:36:\"index.php?home_page=$matches[1]&tb=1\";s:48:\"index.php/home_page/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?home_page=$matches[1]&paged=$matches[2]\";s:55:\"index.php/home_page/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?home_page=$matches[1]&cpage=$matches[2]\";s:44:\"index.php/home_page/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?home_page=$matches[1]&page=$matches[2]\";s:36:\"index.php/home_page/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"index.php/home_page/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"index.php/home_page/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"index.php/home_page/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"index.php/home_page/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"index.php/home_page/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:50:\"index.php/publications/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:60:\"index.php/publications/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:80:\"index.php/publications/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"index.php/publications/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"index.php/publications/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:56:\"index.php/publications/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"index.php/publications/([^/]+)/embed/?$\";s:45:\"index.php?publications=$matches[1]&embed=true\";s:43:\"index.php/publications/([^/]+)/trackback/?$\";s:39:\"index.php?publications=$matches[1]&tb=1\";s:51:\"index.php/publications/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?publications=$matches[1]&paged=$matches[2]\";s:58:\"index.php/publications/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?publications=$matches[1]&cpage=$matches[2]\";s:47:\"index.php/publications/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?publications=$matches[1]&page=$matches[2]\";s:39:\"index.php/publications/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"index.php/publications/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"index.php/publications/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"index.php/publications/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"index.php/publications/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"index.php/publications/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:49:\"index.php/contributer/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:59:\"index.php/contributer/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:79:\"index.php/contributer/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:74:\"index.php/contributer/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:74:\"index.php/contributer/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:55:\"index.php/contributer/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"index.php/contributer/([^/]+)/embed/?$\";s:44:\"index.php?contributer=$matches[1]&embed=true\";s:42:\"index.php/contributer/([^/]+)/trackback/?$\";s:38:\"index.php?contributer=$matches[1]&tb=1\";s:50:\"index.php/contributer/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?contributer=$matches[1]&paged=$matches[2]\";s:57:\"index.php/contributer/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?contributer=$matches[1]&cpage=$matches[2]\";s:46:\"index.php/contributer/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?contributer=$matches[1]&page=$matches[2]\";s:38:\"index.php/contributer/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"index.php/contributer/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"index.php/contributer/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"index.php/contributer/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"index.php/contributer/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"index.php/contributer/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"index.php/faq/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"index.php/faq/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"index.php/faq/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"index.php/faq/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"index.php/faq/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"index.php/faq/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"index.php/faq/([^/]+)/embed/?$\";s:36:\"index.php?faq=$matches[1]&embed=true\";s:34:\"index.php/faq/([^/]+)/trackback/?$\";s:30:\"index.php?faq=$matches[1]&tb=1\";s:42:\"index.php/faq/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?faq=$matches[1]&paged=$matches[2]\";s:49:\"index.php/faq/([^/]+)/comment-page-([0-9]{1,})/?$\";s:43:\"index.php?faq=$matches[1]&cpage=$matches[2]\";s:38:\"index.php/faq/([^/]+)(?:/([0-9]+))?/?$\";s:42:\"index.php?faq=$matches[1]&page=$matches[2]\";s:30:\"index.php/faq/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"index.php/faq/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"index.php/faq/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"index.php/faq/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"index.php/faq/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"index.php/faq/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=16&cpage=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'web-portal-master', 'yes'),
(41, 'stylesheet', 'web-portal-master', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '16', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:6:{i:1568898762;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1568898763;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1568898764;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1568898780;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1568898781;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1568553499;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1568885429;s:15:\"version_checked\";s:5:\"5.2.3\";s:12:\"translations\";a:0:{}}', 'no'),
(121, '_site_transient_timeout_browser_cc1568a4336b5b6b2355f2ab5b045ae7', '1569157980', 'no'),
(122, '_site_transient_browser_cc1568a4336b5b6b2355f2ab5b045ae7', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"76.0.3809.132\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(123, '_site_transient_timeout_php_check_eeeaddee229fff19a1ad625988841501', '1569157981', 'no'),
(124, '_site_transient_php_check_eeeaddee229fff19a1ad625988841501', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(129, 'can_compress_scripts', '0', 'no'),
(140, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1568885432;s:7:\"checked\";a:4:{s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:17:\"web-portal-master\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(141, 'current_theme', 'web-portal-master', 'yes'),
(142, 'theme_mods_web-portal-master', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(144, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(154, 'recently_activated', 'a:3:{s:43:\"wp-extra-file-types/wp-extra-file-types.php\";i:1568735164;s:39:\"wp-add-mime-types/wp-add-mime-types.php\";i:1568726516;s:29:\"acf-extended/acf-extended.php\";i:1568565694;}', 'yes'),
(163, 'cptui_new_install', 'false', 'yes'),
(164, 'cptui_post_types', 'a:4:{s:9:\"home_page\";a:29:{s:4:\"name\";s:9:\"home_page\";s:5:\"label\";s:9:\"home page\";s:14:\"singular_label\";s:9:\"home page\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:12:\"publications\";a:29:{s:4:\"name\";s:12:\"publications\";s:5:\"label\";s:12:\"publications\";s:14:\"singular_label\";s:12:\"publications\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:11:\"contributer\";a:29:{s:4:\"name\";s:11:\"contributer\";s:5:\"label\";s:11:\"contributer\";s:14:\"singular_label\";s:11:\"contributer\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:3:\"faq\";a:29:{s:4:\"name\";s:3:\"faq\";s:5:\"label\";s:3:\"faq\";s:14:\"singular_label\";s:3:\"faq\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:1:{i:0;s:8:\"category\";}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(173, 'acf_version', '5.8.3', 'yes'),
(195, 'category_children', 'a:0:{}', 'yes'),
(233, 'wp_add_mime_types_array', 'a:1:{s:16:\"mime_type_values\";s:57:\"a:2:{i:0;s:28:\"json	= flare_categories.json\";i:1;s:0:\"\";}\";}', 'yes'),
(237, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1568885433;s:7:\"checked\";a:7:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.3\";s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.6.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:39:\"wp-add-mime-types/wp-add-mime-types.php\";s:5:\"2.4.0\";s:43:\"wp-extra-file-types/wp-extra-file-types.php\";s:5:\"0.4.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"wp-add-mime-types/wp-add-mime-types.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/wp-add-mime-types\";s:4:\"slug\";s:17:\"wp-add-mime-types\";s:6:\"plugin\";s:39:\"wp-add-mime-types/wp-add-mime-types.php\";s:11:\"new_version\";s:5:\"2.4.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/wp-add-mime-types/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/wp-add-mime-types.2.4.0.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:61:\"https://s.w.org/plugins/geopattern-icon/wp-add-mime-types.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:43:\"wp-extra-file-types/wp-extra-file-types.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/wp-extra-file-types\";s:4:\"slug\";s:19:\"wp-extra-file-types\";s:6:\"plugin\";s:43:\"wp-extra-file-types/wp-extra-file-types.php\";s:11:\"new_version\";s:5:\"0.4.3\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/wp-extra-file-types/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/wp-extra-file-types.0.4.3.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://s.w.org/plugins/geopattern-icon/wp-extra-file-types.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(238, 'wpeft_types', 'a:8:{s:2:\"7z\";s:27:\"application/x-7z-compressed\";s:3:\"bz2\";s:19:\"application/x-bzip2\";s:4:\"json\";s:16:\"application/json\";s:3:\"tgz\";s:18:\"application/x-gzip\";s:3:\"txz\";s:16:\"application/x-xz\";s:3:\"txt\";s:10:\"text/plain\";s:2:\"xz\";s:2:\"xz\";s:3:\"zip\";s:15:\"application/zip\";}', 'yes'),
(239, 'wpeft_custom_types', '', 'yes'),
(262, '_site_transient_timeout_theme_roots', '1568887231', 'no'),
(263, '_site_transient_theme_roots', 'a:4:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:17:\"web-portal-master\";s:7:\"/themes\";}', 'no'),
(264, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1568928638', 'no'),
(265, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:40:\"Monthly WordPress Meetup - Show and tell\";s:3:\"url\";s:56:\"https://www.meetup.com/WordPress-OX/events/fqdgzqyzmbxb/\";s:6:\"meetup\";s:4:\"WPOX\";s:10:\"meetup_url\";s:36:\"https://www.meetup.com/WordPress-OX/\";s:4:\"date\";s:19:\"2019-09-18 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:22:\"Oxford, United Kingdom\";s:7:\"country\";s:2:\"gb\";s:8:\"latitude\";d:51.75256729126;s:9:\"longitude\";d:-1.2633240222931;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:36:\"WordPress Portsmouth Meetup - Clinic\";s:3:\"url\";s:68:\"https://www.meetup.com/Portsmouth-WordPress-Meetup/events/264266360/\";s:6:\"meetup\";s:27:\"Portsmouth WordPress Meetup\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/Portsmouth-WordPress-Meetup/\";s:4:\"date\";s:19:\"2019-09-18 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:26:\"Portsmouth, United Kingdom\";s:7:\"country\";s:2:\"gb\";s:8:\"latitude\";d:50.813472747803;s:9:\"longitude\";d:-1.0827939510345;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:40:\"Monthly WordPress Meetup - Show and tell\";s:3:\"url\";s:56:\"https://www.meetup.com/WordPress-OX/events/fxtxhryzmbxb/\";s:6:\"meetup\";s:4:\"WPOX\";s:10:\"meetup_url\";s:36:\"https://www.meetup.com/WordPress-OX/\";s:4:\"date\";s:19:\"2019-09-18 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:22:\"Oxford, United Kingdom\";s:7:\"country\";s:2:\"gb\";s:8:\"latitude\";d:51.75256729126;s:9:\"longitude\";d:-1.2633240222931;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:69:\"Social, WordCamp Brighton debrief and big welcome to all new members.\";s:3:\"url\";s:56:\"https://www.meetup.com/WordUp-Brighton/events/264615304/\";s:6:\"meetup\";s:15:\"WordUp Brighton\";s:10:\"meetup_url\";s:39:\"https://www.meetup.com/WordUp-Brighton/\";s:4:\"date\";s:19:\"2019-09-30 18:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:24:\"Brighton, United Kingdom\";s:7:\"country\";s:2:\"gb\";s:8:\"latitude\";d:50.821102142334;s:9:\"longitude\";d:-0.14219999313354;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:67:\"WordPress Coventry - October Meetup ~ \"The one on the command-line\"\";s:3:\"url\";s:51:\"https://www.meetup.com/wpcoventry/events/263009270/\";s:6:\"meetup\";s:25:\"WordPress Coventry Meetup\";s:10:\"meetup_url\";s:34:\"https://www.meetup.com/wpcoventry/\";s:4:\"date\";s:19:\"2019-10-02 18:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:24:\"Coventry, United Kingdom\";s:7:\"country\";s:2:\"gb\";s:8:\"latitude\";d:52.405380249023;s:9:\"longitude\";d:-1.5102989673615;}}}}', 'no'),
(266, '_site_transient_timeout_available_translations', '1568896889', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(267, '_site_transient_available_translations', 'a:117:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.0.6\";s:7:\"updated\";s:19:\"2019-05-16 12:52:45\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.6/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-03 09:40:59\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.3/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.11\";s:7:\"updated\";s:19:\"2019-05-14 14:59:20\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.11/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-10 16:44:41\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-09 01:46:50\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.3/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-24 05:22:45\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-07-26 14:27:28\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.3/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-07-02 05:01:03\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-03 09:38:07\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.3/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-07-08 20:19:38\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-05 14:26:27\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-05 14:24:48\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.2.3/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-11 07:30:16\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.2.3/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-11 07:33:51\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-22 14:40:13\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-05 15:50:07\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.3/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-20 23:50:40\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-25 07:12:29\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 16:57:02\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.1.2\";s:7:\"updated\";s:19:\"2019-06-06 15:48:01\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-20 16:48:55\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-20 20:46:03\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.3/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-07-22 16:47:50\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-17 18:52:53\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-21 11:52:29\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.0.6\";s:7:\"updated\";s:19:\"2018-12-07 18:38:30\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.6/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-06 21:26:01\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:6:\"4.9.11\";s:7:\"updated\";s:19:\"2019-05-23 02:23:28\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.11/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-08-01 01:18:38\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-08-13 21:31:06\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-08-23 10:52:04\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.3/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-08-20 19:29:21\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-10 12:52:19\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-29 15:57:31\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 10:46:15\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-08-20 13:48:04\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.3/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-19 14:36:40\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-02 18:21:38\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-05 07:28:44\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.3/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-02-21 08:17:32\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.11\";s:7:\"updated\";s:19:\"2019-05-08 04:00:57\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.11/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.1.2\";s:7:\"updated\";s:19:\"2019-08-27 04:34:18\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-08-27 09:34:34\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.14\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.14/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.10\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.10/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-08-19 07:40:04\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-08-15 14:36:38\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.2.3/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-30 14:24:29\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-08-16 11:16:09\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-20 11:47:07\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-07-07 06:24:50\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-07-02 08:07:52\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-08-24 16:57:40\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-07-22 05:41:06\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-07-02 07:58:03\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.2.3/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-18 21:28:26\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-08-15 18:30:22\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-07-10 14:50:59\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-26 11:40:37\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.3/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-05 08:35:20\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.3/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-04 16:57:08\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-05 10:41:35\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-08-31 10:05:29\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.3/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-08-29 15:44:37\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-17 20:55:48\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.2\";s:7:\"updated\";s:19:\"2019-03-31 10:39:40\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.2/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-06 09:52:01\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-19 04:36:22\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-07-29 00:33:56\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-08-05 12:58:25\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(268, 'WPLANG', '', 'yes'),
(269, 'new_admin_email', 'ahmedkh.elaraby@gmail.com', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(7, 7, '_menu_item_type', 'custom'),
(8, 7, '_menu_item_menu_item_parent', '0'),
(9, 7, '_menu_item_object_id', '7'),
(10, 7, '_menu_item_object', 'custom'),
(11, 7, '_menu_item_target', ''),
(12, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(13, 7, '_menu_item_xfn', ''),
(14, 7, '_menu_item_url', 'http://localhost/workspace/portal-master-project/'),
(16, 8, '_menu_item_type', 'post_type'),
(17, 8, '_menu_item_menu_item_parent', '0'),
(18, 8, '_menu_item_object_id', '2'),
(19, 8, '_menu_item_object', 'page'),
(20, 8, '_menu_item_target', ''),
(21, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(22, 8, '_menu_item_xfn', ''),
(23, 8, '_menu_item_url', ''),
(24, 8, '_menu_item_orphaned', '1568555971'),
(25, 9, '_menu_item_type', 'taxonomy'),
(26, 9, '_menu_item_menu_item_parent', '0'),
(27, 9, '_menu_item_object_id', '1'),
(28, 9, '_menu_item_object', 'category'),
(29, 9, '_menu_item_target', ''),
(30, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(31, 9, '_menu_item_xfn', ''),
(32, 9, '_menu_item_url', ''),
(33, 9, '_menu_item_orphaned', '1568556046'),
(34, 10, '_menu_item_type', 'custom'),
(35, 10, '_menu_item_menu_item_parent', '0'),
(36, 10, '_menu_item_object_id', '10'),
(37, 10, '_menu_item_object', 'custom'),
(38, 10, '_menu_item_target', ''),
(39, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 10, '_menu_item_xfn', ''),
(41, 10, '_menu_item_url', '#'),
(43, 11, '_menu_item_type', 'custom'),
(44, 11, '_menu_item_menu_item_parent', '10'),
(45, 11, '_menu_item_object_id', '11'),
(46, 11, '_menu_item_object', 'custom'),
(47, 11, '_menu_item_target', ''),
(48, 11, '_menu_item_classes', 'a:1:{i:0;s:8:\"software\";}'),
(49, 11, '_menu_item_xfn', ''),
(50, 11, '_menu_item_url', 'http://10.226.226.198/'),
(52, 12, '_menu_item_type', 'custom'),
(53, 12, '_menu_item_menu_item_parent', '10'),
(54, 12, '_menu_item_object_id', '12'),
(55, 12, '_menu_item_object', 'custom'),
(56, 12, '_menu_item_target', ''),
(57, 12, '_menu_item_classes', 'a:1:{i:0;s:8:\"software\";}'),
(58, 12, '_menu_item_xfn', ''),
(59, 12, '_menu_item_url', 'http://lucy1.rd.francetelecom.fr/'),
(61, 13, '_menu_item_type', 'custom'),
(62, 13, '_menu_item_menu_item_parent', '10'),
(63, 13, '_menu_item_object_id', '13'),
(64, 13, '_menu_item_object', 'custom'),
(65, 13, '_menu_item_target', ''),
(66, 13, '_menu_item_classes', 'a:1:{i:0;s:8:\"software\";}'),
(67, 13, '_menu_item_xfn', ''),
(68, 13, '_menu_item_url', 'http://10.236.240.244/'),
(70, 14, '_menu_item_type', 'custom'),
(71, 14, '_menu_item_menu_item_parent', '10'),
(72, 14, '_menu_item_object_id', '14'),
(73, 14, '_menu_item_object', 'custom'),
(74, 14, '_menu_item_target', ''),
(75, 14, '_menu_item_classes', 'a:2:{i:0;s:4:\"last\";i:1;s:8:\"software\";}'),
(76, 14, '_menu_item_xfn', ''),
(77, 14, '_menu_item_url', 'http://gitlab.forge.orange-labs.fr/lucy'),
(79, 15, '_menu_item_type', 'custom'),
(80, 15, '_menu_item_menu_item_parent', '0'),
(81, 15, '_menu_item_object_id', '15'),
(82, 15, '_menu_item_object', 'custom'),
(83, 15, '_menu_item_target', ''),
(84, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 15, '_menu_item_xfn', ''),
(86, 15, '_menu_item_url', 'http://10.226.226.55/lucy/docs/'),
(88, 16, '_edit_lock', '1568564219:1'),
(89, 18, '_edit_lock', '1568570893:1'),
(90, 20, '_edit_lock', '1568571051:1'),
(91, 22, '_edit_lock', '1568571812:1'),
(92, 24, '_edit_lock', '1568805228:1'),
(93, 26, '_edit_lock', '1568723975:1'),
(94, 28, '_menu_item_type', 'post_type'),
(95, 28, '_menu_item_menu_item_parent', '0'),
(96, 28, '_menu_item_object_id', '18'),
(97, 28, '_menu_item_object', 'page'),
(98, 28, '_menu_item_target', ''),
(99, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(100, 28, '_menu_item_xfn', ''),
(101, 28, '_menu_item_url', ''),
(103, 29, '_menu_item_type', 'post_type'),
(104, 29, '_menu_item_menu_item_parent', '0'),
(105, 29, '_menu_item_object_id', '20'),
(106, 29, '_menu_item_object', 'page'),
(107, 29, '_menu_item_target', ''),
(108, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(109, 29, '_menu_item_xfn', ''),
(110, 29, '_menu_item_url', ''),
(112, 30, '_menu_item_type', 'post_type'),
(113, 30, '_menu_item_menu_item_parent', '0'),
(114, 30, '_menu_item_object_id', '22'),
(115, 30, '_menu_item_object', 'page'),
(116, 30, '_menu_item_target', ''),
(117, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(118, 30, '_menu_item_xfn', ''),
(119, 30, '_menu_item_url', ''),
(121, 31, '_menu_item_type', 'custom'),
(122, 31, '_menu_item_menu_item_parent', '0'),
(123, 31, '_menu_item_object_id', '31'),
(124, 31, '_menu_item_object', 'custom'),
(125, 31, '_menu_item_target', ''),
(126, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(127, 31, '_menu_item_xfn', ''),
(128, 31, '_menu_item_url', '#'),
(130, 32, '_menu_item_type', 'post_type'),
(131, 32, '_menu_item_menu_item_parent', '31'),
(132, 32, '_menu_item_object_id', '26'),
(133, 32, '_menu_item_object', 'page'),
(134, 32, '_menu_item_target', ''),
(135, 32, '_menu_item_classes', 'a:1:{i:0;s:5:\"atoms\";}'),
(136, 32, '_menu_item_xfn', ''),
(137, 32, '_menu_item_url', ''),
(139, 33, '_menu_item_type', 'post_type'),
(140, 33, '_menu_item_menu_item_parent', '31'),
(141, 33, '_menu_item_object_id', '24'),
(142, 33, '_menu_item_object', 'page'),
(143, 33, '_menu_item_target', ''),
(144, 33, '_menu_item_classes', 'a:1:{i:0;s:5:\"atoms\";}'),
(145, 33, '_menu_item_xfn', ''),
(146, 33, '_menu_item_url', ''),
(148, 34, '_edit_lock', '1568564117:1'),
(149, 35, '_edit_lock', '1568564170:1'),
(150, 36, '_edit_lock', '1568564181:1'),
(151, 16, '_edit_last', '1'),
(152, 16, '_wp_page_template', 'HomePageTemplate.php'),
(153, 37, '_edit_lock', '1568565033:1'),
(154, 38, '_edit_last', '1'),
(155, 38, '_edit_lock', '1568567222:1'),
(156, 39, '_edit_last', '1'),
(157, 39, '_edit_lock', '1568569665:1'),
(158, 38, 'icon_html', '<i class=\"material-icons\">extension</i>'),
(159, 38, '_icon_html', 'field_5d7e6a10e44fe'),
(160, 38, 'is_primary', '0'),
(161, 38, '_is_primary', 'field_5d7e6a2ee44ff'),
(162, 42, '_edit_last', '1'),
(163, 42, '_edit_lock', '1568567070:1'),
(164, 42, 'icon_html', ''),
(165, 42, '_icon_html', 'field_5d7e6a10e44fe'),
(166, 42, 'is_primary', '1'),
(167, 42, '_is_primary', 'field_5d7e6a2ee44ff'),
(168, 42, 'link', 'http://10.226.226.55/lucy/docs/'),
(169, 42, '_link', 'field_5d7e6b0855bd4'),
(170, 44, '_edit_last', '1'),
(171, 44, '_edit_lock', '1568567222:1'),
(172, 44, 'icon_html', '<i class=\"material-icons\">build</i>'),
(173, 44, '_icon_html', 'field_5d7e6a10e44fe'),
(174, 44, 'is_primary', '0'),
(175, 44, '_is_primary', 'field_5d7e6a2ee44ff'),
(176, 44, 'link', ''),
(177, 44, '_link', 'field_5d7e6b0855bd4'),
(178, 45, '_edit_last', '1'),
(179, 45, '_edit_lock', '1568567221:1'),
(180, 45, 'icon_html', '<i class=\"material-icons\">cloud</i>'),
(181, 45, '_icon_html', 'field_5d7e6a10e44fe'),
(182, 45, 'is_primary', '0'),
(183, 45, '_is_primary', 'field_5d7e6a2ee44ff'),
(184, 45, 'link', ''),
(185, 45, '_link', 'field_5d7e6b0855bd4'),
(186, 46, '_edit_last', '1'),
(187, 46, '_edit_lock', '1568567220:1'),
(188, 46, 'icon_html', '<i class=\"material-icons\">dashboard</i>'),
(189, 46, '_icon_html', 'field_5d7e6a10e44fe'),
(190, 46, 'is_primary', '0'),
(191, 46, '_is_primary', 'field_5d7e6a2ee44ff'),
(192, 46, 'link', ''),
(193, 46, '_link', 'field_5d7e6b0855bd4'),
(194, 38, 'link', ''),
(195, 38, '_link', 'field_5d7e6b0855bd4'),
(196, 49, '_edit_last', '1'),
(197, 49, '_edit_lock', '1568571500:1'),
(198, 51, '_edit_last', '1'),
(199, 51, '_edit_lock', '1568569982:1'),
(200, 52, '_wp_attached_file', '2019/09/1570456751.pdf'),
(201, 51, 'resource_file', '52'),
(202, 51, '_resource_file', 'field_5d7e79e444adf'),
(203, 53, '_edit_last', '1'),
(204, 53, '_edit_lock', '1568570144:1'),
(205, 53, 'resource_file', '52'),
(206, 53, '_resource_file', 'field_5d7e79e444adf'),
(207, 18, '_edit_last', '1'),
(208, 18, '_wp_page_template', 'publications-template.php'),
(209, 20, '_edit_last', '1'),
(210, 20, '_wp_page_template', 'contributer-template.php'),
(211, 55, '_edit_last', '1'),
(212, 55, '_edit_lock', '1568571573:1'),
(213, 56, '_edit_last', '1'),
(214, 56, '_edit_lock', '1568571057:1'),
(215, 57, '_edit_last', '1'),
(216, 57, '_edit_lock', '1568571084:1'),
(217, 58, '_edit_last', '1'),
(218, 58, '_edit_lock', '1568571098:1'),
(219, 59, '_edit_last', '1'),
(220, 59, '_edit_lock', '1568571408:1'),
(221, 60, '_edit_last', '1'),
(222, 60, '_edit_lock', '1568571468:1'),
(223, 22, '_edit_last', '1'),
(224, 22, '_wp_page_template', 'faq-template.php'),
(225, 62, '_edit_last', '1'),
(226, 62, '_edit_lock', '1568718290:1'),
(227, 63, '_edit_last', '1'),
(228, 63, '_edit_lock', '1568718291:1'),
(229, 64, '_edit_last', '1'),
(230, 64, '_edit_lock', '1568718291:1'),
(231, 65, '_edit_last', '1'),
(232, 65, '_edit_lock', '1568718292:1'),
(233, 66, '_edit_last', '1'),
(234, 66, '_edit_lock', '1568718292:1'),
(235, 67, '_edit_last', '1'),
(236, 67, '_edit_lock', '1568718293:1'),
(237, 68, '_edit_last', '1'),
(238, 68, '_edit_lock', '1568718293:1'),
(239, 69, '_edit_last', '1'),
(240, 69, '_edit_lock', '1568718293:1'),
(241, 70, '_edit_last', '1'),
(242, 70, '_edit_lock', '1568718293:1'),
(243, 71, '_edit_last', '1'),
(244, 71, '_edit_lock', '1568718294:1'),
(245, 72, '_edit_last', '1'),
(246, 72, '_edit_lock', '1568718294:1'),
(247, 73, '_edit_last', '1'),
(248, 73, '_edit_lock', '1568718294:1'),
(249, 74, '_edit_last', '1'),
(250, 74, '_edit_lock', '1568718294:1'),
(251, 75, '_edit_last', '1'),
(252, 75, '_edit_lock', '1568718295:1'),
(253, 76, '_edit_last', '1'),
(254, 76, '_edit_lock', '1568718295:1'),
(255, 77, '_edit_last', '1'),
(256, 77, '_edit_lock', '1568718998:1'),
(257, 78, '_edit_last', '1'),
(258, 78, '_edit_lock', '1568718296:1'),
(259, 26, '_edit_last', '1'),
(260, 26, '_wp_page_template', 'atoms-per-name-template.php'),
(261, 81, '_edit_last', '1'),
(262, 81, '_edit_lock', '1568725065:1'),
(263, 84, '_wp_attached_file', '2019/09/flare_names.json'),
(264, 26, 'url', '84'),
(265, 26, '_url', 'field_5d80c7932a188'),
(266, 85, 'url', '84'),
(267, 85, '_url', 'field_5d80c7932a188'),
(268, 24, '_edit_last', '1'),
(269, 24, '_wp_page_template', 'atoms-per-category-template.php'),
(270, 87, '_wp_attached_file', '2019/09/lucy-logo-85.png'),
(271, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:85;s:6:\"height\";i:66;s:4:\"file\";s:24:\"2019/09/lucy-logo-85.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(272, 88, '_wp_attached_file', '2019/09/flare_categories.json'),
(273, 24, 'url', '88'),
(274, 24, '_url', 'field_5d80c7932a188'),
(275, 89, 'url', '88'),
(276, 89, '_url', 'field_5d80c7932a188'),
(277, 90, '_menu_item_type', 'post_type'),
(278, 90, '_menu_item_menu_item_parent', '0'),
(279, 90, '_menu_item_object_id', '18'),
(280, 90, '_menu_item_object', 'page'),
(281, 90, '_menu_item_target', ''),
(282, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(283, 90, '_menu_item_xfn', ''),
(284, 90, '_menu_item_url', ''),
(286, 91, '_menu_item_type', 'custom'),
(287, 91, '_menu_item_menu_item_parent', '0'),
(288, 91, '_menu_item_object_id', '91'),
(289, 91, '_menu_item_object', 'custom'),
(290, 91, '_menu_item_target', ''),
(291, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(292, 91, '_menu_item_xfn', ''),
(293, 91, '_menu_item_url', 'http://10.226.226.55/lucy/docs/'),
(295, 92, '_menu_item_type', 'custom'),
(296, 92, '_menu_item_menu_item_parent', '0'),
(297, 92, '_menu_item_object_id', '92'),
(298, 92, '_menu_item_object', 'custom'),
(299, 92, '_menu_item_target', ''),
(300, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(301, 92, '_menu_item_xfn', ''),
(302, 92, '_menu_item_url', 'http://localhost/workspace/portal-master-project/wp-content/uploads/2019/09/1570456751.pdf'),
(304, 93, '_menu_item_type', 'custom'),
(305, 93, '_menu_item_menu_item_parent', '0'),
(306, 93, '_menu_item_object_id', '93'),
(307, 93, '_menu_item_object', 'custom'),
(308, 93, '_menu_item_target', ''),
(309, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(310, 93, '_menu_item_xfn', ''),
(311, 93, '_menu_item_url', 'http://localhost/workspace/portal-master-project/wp-content/uploads/2019/09/1570456751.pdf'),
(313, 3, '_edit_last', '1'),
(314, 3, '_edit_lock', '1568885908:1'),
(315, 95, '_menu_item_type', 'post_type'),
(316, 95, '_menu_item_menu_item_parent', '0'),
(317, 95, '_menu_item_object_id', '3'),
(318, 95, '_menu_item_object', 'page'),
(319, 95, '_menu_item_target', ''),
(320, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(321, 95, '_menu_item_xfn', ''),
(322, 95, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-09-15 13:12:39', '2019-09-15 13:12:39', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-09-15 13:12:39', '2019-09-15 13:12:39', '', 0, 'http://localhost/workspace/portal-master-project/?p=1', 0, 'post', '', 1),
(2, 1, '2019-09-15 13:12:39', '2019-09-15 13:12:39', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/workspace/portal-master-project/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-09-15 13:12:39', '2019-09-15 13:12:39', '', 0, 'http://localhost/workspace/portal-master-project/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-09-15 13:12:39', '2019-09-15 13:12:39', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/workspace/portal-master-project.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2019-09-19 09:38:27', '2019-09-19 09:38:27', '', 0, 'http://localhost/workspace/portal-master-project/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-09-15 13:13:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-15 13:13:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/workspace/portal-master-project/?p=4', 0, 'post', '', 0),
(7, 1, '2019-09-15 14:04:11', '2019-09-15 14:04:11', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-09-17 16:45:07', '2019-09-17 16:45:07', '', 0, 'http://localhost/workspace/portal-master-project/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2019-09-15 13:59:31', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-09-15 13:59:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/workspace/portal-master-project/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2019-09-15 14:00:46', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-09-15 14:00:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/workspace/portal-master-project/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2019-09-15 14:04:11', '2019-09-15 14:04:11', '', 'Software', '', 'publish', 'closed', 'closed', '', 'software', '', '', '2019-09-17 16:45:08', '2019-09-17 16:45:08', '', 0, 'http://localhost/workspace/portal-master-project/?p=10', 2, 'nav_menu_item', '', 0),
(11, 1, '2019-09-15 14:04:11', '2019-09-15 14:04:11', '', 'Atom Store', '', 'publish', 'closed', 'closed', '', 'atom-store', '', '', '2019-09-17 16:45:08', '2019-09-17 16:45:08', '', 0, 'http://localhost/workspace/portal-master-project/?p=11', 3, 'nav_menu_item', '', 0),
(12, 1, '2019-09-15 14:04:11', '2019-09-15 14:04:11', '', 'PlayGround', '', 'publish', 'closed', 'closed', '', 'playground', '', '', '2019-09-17 16:45:08', '2019-09-17 16:45:08', '', 0, 'http://localhost/workspace/portal-master-project/?p=12', 4, 'nav_menu_item', '', 0),
(13, 1, '2019-09-15 14:04:12', '2019-09-15 14:04:12', '', 'Wall', '', 'publish', 'closed', 'closed', '', 'wall', '', '', '2019-09-17 16:45:08', '2019-09-17 16:45:08', '', 0, 'http://localhost/workspace/portal-master-project/?p=13', 5, 'nav_menu_item', '', 0),
(14, 1, '2019-09-15 14:04:12', '2019-09-15 14:04:12', '', 'Code Repo </>', '', 'publish', 'closed', 'closed', '', 'code-repo', '', '', '2019-09-17 16:45:08', '2019-09-17 16:45:08', '', 0, 'http://localhost/workspace/portal-master-project/?p=14', 6, 'nav_menu_item', '', 0),
(15, 1, '2019-09-15 14:08:55', '2019-09-15 14:08:55', '', 'Documentation', '', 'publish', 'closed', 'closed', '', 'documentation', '', '', '2019-09-17 16:45:08', '2019-09-17 16:45:08', '', 0, 'http://localhost/workspace/portal-master-project/?p=15', 7, 'nav_menu_item', '', 0),
(16, 1, '2019-09-15 14:06:39', '2019-09-15 14:06:39', '', 'Home Page', '', 'publish', 'closed', 'closed', '', 'home-page', '', '', '2019-09-15 16:19:00', '2019-09-15 16:19:00', '', 0, 'http://localhost/workspace/portal-master-project/?page_id=16', 0, 'page', '', 0),
(17, 1, '2019-09-15 14:06:39', '2019-09-15 14:06:39', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-09-15 14:06:39', '2019-09-15 14:06:39', '', 16, 'http://localhost/workspace/portal-master-project/index.php/2019/09/15/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-09-15 14:07:06', '2019-09-15 14:07:06', '', 'Publications', '', 'publish', 'closed', 'closed', '', 'publications', '', '', '2019-09-15 17:59:06', '2019-09-15 17:59:06', '', 0, 'http://localhost/workspace/portal-master-project/?page_id=18', 0, 'page', '', 0),
(19, 1, '2019-09-15 14:07:06', '2019-09-15 14:07:06', '', 'Publications', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-09-15 14:07:06', '2019-09-15 14:07:06', '', 18, 'http://localhost/workspace/portal-master-project/index.php/2019/09/15/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-09-15 14:07:49', '2019-09-15 14:07:49', '', 'Contribute', '', 'publish', 'closed', 'closed', '', 'contribute', '', '', '2019-09-15 18:10:51', '2019-09-15 18:10:51', '', 0, 'http://localhost/workspace/portal-master-project/?page_id=20', 0, 'page', '', 0),
(21, 1, '2019-09-15 14:07:49', '2019-09-15 14:07:49', '', 'Contribute', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-09-15 14:07:49', '2019-09-15 14:07:49', '', 20, 'http://localhost/workspace/portal-master-project/index.php/2019/09/15/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-09-15 14:08:03', '2019-09-15 14:08:03', '', 'Faq', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2019-09-15 18:23:32', '2019-09-15 18:23:32', '', 0, 'http://localhost/workspace/portal-master-project/?page_id=22', 0, 'page', '', 0),
(23, 1, '2019-09-15 14:08:03', '2019-09-15 14:08:03', '', 'Faq', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-09-15 14:08:03', '2019-09-15 14:08:03', '', 22, 'http://localhost/workspace/portal-master-project/index.php/2019/09/15/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-09-15 14:08:31', '2019-09-15 14:08:31', '', 'Atoms Per Category', '', 'publish', 'closed', 'closed', '', 'atoms-per-category', '', '', '2019-09-17 17:01:24', '2019-09-17 17:01:24', '', 0, 'http://localhost/workspace/portal-master-project/?page_id=24', 0, 'page', '', 0),
(25, 1, '2019-09-15 14:08:31', '2019-09-15 14:08:31', '', 'Atoms Per Category', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-09-15 14:08:31', '2019-09-15 14:08:31', '', 24, 'http://localhost/workspace/portal-master-project/index.php/2019/09/15/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-09-15 14:08:46', '2019-09-15 14:08:46', '', 'Atoms Per Name', '', 'publish', 'closed', 'closed', '', 'atoms-per-name', '', '', '2019-09-17 12:33:31', '2019-09-17 12:33:31', '', 0, 'http://localhost/workspace/portal-master-project/?page_id=26', 0, 'page', '', 0),
(27, 1, '2019-09-15 14:08:46', '2019-09-15 14:08:46', '', 'Atoms Per Name', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-09-15 14:08:46', '2019-09-15 14:08:46', '', 26, 'http://localhost/workspace/portal-master-project/index.php/2019/09/15/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2019-09-15 14:09:54', '2019-09-15 14:09:54', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2019-09-17 16:45:08', '2019-09-17 16:45:08', '', 0, 'http://localhost/workspace/portal-master-project/?p=28', 8, 'nav_menu_item', '', 0),
(29, 1, '2019-09-15 14:09:54', '2019-09-15 14:09:54', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2019-09-17 16:45:08', '2019-09-17 16:45:08', '', 0, 'http://localhost/workspace/portal-master-project/?p=29', 9, 'nav_menu_item', '', 0),
(30, 1, '2019-09-15 14:09:54', '2019-09-15 14:09:54', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2019-09-17 16:45:08', '2019-09-17 16:45:08', '', 0, 'http://localhost/workspace/portal-master-project/?p=30', 10, 'nav_menu_item', '', 0),
(31, 1, '2019-09-15 14:09:55', '2019-09-15 14:09:55', '', 'Atoms', '', 'publish', 'closed', 'closed', '', 'atoms', '', '', '2019-09-17 16:45:08', '2019-09-17 16:45:08', '', 0, 'http://localhost/workspace/portal-master-project/?p=31', 11, 'nav_menu_item', '', 0),
(32, 1, '2019-09-15 14:09:55', '2019-09-15 14:09:55', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2019-09-17 16:45:08', '2019-09-17 16:45:08', '', 0, 'http://localhost/workspace/portal-master-project/?p=32', 12, 'nav_menu_item', '', 0),
(33, 1, '2019-09-15 14:09:55', '2019-09-15 14:09:55', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2019-09-17 16:45:08', '2019-09-17 16:45:08', '', 0, 'http://localhost/workspace/portal-master-project/?p=33', 13, 'nav_menu_item', '', 0),
(34, 1, '2019-09-15 16:15:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-15 16:15:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/workspace/portal-master-project/?page_id=34', 0, 'page', '', 0),
(35, 1, '2019-09-15 16:17:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-15 16:17:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/workspace/portal-master-project/?page_id=35', 0, 'page', '', 0),
(36, 1, '2019-09-15 16:18:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-15 16:18:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/workspace/portal-master-project/?page_id=36', 0, 'page', '', 0),
(37, 1, '2019-09-15 16:32:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-15 16:32:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=home_page&p=37', 0, 'home_page', '', 0),
(38, 1, '2019-09-15 16:35:54', '2019-09-15 16:35:54', 'One of the main goals of Plugin, is to define, with operationals, which will be the 5G Cockpit and prepare for the administration of the future telco system. In 2018 and beyond, the Plugin platform will allow a large scale experiments with emission on the field and test of the first 5G services. Operationals will be able to use the Cockpit to operate the tests. Learn more about the Cockpit\r\n\r\n', 'Sandbox', '', 'publish', 'closed', 'closed', '', 'sandbox', '', '', '2019-09-15 17:09:11', '2019-09-15 17:09:11', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=home_page&#038;p=38', 0, 'home_page', '', 0),
(39, 1, '2019-09-15 16:43:42', '2019-09-15 16:43:42', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"home_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home Page Custom Fields', 'home-page-custom-fields', 'publish', 'closed', 'closed', '', 'group_5d7e69f89e5db', '', '', '2019-09-15 16:47:15', '2019-09-15 16:47:15', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=acf-field-group&#038;p=39', 0, 'acf-field-group', '', 0),
(40, 1, '2019-09-15 16:43:42', '2019-09-15 16:43:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'icon html', 'icon_html', 'publish', 'closed', 'closed', '', 'field_5d7e6a10e44fe', '', '', '2019-09-15 16:43:42', '2019-09-15 16:43:42', '', 39, 'http://localhost/workspace/portal-master-project/?post_type=acf-field&p=40', 0, 'acf-field', '', 0),
(41, 1, '2019-09-15 16:43:42', '2019-09-15 16:43:42', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'is primary', 'is_primary', 'publish', 'closed', 'closed', '', 'field_5d7e6a2ee44ff', '', '', '2019-09-15 16:43:42', '2019-09-15 16:43:42', '', 39, 'http://localhost/workspace/portal-master-project/?post_type=acf-field&p=41', 1, 'acf-field', '', 0),
(42, 1, '2019-09-15 16:47:29', '2019-09-15 16:47:29', '<div class=\"row center\">\r\n<h5 class=\"header col s12 light\"><span style=\"font-size: 16px;\">the 5G infrastructure as a code for research projects</span></h5>\r\n</div>', '# plugin.platform', '', 'publish', 'closed', 'closed', '', 'plugin-platform_', '', '', '2019-09-15 16:55:08', '2019-09-15 16:55:08', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=home_page&#038;p=42', 0, 'home_page', '', 0),
(43, 1, '2019-09-15 16:47:14', '2019-09-15 16:47:14', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_5d7e6b0855bd4', '', '', '2019-09-15 16:47:14', '2019-09-15 16:47:14', '', 39, 'http://localhost/workspace/portal-master-project/?post_type=acf-field&p=43', 2, 'acf-field', '', 0),
(44, 1, '2019-09-15 16:48:46', '2019-09-15 16:48:46', 'One of the main goals of Plugin, is to define, with operationals, which will be the 5G Cockpit and prepare for the administration of the future telco system. In 2018 and beyond, the Plugin platform will allow a large scale experiments with emission on the field and test of the first 5G services. Operationals will be able to use the Cockpit to operate the tests. Learn more about the Cockpit\r\n\r\n', 'Experimental 5G System', '', 'publish', 'closed', 'closed', '', 'experimental-5g-system', '', '', '2019-09-15 17:09:07', '2019-09-15 17:09:07', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=home_page&#038;p=44', 0, 'home_page', '', 0),
(45, 1, '2019-09-15 16:49:27', '2019-09-15 16:49:27', 'One of the main goals of Plugin, is to define, with operationals, which will be the 5G Cockpit and prepare for the administration of the future telco system. In 2018 and beyond, the Plugin platform will allow a large scale experiments with emission on the field and test of the first 5G services. Operationals will be able to use the Cockpit to operate the tests. Learn more about the Cockpit\r\n\r\n', 'CNCF Compliant', '', 'publish', 'closed', 'closed', '', 'cncf-compliant', '', '', '2019-09-15 17:09:02', '2019-09-15 17:09:02', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=home_page&#038;p=45', 0, 'home_page', '', 0),
(46, 1, '2019-09-15 16:49:59', '2019-09-15 16:49:59', 'One of the main goals of Plugin, is to define, with operationals, which will be the 5G Cockpit and prepare for the administration of the future telco system. In 2018 and beyond, the Plugin platform will allow a large scale experiments with emission on the field and test of the first 5G services. Operationals will be able to use the Cockpit to operate the tests. Learn more about the Cockpit', 'Cockpit', '', 'publish', 'closed', 'closed', '', 'cockpit', '', '', '2019-09-15 17:08:53', '2019-09-15 17:08:53', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=home_page&#038;p=46', 0, 'home_page', '', 0),
(47, 1, '2019-09-15 16:54:56', '2019-09-15 16:54:56', '<div class=\"row center\">\n<h5 class=\"header col s12 light\"><span style=\"font-size: 16px;\">the 5G infrastructure as a code for research projects</span></h5>\n</div>', '# plugin.platform', '', 'inherit', 'closed', 'closed', '', '42-autosave-v1', '', '', '2019-09-15 16:54:56', '2019-09-15 16:54:56', '', 42, 'http://localhost/workspace/portal-master-project/index.php/2019/09/15/42-autosave-v1/', 0, 'revision', '', 0),
(48, 1, '2019-09-15 17:07:19', '2019-09-15 17:07:19', '<div class=\"col s12 m6\">\n<div class=\"icon-block\">\n<p class=\"light\">Plugin is a platform for experimenting 5G and will be built on top of convergent network/IT infrastructure. Therefore, Plugin provides developers and operationals an evolving sandbox, in which 5G components will be instantiated, tested, chained, etc. Plugin is co-designed with the internal research projects (Orange) and the external communities partnership.</p>\n\n</div>\n</div>\n<div class=\"col s12 m7\">\n<div class=\"icon-block\"></div>\n</div>', 'Experimental 5G System', '', 'inherit', 'closed', 'closed', '', '44-autosave-v1', '', '', '2019-09-15 17:07:19', '2019-09-15 17:07:19', '', 44, 'http://localhost/workspace/portal-master-project/index.php/2019/09/15/44-autosave-v1/', 0, 'revision', '', 0),
(49, 1, '2019-09-15 17:50:57', '2019-09-15 17:50:57', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"publications\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Publications Fields', 'publications-fields', 'publish', 'closed', 'closed', '', 'group_5d7e79d52d6f3', '', '', '2019-09-15 17:54:02', '2019-09-15 17:54:02', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=acf-field-group&#038;p=49', 0, 'acf-field-group', '', 0),
(50, 1, '2019-09-15 17:50:57', '2019-09-15 17:50:57', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'resource file', 'resource_file', 'publish', 'closed', 'closed', '', 'field_5d7e79e444adf', '', '', '2019-09-15 17:50:57', '2019-09-15 17:50:57', '', 49, 'http://localhost/workspace/portal-master-project/?post_type=acf-field&p=50', 0, 'acf-field', '', 0),
(51, 1, '2019-09-15 17:55:22', '2019-09-15 17:55:22', 'We present Plug\'in: a 5G experimentation platform to develop and test 5G software components and VNF chains. Plug\'in allows researchers to collaborate on a shared platform and make their developments and experiments reproducible. The key enablers to achieve such a platform are cloud computing, virtualization and automation. Plug’in provides a sandbox where researchers can experiment on existing software components (also called atoms), chain them, and develop new ones. Atoms are deployed leveraging standard virtualization technologies regardless of their programming language. Finally, we evaluate the compute component of Plug\'in.\r\n\r\n', 'Plug\'in: A 5G Experimentation Platform for Collaborative and Reproducible Research', '', 'publish', 'closed', 'closed', '', 'plugin-a-5g-experimentation-platform-for-collaborative-and-reproducible-research', '', '', '2019-09-15 17:55:22', '2019-09-15 17:55:22', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=publications&#038;p=51', 0, 'publications', '', 0),
(52, 1, '2019-09-15 17:55:18', '2019-09-15 17:55:18', '', '1570456751', '', 'inherit', 'open', 'closed', '', '1570456751', '', '', '2019-09-15 17:55:18', '2019-09-15 17:55:18', '', 51, 'http://localhost/workspace/portal-master-project/wp-content/uploads/2019/09/1570456751.pdf', 0, 'attachment', 'application/pdf', 0),
(53, 1, '2019-09-15 17:55:46', '2019-09-15 17:55:46', 'Following the convergence of the mobile communications and cloud computing industries, current 4G services evolve towards 5G cloud native ones. Mobile Network Operators (MNOs) leverage cloud-computing paradigms for this shift. This approach should help MNOs reduce Operational Expenditures and propose a larger 5G usecases portfolio. To execute this vision, Virtualized Network Functions need to become cloudnative themselves. This paper introduces a cloud native platform allowing MNOs to expose their assets: networking resources, mobile services, and cloud computing to Over-The-Top (OTT) players such as entertainment and media companies, in an as a service fashion.\r\n\r\n', 'Towards 5G as a Service for Over the Top Players', '', 'publish', 'closed', 'closed', '', 'towards-5g-as-a-service-for-over-the-top-players', '', '', '2019-09-15 17:55:46', '2019-09-15 17:55:46', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=publications&#038;p=53', 0, 'publications', '', 0),
(55, 1, '2019-09-15 18:12:50', '2019-09-15 18:12:50', 'Thanks for asking. Let\'s find a place for you!\r\n\r\nFirst you should join our communication forums:\r\n<ul>\r\n 	<li>- Send up an email at <u><a class=\"black-text\" href=\"mailto:pluginthefuture@gmail.com\">pluginthefuture@gmail.com</a></u></li>\r\n 	<li>- Join our <u><a class=\"black-text\" href=\"https://plazza.orange.com/groups/lucy-user-group\" target=\"_blank\" rel=\"noopener noreferrer\">Plazza User Group</a></u> and our main <u><a class=\"black-text\" href=\"https://plazza.orange.com/groups/lucy\" target=\"_blank\" rel=\"noopener noreferrer\">Plazza</a></u> group.</li>\r\n 	<li>- Subscribe to our Orange <u><a class=\"black-text\" href=\"https://mattermost.forge.orange-labs.fr/lucy/\" target=\"_blank\" rel=\"noopener noreferrer\">Mattermost</a></u> channels.</li>\r\n 	<li>- Subscribe to our <u><a class=\"black-text\" href=\"https://lucyplatform.slack.com/\" target=\"_blank\" rel=\"noopener noreferrer\">Slack</a></u> channel (why slack? because it is accessible everywere, intented for external members)</li>\r\n</ul>', 'How can I help?', '', 'publish', 'closed', 'closed', '', 'how-can-i-help', '', '', '2019-09-15 18:20:20', '2019-09-15 18:20:20', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=contributer&#038;p=55', 0, 'contributer', '', 0),
(56, 1, '2019-09-15 18:13:19', '2019-09-15 18:13:19', 'Read the Plug\'in documentation, which is intended for researchers, developers, operationals, etc. who are standing up experiments on top of Plug\'in. The documentation can be edited by cloning a git repository.\r\n\r\nIf you find problems with content on the Plug\'in documentation, log an issue against the correspondent atom project with the page that contains the bug. Hint: you can just dump useful text into a bug report, and the documentation team will format it and update the docs for you.\r\n\r\nCheck out how we work:\r\n<ul>\r\n 	<li>- Read the documentation to get started: <u><a class=\"black-text\" href=\"http://10.226.226.55/lucy/docs/\" target=\"_blank\" rel=\"noopener noreferrer\">here</a></u></li>\r\n 	<li>- How to raise issues: http://gitlab.forge.orange-labs.fr/lucy/&lt;<i>project name</i>&gt;/issues</li>\r\n 	<li>- Get the <u><a class=\"black-text\" href=\"http://gitlab.forge.orange-labs.fr/lucy\" target=\"_blank\" rel=\"noopener noreferrer\">code</a></u></li>\r\n</ul>\r\nGeneral:\r\n<ul>\r\n 	<li>- Use revision control (git) for the code base\r\n<ul>\r\n 	<li>o Prefer small commits to better track changes</li>\r\n 	<li>o Use tags for usable versions</li>\r\n 	<li>o Use branches when necessary (merge afterwards)</li>\r\n 	<li>o If available, use Gitlab on Orange forge (to prioritize CICD through Gitlab runners)</li>\r\n</ul>\r\n</li>\r\n 	<li>- Declare dependencies (explicitly)\r\n<ul>\r\n 	<li>o If your codebase is in Python, use a flat requirements.txt with module version, if nodejs use package.json (or similar)</li>\r\n</ul>\r\n</li>\r\n 	<li>- For infrastructure, it should be reproducible with a file:\r\n<ul>\r\n 	<li>o Vagrantfile, Dockerfile, Makefile</li>\r\n 	<li>o Declare all the necessary packages: .debs, .rpms, .tars, gits… in the provisioning phase of your infrastructure</li>\r\n</ul>\r\n</li>\r\n 	<li>- Configuration should be *at least* available through: defaults, file, environment. One should add the possibility of datastores such as etcd or consul</li>\r\n 	<li>- The use of backends (databases, authentication services (keystone), remote logging) should be configurable\r\n<ul>\r\n 	<li>o Specify the URL or IP in one of the configuration files, with possibility of change through environment variables</li>\r\n 	<li>o Handle the case where these services are unavailable through meaningful error messages and coherent trials/grace periods (for examples, ping the service 5 times with an exponential delay, and exit with an appropriate error message and code to signal that the service is unavailable)</li>\r\n</ul>\r\n</li>\r\n 	<li>- Write tests for your code\r\n<ul>\r\n 	<li>o No code coverage is specified but important portions should be tested. Important is at the developer’s discretion</li>\r\n 	<li>o These tests should be the basis of CICD integration/regression tests</li>\r\n</ul>\r\n</li>\r\n 	<li>- Open port numbers should be configurable\r\n<ul>\r\n 	<li>o If not possible through the app itself, the option should be given through the delivered infrastructure code (Vagrantfile, Makefile, Dockerfile)</li>\r\n</ul>\r\n</li>\r\n 	<li>- Logging should be handled with the importance it requires\r\n<ul>\r\n 	<li>o Take into account the possibility of external logging services (ELK, other logging as a service); i.e. one possible production-grade configuration is to provide the infrastructure with a log shipper such as filebeat or logstash</li>\r\n</ul>\r\n</li>\r\n 	<li>- Document your APIs in the appropriate formats\r\n<ul>\r\n 	<li>o <strong>OpenAPI</strong> (former Swagger) for Rest HTTP APIs (.json, .yaml, or interactive with swagger-ui)</li>\r\n 	<li>o Readthedocs/apidoc/doxygen/godoc… for other API documentation (at the discretion of the developer)</li>\r\n</ul>\r\n</li>\r\n</ul>\r\nPlug\'in specific:\r\n<ul>\r\n 	<li>- Locate the documentation under ‘/docs’ and ‘README.md’ at the root of your git repo\r\n<ul>\r\n 	<li>o Documentation is done in separate ‘.md’ files (https://docs.gitlab.com/ee/user/markdown.html) that we later export to static html files</li>\r\n</ul>\r\n</li>\r\n 	<li>- A ‘metadata.json’ file should also be located in the root of the git repo\r\n<ul>\r\n 	<li>o no specification yet for this file yet (work in progress). Only include ‘{}’ in the file for the moment</li>\r\n</ul>\r\n</li>\r\n 	<li>- Recommendations for the rest of the automated (Atom -- Atomdocs, Atomstore) conversion process in ongoing</li>\r\n</ul>\r\nThe above recommendations ensure future compatibility with our platform and better reusability of computer science and engineering based research', 'Atom development', '', 'publish', 'closed', 'closed', '', 'atom-development', '', '', '2019-09-15 18:13:19', '2019-09-15 18:13:19', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=contributer&#038;p=56', 0, 'contributer', '', 0),
(57, 1, '2019-09-15 18:13:41', '2019-09-15 18:13:41', 'The toolbox is a simple and easy way to get started with many technologies. It offers an all-in-one environments to play, learn, develop, etc. You have an idea of a new lab? That\'s great, submit your proposal to one of the communication channels for open discussion.\r\n\r\n', 'Toolbox development', '', 'publish', 'closed', 'closed', '', 'toolbox-development', '', '', '2019-09-15 18:13:41', '2019-09-15 18:13:41', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=contributer&#038;p=57', 0, 'contributer', '', 0),
(58, 1, '2019-09-15 18:13:59', '2019-09-15 18:13:59', 'The first area where you can help is bug fixing. Bugs may be any thing (from a spelling mistake to a broken code). You can contribute instructions on how to fix a given bug or you can directly fix it: branch the code, implement the fix, and propose your change for merging into trunk !\r\n\r\n', 'Bug fixing', '', 'publish', 'closed', 'closed', '', 'bug-fixing', '', '', '2019-09-15 18:13:59', '2019-09-15 18:13:59', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=contributer&#038;p=58', 0, 'contributer', '', 0),
(59, 1, '2019-09-15 18:14:18', '2019-09-15 18:14:18', 'Maintaining good code quality is a never-ending effort that is shared across the development team. There are several always-ongoing efforts that need your help, for example: increasing comments in code, reducing recommendation violations, increasing code coverage. Those are usually nice ways to get involved in development: easy changes that will let you touch various areas of Plug\'in code, and gain respect from your peers. :) It might be also a good idea to check the results of the continuous code quality and test coverage monitoring described here.\r\n\r\nYou can also try some gardening of the docs.', 'Housekeeping', '', 'publish', 'closed', 'closed', '', 'housekeeping', '', '', '2019-09-15 18:14:18', '2019-09-15 18:14:18', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=contributer&#038;p=59', 0, 'contributer', '', 0),
(60, 1, '2019-09-15 18:14:42', '2019-09-15 18:14:42', 'Every patch submitted to Plug\'in gets reviewed before it can be approved and merged.\r\n\r\nCheck the FAQ and the Plug\'in User Group if you have questions\r\n\r\nIf you\'re a tester, we need your help in making sure Plug\'in components behave correctly. Feel free to report any issue.\r\n\r\nIf you\'re into security, we\'d love your help. A security working group should be established soon.\r\n\r\nIf you\'re into doc, we\'d love your help. You can contribute to the Plug\'in AtomDocs project, or general documentation on the forge.\r\n\r\nTo fix a documentation bug, go to the correspondent project in the Gitlab repo, raise an issue or clone the project, apply your modifications and make a pull request. You can also start by reading the AtomDocs which is created using MkDocs as part of the code in the /docs/ directory and published to Plug\'in web portal.\r\n\r\nIf you\'re a designer or usability professional, help shape the UX. You can contribute in many different ways to the User Experience of Plug\'in. Whether it\'s reviewing current features as a user and giving feedback, designing new features, testing designs or features with users, or helping to build use cases and requirements, we\'d love to have your help in the UX group! (TBD).\r\n\r\nIs there something missing? If you need further guidance about how to contribute or if you are having trouble getting started, send a direct mail to the Plug\'in project driver.', 'Reviewing, Testing, and much more', '', 'publish', 'closed', 'closed', '', 'reviewing-testing-and-much-more', '', '', '2019-09-15 18:19:44', '2019-09-15 18:19:44', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=contributer&#038;p=60', 0, 'contributer', '', 0),
(61, 1, '2019-09-15 18:31:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-15 18:31:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=faq&p=61', 0, 'faq', '', 0),
(62, 1, '2019-09-15 18:32:51', '2019-09-15 18:32:51', 'The Jenkins used by Plug\'in is that of Faa <a href=\"http://test the link\">http://test the link</a>', 'What projects are meant to go on Plug\'in?', '', 'publish', 'closed', 'closed', '', 'what-projects-are-meant-to-go-on-plugin', '', '', '2019-09-17 11:06:46', '2019-09-17 11:06:46', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=faq&#038;p=62', 0, 'faq', '', 0),
(63, 1, '2019-09-15 18:33:13', '2019-09-15 18:33:13', 'The Jenkins used by Plug\'in is that of Faa <a href=\"http://test the link\">http://test the link</a>', 'Why using new concepts (i.e. Atom?)', '', 'publish', 'closed', 'closed', '', 'why-using-new-concepts-i-e-atom', '', '', '2019-09-17 11:06:40', '2019-09-17 11:06:40', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=faq&#038;p=63', 0, 'faq', '', 0),
(64, 1, '2019-09-15 18:33:30', '2019-09-15 18:33:30', 'The Jenkins used by Plug\'in is that of Faa <a href=\"http://test the link\">http://test the link</a>', 'What is the lifetime of an Atom?', '', 'publish', 'closed', 'closed', '', 'what-is-the-lifetime-of-an-atom', '', '', '2019-09-17 11:06:32', '2019-09-17 11:06:32', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=faq&#038;p=64', 0, 'faq', '', 0),
(65, 1, '2019-09-15 18:33:48', '2019-09-15 18:33:48', 'The Jenkins used by Plug\'in is that of Faa <a href=\"http://test the link\">http://test the link</a>', 'Does Plug\'in deal with the administration of 5G?', '', 'publish', 'closed', 'closed', '', 'does-plugin-deal-with-the-administration-of-5g', '', '', '2019-09-17 11:06:27', '2019-09-17 11:06:27', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=faq&#038;p=65', 0, 'faq', '', 0),
(66, 1, '2019-09-15 18:34:04', '2019-09-15 18:34:04', 'The Jenkins used by Plug\'in is that of Faa <a href=\"http://test the link\">http://test the link</a>', 'Does Plug\'in integrates or makes available tools ?', '', 'publish', 'closed', 'closed', '', 'does-plugin-integrates-or-makes-available-tools', '', '', '2019-09-17 11:06:18', '2019-09-17 11:06:18', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=faq&#038;p=66', 0, 'faq', '', 0),
(67, 1, '2019-09-15 18:34:28', '2019-09-15 18:34:28', 'The Jenkins used by Plug\'in is that of Faa <a href=\"http://test the link\">http://test the link</a>', 'How do we position ourselves in relation to Orange Partners?', '', 'publish', 'closed', 'closed', '', 'how-do-we-position-ourselves-in-relation-to-orange-partners', '', '', '2019-09-17 11:06:12', '2019-09-17 11:06:12', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=faq&#038;p=67', 0, 'faq', '', 0),
(68, 1, '2019-09-15 18:34:59', '2019-09-15 18:34:59', '<div class=\"collapsible-body\">\r\n\r\nThe Jenkins used by Plug\'in is that of Faa <a href=\"http://test the link\">http://test the link</a>\r\n\r\n</div>', 'What is the difference between a PaaS (ex. OpenShift) and Plug\'in ?', '', 'publish', 'closed', 'closed', '', 'what-is-the-difference-between-a-paas-ex-openshift-and-plugin', '', '', '2019-09-17 11:06:05', '2019-09-17 11:06:05', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=faq&#038;p=68', 0, 'faq', '', 0),
(69, 1, '2019-09-15 18:35:34', '2019-09-15 18:35:34', '<div class=\"collapsible-body\">\r\n\r\nThe Jenkins used by Plug\'in is that of Faa <a href=\"http://test the link\">http://test the link</a>\r\n\r\n</div>', 'Why not using a PaaS solution such as OpenShift or CloudFoundry ?', '', 'publish', 'closed', 'closed', '', 'why-not-using-a-paas-solution-such-as-openshift-or-cloudfoundry', '', '', '2019-09-17 11:05:57', '2019-09-17 11:05:57', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=faq&#038;p=69', 0, 'faq', '', 0),
(70, 1, '2019-09-15 18:35:55', '2019-09-15 18:35:55', 'The Jenkins used by Plug\'in is that of Faa <a href=\"http://test the link\">http://test the link</a>', 'What is the difference between the integrations on top Plug\'in and those on top of Integration Center (ODN)?', '', 'publish', 'closed', 'closed', '', 'what-is-the-difference-between-the-integrations-on-top-plugin-and-those-on-top-of-integration-center-odn', '', '', '2019-09-17 11:05:52', '2019-09-17 11:05:52', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=faq&#038;p=70', 0, 'faq', '', 0),
(71, 1, '2019-09-15 18:36:26', '2019-09-15 18:36:26', 'The Jenkins used by Plug\'in is that of Faa http://test the link', 'What interaction between Plug\'in and standardization?', '', 'publish', 'closed', 'closed', '', 'what-interaction-between-plugin-and-standardization', '', '', '2019-09-17 11:05:46', '2019-09-17 11:05:46', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=faq&#038;p=71', 0, 'faq', '', 0),
(72, 1, '2019-09-15 18:37:11', '2019-09-15 18:37:11', '<div class=\"collapsible-body\">\r\n\r\nThe Jenkins used by Plug\'in is that of Faa <a href=\"http://test the link\">http://test the link</a>\r\n\r\n</div>', 'Why not put everything on an open portal to all?', '', 'publish', 'closed', 'closed', '', 'why-not-put-everything-on-an-open-portal-to-all', '', '', '2019-09-17 11:05:42', '2019-09-17 11:05:42', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=faq&#038;p=72', 0, 'faq', '', 0),
(73, 1, '2019-09-15 18:37:31', '2019-09-15 18:37:31', 'The Jenkins used by Plug\'in is that of Faa <a href=\"http://test the link\">http://test the link</a>', 'Will it be opened on the Internet?', '', 'publish', 'closed', 'closed', '', 'will-it-be-opened-on-the-internet', '', '', '2019-09-17 11:05:35', '2019-09-17 11:05:35', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=faq&#038;p=73', 0, 'faq', '', 0),
(74, 1, '2019-09-15 18:37:49', '2019-09-15 18:37:49', 'The Jenkins used by Plug\'in is that of Faa <a href=\"http://test the link\">http://test the link</a>', 'How do you open this solution to third parties?', '', 'publish', 'closed', 'closed', '', 'how-do-you-open-this-solution-to-third-parties', '', '', '2019-09-17 11:05:29', '2019-09-17 11:05:29', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=faq&#038;p=74', 0, 'faq', '', 0),
(75, 1, '2019-09-15 18:38:12', '2019-09-15 18:38:12', '<div class=\"collapsible-body\">\r\n\r\nThe Jenkins used by Plug\'in is that of Faa <a href=\"http://test the link\">http://test the link</a>\r\n\r\n</div>', 'Can we integrate proprietary developments?', '', 'publish', 'closed', 'closed', '', 'can-we-integrate-proprietary-developments', '', '', '2019-09-17 11:05:18', '2019-09-17 11:05:18', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=faq&#038;p=75', 0, 'faq', '', 0),
(76, 1, '2019-09-15 18:38:44', '2019-09-15 18:38:44', '<div class=\"collapsible-body\">\r\n\r\nThe Jenkins used by Plug\'in is that of Faa <a href=\"http://test the link\">http://test the link</a>\r\n\r\n</div>', 'I use the Git of Orange Forge but not the GitLab?', '', 'publish', 'closed', 'closed', '', 'i-use-the-git-of-orange-forge-but-not-the-gitlab', '', '', '2019-09-17 11:04:48', '2019-09-17 11:04:48', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=faq&#038;p=76', 0, 'faq', '', 0),
(77, 1, '2019-09-15 18:39:05', '2019-09-15 18:39:05', 'The Jenkins used by Plug\'in is that of Faa <a href=\"http://test the link\">http://test the link</a>', 'Does Plug\'in actually put tools at your disposal?', '', 'publish', 'closed', 'closed', '', 'does-plugin-actually-put-tools-at-your-disposal', '', '', '2019-09-17 11:08:28', '2019-09-17 11:08:28', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=faq&#038;p=77', 0, 'faq', '', 0),
(78, 1, '2019-09-15 18:39:34', '2019-09-15 18:39:34', 'The Jenkins used by Plug\'in is that of Faa <a href=\"http://test the link\">http://test the link</a>', 'I use a Jenkins instance from the Forge. Is there another Jenkins on Plug\'in?', '', 'publish', 'closed', 'closed', '', 'i-use-a-jenkins-instance-from-the-forge-is-there-another-jenkins-on-plugin', '', '', '2019-09-17 11:03:43', '2019-09-17 11:03:43', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=faq&#038;p=78', 0, 'faq', '', 0),
(79, 1, '2019-09-17 11:02:34', '2019-09-17 11:02:34', 'The Jenkins used by Plug\'in is that of Faa <a href=\"http://test the link\">http://test the link</a>', 'I use a Jenkins instance from the Forge. Is there another Jenkins on Plug\'in?', '', 'inherit', 'closed', 'closed', '', '78-autosave-v1', '', '', '2019-09-17 11:02:34', '2019-09-17 11:02:34', '', 78, 'http://localhost/workspace/portal-master-project/index.php/2019/09/17/78-autosave-v1/', 0, 'revision', '', 0),
(80, 1, '2019-09-17 11:08:11', '2019-09-17 11:08:11', '<div class=\"collapsible-body\">\n\nThe Jenkins used by Plug\'in is that of Faa <a href=\"http://test the link\">http://test the link</a>\n\n</div>', 'Does Plug\'in actually put tools at your disposal?', '', 'inherit', 'closed', 'closed', '', '77-autosave-v1', '', '', '2019-09-17 11:08:11', '2019-09-17 11:08:11', '', 77, 'http://localhost/workspace/portal-master-project/index.php/2019/09/17/77-autosave-v1/', 0, 'revision', '', 0),
(81, 1, '2019-09-17 11:46:42', '2019-09-17 11:46:42', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:27:\"atoms-per-name-template.php\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:31:\"atoms-per-category-template.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Atoms', 'atoms', 'publish', 'closed', 'closed', '', 'group_5d80c78b29920', '', '', '2019-09-17 12:46:46', '2019-09-17 12:46:46', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=acf-field-group&#038;p=81', 0, 'acf-field-group', '', 0),
(82, 1, '2019-09-17 11:46:42', '2019-09-17 11:46:42', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'url', 'url', 'publish', 'closed', 'closed', '', 'field_5d80c7932a188', '', '', '2019-09-17 11:47:50', '2019-09-17 11:47:50', '', 81, 'http://localhost/workspace/portal-master-project/?post_type=acf-field&#038;p=82', 0, 'acf-field', '', 0),
(83, 1, '2019-09-17 11:53:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-17 11:53:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/workspace/portal-master-project/?post_type=acf-field-group&p=83', 0, 'acf-field-group', '', 0),
(84, 1, '2019-09-17 12:30:21', '2019-09-17 12:30:21', '', 'flare_names', '', 'inherit', 'open', 'closed', '', 'flare_names', '', '', '2019-09-17 12:30:21', '2019-09-17 12:30:21', '', 26, 'http://localhost/workspace/portal-master-project/wp-content/uploads/2019/09/flare_names.json', 0, 'attachment', 'application/json', 0),
(85, 1, '2019-09-17 12:33:31', '2019-09-17 12:33:31', '', 'Atoms Per Name', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-09-17 12:33:31', '2019-09-17 12:33:31', '', 26, 'http://localhost/workspace/portal-master-project/index.php/2019/09/17/26-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-09-17 15:48:30', '2019-09-17 15:48:30', '', 'lucy-logo-85', '', 'inherit', 'open', 'closed', '', 'lucy-logo-85', '', '', '2019-09-17 15:48:30', '2019-09-17 15:48:30', '', 0, 'http://localhost/workspace/portal-master-project/wp-content/uploads/2019/09/lucy-logo-85.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(88, 1, '2019-09-17 17:01:19', '2019-09-17 17:01:19', '', 'flare_categories', '', 'inherit', 'open', 'closed', '', 'flare_categories', '', '', '2019-09-17 17:01:19', '2019-09-17 17:01:19', '', 24, 'http://localhost/workspace/portal-master-project/wp-content/uploads/2019/09/flare_categories.json', 0, 'attachment', 'application/json', 0),
(89, 1, '2019-09-17 17:01:24', '2019-09-17 17:01:24', '', 'Atoms Per Category', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-09-17 17:01:24', '2019-09-17 17:01:24', '', 24, 'http://localhost/workspace/portal-master-project/index.php/2019/09/17/24-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2019-09-19 09:33:10', '2019-09-19 09:33:10', ' ', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2019-09-19 09:33:19', '2019-09-19 09:33:19', '', 0, 'http://localhost/workspace/portal-master-project/?p=90', 2, 'nav_menu_item', '', 0),
(91, 1, '2019-09-19 09:33:11', '2019-09-19 09:33:11', '', 'Documentation', '', 'publish', 'closed', 'closed', '', 'documentation-2', '', '', '2019-09-19 09:33:19', '2019-09-19 09:33:19', '', 0, 'http://localhost/workspace/portal-master-project/?p=91', 1, 'nav_menu_item', '', 0),
(92, 1, '2019-09-19 09:38:34', '2019-09-19 09:38:34', '', 'Terms Of Use', '', 'publish', 'closed', 'closed', '', 'terms-of-use', '', '', '2019-09-19 09:38:46', '2019-09-19 09:38:46', '', 0, 'http://localhost/workspace/portal-master-project/?p=92', 1, 'nav_menu_item', '', 0),
(93, 1, '2019-09-19 09:38:34', '2019-09-19 09:38:34', '', 'Contributor Terms and Conditions', '', 'publish', 'closed', 'closed', '', 'contributor-terms-and-conditions', '', '', '2019-09-19 09:38:46', '2019-09-19 09:38:46', '', 0, 'http://localhost/workspace/portal-master-project/?p=93', 2, 'nav_menu_item', '', 0),
(94, 1, '2019-09-19 09:38:27', '2019-09-19 09:38:27', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/workspace/portal-master-project.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-09-19 09:38:27', '2019-09-19 09:38:27', '', 3, 'http://localhost/workspace/portal-master-project/index.php/2019/09/19/3-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2019-09-19 09:38:46', '2019-09-19 09:38:46', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2019-09-19 09:38:46', '2019-09-19 09:38:46', '', 0, 'http://localhost/workspace/portal-master-project/?p=95', 3, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'General', 'general', 0),
(4, 'Related Work', 'related-work', 0),
(5, 'Open Source', 'open-source', 0),
(6, 'DevOps', 'devops', 0),
(7, 'Read The Docs', 'read-the-docs', 0),
(8, 'Legal Notice', 'legal-notice', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(10, 2, 0),
(11, 2, 0),
(12, 2, 0),
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(62, 3, 0),
(63, 3, 0),
(64, 3, 0),
(65, 3, 0),
(66, 3, 0),
(67, 4, 0),
(68, 4, 0),
(69, 4, 0),
(70, 4, 0),
(71, 4, 0),
(72, 5, 0),
(73, 5, 0),
(74, 5, 0),
(75, 5, 0),
(76, 6, 0),
(77, 6, 0),
(78, 6, 0),
(90, 7, 0),
(91, 7, 0),
(92, 8, 0),
(93, 8, 0),
(95, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 13),
(3, 3, 'category', '', 0, 5),
(4, 4, 'category', '', 0, 5),
(5, 5, 'category', '', 0, 4),
(6, 6, 'category', '', 0, 3),
(7, 7, 'nav_menu', '', 0, 2),
(8, 8, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'session_tokens', 'a:1:{s:64:\"533d5de53abdf6fe285176eb851d4fb408b6204cfc7a36ea2c1f3104fcad51ad\";a:4:{s:10:\"expiration\";i:1568911466;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36\";s:5:\"login\";i:1568738666;}}'),
(22, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1568735254'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'closedpostboxes_contributer', 'a:1:{i:0;s:12:\"postimagediv\";}'),
(26, 1, 'metaboxhidden_contributer', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(27, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:17:\"dashboard_primary\";}'),
(28, 1, 'metaboxhidden_dashboard', 'a:3:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:17:\"dashboard_primary\";}'),
(29, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:60:\"dashboard_right_now,dashboard_activity,dashboard_quick_press\";s:4:\"side\";s:17:\"dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B1sJU7BbyxvTa7p0OqzsBJeUXM9Lob/', 'admin', 'ahmedkh.elaraby@gmail.com', '', '2019-09-15 13:12:37', '', 0, 'admin');

--
-- Indexes for dumped tables
--

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
