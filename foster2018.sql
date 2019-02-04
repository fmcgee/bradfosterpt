-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 02, 2018 at 03:07 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foster2018`
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
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-01-21 12:32:08', '2018-01-21 12:32:08', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

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
(1, 'siteurl', 'http://bradfosterpt.uk', 'yes'),
(2, 'home', 'http://bradfosterpt.uk', 'yes'),
(3, 'blogname', 'Brad Foster PT', 'yes'),
(4, 'blogdescription', 'Personal Trainer', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'fmcgee1974@googlemail.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:128:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:15:"testimonials/?$";s:31:"index.php?post_type=testimonial";s:45:"testimonials/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=testimonial&feed=$matches[1]";s:40:"testimonials/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=testimonial&feed=$matches[1]";s:32:"testimonials/page/([0-9]{1,})/?$";s:49:"index.php?post_type=testimonial&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:40:"testimonials/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"testimonials/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"testimonials/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"testimonials/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"testimonials/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"testimonials/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"testimonials/([^/]+)/embed/?$";s:44:"index.php?testimonial=$matches[1]&embed=true";s:33:"testimonials/([^/]+)/trackback/?$";s:38:"index.php?testimonial=$matches[1]&tb=1";s:53:"testimonials/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?testimonial=$matches[1]&feed=$matches[2]";s:48:"testimonials/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?testimonial=$matches[1]&feed=$matches[2]";s:41:"testimonials/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?testimonial=$matches[1]&paged=$matches[2]";s:48:"testimonials/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?testimonial=$matches[1]&cpage=$matches[2]";s:37:"testimonials/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?testimonial=$matches[1]&page=$matches[2]";s:29:"testimonials/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"testimonials/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"testimonials/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"testimonials/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"testimonials/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"testimonials/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:47:"testimonial_rotator/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"testimonial_rotator/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"testimonial_rotator/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"testimonial_rotator/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"testimonial_rotator/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"testimonial_rotator/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"testimonial_rotator/([^/]+)/embed/?$";s:52:"index.php?testimonial_rotator=$matches[1]&embed=true";s:40:"testimonial_rotator/([^/]+)/trackback/?$";s:46:"index.php?testimonial_rotator=$matches[1]&tb=1";s:48:"testimonial_rotator/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?testimonial_rotator=$matches[1]&paged=$matches[2]";s:55:"testimonial_rotator/([^/]+)/comment-page-([0-9]{1,})/?$";s:59:"index.php?testimonial_rotator=$matches[1]&cpage=$matches[2]";s:44:"testimonial_rotator/([^/]+)(?:/([0-9]+))?/?$";s:58:"index.php?testimonial_rotator=$matches[1]&page=$matches[2]";s:36:"testimonial_rotator/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"testimonial_rotator/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"testimonial_rotator/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"testimonial_rotator/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"testimonial_rotator/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"testimonial_rotator/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:25:"fancy-image-box/fancy.php";i:1;s:27:"pretty-link/pretty-link.php";i:2;s:43:"testimonial-rotator/testimonial-rotator.php";i:3;s:46:"under-construction-page/under-construction.php";i:4;s:21:"wp-tiles/wp-tiles.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'sydney', 'yes'),
(41, 'stylesheet', 'sydney-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:46:"under-construction-page/under-construction.php";a:2:{i:0;s:3:"UCP";i:1;s:9:"uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '4', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"footer-1";a:1:{i:0;s:13:"custom_html-3";}s:8:"footer-2";a:1:{i:0;s:13:"custom_html-2";}s:8:"footer-3";a:1:{i:0;s:13:"custom_html-4";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:4:{i:2;a:2:{s:5:"title";s:0:"";s:7:"content";s:142:"<a href="http://bradfosterpt.uk/mqtl"><img src="http://bradfosterpt.uk/wp-content/uploads/2018/01/five-veges-that-kill-stomack-fat.jpg"></a>\r\n";}i:3;a:2:{s:5:"title";s:0:"";s:7:"content";s:101:"<p><img class="foot-log" src="http://bradfosterpt.uk/wp-content/uploads/2018/01/logo-footer.png"></p>";}i:4;a:2:{s:5:"title";s:0:"";s:7:"content";s:120:"<a href="http://bradfosterpt.uk/lr2q"><img src="http://bradfosterpt.uk/wp-content/uploads/2018/01/bell-fat-tip.gif"></a>";}s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:5:{i:1517579726;a:1:{s:33:"prli_cleanup_visitor_locks_worker";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:35:"prli_cleanup_visitor_locks_interval";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1517617929;a:3:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1517661144;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1517661394;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1516538184;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(123, 'can_compress_scripts', '0', 'no'),
(138, 'recently_activated', 'a:0:{}', 'yes'),
(141, 'ucp_pointers', 'a:0:{}', 'yes'),
(142, 'ucp_meta', 'a:3:{s:13:"first_version";s:4:"2.80";s:13:"first_install";i:1516538129;s:11:"options_ver";s:4:"2.80";}', 'yes'),
(143, 'ucp_options', 'a:29:{s:6:"status";i:0;s:8:"end_date";s:0:"";s:14:"ga_tracking_id";s:0:"";s:5:"theme";s:12:"mad_designer";s:10:"custom_css";s:0:"";s:5:"title";s:34:"[site-title] is under construction";s:11:"description";s:14:"[site-tagline]";s:8:"heading1";s:40:"Sorry, we\'re doing some work on the site";s:7:"content";s:89:"Thank you for being patient. We are doing some work on the site and will be back shortly.";s:15:"social_facebook";s:0:"";s:14:"social_twitter";s:0:"";s:13:"social_google";s:0:"";s:15:"social_linkedin";s:0:"";s:14:"social_youtube";s:0:"";s:12:"social_vimeo";s:0:"";s:16:"social_pinterest";s:0:"";s:15:"social_dribbble";s:0:"";s:14:"social_behance";s:0:"";s:16:"social_instagram";s:0:"";s:13:"social_tumblr";s:0:"";s:12:"social_email";s:0:"";s:12:"social_phone";s:0:"";s:12:"social_skype";s:0:"";s:15:"social_telegram";s:0:"";s:15:"social_whatsapp";s:0:"";s:12:"login_button";s:1:"1";s:8:"linkback";i:0;s:17:"whitelisted_roles";a:1:{i:0;s:13:"administrator";}s:17:"whitelisted_users";a:0:{}}', 'yes'),
(145, 'ucp_notices', 'a:0:{}', 'yes'),
(148, 'current_theme', 'Brad foster theme', 'yes'),
(149, 'theme_mods_hestia', 'a:13:{i:0;b:0;s:30:"hestia_alternative_blog_layout";s:18:"blog_normal_layout";s:31:"hestia_alternative_footer_style";s:12:"black_footer";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:18:"custom_css_post_id";i:-1;s:18:"hestia_page_editor";s:0:"";s:24:"hestia_feature_thumbnail";s:0:"";s:27:"hestia_big_title_background";s:65:"http://bradfosterpt.uk/wp-content/uploads/2018/01/bradfoster1.jpg";s:22:"hestia_big_title_title";s:0:"";s:21:"hestia_big_title_text";s:0:"";s:28:"hestia_big_title_button_text";s:0:"";s:28:"hestia_big_title_button_link";s:0:"";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1516550499;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}}}}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(153, 'hestia_sync_checkboxes_to_radio_once', '1', 'yes'),
(154, 'hestia_install', '1516538186', 'yes'),
(155, '_transient_timeout_hestia_1159versions', '1519130186', 'no'),
(156, '_transient_hestia_1159versions', 'a:40:{i:0;a:2:{s:7:"version";s:5:"1.0.6";s:3:"url";s:54:"https://downloads.wordpress.org/theme/hestia.1.0.6.zip";}i:1;a:2:{s:7:"version";s:5:"1.0.8";s:3:"url";s:54:"https://downloads.wordpress.org/theme/hestia.1.0.8.zip";}i:2;a:2:{s:7:"version";s:6:"1.0.11";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.0.11.zip";}i:3;a:2:{s:7:"version";s:6:"1.0.12";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.0.12.zip";}i:4;a:2:{s:7:"version";s:6:"1.1.19";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.19.zip";}i:5;a:2:{s:7:"version";s:6:"1.1.20";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.20.zip";}i:6;a:2:{s:7:"version";s:6:"1.1.21";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.21.zip";}i:7;a:2:{s:7:"version";s:6:"1.1.22";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.22.zip";}i:8;a:2:{s:7:"version";s:6:"1.1.23";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.23.zip";}i:9;a:2:{s:7:"version";s:6:"1.1.24";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.24.zip";}i:10;a:2:{s:7:"version";s:6:"1.1.25";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.25.zip";}i:11;a:2:{s:7:"version";s:6:"1.1.28";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.28.zip";}i:12;a:2:{s:7:"version";s:6:"1.1.29";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.29.zip";}i:13;a:2:{s:7:"version";s:6:"1.1.30";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.30.zip";}i:14;a:2:{s:7:"version";s:6:"1.1.31";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.31.zip";}i:15;a:2:{s:7:"version";s:6:"1.1.32";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.32.zip";}i:16;a:2:{s:7:"version";s:6:"1.1.33";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.33.zip";}i:17;a:2:{s:7:"version";s:6:"1.1.36";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.36.zip";}i:18;a:2:{s:7:"version";s:6:"1.1.37";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.37.zip";}i:19;a:2:{s:7:"version";s:6:"1.1.38";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.38.zip";}i:20;a:2:{s:7:"version";s:6:"1.1.39";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.39.zip";}i:21;a:2:{s:7:"version";s:6:"1.1.40";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.40.zip";}i:22;a:2:{s:7:"version";s:6:"1.1.41";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.41.zip";}i:23;a:2:{s:7:"version";s:6:"1.1.42";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.42.zip";}i:24;a:2:{s:7:"version";s:6:"1.1.43";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.43.zip";}i:25;a:2:{s:7:"version";s:6:"1.1.44";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.44.zip";}i:26;a:2:{s:7:"version";s:6:"1.1.45";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.45.zip";}i:27;a:2:{s:7:"version";s:6:"1.1.46";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.46.zip";}i:28;a:2:{s:7:"version";s:6:"1.1.47";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.47.zip";}i:29;a:2:{s:7:"version";s:6:"1.1.48";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.48.zip";}i:30;a:2:{s:7:"version";s:6:"1.1.50";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.50.zip";}i:31;a:2:{s:7:"version";s:6:"1.1.51";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.51.zip";}i:32;a:2:{s:7:"version";s:6:"1.1.52";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.52.zip";}i:33;a:2:{s:7:"version";s:6:"1.1.53";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.53.zip";}i:34;a:2:{s:7:"version";s:6:"1.1.54";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.54.zip";}i:35;a:2:{s:7:"version";s:6:"1.1.55";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.55.zip";}i:36;a:2:{s:7:"version";s:6:"1.1.56";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.56.zip";}i:37;a:2:{s:7:"version";s:6:"1.1.57";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.57.zip";}i:38;a:2:{s:7:"version";s:6:"1.1.58";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.58.zip";}i:39;a:2:{s:7:"version";s:6:"1.1.59";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.59.zip";}}', 'no'),
(157, 'hestia_time_activated', '1516550499', 'yes'),
(158, 'hestia_had_elementor', 'no', 'yes'),
(174, 'hestia_sync_needed', '', 'yes'),
(180, 'theme_mods_hestia-child', 'a:19:{i:0;b:0;s:18:"hestia_page_editor";s:0:"";s:24:"hestia_feature_thumbnail";s:0:"";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:18:"custom_css_post_id";i:26;s:27:"hestia_big_title_background";s:65:"http://bradfosterpt.uk/wp-content/uploads/2018/01/bradfoster1.jpg";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1516627976;s:4:"data";a:10:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:17:"subscribe-widgets";a:0:{}s:22:"blog-subscribe-widgets";a:0:{}s:19:"sidebar-woocommerce";a:0:{}s:15:"sidebar-top-bar";a:0:{}s:14:"header-sidebar";a:0:{}s:18:"footer-one-widgets";a:0:{}s:18:"footer-two-widgets";a:0:{}s:20:"footer-three-widgets";a:0:{}}}s:19:"hestia_top_bar_hide";b:1;s:21:"hestia_search_in_menu";b:0;s:23:"hestia_header_alignment";s:6:"center";s:27:"hestia_enable_sharing_icons";b:1;s:27:"hestia_enable_scroll_to_top";b:1;s:11:"custom_logo";i:67;s:22:"hestia_big_title_title";s:11:"Brad Foster";s:21:"hestia_big_title_text";s:71:"Personal Trainer <br><span class="unlock"> Unlock Your Physique </span>";s:23:"hestia_slider_alignment";s:4:"left";s:28:"hestia_big_title_button_text";s:0:"";s:28:"hestia_big_title_button_link";s:0:"";s:16:"hestia_blog_hide";b:1;}', 'yes'),
(183, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(187, 'themeisle_customizer_notify_show_recommended_plugins', 'a:1:{s:19:"themeisle-companion";b:1;}', 'yes'),
(188, 'dismissed-hestia_info_woocommerce', '1', 'yes'),
(202, '_transient_ti_sdk_pause_hestia', '1', 'yes'),
(204, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1517576886;s:7:"checked";a:11:{s:6:"hestia";s:6:"1.1.59";s:12:"sydney-child";s:5:"1.0.0";s:6:"sydney";s:4:"1.43";s:12:"twentyeleven";s:3:"2.7";s:13:"twentyfifteen";s:3:"1.9";s:14:"twentyfourteen";s:3:"2.1";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";s:9:"twentyten";s:3:"2.4";s:14:"twentythirteen";s:3:"2.3";s:12:"twentytwelve";s:3:"2.4";}s:8:"response";a:1:{s:6:"hestia";a:4:{s:5:"theme";s:6:"hestia";s:11:"new_version";s:6:"1.1.62";s:3:"url";s:36:"https://wordpress.org/themes/hestia/";s:7:"package";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.62.zip";}}s:12:"translations";a:0:{}}', 'no'),
(206, 'theme_mods_sydney', 'a:17:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:18:"custom_css_post_id";i:126;s:9:"site_logo";s:65:"http://bradfosterpt.uk/wp-content/uploads/2018/01/logo-footer.png";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1516631900;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}}}s:17:"front_header_type";s:6:"slider";s:14:"slider_image_1";s:65:"http://bradfosterpt.uk/wp-content/uploads/2018/01/bradfoster1.jpg";s:14:"slider_image_2";s:65:"http://bradfosterpt.uk/wp-content/uploads/2018/01/bradfoster1.jpg";s:19:"wrapper_top_padding";i:0;s:11:"sticky_menu";s:6:"static";s:14:"slider_title_1";s:11:"BRAD FOSTER";s:17:"slider_subtitle_1";s:16:"Personal Trainer";s:14:"slider_title_2";s:20:"UNLOCK YOUR PHSYIQUE";s:17:"slider_subtitle_2";s:0:"";s:17:"slider_button_url";s:0:"";s:18:"slider_button_text";s:0:"";s:22:"wrapper_bottom_padding";i:10;}', 'yes'),
(211, 'theme_switched_via_customizer', '', 'yes'),
(212, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(233, 'wp_tiles', 'a:44:{s:20:"notice_tile_designer";N;s:21:"byline_effect_preview";s:1475:"        <div class="wp-tiles-container wp-tiles-tile-demo wp-tiles-loaded" id="tile-preview">\n\n            <div id="wp_tiles_1" class="wp-tiles-grid wp-tiles-byline-align-bottom">\n\n                <div class="wp-tiles-tile" id="tile-1">\n\n                    <a href="javascript:void(0)" title="Animation Demo">\n\n                        <article class="wp-tiles-tile-with-image wp-tiles-tile-wrapper" itemscope itemtype="http://schema.org/CreateWork">\n\n                            <div class="wp-tiles-tile-bg"></div>\n\n                            <div class="wp-tiles-byline">\n\n                                <h4 itemprop="name" class="wp-tiles-byline-title">Byline Preview</h4>\n\n                                <div class="wp-tiles-byline-content" itemprop="description">\n                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in...\n                                </div>\n\n                            </div>\n\n                        </article>\n\n                    </a>\n                </div>\n\n            </div>\n\n        </div>\n        <style>\n            #tile-preview .wp-tiles-byline {\n                background: rgba( 0,0,0,0.7 );\n                height: 40%;\n                            }\n        </style>\n        ";s:12:"byline_color";s:7:"#000000";s:14:"byline_opacity";s:3:"0.7";s:18:"byline_height_auto";b:0;s:13:"byline_height";i:40;s:13:"byline_effect";s:4:"none";s:12:"byline_align";s:6:"bottom";s:12:"image_effect";s:4:"none";s:16:"image_text_color";b:0;s:10:"text_color";b:0;s:13:"legacy_styles";b:0;s:12:"notice_grids";N;s:12:"default_grid";i:91;s:20:"small_screen_enabled";s:1:"1";s:17:"small_screen_grid";i:91;s:10:"breakpoint";i:800;s:7:"padding";i:5;s:10:"pagination";s:4:"ajax";s:19:"grid_selector_color";s:7:"#444444";s:12:"notice_girds";N;s:7:"color_1";s:7:"#009999";s:7:"color_2";s:7:"#1D7373";s:7:"color_3";s:7:"#006363";s:7:"color_4";s:7:"#33CCCC";s:7:"color_5";s:7:"#5CCCCC";s:18:"background_opacity";i:1;s:8:"animated";b:1;s:12:"animate_init";b:0;s:14:"animate_resize";b:0;s:16:"animate_template";b:1;s:9:"text_only";b:0;s:11:"images_only";b:0;s:4:"link";s:4:"post";s:15:"link_new_window";b:0;s:15:"byline_template";s:12:"%categories%";s:22:"notice_byline_template";N;s:20:"byline_for_text_only";b:0;s:24:"byline_template_textonly";b:0;s:10:"hide_title";b:0;s:10:"image_size";s:5:"large";s:12:"image_source";s:3:"all";s:19:"notice_image_source";N;s:0:"";N;}', 'yes'),
(234, 'wp-tiles-options', 'legacy', 'yes'),
(237, 'widget_testimonialrotatorwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(271, 'theme_mods_sydney-child', 'a:16:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:18:"custom_css_post_id";i:154;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1516631872;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}}}s:9:"site_logo";s:65:"http://bradfosterpt.uk/wp-content/uploads/2018/01/logo-footer.png";s:19:"wrapper_top_padding";i:0;s:22:"wrapper_bottom_padding";i:10;s:14:"slider_image_1";s:65:"http://bradfosterpt.uk/wp-content/uploads/2018/01/bradfoster1.jpg";s:14:"slider_image_2";s:65:"http://bradfosterpt.uk/wp-content/uploads/2018/01/bradfoster1.jpg";s:14:"slider_title_1";s:11:"BRAD FOSTER";s:17:"slider_subtitle_1";s:16:"Personal trainer";s:14:"slider_title_2";s:20:"UNLOCK YOUR PHYSIQUE";s:17:"slider_subtitle_2";s:0:"";s:17:"slider_button_url";s:0:"";s:18:"slider_button_text";s:0:"";s:11:"sticky_menu";s:6:"static";}', 'yes'),
(283, 'prli_options', 'a:24:{s:16:"prli_exclude_ips";s:0:"";s:13:"whitelist_ips";s:0:"";s:13:"filter_robots";i:0;s:17:"extended_tracking";s:6:"normal";s:19:"prettybar_image_url";s:82:"http://bradfosterpt.uk/wp-content/plugins/pretty-link/images/pretty-link-48x48.png";s:30:"prettybar_background_image_url";s:79:"http://bradfosterpt.uk/wp-content/plugins/pretty-link/images/bar_background.png";s:15:"prettybar_color";s:0:"";s:20:"prettybar_text_color";s:6:"000000";s:20:"prettybar_link_color";s:6:"0000ee";s:21:"prettybar_hover_color";s:6:"ababab";s:23:"prettybar_visited_color";s:6:"551a8b";s:20:"prettybar_show_title";s:1:"1";s:26:"prettybar_show_description";s:1:"1";s:26:"prettybar_show_share_links";s:1:"1";s:30:"prettybar_show_target_url_link";s:1:"1";s:21:"prettybar_title_limit";s:2:"25";s:20:"prettybar_desc_limit";s:2:"30";s:20:"prettybar_link_limit";s:2:"30";s:18:"link_redirect_type";s:3:"307";s:11:"link_prefix";i:0;s:16:"auto_trim_clicks";i:0;s:13:"link_track_me";s:1:"1";s:13:"link_nofollow";s:1:"1";s:16:"bookmarklet_auth";s:32:"aaf2174c5d5008ad275847b7c8fe7e58";}', 'yes'),
(284, 'prli_db_version', '18', 'yes'),
(293, '_site_transient_sydney-welcome', 'forever', 'no'),
(296, '_transient_is_multi_author', '0', 'yes'),
(309, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:25:"fmcgee1974@googlemail.com";s:7:"version";s:15:"5.0-alpha-42606";s:9:"timestamp";i:1516862241;}', 'no'),
(338, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:11:"development";s:8:"download";s:57:"https://wordpress.org/nightly-builds/wordpress-latest.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://wordpress.org/nightly-builds/wordpress-latest.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:15:"5.0-alpha-42637";s:7:"version";s:15:"5.0-alpha-42637";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.2";s:7:"version";s:5:"4.9.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:57:"https://wordpress.org/nightly-builds/wordpress-latest.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://wordpress.org/nightly-builds/wordpress-latest.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:15:"5.0-alpha-42637";s:7:"version";s:15:"5.0-alpha-42637";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1517576886;s:15:"version_checked";s:15:"5.0-alpha-42606";s:12:"translations";a:0:{}}', 'no'),
(339, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1517576885;s:8:"response";a:1:{s:27:"pretty-link/pretty-link.php";O:8:"stdClass":11:{s:2:"id";s:25:"w.org/plugins/pretty-link";s:4:"slug";s:11:"pretty-link";s:6:"plugin";s:27:"pretty-link/pretty-link.php";s:11:"new_version";s:5:"2.1.4";s:3:"url";s:42:"https://wordpress.org/plugins/pretty-link/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/pretty-link.2.1.4.zip";s:5:"icons";a:3:{s:2:"1x";s:64:"https://ps.w.org/pretty-link/assets/icon-128x128.png?rev=1722958";s:2:"2x";s:64:"https://ps.w.org/pretty-link/assets/icon-256x256.png?rev=1722956";s:7:"default";s:64:"https://ps.w.org/pretty-link/assets/icon-256x256.png?rev=1722956";}s:7:"banners";a:3:{s:2:"2x";s:67:"https://ps.w.org/pretty-link/assets/banner-1544x500.png?rev=1722956";s:2:"1x";s:66:"https://ps.w.org/pretty-link/assets/banner-772x250.png?rev=1722928";s:7:"default";s:67:"https://ps.w.org/pretty-link/assets/banner-1544x500.png?rev=1722956";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.2";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:43:"testimonial-rotator/testimonial-rotator.php";O:8:"stdClass":9:{s:2:"id";s:33:"w.org/plugins/testimonial-rotator";s:4:"slug";s:19:"testimonial-rotator";s:6:"plugin";s:43:"testimonial-rotator/testimonial-rotator.php";s:11:"new_version";s:5:"2.2.7";s:3:"url";s:50:"https://wordpress.org/plugins/testimonial-rotator/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/testimonial-rotator.zip";s:5:"icons";a:3:{s:2:"1x";s:71:"https://ps.w.org/testimonial-rotator/assets/icon-128x128.png?rev=970020";s:2:"2x";s:71:"https://ps.w.org/testimonial-rotator/assets/icon-256x256.png?rev=970020";s:7:"default";s:71:"https://ps.w.org/testimonial-rotator/assets/icon-256x256.png?rev=970020";}s:7:"banners";a:2:{s:2:"1x";s:74:"https://ps.w.org/testimonial-rotator/assets/banner-772x250.jpg?rev=1327060";s:7:"default";s:74:"https://ps.w.org/testimonial-rotator/assets/banner-772x250.jpg?rev=1327060";}s:11:"banners_rtl";a:0:{}}s:46:"under-construction-page/under-construction.php";O:8:"stdClass":9:{s:2:"id";s:37:"w.org/plugins/under-construction-page";s:4:"slug";s:23:"under-construction-page";s:6:"plugin";s:46:"under-construction-page/under-construction.php";s:11:"new_version";s:4:"2.80";s:3:"url";s:54:"https://wordpress.org/plugins/under-construction-page/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/under-construction-page.2.80.zip";s:5:"icons";a:3:{s:2:"1x";s:76:"https://ps.w.org/under-construction-page/assets/icon-128x128.png?rev=1567925";s:2:"2x";s:76:"https://ps.w.org/under-construction-page/assets/icon-256x256.png?rev=1628376";s:7:"default";s:76:"https://ps.w.org/under-construction-page/assets/icon-256x256.png?rev=1628376";}s:7:"banners";a:3:{s:2:"2x";s:79:"https://ps.w.org/under-construction-page/assets/banner-1544x500.png?rev=1628376";s:2:"1x";s:78:"https://ps.w.org/under-construction-page/assets/banner-772x250.png?rev=1575797";s:7:"default";s:79:"https://ps.w.org/under-construction-page/assets/banner-1544x500.png?rev=1628376";}s:11:"banners_rtl";a:0:{}}s:21:"wp-tiles/wp-tiles.php";O:8:"stdClass":9:{s:2:"id";s:22:"w.org/plugins/wp-tiles";s:4:"slug";s:8:"wp-tiles";s:6:"plugin";s:21:"wp-tiles/wp-tiles.php";s:11:"new_version";s:5:"1.1.2";s:3:"url";s:39:"https://wordpress.org/plugins/wp-tiles/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/wp-tiles.1.1.2.zip";s:5:"icons";a:3:{s:2:"1x";s:61:"https://ps.w.org/wp-tiles/assets/icon-128x128.png?rev=1087152";s:2:"2x";s:61:"https://ps.w.org/wp-tiles/assets/icon-256x256.png?rev=1087152";s:7:"default";s:61:"https://ps.w.org/wp-tiles/assets/icon-256x256.png?rev=1087152";}s:7:"banners";a:2:{s:2:"1x";s:63:"https://ps.w.org/wp-tiles/assets/banner-772x250.png?rev=1087141";s:7:"default";s:63:"https://ps.w.org/wp-tiles/assets/banner-772x250.png?rev=1087141";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(412, '_site_transient_timeout_theme_roots', '1517578686', 'no'),
(413, '_site_transient_theme_roots', 'a:11:{s:6:"hestia";s:7:"/themes";s:12:"sydney-child";s:7:"/themes";s:6:"sydney";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'no');

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
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1516635092:1'),
(4, 4, '_wp_page_template', 'page-templates/page_fullwidth.php'),
(5, 4, 'hestia_layout_select', 'default'),
(6, 6, '_edit_lock', '1516538558:1'),
(7, 6, '_wp_trash_meta_status', 'publish'),
(8, 6, '_wp_trash_meta_time', '1516538558'),
(10, 8, '_wp_trash_meta_status', 'publish'),
(11, 8, '_wp_trash_meta_time', '1516538741'),
(12, 10, '_wp_trash_meta_status', 'publish'),
(13, 10, '_wp_trash_meta_time', '1516538770'),
(16, 13, '_wp_trash_meta_status', 'publish'),
(17, 13, '_wp_trash_meta_time', '1516540386'),
(20, 15, '_wp_trash_meta_status', 'publish'),
(21, 15, '_wp_trash_meta_time', '1516540483'),
(22, 16, '_edit_lock', '1516540644:1'),
(23, 17, '_wp_attached_file', '2018/01/bradfoster1.jpg'),
(24, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1367;s:6:"height";i:688;s:4:"file";s:23:"2018/01/bradfoster1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"bradfoster1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"bradfoster1-300x151.jpg";s:5:"width";i:300;s:6:"height";i:151;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"bradfoster1-768x387.jpg";s:5:"width";i:768;s:6:"height";i:387;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"bradfoster1-1024x515.jpg";s:5:"width";i:1024;s:6:"height";i:515;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-blog";a:4:{s:4:"file";s:23:"bradfoster1-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:50:"© Photography by James Kirby www.jameskirby.me.uk";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(25, 16, '_wp_trash_meta_status', 'publish'),
(26, 16, '_wp_trash_meta_time', '1516540644'),
(27, 18, '_wp_trash_meta_status', 'publish'),
(28, 18, '_wp_trash_meta_time', '1516541547'),
(29, 19, '_menu_item_type', 'post_type'),
(30, 19, '_menu_item_menu_item_parent', '0'),
(31, 19, '_menu_item_object_id', '4'),
(32, 19, '_menu_item_object', 'page'),
(33, 19, '_menu_item_target', ''),
(34, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(35, 19, '_menu_item_xfn', ''),
(36, 19, '_menu_item_url', ''),
(38, 20, '_wp_trash_meta_status', 'publish'),
(39, 20, '_wp_trash_meta_time', '1516541740'),
(40, 21, '_wp_trash_meta_status', 'publish'),
(41, 21, '_wp_trash_meta_time', '1516541761'),
(42, 22, '_wp_trash_meta_status', 'publish'),
(43, 22, '_wp_trash_meta_time', '1516541792'),
(44, 23, '_wp_trash_meta_status', 'publish'),
(45, 23, '_wp_trash_meta_time', '1516541868'),
(46, 24, '_wp_trash_meta_status', 'publish'),
(47, 24, '_wp_trash_meta_time', '1516542125'),
(48, 25, '_wp_trash_meta_status', 'publish'),
(49, 25, '_wp_trash_meta_time', '1516542874'),
(52, 29, '_wp_trash_meta_status', 'publish'),
(53, 29, '_wp_trash_meta_time', '1516542931'),
(56, 31, '_wp_trash_meta_status', 'publish'),
(57, 31, '_wp_trash_meta_time', '1516543825'),
(60, 33, '_wp_trash_meta_status', 'publish'),
(61, 33, '_wp_trash_meta_time', '1516543894'),
(64, 35, '_wp_trash_meta_status', 'publish'),
(65, 35, '_wp_trash_meta_time', '1516544664'),
(66, 36, '_wp_attached_file', '2018/01/brad-logo3.png'),
(67, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:200;s:4:"file";s:22:"2018/01/brad-logo3.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"brad-logo3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"brad-logo3-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(68, 37, '_wp_trash_meta_status', 'publish'),
(69, 37, '_wp_trash_meta_time', '1516545369'),
(70, 38, '_wp_trash_meta_status', 'publish'),
(71, 38, '_wp_trash_meta_time', '1516545532'),
(72, 40, '_wp_trash_meta_status', 'publish'),
(73, 40, '_wp_trash_meta_time', '1516545565'),
(74, 42, '_wp_trash_meta_status', 'publish'),
(75, 42, '_wp_trash_meta_time', '1516545702'),
(76, 44, '_edit_lock', '1516548729:1'),
(77, 44, '_wp_trash_meta_status', 'publish'),
(78, 44, '_wp_trash_meta_time', '1516545891'),
(79, 45, '_edit_lock', '1516546230:1'),
(80, 46, '_wp_trash_meta_status', 'publish'),
(81, 46, '_wp_trash_meta_time', '1516545965'),
(82, 45, '_customize_restore_dismissed', '1'),
(83, 48, '_wp_trash_meta_status', 'publish'),
(84, 48, '_wp_trash_meta_time', '1516546198'),
(85, 45, '_wp_trash_meta_status', 'publish'),
(86, 45, '_wp_trash_meta_time', '1516546230'),
(87, 50, '_wp_trash_meta_status', 'publish'),
(88, 50, '_wp_trash_meta_time', '1516546277'),
(89, 51, '_wp_trash_meta_status', 'publish'),
(90, 51, '_wp_trash_meta_time', '1516546354'),
(91, 52, '_wp_trash_meta_status', 'publish'),
(92, 52, '_wp_trash_meta_time', '1516546529'),
(93, 52, '_edit_lock', '1516549452:1'),
(94, 54, '_wp_attached_file', '2018/01/brad-logo5.png'),
(95, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:473;s:6:"height";i:300;s:4:"file";s:22:"2018/01/brad-logo5.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"brad-logo5-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"brad-logo5-300x190.png";s:5:"width";i:300;s:6:"height";i:190;s:9:"mime-type";s:9:"image/png";}s:11:"hestia-blog";a:4:{s:4:"file";s:22:"brad-logo5-360x240.png";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(96, 55, '_wp_attached_file', '2018/01/brad-logo6.png'),
(97, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:473;s:6:"height";i:300;s:4:"file";s:22:"2018/01/brad-logo6.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"brad-logo6-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"brad-logo6-300x190.png";s:5:"width";i:300;s:6:"height";i:190;s:9:"mime-type";s:9:"image/png";}s:11:"hestia-blog";a:4:{s:4:"file";s:22:"brad-logo6-360x240.png";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(98, 56, '_edit_lock', '1516548751:1'),
(99, 56, '_wp_trash_meta_status', 'publish'),
(100, 56, '_wp_trash_meta_time', '1516548751'),
(103, 58, '_wp_trash_meta_status', 'publish'),
(104, 58, '_wp_trash_meta_time', '1516548972'),
(105, 59, '_wp_trash_meta_status', 'publish'),
(106, 59, '_wp_trash_meta_time', '1516550365'),
(108, 61, '_wp_trash_meta_status', 'publish'),
(109, 61, '_wp_trash_meta_time', '1516550476'),
(111, 61, '_edit_lock', '1516550476:1'),
(112, 62, '_edit_lock', '1516551851:1'),
(113, 62, '_wp_trash_meta_status', 'publish'),
(114, 62, '_wp_trash_meta_time', '1516551851'),
(115, 64, '_wp_trash_meta_status', 'publish'),
(116, 64, '_wp_trash_meta_time', '1516552559'),
(117, 66, '_wp_trash_meta_status', 'publish'),
(118, 66, '_wp_trash_meta_time', '1516553289'),
(119, 67, '_wp_attached_file', '2018/01/brad-logo7.png'),
(120, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:473;s:6:"height";i:300;s:4:"file";s:22:"2018/01/brad-logo7.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"brad-logo7-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"brad-logo7-300x190.png";s:5:"width";i:300;s:6:"height";i:190;s:9:"mime-type";s:9:"image/png";}s:11:"hestia-blog";a:4:{s:4:"file";s:22:"brad-logo7-360x240.png";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(121, 68, '_wp_trash_meta_status', 'publish'),
(122, 68, '_wp_trash_meta_time', '1516553327'),
(123, 69, '_wp_trash_meta_status', 'publish'),
(124, 69, '_wp_trash_meta_time', '1516553399'),
(125, 71, '_wp_trash_meta_status', 'publish'),
(126, 71, '_wp_trash_meta_time', '1516553427'),
(127, 73, '_wp_trash_meta_status', 'publish'),
(128, 73, '_wp_trash_meta_time', '1516554353'),
(129, 75, '_wp_trash_meta_status', 'publish'),
(130, 75, '_wp_trash_meta_time', '1516554634'),
(131, 77, '_wp_trash_meta_status', 'publish'),
(132, 77, '_wp_trash_meta_time', '1516554675'),
(133, 79, '_wp_attached_file', '2018/01/logo-footer.png'),
(134, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:186;s:6:"height";i:200;s:4:"file";s:23:"2018/01/logo-footer.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"logo-footer-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(135, 80, '_wp_attached_file', '2018/01/logo-footer2.png'),
(136, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:232;s:6:"height";i:250;s:4:"file";s:24:"2018/01/logo-footer2.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"logo-footer2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:11:"hestia-blog";a:4:{s:4:"file";s:24:"logo-footer2-232x240.png";s:5:"width";i:232;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(137, 81, '_wp_trash_meta_status', 'publish'),
(138, 81, '_wp_trash_meta_time', '1516555130'),
(139, 83, '_wp_trash_meta_status', 'publish'),
(140, 83, '_wp_trash_meta_time', '1516555835'),
(141, 85, '_wp_trash_meta_status', 'publish'),
(142, 85, '_wp_trash_meta_time', '1516555948'),
(143, 87, '_wp_trash_meta_status', 'publish'),
(144, 87, '_wp_trash_meta_time', '1516556049'),
(145, 88, '_wp_trash_meta_status', 'publish'),
(146, 88, '_wp_trash_meta_time', '1516556103'),
(147, 90, '_wp_trash_meta_status', 'publish'),
(148, 90, '_wp_trash_meta_time', '1516556317'),
(153, 97, '_edit_last', '1'),
(154, 97, '_edit_lock', '1516634590:1'),
(155, 97, '_rotator_id', '|102|'),
(156, 97, '_rating', '5'),
(157, 97, '_cite', '<strong><em>Natasha -Normanton</em></strong>'),
(158, 102, '_edit_last', '1'),
(159, 102, '_edit_lock', '1516626765:1'),
(160, 102, '_fx', 'fade'),
(161, 102, '_timeout', '5'),
(162, 102, '_speed', '1'),
(163, 102, '_limit', '0'),
(164, 102, '_itemreviewed', ''),
(165, 102, '_template', 'default'),
(166, 102, '_img_size', 'thumbnail'),
(167, 102, '_title_heading', 'h2'),
(168, 102, '_shuffle', '1'),
(169, 102, '_verticalalign', '0'),
(170, 102, '_prevnext', '1'),
(171, 102, '_hidefeaturedimage', '0'),
(172, 102, '_hide_microdata', '0'),
(173, 102, '_hide_title', '1'),
(174, 102, '_hide_stars', '0'),
(175, 102, '_hide_body', '0'),
(176, 102, '_hide_author', '0'),
(179, 105, '_wp_attached_file', '2018/01/user.png'),
(180, 105, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:16:"2018/01/user.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"user-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"user-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"hestia-blog";a:4:{s:4:"file";s:16:"user-360x240.png";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(181, 97, '_thumbnail_id', '105'),
(184, 108, '_edit_last', '1'),
(185, 108, '_edit_lock', '1516634208:1'),
(186, 109, '_wp_attached_file', '2018/01/3f.png'),
(187, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:282;s:6:"height";i:280;s:4:"file";s:14:"2018/01/3f.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"3f-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:11:"hestia-blog";a:4:{s:4:"file";s:14:"3f-282x240.png";s:5:"width";i:282;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(188, 108, '_thumbnail_id', '109'),
(189, 108, '_rotator_id', '|102|'),
(190, 108, '_rating', '5'),
(191, 108, '_cite', '<strong><em>Tracy - Normanton</em></strong>'),
(192, 111, '_wp_trash_meta_status', 'publish'),
(193, 111, '_wp_trash_meta_time', '1516627847'),
(194, 111, '_edit_lock', '1516627851:1'),
(195, 113, '_wp_trash_meta_status', 'publish'),
(196, 113, '_wp_trash_meta_time', '1516628116'),
(197, 114, '_wp_trash_meta_status', 'publish'),
(198, 114, '_wp_trash_meta_time', '1516628131'),
(199, 115, '_wp_trash_meta_status', 'publish'),
(200, 115, '_wp_trash_meta_time', '1516628160'),
(201, 116, '_wp_attached_file', '2018/01/3f-1.png'),
(202, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:282;s:6:"height";i:280;s:4:"file";s:16:"2018/01/3f-1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"3f-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:16:"3f-1-230x228.png";s:5:"width";i:230;s:6:"height";i:228;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(203, 117, '_wp_attached_file', '2018/01/girl.png'),
(204, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:16:"2018/01/girl.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"girl-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"girl-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:19:"sydney-medium-thumb";a:4:{s:4:"file";s:16:"girl-512x400.png";s:5:"width";i:512;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:16:"girl-230x230.png";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:9:"image/png";}s:20:"sydney-service-thumb";a:4:{s:4:"file";s:16:"girl-350x350.png";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";}s:16:"sydney-mas-thumb";a:4:{s:4:"file";s:16:"girl-480x480.png";s:5:"width";i:480;s:6:"height";i:480;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(205, 118, '_wp_trash_meta_status', 'publish'),
(206, 118, '_wp_trash_meta_time', '1516628534'),
(207, 119, '_wp_trash_meta_status', 'publish'),
(208, 119, '_wp_trash_meta_time', '1516628554'),
(209, 120, '_wp_trash_meta_status', 'publish'),
(210, 120, '_wp_trash_meta_time', '1516628619'),
(211, 121, '_wp_trash_meta_status', 'publish'),
(212, 121, '_wp_trash_meta_time', '1516628646'),
(213, 122, '_edit_lock', '1516628731:1'),
(214, 122, '_wp_trash_meta_status', 'publish'),
(215, 122, '_wp_trash_meta_time', '1516628731'),
(216, 123, '_edit_lock', '1516628802:1'),
(217, 123, '_wp_trash_meta_status', 'publish'),
(218, 123, '_wp_trash_meta_time', '1516628803'),
(219, 124, '_wp_trash_meta_status', 'publish'),
(220, 124, '_wp_trash_meta_time', '1516628921'),
(221, 125, '_wp_trash_meta_status', 'publish'),
(222, 125, '_wp_trash_meta_time', '1516629038'),
(223, 128, '_wp_trash_meta_status', 'publish'),
(224, 128, '_wp_trash_meta_time', '1516629146'),
(225, 130, '_edit_lock', '1516629217:1'),
(226, 130, '_wp_trash_meta_status', 'publish'),
(227, 130, '_wp_trash_meta_time', '1516629217'),
(228, 133, '_edit_last', '1'),
(229, 133, '_edit_lock', '1516634186:1'),
(230, 133, '_thumbnail_id', '117'),
(231, 133, '_rotator_id', '|102|'),
(232, 133, '_rating', '5'),
(233, 133, '_cite', '<strong><em>Carrie- Featherstone</em></strong>'),
(234, 136, '_wp_attached_file', '2018/01/before-and-after-1.jpg'),
(235, 136, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:706;s:6:"height";i:709;s:4:"file";s:30:"2018/01/before-and-after-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"before-and-after-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"before-and-after-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sydney-medium-thumb";a:4:{s:4:"file";s:30:"before-and-after-1-550x400.jpg";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:30:"before-and-after-1-230x231.jpg";s:5:"width";i:230;s:6:"height";i:231;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sydney-service-thumb";a:4:{s:4:"file";s:30:"before-and-after-1-350x351.jpg";s:5:"width";i:350;s:6:"height";i:351;s:9:"mime-type";s:10:"image/jpeg";}s:16:"sydney-mas-thumb";a:4:{s:4:"file";s:30:"before-and-after-1-480x482.jpg";s:5:"width";i:480;s:6:"height";i:482;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(236, 137, '_wp_attached_file', '2018/01/before-and-after2.jpg'),
(237, 137, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:750;s:6:"height";i:654;s:4:"file";s:29:"2018/01/before-and-after2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"before-and-after2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"before-and-after2-300x262.jpg";s:5:"width";i:300;s:6:"height";i:262;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sydney-medium-thumb";a:4:{s:4:"file";s:29:"before-and-after2-550x400.jpg";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:29:"before-and-after2-230x201.jpg";s:5:"width";i:230;s:6:"height";i:201;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sydney-service-thumb";a:4:{s:4:"file";s:29:"before-and-after2-350x305.jpg";s:5:"width";i:350;s:6:"height";i:305;s:9:"mime-type";s:10:"image/jpeg";}s:16:"sydney-mas-thumb";a:4:{s:4:"file";s:29:"before-and-after2-480x419.jpg";s:5:"width";i:480;s:6:"height";i:419;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(238, 138, '_wp_attached_file', '2018/01/Brad-Foster-Head-PT.jpg'),
(239, 138, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1367;s:6:"height";i:2048;s:4:"file";s:31:"2018/01/Brad-Foster-Head-PT.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"Brad-Foster-Head-PT-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"Brad-Foster-Head-PT-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"Brad-Foster-Head-PT-768x1151.jpg";s:5:"width";i:768;s:6:"height";i:1151;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"Brad-Foster-Head-PT-684x1024.jpg";s:5:"width";i:684;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-large-thumb";a:4:{s:4:"file";s:32:"Brad-Foster-Head-PT-830x1243.jpg";s:5:"width";i:830;s:6:"height";i:1243;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sydney-medium-thumb";a:4:{s:4:"file";s:31:"Brad-Foster-Head-PT-550x400.jpg";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:31:"Brad-Foster-Head-PT-230x345.jpg";s:5:"width";i:230;s:6:"height";i:345;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sydney-service-thumb";a:4:{s:4:"file";s:31:"Brad-Foster-Head-PT-350x524.jpg";s:5:"width";i:350;s:6:"height";i:524;s:9:"mime-type";s:10:"image/jpeg";}s:16:"sydney-mas-thumb";a:4:{s:4:"file";s:31:"Brad-Foster-Head-PT-480x719.jpg";s:5:"width";i:480;s:6:"height";i:719;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:50:"© Photography by James Kirby www.jameskirby.me.uk";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(240, 139, '_wp_attached_file', '2018/01/gallery1.jpg'),
(241, 139, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:810;s:4:"file";s:20:"2018/01/gallery1.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"gallery1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"gallery1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"gallery1-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"gallery1-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-large-thumb";a:4:{s:4:"file";s:20:"gallery1-830x623.jpg";s:5:"width";i:830;s:6:"height";i:623;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sydney-medium-thumb";a:4:{s:4:"file";s:20:"gallery1-550x400.jpg";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:20:"gallery1-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sydney-service-thumb";a:4:{s:4:"file";s:20:"gallery1-350x263.jpg";s:5:"width";i:350;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:16:"sydney-mas-thumb";a:4:{s:4:"file";s:20:"gallery1-480x360.jpg";s:5:"width";i:480;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.8";s:6:"credit";s:0:"";s:6:"camera";s:8:"iPhone 7";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1508784787";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.99";s:3:"iso";s:2:"80";s:13:"shutter_speed";s:16:"0.14285714285714";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(242, 140, '_wp_attached_file', '2018/01/gallery2.jpg'),
(243, 140, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:577;s:4:"file";s:20:"2018/01/gallery2.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"gallery2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"gallery2-300x173.jpg";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"gallery2-768x443.jpg";s:5:"width";i:768;s:6:"height";i:443;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-large-thumb";a:4:{s:4:"file";s:20:"gallery2-830x479.jpg";s:5:"width";i:830;s:6:"height";i:479;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sydney-medium-thumb";a:4:{s:4:"file";s:20:"gallery2-550x400.jpg";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:20:"gallery2-230x133.jpg";s:5:"width";i:230;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sydney-service-thumb";a:4:{s:4:"file";s:20:"gallery2-350x202.jpg";s:5:"width";i:350;s:6:"height";i:202;s:9:"mime-type";s:10:"image/jpeg";}s:16:"sydney-mas-thumb";a:4:{s:4:"file";s:20:"gallery2-480x277.jpg";s:5:"width";i:480;s:6:"height";i:277;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(244, 148, '_wp_trash_meta_status', 'publish'),
(245, 148, '_wp_trash_meta_time', '1516631586'),
(246, 149, '_wp_trash_meta_status', 'publish'),
(247, 149, '_wp_trash_meta_time', '1516631927'),
(248, 150, '_wp_trash_meta_status', 'publish'),
(249, 150, '_wp_trash_meta_time', '1516631939'),
(250, 151, '_edit_lock', '1516632020:1'),
(251, 151, '_wp_trash_meta_status', 'publish'),
(252, 151, '_wp_trash_meta_time', '1516632020'),
(253, 152, '_wp_trash_meta_status', 'publish'),
(254, 152, '_wp_trash_meta_time', '1516632028'),
(255, 153, '_wp_trash_meta_status', 'publish'),
(256, 153, '_wp_trash_meta_time', '1516632045'),
(257, 156, '_wp_attached_file', '2018/01/bell-fat-tip.gif'),
(258, 156, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:250;s:4:"file";s:24:"2018/01/bell-fat-tip.gif";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"bell-fat-tip-150x150.gif";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/gif";}s:6:"medium";a:4:{s:4:"file";s:24:"bell-fat-tip-300x250.gif";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:9:"image/gif";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:24:"bell-fat-tip-230x192.gif";s:5:"width";i:230;s:6:"height";i:192;s:9:"mime-type";s:9:"image/gif";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(261, 158, '_wp_attached_file', '2018/01/five-veges-that-kill-stomack-fat.jpg'),
(262, 158, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:250;s:4:"file";s:44:"2018/01/five-veges-that-kill-stomack-fat.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"five-veges-that-kill-stomack-fat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"five-veges-that-kill-stomack-fat-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:44:"five-veges-that-kill-stomack-fat-230x192.jpg";s:5:"width";i:230;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(263, 159, '_wp_trash_meta_status', 'publish'),
(264, 159, '_wp_trash_meta_time', '1516633773'),
(265, 161, '_wp_trash_meta_status', 'publish'),
(266, 161, '_wp_trash_meta_time', '1516633848'),
(267, 2, '_wp_trash_meta_status', 'publish'),
(268, 2, '_wp_trash_meta_time', '1516633952'),
(269, 2, '_wp_desired_post_slug', 'sample-page');

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
(1, 1, '2018-01-21 12:32:08', '2018-01-21 12:32:08', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-01-21 12:32:08', '2018-01-21 12:32:08', '', 0, 'http://bradfosterpt.uk/?p=1', 0, 'post', '', 1),
(2, 1, '2018-01-21 12:32:08', '2018-01-21 12:32:08', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://bradfosterpt.uk/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-01-22 15:12:32', '2018-01-22 15:12:32', '', 0, 'http://bradfosterpt.uk/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-01-21 12:36:48', '2018-01-21 12:36:48', '<h2 style="text-align: center;"><span style="color: #333333;"><strong>ABOUT</strong></span></h2>\r\n&nbsp;\r\n<p style="font-weight: 400;">Hi, my name is Brad Foster head PT at <a href="http://www.fzone.co.uk/">Fitness Zone in Normanton</a>. I have always had a passion for fitness, and have stayed very active my whole life but to me, fitness is not just an activity. It is a way of life and state of mind. The human body is a truly fascinating machine. We are all capable and have the potential to be and do whatever we put our minds to. Unfortunately, we experience barriers and blockades in our life that stop us and slows us down from reaching our desired goals. I have experience in many different levels of personal training including weight loss, sports specific training, bodybuilding, and safe exercise during an injury. I also have worked with many different populations including athletes, children, seniors and those with cardiac or other health issues. I will be more than happy to tailor a fitness program for you to help you reach your fitness goals! “When we begin to re-love and approve of ourselves, it\'s amazing how weight just disappears from our bodies”</p>\r\n&nbsp;\r\n<h2 style="text-align: center;"><span style="color: #333333;"><strong>SERVICES</strong></span></h2>\r\n<div dir="ltr" style="text-align: center;"><u><b>ONE2ONE PERSONAL TRAINING</b></u></div>\r\n<div dir="ltr" style="text-align: center;">ONLINE PERSONAL TRAINING</div>\r\n<div dir="ltr" style="text-align: center;"><u><b>GROUP SESSIONS </b></u></div>\r\n<div dir="ltr" style="text-align: center;">KIDS CLASSES</div>\r\n<div dir="ltr" style="text-align: center;"></div>\r\n<div dir="ltr"></div>\r\n<div dir="ltr"></div>\r\n<h2 dir="ltr" style="text-align: center;"><span style="color: #333333;"><strong>GALLERY</strong></span></h2>\r\n&nbsp;\r\n\r\n[gallery grids="News" image_size="medium" tiles="true" link="file" ids="136,137,138,139,140"]\r\n<h3></h3>&nbsp;\r\n<h2 style="text-align: center;"><span style="color: #333333;">TESTIMONIALS</span></h2>\r\n[testimonial_rotator id=102]\r\n<h2 style="text-align: center;"><strong>CONTACT</strong></h2>\r\n<div dir="ltr" style="text-align: center;">MOB: 07889790071</div>\r\n<div dir="ltr" style="text-align: center;">EMAIL <a href="mailto:BRADFOSTER01@HOTMAIL.CO.UK" target="_blank" rel="noopener">BRADFOSTER01@HOTMAIL.CO.UK</a></div>\r\n<p dir="ltr" style="text-align: center;"><strong><span style="color: #008000;">BOOK YOUR FREE CONSULTATION TODAY</span></strong></p>\r\n<iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d9446.893122686386!2d-1.4039853!3d53.7053765!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf354095ceabda1fc!2sFitness+Zone!5e0!3m2!1sen!2suk!4v1516630969328" width="100%" height="450" frameborder="0" allowfullscreen="allowfullscreen"></iframe>', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-01-22 15:33:49', '2018-01-22 15:33:49', '', 0, 'http://bradfosterpt.uk/?page_id=4', 0, 'page', '', 0),
(5, 1, '2018-01-21 12:36:48', '2018-01-21 12:36:48', '', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-21 12:36:48', '2018-01-21 12:36:48', '', 4, 'http://bradfosterpt.uk/2018/01/21/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-01-21 12:42:38', '2018-01-21 12:42:38', '{\n    "hestia::hestia_page_editor": {\n        "value": "<h2 style=\\"text-align: center;\\">hi this is a test</h2>",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 12:41:44"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7d339515-eac8-46d1-adac-7242d9f22982', '', '', '2018-01-21 12:42:38', '2018-01-21 12:42:38', '', 0, 'http://bradfosterpt.uk/?p=6', 0, 'customize_changeset', '', 0),
(7, 1, '2018-01-21 12:42:38', '2018-01-21 12:42:38', '<h2 style="text-align: center">hi this is a test</h2>', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-21 12:42:38', '2018-01-21 12:42:38', '', 4, 'http://bradfosterpt.uk/2018/01/21/4-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-01-21 12:45:41', '2018-01-21 12:45:41', '{\n    "hestia::hestia_page_editor": {\n        "value": "<h2 style=\\"text-align: center;\\"><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean et velit turpis. Nullam laoreet libero nec lacus finibus suscipit. Ut nec risus sodales, porta metus a, viverra lectus. Nulla aliquam ex augue, id fringilla nibh placerat sit amet. In a arcu quis enim lobortis malesuada. Fusce iaculis nibh pretium erat tempor sodales. Fusce euismod condimentum pellentesque. Ut laoreet neque non rhoncus viverra. In luctus lectus vitae felis iaculis posuere. Donec sollicitudin fringilla nisi vitae luctus. In porta nec elit at ultricies. Sed sed interdum orci, quis vestibulum lectus. Maecenas imperdiet molestie enim a dapibus. Suspendisse potenti. Sed consectetur, nulla sit amet eleifend sollicitudin, ipsum libero bibendum arcu, vel venenatis turpis libero ac arcu.</span></h2>",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 12:45:41"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '72ac88bd-462f-4587-90d9-2b01a166c6fd', '', '', '2018-01-21 12:45:41', '2018-01-21 12:45:41', '', 0, 'http://bradfosterpt.uk/2018/01/21/72ac88bd-462f-4587-90d9-2b01a166c6fd/', 0, 'customize_changeset', '', 0),
(9, 1, '2018-01-21 12:45:41', '2018-01-21 12:45:41', '<h2 style="text-align: center"><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean et velit turpis. Nullam laoreet libero nec lacus finibus suscipit. Ut nec risus sodales, porta metus a, viverra lectus. Nulla aliquam ex augue, id fringilla nibh placerat sit amet. In a arcu quis enim lobortis malesuada. Fusce iaculis nibh pretium erat tempor sodales. Fusce euismod condimentum pellentesque. Ut laoreet neque non rhoncus viverra. In luctus lectus vitae felis iaculis posuere. Donec sollicitudin fringilla nisi vitae luctus. In porta nec elit at ultricies. Sed sed interdum orci, quis vestibulum lectus. Maecenas imperdiet molestie enim a dapibus. Suspendisse potenti. Sed consectetur, nulla sit amet eleifend sollicitudin, ipsum libero bibendum arcu, vel venenatis turpis libero ac arcu.</span></h2>', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-21 12:45:41', '2018-01-21 12:45:41', '', 4, 'http://bradfosterpt.uk/2018/01/21/4-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-01-21 12:46:10', '2018-01-21 12:46:10', '{\n    "hestia::hestia_page_editor": {\n        "value": "<p style=\\"text-align: center;\\"><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean et velit turpis. Nullam laoreet libero nec lacus finibus suscipit. Ut nec risus sodales, porta metus a, viverra lectus. Nulla aliquam ex augue, id fringilla nibh placerat sit amet. In a arcu quis enim lobortis malesuada. Fusce iaculis nibh pretium erat tempor sodales. Fusce euismod condimentum pellentesque. Ut laoreet neque non rhoncus viverra. In luctus lectus vitae felis iaculis posuere. Donec sollicitudin fringilla nisi vitae luctus. In porta nec elit at ultricies. Sed sed interdum orci, quis vestibulum lectus. Maecenas imperdiet molestie enim a dapibus. Suspendisse potenti. Sed consectetur, nulla sit amet eleifend sollicitudin, ipsum libero bibendum arcu, vel venenatis turpis libero ac arcu.</span></p>",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 12:46:10"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6ef7d0fd-f3a8-4b33-a84a-66452d5641fd', '', '', '2018-01-21 12:46:10', '2018-01-21 12:46:10', '', 0, 'http://bradfosterpt.uk/2018/01/21/6ef7d0fd-f3a8-4b33-a84a-66452d5641fd/', 0, 'customize_changeset', '', 0),
(11, 1, '2018-01-21 12:46:10', '2018-01-21 12:46:10', '<p style="text-align: center"><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean et velit turpis. Nullam laoreet libero nec lacus finibus suscipit. Ut nec risus sodales, porta metus a, viverra lectus. Nulla aliquam ex augue, id fringilla nibh placerat sit amet. In a arcu quis enim lobortis malesuada. Fusce iaculis nibh pretium erat tempor sodales. Fusce euismod condimentum pellentesque. Ut laoreet neque non rhoncus viverra. In luctus lectus vitae felis iaculis posuere. Donec sollicitudin fringilla nisi vitae luctus. In porta nec elit at ultricies. Sed sed interdum orci, quis vestibulum lectus. Maecenas imperdiet molestie enim a dapibus. Suspendisse potenti. Sed consectetur, nulla sit amet eleifend sollicitudin, ipsum libero bibendum arcu, vel venenatis turpis libero ac arcu.</span></p>', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-21 12:46:10', '2018-01-21 12:46:10', '', 4, 'http://bradfosterpt.uk/2018/01/21/4-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-01-21 13:13:06', '2018-01-21 13:13:06', '{\n    "hestia::hestia_big_title_background": {\n        "value": "http://bradfosterpt.uk/wp-content/uploads/2018/01/bradfoster.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 13:13:06"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '68e91e52-4749-45f7-8828-ea3a96fd1094', '', '', '2018-01-21 13:13:06', '2018-01-21 13:13:06', '', 0, 'http://bradfosterpt.uk/2018/01/21/68e91e52-4749-45f7-8828-ea3a96fd1094/', 0, 'customize_changeset', '', 0),
(15, 1, '2018-01-21 13:14:43', '2018-01-21 13:14:43', '{\n    "hestia::hestia_big_title_background": {\n        "value": "http://bradfosterpt.uk/wp-content/uploads/2018/01/bradfoster.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 13:14:43"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '427262eb-a28a-45c2-8432-57e49be85df6', '', '', '2018-01-21 13:14:43', '2018-01-21 13:14:43', '', 0, 'http://bradfosterpt.uk/2018/01/21/427262eb-a28a-45c2-8432-57e49be85df6/', 0, 'customize_changeset', '', 0),
(16, 1, '2018-01-21 13:17:24', '2018-01-21 13:17:24', '{\n    "hestia::hestia_big_title_background": {\n        "value": "http://bradfosterpt.uk/wp-content/uploads/2018/01/bradfoster1.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 13:17:24"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e8800e3f-b480-474d-980e-84b77c459a6f', '', '', '2018-01-21 13:17:24', '2018-01-21 13:17:24', '', 0, 'http://bradfosterpt.uk/?p=16', 0, 'customize_changeset', '', 0),
(17, 1, '2018-01-21 13:17:18', '2018-01-21 13:17:18', '', 'bradfoster1', '', 'inherit', 'open', 'closed', '', 'bradfoster1', '', '', '2018-01-21 13:17:18', '2018-01-21 13:17:18', '', 0, 'http://bradfosterpt.uk/wp-content/uploads/2018/01/bradfoster1.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2018-01-21 13:32:27', '2018-01-21 13:32:27', '{\n    "hestia-child::hestia_big_title_background": {\n        "value": "http://bradfosterpt.uk/wp-content/uploads/2018/01/bradfoster1.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 13:32:27"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '258f0215-4e1c-431a-ad87-c24ef801112e', '', '', '2018-01-21 13:32:27', '2018-01-21 13:32:27', '', 0, 'http://bradfosterpt.uk/2018/01/21/258f0215-4e1c-431a-ad87-c24ef801112e/', 0, 'customize_changeset', '', 0),
(19, 1, '2018-01-21 13:32:53', '2018-01-21 13:32:53', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2018-01-21 14:54:22', '2018-01-21 14:54:22', '', 0, 'http://bradfosterpt.uk/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2018-01-21 13:35:40', '2018-01-21 13:35:40', '{\n    "hestia-child::hestia_top_bar_hide": {\n        "value": false,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 13:35:40"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5626c087-13af-4e30-8739-9a301559876b', '', '', '2018-01-21 13:35:40', '2018-01-21 13:35:40', '', 0, 'http://bradfosterpt.uk/2018/01/21/5626c087-13af-4e30-8739-9a301559876b/', 0, 'customize_changeset', '', 0),
(21, 1, '2018-01-21 13:36:01', '2018-01-21 13:36:01', '{\n    "hestia-child::hestia_top_bar_hide": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 13:36:01"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '24aff29d-7548-4723-997f-e13d0fa4c69f', '', '', '2018-01-21 13:36:01', '2018-01-21 13:36:01', '', 0, 'http://bradfosterpt.uk/2018/01/21/24aff29d-7548-4723-997f-e13d0fa4c69f/', 0, 'customize_changeset', '', 0),
(22, 1, '2018-01-21 13:36:32', '2018-01-21 13:36:32', '{\n    "hestia-child::hestia_search_in_menu": {\n        "value": false,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 13:36:32"\n    },\n    "hestia-child::hestia_header_alignment": {\n        "value": "left",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 13:36:32"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd538552e-83ce-420a-8a4b-5cea046404fd', '', '', '2018-01-21 13:36:32', '2018-01-21 13:36:32', '', 0, 'http://bradfosterpt.uk/2018/01/21/d538552e-83ce-420a-8a4b-5cea046404fd/', 0, 'customize_changeset', '', 0),
(23, 1, '2018-01-21 13:37:48', '2018-01-21 13:37:48', '{\n    "hestia-child::hestia_enable_sharing_icons": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 13:37:48"\n    },\n    "hestia-child::hestia_enable_scroll_to_top": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 13:37:48"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '622ef81f-d05f-4d13-b85c-d98df7b8a606', '', '', '2018-01-21 13:37:48', '2018-01-21 13:37:48', '', 0, 'http://bradfosterpt.uk/2018/01/21/622ef81f-d05f-4d13-b85c-d98df7b8a606/', 0, 'customize_changeset', '', 0),
(24, 1, '2018-01-21 13:42:05', '2018-01-21 13:42:05', '{\n    "hestia::hestia_big_title_title": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 13:42:05"\n    },\n    "hestia::hestia_big_title_text": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 13:42:05"\n    },\n    "hestia::hestia_big_title_button_text": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 13:42:05"\n    },\n    "hestia::hestia_big_title_button_link": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 13:42:05"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7947a41e-0a0c-4252-8fec-450d7044204f', '', '', '2018-01-21 13:42:05', '2018-01-21 13:42:05', '', 0, 'http://bradfosterpt.uk/2018/01/21/7947a41e-0a0c-4252-8fec-450d7044204f/', 0, 'customize_changeset', '', 0),
(25, 1, '2018-01-21 13:54:34', '2018-01-21 13:54:34', '{\n    "custom_css[hestia-child]": {\n        "value": ".header-filter {\\n    position: absolute;\\n    top: 0;\\n    bottom: 0;\\n    left: 0;\\n    right: 0;\\n    z-index: -1;\\n    background-position: top center;\\n    background-size: cover;\\n    margin-top: -40px;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 13:54:34"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3b0f649b-c653-4fcd-a9c3-3ace12ead09a', '', '', '2018-01-21 13:54:34', '2018-01-21 13:54:34', '', 0, 'http://bradfosterpt.uk/2018/01/21/3b0f649b-c653-4fcd-a9c3-3ace12ead09a/', 0, 'customize_changeset', '', 0),
(26, 1, '2018-01-21 13:54:34', '2018-01-21 13:54:34', '.header-filter {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n    left: 0;\n    right: 0;\n    z-index: -1;\n    background-position: top center;\n    background-size: cover;\n    margin-top: -40px;\n}\n\n.navbar .navbar-brand img {\n    max-height: 100px;\n}\n\n.navbar-default {\n    background-color: #f8f8f8;\n    border-color: #e7e7e7;\n    border: none;\n}\n\n.buttons {\n    margin-top: 60px;\n    display: none;\n}\n\n@media screen and (max-width: 768px) {\n    .navbar .navbar-brand img {\n    max-height: 50px;\n    }\n    \n}\n\nimg.foot-log {\n    width: 150px;\n    padding: 10px;\n}\n\n.foot-con {\n    text-align: center;\n}', 'hestia-child', '', 'publish', 'closed', 'closed', '', 'hestia-child', '', '', '2018-01-21 17:35:03', '2018-01-21 17:35:03', '', 0, 'http://bradfosterpt.uk/2018/01/21/hestia-child/', 0, 'custom_css', '', 0),
(27, 1, '2018-01-21 13:54:34', '2018-01-21 13:54:34', '.header-filter {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n    left: 0;\n    right: 0;\n    z-index: -1;\n    background-position: top center;\n    background-size: cover;\n    margin-top: -40px;\n}', 'hestia-child', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-21 13:54:34', '2018-01-21 13:54:34', '', 26, 'http://bradfosterpt.uk/2018/01/21/26-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-01-21 13:55:31', '2018-01-21 13:55:31', '{\n    "hestia-child::custom_logo": {\n        "value": 28,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 13:55:31"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8b81a627-4f9b-47be-a3cd-b2b7395541e0', '', '', '2018-01-21 13:55:31', '2018-01-21 13:55:31', '', 0, 'http://bradfosterpt.uk/2018/01/21/8b81a627-4f9b-47be-a3cd-b2b7395541e0/', 0, 'customize_changeset', '', 0),
(31, 1, '2018-01-21 14:10:25', '2018-01-21 14:10:25', '{\n    "hestia-child::custom_logo": {\n        "value": 30,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 14:10:25"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bfa8bb87-0972-4640-9f57-70dbfcf5b8f1', '', '', '2018-01-21 14:10:25', '2018-01-21 14:10:25', '', 0, 'http://bradfosterpt.uk/2018/01/21/bfa8bb87-0972-4640-9f57-70dbfcf5b8f1/', 0, 'customize_changeset', '', 0),
(33, 1, '2018-01-21 14:11:34', '2018-01-21 14:11:34', '{\n    "hestia-child::custom_logo": {\n        "value": 32,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 14:11:34"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c9b351f9-8b6a-437a-9890-7a9795dc6a4d', '', '', '2018-01-21 14:11:34', '2018-01-21 14:11:34', '', 0, 'http://bradfosterpt.uk/2018/01/21/c9b351f9-8b6a-437a-9890-7a9795dc6a4d/', 0, 'customize_changeset', '', 0),
(35, 1, '2018-01-21 14:24:24', '2018-01-21 14:24:24', '{\n    "hestia-child::custom_logo": {\n        "value": 34,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 14:24:24"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a75317e6-ef03-44db-ab9d-f8adfc0f276b', '', '', '2018-01-21 14:24:24', '2018-01-21 14:24:24', '', 0, 'http://bradfosterpt.uk/2018/01/21/a75317e6-ef03-44db-ab9d-f8adfc0f276b/', 0, 'customize_changeset', '', 0),
(36, 1, '2018-01-21 14:36:02', '2018-01-21 14:36:02', '', 'brad-logo3', '', 'inherit', 'open', 'closed', '', 'brad-logo3', '', '', '2018-01-21 14:36:02', '2018-01-21 14:36:02', '', 0, 'http://bradfosterpt.uk/wp-content/uploads/2018/01/brad-logo3.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2018-01-21 14:36:09', '2018-01-21 14:36:09', '{\n    "hestia-child::custom_logo": {\n        "value": 36,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 14:36:09"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '52013d3f-31e1-4dac-b400-43620e2eb2fb', '', '', '2018-01-21 14:36:09', '2018-01-21 14:36:09', '', 0, 'http://bradfosterpt.uk/2018/01/21/52013d3f-31e1-4dac-b400-43620e2eb2fb/', 0, 'customize_changeset', '', 0),
(38, 1, '2018-01-21 14:38:52', '2018-01-21 14:38:52', '{\n    "custom_css[hestia-child]": {\n        "value": ".header-filter {\\n    position: absolute;\\n    top: 0;\\n    bottom: 0;\\n    left: 0;\\n    right: 0;\\n    z-index: -1;\\n    background-position: top center;\\n    background-size: cover;\\n    margin-top: -40px;\\n}\\n\\n.navbar .navbar-brand img {\\n    max-height: 150px;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 14:38:52"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '94ab1aaa-7b2d-4525-830e-75138cf6dec4', '', '', '2018-01-21 14:38:52', '2018-01-21 14:38:52', '', 0, 'http://bradfosterpt.uk/2018/01/21/94ab1aaa-7b2d-4525-830e-75138cf6dec4/', 0, 'customize_changeset', '', 0),
(39, 1, '2018-01-21 14:38:52', '2018-01-21 14:38:52', '.header-filter {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n    left: 0;\n    right: 0;\n    z-index: -1;\n    background-position: top center;\n    background-size: cover;\n    margin-top: -40px;\n}\n\n.navbar .navbar-brand img {\n    max-height: 150px;\n}', 'hestia-child', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-21 14:38:52', '2018-01-21 14:38:52', '', 26, 'http://bradfosterpt.uk/2018/01/21/26-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-01-21 14:39:25', '2018-01-21 14:39:25', '{\n    "custom_css[hestia-child]": {\n        "value": ".header-filter {\\n    position: absolute;\\n    top: 0;\\n    bottom: 0;\\n    left: 0;\\n    right: 0;\\n    z-index: -1;\\n    background-position: top center;\\n    background-size: cover;\\n    margin-top: -40px;\\n}\\n\\n.navbar .navbar-brand img {\\n    max-height: 100px;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 14:39:25"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '35ba0508-ef9b-468a-b0d4-5e39fa297564', '', '', '2018-01-21 14:39:25', '2018-01-21 14:39:25', '', 0, 'http://bradfosterpt.uk/2018/01/21/35ba0508-ef9b-468a-b0d4-5e39fa297564/', 0, 'customize_changeset', '', 0),
(41, 1, '2018-01-21 14:39:25', '2018-01-21 14:39:25', '.header-filter {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n    left: 0;\n    right: 0;\n    z-index: -1;\n    background-position: top center;\n    background-size: cover;\n    margin-top: -40px;\n}\n\n.navbar .navbar-brand img {\n    max-height: 100px;\n}', 'hestia-child', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-21 14:39:25', '2018-01-21 14:39:25', '', 26, 'http://bradfosterpt.uk/2018/01/21/26-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-01-21 14:41:42', '2018-01-21 14:41:42', '{\n    "custom_css[hestia-child]": {\n        "value": ".header-filter {\\n    position: absolute;\\n    top: 0;\\n    bottom: 0;\\n    left: 0;\\n    right: 0;\\n    z-index: -1;\\n    background-position: top center;\\n    background-size: cover;\\n    margin-top: -40px;\\n}\\n\\n.navbar .navbar-brand img {\\n    max-height: 100px;\\n}\\n\\n.navbar-default {\\n    background-color: #f8f8f8;\\n    border-color: #e7e7e7;\\n    border: none;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 14:41:42"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd36cfa35-12fd-4f84-b066-ca821b51bb62', '', '', '2018-01-21 14:41:42', '2018-01-21 14:41:42', '', 0, 'http://bradfosterpt.uk/2018/01/21/d36cfa35-12fd-4f84-b066-ca821b51bb62/', 0, 'customize_changeset', '', 0),
(43, 1, '2018-01-21 14:41:42', '2018-01-21 14:41:42', '.header-filter {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n    left: 0;\n    right: 0;\n    z-index: -1;\n    background-position: top center;\n    background-size: cover;\n    margin-top: -40px;\n}\n\n.navbar .navbar-brand img {\n    max-height: 100px;\n}\n\n.navbar-default {\n    background-color: #f8f8f8;\n    border-color: #e7e7e7;\n    border: none;\n}', 'hestia-child', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-21 14:41:42', '2018-01-21 14:41:42', '', 26, 'http://bradfosterpt.uk/2018/01/21/26-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-01-21 14:44:51', '2018-01-21 14:44:51', '{\n    "hestia-child::hestia_big_title_title": {\n        "value": "Brad Foster",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 14:44:05"\n    },\n    "hestia-child::hestia_big_title_text": {\n        "value": "Personal Trainer <br><span> Unlock Your Physique",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 14:44:51"\n    },\n    "hestia-child::hestia_slider_alignment": {\n        "value": "left",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 14:44:05"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f4d2f841-69e9-462d-aa25-489d2a89ed47', '', '', '2018-01-21 14:44:51', '2018-01-21 14:44:51', '', 0, 'http://bradfosterpt.uk/?p=44', 0, 'customize_changeset', '', 0),
(45, 1, '2018-01-21 14:50:30', '2018-01-21 14:50:30', '{\n    "hestia-child::hestia_big_title_button_text": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 14:45:05"\n    },\n    "hestia-child::hestia_big_title_button_link": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 14:45:05"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '60d0f252-503f-45cb-a28d-b0a3157cd247', '', '', '2018-01-21 14:50:30', '2018-01-21 14:50:30', '', 0, 'http://bradfosterpt.uk/?p=45', 0, 'customize_changeset', '', 0),
(46, 1, '2018-01-21 14:46:05', '2018-01-21 14:46:05', '{\n    "custom_css[hestia-child]": {\n        "value": ".header-filter {\\n    position: absolute;\\n    top: 0;\\n    bottom: 0;\\n    left: 0;\\n    right: 0;\\n    z-index: -1;\\n    background-position: top center;\\n    background-size: cover;\\n    margin-top: -40px;\\n}\\n\\n.navbar .navbar-brand img {\\n    max-height: 100px;\\n}\\n\\n.navbar-default {\\n    background-color: #f8f8f8;\\n    border-color: #e7e7e7;\\n    border: none;\\n}\\n\\n.buttons {\\n    margin-top: 60px;\\n    display: none;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 14:46:05"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '03ce8dce-554f-479f-b7c9-6c4f9d07241d', '', '', '2018-01-21 14:46:05', '2018-01-21 14:46:05', '', 0, 'http://bradfosterpt.uk/2018/01/21/03ce8dce-554f-479f-b7c9-6c4f9d07241d/', 0, 'customize_changeset', '', 0),
(47, 1, '2018-01-21 14:46:05', '2018-01-21 14:46:05', '.header-filter {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n    left: 0;\n    right: 0;\n    z-index: -1;\n    background-position: top center;\n    background-size: cover;\n    margin-top: -40px;\n}\n\n.navbar .navbar-brand img {\n    max-height: 100px;\n}\n\n.navbar-default {\n    background-color: #f8f8f8;\n    border-color: #e7e7e7;\n    border: none;\n}\n\n.buttons {\n    margin-top: 60px;\n    display: none;\n}', 'hestia-child', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-21 14:46:05', '2018-01-21 14:46:05', '', 26, 'http://bradfosterpt.uk/2018/01/21/26-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-01-21 14:49:58', '2018-01-21 14:49:58', '{\n    "custom_css[hestia-child]": {\n        "value": ".header-filter {\\n    position: absolute;\\n    top: 0;\\n    bottom: 0;\\n    left: 0;\\n    right: 0;\\n    z-index: -1;\\n    background-position: top center;\\n    background-size: cover;\\n    margin-top: -40px;\\n}\\n\\n.navbar .navbar-brand img {\\n    max-height: 75px;\\n}\\n\\n.navbar-default {\\n    background-color: #f8f8f8;\\n    border-color: #e7e7e7;\\n    border: none;\\n}\\n\\n.buttons {\\n    margin-top: 60px;\\n    display: none;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 14:49:58"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5cb0d37b-ba34-45a4-a276-609069169bde', '', '', '2018-01-21 14:49:58', '2018-01-21 14:49:58', '', 0, 'http://bradfosterpt.uk/2018/01/21/5cb0d37b-ba34-45a4-a276-609069169bde/', 0, 'customize_changeset', '', 0),
(49, 1, '2018-01-21 14:49:58', '2018-01-21 14:49:58', '.header-filter {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n    left: 0;\n    right: 0;\n    z-index: -1;\n    background-position: top center;\n    background-size: cover;\n    margin-top: -40px;\n}\n\n.navbar .navbar-brand img {\n    max-height: 75px;\n}\n\n.navbar-default {\n    background-color: #f8f8f8;\n    border-color: #e7e7e7;\n    border: none;\n}\n\n.buttons {\n    margin-top: 60px;\n    display: none;\n}', 'hestia-child', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-21 14:49:58', '2018-01-21 14:49:58', '', 26, 'http://bradfosterpt.uk/2018/01/21/26-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-01-21 14:51:17', '2018-01-21 14:51:17', '{\n    "hestia-child::hestia_header_alignment": {\n        "value": "center",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 14:51:17"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '86d41e3b-25b6-48a3-879e-2ba762d63d19', '', '', '2018-01-21 14:51:17', '2018-01-21 14:51:17', '', 0, 'http://bradfosterpt.uk/2018/01/21/86d41e3b-25b6-48a3-879e-2ba762d63d19/', 0, 'customize_changeset', '', 0),
(51, 1, '2018-01-21 14:52:34', '2018-01-21 14:52:34', '{\n    "hestia-child::hestia_header_alignment": {\n        "value": "right",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 14:52:34"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e4205172-0f95-4115-9d6e-f7713f1efe25', '', '', '2018-01-21 14:52:34', '2018-01-21 14:52:34', '', 0, 'http://bradfosterpt.uk/2018/01/21/e4205172-0f95-4115-9d6e-f7713f1efe25/', 0, 'customize_changeset', '', 0),
(52, 1, '2018-01-21 14:55:29', '2018-01-21 14:55:29', '{\n    "custom_css[hestia-child]": {\n        "value": ".header-filter {\\n    position: absolute;\\n    top: 0;\\n    bottom: 0;\\n    left: 0;\\n    right: 0;\\n    z-index: -1;\\n    background-position: top center;\\n    background-size: cover;\\n    margin-top: -40px;\\n}\\n\\n.navbar .navbar-brand img {\\n    max-height: 100px;\\n}\\n\\n.navbar-default {\\n    background-color: #f8f8f8;\\n    border-color: #e7e7e7;\\n    border: none;\\n}\\n\\n.buttons {\\n    margin-top: 60px;\\n    display: none;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 14:55:29"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2f9d4e69-b931-4381-9fc9-689f9d44a65c', '', '', '2018-01-21 14:55:29', '2018-01-21 14:55:29', '', 0, 'http://bradfosterpt.uk/2018/01/21/2f9d4e69-b931-4381-9fc9-689f9d44a65c/', 0, 'customize_changeset', '', 0),
(53, 1, '2018-01-21 14:55:29', '2018-01-21 14:55:29', '.header-filter {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n    left: 0;\n    right: 0;\n    z-index: -1;\n    background-position: top center;\n    background-size: cover;\n    margin-top: -40px;\n}\n\n.navbar .navbar-brand img {\n    max-height: 100px;\n}\n\n.navbar-default {\n    background-color: #f8f8f8;\n    border-color: #e7e7e7;\n    border: none;\n}\n\n.buttons {\n    margin-top: 60px;\n    display: none;\n}', 'hestia-child', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-21 14:55:29', '2018-01-21 14:55:29', '', 26, 'http://bradfosterpt.uk/2018/01/21/26-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-01-21 15:30:44', '2018-01-21 15:30:44', '', 'brad-logo5', '', 'inherit', 'open', 'closed', '', 'brad-logo5', '', '', '2018-01-21 15:30:44', '2018-01-21 15:30:44', '', 0, 'http://bradfosterpt.uk/wp-content/uploads/2018/01/brad-logo5.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2018-01-21 15:32:02', '2018-01-21 15:32:02', '', 'brad-logo6', '', 'inherit', 'open', 'closed', '', 'brad-logo6', '', '', '2018-01-21 15:32:02', '2018-01-21 15:32:02', '', 0, 'http://bradfosterpt.uk/wp-content/uploads/2018/01/brad-logo6.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2018-01-21 15:32:31', '2018-01-21 15:32:31', '{\n    "hestia-child::custom_logo": {\n        "value": 55,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 15:32:17"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7728dad2-49f1-4e92-a4fa-ca0643f65864', '', '', '2018-01-21 15:32:31', '2018-01-21 15:32:31', '', 0, 'http://bradfosterpt.uk/?p=56', 0, 'customize_changeset', '', 0),
(58, 1, '2018-01-21 15:36:12', '2018-01-21 15:36:12', '{\n    "hestia-child::hestia_big_title_background": {\n        "value": "http://bradfosterpt.uk/wp-content/uploads/2018/01/bradfoster-header-image.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 15:36:12"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3e7a3342-ad87-4350-9e4c-cdba1d77b02e', '', '', '2018-01-21 15:36:12', '2018-01-21 15:36:12', '', 0, 'http://bradfosterpt.uk/2018/01/21/3e7a3342-ad87-4350-9e4c-cdba1d77b02e/', 0, 'customize_changeset', '', 0),
(59, 1, '2018-01-21 15:59:25', '2018-01-21 15:59:25', '{\n    "blogdescription": {\n        "value": "",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 15:59:25"\n    },\n    "sydney::site_logo": {\n        "value": "http://bradfosterpt.uk/wp-content/uploads/2018/01/brad-logo6.png",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 15:59:25"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '21edac4f-0cf1-4475-8eeb-094b68035b77', '', '', '2018-01-21 15:59:25', '2018-01-21 15:59:25', '', 0, 'http://bradfosterpt.uk/2018/01/21/21edac4f-0cf1-4475-8eeb-094b68035b77/', 0, 'customize_changeset', '', 0),
(61, 1, '2018-01-21 16:01:16', '2018-01-21 16:01:16', '{\n    "old_sidebars_widgets_data": {\n        "value": {\n            "wp_inactive_widgets": [],\n            "sidebar-1": [\n                "search-2",\n                "recent-posts-2",\n                "recent-comments-2",\n                "archives-2",\n                "categories-2",\n                "meta-2"\n            ],\n            "footer-1": [],\n            "footer-2": [],\n            "footer-3": []\n        },\n        "type": "global_variable",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 16:01:16"\n    },\n    "hestia::nav_menu_locations[primary]": {\n        "value": 2,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 16:01:16"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8db44fcb-948c-4d27-ba36-8744dbbd6f70', '', '', '2018-01-21 16:01:16', '2018-01-21 16:01:16', '', 0, 'http://bradfosterpt.uk/2018/01/21/8db44fcb-948c-4d27-ba36-8744dbbd6f70/', 0, 'customize_changeset', '', 0),
(62, 1, '2018-01-21 16:24:11', '2018-01-21 16:24:11', '{\n    "custom_css[hestia-child]": {\n        "value": ".header-filter {\\n    position: absolute;\\n    top: 0;\\n    bottom: 0;\\n    left: 0;\\n    right: 0;\\n    z-index: -1;\\n    background-position: top center;\\n    background-size: cover;\\n    margin-top: -40px;\\n}\\n\\n.navbar .navbar-brand img {\\n    max-height: 100px;\\n}\\n\\n.navbar-default {\\n    background-color: #f8f8f8;\\n    border-color: #e7e7e7;\\n    border: none;\\n}\\n\\n.buttons {\\n    margin-top: 60px;\\n    display: none;\\n}\\n\\n@media screen and (max-width: 768px) {\\n    .navbar .navbar-brand img {\\n    max-height: 50px;\\n    }\\n    \\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 16:24:11"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5881f6d6-aa3b-4ef0-829e-1047b561095e', '', '', '2018-01-21 16:24:11', '2018-01-21 16:24:11', '', 0, 'http://bradfosterpt.uk/?p=62', 0, 'customize_changeset', '', 0),
(63, 1, '2018-01-21 16:24:11', '2018-01-21 16:24:11', '.header-filter {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n    left: 0;\n    right: 0;\n    z-index: -1;\n    background-position: top center;\n    background-size: cover;\n    margin-top: -40px;\n}\n\n.navbar .navbar-brand img {\n    max-height: 100px;\n}\n\n.navbar-default {\n    background-color: #f8f8f8;\n    border-color: #e7e7e7;\n    border: none;\n}\n\n.buttons {\n    margin-top: 60px;\n    display: none;\n}\n\n@media screen and (max-width: 768px) {\n    .navbar .navbar-brand img {\n    max-height: 50px;\n    }\n    \n}', 'hestia-child', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-21 16:24:11', '2018-01-21 16:24:11', '', 26, 'http://bradfosterpt.uk/2018/01/21/26-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-01-21 16:35:59', '2018-01-21 16:35:59', '{\n    "custom_css[hestia-child]": {\n        "value": ".header-filter {\\n    position: absolute;\\n    top: 0;\\n    bottom: 0;\\n    left: 0;\\n    right: 0;\\n    z-index: -1;\\n    background-position: top center;\\n    background-size: cover;\\n    margin-top: -40px;\\n}\\n\\n.navbar .navbar-brand img {\\n    max-height: 75px;\\n}\\n\\n.navbar-default {\\n    background-color: #f8f8f8;\\n    border-color: #e7e7e7;\\n    border: none;\\n}\\n\\n.buttons {\\n    margin-top: 60px;\\n    display: none;\\n}\\n\\n@media screen and (max-width: 768px) {\\n    .navbar .navbar-brand img {\\n    max-height: 50px;\\n    }\\n    \\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 16:35:59"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '987ddd51-de68-49c5-bf53-7161e9b32be7', '', '', '2018-01-21 16:35:59', '2018-01-21 16:35:59', '', 0, 'http://bradfosterpt.uk/2018/01/21/987ddd51-de68-49c5-bf53-7161e9b32be7/', 0, 'customize_changeset', '', 0),
(65, 1, '2018-01-21 16:35:59', '2018-01-21 16:35:59', '.header-filter {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n    left: 0;\n    right: 0;\n    z-index: -1;\n    background-position: top center;\n    background-size: cover;\n    margin-top: -40px;\n}\n\n.navbar .navbar-brand img {\n    max-height: 75px;\n}\n\n.navbar-default {\n    background-color: #f8f8f8;\n    border-color: #e7e7e7;\n    border: none;\n}\n\n.buttons {\n    margin-top: 60px;\n    display: none;\n}\n\n@media screen and (max-width: 768px) {\n    .navbar .navbar-brand img {\n    max-height: 50px;\n    }\n    \n}', 'hestia-child', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-21 16:35:59', '2018-01-21 16:35:59', '', 26, 'http://bradfosterpt.uk/2018/01/21/26-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-01-21 16:48:09', '2018-01-21 16:48:09', '{\n    "hestia-child::hestia_big_title_background": {\n        "value": "http://bradfosterpt.uk/wp-content/uploads/2018/01/bradfoster1.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 16:48:09"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd25c2dc7-a556-44a9-9aa1-249e7ad3bfe4', '', '', '2018-01-21 16:48:09', '2018-01-21 16:48:09', '', 0, 'http://bradfosterpt.uk/2018/01/21/d25c2dc7-a556-44a9-9aa1-249e7ad3bfe4/', 0, 'customize_changeset', '', 0),
(67, 1, '2018-01-21 16:48:33', '2018-01-21 16:48:33', '', 'brad-logo7', '', 'inherit', 'open', 'closed', '', 'brad-logo7', '', '', '2018-01-21 16:48:33', '2018-01-21 16:48:33', '', 0, 'http://bradfosterpt.uk/wp-content/uploads/2018/01/brad-logo7.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2018-01-21 16:48:47', '2018-01-21 16:48:47', '{\n    "hestia-child::custom_logo": {\n        "value": 67,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 16:48:47"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e4af22fb-ee28-431f-8814-0c011ef80e51', '', '', '2018-01-21 16:48:47', '2018-01-21 16:48:47', '', 0, 'http://bradfosterpt.uk/2018/01/21/e4af22fb-ee28-431f-8814-0c011ef80e51/', 0, 'customize_changeset', '', 0),
(69, 1, '2018-01-21 16:49:59', '2018-01-21 16:49:59', '{\n    "custom_css[hestia-child]": {\n        "value": ".header-filter {\\n    position: absolute;\\n    top: 0;\\n    bottom: 0;\\n    left: 0;\\n    right: 0;\\n    z-index: -1;\\n    background-position: top center;\\n    background-size: cover;\\n    margin-top: -40px;\\n}\\n\\n.navbar .navbar-brand img {\\n    max-height: 120px;\\n}\\n\\n.navbar-default {\\n    background-color: #f8f8f8;\\n    border-color: #e7e7e7;\\n    border: none;\\n}\\n\\n.buttons {\\n    margin-top: 60px;\\n    display: none;\\n}\\n\\n@media screen and (max-width: 768px) {\\n    .navbar .navbar-brand img {\\n    max-height: 50px;\\n    }\\n    \\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 16:49:59"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '78b2d0e6-dca7-4d1d-8b98-013dd0f36e26', '', '', '2018-01-21 16:49:59', '2018-01-21 16:49:59', '', 0, 'http://bradfosterpt.uk/2018/01/21/78b2d0e6-dca7-4d1d-8b98-013dd0f36e26/', 0, 'customize_changeset', '', 0),
(70, 1, '2018-01-21 16:49:59', '2018-01-21 16:49:59', '.header-filter {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n    left: 0;\n    right: 0;\n    z-index: -1;\n    background-position: top center;\n    background-size: cover;\n    margin-top: -40px;\n}\n\n.navbar .navbar-brand img {\n    max-height: 120px;\n}\n\n.navbar-default {\n    background-color: #f8f8f8;\n    border-color: #e7e7e7;\n    border: none;\n}\n\n.buttons {\n    margin-top: 60px;\n    display: none;\n}\n\n@media screen and (max-width: 768px) {\n    .navbar .navbar-brand img {\n    max-height: 50px;\n    }\n    \n}', 'hestia-child', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-21 16:49:59', '2018-01-21 16:49:59', '', 26, 'http://bradfosterpt.uk/2018/01/21/26-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-01-21 16:50:27', '2018-01-21 16:50:27', '{\n    "custom_css[hestia-child]": {\n        "value": ".header-filter {\\n    position: absolute;\\n    top: 0;\\n    bottom: 0;\\n    left: 0;\\n    right: 0;\\n    z-index: -1;\\n    background-position: top center;\\n    background-size: cover;\\n    margin-top: -40px;\\n}\\n\\n.navbar .navbar-brand img {\\n    max-height: 75px;\\n}\\n\\n.navbar-default {\\n    background-color: #f8f8f8;\\n    border-color: #e7e7e7;\\n    border: none;\\n}\\n\\n.buttons {\\n    margin-top: 60px;\\n    display: none;\\n}\\n\\n@media screen and (max-width: 768px) {\\n    .navbar .navbar-brand img {\\n    max-height: 50px;\\n    }\\n    \\n}\\n\\n\\n",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 16:50:27"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9c82514f-b320-4fb8-8564-2f655292db19', '', '', '2018-01-21 16:50:27', '2018-01-21 16:50:27', '', 0, 'http://bradfosterpt.uk/2018/01/21/9c82514f-b320-4fb8-8564-2f655292db19/', 0, 'customize_changeset', '', 0),
(72, 1, '2018-01-21 16:50:27', '2018-01-21 16:50:27', '.header-filter {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n    left: 0;\n    right: 0;\n    z-index: -1;\n    background-position: top center;\n    background-size: cover;\n    margin-top: -40px;\n}\n\n.navbar .navbar-brand img {\n    max-height: 75px;\n}\n\n.navbar-default {\n    background-color: #f8f8f8;\n    border-color: #e7e7e7;\n    border: none;\n}\n\n.buttons {\n    margin-top: 60px;\n    display: none;\n}\n\n@media screen and (max-width: 768px) {\n    .navbar .navbar-brand img {\n    max-height: 50px;\n    }\n    \n}\n\n\n', 'hestia-child', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-21 16:50:27', '2018-01-21 16:50:27', '', 26, 'http://bradfosterpt.uk/2018/01/21/26-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-01-21 17:05:53', '2018-01-21 17:05:53', '{\n    "custom_css[hestia-child]": {\n        "value": ".header-filter {\\n    position: absolute;\\n    top: 0;\\n    bottom: 0;\\n    left: 0;\\n    right: 0;\\n    z-index: -1;\\n    background-position: top center;\\n    background-size: cover;\\n    margin-top: -40px;\\n}\\n\\n.navbar .navbar-brand img {\\n    max-height: 75px;\\n}\\n\\n.navbar-default {\\n    background-color: #f8f8f8;\\n    border-color: #e7e7e7;\\n    border: none;\\n}\\n\\n.buttons {\\n    margin-top: 60px;\\n    display: none;\\n}\\n\\n@media screen and (max-width: 768px) {\\n    .navbar .navbar-brand img {\\n    max-height: 50px;\\n    }\\n    \\n}\\n\\n.header-filter-gradient {\\n  background: linear-gradient(45deg, #a81d84 0%, #ea396f 100%);\\n}\\n\\n.header-filter::before {\\n  background-color: rgba(0, 0, 0, 0.5);\\n}\\n\\n\\n",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 17:05:53"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '55e702cc-4cf1-47d6-9e4e-57d84d34aec8', '', '', '2018-01-21 17:05:53', '2018-01-21 17:05:53', '', 0, 'http://bradfosterpt.uk/2018/01/21/55e702cc-4cf1-47d6-9e4e-57d84d34aec8/', 0, 'customize_changeset', '', 0),
(74, 1, '2018-01-21 17:05:53', '2018-01-21 17:05:53', '.header-filter {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n    left: 0;\n    right: 0;\n    z-index: -1;\n    background-position: top center;\n    background-size: cover;\n    margin-top: -40px;\n}\n\n.navbar .navbar-brand img {\n    max-height: 75px;\n}\n\n.navbar-default {\n    background-color: #f8f8f8;\n    border-color: #e7e7e7;\n    border: none;\n}\n\n.buttons {\n    margin-top: 60px;\n    display: none;\n}\n\n@media screen and (max-width: 768px) {\n    .navbar .navbar-brand img {\n    max-height: 50px;\n    }\n    \n}\n\n.header-filter-gradient {\n  background: linear-gradient(45deg, #a81d84 0%, #ea396f 100%);\n}\n\n.header-filter::before {\n  background-color: rgba(0, 0, 0, 0.5);\n}\n\n\n', 'hestia-child', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-21 17:05:53', '2018-01-21 17:05:53', '', 26, 'http://bradfosterpt.uk/2018/01/21/26-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2018-01-21 17:10:34', '2018-01-21 17:10:34', '{\n    "custom_css[hestia-child]": {\n        "value": ".header-filter {\\n    position: absolute;\\n    top: 0;\\n    bottom: 0;\\n    left: 0;\\n    right: 0;\\n    z-index: -1;\\n    background-position: top center;\\n    background-size: cover;\\n    margin-top: -40px;\\n}\\n\\n.navbar .navbar-brand img {\\n    max-height: 75px;\\n}\\n\\n.navbar-default {\\n    background-color: #f8f8f8;\\n    border-color: #e7e7e7;\\n    border: none;\\n}\\n\\n.buttons {\\n    margin-top: 60px;\\n    display: none;\\n}\\n\\n@media screen and (max-width: 768px) {\\n    .navbar .navbar-brand img {\\n    max-height: 50px;\\n    }\\n    \\n}\\n\\n.header-filter-gradient {\\n  background: linear-gradient(45deg, #a81d84 0%, #ea396f 100%);\\n}\\n\\n.header-filter::before {\\n  background-color: rgba(0, 0, 0, 0.0);\\n}\\n\\n\\n",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 17:10:34"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '55bd4f9b-4a27-40ca-b601-b854a8ab8b27', '', '', '2018-01-21 17:10:34', '2018-01-21 17:10:34', '', 0, 'http://bradfosterpt.uk/2018/01/21/55bd4f9b-4a27-40ca-b601-b854a8ab8b27/', 0, 'customize_changeset', '', 0),
(76, 1, '2018-01-21 17:10:34', '2018-01-21 17:10:34', '.header-filter {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n    left: 0;\n    right: 0;\n    z-index: -1;\n    background-position: top center;\n    background-size: cover;\n    margin-top: -40px;\n}\n\n.navbar .navbar-brand img {\n    max-height: 75px;\n}\n\n.navbar-default {\n    background-color: #f8f8f8;\n    border-color: #e7e7e7;\n    border: none;\n}\n\n.buttons {\n    margin-top: 60px;\n    display: none;\n}\n\n@media screen and (max-width: 768px) {\n    .navbar .navbar-brand img {\n    max-height: 50px;\n    }\n    \n}\n\n.header-filter-gradient {\n  background: linear-gradient(45deg, #a81d84 0%, #ea396f 100%);\n}\n\n.header-filter::before {\n  background-color: rgba(0, 0, 0, 0.0);\n}\n\n\n', 'hestia-child', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-21 17:10:34', '2018-01-21 17:10:34', '', 26, 'http://bradfosterpt.uk/2018/01/21/26-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(77, 1, '2018-01-21 17:11:15', '2018-01-21 17:11:15', '{\n    "custom_css[hestia-child]": {\n        "value": ".header-filter {\\n    position: absolute;\\n    top: 0;\\n    bottom: 0;\\n    left: 0;\\n    right: 0;\\n    z-index: -1;\\n    background-position: top center;\\n    background-size: cover;\\n    margin-top: -40px;\\n}\\n\\n.navbar .navbar-brand img {\\n    max-height: 75px;\\n}\\n\\n.navbar-default {\\n    background-color: #f8f8f8;\\n    border-color: #e7e7e7;\\n    border: none;\\n}\\n\\n.buttons {\\n    margin-top: 60px;\\n    display: none;\\n}\\n\\n@media screen and (max-width: 768px) {\\n    .navbar .navbar-brand img {\\n    max-height: 50px;\\n    }\\n    \\n}\\n\\n.header-filter-gradient {\\n  background: linear-gradient(45deg, #a81d84 0%, #ea396f 100%);\\n}\\n\\n.header-filter::before {\\n  background-color: rgba(0, 0, 0, 0.1);\\n}\\n\\n\\n",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 17:11:15"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'deba1ef5-b5db-4cbb-8295-a93c83adce06', '', '', '2018-01-21 17:11:15', '2018-01-21 17:11:15', '', 0, 'http://bradfosterpt.uk/2018/01/21/deba1ef5-b5db-4cbb-8295-a93c83adce06/', 0, 'customize_changeset', '', 0),
(78, 1, '2018-01-21 17:11:15', '2018-01-21 17:11:15', '.header-filter {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n    left: 0;\n    right: 0;\n    z-index: -1;\n    background-position: top center;\n    background-size: cover;\n    margin-top: -40px;\n}\n\n.navbar .navbar-brand img {\n    max-height: 75px;\n}\n\n.navbar-default {\n    background-color: #f8f8f8;\n    border-color: #e7e7e7;\n    border: none;\n}\n\n.buttons {\n    margin-top: 60px;\n    display: none;\n}\n\n@media screen and (max-width: 768px) {\n    .navbar .navbar-brand img {\n    max-height: 50px;\n    }\n    \n}\n\n.header-filter-gradient {\n  background: linear-gradient(45deg, #a81d84 0%, #ea396f 100%);\n}\n\n.header-filter::before {\n  background-color: rgba(0, 0, 0, 0.1);\n}\n\n\n', 'hestia-child', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-21 17:11:15', '2018-01-21 17:11:15', '', 26, 'http://bradfosterpt.uk/2018/01/21/26-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-01-21 17:13:00', '2018-01-21 17:13:00', '', 'logo-footer', '', 'inherit', 'open', 'closed', '', 'logo-footer', '', '', '2018-01-21 17:13:00', '2018-01-21 17:13:00', '', 0, 'http://bradfosterpt.uk/wp-content/uploads/2018/01/logo-footer.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2018-01-21 17:15:05', '2018-01-21 17:15:05', '', 'logo-footer2', '', 'inherit', 'open', 'closed', '', 'logo-footer2', '', '', '2018-01-21 17:15:05', '2018-01-21 17:15:05', '', 0, 'http://bradfosterpt.uk/wp-content/uploads/2018/01/logo-footer2.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2018-01-21 17:18:50', '2018-01-21 17:18:50', '{\n    "custom_css[hestia-child]": {\n        "value": ".header-filter {\\n    position: absolute;\\n    top: 0;\\n    bottom: 0;\\n    left: 0;\\n    right: 0;\\n    z-index: -1;\\n    background-position: top center;\\n    background-size: cover;\\n    margin-top: -40px;\\n}\\n\\n.navbar .navbar-brand img {\\n    max-height: 75px;\\n}\\n\\n.navbar-default {\\n    background-color: #f8f8f8;\\n    border-color: #e7e7e7;\\n    border: none;\\n}\\n\\n.buttons {\\n    margin-top: 60px;\\n    display: none;\\n}\\n\\n@media screen and (max-width: 768px) {\\n    .navbar .navbar-brand img {\\n    max-height: 50px;\\n    }\\n    \\n}\\n\\n.header-filter-gradient {\\n  background: linear-gradient(45deg, #a81d84 0%, #ea396f 100%);\\n}\\n\\n.header-filter::before {\\n  background-color: rgba(0, 0, 0, 0.1);\\n}\\n\\n.foot-con {\\n    text-align: center;\\n    margin-top: 20px;\\n}\\n\\n\\n",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 17:18:50"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e0f98831-6cf4-4b70-96d5-cea6b1c482da', '', '', '2018-01-21 17:18:50', '2018-01-21 17:18:50', '', 0, 'http://bradfosterpt.uk/2018/01/21/e0f98831-6cf4-4b70-96d5-cea6b1c482da/', 0, 'customize_changeset', '', 0),
(82, 1, '2018-01-21 17:18:50', '2018-01-21 17:18:50', '.header-filter {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n    left: 0;\n    right: 0;\n    z-index: -1;\n    background-position: top center;\n    background-size: cover;\n    margin-top: -40px;\n}\n\n.navbar .navbar-brand img {\n    max-height: 75px;\n}\n\n.navbar-default {\n    background-color: #f8f8f8;\n    border-color: #e7e7e7;\n    border: none;\n}\n\n.buttons {\n    margin-top: 60px;\n    display: none;\n}\n\n@media screen and (max-width: 768px) {\n    .navbar .navbar-brand img {\n    max-height: 50px;\n    }\n    \n}\n\n.header-filter-gradient {\n  background: linear-gradient(45deg, #a81d84 0%, #ea396f 100%);\n}\n\n.header-filter::before {\n  background-color: rgba(0, 0, 0, 0.1);\n}\n\n.foot-con {\n    text-align: center;\n    margin-top: 20px;\n}\n\n\n', 'hestia-child', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-21 17:18:50', '2018-01-21 17:18:50', '', 26, 'http://bradfosterpt.uk/2018/01/21/26-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-01-21 17:30:35', '2018-01-21 17:30:35', '{\n    "custom_css[hestia-child]": {\n        "value": ".header-filter {\\n    position: absolute;\\n    top: 0;\\n    bottom: 0;\\n    left: 0;\\n    right: 0;\\n    z-index: -1;\\n    background-position: top center;\\n    background-size: cover;\\n    margin-top: -40px;\\n}\\n\\n.navbar .navbar-brand img {\\n    max-height: 75px;\\n}\\n\\n.navbar-default {\\n    background-color: #f8f8f8;\\n    border-color: #e7e7e7;\\n    border: none;\\n}\\n\\n.buttons {\\n    margin-top: 60px;\\n    display: none;\\n}\\n\\n@media screen and (max-width: 768px) {\\n    .navbar .navbar-brand img {\\n    max-height: 50px;\\n    }\\n    \\n}\\n\\nimg.foot-log {\\n    width: 150px;\\n    padding: 10px;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 17:30:35"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c9ce1325-7364-4765-bab6-6283b53c3416', '', '', '2018-01-21 17:30:35', '2018-01-21 17:30:35', '', 0, 'http://bradfosterpt.uk/2018/01/21/c9ce1325-7364-4765-bab6-6283b53c3416/', 0, 'customize_changeset', '', 0),
(84, 1, '2018-01-21 17:30:35', '2018-01-21 17:30:35', '.header-filter {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n    left: 0;\n    right: 0;\n    z-index: -1;\n    background-position: top center;\n    background-size: cover;\n    margin-top: -40px;\n}\n\n.navbar .navbar-brand img {\n    max-height: 75px;\n}\n\n.navbar-default {\n    background-color: #f8f8f8;\n    border-color: #e7e7e7;\n    border: none;\n}\n\n.buttons {\n    margin-top: 60px;\n    display: none;\n}\n\n@media screen and (max-width: 768px) {\n    .navbar .navbar-brand img {\n    max-height: 50px;\n    }\n    \n}\n\nimg.foot-log {\n    width: 150px;\n    padding: 10px;\n}', 'hestia-child', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-21 17:30:35', '2018-01-21 17:30:35', '', 26, 'http://bradfosterpt.uk/2018/01/21/26-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-01-21 17:32:28', '2018-01-21 17:32:28', '{\n    "custom_css[hestia-child]": {\n        "value": ".header-filter {\\n    position: absolute;\\n    top: 0;\\n    bottom: 0;\\n    left: 0;\\n    right: 0;\\n    z-index: -1;\\n    background-position: top center;\\n    background-size: cover;\\n    margin-top: -40px;\\n}\\n\\n.navbar .navbar-brand img {\\n    max-height: 75px;\\n}\\n\\n.navbar-default {\\n    background-color: #f8f8f8;\\n    border-color: #e7e7e7;\\n    border: none;\\n}\\n\\n.buttons {\\n    margin-top: 60px;\\n    display: none;\\n}\\n\\n@media screen and (max-width: 768px) {\\n    .navbar .navbar-brand img {\\n    max-height: 50px;\\n    }\\n    \\n}\\n\\nimg.foot-log {\\n    width: 150px;\\n    padding: 10px;\\n}\\n\\n.foot-con {\\n    text-align: center;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 17:32:28"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6cc9a6fe-f948-4e8b-9c99-e3f41861d712', '', '', '2018-01-21 17:32:28', '2018-01-21 17:32:28', '', 0, 'http://bradfosterpt.uk/2018/01/21/6cc9a6fe-f948-4e8b-9c99-e3f41861d712/', 0, 'customize_changeset', '', 0),
(86, 1, '2018-01-21 17:32:28', '2018-01-21 17:32:28', '.header-filter {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n    left: 0;\n    right: 0;\n    z-index: -1;\n    background-position: top center;\n    background-size: cover;\n    margin-top: -40px;\n}\n\n.navbar .navbar-brand img {\n    max-height: 75px;\n}\n\n.navbar-default {\n    background-color: #f8f8f8;\n    border-color: #e7e7e7;\n    border: none;\n}\n\n.buttons {\n    margin-top: 60px;\n    display: none;\n}\n\n@media screen and (max-width: 768px) {\n    .navbar .navbar-brand img {\n    max-height: 50px;\n    }\n    \n}\n\nimg.foot-log {\n    width: 150px;\n    padding: 10px;\n}\n\n.foot-con {\n    text-align: center;\n}', 'hestia-child', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-21 17:32:28', '2018-01-21 17:32:28', '', 26, 'http://bradfosterpt.uk/2018/01/21/26-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-01-21 17:34:09', '2018-01-21 17:34:09', '{\n    "hestia-child::hestia_blog_hide": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 17:34:09"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '638e8c01-1c38-4703-9ef9-656bd0ef0344', '', '', '2018-01-21 17:34:09', '2018-01-21 17:34:09', '', 0, 'http://bradfosterpt.uk/2018/01/21/638e8c01-1c38-4703-9ef9-656bd0ef0344/', 0, 'customize_changeset', '', 0),
(88, 1, '2018-01-21 17:35:03', '2018-01-21 17:35:03', '{\n    "custom_css[hestia-child]": {\n        "value": ".header-filter {\\n    position: absolute;\\n    top: 0;\\n    bottom: 0;\\n    left: 0;\\n    right: 0;\\n    z-index: -1;\\n    background-position: top center;\\n    background-size: cover;\\n    margin-top: -40px;\\n}\\n\\n.navbar .navbar-brand img {\\n    max-height: 100px;\\n}\\n\\n.navbar-default {\\n    background-color: #f8f8f8;\\n    border-color: #e7e7e7;\\n    border: none;\\n}\\n\\n.buttons {\\n    margin-top: 60px;\\n    display: none;\\n}\\n\\n@media screen and (max-width: 768px) {\\n    .navbar .navbar-brand img {\\n    max-height: 50px;\\n    }\\n    \\n}\\n\\nimg.foot-log {\\n    width: 150px;\\n    padding: 10px;\\n}\\n\\n.foot-con {\\n    text-align: center;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 17:35:03"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4d34feee-97e1-455d-808e-17bab2b84adf', '', '', '2018-01-21 17:35:03', '2018-01-21 17:35:03', '', 0, 'http://bradfosterpt.uk/2018/01/21/4d34feee-97e1-455d-808e-17bab2b84adf/', 0, 'customize_changeset', '', 0),
(89, 1, '2018-01-21 17:35:03', '2018-01-21 17:35:03', '.header-filter {\n    position: absolute;\n    top: 0;\n    bottom: 0;\n    left: 0;\n    right: 0;\n    z-index: -1;\n    background-position: top center;\n    background-size: cover;\n    margin-top: -40px;\n}\n\n.navbar .navbar-brand img {\n    max-height: 100px;\n}\n\n.navbar-default {\n    background-color: #f8f8f8;\n    border-color: #e7e7e7;\n    border: none;\n}\n\n.buttons {\n    margin-top: 60px;\n    display: none;\n}\n\n@media screen and (max-width: 768px) {\n    .navbar .navbar-brand img {\n    max-height: 50px;\n    }\n    \n}\n\nimg.foot-log {\n    width: 150px;\n    padding: 10px;\n}\n\n.foot-con {\n    text-align: center;\n}', 'hestia-child', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-21 17:35:03', '2018-01-21 17:35:03', '', 26, 'http://bradfosterpt.uk/2018/01/21/26-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-01-21 17:38:37', '2018-01-21 17:38:37', '{\n    "hestia-child::hestia_big_title_text": {\n        "value": "Personal Trainer <br><span class=\\"unlock\\" > Unlock Your Physique </span>",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-21 17:38:37"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '570855c1-faeb-486b-89f7-b592dd90272a', '', '', '2018-01-21 17:38:37', '2018-01-21 17:38:37', '', 0, 'http://bradfosterpt.uk/2018/01/21/570855c1-faeb-486b-89f7-b592dd90272a/', 0, 'customize_changeset', '', 0),
(91, 1, '2018-01-22 12:54:54', '2018-01-22 12:54:54', 'AABB.\nAA.CC\n.DDEE\nFF.EE', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2018-01-22 12:54:54', '2018-01-22 12:54:54', '', 0, 'http://bradfosterpt.uk/?post_type=grid_template&p=91', 0, 'grid_template', '', 0),
(92, 1, '2018-01-22 12:54:54', '2018-01-22 12:54:54', 'AA...\nAABB.\n..BB.', 'Simple', '', 'publish', 'closed', 'closed', '', 'simple', '', '', '2018-01-22 12:54:54', '2018-01-22 12:54:54', '', 0, 'http://bradfosterpt.uk/?post_type=grid_template&p=92', 0, 'grid_template', '', 0),
(93, 1, '2018-01-22 12:54:54', '2018-01-22 12:54:54', 'JJ..EE\n.AA.EE\nBAAFF.\nB.DD.H\nCCDDGH\nCC..G.', 'Fancy', '', 'publish', 'closed', 'closed', '', 'fancy', '', '', '2018-01-22 12:54:54', '2018-01-22 12:54:54', '', 0, 'http://bradfosterpt.uk/?post_type=grid_template&p=93', 0, 'grid_template', '', 0),
(94, 1, '2018-01-22 12:54:54', '2018-01-22 12:54:54', '.AAA.\n.AAA.\n.AAA.', 'Featured', '', 'publish', 'closed', 'closed', '', 'featured', '', '', '2018-01-22 12:54:54', '2018-01-22 12:54:54', '', 0, 'http://bradfosterpt.uk/?post_type=grid_template&p=94', 0, 'grid_template', '', 0),
(95, 1, '2018-01-22 12:54:54', '2018-01-22 12:54:54', '.....', 'Plain', '', 'publish', 'closed', 'closed', '', 'plain', '', '', '2018-01-22 12:54:54', '2018-01-22 12:54:54', '', 0, 'http://bradfosterpt.uk/?post_type=grid_template&p=95', 0, 'grid_template', '', 0),
(96, 1, '2018-01-22 12:54:54', '2018-01-22 12:54:54', 'AA\n..', 'Mobile', '', 'publish', 'closed', 'closed', '', 'mobile', '', '', '2018-01-22 12:54:54', '2018-01-22 12:54:54', '', 0, 'http://bradfosterpt.uk/?post_type=grid_template&p=96', 0, 'grid_template', '', 0),
(97, 1, '2018-01-22 13:10:40', '2018-01-22 13:10:40', '<p style="font-weight: 400;">When I started going to the gym a few years ago with friends I was very low on confidence due to my physical appearance and didn’t have a whole lot of knowledge about nutrition. After a while, I fell into a bit of a rut and needed that extra push, as I felt I had taken myself as far as I could on my own.I started with Brad around 18 months ago and at first, for me, it wasn’t about losing weight it was just to look the part. I was roughly around the 17stone mark, wasn’t taking it too seriously and didn’t expect to stick it out for as long as I have. Not long after I started, my confidence was high and with Brad\'s constant encouragement, I was exceeding what I thought were my own limits, pushing myself and believing in myself. I would recommend Brad to anyone at any level of fitness as he will invest time into anybody who wants his help. He became not only my friend but my lifestyle coach and changed my life for the better, both mentally and physically and for that I will be forever grateful.</p>', 'Natasha - Normanton', '', 'publish', 'closed', 'closed', '', 'carrie-featherstone', '', '', '2018-01-22 15:25:31', '2018-01-22 15:25:31', '', 0, 'http://bradfosterpt.uk/?post_type=testimonial&#038;p=97', 0, 'testimonial', '', 0),
(98, 1, '2018-01-22 14:27:29', '2018-01-22 14:27:29', '<h2 style="text-align: center;"><span style="color: #333333;"><strong>ABOUT</strong></span></h2>\n&nbsp;\n<p style="font-weight: 400;">Hi, my name is Brad Foster head PT at <a href="http://www.fzone.co.uk/">Fitness Zone in Normanton</a>. I have always had a passion for fitness, and have stayed very active my whole life but to me, fitness is not just an activity. It is a way of life and state of mind. The human body is a truly fascinating machine. We are all capable and have the potential to be and do whatever we put our minds to. Unfortunately, we experience barriers and blockades in our life that stop us and slows us down from reaching our desired goals. I have experience in many different levels of personal training including weight loss, sports specific training, bodybuilding, and safe exercise during an injury. I also have worked with many different populations including athletes, children, seniors and those with cardiac or other health issues. I will be more than happy to tailor a fitness program for you to help you reach your fitness goals! “When we begin to re-love and approve of ourselves, it\'s amazing how weight just disappears from our bodies”</p>\n&nbsp;\n<h2 style="text-align: center;"><span style="color: #333333;"><strong>SERVICES</strong></span></h2>\n<div dir="ltr" style="text-align: center;"><u><b>ONE2ONE PERSONAL TRAINING</b></u></div>\n<div dir="ltr" style="text-align: center;">ONLINE PERSONAL TRAINING</div>\n<div dir="ltr" style="text-align: center;"><u><b>GROUP SESSIONS </b></u></div>\n<div dir="ltr" style="text-align: center;">KIDS CLASSES</div>\n<div dir="ltr" style="text-align: center;"></div>\n<h3 dir="ltr" style="text-align: center;"><span style="color: #008000;"><strong>BOOK YOUR FREE CONSULTATION</strong></span></h3>\n<div dir="ltr"></div>\n<div dir="ltr"></div>\n<h2 dir="ltr" style="text-align: center;"><span style="color: #333333;"><strong>GALLERY</strong></span></h2>\n&nbsp;\n\n[gallery grids="News" image_size="medium" tiles="true" link="file" ids="136,137,138,139,140"]\n<h3></h3>\n<h2 style="text-align: center;"><span style="color: #333333;">TESTIMONIALS</span></h2>\n[testimonial_rotator id=102]\n<h2 style="text-align: center;"><strong>CONTACT</strong></h2>\n<div dir="ltr" style="text-align: center;">MOB: 07889790071</div>\n<div dir="ltr" style="text-align: center;">EMAIL <a href="mailto:BRADFOSTER01@HOTMAIL.CO.UK" target="_blank" rel="noopener">BRADFOSTER01@HOTMAIL.CO.UK</a></div>\n&nbsp;\n\n<iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d9446.893122686386!2d-1.4039853!3d53.7053765!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf354095ceabda1fc!2sFitness+Zone!5e0!3m2!1sen!2suk!4v1516630969328" width="100%" height="450" frameborder="0" allowfullscreen="allowfullscreen"></iframe>', 'Home', '', 'inherit', 'closed', 'closed', '', '4-autosave-v1', '', '', '2018-01-22 14:27:29', '2018-01-22 14:27:29', '', 4, 'http://bradfosterpt.uk/2018/01/22/4-autosave-v1/', 0, 'revision', '', 0),
(99, 1, '2018-01-22 12:59:18', '2018-01-22 12:59:18', '<h1 style="text-align: center;"><strong>About </strong></h1>\r\n<p style="font-weight: 400;">Hi, my name is Brad Foster head PT at Fitness Zone in Normanton I have always had a passion for fitness, and have stayed very active my whole life but to me, fitness is not just an activity. It is a way of life and state of mind. The human body is a truly fascinating machine. We are all capable and have the potential to be and do whatever we put our minds to. Unfortunately, we experience barriers and blockades in our life that stop us and slows us down from reaching our desired goals.<span> </span>I have experience in many different levels of personal training including weight loss, sports specific training, bodybuilding, and safe exercise during an injury. I also have worked with many different populations including athletes, children, seniors and those with cardiac or other health issues. I will be more than happy to tailor a fitness program for you to help you reach your fitness goals! “When we begin to re-love and approve of ourselves, it\'s amazing how weight just disappears from our bodies”</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-22 12:59:18', '2018-01-22 12:59:18', '', 4, 'http://bradfosterpt.uk/2018/01/22/4-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2018-01-22 13:00:47', '2018-01-22 13:00:47', '<h1 style="text-align: center;"><strong>About </strong></h1>\r\n<p style="font-weight: 400;">Hi, my name is Brad Foster head PT at Fitness Zone in Normanton. I have always had a passion for fitness, and have stayed very active my whole life but to me, fitness is not just an activity. It is a way of life and state of mind. The human body is a truly fascinating machine. We are all capable and have the potential to be and do whatever we put our minds to. Unfortunately, we experience barriers and blockades in our life that stop us and slows us down from reaching our desired goals.<span> </span>I have experience in many different levels of personal training including weight loss, sports specific training, bodybuilding, and safe exercise during an injury. I also have worked with many different populations including athletes, children, seniors and those with cardiac or other health issues. I will be more than happy to tailor a fitness program for you to help you reach your fitness goals! “When we begin to re-love and approve of ourselves, it\'s amazing how weight just disappears from our bodies”</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-22 13:00:47', '2018-01-22 13:00:47', '', 4, 'http://bradfosterpt.uk/2018/01/22/4-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-01-22 13:01:22', '2018-01-22 13:01:22', '<h1 style="text-align: center;"><strong>About </strong></h1>\r\n<p style="font-weight: 400;">Hi, my name is Brad Foster head PT at <a href="http://www.fzone.co.uk/">Fitness Zone in Normanton</a>. I have always had a passion for fitness, and have stayed very active my whole life but to me, fitness is not just an activity. It is a way of life and state of mind. The human body is a truly fascinating machine. We are all capable and have the potential to be and do whatever we put our minds to. Unfortunately, we experience barriers and blockades in our life that stop us and slows us down from reaching our desired goals.<span> </span>I have experience in many different levels of personal training including weight loss, sports specific training, bodybuilding, and safe exercise during an injury. I also have worked with many different populations including athletes, children, seniors and those with cardiac or other health issues. I will be more than happy to tailor a fitness program for you to help you reach your fitness goals! “When we begin to re-love and approve of ourselves, it\'s amazing how weight just disappears from our bodies”</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-22 13:01:22', '2018-01-22 13:01:22', '', 4, 'http://bradfosterpt.uk/2018/01/22/4-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-01-22 13:12:03', '2018-01-22 13:12:03', '', 'Brad Foster', '', 'publish', 'closed', 'closed', '', 'brad-foster', '', '', '2018-01-22 13:15:06', '2018-01-22 13:15:06', '', 0, 'http://bradfosterpt.uk/?post_type=testimonial_rotator&#038;p=102', 0, 'testimonial_rotator', '', 0),
(103, 1, '2018-01-22 13:12:27', '2018-01-22 13:12:27', '<h1 style="text-align: center;"><strong>About </strong></h1>\r\n<p style="font-weight: 400;">Hi, my name is Brad Foster head PT at <a href="http://www.fzone.co.uk/">Fitness Zone in Normanton</a>. I have always had a passion for fitness, and have stayed very active my whole life but to me, fitness is not just an activity. It is a way of life and state of mind. The human body is a truly fascinating machine. We are all capable and have the potential to be and do whatever we put our minds to. Unfortunately, we experience barriers and blockades in our life that stop us and slows us down from reaching our desired goals.<span> </span>I have experience in many different levels of personal training including weight loss, sports specific training, bodybuilding, and safe exercise during an injury. I also have worked with many different populations including athletes, children, seniors and those with cardiac or other health issues. I will be more than happy to tailor a fitness program for you to help you reach your fitness goals! “When we begin to re-love and approve of ourselves, it\'s amazing how weight just disappears from our bodies”</p>\r\n[testimonial_rotator id="undefined"]', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-22 13:12:27', '2018-01-22 13:12:27', '', 4, 'http://bradfosterpt.uk/2018/01/22/4-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2018-01-22 13:14:04', '2018-01-22 13:14:04', '<h1 style="text-align: center;"><strong>About </strong></h1>\r\n<p style="font-weight: 400;">Hi, my name is Brad Foster head PT at <a href="http://www.fzone.co.uk/">Fitness Zone in Normanton</a>. I have always had a passion for fitness, and have stayed very active my whole life but to me, fitness is not just an activity. It is a way of life and state of mind. The human body is a truly fascinating machine. We are all capable and have the potential to be and do whatever we put our minds to. Unfortunately, we experience barriers and blockades in our life that stop us and slows us down from reaching our desired goals.<span> </span>I have experience in many different levels of personal training including weight loss, sports specific training, bodybuilding, and safe exercise during an injury. I also have worked with many different populations including athletes, children, seniors and those with cardiac or other health issues. I will be more than happy to tailor a fitness program for you to help you reach your fitness goals! “When we begin to re-love and approve of ourselves, it\'s amazing how weight just disappears from our bodies”</p>\r\n<span>[testimonial_rotator id=102]</span>', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-22 13:14:04', '2018-01-22 13:14:04', '', 4, 'http://bradfosterpt.uk/2018/01/22/4-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-01-22 13:19:08', '2018-01-22 13:19:08', '', 'user', '', 'inherit', 'open', 'closed', '', 'user', '', '', '2018-01-22 13:19:08', '2018-01-22 13:19:08', '', 0, 'http://bradfosterpt.uk/wp-content/uploads/2018/01/user.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2018-01-22 13:21:02', '2018-01-22 13:21:02', '<h1 style="text-align: center;"><strong>About </strong></h1>\r\n<p style="font-weight: 400;">Hi, my name is Brad Foster head PT at <a href="http://www.fzone.co.uk/">Fitness Zone in Normanton</a>. I have always had a passion for fitness, and have stayed very active my whole life but to me, fitness is not just an activity. It is a way of life and state of mind. The human body is a truly fascinating machine. We are all capable and have the potential to be and do whatever we put our minds to. Unfortunately, we experience barriers and blockades in our life that stop us and slows us down from reaching our desired goals.<span> </span>I have experience in many different levels of personal training including weight loss, sports specific training, bodybuilding, and safe exercise during an injury. I also have worked with many different populations including athletes, children, seniors and those with cardiac or other health issues. I will be more than happy to tailor a fitness program for you to help you reach your fitness goals! “When we begin to re-love and approve of ourselves, it\'s amazing how weight just disappears from our bodies”</p>\r\n\r\n<h1 style="text-align: center;">Testimonials</h1>\r\n<span>[testimonial_rotator id=102]</span>\r\n<h1 style="text-align: center;"></h1>\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-22 13:21:02', '2018-01-22 13:21:02', '', 4, 'http://bradfosterpt.uk/2018/01/22/4-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-01-22 13:21:15', '2018-01-22 13:21:15', '<h1 style="text-align: center;"><strong>About </strong></h1>\r\n<p style="font-weight: 400;">Hi, my name is Brad Foster head PT at <a href="http://www.fzone.co.uk/">Fitness Zone in Normanton</a>. I have always had a passion for fitness, and have stayed very active my whole life but to me, fitness is not just an activity. It is a way of life and state of mind. The human body is a truly fascinating machine. We are all capable and have the potential to be and do whatever we put our minds to. Unfortunately, we experience barriers and blockades in our life that stop us and slows us down from reaching our desired goals.<span> </span>I have experience in many different levels of personal training including weight loss, sports specific training, bodybuilding, and safe exercise during an injury. I also have worked with many different populations including athletes, children, seniors and those with cardiac or other health issues. I will be more than happy to tailor a fitness program for you to help you reach your fitness goals! “When we begin to re-love and approve of ourselves, it\'s amazing how weight just disappears from our bodies”</p>\r\n\r\n<h1 style="text-align: center;"><strong>Testimonials</strong></h1>\r\n<span>[testimonial_rotator id=102]</span>\r\n<h1 style="text-align: center;"></h1>\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-22 13:21:15', '2018-01-22 13:21:15', '', 4, 'http://bradfosterpt.uk/2018/01/22/4-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-01-22 13:26:12', '2018-01-22 13:26:12', '<p style="font-weight: 400;">I am proud to say I was the original guinea pig.  My life has had a total turnaround and having Brad as my personal trainer has been the upmost game changer.At 47 years of age, I did not expect to be throwing myself on the gym floor doing bur-pees, perfecting the art of a 90 degree squat, the list is endless of my achievements in the gym, participating in circuits and looking forward to training twice a week.I have been taught the correct techniques, I am always encouraged to do better, spurred on to finish and pushed beyond my comfort zone.  My fitness levels have increased and every PT session Brad is by my side pushing me to succeed.I put my trust in Brad and he has not let me down. His guidance, advice and effective training methods are second to none I have and will continue to recommend BF PT.</p>', 'Tracy- Normanton', '', 'publish', 'closed', 'closed', '', 'natasha-normanton', '', '', '2018-01-22 15:19:09', '2018-01-22 15:19:09', '', 0, 'http://bradfosterpt.uk/?post_type=testimonial&#038;p=108', 0, 'testimonial', '', 0),
(109, 1, '2018-01-22 13:23:23', '2018-01-22 13:23:23', '', '3f', '', 'inherit', 'open', 'closed', '', '3f', '', '', '2018-01-22 13:23:23', '2018-01-22 13:23:23', '', 108, 'http://bradfosterpt.uk/wp-content/uploads/2018/01/3f.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2018-01-22 13:29:54', '2018-01-22 13:29:54', '<h1 style="text-align: center"><strong>About </strong></h1>\r\n<p style="font-weight: 400">Hi, my name is Brad Foster head PT at <a href="http://www.fzone.co.uk/">Fitness Zone in Normanton</a>. I have always had a passion for fitness, and have stayed very active my whole life but to me, fitness is not just an activity. It is a way of life and state of mind. The human body is a truly fascinating machine. We are all capable and have the potential to be and do whatever we put our minds to. Unfortunately, we experience barriers and blockades in our life that stop us and slows us down from reaching our desired goals.<span> </span>I have experience in many different levels of personal training including weight loss, sports specific training, bodybuilding, and safe exercise during an injury. I also have worked with many different populations including athletes, children, seniors and those with cardiac or other health issues. I will be more than happy to tailor a fitness program for you to help you reach your fitness goals! “When we begin to re-love and approve of ourselves, it\'s amazing how weight just disappears from our bodies”</p>\r\n\r\n<h1 style="text-align: center"><strong>Testimonials</strong></h1>\r\n<span>[testimonial_rotator id=102]</span>\r\n<h1 style="text-align: center"></h1>\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-22 13:29:54', '2018-01-22 13:29:54', '', 4, 'http://bradfosterpt.uk/2018/01/22/4-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2018-01-22 13:30:47', '2018-01-22 13:30:47', '{\n    "hestia-child::hestia_header_alignment": {\n        "value": "center",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 13:30:47"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a87f7bab-5ea2-4dca-8e9f-943108eabe5d', '', '', '2018-01-22 13:30:47', '2018-01-22 13:30:47', '', 0, 'http://bradfosterpt.uk/2018/01/22/a87f7bab-5ea2-4dca-8e9f-943108eabe5d/', 0, 'customize_changeset', '', 0),
(112, 1, '2018-01-22 13:33:13', '2018-01-22 13:33:13', '<h1 style="text-align: center;"><strong>About </strong></h1>\r\n<p style="font-weight: 400;">Hi, my name is Brad Foster head PT at <a href="http://www.fzone.co.uk/">Fitness Zone in Normanton</a>. I have always had a passion for fitness, and have stayed very active my whole life but to me, fitness is not just an activity. It is a way of life and state of mind. The human body is a truly fascinating machine. We are all capable and have the potential to be and do whatever we put our minds to. Unfortunately, we experience barriers and blockades in our life that stop us and slows us down from reaching our desired goals. I have experience in many different levels of personal training including weight loss, sports specific training, bodybuilding, and safe exercise during an injury. I also have worked with many different populations including athletes, children, seniors and those with cardiac or other health issues. I will be more than happy to tailor a fitness program for you to help you reach your fitness goals! “When we begin to re-love and approve of ourselves, it\'s amazing how weight just disappears from our bodies”</p>\r\n\r\n<h1 style="text-align: center;"><strong>Testimonials</strong></h1>\r\n[testimonial_rotator id=102]\r\n<h1 style="text-align: center;"></h1>\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-22 13:33:13', '2018-01-22 13:33:13', '', 4, 'http://bradfosterpt.uk/2018/01/22/4-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2018-01-22 13:35:16', '2018-01-22 13:35:16', '{\n    "sydney::front_header_type": {\n        "value": "image",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 13:35:16"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'faa54186-82ac-4ec1-9d53-d3e21c773c6d', '', '', '2018-01-22 13:35:16', '2018-01-22 13:35:16', '', 0, 'http://bradfosterpt.uk/2018/01/22/faa54186-82ac-4ec1-9d53-d3e21c773c6d/', 0, 'customize_changeset', '', 0),
(114, 1, '2018-01-22 13:35:31', '2018-01-22 13:35:31', '{\n    "sydney::front_header_type": {\n        "value": "slider",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 13:35:31"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a444b191-7649-4854-9312-9071412f7663', '', '', '2018-01-22 13:35:31', '2018-01-22 13:35:31', '', 0, 'http://bradfosterpt.uk/2018/01/22/a444b191-7649-4854-9312-9071412f7663/', 0, 'customize_changeset', '', 0),
(115, 1, '2018-01-22 13:36:00', '2018-01-22 13:36:00', '{\n    "sydney::slider_image_1": {\n        "value": "http://bradfosterpt.uk/wp-content/uploads/2018/01/bradfoster1.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 13:36:00"\n    },\n    "sydney::slider_image_2": {\n        "value": "http://bradfosterpt.uk/wp-content/uploads/2018/01/bradfoster1.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 13:36:00"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b65f953e-ff48-4a6e-bfab-5cd0ccbd16ef', '', '', '2018-01-22 13:36:00', '2018-01-22 13:36:00', '', 0, 'http://bradfosterpt.uk/2018/01/22/b65f953e-ff48-4a6e-bfab-5cd0ccbd16ef/', 0, 'customize_changeset', '', 0),
(116, 1, '2018-01-22 13:37:43', '2018-01-22 13:37:43', '', '3f', '', 'inherit', 'open', 'closed', '', '3f-2', '', '', '2018-01-22 13:37:43', '2018-01-22 13:37:43', '', 0, 'http://bradfosterpt.uk/wp-content/uploads/2018/01/3f-1.png', 0, 'attachment', 'image/png', 0),
(117, 1, '2018-01-22 13:37:46', '2018-01-22 13:37:46', '', 'girl', '', 'inherit', 'open', 'closed', '', 'girl', '', '', '2018-01-22 13:37:46', '2018-01-22 13:37:46', '', 0, 'http://bradfosterpt.uk/wp-content/uploads/2018/01/girl.png', 0, 'attachment', 'image/png', 0),
(118, 1, '2018-01-22 13:42:14', '2018-01-22 13:42:14', '{\n    "sydney::wrapper_top_padding": {\n        "value": "0",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 13:42:14"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a4157e1a-57f1-459f-b4d8-7dced535b30a', '', '', '2018-01-22 13:42:14', '2018-01-22 13:42:14', '', 0, 'http://bradfosterpt.uk/2018/01/22/a4157e1a-57f1-459f-b4d8-7dced535b30a/', 0, 'customize_changeset', '', 0),
(119, 1, '2018-01-22 13:42:34', '2018-01-22 13:42:34', '{\n    "sydney::sticky_menu": {\n        "value": "static",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 13:42:34"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ec6dd0e3-6116-4e74-9b06-9849cdb29016', '', '', '2018-01-22 13:42:34', '2018-01-22 13:42:34', '', 0, 'http://bradfosterpt.uk/2018/01/22/ec6dd0e3-6116-4e74-9b06-9849cdb29016/', 0, 'customize_changeset', '', 0),
(120, 1, '2018-01-22 13:43:39', '2018-01-22 13:43:39', '{\n    "sydney::slider_title_1": {\n        "value": "Brad foster",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 13:43:39"\n    },\n    "sydney::slider_subtitle_1": {\n        "value": "Personal Trainer",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 13:43:39"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6b7a046e-d2ab-4ca8-bcce-b7131d3767f0', '', '', '2018-01-22 13:43:39', '2018-01-22 13:43:39', '', 0, 'http://bradfosterpt.uk/2018/01/22/6b7a046e-d2ab-4ca8-bcce-b7131d3767f0/', 0, 'customize_changeset', '', 0),
(121, 1, '2018-01-22 13:44:06', '2018-01-22 13:44:06', '{\n    "sydney::slider_title_2": {\n        "value": "UNLOCK YOUR PHSYIQUE",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 13:44:06"\n    },\n    "sydney::slider_subtitle_2": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 13:44:06"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4ae1972e-fb16-4b24-8c47-ccb358f66462', '', '', '2018-01-22 13:44:06', '2018-01-22 13:44:06', '', 0, 'http://bradfosterpt.uk/2018/01/22/4ae1972e-fb16-4b24-8c47-ccb358f66462/', 0, 'customize_changeset', '', 0),
(122, 1, '2018-01-22 13:45:31', '2018-01-22 13:45:31', '{\n    "sydney::slider_title_1": {\n        "value": "BRAD FOSTER",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 13:45:31"\n    },\n    "sydney::slider_button_url": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 13:45:12"\n    },\n    "sydney::slider_button_text": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 13:45:12"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e4f52813-8632-4e8e-815d-99dbcaced777', '', '', '2018-01-22 13:45:31', '2018-01-22 13:45:31', '', 0, 'http://bradfosterpt.uk/?p=122', 0, 'customize_changeset', '', 0),
(123, 1, '2018-01-22 13:46:43', '2018-01-22 13:46:43', '{\n    "blogdescription": {\n        "value": "Personal Trainer",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 13:46:12"\n    },\n    "sydney::site_logo": {\n        "value": "http://bradfosterpt.uk/wp-content/uploads/2018/01/logo-footer2.png",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 13:46:43"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2bf80010-75d0-4477-96e5-8a89933ecb37', '', '', '2018-01-22 13:46:43', '2018-01-22 13:46:43', '', 0, 'http://bradfosterpt.uk/?p=123', 0, 'customize_changeset', '', 0),
(124, 1, '2018-01-22 13:48:41', '2018-01-22 13:48:41', '{\n    "sydney::site_logo": {\n        "value": "http://bradfosterpt.uk/wp-content/uploads/2018/01/logo-footer.png",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 13:48:41"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1708d566-f0cf-4889-86b1-f28bdee9e915', '', '', '2018-01-22 13:48:41', '2018-01-22 13:48:41', '', 0, 'http://bradfosterpt.uk/2018/01/22/1708d566-f0cf-4889-86b1-f28bdee9e915/', 0, 'customize_changeset', '', 0),
(125, 1, '2018-01-22 13:50:38', '2018-01-22 13:50:38', '{\n    "custom_css[sydney]": {\n        "value": ".site-logo {\\n    max-height: 100px;\\n    width: 120px;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 13:50:38"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9d02b872-50c1-40d6-8fd2-36cdc2b8896a', '', '', '2018-01-22 13:50:38', '2018-01-22 13:50:38', '', 0, 'http://bradfosterpt.uk/2018/01/22/9d02b872-50c1-40d6-8fd2-36cdc2b8896a/', 0, 'customize_changeset', '', 0),
(126, 1, '2018-01-22 13:50:38', '2018-01-22 13:50:38', 'p.subtitle {\n	\n	color:black !important;\n	font-weight:bold !important;\n}', 'sydney', '', 'publish', 'closed', 'closed', '', 'sydney', '', '', '2018-01-22 13:53:37', '2018-01-22 13:53:37', '', 0, 'http://bradfosterpt.uk/2018/01/22/sydney/', 0, 'custom_css', '', 0),
(127, 1, '2018-01-22 13:50:38', '2018-01-22 13:50:38', '.site-logo {\n    max-height: 100px;\n    width: 120px;\n}', 'sydney', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2018-01-22 13:50:38', '2018-01-22 13:50:38', '', 126, 'http://bradfosterpt.uk/2018/01/22/126-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2018-01-22 13:52:26', '2018-01-22 13:52:26', '{\n    "custom_css[sydney]": {\n        "value": "p.subtitle {\\n\\t\\n\\tcolor:black;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 13:52:26"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bc75e786-9754-4e5c-b2ed-422704421324', '', '', '2018-01-22 13:52:26', '2018-01-22 13:52:26', '', 0, 'http://bradfosterpt.uk/2018/01/22/bc75e786-9754-4e5c-b2ed-422704421324/', 0, 'customize_changeset', '', 0),
(129, 1, '2018-01-22 13:52:26', '2018-01-22 13:52:26', 'p.subtitle {\n	\n	color:black;\n}', 'sydney', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2018-01-22 13:52:26', '2018-01-22 13:52:26', '', 126, 'http://bradfosterpt.uk/2018/01/22/126-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2018-01-22 13:53:37', '2018-01-22 13:53:37', '{\n    "custom_css[sydney]": {\n        "value": "p.subtitle {\\n\\t\\n\\tcolor:black !important;\\n\\tfont-weight:bold !important;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 13:53:37"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '942efc06-fec2-42f7-babf-5103750154da', '', '', '2018-01-22 13:53:37', '2018-01-22 13:53:37', '', 0, 'http://bradfosterpt.uk/?p=130', 0, 'customize_changeset', '', 0),
(131, 1, '2018-01-22 13:53:37', '2018-01-22 13:53:37', 'p.subtitle {\n	\n	color:black !important;\n	font-weight:bold !important;\n}', 'sydney', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2018-01-22 13:53:37', '2018-01-22 13:53:37', '', 126, 'http://bradfosterpt.uk/2018/01/22/126-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2018-01-22 13:55:48', '2018-01-22 13:55:48', '<h1 style="text-align: center;"><strong>ABOUT</strong></h1>\r\n&nbsp;\r\n<p style="font-weight: 400;">Hi, my name is Brad Foster head PT at <a href="http://www.fzone.co.uk/">Fitness Zone in Normanton</a>. I have always had a passion for fitness, and have stayed very active my whole life but to me, fitness is not just an activity. It is a way of life and state of mind. The human body is a truly fascinating machine. We are all capable and have the potential to be and do whatever we put our minds to. Unfortunately, we experience barriers and blockades in our life that stop us and slows us down from reaching our desired goals. I have experience in many different levels of personal training including weight loss, sports specific training, bodybuilding, and safe exercise during an injury. I also have worked with many different populations including athletes, children, seniors and those with cardiac or other health issues. I will be more than happy to tailor a fitness program for you to help you reach your fitness goals! “When we begin to re-love and approve of ourselves, it\'s amazing how weight just disappears from our bodies”</p>\r\n&nbsp;\r\n<h1 style="text-align: center;">TESTIMONIALS</h1>\r\n[testimonial_rotator id=102]\r\n<h1 style="text-align: center;"></h1>\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-22 13:55:48', '2018-01-22 13:55:48', '', 4, 'http://bradfosterpt.uk/2018/01/22/4-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2018-01-22 14:01:42', '2018-01-22 14:01:42', '<p style="font-weight: 400;">What makes a Personal Trainer great?  I can tell you that it takes someone who is dedicated to their own goals and seeks to achieve their own personal excellence.  Without this, a Personal Trainer cannot assist others in carrying out their personal fitness goals. I have been a client of Brad Foster’s for almost a year now and I can tell you unequivocally that he exudes these behaviours and then takes it up a notch in all facets of his life. I came to BFPT with very little confidence and not a whole lot of self-expectation in relation to my fitness and nutrition abilities.  I was 260 lbs when I began in January  2017 and now I am 169 lbs.  I still have a year’s journey to achieve my complete fitness goal before I can start to learn to maintain, but I look forward to continuously utilizing Brad’s services for them. I have no qualms in providing Brad (BFPT) a standing ovation quality recommendation of his services and abilities.</p>', 'Carrie- Featherstone', '', 'publish', 'closed', 'closed', '', 'tracey-normanton', '', '', '2018-01-22 15:18:49', '2018-01-22 15:18:49', '', 0, 'http://bradfosterpt.uk/?post_type=testimonial&#038;p=133', 0, 'testimonial', '', 0),
(135, 1, '2018-01-22 14:06:58', '2018-01-22 14:06:58', '<p style="font-weight: 400;">When I started going to the gym a few years ago with friends I was very low on confidence due to my physical appearance and didn’t have a whole lot of knowledge about nutrition. After a while, I fell into a bit of a rut and needed that extra push, as I felt I had taken myself as far as I could on my own.I started with Brad around 18 months ago and at first, for me, it wasn’t about losing weight it was just to look the part. I was roughly around the 17stone mark, wasn’t taking it too seriously and didn’t expect to stick it out for as long as I have. Not long after I started, my confidence was high and with Brad\'s constant encouragement, I was exceeding what I thought were my own limits, pushing myself and believing in myself.</p>', 'Natasha- Normanton', '', 'inherit', 'closed', 'closed', '', '97-autosave-v1', '', '', '2018-01-22 14:06:58', '2018-01-22 14:06:58', '', 97, 'http://bradfosterpt.uk/2018/01/22/97-autosave-v1/', 0, 'revision', '', 0),
(136, 1, '2018-01-22 14:15:07', '2018-01-22 14:15:07', '', 'before and after 1', '', 'inherit', 'open', 'closed', '', 'before-and-after-1', '', '', '2018-01-22 14:15:07', '2018-01-22 14:15:07', '', 4, 'http://bradfosterpt.uk/wp-content/uploads/2018/01/before-and-after-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2018-01-22 14:15:27', '2018-01-22 14:15:27', '', 'before and after2', '', 'inherit', 'open', 'closed', '', 'before-and-after2', '', '', '2018-01-22 14:15:27', '2018-01-22 14:15:27', '', 4, 'http://bradfosterpt.uk/wp-content/uploads/2018/01/before-and-after2.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2018-01-22 14:15:37', '2018-01-22 14:15:37', '', 'Brad Foster - Head PT', '', 'inherit', 'open', 'closed', '', 'brad-foster-head-pt', '', '', '2018-01-22 14:15:37', '2018-01-22 14:15:37', '', 4, 'http://bradfosterpt.uk/wp-content/uploads/2018/01/Brad-Foster-Head-PT.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2018-01-22 14:15:43', '2018-01-22 14:15:43', '', 'gallery1', '', 'inherit', 'open', 'closed', '', 'gallery1', '', '', '2018-01-22 14:15:43', '2018-01-22 14:15:43', '', 4, 'http://bradfosterpt.uk/wp-content/uploads/2018/01/gallery1.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2018-01-22 14:17:13', '2018-01-22 14:17:13', '', 'gallery2', '', 'inherit', 'open', 'closed', '', 'gallery2', '', '', '2018-01-22 14:17:13', '2018-01-22 14:17:13', '', 4, 'http://bradfosterpt.uk/wp-content/uploads/2018/01/gallery2.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(141, 1, '2018-01-22 14:17:40', '2018-01-22 14:17:40', '<h2 style="text-align: center;"><strong>ABOUT</strong></h2>\r\n&nbsp;\r\n<p style="font-weight: 400;">Hi, my name is Brad Foster head PT at <a href="http://www.fzone.co.uk/">Fitness Zone in Normanton</a>. I have always had a passion for fitness, and have stayed very active my whole life but to me, fitness is not just an activity. It is a way of life and state of mind. The human body is a truly fascinating machine. We are all capable and have the potential to be and do whatever we put our minds to. Unfortunately, we experience barriers and blockades in our life that stop us and slows us down from reaching our desired goals. I have experience in many different levels of personal training including weight loss, sports specific training, bodybuilding, and safe exercise during an injury. I also have worked with many different populations including athletes, children, seniors and those with cardiac or other health issues. I will be more than happy to tailor a fitness program for you to help you reach your fitness goals! “When we begin to re-love and approve of ourselves, it\'s amazing how weight just disappears from our bodies”</p>\r\n\r\n<h2 style="text-align: center;"><strong>SERVICES</strong></h2>\r\n<div dir="ltr" style="text-align: center;"><u><b>ONE2ONE PERSONAL TRAINING</b></u></div>\r\n<div dir="ltr" style="text-align: center;">ONLINE PERSONAL TRAINING</div>\r\n<div dir="ltr" style="text-align: center;"><u><b>GROUP SESSIONS </b></u></div>\r\n<div dir="ltr" style="text-align: center;">KIDS CLASSES</div>\r\n<div dir="ltr" style="text-align: center;"></div>\r\n<div dir="ltr" style="text-align: center;"></div>\r\n<div dir="ltr" style="text-align: center;"><strong>BOOK YOUR FREE CONSULTATION</strong></div>\r\n<div dir="ltr"></div>\r\n<h2 dir="ltr" style="text-align: center;"><strong>GALLERY</strong></h2>\r\n[gallery grids="News" image_size="medium" tiles="true" link="file" ids="136,137,138,139,140"]\r\n<h2 style="text-align: center;">TESTIMONIALS</h2>\r\n[testimonial_rotator id=102]\r\n<h1 style="text-align: center;"></h1>\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-22 14:17:40', '2018-01-22 14:17:40', '', 4, 'http://bradfosterpt.uk/2018/01/22/4-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2018-01-22 14:18:59', '2018-01-22 14:18:59', '<h3 style="text-align: center;"><span style="color: #000080;"><strong>ABOUT</strong></span></h3>\r\n&nbsp;\r\n<p style="font-weight: 400;">Hi, my name is Brad Foster head PT at <a href="http://www.fzone.co.uk/">Fitness Zone in Normanton</a>. I have always had a passion for fitness, and have stayed very active my whole life but to me, fitness is not just an activity. It is a way of life and state of mind. The human body is a truly fascinating machine. We are all capable and have the potential to be and do whatever we put our minds to. Unfortunately, we experience barriers and blockades in our life that stop us and slows us down from reaching our desired goals. I have experience in many different levels of personal training including weight loss, sports specific training, bodybuilding, and safe exercise during an injury. I also have worked with many different populations including athletes, children, seniors and those with cardiac or other health issues. I will be more than happy to tailor a fitness program for you to help you reach your fitness goals! “When we begin to re-love and approve of ourselves, it\'s amazing how weight just disappears from our bodies”</p>\r\n&nbsp;\r\n<h3 style="text-align: center;"><span style="color: #000080;"><strong>SERVICES</strong></span></h3>\r\n<div dir="ltr" style="text-align: center;"><u><b>ONE2ONE PERSONAL TRAINING</b></u></div>\r\n<div dir="ltr" style="text-align: center;">ONLINE PERSONAL TRAINING</div>\r\n<div dir="ltr" style="text-align: center;"><u><b>GROUP SESSIONS </b></u></div>\r\n<div dir="ltr" style="text-align: center;">KIDS CLASSES</div>\r\n<div dir="ltr" style="text-align: center;"></div>\r\n<div dir="ltr" style="text-align: center;"></div>\r\n<div dir="ltr" style="text-align: center;"><strong>BOOK YOUR FREE CONSULTATION</strong></div>\r\n<div dir="ltr"></div>\r\n<div dir="ltr"></div>\r\n<h3 dir="ltr" style="text-align: center;"><span style="color: #000080;"><strong>GALLERY</strong></span></h3>\r\n&nbsp;\r\n\r\n[gallery grids="News" image_size="medium" tiles="true" link="file" ids="136,137,138,139,140"]\r\n<h3 style="text-align: center;"><span style="color: #000080;">TESTIMONIALS</span></h3>\r\n&nbsp;\r\n\r\n[testimonial_rotator id=102]\r\n<h1 style="text-align: center;"></h1>\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-22 14:18:59', '2018-01-22 14:18:59', '', 4, 'http://bradfosterpt.uk/2018/01/22/4-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2018-01-22 14:20:23', '2018-01-22 14:20:23', '<h1 style="text-align: center;"><span style="color: #333333;"><strong>ABOUT</strong></span></h1>\r\n&nbsp;\r\n<p style="font-weight: 400;">Hi, my name is Brad Foster head PT at <a href="http://www.fzone.co.uk/">Fitness Zone in Normanton</a>. I have always had a passion for fitness, and have stayed very active my whole life but to me, fitness is not just an activity. It is a way of life and state of mind. The human body is a truly fascinating machine. We are all capable and have the potential to be and do whatever we put our minds to. Unfortunately, we experience barriers and blockades in our life that stop us and slows us down from reaching our desired goals. I have experience in many different levels of personal training including weight loss, sports specific training, bodybuilding, and safe exercise during an injury. I also have worked with many different populations including athletes, children, seniors and those with cardiac or other health issues. I will be more than happy to tailor a fitness program for you to help you reach your fitness goals! “When we begin to re-love and approve of ourselves, it\'s amazing how weight just disappears from our bodies”</p>\r\n&nbsp;\r\n<h1 style="text-align: center;"><span style="color: #333333;"><strong>SERVICES</strong></span></h1>\r\n<div dir="ltr" style="text-align: center;"><u><b>ONE2ONE PERSONAL TRAINING</b></u></div>\r\n<div dir="ltr" style="text-align: center;">ONLINE PERSONAL TRAINING</div>\r\n<div dir="ltr" style="text-align: center;"><u><b>GROUP SESSIONS </b></u></div>\r\n<div dir="ltr" style="text-align: center;">KIDS CLASSES</div>\r\n<div dir="ltr" style="text-align: center;"></div>\r\n<h2 dir="ltr" style="text-align: center;"><strong>BOOK YOUR FREE CONSULTATION</strong></h2>\r\n<div dir="ltr"></div>\r\n<div dir="ltr"></div>\r\n<h1 dir="ltr" style="text-align: center;"><span style="color: #333333;"><strong>GALLERY</strong></span></h1>\r\n&nbsp;\r\n\r\n[gallery grids="News" image_size="medium" tiles="true" link="file" ids="136,137,138,139,140"]\r\n<h3></h3>\r\n<h1 style="text-align: center;"><span style="color: #333333;">TESTIMONIALS</span></h1>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[testimonial_rotator id=102]\r\n<h1 style="text-align: center;"></h1>\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-22 14:20:23', '2018-01-22 14:20:23', '', 4, 'http://bradfosterpt.uk/2018/01/22/4-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2018-01-22 14:21:47', '2018-01-22 14:21:47', '<h1 style="text-align: center;"><span style="color: #333333;"><strong>ABOUT</strong></span></h1>\r\n&nbsp;\r\n<p style="font-weight: 400;">Hi, my name is Brad Foster head PT at <a href="http://www.fzone.co.uk/">Fitness Zone in Normanton</a>. I have always had a passion for fitness, and have stayed very active my whole life but to me, fitness is not just an activity. It is a way of life and state of mind. The human body is a truly fascinating machine. We are all capable and have the potential to be and do whatever we put our minds to. Unfortunately, we experience barriers and blockades in our life that stop us and slows us down from reaching our desired goals. I have experience in many different levels of personal training including weight loss, sports specific training, bodybuilding, and safe exercise during an injury. I also have worked with many different populations including athletes, children, seniors and those with cardiac or other health issues. I will be more than happy to tailor a fitness program for you to help you reach your fitness goals! “When we begin to re-love and approve of ourselves, it\'s amazing how weight just disappears from our bodies”</p>\r\n&nbsp;\r\n<h1 style="text-align: center;"><span style="color: #333333;"><strong>SERVICES</strong></span></h1>\r\n<div dir="ltr" style="text-align: center;"><u><b>ONE2ONE PERSONAL TRAINING</b></u></div>\r\n<div dir="ltr" style="text-align: center;">ONLINE PERSONAL TRAINING</div>\r\n<div dir="ltr" style="text-align: center;"><u><b>GROUP SESSIONS </b></u></div>\r\n<div dir="ltr" style="text-align: center;">KIDS CLASSES</div>\r\n<div dir="ltr" style="text-align: center;"></div>\r\n<h3 dir="ltr" style="text-align: center;"><span style="color: #008000;"><strong>BOOK YOUR FREE CONSULTATION</strong></span></h3>\r\n<div dir="ltr"></div>\r\n<div dir="ltr"></div>\r\n<h1 dir="ltr" style="text-align: center;"><span style="color: #333333;"><strong>GALLERY</strong></span></h1>\r\n&nbsp;\r\n\r\n[gallery grids="News" image_size="medium" tiles="true" link="file" ids="136,137,138,139,140"]\r\n<h3></h3>\r\n<h1 style="text-align: center;"><span style="color: #333333;">TESTIMONIALS</span></h1>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[testimonial_rotator id=102]\r\n<h1 style="text-align: center;"></h1>\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-22 14:21:47', '2018-01-22 14:21:47', '', 4, 'http://bradfosterpt.uk/2018/01/22/4-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2018-01-22 14:23:25', '2018-01-22 14:23:25', '<h2 style="text-align: center;"><span style="color: #333333;"><strong>ABOUT</strong></span></h2>\r\n&nbsp;\r\n<p style="font-weight: 400;">Hi, my name is Brad Foster head PT at <a href="http://www.fzone.co.uk/">Fitness Zone in Normanton</a>. I have always had a passion for fitness, and have stayed very active my whole life but to me, fitness is not just an activity. It is a way of life and state of mind. The human body is a truly fascinating machine. We are all capable and have the potential to be and do whatever we put our minds to. Unfortunately, we experience barriers and blockades in our life that stop us and slows us down from reaching our desired goals. I have experience in many different levels of personal training including weight loss, sports specific training, bodybuilding, and safe exercise during an injury. I also have worked with many different populations including athletes, children, seniors and those with cardiac or other health issues. I will be more than happy to tailor a fitness program for you to help you reach your fitness goals! “When we begin to re-love and approve of ourselves, it\'s amazing how weight just disappears from our bodies”</p>\r\n&nbsp;\r\n<h2 style="text-align: center;"><span style="color: #333333;"><strong>SERVICES</strong></span></h2>\r\n<div dir="ltr" style="text-align: center;"><u><b>ONE2ONE PERSONAL TRAINING</b></u></div>\r\n<div dir="ltr" style="text-align: center;">ONLINE PERSONAL TRAINING</div>\r\n<div dir="ltr" style="text-align: center;"><u><b>GROUP SESSIONS </b></u></div>\r\n<div dir="ltr" style="text-align: center;">KIDS CLASSES</div>\r\n<div dir="ltr" style="text-align: center;"></div>\r\n<h3 dir="ltr" style="text-align: center;"><span style="color: #008000;"><strong>BOOK YOUR FREE CONSULTATION</strong></span></h3>\r\n<div dir="ltr"></div>\r\n<div dir="ltr"></div>\r\n<h2 dir="ltr" style="text-align: center;"><span style="color: #333333;"><strong>GALLERY</strong></span></h2>\r\n&nbsp;\r\n\r\n[gallery grids="News" image_size="medium" tiles="true" link="file" ids="136,137,138,139,140"]\r\n<h3></h3>\r\n<h2 style="text-align: center;"><span style="color: #333333;">TESTIMONIALS</span></h2>\r\n[testimonial_rotator id=102]\r\n\r\nContact\r\n\r\n&nbsp;\r\n<h1 style="text-align: center;"></h1>\r\n&nbsp;\r\n\r\n<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d9446.893122686386!2d-1.4039853!3d53.7053765!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf354095ceabda1fc!2sFitness+Zone!5e0!3m2!1sen!2suk!4v1516630969328" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-22 14:23:25', '2018-01-22 14:23:25', '', 4, 'http://bradfosterpt.uk/2018/01/22/4-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2018-01-22 14:27:51', '2018-01-22 14:27:51', '<h2 style="text-align: center;"><span style="color: #333333;"><strong>ABOUT</strong></span></h2>\r\n&nbsp;\r\n<p style="font-weight: 400;">Hi, my name is Brad Foster head PT at <a href="http://www.fzone.co.uk/">Fitness Zone in Normanton</a>. I have always had a passion for fitness, and have stayed very active my whole life but to me, fitness is not just an activity. It is a way of life and state of mind. The human body is a truly fascinating machine. We are all capable and have the potential to be and do whatever we put our minds to. Unfortunately, we experience barriers and blockades in our life that stop us and slows us down from reaching our desired goals. I have experience in many different levels of personal training including weight loss, sports specific training, bodybuilding, and safe exercise during an injury. I also have worked with many different populations including athletes, children, seniors and those with cardiac or other health issues. I will be more than happy to tailor a fitness program for you to help you reach your fitness goals! “When we begin to re-love and approve of ourselves, it\'s amazing how weight just disappears from our bodies”</p>\r\n&nbsp;\r\n<h2 style="text-align: center;"><span style="color: #333333;"><strong>SERVICES</strong></span></h2>\r\n<div dir="ltr" style="text-align: center;"><u><b>ONE2ONE PERSONAL TRAINING</b></u></div>\r\n<div dir="ltr" style="text-align: center;">ONLINE PERSONAL TRAINING</div>\r\n<div dir="ltr" style="text-align: center;"><u><b>GROUP SESSIONS </b></u></div>\r\n<div dir="ltr" style="text-align: center;">KIDS CLASSES</div>\r\n<div dir="ltr" style="text-align: center;"></div>\r\n<div dir="ltr"></div>\r\n<div dir="ltr"></div>\r\n<h2 dir="ltr" style="text-align: center;"><span style="color: #333333;"><strong>GALLERY</strong></span></h2>\r\n&nbsp;\r\n\r\n[gallery grids="News" image_size="medium" tiles="true" link="file" ids="136,137,138,139,140"]\r\n<h3></h3>\r\n<h2 style="text-align: center;"><span style="color: #333333;">TESTIMONIALS</span></h2>\r\n[testimonial_rotator id=102]\r\n<h2 style="text-align: center;"><strong>CONTACT</strong></h2>\r\n<div dir="ltr" style="text-align: center;">MOB: 07889790071</div>\r\n<div dir="ltr" style="text-align: center;">EMAIL <a href="mailto:BRADFOSTER01@HOTMAIL.CO.UK" target="_blank" rel="noopener">BRADFOSTER01@HOTMAIL.CO.UK</a></div>\r\n<h3 dir="ltr" style="text-align: center;"><span style="color: #008000;"><strong>BOOK YOUR FREE CONSULTATION TODAY</strong></span></h3>\r\n<iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d9446.893122686386!2d-1.4039853!3d53.7053765!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf354095ceabda1fc!2sFitness+Zone!5e0!3m2!1sen!2suk!4v1516630969328" width="100%" height="450" frameborder="0" allowfullscreen="allowfullscreen"></iframe>', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-22 14:27:51', '2018-01-22 14:27:51', '', 4, 'http://bradfosterpt.uk/2018/01/22/4-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2018-01-22 14:28:20', '2018-01-22 14:28:20', '<h2 style="text-align: center;"><span style="color: #333333;"><strong>ABOUT</strong></span></h2>\r\n&nbsp;\r\n<p style="font-weight: 400;">Hi, my name is Brad Foster head PT at <a href="http://www.fzone.co.uk/">Fitness Zone in Normanton</a>. I have always had a passion for fitness, and have stayed very active my whole life but to me, fitness is not just an activity. It is a way of life and state of mind. The human body is a truly fascinating machine. We are all capable and have the potential to be and do whatever we put our minds to. Unfortunately, we experience barriers and blockades in our life that stop us and slows us down from reaching our desired goals. I have experience in many different levels of personal training including weight loss, sports specific training, bodybuilding, and safe exercise during an injury. I also have worked with many different populations including athletes, children, seniors and those with cardiac or other health issues. I will be more than happy to tailor a fitness program for you to help you reach your fitness goals! “When we begin to re-love and approve of ourselves, it\'s amazing how weight just disappears from our bodies”</p>\r\n&nbsp;\r\n<h2 style="text-align: center;"><span style="color: #333333;"><strong>SERVICES</strong></span></h2>\r\n<div dir="ltr" style="text-align: center;"><u><b>ONE2ONE PERSONAL TRAINING</b></u></div>\r\n<div dir="ltr" style="text-align: center;">ONLINE PERSONAL TRAINING</div>\r\n<div dir="ltr" style="text-align: center;"><u><b>GROUP SESSIONS </b></u></div>\r\n<div dir="ltr" style="text-align: center;">KIDS CLASSES</div>\r\n<div dir="ltr" style="text-align: center;"></div>\r\n<div dir="ltr"></div>\r\n<div dir="ltr"></div>\r\n<h2 dir="ltr" style="text-align: center;"><span style="color: #333333;"><strong>GALLERY</strong></span></h2>\r\n&nbsp;\r\n\r\n[gallery grids="News" image_size="medium" tiles="true" link="file" ids="136,137,138,139,140"]\r\n<h3></h3>\r\n<h2 style="text-align: center;"><span style="color: #333333;">TESTIMONIALS</span></h2>\r\n[testimonial_rotator id=102]\r\n<h2 style="text-align: center;"><strong>CONTACT</strong></h2>\r\n<div dir="ltr" style="text-align: center;">MOB: 07889790071</div>\r\n<div dir="ltr" style="text-align: center;">EMAIL <a href="mailto:BRADFOSTER01@HOTMAIL.CO.UK" target="_blank" rel="noopener">BRADFOSTER01@HOTMAIL.CO.UK</a></div>\r\n<p dir="ltr" style="text-align: center;"><strong><span style="color: #008000;">BOOK YOUR FREE CONSULTATION TODAY</span></strong></p>\r\n<iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d9446.893122686386!2d-1.4039853!3d53.7053765!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf354095ceabda1fc!2sFitness+Zone!5e0!3m2!1sen!2suk!4v1516630969328" width="100%" height="450" frameborder="0" allowfullscreen="allowfullscreen"></iframe>', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-22 14:28:20', '2018-01-22 14:28:20', '', 4, 'http://bradfosterpt.uk/2018/01/22/4-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2018-01-22 14:33:06', '2018-01-22 14:33:06', '{\n    "sydney::wrapper_bottom_padding": {\n        "value": "10",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 14:33:06"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd8bb295a-ba74-4088-9d9b-040920789fa5', '', '', '2018-01-22 14:33:06', '2018-01-22 14:33:06', '', 0, 'http://bradfosterpt.uk/2018/01/22/d8bb295a-ba74-4088-9d9b-040920789fa5/', 0, 'customize_changeset', '', 0),
(149, 1, '2018-01-22 14:38:47', '2018-01-22 14:38:47', '{\n    "sydney-child::site_logo": {\n        "value": "http://bradfosterpt.uk/wp-content/uploads/2018/01/logo-footer.png",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 14:38:47"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e9b3be73-c2e0-4e43-99f2-a5a3f67f7b15', '', '', '2018-01-22 14:38:47', '2018-01-22 14:38:47', '', 0, 'http://bradfosterpt.uk/2018/01/22/e9b3be73-c2e0-4e43-99f2-a5a3f67f7b15/', 0, 'customize_changeset', '', 0),
(150, 1, '2018-01-22 14:38:59', '2018-01-22 14:38:59', '{\n    "sydney-child::wrapper_top_padding": {\n        "value": "0",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 14:38:59"\n    },\n    "sydney-child::wrapper_bottom_padding": {\n        "value": "10",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 14:38:59"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f1dd1c99-91f3-48d8-87b0-b481f1daf21c', '', '', '2018-01-22 14:38:59', '2018-01-22 14:38:59', '', 0, 'http://bradfosterpt.uk/2018/01/22/f1dd1c99-91f3-48d8-87b0-b481f1daf21c/', 0, 'customize_changeset', '', 0),
(151, 1, '2018-01-22 14:40:20', '2018-01-22 14:40:20', '{\n    "sydney-child::slider_image_1": {\n        "value": "http://bradfosterpt.uk/wp-content/uploads/2018/01/bradfoster1.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 14:39:35"\n    },\n    "sydney-child::slider_image_2": {\n        "value": "http://bradfosterpt.uk/wp-content/uploads/2018/01/bradfoster1.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 14:39:35"\n    },\n    "sydney-child::slider_title_1": {\n        "value": "BRAD FOSTER",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 14:40:20"\n    },\n    "sydney-child::slider_subtitle_1": {\n        "value": "Personal trainer",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 14:40:20"\n    },\n    "sydney-child::slider_title_2": {\n        "value": "UNLOCK YOUR PHYSIQUE",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 14:40:20"\n    },\n    "sydney-child::slider_subtitle_2": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 14:40:20"\n    },\n    "sydney-child::slider_button_url": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 14:40:20"\n    },\n    "sydney-child::slider_button_text": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 14:40:20"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '07e740ca-675a-419d-b758-22b1c6052a0b', '', '', '2018-01-22 14:40:20', '2018-01-22 14:40:20', '', 0, 'http://bradfosterpt.uk/?p=151', 0, 'customize_changeset', '', 0),
(152, 1, '2018-01-22 14:40:28', '2018-01-22 14:40:28', '{\n    "sydney-child::sticky_menu": {\n        "value": "static",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 14:40:28"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b8ac7176-7277-4f02-ab74-c4c022ae29bc', '', '', '2018-01-22 14:40:28', '2018-01-22 14:40:28', '', 0, 'http://bradfosterpt.uk/2018/01/22/b8ac7176-7277-4f02-ab74-c4c022ae29bc/', 0, 'customize_changeset', '', 0),
(153, 1, '2018-01-22 14:40:45', '2018-01-22 14:40:45', '{\n    "custom_css[sydney-child]": {\n        "value": "p.subtitle {\\n\\t\\n\\tcolor:black !important;\\n\\tfont-weight:bold !important;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 14:40:45"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '203476b4-e0d4-410d-bb06-0a17b6bfcc71', '', '', '2018-01-22 14:40:45', '2018-01-22 14:40:45', '', 0, 'http://bradfosterpt.uk/2018/01/22/203476b4-e0d4-410d-bb06-0a17b6bfcc71/', 0, 'customize_changeset', '', 0),
(154, 1, '2018-01-22 14:40:45', '2018-01-22 14:40:45', 'p.subtitle {\n	\n	color:black !important;\n	font-weight:bold !important;\n}\n\n.footer-widgets {\n    padding: 20px 0;\n    background-color: #252525;\n}', 'sydney-child', '', 'publish', 'closed', 'closed', '', 'sydney-child', '', '', '2018-01-22 15:10:48', '2018-01-22 15:10:48', '', 0, 'http://bradfosterpt.uk/2018/01/22/sydney-child/', 0, 'custom_css', '', 0),
(155, 1, '2018-01-22 14:40:45', '2018-01-22 14:40:45', 'p.subtitle {\n	\n	color:black !important;\n	font-weight:bold !important;\n}', 'sydney-child', '', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2018-01-22 14:40:45', '2018-01-22 14:40:45', '', 154, 'http://bradfosterpt.uk/2018/01/22/154-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2018-01-22 14:56:33', '2018-01-22 14:56:33', '', 'bell fat tip', '', 'inherit', 'open', 'closed', '', 'bell-fat-tip', '', '', '2018-01-22 14:56:33', '2018-01-22 14:56:33', '', 0, 'http://bradfosterpt.uk/wp-content/uploads/2018/01/bell-fat-tip.gif', 0, 'attachment', 'image/gif', 0),
(158, 1, '2018-01-22 15:07:45', '2018-01-22 15:07:45', '', 'five-veges-that-kill-stomack-fat', '', 'inherit', 'open', 'closed', '', 'five-veges-that-kill-stomack-fat', '', '', '2018-01-22 15:07:45', '2018-01-22 15:07:45', '', 0, 'http://bradfosterpt.uk/wp-content/uploads/2018/01/five-veges-that-kill-stomack-fat.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2018-01-22 15:09:33', '2018-01-22 15:09:33', '{\n    "custom_css[sydney-child]": {\n        "value": "p.subtitle {\\n\\t\\n\\tcolor:black !important;\\n\\tfont-weight:bold !important;\\n}\\n\\n.footer-widgets {\\n    padding: 5px 0;\\n    background-color: #252525;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 15:09:33"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '76e002ee-5496-47b7-b2a3-e3ef9458698a', '', '', '2018-01-22 15:09:33', '2018-01-22 15:09:33', '', 0, 'http://bradfosterpt.uk/2018/01/22/76e002ee-5496-47b7-b2a3-e3ef9458698a/', 0, 'customize_changeset', '', 0),
(160, 1, '2018-01-22 15:09:33', '2018-01-22 15:09:33', 'p.subtitle {\n	\n	color:black !important;\n	font-weight:bold !important;\n}\n\n.footer-widgets {\n    padding: 5px 0;\n    background-color: #252525;\n}', 'sydney-child', '', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2018-01-22 15:09:33', '2018-01-22 15:09:33', '', 154, 'http://bradfosterpt.uk/2018/01/22/154-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2018-01-22 15:10:48', '2018-01-22 15:10:48', '{\n    "custom_css[sydney-child]": {\n        "value": "p.subtitle {\\n\\t\\n\\tcolor:black !important;\\n\\tfont-weight:bold !important;\\n}\\n\\n.footer-widgets {\\n    padding: 20px 0;\\n    background-color: #252525;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2018-01-22 15:10:48"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '28ef0f84-5db6-4f94-b60d-a01b1565e813', '', '', '2018-01-22 15:10:48', '2018-01-22 15:10:48', '', 0, 'http://bradfosterpt.uk/2018/01/22/28ef0f84-5db6-4f94-b60d-a01b1565e813/', 0, 'customize_changeset', '', 0),
(162, 1, '2018-01-22 15:10:48', '2018-01-22 15:10:48', 'p.subtitle {\n	\n	color:black !important;\n	font-weight:bold !important;\n}\n\n.footer-widgets {\n    padding: 20px 0;\n    background-color: #252525;\n}', 'sydney-child', '', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2018-01-22 15:10:48', '2018-01-22 15:10:48', '', 154, 'http://bradfosterpt.uk/2018/01/22/154-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2018-01-22 15:12:32', '2018-01-22 15:12:32', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://bradfosterpt.uk/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-01-22 15:12:32', '2018-01-22 15:12:32', '', 2, 'http://bradfosterpt.uk/2018/01/22/2-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2018-01-22 15:33:49', '2018-01-22 15:33:49', '<h2 style="text-align: center;"><span style="color: #333333;"><strong>ABOUT</strong></span></h2>\r\n&nbsp;\r\n<p style="font-weight: 400;">Hi, my name is Brad Foster head PT at <a href="http://www.fzone.co.uk/">Fitness Zone in Normanton</a>. I have always had a passion for fitness, and have stayed very active my whole life but to me, fitness is not just an activity. It is a way of life and state of mind. The human body is a truly fascinating machine. We are all capable and have the potential to be and do whatever we put our minds to. Unfortunately, we experience barriers and blockades in our life that stop us and slows us down from reaching our desired goals. I have experience in many different levels of personal training including weight loss, sports specific training, bodybuilding, and safe exercise during an injury. I also have worked with many different populations including athletes, children, seniors and those with cardiac or other health issues. I will be more than happy to tailor a fitness program for you to help you reach your fitness goals! “When we begin to re-love and approve of ourselves, it\'s amazing how weight just disappears from our bodies”</p>\r\n&nbsp;\r\n<h2 style="text-align: center;"><span style="color: #333333;"><strong>SERVICES</strong></span></h2>\r\n<div dir="ltr" style="text-align: center;"><u><b>ONE2ONE PERSONAL TRAINING</b></u></div>\r\n<div dir="ltr" style="text-align: center;">ONLINE PERSONAL TRAINING</div>\r\n<div dir="ltr" style="text-align: center;"><u><b>GROUP SESSIONS </b></u></div>\r\n<div dir="ltr" style="text-align: center;">KIDS CLASSES</div>\r\n<div dir="ltr" style="text-align: center;"></div>\r\n<div dir="ltr"></div>\r\n<div dir="ltr"></div>\r\n<h2 dir="ltr" style="text-align: center;"><span style="color: #333333;"><strong>GALLERY</strong></span></h2>\r\n&nbsp;\r\n\r\n[gallery grids="News" image_size="medium" tiles="true" link="file" ids="136,137,138,139,140"]\r\n<h3></h3>&nbsp;\r\n<h2 style="text-align: center;"><span style="color: #333333;">TESTIMONIALS</span></h2>\r\n[testimonial_rotator id=102]\r\n<h2 style="text-align: center;"><strong>CONTACT</strong></h2>\r\n<div dir="ltr" style="text-align: center;">MOB: 07889790071</div>\r\n<div dir="ltr" style="text-align: center;">EMAIL <a href="mailto:BRADFOSTER01@HOTMAIL.CO.UK" target="_blank" rel="noopener">BRADFOSTER01@HOTMAIL.CO.UK</a></div>\r\n<p dir="ltr" style="text-align: center;"><strong><span style="color: #008000;">BOOK YOUR FREE CONSULTATION TODAY</span></strong></p>\r\n<iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d9446.893122686386!2d-1.4039853!3d53.7053765!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf354095ceabda1fc!2sFitness+Zone!5e0!3m2!1sen!2suk!4v1516630969328" width="100%" height="450" frameborder="0" allowfullscreen="allowfullscreen"></iframe>', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-22 15:33:49', '2018-01-22 15:33:49', '', 4, 'http://bradfosterpt.uk/4-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_prli_clicks`
--

CREATE TABLE `wp_prli_clicks` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `btype` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `bversion` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `os` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `referer` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `robot` tinyint(4) DEFAULT '0',
  `first_click` tinyint(4) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `link_id` int(11) DEFAULT NULL,
  `vuid` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_prli_clicks`
--

INSERT INTO `wp_prli_clicks` (`id`, `ip`, `browser`, `btype`, `bversion`, `os`, `referer`, `host`, `uri`, `robot`, `first_click`, `created_at`, `link_id`, `vuid`) VALUES
(1, '89.234.68.71', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.8) Gecko/20100721 Firefox/3.6.8', '', '', '', 'http://bradfosterpt.uk', '', '/mqtl', 0, 1, '2018-01-23 14:17:42', 1, '5a6744065c1e4'),
(2, '89.234.68.71', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.8) Gecko/20100721 Firefox/3.6.8', '', '', '', 'http://bradfosterpt.uk', '', '/lr2q', 0, 1, '2018-01-23 14:18:18', 2, '5a67442a63846'),
(3, '194.68.17.5', 'DomainCrawler/3.0 (info@domaincrawler.com; http://www.domaincrawler.com/bradfosterpt.uk)', '', '', '', '', '', '/lr2q', 1, 1, '2018-01-25 13:25:15', 2, '5a69dabbe68cd'),
(4, '194.68.17.5', 'DomainCrawler/3.0 (info@domaincrawler.com; http://www.domaincrawler.com/bradfosterpt.uk)', '', '', '', '', '', '/mqtl', 1, 1, '2018-01-25 13:25:15', 1, '5a69dabbe6d0b'),
(5, '167.114.172.223', 'Mozilla/5.0 (compatible; Dataprovider.com;)', '', '', '', '', '', '/lr2q', 0, 1, '2018-01-29 22:51:42', 2, '5a6fa57e3ebbd'),
(6, '167.114.172.223', 'Mozilla/5.0 (compatible; Dataprovider.com;)', '', '', '', '', '', '/mqtl', 0, 1, '2018-01-29 22:51:43', 1, '5a6fa57e3ebbd'),
(7, '89.234.68.69', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.8) Gecko/20100721 Firefox/3.6.8', '', '', '', 'http://bradfosterpt.uk', '', '/mqtl', 0, 1, '2018-02-02 05:02:49', 1, '5a73f0f9b7b67'),
(8, '89.234.68.69', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.8) Gecko/20100721 Firefox/3.6.8', '', '', '', 'http://bradfosterpt.uk', '', '/lr2q', 0, 1, '2018-02-02 05:03:26', 2, '5a73f11e672e7'),
(9, '89.234.68.100', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.8) Gecko/20100721 Firefox/3.6.8', '', '', '', 'http://bradfosterpt.uk', '', '/mqtl', 0, 1, '2018-02-02 05:23:54', 1, '5a73f5ea27be8'),
(10, '89.234.68.100', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.8) Gecko/20100721 Firefox/3.6.8', '', '', '', 'http://bradfosterpt.uk', '', '/lr2q', 0, 1, '2018-02-02 05:24:34', 2, '5a73f612b0adc');

-- --------------------------------------------------------

--
-- Table structure for table `wp_prli_groups`
--

CREATE TABLE `wp_prli_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_prli_links`
--

CREATE TABLE `wp_prli_links` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `url` text COLLATE utf8mb4_unicode_520_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `nofollow` tinyint(1) DEFAULT '0',
  `track_me` tinyint(1) DEFAULT '1',
  `param_forwarding` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `param_struct` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `redirect_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '307',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_prli_links`
--

INSERT INTO `wp_prli_links` (`id`, `name`, `description`, `url`, `slug`, `nofollow`, `track_me`, `param_forwarding`, `param_struct`, `redirect_type`, `created_at`, `updated_at`, `group_id`) VALUES
(1, 'venus factor footer add 1', 'venus factor footer add 1', 'http://60f186oxw5qndpb8wa-kjzm4dm.hop.clickbank.net/?tid=BFPTF1', 'mqtl', 1, 1, '0', NULL, '301', '2018-01-22 14:56:10', '2018-01-22 14:56:10', 0),
(2, '2 week diet footer add 2', '2 week diet footer add 2', 'http://0619daoyj7mqer4ua3sdo4hf42.hop.clickbank.net/?tid=BFPTF2', 'lr2q', 1, 1, '0', NULL, '301', '2018-01-22 15:05:46', '2018-01-22 15:05:46', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_prli_link_metas`
--

CREATE TABLE `wp_prli_link_metas` (
  `id` int(11) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  `meta_order` int(4) DEFAULT '0',
  `link_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_prli_link_metas`
--

INSERT INTO `wp_prli_link_metas` (`id`, `meta_key`, `meta_value`, `meta_order`, `link_id`, `created_at`) VALUES
(1, 'delay', '0', 0, 1, '2018-01-22 14:56:10'),
(2, 'delay', '0', 0, 2, '2018-01-22 15:05:46');

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
(2, 'Top Menu', 'top-menu', 0);

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
(19, 2, 0);

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
(2, 2, 'nav_menu', '', 0, 1);

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
(1, 1, 'nickname', 'fran'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"51.7.60.0";}'),
(19, 1, 'wp_user-settings', 'editor=tinymce&hidetb=1&libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1516635929'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'session_tokens', 'a:1:{s:64:"90855a0d22dec0cf6b67a91a7c6611ca23b650edbcce08ac15fddf9739109a8c";a:4:{s:10:"expiration";i:1517754888;s:2:"ip";s:11:"51.7.60.253";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36";s:5:"login";i:1516545288;}}'),
(25, 1, 'closedpostboxes_dashboard', 'a:5:{i:0;s:19:"dashboard_right_now";i:1;s:18:"dashboard_activity";i:2;s:9:"themeisle";i:3;s:21:"dashboard_quick_press";i:4;s:17:"dashboard_primary";}'),
(26, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(28, 1, 'tgmpa_dismissed_notice_tgmpa', '1');

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
(1, 'fran', '$P$BV8MaSUXwtQBLBISKubONyuCQq4s8T/', 'fran', 'fmcgee1974@googlemail.com', '', '2018-01-21 12:32:08', '', 0, 'fran');

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
-- Indexes for table `wp_prli_clicks`
--
ALTER TABLE `wp_prli_clicks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `browser` (`browser`),
  ADD KEY `btype` (`btype`),
  ADD KEY `bversion` (`bversion`),
  ADD KEY `os` (`os`),
  ADD KEY `referer` (`referer`),
  ADD KEY `host` (`host`),
  ADD KEY `uri` (`uri`),
  ADD KEY `robot` (`robot`),
  ADD KEY `first_click` (`first_click`),
  ADD KEY `vuid` (`vuid`);

--
-- Indexes for table `wp_prli_groups`
--
ALTER TABLE `wp_prli_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `wp_prli_links`
--
ALTER TABLE `wp_prli_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `name` (`name`),
  ADD KEY `nofollow` (`nofollow`),
  ADD KEY `track_me` (`track_me`),
  ADD KEY `param_forwarding` (`param_forwarding`),
  ADD KEY `param_struct` (`param_struct`),
  ADD KEY `redirect_type` (`redirect_type`),
  ADD KEY `slug` (`slug`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `updated_at` (`updated_at`);

--
-- Indexes for table `wp_prli_link_metas`
--
ALTER TABLE `wp_prli_link_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_key` (`meta_key`),
  ADD KEY `link_id` (`link_id`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=414;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;
--
-- AUTO_INCREMENT for table `wp_prli_clicks`
--
ALTER TABLE `wp_prli_clicks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_prli_groups`
--
ALTER TABLE `wp_prli_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_prli_links`
--
ALTER TABLE `wp_prli_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_prli_link_metas`
--
ALTER TABLE `wp_prli_link_metas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
