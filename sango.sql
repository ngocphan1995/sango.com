-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2016 at 11:54 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sango`
--

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors`
--

CREATE TABLE IF NOT EXISTS `nv4_authors` (
  `admin_id` mediumint(8) unsigned NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lev` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `files_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `edittime` int(11) NOT NULL DEFAULT '0',
  `is_suspend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `susp_reason` text COLLATE utf8mb4_unicode_ci,
  `check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_authors`
--

INSERT INTO `nv4_authors` (`admin_id`, `editor`, `lev`, `files_level`, `position`, `addtime`, `edittime`, `is_suspend`, `susp_reason`, `check_num`, `last_login`, `last_ip`, `last_agent`) VALUES
(1, 'ckeditor', 1, 'adobe,archives,audio,documents,flash,images,real,video|1|1|1', 'Administrator', 0, 0, 0, '', '67048f0964584a841f76e3879826658f', 1465377213, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_config`
--

CREATE TABLE IF NOT EXISTS `nv4_authors_config` (
`id` mediumint(8) unsigned NOT NULL,
  `keyname` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_module`
--

CREATE TABLE IF NOT EXISTS `nv4_authors_module` (
`mid` mediumint(8) NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) NOT NULL DEFAULT '0',
  `act_1` tinyint(4) NOT NULL DEFAULT '0',
  `act_2` tinyint(4) NOT NULL DEFAULT '1',
  `act_3` tinyint(4) NOT NULL DEFAULT '1',
  `checksum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_authors_module`
--

INSERT INTO `nv4_authors_module` (`mid`, `module`, `lang_key`, `weight`, `act_1`, `act_2`, `act_3`, `checksum`) VALUES
(1, 'siteinfo', 'mod_siteinfo', 1, 1, 1, 1, '030b736b28b8fc916deca4ba02194a14'),
(2, 'authors', 'mod_authors', 2, 1, 1, 1, '019c7873b38317113d59ce2c1d68dfde'),
(3, 'settings', 'mod_settings', 3, 1, 1, 0, '7e05420223e7fa03a84dc3d34f9b26bc'),
(4, 'database', 'mod_database', 4, 1, 0, 0, '07b00699b0954514910ecc2c8311b33a'),
(5, 'webtools', 'mod_webtools', 5, 1, 0, 0, '3570fad3046074295c530e96818448c8'),
(6, 'seotools', 'mod_seotools', 6, 1, 0, 0, 'f722ee281aeeb057bb55144dde6753ec'),
(7, 'language', 'mod_language', 7, 1, 1, 0, '04ae52bf3cd40abafb6ae7a88d84d041'),
(8, 'modules', 'mod_modules', 8, 1, 1, 0, 'b0ef1307d6e53df03c88a74f1251b958'),
(9, 'themes', 'mod_themes', 9, 1, 1, 0, '31b945facdcb8b08a050053b5027ca6e'),
(10, 'extensions', 'mod_extensions', 10, 1, 0, 0, '3b6064e6108231474d0f083aa3e3b8e7'),
(11, 'upload', 'mod_upload', 11, 1, 1, 1, 'a6222f631ba0b56fb77ba0cc2bb6e55d');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banip`
--

CREATE TABLE IF NOT EXISTS `nv4_banip` (
`id` mediumint(8) NOT NULL,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_click`
--

CREATE TABLE IF NOT EXISTS `nv4_banners_click` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `click_time` int(11) unsigned NOT NULL DEFAULT '0',
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_clients`
--

CREATE TABLE IF NOT EXISTS `nv4_banners_clients` (
`id` mediumint(8) unsigned NOT NULL,
  `login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_time` int(11) unsigned NOT NULL DEFAULT '0',
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yim` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploadtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_plans`
--

CREATE TABLE IF NOT EXISTS `nv4_banners_plans` (
`id` smallint(5) unsigned NOT NULL,
  `blang` char(2) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_banners_plans`
--

INSERT INTO `nv4_banners_plans` (`id`, `blang`, `title`, `description`, `form`, `width`, `height`, `act`) VALUES
(1, '', 'Quang cao giua trang', '', 'sequential', 575, 72, 1),
(2, '', 'Quang cao trai', '', 'sequential', 212, 800, 1),
(3, '', 'Quang cao Phai', '', 'random', 250, 500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_rows`
--

CREATE TABLE IF NOT EXISTS `nv4_banners_rows` (
`id` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_ext` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(4) unsigned NOT NULL DEFAULT '0',
  `height` int(4) unsigned NOT NULL DEFAULT '0',
  `file_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageforswf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `click_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_blank',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `publ_time` int(11) unsigned NOT NULL DEFAULT '0',
  `exp_time` int(11) unsigned NOT NULL DEFAULT '0',
  `hits_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_banners_rows`
--

INSERT INTO `nv4_banners_rows` (`id`, `title`, `pid`, `clid`, `file_name`, `file_ext`, `file_mime`, `width`, `height`, `file_alt`, `imageforswf`, `click_url`, `target`, `add_time`, `publ_time`, `exp_time`, `hits_total`, `act`, `weight`) VALUES
(2, 'vinades', 2, 0, 'vinades.jpg', 'jpg', 'image/jpeg', 212, 400, '', '', 'http://vinades.vn', '_blank', 1456905063, 1456905063, 0, 0, 1, 2),
(3, 'Quang cao giua trang', 1, 0, 'webnhanh.jpg', 'png', 'image/jpeg', 575, 72, '', '', 'http://webnhanh.vn', '_blank', 1456905063, 1456905063, 0, 0, 1, 1),
(4, '123host_Nukeviet', 3, 0, '123host_nukeviet.jpg', 'jpg', 'image/jpeg', 250, 250, '', '', 'http://event.123host.vn/link/out/338', '_blank', 1453194858, 1453194858, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_config`
--

CREATE TABLE IF NOT EXISTS `nv4_config` (
  `lang` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sys',
  `module` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config_value` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_config`
--

INSERT INTO `nv4_config` (`lang`, `module`, `config_name`, `config_value`) VALUES
('sys', 'site', 'closed_site', '0'),
('sys', 'site', 'admin_theme', 'admin_default'),
('sys', 'site', 'date_pattern', 'l, d/m/Y'),
('sys', 'site', 'time_pattern', 'H:i'),
('sys', 'site', 'online_upd', '1'),
('sys', 'site', 'statistic', '1'),
('sys', 'site', 'mailer_mode', ''),
('sys', 'site', 'smtp_host', 'smtp.gmail.com'),
('sys', 'site', 'smtp_ssl', '1'),
('sys', 'site', 'smtp_port', '465'),
('sys', 'site', 'smtp_username', 'user@gmail.com'),
('sys', 'site', 'smtp_password', ''),
('sys', 'site', 'googleAnalyticsID', ''),
('sys', 'site', 'googleAnalyticsSetDomainName', '0'),
('sys', 'site', 'googleAnalyticsMethod', 'classic'),
('sys', 'site', 'searchEngineUniqueID', ''),
('sys', 'site', 'metaTagsOgp', '1'),
('sys', 'site', 'pageTitleMode', 'pagetitle'),
('sys', 'site', 'description_length', '170'),
('sys', 'global', 'ssl_https', '0'),
('sys', 'global', 'notification_active', '1'),
('sys', 'global', 'notification_autodel', '15'),
('sys', 'global', 'site_keywords', 'NukeViet, portal, mysql, php'),
('sys', 'global', 'site_phone', ''),
('sys', 'global', 'block_admin_ip', '0'),
('sys', 'global', 'admfirewall', '0'),
('sys', 'global', 'dump_autobackup', '1'),
('sys', 'global', 'dump_backup_ext', 'gz'),
('sys', 'global', 'dump_backup_day', '30'),
('sys', 'global', 'gfx_chk', '3'),
('sys', 'global', 'file_allowed_ext', 'adobe,archives,audio,documents,flash,images,real,video'),
('sys', 'global', 'forbid_extensions', 'php,php3,php4,php5,phtml,inc'),
('sys', 'global', 'forbid_mimes', ''),
('sys', 'global', 'nv_max_size', '2097152'),
('sys', 'global', 'upload_checking_mode', 'mild'),
('sys', 'global', 'upload_alt_require', '1'),
('sys', 'global', 'upload_auto_alt', '1'),
('sys', 'global', 'allowuserreg', '1'),
('sys', 'global', 'allowuserlogin', '1'),
('sys', 'global', 'allowuserloginmulti', '0'),
('sys', 'global', 'allowloginchange', '0'),
('sys', 'global', 'allowquestion', '0'),
('sys', 'global', 'allowuserpublic', '1'),
('sys', 'global', 'useactivate', '2'),
('sys', 'global', 'allowmailchange', '1'),
('sys', 'global', 'allow_sitelangs', 'vi'),
('sys', 'global', 'read_type', '0'),
('sys', 'global', 'rewrite_optional', '0'),
('sys', 'global', 'rewrite_endurl', '/'),
('sys', 'global', 'rewrite_exturl', '.html'),
('sys', 'global', 'rewrite_op_mod', ''),
('sys', 'global', 'autocheckupdate', '1'),
('sys', 'global', 'autoupdatetime', '24'),
('sys', 'global', 'gzip_method', '1'),
('sys', 'global', 'is_user_forum', '0'),
('sys', 'global', 'authors_detail_main', '0'),
('sys', 'global', 'spadmin_add_admin', '1'),
('sys', 'global', 'openid_servers', ''),
('sys', 'global', 'timestamp', '8'),
('sys', 'global', 'openid_processing', '0'),
('sys', 'global', 'captcha_type', '1'),
('sys', 'global', 'version', '4.0.29'),
('sys', 'global', 'whoviewuser', '2'),
('sys', 'global', 'facebook_client_id', ''),
('sys', 'global', 'facebook_client_secret', ''),
('sys', 'global', 'google_client_id', ''),
('sys', 'global', 'google_client_secret', ''),
('sys', 'global', 'cookie_httponly', '1'),
('sys', 'global', 'admin_check_pass_time', '1800'),
('sys', 'global', 'user_check_pass_time', '1800'),
('sys', 'global', 'auto_login_after_reg', '1'),
('vi', 'global', 'theme_type', 'r,d,m'),
('sys', 'global', 'cookie_secure', '0'),
('sys', 'global', 'nv_unick_type', '4'),
('sys', 'global', 'nv_upass_type', '2'),
('sys', 'global', 'is_flood_blocker', '1'),
('sys', 'global', 'max_requests_60', '40'),
('sys', 'global', 'max_requests_300', '150'),
('sys', 'global', 'nv_display_errors_list', '1'),
('sys', 'global', 'display_errors_list', '1'),
('sys', 'global', 'nv_auto_resize', '1'),
('sys', 'global', 'dump_interval', '1'),
('sys', 'global', 'cdn_url', ''),
('sys', 'define', 'nv_unickmin', '4'),
('sys', 'define', 'nv_unickmax', '20'),
('sys', 'define', 'nv_upassmin', '8'),
('sys', 'define', 'nv_upassmax', '20'),
('sys', 'define', 'nv_gfx_num', '6'),
('sys', 'define', 'nv_gfx_width', '150'),
('sys', 'define', 'nv_gfx_height', '40'),
('sys', 'define', 'nv_max_width', '1500'),
('sys', 'define', 'nv_max_height', '1500'),
('sys', 'define', 'nv_live_cookie_time', '31104000'),
('sys', 'define', 'nv_live_session_time', '0'),
('sys', 'define', 'nv_anti_iframe', '0'),
('sys', 'define', 'nv_anti_agent', '0'),
('sys', 'define', 'nv_allowed_html_tags', 'embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, s, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre'),
('sys', 'define', 'dir_forum', ''),
('vi', 'global', 'site_domain', ''),
('vi', 'global', 'site_name', 'Phan Thị Ngọc'),
('vi', 'global', 'site_logo', 'uploads/logo_0.jpg'),
('vi', 'global', 'site_banner', ''),
('vi', 'global', 'site_favicon', ''),
('vi', 'global', 'site_description', 'giải pháp tuyệt vời cho cuộc sống hiện đại'),
('vi', 'global', 'site_keywords', ''),
('vi', 'global', 'site_theme', 'sango'),
('vi', 'global', 'mobile_theme', 'mobile_default'),
('vi', 'global', 'site_home_module', 'shops'),
('vi', 'global', 'switch_mobi_des', '1'),
('vi', 'global', 'upload_logo', ''),
('vi', 'global', 'upload_logo_pos', 'bottomRight'),
('vi', 'global', 'autologosize1', '50'),
('vi', 'global', 'autologosize2', '40'),
('vi', 'global', 'autologosize3', '30'),
('vi', 'global', 'autologomod', ''),
('vi', 'global', 'name_show', '0'),
('vi', 'global', 'cronjobs_next_time', '1465379888'),
('vi', 'global', 'disable_site_content', 'Vì lý do kỹ thuật website tạm ngưng hoạt động. Thành thật xin lỗi các bạn vì sự bất tiện này!'),
('vi', 'global', 'ssl_https_modules', ''),
('vi', 'seotools', 'prcservice', ''),
('vi', 'about', 'auto_postcomm', '1'),
('vi', 'about', 'allowed_comm', '-1'),
('vi', 'about', 'view_comm', '6'),
('vi', 'about', 'setcomm', '4'),
('vi', 'about', 'activecomm', '0'),
('vi', 'about', 'emailcomm', '0'),
('vi', 'about', 'adminscomm', ''),
('vi', 'about', 'sortcomm', '0'),
('vi', 'about', 'captcha', '1'),
('vi', 'news', 'indexfile', 'viewcat_main_right'),
('vi', 'news', 'per_page', '20'),
('vi', 'news', 'st_links', '10'),
('vi', 'news', 'homewidth', '100'),
('vi', 'news', 'homeheight', '150'),
('vi', 'news', 'blockwidth', '70'),
('vi', 'news', 'blockheight', '75'),
('vi', 'news', 'imagefull', '460'),
('vi', 'news', 'copyright', 'Chú ý: Việc đăng lại bài viết trên ở website hoặc các phương tiện truyền thông khác mà không ghi rõ nguồn http://nukeviet.vn là vi phạm bản quyền'),
('vi', 'news', 'showtooltip', '1'),
('vi', 'news', 'tooltip_position', 'bottom'),
('vi', 'news', 'tooltip_length', '150'),
('vi', 'news', 'showhometext', '1'),
('vi', 'news', 'timecheckstatus', '0'),
('vi', 'news', 'config_source', '0'),
('vi', 'news', 'show_no_image', ''),
('vi', 'news', 'allowed_rating_point', '1'),
('vi', 'news', 'facebookappid', ''),
('vi', 'news', 'socialbutton', '1'),
('vi', 'news', 'alias_lower', '1'),
('vi', 'news', 'tags_alias', '0'),
('vi', 'news', 'auto_tags', '0'),
('vi', 'news', 'tags_remind', '1'),
('vi', 'news', 'structure_upload', 'Ym'),
('vi', 'news', 'imgposition', '2'),
('vi', 'news', 'auto_postcomm', '1'),
('vi', 'news', 'allowed_comm', '-1'),
('vi', 'news', 'view_comm', '6'),
('vi', 'news', 'setcomm', '4'),
('vi', 'news', 'activecomm', '1'),
('vi', 'news', 'emailcomm', '0'),
('vi', 'news', 'adminscomm', ''),
('vi', 'news', 'sortcomm', '0'),
('vi', 'news', 'captcha', '1'),
('vi', 'page', 'auto_postcomm', '1'),
('vi', 'page', 'allowed_comm', '-1'),
('vi', 'page', 'view_comm', '6'),
('vi', 'page', 'setcomm', '4'),
('vi', 'page', 'activecomm', '0'),
('vi', 'page', 'emailcomm', '0'),
('vi', 'page', 'adminscomm', ''),
('vi', 'page', 'sortcomm', '0'),
('vi', 'page', 'captcha', '1'),
('vi', 'siteterms', 'auto_postcomm', '1'),
('vi', 'siteterms', 'allowed_comm', '-1'),
('vi', 'siteterms', 'view_comm', '6'),
('vi', 'siteterms', 'setcomm', '4'),
('vi', 'siteterms', 'activecomm', '0'),
('vi', 'siteterms', 'emailcomm', '0'),
('vi', 'siteterms', 'adminscomm', ''),
('vi', 'siteterms', 'sortcomm', '0'),
('vi', 'siteterms', 'captcha', '1'),
('vi', 'freecontent', 'next_execute', '0'),
('vi', 'contact', 'bodytext', 'Để không ngừng nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nữa các yêu cầu của Quý khách, chúng tôi mong muốn nhận được các thông tin phản hồi. Nếu Quý khách có bất kỳ thắc mắc hoặc đóng góp nào, xin vui lòng liên hệ với chúng tôi theo thông tin dưới đây. Chúng tôi sẽ phản hồi lại Quý khách trong thời gian sớm nhất.'),
('sys', 'site', 'statistics_timezone', 'Asia/Bangkok'),
('sys', 'site', 'site_email', 'ngocphan12031995@gmail.com'),
('sys', 'global', 'error_set_logs', '1'),
('sys', 'global', 'error_send_email', 'ngocphan12031995@gmail.com'),
('sys', 'global', 'site_lang', 'vi'),
('sys', 'global', 'my_domains', 'sango.com'),
('sys', 'global', 'cookie_prefix', 'nv4c_t738o'),
('sys', 'global', 'session_prefix', 'nv4s_w1FCJ0'),
('sys', 'global', 'site_timezone', 'byCountry'),
('sys', 'global', 'proxy_blocker', '0'),
('sys', 'global', 'str_referer_blocker', '0'),
('sys', 'global', 'lang_multi', '1'),
('sys', 'global', 'lang_geo', '0'),
('sys', 'global', 'ftp_server', 'localhost'),
('sys', 'global', 'ftp_port', '21'),
('sys', 'global', 'ftp_user_name', ''),
('sys', 'global', 'ftp_user_pass', 'WHTdDgWihWcSdzBgd8WAyVh03Q4FooVnEncwYHfFgMk,'),
('sys', 'global', 'ftp_path', '/'),
('sys', 'global', 'ftp_check_login', '0'),
('vi', 'shops', 'review_active', '1'),
('vi', 'shops', 'point_new_order', '0'),
('vi', 'shops', 'point_conversion', '0'),
('vi', 'shops', 'point_active', '0'),
('vi', 'shops', 'tags_remind', '0'),
('vi', 'shops', 'auto_tags', '1'),
('vi', 'shops', 'tags_alias', '0'),
('vi', 'shops', 'active_warehouse', '1'),
('vi', 'shops', 'active_gift', '1'),
('vi', 'shops', 'active_wishlist', '1'),
('vi', 'shops', 'use_coupons', '0'),
('vi', 'shops', 'use_shipping', '0'),
('vi', 'shops', 'show_displays', '0'),
('vi', 'shops', 'show_compare', '0'),
('vi', 'shops', 'show_product_code', '1'),
('vi', 'shops', 'timecheckstatus', '0'),
('vi', 'shops', 'active_tooltip', '1'),
('vi', 'shops', 'groups_price', '3'),
('vi', 'shops', 'active_payment', '1'),
('vi', 'shops', 'order_nexttime', '0'),
('vi', 'shops', 'order_day', '0'),
('vi', 'shops', 'active_order_number', '0'),
('vi', 'shops', 'active_price', '1'),
('vi', 'shops', 'active_order_non_detail', '1'),
('vi', 'shops', 'active_order_popup', '1'),
('vi', 'shops', 'active_order', '1'),
('vi', 'shops', 'active_showhomtext', '1'),
('vi', 'shops', 'active_guest_order', '1'),
('vi', 'shops', 'facebookappid', ''),
('vi', 'shops', 'format_code_id', 'S%06s'),
('vi', 'shops', 'format_order_id', 'S%06s'),
('vi', 'shops', 'auto_check_order', '1'),
('vi', 'shops', 'post_auto_member', '0'),
('vi', 'shops', 'weight_unit', 'g'),
('vi', 'shops', 'money_unit', 'VND'),
('vi', 'shops', 'per_row', '3'),
('vi', 'shops', 'per_page', '20'),
('vi', 'shops', 'home_view', 'view_home_all'),
('vi', 'shops', 'image_size', '100x100'),
('vi', 'shops', 'review_check', '1'),
('vi', 'shops', 'review_captcha', '1'),
('vi', 'shops', 'group_price', ''),
('vi', 'shops', 'groups_notify', '3'),
('vi', 'shops', 'template_active', '0'),
('vi', 'shops', 'download_active', '0'),
('vi', 'shops', 'download_groups', '6'),
('vi', 'shops', 'alias_lower', '1'),
('vi', 'shops', 'auto_postcomm', '1'),
('vi', 'shops', 'allowed_comm', '-1'),
('vi', 'shops', 'view_comm', '6'),
('vi', 'shops', 'setcomm', '4'),
('vi', 'shops', 'activecomm', '1'),
('vi', 'shops', 'emailcomm', '0'),
('vi', 'shops', 'adminscomm', ''),
('vi', 'shops', 'sortcomm', '0'),
('vi', 'shops', 'captcha', '1'),
('vi', 'cong-trinh-da-thuc-hien', 'indexfile', 'viewcat_main_right'),
('vi', 'cong-trinh-da-thuc-hien', 'per_page', '20'),
('vi', 'cong-trinh-da-thuc-hien', 'st_links', '10'),
('vi', 'cong-trinh-da-thuc-hien', 'homewidth', '100'),
('vi', 'cong-trinh-da-thuc-hien', 'homeheight', '150'),
('vi', 'cong-trinh-da-thuc-hien', 'blockwidth', '70'),
('vi', 'cong-trinh-da-thuc-hien', 'blockheight', '75'),
('vi', 'cong-trinh-da-thuc-hien', 'imagefull', '460'),
('vi', 'cong-trinh-da-thuc-hien', 'copyright', 'Chú ý: Việc đăng lại bài viết trên ở website hoặc các phương tiện truyền thông khác mà không ghi rõ nguồn http://nukeviet.vn là vi phạm bản quyền'),
('vi', 'cong-trinh-da-thuc-hien', 'showtooltip', '1'),
('vi', 'cong-trinh-da-thuc-hien', 'tooltip_position', 'bottom'),
('vi', 'cong-trinh-da-thuc-hien', 'tooltip_length', '150'),
('vi', 'cong-trinh-da-thuc-hien', 'showhometext', '1'),
('vi', 'cong-trinh-da-thuc-hien', 'timecheckstatus', '0'),
('vi', 'cong-trinh-da-thuc-hien', 'config_source', '0'),
('vi', 'cong-trinh-da-thuc-hien', 'show_no_image', ''),
('vi', 'cong-trinh-da-thuc-hien', 'allowed_rating_point', '1'),
('vi', 'cong-trinh-da-thuc-hien', 'facebookappid', ''),
('vi', 'cong-trinh-da-thuc-hien', 'socialbutton', '1'),
('vi', 'cong-trinh-da-thuc-hien', 'alias_lower', '1'),
('vi', 'cong-trinh-da-thuc-hien', 'tags_alias', '0'),
('vi', 'cong-trinh-da-thuc-hien', 'auto_tags', '0'),
('vi', 'cong-trinh-da-thuc-hien', 'tags_remind', '1'),
('vi', 'cong-trinh-da-thuc-hien', 'structure_upload', 'Ym'),
('vi', 'cong-trinh-da-thuc-hien', 'imgposition', '2'),
('vi', 'cong-trinh-da-thuc-hien', 'auto_postcomm', '1'),
('vi', 'cong-trinh-da-thuc-hien', 'allowed_comm', '-1'),
('vi', 'cong-trinh-da-thuc-hien', 'view_comm', '6'),
('vi', 'cong-trinh-da-thuc-hien', 'setcomm', '4'),
('vi', 'cong-trinh-da-thuc-hien', 'activecomm', '1'),
('vi', 'cong-trinh-da-thuc-hien', 'emailcomm', '0'),
('vi', 'cong-trinh-da-thuc-hien', 'adminscomm', ''),
('vi', 'cong-trinh-da-thuc-hien', 'sortcomm', '0'),
('vi', 'cong-trinh-da-thuc-hien', 'captcha', '1'),
('en', 'global', 'site_domain', ''),
('en', 'global', 'site_name', 'NukeViet CMS 4.x'),
('en', 'global', 'site_logo', ''),
('en', 'global', 'site_banner', ''),
('en', 'global', 'site_favicon', ''),
('en', 'global', 'site_description', 'Sharing success, connect passions'),
('en', 'global', 'site_keywords', ''),
('en', 'global', 'site_theme', 'sango'),
('en', 'global', 'mobile_theme', 'mobile_default'),
('en', 'global', 'site_home_module', 'users'),
('en', 'global', 'switch_mobi_des', '1'),
('en', 'global', 'upload_logo', ''),
('en', 'global', 'upload_logo_pos', 'bottomRight'),
('en', 'global', 'autologosize1', '50'),
('en', 'global', 'autologosize2', '40'),
('en', 'global', 'autologosize3', '30'),
('en', 'global', 'autologomod', ''),
('en', 'global', 'name_show', '1'),
('en', 'global', 'cronjobs_next_time', '1458727246'),
('en', 'global', 'disable_site_content', 'For technical reasons Web site temporary not available. we are very sorry for that inconvenience!'),
('en', 'global', 'ssl_https_modules', ''),
('en', 'about', 'auto_postcomm', '1'),
('en', 'about', 'allowed_comm', '-1'),
('en', 'about', 'view_comm', '6'),
('en', 'about', 'setcomm', '4'),
('en', 'about', 'activecomm', '0'),
('en', 'about', 'emailcomm', '0'),
('en', 'about', 'adminscomm', ''),
('en', 'about', 'sortcomm', '0'),
('en', 'about', 'captcha', '1'),
('en', 'news', 'indexfile', 'viewcat_main_right'),
('en', 'news', 'per_page', '20'),
('en', 'news', 'st_links', '10'),
('en', 'news', 'homewidth', '100'),
('en', 'news', 'homeheight', '150'),
('en', 'news', 'blockwidth', '70'),
('en', 'news', 'blockheight', '75'),
('en', 'news', 'imagefull', '460'),
('en', 'news', 'copyright', 'Note: The above article reprinted at the website or other media sources not specify the source http://nukeviet.vn is copyright infringement'),
('en', 'news', 'showtooltip', '1'),
('en', 'news', 'tooltip_position', 'bottom'),
('en', 'news', 'tooltip_length', '150'),
('en', 'news', 'showhometext', '1'),
('en', 'news', 'timecheckstatus', '0'),
('en', 'news', 'config_source', '0'),
('en', 'news', 'show_no_image', ''),
('en', 'news', 'allowed_rating_point', '1'),
('en', 'news', 'facebookappid', ''),
('en', 'news', 'socialbutton', '1'),
('en', 'news', 'alias_lower', '1'),
('en', 'news', 'tags_alias', '0'),
('en', 'news', 'auto_tags', '0'),
('en', 'news', 'tags_remind', '1'),
('en', 'news', 'structure_upload', 'Ym'),
('en', 'news', 'imgposition', '2'),
('en', 'news', 'auto_postcomm', '1'),
('en', 'news', 'allowed_comm', '-1'),
('en', 'news', 'view_comm', '6'),
('en', 'news', 'setcomm', '4'),
('en', 'news', 'activecomm', '1'),
('en', 'news', 'emailcomm', '0'),
('en', 'news', 'adminscomm', ''),
('en', 'news', 'sortcomm', '0'),
('en', 'news', 'captcha', '1'),
('en', 'page', 'auto_postcomm', '1'),
('en', 'page', 'allowed_comm', '-1'),
('en', 'page', 'view_comm', '6'),
('en', 'page', 'setcomm', '4'),
('en', 'page', 'activecomm', '1'),
('en', 'page', 'emailcomm', '0'),
('en', 'page', 'adminscomm', ''),
('en', 'page', 'sortcomm', '0'),
('en', 'page', 'captcha', '1'),
('en', 'siteterms', 'auto_postcomm', '1'),
('en', 'siteterms', 'allowed_comm', '-1'),
('en', 'siteterms', 'view_comm', '6'),
('en', 'siteterms', 'setcomm', '4'),
('en', 'siteterms', 'activecomm', '1'),
('en', 'siteterms', 'emailcomm', '0'),
('en', 'siteterms', 'adminscomm', ''),
('en', 'siteterms', 'sortcomm', '0'),
('en', 'siteterms', 'captcha', '1'),
('en', 'freecontent', 'next_execute', '0'),
('en', 'global', 'theme_type', 'r,d,m');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_cookies`
--

CREATE TABLE IF NOT EXISTS `nv4_cookies` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT '0',
  `secure` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_counter`
--

CREATE TABLE IF NOT EXISTS `nv4_counter` (
  `c_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_val` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT '0',
  `c_count` int(11) unsigned NOT NULL DEFAULT '0',
  `vi_count` int(11) unsigned NOT NULL DEFAULT '0',
  `en_count` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_counter`
--

INSERT INTO `nv4_counter` (`c_type`, `c_val`, `last_update`, `c_count`, `vi_count`, `en_count`) VALUES
('c_time', 'start', 0, 0, 0, 0),
('c_time', 'last', 0, 1465377915, 0, 0),
('total', 'hits', 1465377915, 193, 192, 1),
('year', '2016', 1465377915, 193, 192, 1),
('year', '2017', 0, 0, 0, 0),
('year', '2018', 0, 0, 0, 0),
('year', '2019', 0, 0, 0, 0),
('year', '2020', 0, 0, 0, 0),
('year', '2021', 0, 0, 0, 0),
('year', '2022', 0, 0, 0, 0),
('year', '2023', 0, 0, 0, 0),
('year', '2024', 0, 0, 0, 0),
('month', 'Jan', 0, 0, 0, 0),
('month', 'Feb', 0, 0, 0, 0),
('month', 'Mar', 1459418544, 171, 170, 1),
('month', 'Apr', 1460026468, 21, 21, 0),
('month', 'May', 0, 0, 0, 0),
('month', 'Jun', 1465377915, 1, 1, 0),
('month', 'Jul', 0, 0, 0, 0),
('month', 'Aug', 0, 0, 0, 0),
('month', 'Sep', 0, 0, 0, 0),
('month', 'Oct', 0, 0, 0, 0),
('month', 'Nov', 0, 0, 0, 0),
('month', 'Dec', 0, 0, 0, 0),
('day', '01', 1459509082, 0, 0, 0),
('day', '02', 1459605766, 0, 0, 0),
('day', '03', 1459692731, 0, 0, 0),
('day', '04', 1459785376, 0, 0, 0),
('day', '05', 1459822009, 0, 0, 0),
('day', '06', 1459958982, 0, 0, 0),
('day', '07', 1460026468, 0, 0, 0),
('day', '08', 1465377915, 1, 1, 0),
('day', '09', 1457517062, 0, 0, 0),
('day', '10', 1457625718, 0, 0, 0),
('day', '11', 1457690107, 0, 0, 0),
('day', '12', 0, 0, 0, 0),
('day', '13', 1457887153, 0, 0, 0),
('day', '14', 1457930736, 0, 0, 0),
('day', '15', 1457979876, 0, 0, 0),
('day', '16', 1458122964, 0, 0, 0),
('day', '17', 1458231926, 0, 0, 0),
('day', '18', 1458320394, 0, 0, 0),
('day', '19', 1458373860, 0, 0, 0),
('day', '20', 1458490693, 0, 0, 0),
('day', '21', 1458533842, 0, 0, 0),
('day', '22', 1458664293, 0, 0, 0),
('day', '23', 1458727263, 0, 0, 1),
('day', '24', 1458827729, 0, 0, 0),
('day', '25', 1458923256, 0, 0, 0),
('day', '26', 1458997904, 0, 0, 0),
('day', '27', 1459030958, 0, 0, 0),
('day', '28', 1459158517, 0, 0, 0),
('day', '29', 1459246355, 0, 0, 0),
('day', '30', 1459328445, 0, 0, 0),
('day', '31', 1459418544, 0, 0, 0),
('dayofweek', 'Sunday', 1459692731, 20, 20, 0),
('dayofweek', 'Monday', 1459785376, 34, 34, 0),
('dayofweek', 'Tuesday', 1459822009, 10, 10, 0),
('dayofweek', 'Wednesday', 1465377915, 43, 42, 1),
('dayofweek', 'Thursday', 1460026468, 32, 32, 0),
('dayofweek', 'Friday', 1459509082, 40, 40, 0),
('dayofweek', 'Saturday', 1459605766, 14, 14, 0),
('hour', '00', 1459446187, 0, 0, 0),
('hour', '01', 1459104358, 0, 0, 0),
('hour', '02', 0, 0, 0, 0),
('hour', '03', 1458938149, 0, 0, 0),
('hour', '04', 1459631351, 0, 0, 0),
('hour', '05', 1459030958, 0, 0, 0),
('hour', '06', 1459985727, 0, 0, 0),
('hour', '07', 1459125050, 0, 0, 0),
('hour', '08', 1458869367, 0, 0, 0),
('hour', '09', 1459822009, 0, 0, 0),
('hour', '10', 1458530315, 0, 0, 0),
('hour', '11', 1459313656, 0, 0, 0),
('hour', '12', 1459316441, 0, 0, 0),
('hour', '13', 1458887507, 0, 0, 0),
('hour', '14', 1459929020, 0, 0, 0),
('hour', '15', 1458894461, 0, 0, 0),
('hour', '16', 1465377915, 1, 1, 0),
('hour', '17', 1460026468, 0, 0, 1),
('hour', '18', 1459509082, 0, 0, 0),
('hour', '19', 1458995673, 0, 0, 0),
('hour', '20', 1458997904, 0, 0, 0),
('hour', '21', 1459953818, 0, 0, 0),
('hour', '22', 1459956788, 0, 0, 0),
('hour', '23', 1459958982, 0, 0, 0),
('bot', 'googlebot', 1459985727, 25, 25, 0),
('bot', 'msnbot', 0, 0, 0, 0),
('bot', 'bingbot', 0, 0, 0, 0),
('bot', 'yahooslurp', 0, 0, 0, 0),
('bot', 'w3cvalidator', 0, 0, 0, 0),
('browser', 'opera', 0, 0, 0, 0),
('browser', 'operamini', 0, 0, 0, 0),
('browser', 'webtv', 0, 0, 0, 0),
('browser', 'explorer', 0, 0, 0, 0),
('browser', 'edge', 0, 0, 0, 0),
('browser', 'pocket', 0, 0, 0, 0),
('browser', 'konqueror', 0, 0, 0, 0),
('browser', 'icab', 0, 0, 0, 0),
('browser', 'omniweb', 0, 0, 0, 0),
('browser', 'firebird', 0, 0, 0, 0),
('browser', 'firefox', 1459958982, 90, 89, 1),
('browser', 'iceweasel', 0, 0, 0, 0),
('browser', 'shiretoko', 0, 0, 0, 0),
('browser', 'mozilla', 0, 0, 0, 0),
('browser', 'amaya', 0, 0, 0, 0),
('browser', 'lynx', 0, 0, 0, 0),
('browser', 'safari', 0, 0, 0, 0),
('browser', 'iphone', 1459822009, 4, 4, 0),
('browser', 'ipod', 0, 0, 0, 0),
('browser', 'ipad', 0, 0, 0, 0),
('browser', 'chrome', 1465377915, 74, 74, 0),
('browser', 'android', 0, 0, 0, 0),
('browser', 'googlebot', 1459985727, 25, 25, 0),
('browser', 'yahooslurp', 0, 0, 0, 0),
('browser', 'w3cvalidator', 0, 0, 0, 0),
('browser', 'blackberry', 0, 0, 0, 0),
('browser', 'icecat', 0, 0, 0, 0),
('browser', 'nokias60', 0, 0, 0, 0),
('browser', 'nokia', 0, 0, 0, 0),
('browser', 'msn', 0, 0, 0, 0),
('browser', 'msnbot', 0, 0, 0, 0),
('browser', 'bingbot', 0, 0, 0, 0),
('browser', 'netscape', 0, 0, 0, 0),
('browser', 'galeon', 0, 0, 0, 0),
('browser', 'netpositive', 0, 0, 0, 0),
('browser', 'phoenix', 0, 0, 0, 0),
('browser', 'Mobile', 0, 0, 0, 0),
('browser', 'bots', 0, 0, 0, 0),
('browser', 'Unknown', 0, 0, 0, 0),
('os', 'unknown', 1459985727, 25, 25, 0),
('os', 'win', 0, 0, 0, 0),
('os', 'win10', 0, 0, 0, 0),
('os', 'win8', 1465377915, 163, 162, 1),
('os', 'win7', 0, 0, 0, 0),
('os', 'win2003', 0, 0, 0, 0),
('os', 'winvista', 0, 0, 0, 0),
('os', 'wince', 0, 0, 0, 0),
('os', 'winxp', 0, 0, 0, 0),
('os', 'win2000', 0, 0, 0, 0),
('os', 'apple', 0, 0, 0, 0),
('os', 'linux', 1459418544, 1, 1, 0),
('os', 'os2', 0, 0, 0, 0),
('os', 'beos', 0, 0, 0, 0),
('os', 'iphone', 1459822009, 4, 4, 0),
('os', 'ipod', 0, 0, 0, 0),
('os', 'ipad', 0, 0, 0, 0),
('os', 'blackberry', 0, 0, 0, 0),
('os', 'nokia', 0, 0, 0, 0),
('os', 'freebsd', 0, 0, 0, 0),
('os', 'openbsd', 0, 0, 0, 0),
('os', 'netbsd', 0, 0, 0, 0),
('os', 'sunos', 0, 0, 0, 0),
('os', 'opensolaris', 0, 0, 0, 0),
('os', 'android', 0, 0, 0, 0),
('os', 'irix', 0, 0, 0, 0),
('os', 'palm', 0, 0, 0, 0),
('country', 'AD', 0, 0, 0, 0),
('country', 'AE', 0, 0, 0, 0),
('country', 'AF', 0, 0, 0, 0),
('country', 'AG', 0, 0, 0, 0),
('country', 'AI', 0, 0, 0, 0),
('country', 'AL', 0, 0, 0, 0),
('country', 'AM', 0, 0, 0, 0),
('country', 'AN', 0, 0, 0, 0),
('country', 'AO', 0, 0, 0, 0),
('country', 'AQ', 0, 0, 0, 0),
('country', 'AR', 0, 0, 0, 0),
('country', 'AS', 0, 0, 0, 0),
('country', 'AT', 0, 0, 0, 0),
('country', 'AU', 0, 0, 0, 0),
('country', 'AW', 0, 0, 0, 0),
('country', 'AZ', 0, 0, 0, 0),
('country', 'BA', 0, 0, 0, 0),
('country', 'BB', 0, 0, 0, 0),
('country', 'BD', 0, 0, 0, 0),
('country', 'BE', 0, 0, 0, 0),
('country', 'BF', 0, 0, 0, 0),
('country', 'BG', 0, 0, 0, 0),
('country', 'BH', 0, 0, 0, 0),
('country', 'BI', 0, 0, 0, 0),
('country', 'BJ', 0, 0, 0, 0),
('country', 'BM', 0, 0, 0, 0),
('country', 'BN', 0, 0, 0, 0),
('country', 'BO', 0, 0, 0, 0),
('country', 'BR', 0, 0, 0, 0),
('country', 'BS', 0, 0, 0, 0),
('country', 'BT', 0, 0, 0, 0),
('country', 'BW', 0, 0, 0, 0),
('country', 'BY', 0, 0, 0, 0),
('country', 'BZ', 0, 0, 0, 0),
('country', 'CA', 0, 0, 0, 0),
('country', 'CD', 0, 0, 0, 0),
('country', 'CF', 0, 0, 0, 0),
('country', 'CG', 0, 0, 0, 0),
('country', 'CH', 0, 0, 0, 0),
('country', 'CI', 0, 0, 0, 0),
('country', 'CK', 0, 0, 0, 0),
('country', 'CL', 0, 0, 0, 0),
('country', 'CM', 0, 0, 0, 0),
('country', 'CN', 0, 0, 0, 0),
('country', 'CO', 0, 0, 0, 0),
('country', 'CR', 0, 0, 0, 0),
('country', 'CS', 0, 0, 0, 0),
('country', 'CU', 0, 0, 0, 0),
('country', 'CV', 0, 0, 0, 0),
('country', 'CY', 0, 0, 0, 0),
('country', 'CZ', 0, 0, 0, 0),
('country', 'DE', 0, 0, 0, 0),
('country', 'DJ', 0, 0, 0, 0),
('country', 'DK', 0, 0, 0, 0),
('country', 'DM', 0, 0, 0, 0),
('country', 'DO', 0, 0, 0, 0),
('country', 'DZ', 0, 0, 0, 0),
('country', 'EC', 0, 0, 0, 0),
('country', 'EE', 0, 0, 0, 0),
('country', 'EG', 0, 0, 0, 0),
('country', 'ER', 0, 0, 0, 0),
('country', 'ES', 0, 0, 0, 0),
('country', 'ET', 0, 0, 0, 0),
('country', 'EU', 0, 0, 0, 0),
('country', 'FI', 0, 0, 0, 0),
('country', 'FJ', 0, 0, 0, 0),
('country', 'FK', 0, 0, 0, 0),
('country', 'FM', 0, 0, 0, 0),
('country', 'FO', 0, 0, 0, 0),
('country', 'FR', 0, 0, 0, 0),
('country', 'GA', 0, 0, 0, 0),
('country', 'GB', 0, 0, 0, 0),
('country', 'GD', 0, 0, 0, 0),
('country', 'GE', 0, 0, 0, 0),
('country', 'GF', 0, 0, 0, 0),
('country', 'GH', 0, 0, 0, 0),
('country', 'GI', 0, 0, 0, 0),
('country', 'GL', 0, 0, 0, 0),
('country', 'GM', 0, 0, 0, 0),
('country', 'GN', 0, 0, 0, 0),
('country', 'GP', 0, 0, 0, 0),
('country', 'GQ', 0, 0, 0, 0),
('country', 'GR', 0, 0, 0, 0),
('country', 'GS', 0, 0, 0, 0),
('country', 'GT', 0, 0, 0, 0),
('country', 'GU', 0, 0, 0, 0),
('country', 'GW', 0, 0, 0, 0),
('country', 'GY', 0, 0, 0, 0),
('country', 'HK', 0, 0, 0, 0),
('country', 'HN', 0, 0, 0, 0),
('country', 'HR', 0, 0, 0, 0),
('country', 'HT', 0, 0, 0, 0),
('country', 'HU', 0, 0, 0, 0),
('country', 'ID', 0, 0, 0, 0),
('country', 'IE', 0, 0, 0, 0),
('country', 'IL', 0, 0, 0, 0),
('country', 'IN', 0, 0, 0, 0),
('country', 'IO', 0, 0, 0, 0),
('country', 'IQ', 0, 0, 0, 0),
('country', 'IR', 0, 0, 0, 0),
('country', 'IS', 0, 0, 0, 0),
('country', 'IT', 0, 0, 0, 0),
('country', 'JM', 0, 0, 0, 0),
('country', 'JO', 0, 0, 0, 0),
('country', 'JP', 0, 0, 0, 0),
('country', 'KE', 0, 0, 0, 0),
('country', 'KG', 0, 0, 0, 0),
('country', 'KH', 0, 0, 0, 0),
('country', 'KI', 0, 0, 0, 0),
('country', 'KM', 0, 0, 0, 0),
('country', 'KN', 0, 0, 0, 0),
('country', 'KR', 0, 0, 0, 0),
('country', 'KW', 0, 0, 0, 0),
('country', 'KY', 0, 0, 0, 0),
('country', 'KZ', 0, 0, 0, 0),
('country', 'LA', 0, 0, 0, 0),
('country', 'LB', 0, 0, 0, 0),
('country', 'LC', 0, 0, 0, 0),
('country', 'LI', 0, 0, 0, 0),
('country', 'LK', 0, 0, 0, 0),
('country', 'LR', 0, 0, 0, 0),
('country', 'LS', 0, 0, 0, 0),
('country', 'LT', 0, 0, 0, 0),
('country', 'LU', 0, 0, 0, 0),
('country', 'LV', 0, 0, 0, 0),
('country', 'LY', 0, 0, 0, 0),
('country', 'MA', 0, 0, 0, 0),
('country', 'MC', 0, 0, 0, 0),
('country', 'MD', 0, 0, 0, 0),
('country', 'MG', 0, 0, 0, 0),
('country', 'MH', 0, 0, 0, 0),
('country', 'MK', 0, 0, 0, 0),
('country', 'ML', 0, 0, 0, 0),
('country', 'MM', 0, 0, 0, 0),
('country', 'MN', 0, 0, 0, 0),
('country', 'MO', 0, 0, 0, 0),
('country', 'MP', 0, 0, 0, 0),
('country', 'MQ', 0, 0, 0, 0),
('country', 'MR', 0, 0, 0, 0),
('country', 'MT', 0, 0, 0, 0),
('country', 'MU', 0, 0, 0, 0),
('country', 'MV', 0, 0, 0, 0),
('country', 'MW', 0, 0, 0, 0),
('country', 'MX', 0, 0, 0, 0),
('country', 'MY', 0, 0, 0, 0),
('country', 'MZ', 0, 0, 0, 0),
('country', 'NA', 0, 0, 0, 0),
('country', 'NC', 0, 0, 0, 0),
('country', 'NE', 0, 0, 0, 0),
('country', 'NF', 0, 0, 0, 0),
('country', 'NG', 0, 0, 0, 0),
('country', 'NI', 0, 0, 0, 0),
('country', 'NL', 0, 0, 0, 0),
('country', 'NO', 0, 0, 0, 0),
('country', 'NP', 0, 0, 0, 0),
('country', 'NR', 0, 0, 0, 0),
('country', 'NU', 0, 0, 0, 0),
('country', 'NZ', 0, 0, 0, 0),
('country', 'OM', 0, 0, 0, 0),
('country', 'PA', 0, 0, 0, 0),
('country', 'PE', 0, 0, 0, 0),
('country', 'PF', 0, 0, 0, 0),
('country', 'PG', 0, 0, 0, 0),
('country', 'PH', 0, 0, 0, 0),
('country', 'PK', 0, 0, 0, 0),
('country', 'PL', 0, 0, 0, 0),
('country', 'PR', 0, 0, 0, 0),
('country', 'PS', 0, 0, 0, 0),
('country', 'PT', 0, 0, 0, 0),
('country', 'PW', 0, 0, 0, 0),
('country', 'PY', 0, 0, 0, 0),
('country', 'QA', 0, 0, 0, 0),
('country', 'RE', 0, 0, 0, 0),
('country', 'RO', 0, 0, 0, 0),
('country', 'RU', 0, 0, 0, 0),
('country', 'RW', 0, 0, 0, 0),
('country', 'SA', 0, 0, 0, 0),
('country', 'SB', 0, 0, 0, 0),
('country', 'SC', 0, 0, 0, 0),
('country', 'SD', 0, 0, 0, 0),
('country', 'SE', 0, 0, 0, 0),
('country', 'SG', 0, 0, 0, 0),
('country', 'SI', 0, 0, 0, 0),
('country', 'SK', 0, 0, 0, 0),
('country', 'SL', 0, 0, 0, 0),
('country', 'SM', 0, 0, 0, 0),
('country', 'SN', 0, 0, 0, 0),
('country', 'SO', 0, 0, 0, 0),
('country', 'SR', 0, 0, 0, 0),
('country', 'ST', 0, 0, 0, 0),
('country', 'SV', 0, 0, 0, 0),
('country', 'SY', 0, 0, 0, 0),
('country', 'SZ', 0, 0, 0, 0),
('country', 'TD', 0, 0, 0, 0),
('country', 'TF', 0, 0, 0, 0),
('country', 'TG', 0, 0, 0, 0),
('country', 'TH', 0, 0, 0, 0),
('country', 'TJ', 0, 0, 0, 0),
('country', 'TK', 0, 0, 0, 0),
('country', 'TL', 0, 0, 0, 0),
('country', 'TM', 0, 0, 0, 0),
('country', 'TN', 0, 0, 0, 0),
('country', 'TO', 0, 0, 0, 0),
('country', 'TR', 0, 0, 0, 0),
('country', 'TT', 0, 0, 0, 0),
('country', 'TV', 0, 0, 0, 0),
('country', 'TW', 0, 0, 0, 0),
('country', 'TZ', 0, 0, 0, 0),
('country', 'UA', 0, 0, 0, 0),
('country', 'UG', 0, 0, 0, 0),
('country', 'US', 1459985727, 29, 29, 0),
('country', 'UY', 0, 0, 0, 0),
('country', 'UZ', 0, 0, 0, 0),
('country', 'VA', 0, 0, 0, 0),
('country', 'VC', 0, 0, 0, 0),
('country', 'VE', 0, 0, 0, 0),
('country', 'VG', 0, 0, 0, 0),
('country', 'VI', 0, 0, 0, 0),
('country', 'VN', 1460026468, 24, 24, 0),
('country', 'VU', 0, 0, 0, 0),
('country', 'WS', 0, 0, 0, 0),
('country', 'YE', 0, 0, 0, 0),
('country', 'YT', 0, 0, 0, 0),
('country', 'YU', 0, 0, 0, 0),
('country', 'ZA', 0, 0, 0, 0),
('country', 'ZM', 0, 0, 0, 0),
('country', 'ZW', 0, 0, 0, 0),
('country', 'ZZ', 1465377915, 140, 139, 1),
('country', 'unkown', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_cronjobs`
--

CREATE TABLE IF NOT EXISTS `nv4_cronjobs` (
`id` mediumint(8) unsigned NOT NULL,
  `start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `inter_val` int(11) unsigned NOT NULL DEFAULT '0',
  `run_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `run_func` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_sys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `last_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_result` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vi_cron_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `en_cron_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_cronjobs`
--

INSERT INTO `nv4_cronjobs` (`id`, `start_time`, `inter_val`, `run_file`, `run_func`, `params`, `del`, `is_sys`, `act`, `last_time`, `last_result`, `vi_cron_name`, `en_cron_name`) VALUES
(1, 1456905063, 5, 'online_expired_del.php', 'cron_online_expired_del', '', 0, 1, 1, 1465379588, 1, 'Xóa các dòng ghi trạng thái online đã cũ trong CSDL', 'Delete expired online status'),
(2, 1456905063, 1440, 'dump_autobackup.php', 'cron_dump_autobackup', '', 0, 1, 1, 1465377200, 1, 'Tự động lưu CSDL', 'Automatic backup database'),
(3, 1456905063, 60, 'temp_download_destroy.php', 'cron_auto_del_temp_download', '', 0, 1, 1, 1465377200, 1, 'Xóa các file tạm trong thư mục tmp', 'Empty temporary files'),
(4, 1456905063, 30, 'ip_logs_destroy.php', 'cron_del_ip_logs', '', 0, 1, 1, 1465379280, 1, 'Xóa IP log files, Xóa các file nhật ký truy cập', 'Delete IP log files'),
(5, 1456905063, 1440, 'error_log_destroy.php', 'cron_auto_del_error_log', '', 0, 1, 1, 1465377200, 1, 'Xóa các file error_log quá hạn', 'Delete expired error_log log files'),
(6, 1456905063, 360, 'error_log_sendmail.php', 'cron_auto_sendmail_error_log', '', 0, 1, 0, 0, 0, 'Gửi email các thông báo lỗi cho admin', 'Send error logs to admin'),
(7, 1456905063, 60, 'ref_expired_del.php', 'cron_ref_expired_del', '', 0, 1, 1, 1465377200, 1, 'Xóa các referer quá hạn', 'Delete expired referer'),
(8, 1456905063, 1440, 'siteDiagnostic_update.php', 'cron_siteDiagnostic_update', '', 0, 0, 1, 1465377200, 1, 'Cập nhật đánh giá site từ các máy chủ tìm kiếm', 'Update site diagnostic'),
(9, 1456905063, 60, 'check_version.php', 'cron_auto_check_version', '', 0, 1, 1, 1465377200, 1, 'Kiểm tra phiên bản NukeViet', 'Check NukeViet version'),
(10, 1456905063, 1440, 'notification_autodel.php', 'cron_notification_autodel', '', 0, 1, 1, 1465377200, 1, 'Xóa thông báo cũ', 'Delete old notification');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_about`
--

CREATE TABLE IF NOT EXISTS `nv4_en_about` (
`id` mediumint(8) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_about`
--

INSERT INTO `nv4_en_about` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `gid`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`) VALUES
(1, 'Welcome to NukeViet 3.0', 'Welcome-to-NukeViet-3-0', '', '', 0, '', '<p> NukeViet developed by Vietnamese and for Vietnamese. It&#039;s the 1st opensource CMS in Vietnam. Next generation of NukeViet, version 3.0 coding ground up. Support newest web technology, include xHTML, CSS 3, XTemplate, jQuery, AJAX...<br /> <br /> NukeViet&#039;s has it own core libraries build in. So, it&#039;s doesn&#039;t depend on other exists frameworks. With basic knowledge of PHP and MySQL, you can easily using NukeViet for your purposes.<br /> <br /> NukeViet 3 core is simply but powerful. It support modules can be multiply. We called it abstract modules. It help users automatic crea-te many modules without any line of code from any exists module which support crea-te abstract modules.<br /> <br /> NukeViet 3 support automatic setup modules, blocks, themes at Admin Control Panel. It&#039;s also allow you to share your modules by packed it into packets.<br /> <br /> NukeViet 3 support multi languages in 2 types. Multi interface languages and multi database langguages. Had features support web master to build new languages. Many advance features still developing. Let use it, distribute it and feel about opensource.<br /> <br /> At last, NukeViet 3 is a thanksgiving gift from VINADES.,JSC to community for all of your supports. And we hoping we going to be a biggest opensource CMS not only in VietNam, but also in the world. :).<br /> <br /> If you had any feedbacks and ideas for NukeViet 3 close beta. Feel free to send email to admin@nukeviet.vn. All are welcome<br /> <br /> Best regard.</p>', '', 0, '4', '', 0, 1, 1, 1277266815, 1277266815, 1),
(2, 'NukeViet&#039;s versioning schemes', 'NukeViet-s-versioning-schemes', '', '', 0, '', '<p> NukeViet using 2 versioning schemes:<br /> <br /> I. By numbers (technical purposes):<br /> Structure for numbers is:<br /> major.minor.revision<br /> <br /> 1.Major: Major up-date. Probably not backwards compatible with older version.<br /> 2.Minor: Minor change, may introduce new features, but backwards compatibility is mostly retained.<br /> 3.Revision: Minor bug fixes. Packed for testing or pre-release purposes... Closed beta, open beta, RC, Official release.<br /> <br /> II: By names (new version release management)<br /> Main milestones: Closed beta, Open beta, Release candidate, Official.<br /> 1. Closed beta: Limited testing.<br /> characteristics: New features testing. It may not include in official version if doesn&#039;t accord with community. Closed beta&#039;s name can contain unique numbers. Ex: Closed beta 1, closed beta 2,... Features of previous release may not include in it&#039;s next release. Time release is announced by development team. This milestone stop when system haven&#039;t any major changes.<br /> Purposes: Pre-release version to receive feedbacks and ideas from community. Bug fixes for release version.<br /> Release to: Programmers, expert users.<br /> Supports:<br /> &nbsp;&nbsp;&nbsp; Using: None.<br /> &nbsp;&nbsp;&nbsp; Testing: Documents, not include manual.<br /> Upgrade: None.<br /> <br /> 2. Open beta: Public testing.<br /> characteristics: Features testing, contain full features of official version. It&#039;s almost include in official version even if it doesn&#039;t accord with community. This milestone start after closed beta milestone closed and release weekly to fix bugs. Open beta&#039;s name can contain unique numbers. Ex: Open beta 1, open beta 2,... Next release include all features of it&#039;s previous release. Open beta milestone stop when system haven&#039;t any critical issue.<br /> Purposes: Bug fixed which not detect in closed beta.<br /> Release to: All users of nukeviet.vn forum.<br /> Supports:<br /> &nbsp;&nbsp;&nbsp; Using: Limited. Manual and forum supports.<br /> &nbsp;&nbsp;&nbsp; Testing: Full.<br /> Upgrade: None.<br /> <br /> 3. Release Candidate:<br /> characteristics: Most stable version and prepare for official release. Release candidate&#039;s name can contain unique numbers.<br /> Ex: RC 1, RC 2,... by released number.<br /> If detect cretical issue in this milestone. Another Release Candidate version can be release sooner than release time announced by development team.<br /> Purposes: Reduce bugs of using official version.<br /> Release to: All people.<br /> Supports: Full.<br /> Upgrade: Yes.<br /> <br /> 4. Official:<br /> characteristics: 1st stable release of new version. It only using 1 time. Next release using numbers. Release about 2 weeks after Release Candidate milestone stoped.<br /> Purposes: Stop testing and recommend users using new version.</p>', '', 0, '4', '', 0, 2, 1, 1277267054, 1277693688, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_about_config`
--

CREATE TABLE IF NOT EXISTS `nv4_en_about_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_about_config`
--

INSERT INTO `nv4_en_about_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_blocks_groups`
--

CREATE TABLE IF NOT EXISTS `nv4_en_blocks_groups` (
`bid` mediumint(8) unsigned NOT NULL,
  `theme` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_time` int(11) DEFAULT '0',
  `active` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_blocks_groups`
--

INSERT INTO `nv4_en_blocks_groups` (`bid`, `theme`, `module`, `file_name`, `title`, `link`, `template`, `position`, `exp_time`, `active`, `act`, `groups_view`, `all_func`, `weight`, `config`) VALUES
(1, 'default', 'news', 'module.block_newscenter.php', 'News', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:"numrow";i:6;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";s:12:"length_title";i:0;s:15:"length_hometext";i:0;s:17:"length_othertitle";i:60;s:5:"width";i:500;s:6:"height";i:0;s:7:"nocatid";a:0:{}}'),
(2, 'default', 'banners', 'global.banners.php', 'Center Banner', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:"idplanbanner";i:1;}'),
(3, 'default', 'news', 'global.block_category.php', 'category', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:"catid";i:0;s:12:"title_length";i:25;}'),
(4, 'default', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(5, 'default', 'banners', 'global.banners.php', 'Left Banner', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:"idplanbanner";i:2;}'),
(6, 'default', 'about', 'global.about.php', 'About', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(7, 'default', 'voting', 'global.voting_random.php', 'voting', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 2, ''),
(8, 'default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:"copyright_by";s:0:"";s:13:"copyright_url";s:0:"";s:9:"design_by";s:12:"VINADES.,JSC";s:10:"design_url";s:18:"http://vinades.vn/";s:13:"siteterms_url";s:39:"/index.php?language=en&amp;nv=siteterms";}'),
(9, 'default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, ''),
(10, 'default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:"level";s:1:"M";s:15:"pixel_per_point";i:4;s:11:"outer_frame";i:1;}'),
(11, 'default', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(12, 'default', 'users', 'global.user_button.php', 'Login site', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(13, 'default', 'theme', 'global.company_info.php', 'Company Info', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:11:{s:12:"company_name";s:58:"Công ty cổ phần phát triển nguồn mở Việt Nam";s:16:"company_sortname";s:12:"VINADES.,JSC";s:15:"company_regcode";s:0:"";s:16:"company_regplace";s:0:"";s:21:"company_licensenumber";s:0:"";s:22:"company_responsibility";s:0:"";s:15:"company_address";s:72:"Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội";s:13:"company_phone";s:14:"+84-4-85872007";s:11:"company_fax";s:14:"+84-4-35500914";s:13:"company_email";s:18:"contact@vinades.vn";s:15:"company_website";s:17:"http://vinades.vn";}'),
(14, 'default', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:"menuid";i:1;s:12:"title_length";i:20;}'),
(15, 'default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, ''),
(16, 'default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:"facebook";s:32:"http://www.facebook.com/nukeviet";s:11:"google_plus";s:32:"https://www.google.com/+nukeviet";s:7:"youtube";s:37:"https://www.youtube.com/user/nukeviet";s:7:"twitter";s:28:"https://twitter.com/nukeviet";}'),
(17, 'default', 'theme', 'global.menu_footer.php', 'Main categories', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:"module_in_menu";a:8:{i:0;s:5:"about";i:1;s:4:"news";i:2;s:5:"users";i:3;s:7:"contact";i:4;s:6:"voting";i:5;s:7:"banners";i:6;s:4:"seek";i:7;s:5:"feeds";}}'),
(18, 'default', 'freecontent', 'global.free_content.php', 'Product', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:7:"blockid";i:1;s:7:"numrows";i:2;}'),
(19, 'mobile_default', 'menu', 'global.metismenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:"menuid";i:1;s:12:"title_length";i:0;}'),
(20, 'mobile_default', 'users', 'global.user_button.php', 'Sign In', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 2, ''),
(21, 'mobile_default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, ''),
(22, 'mobile_default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 2, ''),
(23, 'mobile_default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 3, 'a:4:{s:8:"facebook";s:32:"http://www.facebook.com/nukeviet";s:11:"google_plus";s:32:"https://www.google.com/+nukeviet";s:7:"youtube";s:37:"https://www.youtube.com/user/nukeviet";s:7:"twitter";s:28:"https://twitter.com/nukeviet";}'),
(24, 'mobile_default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 4, 'a:3:{s:5:"level";s:1:"L";s:15:"pixel_per_point";i:4;s:11:"outer_frame";i:1;}'),
(25, 'mobile_default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:"copyright_by";s:0:"";s:13:"copyright_url";s:0:"";s:9:"design_by";s:12:"VINADES.,JSC";s:10:"design_url";s:18:"http://vinades.vn/";s:13:"siteterms_url";s:35:"/index.php?language=en&nv=siteterms";}'),
(26, 'mobile_default', 'theme', 'global.menu_footer.php', 'Categories', '', 'primary', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:"module_in_menu";a:9:{i:0;s:5:"about";i:1;s:4:"news";i:2;s:5:"users";i:3;s:7:"contact";i:4;s:6:"voting";i:5;s:7:"banners";i:6;s:4:"seek";i:7;s:5:"feeds";i:8;s:9:"siteterms";}}'),
(27, 'mobile_default', 'theme', 'global.company_info.php', 'Company Info', '', 'primary', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:11:{s:12:"company_name";s:58:"Công ty cổ phần phát triển nguồn mở Việt Nam";s:16:"company_sortname";s:12:"VINADES.,JSC";s:15:"company_regcode";s:0:"";s:16:"company_regplace";s:0:"";s:21:"company_licensenumber";s:0:"";s:22:"company_responsibility";s:0:"";s:15:"company_address";s:72:"Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội";s:13:"company_phone";s:14:"+84-4-85872007";s:11:"company_fax";s:14:"+84-4-35500914";s:13:"company_email";s:18:"contact@vinades.vn";s:15:"company_website";s:17:"http://vinades.vn";}');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_blocks_weight`
--

CREATE TABLE IF NOT EXISTS `nv4_en_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `func_id` mediumint(8) NOT NULL DEFAULT '0',
  `weight` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_blocks_weight`
--

INSERT INTO `nv4_en_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(13, 1, 1),
(13, 37, 1),
(13, 38, 1),
(13, 39, 1),
(13, 40, 1),
(13, 46, 1),
(13, 47, 1),
(13, 48, 1),
(13, 49, 1),
(13, 56, 1),
(13, 59, 1),
(13, 4, 1),
(13, 5, 1),
(13, 6, 1),
(13, 7, 1),
(13, 8, 1),
(13, 9, 1),
(13, 10, 1),
(13, 11, 1),
(13, 12, 1),
(13, 50, 1),
(13, 58, 1),
(13, 53, 1),
(13, 54, 1),
(13, 30, 1),
(13, 31, 1),
(13, 32, 1),
(13, 33, 1),
(13, 34, 1),
(13, 35, 1),
(13, 36, 1),
(13, 18, 1),
(13, 19, 1),
(13, 20, 1),
(13, 21, 1),
(13, 22, 1),
(13, 23, 1),
(13, 24, 1),
(13, 25, 1),
(13, 26, 1),
(13, 27, 1),
(13, 28, 1),
(13, 57, 1),
(15, 1, 1),
(15, 37, 1),
(15, 38, 1),
(15, 39, 1),
(15, 40, 1),
(15, 46, 1),
(15, 47, 1),
(15, 48, 1),
(15, 49, 1),
(15, 56, 1),
(15, 59, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 11, 1),
(15, 12, 1),
(15, 50, 1),
(15, 58, 1),
(15, 53, 1),
(15, 54, 1),
(15, 30, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(15, 34, 1),
(15, 35, 1),
(15, 36, 1),
(15, 18, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(15, 27, 1),
(15, 28, 1),
(15, 57, 1),
(18, 1, 1),
(18, 37, 1),
(18, 38, 1),
(18, 39, 1),
(18, 40, 1),
(18, 46, 1),
(18, 47, 1),
(18, 48, 1),
(18, 49, 1),
(18, 56, 1),
(18, 59, 1),
(18, 4, 1),
(18, 5, 1),
(18, 6, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 10, 1),
(18, 11, 1),
(18, 12, 1),
(18, 50, 1),
(18, 58, 1),
(18, 53, 1),
(18, 54, 1),
(18, 30, 1),
(18, 31, 1),
(18, 32, 1),
(18, 33, 1),
(18, 34, 1),
(18, 35, 1),
(18, 36, 1),
(18, 18, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 26, 1),
(18, 27, 1),
(18, 28, 1),
(18, 57, 1),
(8, 1, 1),
(8, 37, 1),
(8, 38, 1),
(8, 39, 1),
(8, 40, 1),
(8, 46, 1),
(8, 47, 1),
(8, 48, 1),
(8, 49, 1),
(8, 56, 1),
(8, 59, 1),
(8, 4, 1),
(8, 5, 1),
(8, 6, 1),
(8, 7, 1),
(8, 8, 1),
(8, 9, 1),
(8, 10, 1),
(8, 11, 1),
(8, 12, 1),
(8, 50, 1),
(8, 58, 1),
(8, 53, 1),
(8, 54, 1),
(8, 30, 1),
(8, 31, 1),
(8, 32, 1),
(8, 33, 1),
(8, 34, 1),
(8, 35, 1),
(8, 36, 1),
(8, 18, 1),
(8, 19, 1),
(8, 20, 1),
(8, 21, 1),
(8, 22, 1),
(8, 23, 1),
(8, 24, 1),
(8, 25, 1),
(8, 26, 1),
(8, 27, 1),
(8, 28, 1),
(8, 57, 1),
(9, 1, 2),
(9, 37, 2),
(9, 38, 2),
(9, 39, 2),
(9, 40, 2),
(9, 46, 2),
(9, 47, 2),
(9, 48, 2),
(9, 49, 2),
(9, 56, 2),
(9, 59, 2),
(9, 4, 2),
(9, 5, 2),
(9, 6, 2),
(9, 7, 2),
(9, 8, 2),
(9, 9, 2),
(9, 10, 2),
(9, 11, 2),
(9, 12, 2),
(9, 50, 2),
(9, 58, 2),
(9, 53, 2),
(9, 54, 2),
(9, 30, 2),
(9, 31, 2),
(9, 32, 2),
(9, 33, 2),
(9, 34, 2),
(9, 35, 2),
(9, 36, 2),
(9, 18, 2),
(9, 19, 2),
(9, 20, 2),
(9, 21, 2),
(9, 22, 2),
(9, 23, 2),
(9, 24, 2),
(9, 25, 2),
(9, 26, 2),
(9, 27, 2),
(9, 28, 2),
(9, 57, 2),
(3, 4, 1),
(3, 5, 1),
(3, 6, 1),
(3, 7, 1),
(3, 8, 1),
(3, 9, 1),
(3, 10, 1),
(3, 11, 1),
(3, 12, 1),
(4, 18, 1),
(4, 19, 1),
(4, 20, 1),
(4, 21, 1),
(4, 22, 1),
(4, 23, 1),
(4, 24, 1),
(4, 25, 1),
(4, 26, 1),
(4, 27, 1),
(4, 30, 1),
(4, 31, 1),
(4, 32, 1),
(4, 33, 1),
(4, 34, 1),
(4, 35, 1),
(4, 36, 1),
(5, 1, 1),
(5, 37, 1),
(5, 38, 1),
(5, 39, 1),
(5, 40, 1),
(5, 46, 1),
(5, 47, 1),
(5, 48, 1),
(5, 49, 1),
(5, 56, 1),
(5, 59, 1),
(5, 4, 2),
(5, 5, 2),
(5, 6, 2),
(5, 7, 2),
(5, 8, 2),
(5, 9, 2),
(5, 10, 2),
(5, 11, 2),
(5, 12, 2),
(5, 50, 1),
(5, 58, 1),
(5, 53, 1),
(5, 54, 1),
(5, 30, 2),
(5, 31, 2),
(5, 32, 2),
(5, 33, 2),
(5, 34, 2),
(5, 35, 2),
(5, 36, 2),
(5, 18, 2),
(5, 19, 2),
(5, 20, 2),
(5, 21, 2),
(5, 22, 2),
(5, 23, 2),
(5, 24, 2),
(5, 25, 2),
(5, 26, 2),
(5, 27, 2),
(5, 28, 1),
(5, 57, 1),
(17, 1, 1),
(17, 37, 1),
(17, 38, 1),
(17, 39, 1),
(17, 40, 1),
(17, 46, 1),
(17, 47, 1),
(17, 48, 1),
(17, 49, 1),
(17, 56, 1),
(17, 59, 1),
(17, 4, 1),
(17, 5, 1),
(17, 6, 1),
(17, 7, 1),
(17, 8, 1),
(17, 9, 1),
(17, 10, 1),
(17, 11, 1),
(17, 12, 1),
(17, 50, 1),
(17, 58, 1),
(17, 53, 1),
(17, 54, 1),
(17, 30, 1),
(17, 31, 1),
(17, 32, 1),
(17, 33, 1),
(17, 34, 1),
(17, 35, 1),
(17, 36, 1),
(17, 18, 1),
(17, 19, 1),
(17, 20, 1),
(17, 21, 1),
(17, 22, 1),
(17, 23, 1),
(17, 24, 1),
(17, 25, 1),
(17, 26, 1),
(17, 27, 1),
(17, 28, 1),
(17, 57, 1),
(14, 1, 1),
(14, 37, 1),
(14, 38, 1),
(14, 39, 1),
(14, 40, 1),
(14, 46, 1),
(14, 47, 1),
(14, 48, 1),
(14, 49, 1),
(14, 56, 1),
(14, 59, 1),
(14, 4, 1),
(14, 5, 1),
(14, 6, 1),
(14, 7, 1),
(14, 8, 1),
(14, 9, 1),
(14, 10, 1),
(14, 11, 1),
(14, 12, 1),
(14, 50, 1),
(14, 58, 1),
(14, 53, 1),
(14, 54, 1),
(14, 30, 1),
(14, 31, 1),
(14, 32, 1),
(14, 33, 1),
(14, 34, 1),
(14, 35, 1),
(14, 36, 1),
(14, 18, 1),
(14, 19, 1),
(14, 20, 1),
(14, 21, 1),
(14, 22, 1),
(14, 23, 1),
(14, 24, 1),
(14, 25, 1),
(14, 26, 1),
(14, 27, 1),
(14, 28, 1),
(14, 57, 1),
(12, 1, 1),
(12, 37, 1),
(12, 38, 1),
(12, 39, 1),
(12, 40, 1),
(12, 46, 1),
(12, 47, 1),
(12, 48, 1),
(12, 49, 1),
(12, 56, 1),
(12, 59, 1),
(12, 4, 1),
(12, 5, 1),
(12, 6, 1),
(12, 7, 1),
(12, 8, 1),
(12, 9, 1),
(12, 10, 1),
(12, 11, 1),
(12, 12, 1),
(12, 50, 1),
(12, 58, 1),
(12, 53, 1),
(12, 54, 1),
(12, 30, 1),
(12, 31, 1),
(12, 32, 1),
(12, 33, 1),
(12, 34, 1),
(12, 35, 1),
(12, 36, 1),
(12, 18, 1),
(12, 19, 1),
(12, 20, 1),
(12, 21, 1),
(12, 22, 1),
(12, 23, 1),
(12, 24, 1),
(12, 25, 1),
(12, 26, 1),
(12, 27, 1),
(12, 28, 1),
(12, 57, 1),
(10, 1, 1),
(10, 37, 1),
(10, 38, 1),
(10, 39, 1),
(10, 40, 1),
(10, 46, 1),
(10, 47, 1),
(10, 48, 1),
(10, 49, 1),
(10, 56, 1),
(10, 59, 1),
(10, 4, 1),
(10, 5, 1),
(10, 6, 1),
(10, 7, 1),
(10, 8, 1),
(10, 9, 1),
(10, 10, 1),
(10, 11, 1),
(10, 12, 1),
(10, 50, 1),
(10, 58, 1),
(10, 53, 1),
(10, 54, 1),
(10, 30, 1),
(10, 31, 1),
(10, 32, 1),
(10, 33, 1),
(10, 34, 1),
(10, 35, 1),
(10, 36, 1),
(10, 18, 1),
(10, 19, 1),
(10, 20, 1),
(10, 21, 1),
(10, 22, 1),
(10, 23, 1),
(10, 24, 1),
(10, 25, 1),
(10, 26, 1),
(10, 27, 1),
(10, 28, 1),
(10, 57, 1),
(11, 1, 2),
(11, 37, 2),
(11, 38, 2),
(11, 39, 2),
(11, 40, 2),
(11, 46, 2),
(11, 47, 2),
(11, 48, 2),
(11, 49, 2),
(11, 56, 2),
(11, 59, 2),
(11, 4, 2),
(11, 5, 2),
(11, 6, 2),
(11, 7, 2),
(11, 8, 2),
(11, 9, 2),
(11, 10, 2),
(11, 11, 2),
(11, 12, 2),
(11, 50, 2),
(11, 58, 2),
(11, 53, 2),
(11, 54, 2),
(11, 30, 2),
(11, 31, 2),
(11, 32, 2),
(11, 33, 2),
(11, 34, 2),
(11, 35, 2),
(11, 36, 2),
(11, 18, 2),
(11, 19, 2),
(11, 20, 2),
(11, 21, 2),
(11, 22, 2),
(11, 23, 2),
(11, 24, 2),
(11, 25, 2),
(11, 26, 2),
(11, 27, 2),
(11, 28, 2),
(11, 57, 2),
(6, 1, 1),
(6, 37, 1),
(6, 38, 1),
(6, 39, 1),
(6, 40, 1),
(6, 46, 1),
(6, 47, 1),
(6, 48, 1),
(6, 49, 1),
(6, 56, 1),
(6, 59, 1),
(6, 4, 1),
(6, 5, 1),
(6, 6, 1),
(6, 7, 1),
(6, 8, 1),
(6, 9, 1),
(6, 10, 1),
(6, 11, 1),
(6, 12, 1),
(6, 50, 1),
(6, 58, 1),
(6, 53, 1),
(6, 54, 1),
(6, 30, 1),
(6, 31, 1),
(6, 32, 1),
(6, 33, 1),
(6, 34, 1),
(6, 35, 1),
(6, 36, 1),
(6, 18, 1),
(6, 19, 1),
(6, 20, 1),
(6, 21, 1),
(6, 22, 1),
(6, 23, 1),
(6, 24, 1),
(6, 25, 1),
(6, 26, 1),
(6, 27, 1),
(6, 28, 1),
(6, 57, 1),
(7, 1, 2),
(7, 37, 2),
(7, 38, 2),
(7, 39, 2),
(7, 40, 2),
(7, 46, 2),
(7, 47, 2),
(7, 48, 2),
(7, 49, 2),
(7, 56, 2),
(7, 59, 2),
(7, 4, 2),
(7, 5, 2),
(7, 6, 2),
(7, 7, 2),
(7, 8, 2),
(7, 9, 2),
(7, 10, 2),
(7, 11, 2),
(7, 12, 2),
(7, 50, 2),
(7, 58, 2),
(7, 53, 2),
(7, 54, 2),
(7, 30, 2),
(7, 31, 2),
(7, 32, 2),
(7, 33, 2),
(7, 34, 2),
(7, 35, 2),
(7, 36, 2),
(7, 18, 2),
(7, 19, 2),
(7, 20, 2),
(7, 21, 2),
(7, 22, 2),
(7, 23, 2),
(7, 24, 2),
(7, 25, 2),
(7, 26, 2),
(7, 27, 2),
(7, 28, 2),
(7, 57, 2),
(16, 1, 1),
(16, 37, 1),
(16, 38, 1),
(16, 39, 1),
(16, 40, 1),
(16, 46, 1),
(16, 47, 1),
(16, 48, 1),
(16, 49, 1),
(16, 56, 1),
(16, 59, 1),
(16, 4, 1),
(16, 5, 1),
(16, 6, 1),
(16, 7, 1),
(16, 8, 1),
(16, 9, 1),
(16, 10, 1),
(16, 11, 1),
(16, 12, 1),
(16, 50, 1),
(16, 58, 1),
(16, 53, 1),
(16, 54, 1),
(16, 30, 1),
(16, 31, 1),
(16, 32, 1),
(16, 33, 1),
(16, 34, 1),
(16, 35, 1),
(16, 36, 1),
(16, 18, 1),
(16, 19, 1),
(16, 20, 1),
(16, 21, 1),
(16, 22, 1),
(16, 23, 1),
(16, 24, 1),
(16, 25, 1),
(16, 26, 1),
(16, 27, 1),
(16, 28, 1),
(16, 57, 1),
(1, 4, 1),
(2, 4, 2),
(27, 1, 1),
(27, 37, 1),
(27, 38, 1),
(27, 39, 1),
(27, 40, 1),
(27, 46, 1),
(27, 47, 1),
(27, 48, 1),
(27, 49, 1),
(27, 56, 1),
(27, 59, 1),
(27, 4, 1),
(27, 5, 1),
(27, 6, 1),
(27, 7, 1),
(27, 8, 1),
(27, 9, 1),
(27, 10, 1),
(27, 11, 1),
(27, 12, 1),
(27, 50, 1),
(27, 58, 1),
(27, 53, 1),
(27, 54, 1),
(27, 30, 1),
(27, 31, 1),
(27, 32, 1),
(27, 33, 1),
(27, 34, 1),
(27, 35, 1),
(27, 36, 1),
(27, 18, 1),
(27, 19, 1),
(27, 20, 1),
(27, 21, 1),
(27, 22, 1),
(27, 23, 1),
(27, 24, 1),
(27, 25, 1),
(27, 26, 1),
(27, 27, 1),
(27, 28, 1),
(27, 57, 1),
(25, 1, 1),
(25, 37, 1),
(25, 38, 1),
(25, 39, 1),
(25, 40, 1),
(25, 46, 1),
(25, 47, 1),
(25, 48, 1),
(25, 49, 1),
(25, 56, 1),
(25, 59, 1),
(25, 4, 1),
(25, 5, 1),
(25, 6, 1),
(25, 7, 1),
(25, 8, 1),
(25, 9, 1),
(25, 10, 1),
(25, 11, 1),
(25, 12, 1),
(25, 50, 1),
(25, 58, 1),
(25, 53, 1),
(25, 54, 1),
(25, 30, 1),
(25, 31, 1),
(25, 32, 1),
(25, 33, 1),
(25, 34, 1),
(25, 35, 1),
(25, 36, 1),
(25, 18, 1),
(25, 19, 1),
(25, 20, 1),
(25, 21, 1),
(25, 22, 1),
(25, 23, 1),
(25, 24, 1),
(25, 25, 1),
(25, 26, 1),
(25, 27, 1),
(25, 28, 1),
(25, 57, 1),
(26, 1, 1),
(26, 37, 1),
(26, 38, 1),
(26, 39, 1),
(26, 40, 1),
(26, 46, 1),
(26, 47, 1),
(26, 48, 1),
(26, 49, 1),
(26, 56, 1),
(26, 59, 1),
(26, 4, 1),
(26, 5, 1),
(26, 6, 1),
(26, 7, 1),
(26, 8, 1),
(26, 9, 1),
(26, 10, 1),
(26, 11, 1),
(26, 12, 1),
(26, 50, 1),
(26, 58, 1),
(26, 53, 1),
(26, 54, 1),
(26, 30, 1),
(26, 31, 1),
(26, 32, 1),
(26, 33, 1),
(26, 34, 1),
(26, 35, 1),
(26, 36, 1),
(26, 18, 1),
(26, 19, 1),
(26, 20, 1),
(26, 21, 1),
(26, 22, 1),
(26, 23, 1),
(26, 24, 1),
(26, 25, 1),
(26, 26, 1),
(26, 27, 1),
(26, 28, 1),
(26, 57, 1),
(19, 1, 1),
(19, 37, 1),
(19, 38, 1),
(19, 39, 1),
(19, 40, 1),
(19, 46, 1),
(19, 47, 1),
(19, 48, 1),
(19, 49, 1),
(19, 56, 1),
(19, 59, 1),
(19, 4, 1),
(19, 5, 1),
(19, 6, 1),
(19, 7, 1),
(19, 8, 1),
(19, 9, 1),
(19, 10, 1),
(19, 11, 1),
(19, 12, 1),
(19, 50, 1),
(19, 58, 1),
(19, 53, 1),
(19, 54, 1),
(19, 30, 1),
(19, 31, 1),
(19, 32, 1),
(19, 33, 1),
(19, 34, 1),
(19, 35, 1),
(19, 36, 1),
(19, 18, 1),
(19, 19, 1),
(19, 20, 1),
(19, 21, 1),
(19, 22, 1),
(19, 23, 1),
(19, 24, 1),
(19, 25, 1),
(19, 26, 1),
(19, 27, 1),
(19, 28, 1),
(19, 57, 1),
(20, 1, 2),
(20, 37, 2),
(20, 38, 2),
(20, 39, 2),
(20, 40, 2),
(20, 46, 2),
(20, 47, 2),
(20, 48, 2),
(20, 49, 2),
(20, 56, 2),
(20, 59, 2),
(20, 4, 2),
(20, 5, 2),
(20, 6, 2),
(20, 7, 2),
(20, 8, 2),
(20, 9, 2),
(20, 10, 2),
(20, 11, 2),
(20, 12, 2),
(20, 50, 2),
(20, 58, 2),
(20, 53, 2),
(20, 54, 2),
(20, 30, 2),
(20, 31, 2),
(20, 32, 2),
(20, 33, 2),
(20, 34, 2),
(20, 35, 2),
(20, 36, 2),
(20, 18, 2),
(20, 19, 2),
(20, 20, 2),
(20, 21, 2),
(20, 22, 2),
(20, 23, 2),
(20, 24, 2),
(20, 25, 2),
(20, 26, 2),
(20, 27, 2),
(20, 28, 2),
(20, 57, 2),
(21, 1, 1),
(21, 37, 1),
(21, 38, 1),
(21, 39, 1),
(21, 40, 1),
(21, 46, 1),
(21, 47, 1),
(21, 48, 1),
(21, 49, 1),
(21, 56, 1),
(21, 59, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 10, 1),
(21, 11, 1),
(21, 12, 1),
(21, 50, 1),
(21, 58, 1),
(21, 53, 1),
(21, 54, 1),
(21, 30, 1),
(21, 31, 1),
(21, 32, 1),
(21, 33, 1),
(21, 34, 1),
(21, 35, 1),
(21, 36, 1),
(21, 18, 1),
(21, 19, 1),
(21, 20, 1),
(21, 21, 1),
(21, 22, 1),
(21, 23, 1),
(21, 24, 1),
(21, 25, 1),
(21, 26, 1),
(21, 27, 1),
(21, 28, 1),
(21, 57, 1),
(22, 1, 2),
(22, 37, 2),
(22, 38, 2),
(22, 39, 2),
(22, 40, 2),
(22, 46, 2),
(22, 47, 2),
(22, 48, 2),
(22, 49, 2),
(22, 56, 2),
(22, 59, 2),
(22, 4, 2),
(22, 5, 2),
(22, 6, 2),
(22, 7, 2),
(22, 8, 2),
(22, 9, 2),
(22, 10, 2),
(22, 11, 2),
(22, 12, 2),
(22, 50, 2),
(22, 58, 2),
(22, 53, 2),
(22, 54, 2),
(22, 30, 2),
(22, 31, 2),
(22, 32, 2),
(22, 33, 2),
(22, 34, 2),
(22, 35, 2),
(22, 36, 2),
(22, 18, 2),
(22, 19, 2),
(22, 20, 2),
(22, 21, 2),
(22, 22, 2),
(22, 23, 2),
(22, 24, 2),
(22, 25, 2),
(22, 26, 2),
(22, 27, 2),
(22, 28, 2),
(22, 57, 2),
(23, 1, 3),
(23, 37, 3),
(23, 38, 3),
(23, 39, 3),
(23, 40, 3),
(23, 46, 3),
(23, 47, 3),
(23, 48, 3),
(23, 49, 3),
(23, 56, 3),
(23, 59, 3),
(23, 4, 3),
(23, 5, 3),
(23, 6, 3),
(23, 7, 3),
(23, 8, 3),
(23, 9, 3),
(23, 10, 3),
(23, 11, 3),
(23, 12, 3),
(23, 50, 3),
(23, 58, 3),
(23, 53, 3),
(23, 54, 3),
(23, 30, 3),
(23, 31, 3),
(23, 32, 3),
(23, 33, 3),
(23, 34, 3),
(23, 35, 3),
(23, 36, 3),
(23, 18, 3),
(23, 19, 3),
(23, 20, 3),
(23, 21, 3),
(23, 22, 3),
(23, 23, 3),
(23, 24, 3),
(23, 25, 3),
(23, 26, 3),
(23, 27, 3),
(23, 28, 3),
(23, 57, 3),
(24, 1, 4),
(24, 37, 4),
(24, 38, 4),
(24, 39, 4),
(24, 40, 4),
(24, 46, 4),
(24, 47, 4),
(24, 48, 4),
(24, 49, 4),
(24, 56, 4),
(24, 59, 4),
(24, 4, 4),
(24, 5, 4),
(24, 6, 4),
(24, 7, 4),
(24, 8, 4),
(24, 9, 4),
(24, 10, 4),
(24, 11, 4),
(24, 12, 4),
(24, 50, 4),
(24, 58, 4),
(24, 53, 4),
(24, 54, 4),
(24, 30, 4),
(24, 31, 4),
(24, 32, 4),
(24, 33, 4),
(24, 34, 4),
(24, 35, 4),
(24, 36, 4),
(24, 18, 4),
(24, 19, 4),
(24, 20, 4),
(24, 21, 4),
(24, 22, 4),
(24, 23, 4),
(24, 24, 4),
(24, 25, 4),
(24, 26, 4),
(24, 27, 4),
(24, 28, 4),
(24, 57, 4);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_comment`
--

CREATE TABLE IF NOT EXISTS `nv4_en_comment` (
`cid` mediumint(8) unsigned NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) NOT NULL DEFAULT '0',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_contact_department`
--

CREATE TABLE IF NOT EXISTS `nv4_en_contact_department` (
`id` smallint(5) unsigned NOT NULL,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cats` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_contact_reply`
--

CREATE TABLE IF NOT EXISTS `nv4_en_contact_reply` (
`rid` mediumint(8) unsigned NOT NULL,
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reply_content` text COLLATE utf8mb4_unicode_ci,
  `reply_time` int(11) unsigned NOT NULL DEFAULT '0',
  `reply_aid` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_contact_send`
--

CREATE TABLE IF NOT EXISTS `nv4_en_contact_send` (
`id` mediumint(8) unsigned NOT NULL,
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_time` int(11) unsigned NOT NULL DEFAULT '0',
  `sender_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sender_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sender_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_reply` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_freecontent_blocks`
--

CREATE TABLE IF NOT EXISTS `nv4_en_freecontent_blocks` (
`bid` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_freecontent_rows`
--

CREATE TABLE IF NOT EXISTS `nv4_en_freecontent_rows` (
`id` mediumint(8) unsigned NOT NULL,
  `bid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_menu`
--

CREATE TABLE IF NOT EXISTS `nv4_en_menu` (
`id` smallint(5) unsigned NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_menu`
--

INSERT INTO `nv4_en_menu` (`id`, `title`) VALUES
(1, 'Top Menu');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_menu_rows`
--

CREATE TABLE IF NOT EXISTS `nv4_en_menu_rows` (
`id` mediumint(5) NOT NULL,
  `parentid` mediumint(5) unsigned NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `lev` int(11) NOT NULL DEFAULT '0',
  `subitem` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `op` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` tinyint(4) DEFAULT '0',
  `css` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_menu_rows`
--

INSERT INTO `nv4_en_menu_rows` (`id`, `parentid`, `mid`, `title`, `link`, `icon`, `note`, `weight`, `sort`, `lev`, `subitem`, `groups_view`, `module_name`, `op`, `target`, `css`, `active_type`, `status`) VALUES
(1, 0, 1, 'About', '/index.php?language=en&nv=about', '', '', 1, 1, 0, '', '6', 'about', '', 1, '', 1, 1),
(2, 0, 1, 'News', '/index.php?language=en&nv=news', '', '', 2, 2, 0, '', '6', 'news', '', 1, '', 1, 1),
(3, 0, 1, 'Users', '/index.php?language=en&nv=users', '', '', 3, 3, 0, '', '6', 'users', '', 1, '', 1, 1),
(4, 0, 1, 'Statistics', '/index.php?language=en&nv=statistics', '', '', 4, 4, 0, '', '2', 'statistics', '', 1, '', 1, 1),
(5, 0, 1, 'Voting', '/index.php?language=en&nv=voting', '', '', 5, 5, 0, '', '6', 'voting', '', 1, '', 1, 1),
(6, 0, 1, 'Search', '/index.php?language=en&nv=seek', '', '', 6, 6, 0, '', '6', 'seek', '', 1, '', 1, 1),
(7, 0, 1, 'Contact', '/index.php?language=en&nv=contact', '', '', 7, 7, 0, '', '6', 'contact', '', 1, '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_modfuncs`
--

CREATE TABLE IF NOT EXISTS `nv4_en_modfuncs` (
`func_id` mediumint(8) unsigned NOT NULL,
  `func_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT '0',
  `in_submenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subweight` smallint(2) unsigned NOT NULL DEFAULT '1',
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_modfuncs`
--

INSERT INTO `nv4_en_modfuncs` (`func_id`, `func_name`, `alias`, `func_custom_name`, `in_module`, `show_func`, `in_submenu`, `subweight`, `setting`) VALUES
(1, 'main', 'main', 'Main', 'about', 1, 0, 1, ''),
(2, 'sitemap', 'sitemap', 'Sitemap', 'about', 0, 0, 0, ''),
(3, 'rss', 'rss', 'Rss', 'about', 0, 0, 0, ''),
(4, 'main', 'main', 'Main', 'news', 1, 0, 1, ''),
(5, 'viewcat', 'viewcat', 'Viewcat', 'news', 1, 0, 2, ''),
(6, 'topic', 'topic', 'Topic', 'news', 1, 0, 3, ''),
(7, 'content', 'content', 'Content', 'news', 1, 1, 4, ''),
(8, 'detail', 'detail', 'Detail', 'news', 1, 0, 5, ''),
(9, 'tag', 'tag', 'Tag', 'news', 1, 0, 6, ''),
(10, 'rss', 'rss', 'Rss', 'news', 1, 1, 7, ''),
(11, 'search', 'search', 'Search', 'news', 1, 1, 8, ''),
(12, 'groups', 'groups', 'Groups', 'news', 1, 0, 9, ''),
(13, 'sitemap', 'sitemap', 'Sitemap', 'news', 0, 0, 0, ''),
(14, 'print', 'print', 'Print', 'news', 0, 0, 0, ''),
(15, 'rating', 'rating', 'Rating', 'news', 0, 0, 0, ''),
(16, 'savefile', 'savefile', 'Savefile', 'news', 0, 0, 0, ''),
(17, 'sendmail', 'sendmail', 'Sendmail', 'news', 0, 0, 0, ''),
(18, 'main', 'main', 'Main', 'users', 1, 0, 1, ''),
(19, 'login', 'login', 'Login', 'users', 1, 1, 2, ''),
(20, 'register', 'register', 'Register', 'users', 1, 1, 3, ''),
(21, 'lostpass', 'lostpass', 'Lostpass', 'users', 1, 1, 4, ''),
(22, 'active', 'active', 'Active', 'users', 1, 0, 5, ''),
(23, 'lostactivelink', 'lostactivelink', 'Lostactivelink', 'users', 1, 0, 6, ''),
(24, 'editinfo', 'editinfo', 'Edit User Info', 'users', 1, 1, 7, ''),
(25, 'memberlist', 'memberlist', 'Memberlist', 'users', 1, 1, 8, ''),
(26, 'avatar', 'avatar', 'Avatar', 'users', 1, 0, 9, ''),
(27, 'logout', 'logout', 'Logout', 'users', 1, 1, 10, ''),
(28, 'groups', 'groups', 'Groups manage', 'users', 1, 0, 11, ''),
(29, 'oauth', 'oauth', 'Oauth', 'users', 0, 0, 0, ''),
(30, 'main', 'main', 'Main', 'statistics', 1, 0, 1, ''),
(31, 'allreferers', 'allreferers', 'All Referers', 'statistics', 1, 1, 2, ''),
(32, 'allcountries', 'allcountries', 'Countries', 'statistics', 1, 1, 3, ''),
(33, 'allbrowsers', 'allbrowsers', 'Browsers', 'statistics', 1, 1, 4, ''),
(34, 'allos', 'allos', 'OS', 'statistics', 1, 1, 5, ''),
(35, 'allbots', 'allbots', 'Bots', 'statistics', 1, 1, 6, ''),
(36, 'referer', 'referer', 'refererg', 'statistics', 1, 0, 7, ''),
(37, 'main', 'main', 'Main', 'banners', 1, 0, 1, ''),
(38, 'addads', 'addads', 'Addads', 'banners', 1, 0, 2, ''),
(39, 'clientinfo', 'clientinfo', 'Clientinfo', 'banners', 1, 0, 3, ''),
(40, 'stats', 'stats', 'Stats', 'banners', 1, 0, 4, ''),
(41, 'cledit', 'cledit', 'Cledit', 'banners', 0, 0, 0, ''),
(42, 'click', 'click', 'Click', 'banners', 0, 0, 0, ''),
(43, 'clinfo', 'clinfo', 'Clinfo', 'banners', 0, 0, 0, ''),
(44, 'logininfo', 'logininfo', 'Logininfo', 'banners', 0, 0, 0, ''),
(45, 'viewmap', 'viewmap', 'Viewmap', 'banners', 0, 0, 0, ''),
(46, 'main', 'main', 'main', 'comment', 1, 0, 1, ''),
(47, 'post', 'post', 'post', 'comment', 1, 0, 2, ''),
(48, 'like', 'like', 'Like', 'comment', 1, 0, 3, ''),
(49, 'delete', 'delete', 'Delete', 'comment', 1, 0, 4, ''),
(50, 'main', 'main', 'Main', 'page', 1, 0, 1, ''),
(51, 'sitemap', 'sitemap', 'Sitemap', 'page', 0, 0, 0, ''),
(52, 'rss', 'rss', 'Rss', 'page', 0, 0, 0, ''),
(53, 'main', 'main', 'Main', 'siteterms', 1, 0, 1, ''),
(54, 'rss', 'rss', 'Rss', 'siteterms', 1, 0, 2, ''),
(55, 'sitemap', 'sitemap', 'Sitemap', 'siteterms', 0, 0, 0, ''),
(56, 'main', 'main', 'Main', 'contact', 1, 0, 1, ''),
(57, 'main', 'main', 'Main', 'voting', 1, 0, 1, ''),
(58, 'main', 'main', 'Main', 'seek', 1, 0, 1, ''),
(59, 'main', 'main', 'Main', 'feeds', 1, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_modthemes`
--

CREATE TABLE IF NOT EXISTS `nv4_en_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_modthemes`
--

INSERT INTO `nv4_en_modthemes` (`func_id`, `layout`, `theme`) VALUES
(0, 'left-main-right', 'default'),
(0, 'main', 'mobile_default'),
(1, 'left-main-right', 'default'),
(1, 'main', 'mobile_default'),
(4, 'left-main-right', 'default'),
(4, 'main', 'mobile_default'),
(5, 'left-main-right', 'default'),
(5, 'main', 'mobile_default'),
(6, 'left-main-right', 'default'),
(6, 'main', 'mobile_default'),
(7, 'left-main-right', 'default'),
(7, 'main', 'mobile_default'),
(8, 'left-main-right', 'default'),
(8, 'main', 'mobile_default'),
(9, 'left-main-right', 'default'),
(9, 'main', 'mobile_default'),
(10, 'left-main-right', 'default'),
(11, 'left-main-right', 'default'),
(11, 'main', 'mobile_default'),
(12, 'left-main-right', 'default'),
(12, 'main', 'mobile_default'),
(18, 'left-main-right', 'default'),
(18, 'main', 'mobile_default'),
(19, 'left-main-right', 'default'),
(19, 'main', 'mobile_default'),
(20, 'left-main-right', 'default'),
(20, 'main', 'mobile_default'),
(21, 'left-main-right', 'default'),
(21, 'main', 'mobile_default'),
(22, 'left-main-right', 'default'),
(22, 'main', 'mobile_default'),
(23, 'left-main-right', 'default'),
(23, 'main', 'mobile_default'),
(24, 'left-main', 'default'),
(24, 'main', 'mobile_default'),
(25, 'left-main-right', 'default'),
(25, 'main', 'mobile_default'),
(26, 'left-main-right', 'default'),
(27, 'left-main-right', 'default'),
(27, 'main', 'mobile_default'),
(28, 'left-main', 'default'),
(28, 'main', 'mobile_default'),
(30, 'left-main', 'default'),
(30, 'main', 'mobile_default'),
(31, 'left-main', 'default'),
(31, 'main', 'mobile_default'),
(32, 'left-main', 'default'),
(32, 'main', 'mobile_default'),
(33, 'left-main', 'default'),
(33, 'main', 'mobile_default'),
(34, 'left-main', 'default'),
(34, 'main', 'mobile_default'),
(35, 'left-main', 'default'),
(35, 'main', 'mobile_default'),
(36, 'left-main', 'default'),
(36, 'main', 'mobile_default'),
(37, 'left-main-right', 'default'),
(37, 'main', 'mobile_default'),
(38, 'left-main-right', 'default'),
(38, 'main', 'mobile_default'),
(39, 'left-main-right', 'default'),
(39, 'main', 'mobile_default'),
(40, 'left-main-right', 'default'),
(40, 'main', 'mobile_default'),
(46, 'left-main-right', 'default'),
(46, 'main', 'mobile_default'),
(47, 'left-main-right', 'default'),
(47, 'main', 'mobile_default'),
(48, 'left-main-right', 'default'),
(48, 'main', 'mobile_default'),
(49, 'left-main-right', 'default'),
(49, 'main', 'mobile_default'),
(50, 'left-main', 'default'),
(50, 'main', 'mobile_default'),
(53, 'left-main-right', 'default'),
(53, 'main', 'mobile_default'),
(54, 'left-main-right', 'default'),
(54, 'main', 'mobile_default'),
(56, 'left-main', 'default'),
(56, 'main', 'mobile_default'),
(57, 'left-main', 'default'),
(57, 'main', 'mobile_default'),
(58, 'left-main-right', 'default'),
(58, 'main', 'mobile_default'),
(59, 'left-main-right', 'default'),
(59, 'main', 'mobile_default');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_modules`
--

CREATE TABLE IF NOT EXISTS `nv4_en_modules` (
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_file` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_data` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_upload` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `set_time` int(11) unsigned NOT NULL DEFAULT '0',
  `main_file` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_file` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT '1',
  `gid` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_modules`
--

INSERT INTO `nv4_en_modules` (`title`, `module_file`, `module_data`, `module_upload`, `custom_title`, `admin_title`, `set_time`, `main_file`, `admin_file`, `theme`, `mobile`, `description`, `keywords`, `groups_view`, `weight`, `act`, `admins`, `rss`, `gid`) VALUES
('about', 'page', 'about', 'about', 'About', '', 1458727246, 1, 1, '', '', '', '', '6', 1, 1, '', 1, 0),
('news', 'news', 'news', 'news', 'News', '', 1458727246, 1, 1, '', '', '', '', '6', 2, 1, '', 1, 0),
('users', 'users', 'users', 'users', 'users', 'Users', 1458727246, 1, 1, '', '', '', '', '6', 3, 1, '', 0, 0),
('contact', 'contact', 'contact', 'contact', 'Contact', '', 1458727246, 1, 1, '', '', '', '', '6', 4, 1, '', 0, 0),
('statistics', 'statistics', 'statistics', 'statistics', 'Statistics', '', 1458727246, 1, 1, '', '', '', 'online, statistics', '6', 5, 1, '', 0, 0),
('voting', 'voting', 'voting', 'voting', 'Voting', '', 1458727246, 1, 1, '', '', '', '', '6', 6, 1, '', 1, 0),
('banners', 'banners', 'banners', 'banners', 'Banners', '', 1458727246, 1, 1, '', '', '', '', '6', 7, 1, '', 0, 0),
('seek', 'seek', 'seek', 'seek', 'Search', '', 1458727246, 1, 0, '', '', '', '', '6', 8, 1, '', 0, 0),
('menu', 'menu', 'menu', 'menu', 'Menu Site', '', 1458727246, 0, 1, '', '', '', '', '6', 9, 1, '', 0, 0),
('feeds', 'feeds', 'feeds', 'feeds', 'Rss Feeds', '', 1458727246, 1, 1, '', '', '', '', '6', 10, 1, '', 0, 0),
('page', 'page', 'page', 'page', 'Page', '', 1458727246, 1, 1, '', '', '', '', '6', 11, 1, '', 1, 0),
('comment', 'comment', 'comment', 'comment', 'Comment', '', 1458727246, 0, 1, '', '', '', '', '6', 12, 1, '', 0, 0),
('siteterms', 'page', 'siteterms', 'siteterms', 'Terms & Conditions', '', 1458727246, 1, 1, '', '', '', '', '6', 13, 1, '', 1, 0),
('freecontent', 'freecontent', 'freecontent', 'freecontent', 'Freecontent', '', 1458727246, 0, 1, '', '', '', '', '6', 14, 1, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_1`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_1` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_news_1`
--

INSERT INTO `nv4_en_news_1` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,7,8', 0, 8, 'VINADES', 0, 1277689959, 1277690410, 1, 1277689920, 0, 2, 'Invite to co-operate announcement', 'Invite-to-co-operate-announcement', 'VINADES.,JSC was founded in order to professionalize NukeViet opensource development and release. We also using NukeViet in our bussiness projects to make it continue developing. Include Advertisment, provide hosting services for NukeViet CMS development.', 'hoptac.jpg', '', 1, 1, '6', 1, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_2`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_2` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_3`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_3` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_4`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_4` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_news_4`
--

INSERT INTO `nv4_en_news_4` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(4, 4, '4', 0, 1, 'VOVNews&#x002F;VNA', 0, 1292959020, 1292959513, 1, 1292959020, 0, 2, 'First open-source company starts operation', 'First-open-source-company-starts-operation', 'The Vietnam Open Source Development Joint Stock Company (VINADES.,JSC), the first firm operating in the field of open source in the country, made its debut on February 25.', 'nangly.jpg', '', 1, 1, '6', 1, 1, 0, 0, 0),
(5, 4, '4', 0, 1, '', 0, 1292959490, 1292959664, 1, 1292959440, 0, 2, 'NukeViet 3.0 - New CMS for News site', 'NukeViet-30-New-CMS-for-News-site', 'NukeViet 3.0 is a professional system: VINADES.,JSC founded to maintain and improve NukeViet 3.0 features. VINADES.,JSC co-operated with many professional hosting providers to test compatibility issues.', 'nukeviet3.jpg', '', 1, 1, '6', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_5`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_5` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_6`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_6` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_7`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_7` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_news_7`
--

INSERT INTO `nv4_en_news_7` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,7,8', 0, 8, 'VINADES', 0, 1277689959, 1277690410, 1, 1277689920, 0, 2, 'Invite to co-operate announcement', 'Invite-to-co-operate-announcement', 'VINADES.,JSC was founded in order to professionalize NukeViet opensource development and release. We also using NukeViet in our bussiness projects to make it continue developing. Include Advertisment, provide hosting services for NukeViet CMS development.', 'hoptac.jpg', '', 1, 1, '6', 1, 2, 0, 0, 0),
(3, 12, '12,7', 0, 8, '', 2, 1277691851, 1287160943, 1, 1277691840, 0, 2, 'HTML 5 review', 'HTML-5-review', 'I have to say that my money used to be on XHTML 2.0 eventually winning the battle for the next great web standard. Either that, or the two titans would continue to battle it out for the forseable future, leading to an increasingly fragmented web.', 'screenshot.jpg', '', 1, 1, '6', 1, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_8`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_8` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_news_8`
--

INSERT INTO `nv4_en_news_8` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,7,8', 0, 8, 'VINADES', 0, 1277689959, 1277690410, 1, 1277689920, 0, 2, 'Invite to co-operate announcement', 'Invite-to-co-operate-announcement', 'VINADES.,JSC was founded in order to professionalize NukeViet opensource development and release. We also using NukeViet in our bussiness projects to make it continue developing. Include Advertisment, provide hosting services for NukeViet CMS development.', 'hoptac.jpg', '', 1, 1, '6', 1, 2, 0, 0, 0),
(2, 14, '14,8', 0, 8, '', 1, 1277691366, 1277691470, 1, 1277691360, 0, 2, 'What does WWW mean?', 'What-does-WWW-mean', 'The World Wide Web, abbreviated as WWW and commonly known as the Web, is a system of interlinked hypertext&nbsp; documents accessed via the Internet.', 'nukeviet3.jpg', 'NukeViet 3.0', 1, 1, '2', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_9`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_9` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_10`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_10` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_11`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_11` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_12`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_12` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_news_12`
--

INSERT INTO `nv4_en_news_12` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(3, 12, '12,7', 0, 8, '', 2, 1277691851, 1287160943, 1, 1277691840, 0, 2, 'HTML 5 review', 'HTML-5-review', 'I have to say that my money used to be on XHTML 2.0 eventually winning the battle for the next great web standard. Either that, or the two titans would continue to battle it out for the forseable future, leading to an increasingly fragmented web.', 'screenshot.jpg', '', 1, 1, '6', 1, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_13`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_13` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_14`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_14` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_news_14`
--

INSERT INTO `nv4_en_news_14` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(2, 14, '14,8', 0, 8, '', 1, 1277691366, 1277691470, 1, 1277691360, 0, 2, 'What does WWW mean?', 'What-does-WWW-mean', 'The World Wide Web, abbreviated as WWW and commonly known as the Web, is a system of interlinked hypertext&nbsp; documents accessed via the Internet.', 'nukeviet3.jpg', 'NukeViet 3.0', 1, 1, '2', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_admins`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_admins` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_block`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_block` (
  `bid` smallint(5) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_block_cat`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_block_cat` (
`bid` smallint(5) unsigned NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_news_block_cat`
--

INSERT INTO `nv4_en_news_block_cat` (`bid`, `adddefault`, `numbers`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 0, 4, 'Hot News', 'Hot-News', '', '', 1, '', 1279963759, 1279963759),
(2, 1, 4, 'Top News', 'Top-News', '', '', 2, '', 1279963766, 1279963766);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_cat`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_cat` (
`catid` smallint(5) unsigned NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `descriptionhtml` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT '0',
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `newday` tinyint(2) unsigned NOT NULL DEFAULT '2',
  `featured` int(11) NOT NULL DEFAULT '0',
  `ad_block_cat` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `admins` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_news_cat`
--

INSERT INTO `nv4_en_news_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `inhome`, `numlinks`, `newday`, `featured`, `ad_block_cat`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`) VALUES
(1, 0, 'Co-operate', '', 'Co-operate', '', '', '', 0, 2, 5, 0, 'viewcat_page_new', 2, '2,3', 1, 3, 2, 0, '', '', '', 1277689708, 1277689708, '6'),
(2, 1, 'Careers at NukeViet', '', 'Careers-at-NukeViet', '', '', '', 0, 1, 6, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', '', 1277690086, 1277690259, '6'),
(3, 1, 'Partners', '', 'Partners', '', '', '', 0, 2, 7, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', '', 1277690142, 1277690291, '6'),
(4, 0, 'NukeViet news', '', 'NukeViet-news', '', '', '', 0, 1, 1, 0, 'viewcat_page_new', 3, '5,6,7', 1, 3, 2, 0, '', '', '', 1277690451, 1277690451, '6'),
(5, 4, 'Security issues', '', 'Security-issues', '', '', '', 0, 1, 2, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', '', 1277690497, 1277690564, '6'),
(6, 4, 'Release notes', '', 'Release-notes', '', '', '', 0, 2, 3, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', '', 1277690588, 1277690588, '6'),
(7, 4, 'Development team talk', '', 'Development-team-talk', '', '', '', 0, 3, 4, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', '', 1277690652, 1277690652, '6'),
(8, 0, 'NukeViet community', '', 'NukeViet-community', '', '', '', 0, 3, 8, 0, 'viewcat_page_new', 3, '9,10,11', 1, 3, 2, 0, '', '', '', 1277690748, 1277690748, '6'),
(9, 8, 'Activities', '', 'Activities', '', '', '', 0, 1, 9, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', '', 1277690765, 1277690765, '6'),
(10, 8, 'Events', '', 'Events', '', '', '', 0, 2, 10, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', '', 1277690783, 1277690783, '6'),
(11, 8, 'Faces of week &#x3A;D', '', 'Faces-of-week-D', '', '', '', 0, 3, 11, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', '', 1277690821, 1277690821, '6'),
(12, 0, 'Lastest technologies', '', 'Lastest-technologies', '', '', '', 0, 4, 12, 0, 'viewcat_page_new', 2, '13,14', 1, 3, 2, 0, '', '', '', 1277690888, 1277690888, '6'),
(13, 12, 'World wide web', '', 'World-wide-web', '', '', '', 0, 1, 13, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', '', 1277690934, 1277690934, '6'),
(14, 12, 'Around internet', '', 'Around-internet', '', '', '', 0, 2, 14, 1, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', '', 1277690982, 1277690982, '6');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_config_post`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_detail`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_detail` (
  `id` int(11) unsigned NOT NULL,
  `bodyhtml` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sourcetext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0',
  `gid` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_news_detail`
--

INSERT INTO `nv4_en_news_detail` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(1, '<p> <span style="color: black;"><span style="color: black;"><font size="2"><span style="font-family: verdana,sans-serif;">VIETNAM OPEN SOURCE DEVELOPMENT COMPANY (VINADES.,JSC)<br /> Head office: Room 2004 – CT2 Nang Huong building, 583 Nguyen Trai street, Hanoi, Vietnam.<br /> Mobile: (+84)4 8587 2007<br /> Fax: (+84) 4 3550 0914<br /> Website: <a f8f55ee40942436149="true" href="http://www.vinades.vn/" target="_blank">www.vinades.vn</a> - <a f8f55ee40942436149="true" href="http://www.nukeviet.vn/" target="_blank">www.nukeviet.vn</a></span></font></span></span></p><div h4f82558737983="nukeviet.vn" style="display: inline; cursor: pointer; padding-right: 16px; width: 16px; height: 16px;"> <span style="color: black;"><span style="color: black;"><font size="2"><span style="font-family: verdana,sans-serif;">&nbsp;</span></font></span></span></div><br /><p> <span style="color: black;"><span style="color: black;"><font size="2"><span style="font-family: verdana,sans-serif;">Email: <a href="mailto:contact@vinades.vn" target="_blank">contact@vinades.vn</a><br /> <br /> <br /> Dear valued customers and partners,<br /> <br /> VINADES.,JSC was founded in order to professionalize NukeViet opensource development and release. We also using NukeViet in our bussiness projects to make it continue developing.<br /> <br /> NukeViet is a Content Management System (CMS). 1st general purpose CMS developed by Vietnamese community. It have so many pros. Ex: Biggest community in VietNam, pure Vietnamese, easy to use, easy to develop...<br /> <br /> NukeViet 3 is lastest version of NukeViet and it still developing but almost complete with many advantage features.<br /> <br /> With respects to invite hosting - domain providers, and all company that pay attension to NukeViet in bussiness co-operate.<br /> <br /> Co-operate types:<br /> <br /> 1. Website advertisement, banners exchange, links:<br /> a. Description:<br /> Website advertising &amp; communication channels.<br /> On each release version of NukeViet.<br /> b. Benefits:<br /> Broadcast to all end users on both side.<br /> Reduce advertisement cost.<br /> c. Warranties:<br /> Place advertisement banner of partners on both side.<br /> Open sub-forum at NukeViet.VN to support end users who using hosting services providing by partners.<br /> <br /> 2. Provide host packet for NukeViet development testing purpose:<br /> <br /> a. Description:<br /> Sign the contract and agreements.<br /> Partners provide all types of hosting packet for VINADES.,JSC. Each type at least 1 re-sale packet.<br /> VINADES.,JSC provide an certificate verify host providing by partner compartable with NukeViet.<br /> b. Benefits:<br /> Expand market.<br /> Reduce cost, improve bussiness value.<br /> c. Warranties:<br /> Partner provide free hosting packet for VINADES.,JSC to test NukeViet compatibility.<br /> VINADES.JSC annoucement tested result to community.<br /> <br /> 3. Support end users:<br /> a. Description:<br /> Co-operate to solve problem of end user.<br /> Partners send end user requires about NukeViet CMS to VINADES.,JSC. VINADES also send user requires about hosting services to partners.<br /> b. Benefits:<br /> Reduce cost, human resources to support end users.<br /> Support end user more effective.<br /> c. Warranties:<br /> Solve end user requires as soon as possible.<br /> <br /> 4. Other types:<br /> Besides, as a publisher of NukeViet CMS, we also place advertisements on software user interface, sample articles in each release version. With thousands of downloaded hits each release version, we believe that it is the most effective advertisement type to webmasters.<br /> If partners have any ideas about new co-operate types. You are welcome and feel free to send specifics to us. Our slogan is &quot;Co-operate for development&quot;.<br /> <br /> We look forward to co-operating with you.<br /> <br /> Sincerely,<br /> <br /> VINADES.,JSC</span></font></span></span></p>', '', 2, 0, 1, 1, 1, 0),
(2, '<p> With a web browser, one can view web pages&nbsp; that may contain text, images, videos, and other multimedia&nbsp; and navigate between them by using hyperlinks. Using concepts from earlier hypertext systems, British engineer and computer scientist Sir Tim Berners-Lee, now the Director of the World Wide Web Consortium, wrote a proposal in March 1989 for what would eventually become the World Wide Web. He was later joined by Belgian computer scientist Robert Cailliau while both were working at CERN in Geneva, Switzerland. In 1990, they proposed using &quot;HyperText to link and access information of various kinds as a web of nodes in which the user can browse at will&quot;, and released that web in December.<br /> <br /> &quot;The World-Wide Web (W3) was developed to be a pool of human knowledge, which would allow collaborators in remote sites to share their ideas and all aspects of a common project.&quot;. If two projects are independently crea-ted, rather than have a central figure make the changes, the two bodies of information could form into one cohesive piece of work.</p><p> For more detail. See <a href="http://en.wikipedia.org/wiki/World_Wide_Web" target="_blank">Wikipedia</a></p>', '', 1, 0, 1, 1, 1, 0),
(3, '<p> But now that the W3C has admitted defeat, and abandoned <span class="caps">XHTML</span> 2.0, there’s now no getting away f-rom the fact that <span class="caps">HTML</span> 5 is the future. As such, I’ve now spent some time taking a look at this emerging standard, and hope you’ll endulge my ego by taking a glance over my thoughts on the matter.</p><p> Before I get started though, I have to say that I’m very impressed by what I’ve seen. It’s a good set of standards that are being cre-ated, and I hope that they will gradually be adopted over the next few years.</p><h2> New markup</h2><p> <span class="caps">HTML</span> 5 introduces some new markup elements to encourage better structure within documents. The most important of these is &lt;section&gt;, which is used to define a hierarchy within a document. Sections can be nested to define subsections, and each section can be broken up into &lt;header&gt; and &lt;footer&gt; areas.</p><p> The important thing about this addition is that it removes the previous dependancy on &lt;h1&gt;, &lt;h2&gt; and related tags to define structure. Within each &lt;section&gt;, the top level heading is always &lt;h1&gt;. You can use as many &lt;h1&gt; tags as you like within your content, so long as they are correctly nested within &lt;section&gt; tags.</p><p> There’s a plethora of other new tags, all of which seem pretty useful. The best thing about all of this, however, is that there’s no reason not to start using them right away. There’s a small piece of JavaScript that’s needed to make Internet Explorer behave, but aside f-rom that it’s all good. More details about this hack are available at <a href="http://www.diveintohtml5.org/">http://www.diveintohtml5.org</a></p><h2> Easier media embedding</h2><p> <span class="caps">HTML</span> 5 defines some new tags that will make it a lot easier to embed video and audio into pages. In the same way that images are embedded using &lt;img&gt; tags, so now can video and audio files be embedded using &lt;video&gt; and &lt;audio&gt;.</p><p> I don’t think than anyone is going to complain about these new features. They free us f-rom relying on third-party plugins, such as Adobe Flash, for such simple activities such as playing video.</p><p> Unfortunately, due to some annoying licensing conditions and a lack of support for the open-source Theora codec, actually using these tags at the moment requires that videos are encoded in two different formats. Even then, you’ll still need to still provide an Adobe Flash fallback for Internet Explorer.</p><p> You’ll need to be pretty devoted to <span class="caps">HTML</span> 5 to use these tags yet…</p><h2> Relaxed markup rules</h2><p> This is one thorny subject. You know how we’ve all been so good recently with our well-formed <span class="caps">XHTML</span>, quoting those attributes and closing those tags? Now there’s no need to, apparently…</p><p> On the surface, this seems like a big step backwards into the bad days of tag soup. However, if you dig deeper, the reasoning behind this decision goes something like this:</p><ol> <li> It’s unnacceptable to crash out an entire <span class="caps">HTML</span> page just because of a simple <span class="caps">XML</span> syntax error.</li> <li> This means that browsers cannot use an <span class="caps">XML</span> parser, and must instead use a HTML-aware fault-tolerant parser.</li> <li> For consistency, all browsers should handle any such “syntax errors” (such as unquoted attributes and unclosed tags), in the same way.</li> <li> If all browsers are behaving in the same way, then unquoted attributes and unclosed tags are not really syntax errors any more. In fact, by leaving them out of our pages, we can save a few bytes!</li></ol><p> This isn’t to say that you have to throw away those <span class="caps">XHTML</span> coding habits. It’s still all valid <span class="caps">HTML</span> 5. In fact, if you really want to be strict, you can set a different content-type header to enforce well-formed <span class="caps">XHTML</span>. But for most people, we’ll just carry on coding well-formed <span class="caps">HTML</span> with the odd typo, but no longer have to worry about clients screaming at us when the perfectly-rendered page doesn’t validate.</p><h2> So what now?</h2><p> The <span class="caps">HTML</span> 5 specification is getting pretty close to stable, so it’s now safe to use bits of this new standard in your code. How much you use is entirely a personal choice. However, we should all get used to the new markup over the next few years, because <span class="caps">HTML</span> 5 is assuredly here to stay.</p><p> Myself, I’ll be switching to the new doctype and using the new markup for document sections in my code. This step involves very little effort and does a good job of showing support for the new specification.</p><p> The new media tags are another matter. Until all platforms support a single video format, it’s simply not sustainable to be transcoding all videos into two filetypes. When this is coupled with having to provide a Flash fallback, it all seems like a pretty poor return on investment.</p><p> These features will no doubt become more useable over the next few years, as newer browser take the place of old. One day, hopefully, we’ll be able write clean, semantic pages without having to worry about backwards-compatibility.</p><p> Part of this progress relies on web developers using these new standards in our pages. By adopting new technology, we show our support for the standards it represents and place pressure on browser vendors to adhere to those standards. It’s a bit of effort in the short term, but in the long term it will pay dividends.</p>'', ''http://www.etianen.com/blog/developers/2010/2/html-5-review/', '', 2, 0, 1, 1, 1, 0),
(4, '<p> <span>The Hanoi-based company will further develop and popularise an open source content management system best known as NukeViet in the country. </span></p><p> <span>VINADES Chairman Nguyen Anh Tu said NukeViet is totally free and users can download the product at www.nukeviet.vn. </span></p><p> <span>NukeViet has been widely used across the country over the past five years. The system, built on PHP-Nuke and MySQL database, enables users to easily post and manage files on the Internet or Intranet.</span></p>', '', 0, 0, 1, 1, 1, 0),
(5, '<p style="text-align: justify;"> NukeViet also testing by many experienced webmasters to optimize system features. NukeViet&#039;s core team are programming enthusiasts. All of them want to make NukeViet become the best and most popular open source CMS.</p><p style="text-align: justify;"> <strong>NukeViet 3.0 is a powerful system:</strong><br /> Learn by experiences f-rom NukeViet 2.0, NukeViet 3.0 build ground up on latest web technologies, allow you easily cre-ate portal, online news express, social network, e commerce system.<br /> NukeViet 3.0 can process huge amount of data. It was used by many companies, corporation&#039;s website with millions of news entries with high traffic.<br /> <br /> <strong>NukeViet 3.0 is easy to use system:</strong><br /> NukeViet allow you easily to customize and instantly use without any line of code. As developers, NukeViet help you build your own modules rapidly.</p><h2 style="text-align: justify;"> NukeViet 3.0 features:</h2><p style="text-align: justify;"> <strong>Technology bases:</strong><br /> NukeViet 3.0 using PHP 5 and MySQL 5 as main programming languages. XTemplate and jQuery for use Ajax f-rom system core.<br /> NukeViet 3.0 is fully validated with xHTML 1.0, CSS 2.1 and compatible with all major browsers.<br /> NukeViet 3.0 layout website using grid CSS framework like BluePrintCSS for design templates rapidly.<br /> <br /> NukeViet 3.0 has it own core libraries and it is platform independent. You can build your own modules with basic knowledge of PHP and MySQL.<br /> <br /> <strong>Module structure:</strong><br /> NukeViet 3.0 re-construct module structure. All module files packed into a particular folder. It&#039;s also define module block and module theme for layout modules in many ways.<br /> <br /> NukeViet 3.0 support modules can be multiply. We called it abstract modules. It help users automatic cre-ate many modules without any line of code f-rom any exists module which support cre-ate abstract modules.<br /> <br /> NukeViet 3.0 support automatic setup modules, blocks, themes f-rom Admin Control Panel. It&#039;s also allow you to share your modules by packed it into packets. NukeViet allow grant, deny access or even re-install, de-lete module.<br /> <br /> <strong>Multi language:</strong><br /> NukeViet 3 support multi languages in 2 types. Multi interface languages and multi database languages. It had features support administrators to build new languages. In NukeViet 3, admin language, user language, interface language, database language are separate for easily build multi languages systems.<br /> <br /> <strong>Right:</strong><br /> All manage features only access in admin area. NukeViet 3.0 allow grant access by module and language. It also allow cre-ate user groups and grant access modules by group.<br /> <br /> <strong>Themes:</strong><br /> NukeViet 3.0 support automatic install and uninstall themes. You can easily customize themes in module and module&#039;s functions. NukeViet store HTML, CSS code separately f-rom PHP code to help designers rapidly layout website.<br /> <br /> <strong>Customize website using blocks</strong><br /> A block can be a widget, advertisement pictures or any defined data. You can place block in many positions visually by drag and d-rop or argument it in Admin Control Panel.<br /> <br /> <strong>Securities:</strong><br /> NukeViet using security filters to filter data upload.<br /> Logging and control access f-rom many search engine as Google, Yahoo or any search engine.<br /> Anti spam using Captcha, anti flood data...<br /> NukeViet 3.0 has logging systems to log and track information about client to prevent attack.<br /> NukeViet 3.0 support automatic up-date to fix security issues or upgrade your website to latest version of NukeViet.<br /> <br /> <strong>Database:</strong><br /> You can backup database and download backup files to restore database to any point you restored your database.<br /> <br /> <strong>Control errors report</strong><br /> You can configure to display each type of error only one time. System then sent log files about this error to administrator via email.<br /> <br /> <strong>SEO:</strong><br /> Support SEO link<br /> Manage and customize website title<br /> Manage meta tag<br /> <br /> Support keywords for cre-ate statistic via search engine<br /> <br /> <strong>Prepared for integrate with third party application</strong><br /> NukeViet 3.0 has it own user database and many built-in methods to connect with many forum application. PHPBB or VBB can integrate and use with NukeViet 3.0 by single click.<br /> <br /> <strong>Distributed login</strong><br /> NukeViet support login by OpenID. Users can login to your website by accounts f-rom popular and well-known provider, such as Google, Yahoo or other OpenID providers. It help your website more accessible and reduce user&#039;s time to filling out registration forms.<br /> <br /> Download NukeViet 3.0: <a href="http://code.google.com/p/nuke-viet/downloads/list">http://code.google.com/p/nuke-viet/downloads/list</a><br /> Website: <a href="http://nukeviet.vn/">http://nukeviet.vn</a></p>', '', 2, 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_logs`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_logs` (
`id` mediumint(8) unsigned NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_rows`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_rows` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_news_rows`
--

INSERT INTO `nv4_en_news_rows` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,7,8', 0, 8, 'VINADES', 0, 1277689959, 1277690410, 1, 1277689920, 0, 2, 'Invite to co-operate announcement', 'Invite-to-co-operate-announcement', 'VINADES.,JSC was founded in order to professionalize NukeViet opensource development and release. We also using NukeViet in our bussiness projects to make it continue developing. Include Advertisment, provide hosting services for NukeViet CMS development.', 'hoptac.jpg', '', 1, 1, '6', 1, 2, 0, 0, 0),
(2, 14, '14,8', 0, 8, '', 1, 1277691366, 1277691470, 1, 1277691360, 0, 2, 'What does WWW mean?', 'What-does-WWW-mean', 'The World Wide Web, abbreviated as WWW and commonly known as the Web, is a system of interlinked hypertext&nbsp; documents accessed via the Internet.', 'nukeviet3.jpg', 'NukeViet 3.0', 1, 1, '2', 1, 0, 0, 0, 0),
(3, 12, '12,7', 0, 8, '', 2, 1277691851, 1287160943, 1, 1277691840, 0, 2, 'HTML 5 review', 'HTML-5-review', 'I have to say that my money used to be on XHTML 2.0 eventually winning the battle for the next great web standard. Either that, or the two titans would continue to battle it out for the forseable future, leading to an increasingly fragmented web.', 'screenshot.jpg', '', 1, 1, '6', 1, 2, 0, 0, 0),
(4, 4, '4', 0, 1, 'VOVNews&#x002F;VNA', 0, 1292959020, 1292959513, 1, 1292959020, 0, 2, 'First open-source company starts operation', 'First-open-source-company-starts-operation', 'The Vietnam Open Source Development Joint Stock Company (VINADES.,JSC), the first firm operating in the field of open source in the country, made its debut on February 25.', 'nangly.jpg', '', 1, 1, '6', 1, 1, 0, 0, 0),
(5, 4, '4', 0, 1, '', 0, 1292959490, 1292959664, 1, 1292959440, 0, 2, 'NukeViet 3.0 - New CMS for News site', 'NukeViet-30-New-CMS-for-News-site', 'NukeViet 3.0 is a professional system: VINADES.,JSC founded to maintain and improve NukeViet 3.0 features. VINADES.,JSC co-operated with many professional hosting providers to test compatibility issues.', 'nukeviet3.jpg', '', 1, 1, '6', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_sources`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_sources` (
`sourceid` mediumint(8) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL,
  `edit_time` int(11) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_news_sources`
--

INSERT INTO `nv4_en_news_sources` (`sourceid`, `title`, `link`, `logo`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Wikipedia', 'http://www.wikipedia.org', '', 1, 1277691366, 1277691366),
(2, 'Enlightened Website Development', 'http://www.etianen.com', '', 2, 1277691851, 1277691851);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_tags`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_tags` (
`tid` mediumint(8) unsigned NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_news_tags`
--

INSERT INTO `nv4_en_news_tags` (`tid`, `numnews`, `alias`, `image`, `description`, `keywords`) VALUES
(1, 0, 'vinades', '', '', 'VINADES'),
(2, 0, 'web', '', '', 'Web'),
(3, 0, 'html5', '', '', 'HTML5'),
(4, 0, 'nguyen-anh-tu', '', '', 'Nguyen Anh Tu'),
(5, 0, 'nukeviet', '', '', 'NukeViet');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_tags_id`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_news_tags_id`
--

INSERT INTO `nv4_en_news_tags_id` (`id`, `tid`, `keyword`) VALUES
(1, 1, 'VINADES'),
(2, 2, 'Web'),
(3, 3, 'HTML5'),
(4, 1, 'VINADES'),
(4, 4, 'Nguyen Anh Tu'),
(5, 5, 'NukeViet'),
(5, 1, 'VINADES');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_news_topics`
--

CREATE TABLE IF NOT EXISTS `nv4_en_news_topics` (
`topicid` smallint(5) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_page`
--

CREATE TABLE IF NOT EXISTS `nv4_en_page` (
`id` mediumint(8) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_page_config`
--

CREATE TABLE IF NOT EXISTS `nv4_en_page_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_page_config`
--

INSERT INTO `nv4_en_page_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_referer_stats`
--

CREATE TABLE IF NOT EXISTS `nv4_en_referer_stats` (
  `host` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `month01` int(11) NOT NULL DEFAULT '0',
  `month02` int(11) NOT NULL DEFAULT '0',
  `month03` int(11) NOT NULL DEFAULT '0',
  `month04` int(11) NOT NULL DEFAULT '0',
  `month05` int(11) NOT NULL DEFAULT '0',
  `month06` int(11) NOT NULL DEFAULT '0',
  `month07` int(11) NOT NULL DEFAULT '0',
  `month08` int(11) NOT NULL DEFAULT '0',
  `month09` int(11) NOT NULL DEFAULT '0',
  `month10` int(11) NOT NULL DEFAULT '0',
  `month11` int(11) NOT NULL DEFAULT '0',
  `month12` int(11) NOT NULL DEFAULT '0',
  `last_update` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_searchkeys`
--

CREATE TABLE IF NOT EXISTS `nv4_en_searchkeys` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skey` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `search_engine` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_siteterms`
--

CREATE TABLE IF NOT EXISTS `nv4_en_siteterms` (
`id` mediumint(8) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_siteterms_config`
--

CREATE TABLE IF NOT EXISTS `nv4_en_siteterms_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_en_siteterms_config`
--

INSERT INTO `nv4_en_siteterms_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_voting`
--

CREATE TABLE IF NOT EXISTS `nv4_en_voting` (
`vid` smallint(5) unsigned NOT NULL,
  `question` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `acceptcm` int(2) NOT NULL DEFAULT '1',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `publ_time` int(11) unsigned NOT NULL DEFAULT '0',
  `exp_time` int(11) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_en_voting_rows`
--

CREATE TABLE IF NOT EXISTS `nv4_en_voting_rows` (
`id` mediumint(8) unsigned NOT NULL,
  `vid` smallint(5) unsigned NOT NULL,
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hitstotal` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_extension_files`
--

CREATE TABLE IF NOT EXISTS `nv4_extension_files` (
`idfile` mediumint(8) unsigned NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastmodified` int(11) unsigned NOT NULL DEFAULT '0',
  `duplicate` smallint(4) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_googleplus`
--

CREATE TABLE IF NOT EXISTS `nv4_googleplus` (
`gid` smallint(5) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `idprofile` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_language`
--

CREATE TABLE IF NOT EXISTS `nv4_language` (
`id` mediumint(8) unsigned NOT NULL,
  `idfile` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_language_file`
--

CREATE TABLE IF NOT EXISTS `nv4_language_file` (
`idfile` mediumint(8) unsigned NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_file` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_logs`
--

CREATE TABLE IF NOT EXISTS `nv4_logs` (
`id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_acess` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_logs`
--

INSERT INTO `nv4_logs` (`id`, `lang`, `module_name`, `name_key`, `note_action`, `link_acess`, `userid`, `log_time`) VALUES
(1, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1456905109),
(2, 'vi', 'modules', 'Kích hoạt module "shops"', 'Có', '', 1, 1456905139),
(3, 'vi', 'modules', 'Kích hoạt module "shops"', 'Không', '', 1, 1456905320),
(4, 'vi', 'modules', 'Sửa module &ldquo;shops&rdquo;', '', '', 1, 1456905344),
(5, 'vi', 'modules', 'Kích hoạt module "shops"', 'Có', '', 1, 1456905352),
(6, 'vi', 'modules', 'Cài lại module "shops"', '', '', 1, 1456905416),
(7, 'vi', 'themes', 'Thiết lập giao diện theme: "sango"', '', '', 1, 1456905772),
(8, 'vi', 'themes', 'Kích hoạt theme: "sango"', '', '', 1, 1456905774),
(9, 'vi', 'upload', 'Upload file', 'uploads/logo_0.jpg', '', 1, 1456905801),
(10, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1456906539),
(11, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1456906729),
(12, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1456906826),
(13, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1456906837),
(14, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1456906852),
(15, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1456906862),
(16, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1456906882),
(17, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1456906901),
(18, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1456906931),
(19, 'vi', 'upload', 'Upload file', 'uploads/efloorvn.com_.jpg', '', 1, 1456907385),
(20, 'vi', 'upload', 'Upload file', 'uploads/go_van_san_1.jpg', '', 1, 1456907396),
(21, 'vi', 'upload', 'Upload file', 'uploads/go_van_san_5.jpg', '', 1, 1456907408),
(22, 'vi', 'upload', 'Upload file', 'uploads/go-van-san_efloor_0.jpg', '', 1, 1456907424),
(23, 'vi', 'upload', 'Upload file', 'uploads/kho_efloor.png', '', 1, 1456907435),
(24, 'vi', 'themes', 'Sửa block', 'Name : Contact Default', '', 1, 1456907440),
(25, 'vi', 'themes', 'Thêm block', 'Name : global image', '', 1, 1456907518),
(26, 'vi', 'themes', 'Thêm block', 'Name : global image', '', 1, 1456907612),
(27, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1456907644),
(28, 'vi', 'themes', 'Thêm block', 'Name : global image', '', 1, 1456907840),
(29, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1456907854),
(30, 'vi', 'themes', 'Thêm block', 'Name : module block others product', '', 1, 1456908048),
(31, 'vi', 'shops', 'log_add_catalog', 'id 1', '', 1, 1456908107),
(32, 'vi', 'modules', 'Cài lại module "shops"', '', '', 1, 1456908202),
(33, 'vi', 'themes', 'Kích hoạt theme: "default"', '', '', 1, 1456913164),
(34, 'vi', 'themes', 'Kích hoạt theme: "sango"', '', '', 1, 1456913236),
(35, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1457102807),
(36, 'vi', 'themes', 'Thêm block', 'Name : module block others product', '', 1, 1457102929),
(37, 'vi', 'themes', 'Sửa block', 'Name : module block others product', '', 1, 1457103041),
(38, 'vi', 'themes', 'Sửa block', 'Name : module block others product', '', 1, 1457103072),
(39, 'vi', 'shops', 'log_add_catalog', 'id 23', '', 1, 1457103121),
(40, 'vi', 'shops', 'Add A Product', 'ID: 12', '', 1, 1457103406),
(41, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_03/go-van-san_efloor.jpg', '', 1, 1457103500),
(42, 'vi', 'shops', 'Edit A Product', 'ID: 12', '', 1, 1457103506),
(43, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_03/supper_floor.jpg', '', 1, 1457103599),
(44, 'vi', 'shops', 'Add A Product', 'ID: 13', '', 1, 1457103679),
(45, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_03/term3.jpg', '', 1, 1457103758),
(46, 'vi', 'shops', 'Add A Product', 'ID: 14', '', 1, 1457103779),
(47, 'vi', 'themes', 'Sửa block', 'Name : module block others product', '', 1, 1457103835),
(48, 'vi', 'themes', 'Sửa block', 'Name : module block others product', '', 1, 1457104341),
(49, 'vi', 'themes', 'Sửa block', 'Name : module block others product', '', 1, 1457104455),
(50, 'vi', 'themes', 'Thêm block', 'Name : module block filter product', '', 1, 1457105683),
(51, 'vi', 'themes', 'Thêm block', 'Name : global block product center', '', 1, 1457106271),
(52, 'vi', 'themes', 'Sửa block', 'Name : global block product center', '', 1, 1457106304),
(53, 'vi', 'themes', 'Sửa block', 'Name : global block product center', '', 1, 1457106340),
(54, 'vi', 'themes', 'Thêm block', 'Name : global block relates product', '', 1, 1457106445),
(55, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1457193654),
(56, 'vi', 'themes', 'Sửa block', 'Name : GIỚI THIỆU', '', 1, 1457193767),
(57, 'vi', 'themes', 'Sửa block', 'Name : GIỚI THIỆU', '', 1, 1457195383),
(58, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1457252258),
(59, 'vi', 'themes', 'Sửa block', 'Name : global block relates product', '', 1, 1457252336),
(60, 'vi', 'themes', 'Sửa block', 'Name : global block relates product', '', 1, 1457252413),
(61, 'vi', 'themes', 'Thêm block', 'Name : global block product center', '', 1, 1457252445),
(62, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm tiêu biểu', '', 1, 1457252521),
(63, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm tiêu biểu', '', 1, 1457252560),
(64, 'vi', 'themes', 'Kích hoạt theme: "default"', '', '', 1, 1457254019),
(65, 'vi', 'themes', 'Kích hoạt theme: "sango"', '', '', 1, 1457254039),
(66, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1457254915),
(67, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm tiêu biểu', '', 1, 1457254949),
(68, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm tiêu biểu', '', 1, 1457255250),
(69, 'vi', 'themes', 'Sửa block', 'Name : global block product center', '', 1, 1457255287),
(70, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_03/_mg_1807_0.jpg', '', 1, 1457255760),
(71, 'vi', 'shops', 'Add A Product', 'ID: 15', '', 1, 1457255871),
(72, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_03/501_bong.jpg', '', 1, 1457255917),
(73, 'vi', 'shops', 'Add A Product', 'ID: 16', '', 1, 1457255968),
(74, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_03/1001_tran_0.jpg', '', 1, 1457256008),
(75, 'vi', 'shops', 'Add A Product', 'ID: 17', '', 1, 1457256035),
(76, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_03/1011_tran.jpg', '', 1, 1457256098),
(77, 'vi', 'shops', 'Add A Product', 'ID: 18', '', 1, 1457256125),
(78, 'vi', 'themes', 'Sửa block', 'Name : sản phẩm tiêu biểu', '', 1, 1457256150),
(79, 'vi', 'themes', 'Sửa block', 'Name : sản phẩm tiêu biểu', '', 1, 1457256267),
(80, 'vi', 'themes', 'Sửa block', 'Name : sản phẩm tiêu biểu', '', 1, 1457256324),
(81, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1457280227),
(82, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1457314137),
(83, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1457314507),
(84, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1457315036),
(85, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1457316876),
(86, 'vi', 'themes', 'Sửa block', 'Name : sản phẩm tiêu biểu', '', 1, 1457316901),
(87, 'vi', 'themes', 'Sửa block', 'Name : sản phẩm tiêu biểu', '', 1, 1457316967),
(88, 'vi', 'themes', 'Thêm block', 'Name : sản phẩm tiêu biểu', '', 1, 1457319467),
(89, 'vi', 'themes', 'Thêm block', 'Name : global block product center', '', 1, 1457319597),
(90, 'vi', 'themes', 'Sửa block', 'Name : global block product center', '', 1, 1457319625),
(91, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_03/d.jpg', '', 1, 1457319804),
(92, 'vi', 'shops', 'Add A Product', 'ID: 19', '', 1, 1457319849),
(93, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_03/duan4.jpg', '', 1, 1457319982),
(94, 'vi', 'shops', 'Add A Product', 'ID: 20', '', 1, 1457320038),
(95, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_03/duan81.jpg', '', 1, 1457320088),
(96, 'vi', 'shops', 'Add A Product', 'ID: 21', '', 1, 1457320126),
(97, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm hot', '', 1, 1457320140),
(98, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm hot', '', 1, 1457321245),
(99, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1457367612),
(100, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1457408979),
(101, 'vi', 'themes', 'Sửa block', 'Name : LIÊN HỆ', '', 1, 1457409303),
(102, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm', '', 1, 1457409725),
(103, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1457507819),
(104, 'vi', 'themes', 'Sửa block', 'Name : Các chuyên mục chính', '', 1, 1457510655),
(105, 'vi', 'themes', 'Sửa block', 'Name : Các chuyên mục chính', '', 1, 1457510655),
(106, 'vi', 'themes', 'Sửa block', 'Name : Link hữu ích', '', 1, 1457510715),
(107, 'vi', 'themes', 'Thêm block', 'Name : global social', '', 1, 1457513223),
(108, 'vi', 'themes', 'Sửa block', 'Name : global social', '', 1, 1457513251),
(109, 'vi', 'themes', 'Sửa block', 'Name : Social icon', '', 1, 1457514430),
(110, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1458112273),
(111, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1458112302),
(112, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1458112356),
(113, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1458114834),
(114, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1458114870),
(115, 'vi', 'themes', 'Sửa block', 'Name : GIỚI THIỆU', '', 1, 1458114961),
(116, 'vi', 'themes', 'Sửa block', 'Name : sản phẩm tiêu biểu', '', 1, 1458115036),
(117, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm hot', '', 1, 1458115073),
(118, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1458119385),
(119, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1458182628),
(120, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1458183315),
(121, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1458183349),
(122, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1458284498),
(123, 'vi', 'themes', 'Kích hoạt theme: "default"', '', '', 1, 1458286625),
(124, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1458286652),
(125, 'vi', 'themes', 'Kích hoạt theme: "sango"', '', '', 1, 1458286708),
(126, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1458286758),
(127, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1458286850),
(128, 'vi', 'themes', 'Kích hoạt theme: "default"', '', '', 1, 1458289125),
(129, 'vi', 'themes', 'Kích hoạt theme: "sango"', '', '', 1, 1458289170),
(130, 'vi', 'themes', 'Kích hoạt theme: "default"', '', '', 1, 1458289341),
(131, 'vi', 'themes', 'Kích hoạt theme: "sango"', '', '', 1, 1458289524),
(132, 'vi', 'themes', 'Kích hoạt theme: "default"', '', '', 1, 1458289598),
(133, 'vi', 'themes', 'Kích hoạt theme: "sango"', '', '', 1, 1458289935),
(134, 'vi', 'themes', 'Kích hoạt theme: "default"', '', '', 1, 1458289995),
(135, 'vi', 'themes', 'Kích hoạt theme: "sango"', '', '', 1, 1458290068),
(136, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1458360617),
(137, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1458524177),
(138, 'vi', 'about', 'Edit', 'ID: 1', '', 1, 1458525339),
(139, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo trái', '', 1, 1458525476),
(140, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo trái', '', 1, 1458525536),
(141, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo trái', '', 1, 1458525655),
(142, 'vi', 'upload', 'Upload file', 'uploads/shops/go_van_san.jpg', '', 1, 1458525759),
(143, 'vi', 'upload', 'Upload file', 'uploads/shops/go_van_san_efloor_1.jpg', '', 1, 1458525831),
(144, 'vi', 'upload', 'Upload file', 'uploads/shops/san_go_cong_nghiep.jpg', '', 1, 1458525863),
(145, 'vi', 'upload', 'Upload file', 'uploads/shops/efloorvn_1.jpg', '', 1, 1458525905),
(146, 'vi', 'upload', 'Upload file', 'uploads/shops/go_van_san_2.jpg', '', 1, 1458525950),
(147, 'vi', 'upload', 'Di chuyển', 'uploads/shops/go_van_san_2.jpg -> uploads/news/go_van_san_2.jpg', '', 1, 1458525973),
(148, 'vi', 'upload', 'Di chuyển', 'uploads/shops/efloorvn_1.jpg -> uploads/news/efloorvn_1.jpg', '', 1, 1458525973),
(149, 'vi', 'upload', 'Di chuyển', 'uploads/shops/san_go_cong_nghiep.jpg -> uploads/news/san_go_cong_nghiep.jpg', '', 1, 1458525973),
(150, 'vi', 'upload', 'Di chuyển', 'uploads/shops/go_van_san_efloor_1.jpg -> uploads/news/go_van_san_efloor_1.jpg', '', 1, 1458525973),
(151, 'vi', 'upload', 'Di chuyển', 'uploads/shops/go_van_san.jpg -> uploads/news/go_van_san.jpg', '', 1, 1458525973),
(152, 'vi', 'news', 'Thêm bài viết', 'SÀN GÔC CHỊU NƯỚC', '', 1, 1458526280),
(153, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo trái', '', 1, 1458526307),
(154, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1458526322),
(155, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm', '', 1, 1458526341),
(156, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm', '', 1, 1458526355),
(157, 'vi', 'themes', 'Sửa block', 'Name : TIN TƯC MỚI NHẤT', '', 1, 1458526403),
(158, 'vi', 'news', 'Thêm bài viết', 'Vệ sinh sàn gỗ công nghiệp đúng cách', '', 1, 1458526554),
(159, 'vi', 'news', 'Sửa bài viết', 'Vệ sinh sàn gỗ công nghiệp đúng cách', '', 1, 1458526597),
(160, 'vi', 'news', 'Thêm bài viết', 'Ván sàn gỗ công nghiệp vàng thau lẫn lộn', '', 1, 1458526707),
(161, 'vi', 'themes', 'Kích hoạt theme: "default"', '', '', 1, 1458531813),
(162, 'vi', 'themes', 'Kích hoạt theme: "sango"', '', '', 1, 1458531818),
(163, 'vi', 'themes', 'Kích hoạt theme: "default"', '', '', 1, 1458532054),
(164, 'vi', 'themes', 'Kích hoạt theme: "sango"', '', '', 1, 1458534205),
(165, 'vi', 'themes', 'Thêm block', 'Name : global html', '', 1, 1458534345),
(166, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1458534366),
(167, 'vi', 'modules', 'Thêm module ảo cong_trinh_da_thuc_hien', '', '', 1, 1458534617),
(168, 'vi', 'modules', 'Thiết lập module mới cong-trinh-da-thuc-hien', '', '', 1, 1458534626),
(169, 'vi', 'modules', 'Sửa module &ldquo;cong-trinh-da-thuc-hien&rdquo;', '', '', 1, 1458534641),
(170, 'vi', 'upload', 'Upload file', 'uploads/cong-trinh-da-thuc-hien/2016_03/duan81.jpg', '', 1, 1458534753),
(171, 'vi', 'cong-trinh-da-thuc-hien', 'Thêm bài viết', 'Nâng cấp sàn gạch men bằng sàn gỗ tại...', '', 1, 1458534907),
(172, 'vi', 'upload', 'Upload file', 'uploads/cong-trinh-da-thuc-hien/2016_03/duan4.jpg', '', 1, 1458534959),
(173, 'vi', 'cong-trinh-da-thuc-hien', 'Thêm bài viết', 'Sàn gỗ tại Biệt thự cao cấp khu Ciputra...', '', 1, 1458535001),
(174, 'vi', 'upload', 'Upload file', 'uploads/cong-trinh-da-thuc-hien/2016_03/go-van-san_efloor.jpg', '', 1, 1458535034),
(175, 'vi', 'upload', 'Upload file', 'uploads/cong-trinh-da-thuc-hien/2016_03/d.jpg', '', 1, 1458535061),
(176, 'vi', 'cong-trinh-da-thuc-hien', 'Thêm bài viết', 'Hoàn thành tháng 09&#x002F;2015 Công trình tại hệ thống Trường Liên...', '', 1, 1458535070),
(177, 'vi', 'themes', 'Thêm block', 'Name : Tin mới nhất', '', 1, 1458535134),
(178, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1458535164),
(179, 'vi', 'themes', 'Thêm block', 'Name : Sản phẩm', '', 1, 1458535191),
(180, 'vi', 'themes', 'Thêm block', 'Name : module block news', '', 1, 1458535232),
(181, 'vi', 'themes', 'Thêm block', 'Name : module block news', '', 1, 1458535261),
(182, 'vi', 'themes', 'Thêm block', 'Name : Tin mới nhất', '', 1, 1458535294),
(183, 'vi', 'themes', 'Thêm block', 'Name : global html', '', 1, 1458660577),
(184, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1458660600),
(185, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1458662109),
(186, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1458662149),
(187, 'vi', 'themes', 'Thêm block', 'Name : global copyright', '', 1, 1458662488),
(188, 'vi', 'themes', 'Sửa block', 'Name : global copyright', '', 1, 1458662606),
(189, 'vi', 'cong-trinh-da-thuc-hien', 'Sửa bài viết', 'Công trình tại hệ thống Trường Liên...', '', 1, 1458665349),
(190, 'vi', 'cong-trinh-da-thuc-hien', 'Sửa bài viết', 'Nâng cấp sàn gạch men bằng sàn...', '', 1, 1458665418),
(191, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1458666376),
(192, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1458666414),
(193, 'vi', 'themes', 'Sửa block', 'Name : CÔNG TRÌNH ĐÃ THỰC HIỆN', '', 1, 1458666447),
(194, 'vi', 'themes', 'Sửa block', 'Name : CÔNG TRÌNH ĐÃ THỰC HIỆN', '', 1, 1458666517),
(195, 'vi', 'cong-trinh-da-thuc-hien', 'Sửa bài viết', 'Nâng cấp sàn gạch men bằng sàn...', '', 1, 1458668058),
(196, 'vi', 'cong-trinh-da-thuc-hien', 'Sửa bài viết', 'Nâng cấp sàn gạch men bằng sàn...', '', 1, 1458668270),
(197, 'vi', 'cong-trinh-da-thuc-hien', 'Sửa bài viết', 'Nâng cấp sàn gạch men bằng sàn...', '', 1, 1458668305),
(198, 'vi', 'cong-trinh-da-thuc-hien', 'Sửa bài viết', 'Nâng cấp sàn gạch men bằng sàn gỗ tại...', '', 1, 1458668372),
(199, 'vi', 'shops', 'Edit A Product', 'ID: 16', '', 1, 1458717285),
(200, 'vi', 'shops', 'Edit A Product', 'ID: 16', '', 1, 1458717359),
(201, 'vi', 'shops', 'Edit A Product', 'ID: 16', '', 1, 1458717420),
(202, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1458726528),
(203, 'vi', 'themes', 'Sửa block', 'Name : LIÊN HỆ', '', 1, 1458727075),
(204, 'vi', 'themes', 'Sửa block', 'Name : LIÊN HỆ', '', 1, 1458727175),
(205, 'en', 'language', 'Cài đặt mới Ngôn ngữ data', ' langkey : en', '', 1, 1458727246),
(206, 'vi', 'themes', 'Sửa block', 'Name : LIÊN HỆ', '', 1, 1458727283),
(207, 'vi', 'themes', 'Sửa block', 'Name : LIÊN HỆ', '', 1, 1458727469),
(208, 'vi', 'themes', 'Thêm block', 'Name : global company info 1', '', 1, 1458727530),
(209, 'vi', 'themes', 'Sửa block', 'Name : LIÊN HỆ', '', 1, 1458820308),
(210, 'vi', 'themes', 'Sửa block', 'Name : LIÊN HỆ', '', 1, 1458820342),
(211, 'vi', 'themes', 'Sửa block', 'Name : LIÊN HỆ', '', 1, 1458820368),
(212, 'vi', 'themes', 'Sửa block', 'Name : LIÊN HỆ', '', 1, 1458820391),
(213, 'vi', 'themes', 'Thêm block', 'Name : Tin mới nhất', '', 1, 1458822788),
(214, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1458822848),
(215, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1458822885),
(216, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:42.113.95.160', '', 0, 1458921137),
(217, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1458921192),
(218, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:42.112.252.41', '', 0, 1458921431),
(219, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:113.20.116.80', '', 0, 1459156114),
(220, 'vi', 'themes', 'Thêm block', 'Name : Hỗ trợ trực tuyến', '', 1, 1459156205),
(221, 'vi', 'about', 'Edit', 'ID: 8', '', 1, 1459156505),
(222, 'vi', 'about', 'Edit', 'ID: 1', '', 1, 1459156535),
(223, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1459156550),
(224, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1459156571),
(225, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:123.25.21.13', '', 0, 1459156639),
(226, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:42.114.173.136', '', 0, 1459949687),
(227, 'vi', 'database', 'Tải về', 'File name: nv_jkAB8h', '', 1, 1459949710),
(228, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1465377213),
(229, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1465377270),
(230, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1465377789),
(231, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1465377822),
(232, 'vi', 'themes', 'Kích hoạt theme: "default"', '', '', 1, 1465377911),
(233, 'vi', 'themes', 'Kích hoạt theme: "sango"', '', '', 1, 1465378165),
(234, 'vi', 'themes', 'Sửa block', 'Name : Hỗ trợ trực tuyến', '', 1, 1465378948),
(235, 'vi', 'themes', 'Thêm block', 'Name : global contactmenu', '', 1, 1465379367),
(236, 'vi', 'themes', 'Sửa block', 'Name : HỖ TRỢ TRỰC TUYẾN', '', 1, 1465379386),
(237, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1465379437),
(238, 'vi', 'themes', 'Thiết lập layout theme: "sango"', '', '', 1, 1465379489),
(239, 'vi', 'themes', 'Thiết lập layout theme: "sango"', '', '', 1, 1465379553);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_notification`
--

CREATE TABLE IF NOT EXISTS `nv4_notification` (
`id` int(11) unsigned NOT NULL,
  `send_to` mediumint(8) unsigned NOT NULL,
  `send_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `area` tinyint(1) unsigned NOT NULL,
  `language` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obid` int(11) unsigned NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) unsigned NOT NULL,
  `view` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_plugin`
--

CREATE TABLE IF NOT EXISTS `nv4_plugin` (
`pid` tinyint(4) NOT NULL,
  `plugin_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_area` tinyint(4) NOT NULL,
  `weight` tinyint(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_plugin`
--

INSERT INTO `nv4_plugin` (`pid`, `plugin_file`, `plugin_area`, `weight`) VALUES
(1, 'qrcode.php', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_sessions`
--

CREATE TABLE IF NOT EXISTS `nv4_sessions` (
  `session_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onl_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_sessions`
--

INSERT INTO `nv4_sessions` (`session_id`, `userid`, `username`, `onl_time`) VALUES
('i5j20pkiqt6vcnvhc5t0dc2dc7', 1, 'ngocphan', 1465379584);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_setup`
--

CREATE TABLE IF NOT EXISTS `nv4_setup` (
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tables` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_setup_extensions`
--

CREATE TABLE IF NOT EXISTS `nv4_setup_extensions` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `basename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_prefix` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_setup_extensions`
--

INSERT INTO `nv4_setup_extensions` (`id`, `type`, `title`, `is_sys`, `is_virtual`, `basename`, `table_prefix`, `version`, `addtime`, `author`, `note`) VALUES
(0, 'module', 'about', 0, 0, 'page', 'about', '4.0.29 1463652000', 1456905063, 'VINADES (contact@vinades.vn)', ''),
(0, 'module', 'siteterms', 0, 0, 'page', 'siteterms', '4.0.29 1463652000', 1456905063, 'VINADES (contact@vinades.vn)', ''),
(19, 'module', 'banners', 1, 0, 'banners', 'banners', '4.0.29 1463652000', 1456905063, 'VINADES (contact@vinades.vn)', ''),
(20, 'module', 'contact', 0, 1, 'contact', 'contact', '4.0.29 1463652000', 1456905063, 'VINADES (contact@vinades.vn)', ''),
(1, 'module', 'news', 0, 1, 'news', 'news', '4.0.29 1463652000', 1456905063, 'VINADES (contact@vinades.vn)', ''),
(21, 'module', 'voting', 0, 0, 'voting', 'voting', '4.0.29 1463652000', 1456905063, 'VINADES (contact@vinades.vn)', ''),
(0, 'module', 'shops', 0, 1, 'shops', 'shops', '4.0.17 1371948600', 1456905119, 'VINADES (contact@vinades.vn)', ''),
(284, 'module', 'seek', 1, 0, 'seek', 'seek', '4.0.29 1463652000', 1456905063, 'VINADES (contact@vinades.vn)', ''),
(24, 'module', 'users', 1, 0, 'users', 'users', '4.0.29 1463652000', 1456905063, 'VINADES (contact@vinades.vn)', ''),
(27, 'module', 'statistics', 0, 0, 'statistics', 'statistics', '4.0.29 1463652000', 1456905063, 'VINADES (contact@vinades.vn)', ''),
(29, 'module', 'menu', 0, 0, 'menu', 'menu', '4.0.29 1463652000', 1456905063, 'VINADES (contact@vinades.vn)', ''),
(283, 'module', 'feeds', 1, 0, 'feeds', 'feeds', '4.0.29 1463652000', 1456905063, 'VINADES (contact@vinades.vn)', ''),
(282, 'module', 'page', 1, 1, 'page', 'page', '4.0.29 1463652000', 1456905063, 'VINADES (contact@vinades.vn)', ''),
(281, 'module', 'comment', 1, 0, 'comment', 'comment', '4.0.29 1463652000', 1456905063, 'VINADES (contact@vinades.vn)', ''),
(312, 'module', 'freecontent', 0, 0, 'freecontent', 'freecontent', '4.0.29 1463652000', 1456905063, 'VINADES (contact@vinades.vn)', ''),
(307, 'theme', 'default', 0, 0, 'default', 'default', '4.0.29 1463652000', 1456905063, 'VINADES (contact@vinades.vn)', ''),
(311, 'theme', 'mobile_default', 0, 0, 'mobile_default', 'mobile_default', '4.0.29 1463652000', 1456905063, 'VINADES (contact@vinades.vn)', ''),
(0, 'module', 'cong-trinh-da-thuc-hien', 0, 0, 'news', 'cong_trinh_da_thuc_hien', '4.0.29 1463652000', 1458534617, '', ''),
(0, 'theme', 'sango', 0, 0, 'sango', 'sango', '4.0.0 1459951842', 1459951842, 'VINADES.,JSC', 'Đây là giao diện mặc định của hệ thống. Bạn không được xóa, đổi tên và không nên sửa trực tiếp vào giao diện này. Nếu muốn, hãy copy thành giao diện khác và kích hoạt sử dụng giao diện mới đó để chỉnh sửa và sử dụng.');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_setup_language`
--

CREATE TABLE IF NOT EXISTS `nv4_setup_language` (
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_setup_language`
--

INSERT INTO `nv4_setup_language` (`lang`, `setup`) VALUES
('vi', 1),
('en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_block`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_block` (
  `bid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_block`
--

INSERT INTO `nv4_shops_block` (`bid`, `id`, `weight`) VALUES
(1, 11, 5),
(1, 10, 4),
(1, 9, 3),
(1, 6, 2),
(1, 5, 1),
(2, 4, 4),
(2, 3, 3),
(2, 2, 2),
(2, 1, 1),
(1, 12, 0),
(1, 13, 0),
(1, 14, 0),
(3, 15, 0),
(3, 16, 0),
(3, 17, 0),
(3, 18, 0),
(2, 19, 0),
(2, 20, 0),
(2, 21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_block_cat`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_block_cat` (
`bid` mediumint(8) unsigned NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_block_cat`
--

INSERT INTO `nv4_shops_block_cat` (`bid`, `adddefault`, `image`, `weight`, `add_time`, `edit_time`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`) VALUES
(1, 0, '', 1, 1433298294, 1433298294, 'Sản phẩm bán chạy', 'San-pham-ban-chay', '', ''),
(2, 0, '', 2, 1433298325, 1433298325, 'Sản phẩm hot', 'San-pham-hot', '', ''),
(3, 0, '', 3, 1457255651, 1457255651, 'sản phẩm tiêu biểu', 'san-pham-tieu-bieu', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_carrier` (
`id` tinyint(3) unsigned NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier_config`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_carrier_config` (
`id` tinyint(3) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier_config_items`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_carrier_config_items` (
`id` smallint(4) unsigned NOT NULL,
  `cid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) unsigned NOT NULL,
  `add_time` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier_config_location`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_carrier_config_location` (
  `cid` tinyint(3) unsigned NOT NULL,
  `iid` smallint(4) unsigned NOT NULL,
  `lid` mediumint(8) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier_config_weight`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_carrier_config_weight` (
  `iid` smallint(4) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  `weight_unit` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_price` float NOT NULL,
  `carrier_price_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_catalogs`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_catalogs` (
`catid` mediumint(8) unsigned NOT NULL,
  `parentid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  `sort` mediumint(8) NOT NULL DEFAULT '0',
  `lev` smallint(4) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` int(11) NOT NULL DEFAULT '0',
  `subcatid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `newday` tinyint(4) NOT NULL DEFAULT '3',
  `typeprice` tinyint(4) NOT NULL DEFAULT '2',
  `form` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewdescriptionhtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admins` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cat_allow_point` tinyint(1) NOT NULL DEFAULT '0',
  `cat_number_point` tinyint(4) NOT NULL DEFAULT '0',
  `cat_number_product` tinyint(4) NOT NULL DEFAULT '0',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_title_custom` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_descriptionhtml` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_catalogs`
--

INSERT INTO `nv4_shops_catalogs` (`catid`, `parentid`, `image`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `inhome`, `numlinks`, `newday`, `typeprice`, `form`, `group_price`, `viewdescriptionhtml`, `admins`, `add_time`, `edit_time`, `groups_view`, `cat_allow_point`, `cat_number_point`, `cat_number_product`, `vi_title`, `vi_title_custom`, `vi_alias`, `vi_description`, `vi_descriptionhtml`, `vi_keywords`) VALUES
(2, 0, '', 1, 1, 0, 'viewcat_page_list', 4, '6,7,8,9', 1, 4, 7, 1, '', '', 0, '', 1432362728, 1432362803, '6', 0, 0, 0, 'Váy', 'Váy', 'Vay-nu', '', '', 'váy, vay'),
(3, 0, '', 2, 6, 0, 'viewcat_page_list', 4, '13,14,15,16', 1, 4, 7, 1, '', '', 0, '', 1432362789, 1432362789, '6', 0, 0, 0, 'Giày dép', 'Giày dép', 'Giay-dep', '', '', 'giay, dep, giày, dép'),
(4, 0, '', 3, 11, 0, 'viewcat_page_list', 3, '10,11,12', 1, 4, 7, 1, '', '', 0, '', 1432362835, 1432364806, '6', 0, 0, 0, 'Áo', 'Áo', 'Ao', '', '', 'áo, ao'),
(5, 0, '', 4, 15, 0, 'viewcat_page_list', 5, '18,19,20,21,22', 1, 4, 7, 1, '', '', 0, '', 1432362887, 1432362887, '6', 0, 0, 0, 'Phụ kiện', 'Phụ kiện', 'Phu-kien', '', '', 'Phụ kiện, Phu kien, kiện, kien, phu kien'),
(6, 2, '', 1, 2, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364675, 1432364675, '6', 0, 0, 0, 'váy dài', 'váy dài', 'vay-dai', '', '', 'váy dài, dài, vay dai'),
(7, 2, '', 2, 3, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364695, 1432364695, '6', 0, 0, 0, 'váy ngắn', 'váy ngắn', 'vay-ngan', '', '', 'váy ngắn, vay ngan'),
(8, 2, '', 3, 4, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364752, 1432364752, '6', 0, 0, 0, 'đầm maxi', 'đầm maxi', 'dam-maxi', '', '', 'đầm, maxi, Maxi, đầm maxi, Đầm maxi'),
(9, 2, '', 4, 5, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364786, 1432364786, '6', 0, 0, 0, 'Váy chữ A', 'Váy chữ A', 'Vay-chu-A', '', '', 'Váy chữ A, váy chữ a'),
(10, 4, '', 1, 12, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364825, 1432364863, '6', 0, 0, 0, 'Áo sơmi', 'Áo sơmi', 'Ao-somi', '', '', 'Áo sơmi,, sơmi. áo'),
(11, 4, '', 2, 13, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364880, 1432364880, '6', 0, 0, 0, 'Áo phông', 'Áo phông', 'Ao-phong', '', '', ''),
(12, 4, '', 3, 14, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364936, 1432364936, '6', 0, 0, 0, 'Áo dáng dài', 'Áo dáng dài', 'Ao-dang-dai', '', '', 'Áo dáng dài, áo'),
(13, 3, '', 1, 7, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364976, 1432364976, '6', 0, 0, 0, 'Giày cao gót', 'Giày cao gót', 'Giay-cao-got', '', '', 'Giày cao gót, cao gót, cao got'),
(14, 3, '', 2, 8, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432365033, 1432365033, '6', 0, 0, 0, 'Giày sandal', 'Giày sandal', 'Giay-sandal', '', '', 'sandal, Sandal, giày, giày sandal'),
(15, 3, '', 3, 9, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432365081, 1432365081, '6', 0, 0, 0, 'Giày búp bê', 'Giày búp bê', 'Giay-bup-be', '', '', 'giày búp bê, Giày búp bê, giay bup be, Giay bup be, búp bê, bup be'),
(16, 3, '', 4, 10, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432365108, 1432365108, '6', 0, 0, 0, 'Giày vải', 'Giày vải', 'Giay-vai', '', '', 'vải, giày vải, giay vai'),
(19, 5, '', 2, 17, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432365211, 1432365211, '6', 0, 0, 0, 'Lắc tay', 'Lắc tay', 'Lac-tay', '', '', 'Lắc tay. lac tay, lắc'),
(18, 5, '', 1, 16, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432365185, 1432365185, '6', 0, 0, 0, 'Vòng cổ', 'Vòng cổ', 'Phu-kien-Vong-co', '', '', 'vòng cổ, Vòng cổ, vong co'),
(20, 5, '', 3, 18, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432365242, 1432365242, '6', 0, 0, 0, 'Thắt lưng', 'Thắt lưng', 'That-lung', '', '', 'Thắt lưng, that lung, thắt lưng'),
(21, 5, '', 4, 19, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432365281, 1432365281, '6', 0, 0, 0, 'Đồng hồ', 'Đồng hồ', 'Dong-ho', '', '', 'Đồng hồ, hồ, dong ho'),
(22, 5, '', 5, 20, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432365303, 1432365303, '6', 0, 0, 0, 'Ví nữ', 'Ví nữ', 'Vi-nu', '', '', 'ví nữ, ví'),
(23, 0, '', 5, 21, 0, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1457103121, 1457103121, '6', 0, 0, 0, 'Gỗ', '', 'go', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_coupons`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_coupons` (
`id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'p',
  `discount` float NOT NULL DEFAULT '0',
  `total_amount` float NOT NULL DEFAULT '0',
  `date_start` int(11) unsigned NOT NULL DEFAULT '0',
  `date_end` int(11) unsigned NOT NULL DEFAULT '0',
  `uses_per_coupon` int(11) unsigned NOT NULL DEFAULT '0',
  `uses_per_coupon_count` int(11) NOT NULL DEFAULT '0',
  `date_added` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_coupons_history`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_coupons_history` (
`id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `date_added` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_coupons_product`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_coupons_product` (
  `cid` int(11) unsigned NOT NULL,
  `pid` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_discounts`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_discounts` (
`did` smallint(6) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(6) NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `begin_time` int(11) unsigned NOT NULL DEFAULT '0',
  `end_time` int(11) unsigned NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_field`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_field` (
`fid` mediumint(8) NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `listtemplate` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tab` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` int(10) unsigned NOT NULL DEFAULT '1',
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` bigint(20) unsigned NOT NULL DEFAULT '0',
  `class` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_field_value_vi`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_field_value_vi` (
`id` mediumint(8) unsigned NOT NULL,
  `rows_id` int(11) unsigned NOT NULL,
  `field_id` mediumint(8) NOT NULL,
  `field_value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_files`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_files` (
`id` mediumint(8) unsigned NOT NULL,
  `path` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesize` int(11) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `download_groups` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `status` tinyint(1) unsigned DEFAULT '1',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_files_rows`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_files_rows` (
  `id_rows` int(11) unsigned NOT NULL,
  `id_files` mediumint(8) unsigned NOT NULL,
  `download_hits` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_group`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_group` (
`groupid` mediumint(8) unsigned NOT NULL,
  `parentid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  `sort` mediumint(8) NOT NULL DEFAULT '0',
  `lev` smallint(4) NOT NULL DEFAULT '0',
  `viewgroup` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubgroup` int(11) NOT NULL DEFAULT '0',
  `subgroupid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `indetail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `numpro` int(11) unsigned NOT NULL DEFAULT '0',
  `in_order` tinyint(2) NOT NULL DEFAULT '0',
  `is_require` tinyint(1) NOT NULL DEFAULT '0',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_group`
--

INSERT INTO `nv4_shops_group` (`groupid`, `parentid`, `image`, `weight`, `sort`, `lev`, `viewgroup`, `numsubgroup`, `subgroupid`, `inhome`, `indetail`, `add_time`, `edit_time`, `numpro`, `in_order`, `is_require`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`) VALUES
(1, 0, '', 1, 1, 0, 'viewcat_page_list', 6, '6,7,8,9,10,11', 1, 0, 1432623061, 1432623061, 0, 1, 0, 'Thương hiệu', 'Thuong-hieu', '', ''),
(2, 0, '', 2, 8, 0, 'viewcat_page_list', 12, '12,13,15,16,17,18,19,20,21,22,23,24', 1, 0, 1432623083, 1432623083, 0, 1, 0, 'Màu sắc', 'Mau-sac', '', ''),
(3, 0, '', 3, 21, 0, 'viewcat_page_list', 15, '25,26,27,28,29,30,31,32,33,34,35,36,37,38,39', 1, 0, 1432623101, 1432623101, 0, 1, 0, 'Kích thước', 'Kich-thuoc', '', ''),
(4, 0, '', 4, 37, 0, 'viewcat_page_list', 8, '40,41,42,43,44,45,46,47', 1, 0, 1432623118, 1432623118, 0, 1, 0, 'Chất liệu', 'Chat-lieu', '', ''),
(5, 0, '', 5, 46, 0, 'viewcat_page_list', 10, '48,49,50,51,52,53,54,55,56,57', 1, 0, 1432623133, 1432623133, 0, 1, 0, 'Xuất xứ', 'Xuat-xu', '', ''),
(6, 1, '', 1, 2, 1, 'viewcat_page_list', 0, '', 1, 0, 1432626862, 1432626862, 0, 1, 0, 'Việt Tiến', 'Viet-Tien', '', ''),
(7, 1, '', 2, 3, 1, 'viewcat_page_list', 0, '', 1, 0, 1432626882, 1432626882, 3, 1, 0, 'ZARA', 'ZARA', '', ''),
(8, 1, '', 3, 4, 1, 'viewcat_page_list', 0, '', 1, 0, 1432626899, 1432626899, 0, 1, 0, 'MATTANA', 'MATTANA', '', ''),
(9, 1, '', 4, 5, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627013, 1432627013, 0, 1, 0, 'KELVIN', 'KELVIN', '', ''),
(10, 1, '', 5, 6, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627027, 1432627027, 0, 1, 0, 'THÁI TUẤN', 'THAI-TUAN', '', ''),
(11, 1, '', 6, 7, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627053, 1432627053, 0, 1, 0, 'VICTORIA SECRECT', 'VICTORIA-SECRECT', '', ''),
(12, 2, '', 1, 9, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627064, 1432627064, 0, 1, 0, 'ĐỎ', 'DO', '', ''),
(13, 2, '', 2, 10, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627070, 1432627070, 0, 1, 0, 'VÀNG', 'VANG', '', ''),
(16, 2, '', 4, 12, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627102, 1432627102, 1, 1, 0, 'HỒNG PHẤN', 'HONG-PHAN', '', ''),
(15, 2, '', 3, 11, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627095, 1432627095, 0, 1, 0, 'XANH NGỌC', 'XANH-NGOC', '', ''),
(17, 2, '', 5, 13, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627107, 1432627107, 0, 1, 0, 'XANH RÊU', 'XANH-REU', '', ''),
(18, 2, '', 6, 14, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627112, 1432627112, 0, 1, 0, 'TÍM', 'TIM', '', ''),
(19, 2, '', 7, 15, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627123, 1432627123, 0, 1, 0, 'XÁM', 'XAM', '', ''),
(20, 2, '', 8, 16, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627135, 1432627135, 0, 1, 0, 'XANH NƯỚC BIỂN', 'XANH-NUOC-BIEN', '', ''),
(21, 2, '', 9, 17, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627148, 1432627148, 0, 1, 0, 'CAM', 'CAM', '', ''),
(22, 2, '', 10, 18, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627153, 1432627153, 0, 1, 0, 'BẠC', 'BAC', '', ''),
(23, 2, '', 11, 19, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627160, 1432627160, 0, 1, 0, 'MÀU DA', 'MAU-DA', '', ''),
(24, 2, '', 12, 20, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627182, 1432627182, 2, 1, 0, 'ĐEN', 'DEN', '', ''),
(25, 3, '', 1, 22, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627201, 1432627201, 0, 1, 0, 'F', 'F', '', ''),
(26, 3, '', 2, 23, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627210, 1432627210, 0, 1, 0, 'L', 'L', '', ''),
(27, 3, '', 3, 24, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627215, 1432627215, 0, 1, 0, 'M', 'M', '', ''),
(28, 3, '', 4, 25, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627219, 1432627219, 0, 1, 0, 'S', 'S', '', ''),
(29, 3, '', 5, 26, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627223, 1432627223, 0, 1, 0, 'XL', 'XL', '', ''),
(30, 3, '', 6, 27, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627241, 1432627241, 0, 1, 0, 'XXL', 'XXL', '', ''),
(31, 3, '', 7, 28, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627250, 1432627250, 0, 1, 0, 'XXXL', 'XXXL', '', ''),
(32, 3, '', 8, 29, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627259, 1432627259, 2, 1, 0, '35', '35', '', ''),
(33, 3, '', 9, 30, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627264, 1432627264, 2, 1, 0, '36', '36', '', ''),
(34, 3, '', 10, 31, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627269, 1432627269, 2, 1, 0, '37', '37', '', ''),
(35, 3, '', 11, 32, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627274, 1432627274, 3, 1, 0, '38', '38', '', ''),
(36, 3, '', 12, 33, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627279, 1432627279, 0, 1, 0, '39', '39', '', ''),
(37, 3, '', 13, 34, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627284, 1432627284, 0, 1, 0, '40', '40', '', ''),
(38, 3, '', 14, 35, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627291, 1432627291, 0, 1, 0, '41', '41', '', ''),
(39, 3, '', 15, 36, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627296, 1432627296, 0, 1, 0, '42', '42', '', ''),
(40, 4, '', 1, 38, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627339, 1432627339, 0, 1, 0, 'COTTON', 'COTTON', '', ''),
(41, 4, '', 2, 39, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627346, 1432627346, 0, 1, 0, 'DẠ', 'DA', '', ''),
(42, 4, '', 3, 40, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627364, 1432627364, 0, 1, 0, 'JEANS', 'JEANS', '', ''),
(43, 4, '', 4, 41, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627369, 1432627369, 0, 1, 0, 'BÒ', 'BO', '', ''),
(44, 4, '', 5, 42, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627378, 1432627378, 0, 1, 0, 'LANH', 'LANH', '', ''),
(45, 4, '', 6, 43, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627385, 1432627385, 0, 1, 0, 'TƠ TẰM', 'TO-TAM', '', ''),
(46, 4, '', 7, 44, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627399, 1432627399, 0, 1, 0, 'THUN', 'THUN', '', ''),
(47, 4, '', 8, 45, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627407, 1432627407, 0, 1, 0, 'LỤA', 'LUA', '', ''),
(48, 5, '', 1, 47, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627418, 1432627418, 0, 1, 0, 'VIỆT NAM', 'VIET-NAM', '', ''),
(49, 5, '', 2, 48, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627425, 1432627425, 0, 1, 0, 'HÀN QUỐC', 'HAN-QUOC', '', ''),
(50, 5, '', 3, 49, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627519, 1432627519, 0, 1, 0, 'ĐỨC', 'DUC', '', ''),
(51, 5, '', 4, 50, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627528, 1432627528, 1, 1, 0, 'NHẬT BẢN', 'NHAT-BAN', '', ''),
(52, 5, '', 5, 51, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627541, 1432627541, 0, 1, 0, 'THÁI LAN', 'THAI-LAN', '', ''),
(53, 5, '', 6, 52, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627553, 1432627553, 1, 1, 0, 'HONGKONG', 'HONGKONG', '', ''),
(54, 5, '', 7, 53, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627565, 1432627565, 0, 1, 0, 'TRUNG QUỐC', 'TRUNG-QUOC', '', ''),
(55, 5, '', 8, 54, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627573, 1432627573, 0, 1, 0, 'PHÁP', 'PHAP', '', ''),
(56, 5, '', 9, 55, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627579, 1432627579, 0, 1, 0, 'ANH', 'ANH', '', ''),
(57, 5, '', 10, 56, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627617, 1432627617, 0, 1, 0, 'AUSTRALIA', 'AUSTRALIA', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_group_cateid`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_group_cateid` (
  `groupid` mediumint(8) unsigned NOT NULL,
  `cateid` mediumint(8) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_group_cateid`
--

INSERT INTO `nv4_shops_group_cateid` (`groupid`, `cateid`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(5, 2),
(5, 3),
(5, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_group_items`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_group_items` (
  `pro_id` int(11) unsigned NOT NULL DEFAULT '0',
  `group_id` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_group_items`
--

INSERT INTO `nv4_shops_group_items` (`pro_id`, `group_id`) VALUES
(9, 7),
(9, 24),
(9, 32),
(9, 33),
(9, 34),
(9, 35),
(9, 53),
(10, 7),
(10, 16),
(10, 32),
(10, 33),
(10, 34),
(10, 35),
(10, 51),
(11, 7),
(11, 24),
(11, 35);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_group_quantity`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_group_quantity` (
  `pro_id` int(11) unsigned NOT NULL DEFAULT '0',
  `listgroup` varchar(247) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_location`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_location` (
`id` mediumint(8) unsigned NOT NULL,
  `parentid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  `sort` mediumint(8) NOT NULL DEFAULT '0',
  `lev` smallint(4) NOT NULL DEFAULT '0',
  `numsub` int(11) NOT NULL DEFAULT '0',
  `subid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_money_vi`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_money_vi` (
  `id` mediumint(11) NOT NULL,
  `code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange` float NOT NULL DEFAULT '0',
  `round` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_format` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',||.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_money_vi`
--

INSERT INTO `nv4_shops_money_vi` (`id`, `code`, `currency`, `exchange`, `round`, `number_format`) VALUES
(840, 'USD', 'US Dollar', 21000, '0.01', ',||.'),
(704, 'VND', 'Vietnam Dong', 1, '100', ',||.');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_orders`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_orders` (
`order_id` int(11) unsigned NOT NULL,
  `order_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `order_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_id` int(11) unsigned NOT NULL DEFAULT '0',
  `shop_id` int(11) unsigned NOT NULL DEFAULT '0',
  `who_is` int(2) unsigned NOT NULL DEFAULT '0',
  `unit_total` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_total` double unsigned NOT NULL DEFAULT '0',
  `order_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `postip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_view` tinyint(2) NOT NULL DEFAULT '0',
  `transaction_status` tinyint(4) NOT NULL,
  `transaction_id` int(11) NOT NULL DEFAULT '0',
  `transaction_count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_orders_id`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_orders_id` (
`id` int(11) unsigned NOT NULL,
  `order_id` int(11) NOT NULL,
  `proid` mediumint(9) NOT NULL,
  `num` mediumint(9) NOT NULL,
  `price` int(11) NOT NULL,
  `discount_id` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_orders_id_group`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_orders_id_group` (
  `order_i` int(11) NOT NULL,
  `group_id` mediumint(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_orders_shipping`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_orders_shipping` (
`id` tinyint(11) unsigned NOT NULL,
  `order_id` tinyint(11) unsigned NOT NULL,
  `ship_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_phone` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_location_id` mediumint(8) unsigned NOT NULL,
  `ship_address_extend` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_shops_id` tinyint(3) unsigned NOT NULL,
  `ship_carrier_id` tinyint(3) unsigned NOT NULL,
  `weight` float NOT NULL DEFAULT '0',
  `weight_unit` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ship_price` float NOT NULL DEFAULT '0',
  `ship_price_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `add_time` int(11) unsigned NOT NULL,
  `edit_time` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_payment`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_payment` (
  `payment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentname` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images_button` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_point`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_point` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `point_total` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_point_history`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_point_history` (
`id` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL,
  `point` int(11) NOT NULL DEFAULT '0',
  `time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_point_queue`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_point_queue` (
  `order_id` int(11) NOT NULL,
  `point` mediumint(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_review`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_review` (
`review_id` int(11) unsigned NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `sender` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(1) NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_rows`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_rows` (
`id` int(11) unsigned NOT NULL,
  `listcatid` int(11) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `product_code` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `product_number` int(11) NOT NULL DEFAULT '0',
  `product_price` float NOT NULL DEFAULT '0',
  `price_config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_unit` smallint(4) NOT NULL,
  `product_weight` float NOT NULL DEFAULT '0',
  `weight_unit` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `discount_id` smallint(6) NOT NULL DEFAULT '0',
  `homeimgfile` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `homeimgalt` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otherimage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_from` int(11) unsigned NOT NULL DEFAULT '0',
  `gift_to` int(11) unsigned NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ratingdetail` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `allowed_send` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitslm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num_sell` mediumint(8) NOT NULL DEFAULT '0',
  `showprice` tinyint(2) NOT NULL DEFAULT '0',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_gift_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_address` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_rows`
--

INSERT INTO `nv4_shops_rows` (`id`, `listcatid`, `user_id`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `product_code`, `product_number`, `product_price`, `price_config`, `money_unit`, `product_unit`, `product_weight`, `weight_unit`, `discount_id`, `homeimgfile`, `homeimgthumb`, `homeimgalt`, `otherimage`, `imgposition`, `copyright`, `gift_from`, `gift_to`, `inhome`, `allowed_comm`, `allowed_rating`, `ratingdetail`, `allowed_send`, `allowed_print`, `allowed_save`, `hitstotal`, `hitscm`, `hitslm`, `num_sell`, `showprice`, `vi_title`, `vi_alias`, `vi_hometext`, `vi_bodytext`, `vi_gift_content`, `vi_address`) VALUES
(1, 6, 1, 1432363521, 1432365563, 3, 1432363521, 1457104646, 2, 'V01', 19, 100000, '', 'VND', 1, 20, 'g', 0, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, 'Váy Maxi sang trọng', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 11, 0, 0, 1, 1, 'Đầm Maxi sang trọng', 'Dam-Maxi-sang-trong', 'Đầm maxi thời trang', 'Sản phẩm thời trang<br  /> <div style="text-align:center"><img alt="giay bup be ngoi sao nhap khau" height="800" src="/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg" width="800" /></div> ', '', ''),
(2, 6, 1, 1432365534, 1432365970, 3, 1432365534, 1457104646, 2, 'V02', 50, 100000, '', 'VND', 1, 250, 'g', 0, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 1, 0, 0, 0, 1, 'Đầm maxi họa tiết', 'Dam-maxi-hoa-tiet', 'đầm maxi sang trọng', 'Sản phẩm thời trang<br  /> <div style="text-align:center"><img alt="giay bup be ngoi sao nhap khau" height="800" src="/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg" width="800" /></div> ', '', ''),
(3, 7, 1, 1432366714, 1432366740, 3, 1432366714, 1457104646, 2, 'V03', 14, 50000, '', 'VND', 1, 250, 'g', 0, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, 'Chân Váy Công Sở', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 4, 0, 0, 1, 1, 'Chân Váy Công Sở', 'Chan-Vay-Cong-So', 'chân váy công sở', 'Sản phẩm thời trang<br  /> <div style="text-align:center"><img alt="giay bup be ngoi sao nhap khau" height="800" src="/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg" width="800" /></div> ', '', ''),
(4, 7, 1, 1432367089, 1432367089, 3, 1432367089, 1457104646, 2, 'S000004', 17, 50000, '', 'VND', 1, 300, 'g', 0, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, 'chân váy caro', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 4, 0, 0, 3, 1, 'Chân váy caro', 'Chan-vay-caro', 'chân váy caro', 'Sản phẩm thời trang<br  /> <div style="text-align:center"><img alt="giay bup be ngoi sao nhap khau" height="800" src="/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg" width="800" /></div> ', '', ''),
(5, 10, 1, 1432367366, 1432367366, 3, 1432367366, 1457104646, 2, 'S000005', 30, 0, '', 'VND', 1, 220, 'g', 0, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, 'áo somi lụa đẹp', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 0, 0, 0, 0, 1, 'Áo sơmi lụa', 'Ao-somi-lua', 'áo somi lụa đẹp', 'Sản phẩm thời trang<br  /> <div style="text-align:center"><img alt="giay bup be ngoi sao nhap khau" height="800" src="/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg" width="800" /></div> ', '', ''),
(6, 10, 1, 1432367846, 1432370007, 3, 1432367846, 1457104646, 2, 'S000006', 15, 0, '', 'VND', 1, 300, 'g', 0, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 8, 0, 0, 0, 1, 'Áo sơ mi voan phối tay ren', 'Ao-so-mi-voan-phoi-tay-ren', '<h1><span style="font-size:14px;">Áo sơ mi voan</span></h1>', 'Sản phẩm thời trang<br  /> <div style="text-align:center"><img alt="giay bup be ngoi sao nhap khau" height="800" src="/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg" width="800" /></div> ', '', ''),
(8, 11, 1, 1432605984, 1432605984, 3, 1432605984, 1457104646, 2, 'S000008', 15, 120000, '', 'VND', 1, 200, 'g', 0, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, 'áo thun nữ', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 1, 0, 0, 0, 1, 'áo thun nữ họa tiết độc đáo', 'ao-thun-nu-hoa-tiet-doc-dao', 'áo thun nữ họa tiết độc đáo', 'Sản phẩm thời trang<br  /> <div style="text-align:center"><img alt="giay bup be ngoi sao nhap khau" height="800" src="/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg" width="800" /></div> ', '', ''),
(9, 13, 1, 1432606317, 1432629809, 3, 1432606317, 1457104646, 2, 'S000009', 10, 100000, '', 'VND', 1, 500, 'g', 1, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, 'Giày da nữ gót vuông', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 1, 0, 0, 0, 1, 'Giày da nữ gót vuông', 'Giay-da-nu-got-vuong', 'Giày da nữ gót vuông', 'Sản phẩm thời trang<br  /> <div style="text-align:center"><img alt="giay bup be ngoi sao nhap khau" height="800" src="/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg" width="800" /></div> ', '', ''),
(10, 13, 1, 1432606522, 1432629789, 3, 1432606522, 1457104646, 2, 'S000010', 10, 100000, '', 'VND', 2, 350, 'g', 2, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, 'Giày cao gót mũi nhọn màu hồng', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 1, 0, 0, 0, 1, 'Giày cao gót mũi nhọn màu hồng be quý phái', 'Giay-cao-got-mui-nhon-mau-hong-be-quy-phai', 'Giày cao gót mũi nhọn màu hồng be quý phái', 'Sản phẩm thời trang<br  /> <div style="text-align:center"><img alt="giay bup be ngoi sao nhap khau" height="800" src="/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg" width="800" /></div> ', '', ''),
(7, 11, 1, 1432369124, 1432369433, 3, 1432369124, 1457104646, 2, 'S000007', 50, 120000, '', 'VND', 1, 150, 'g', 0, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 2, 0, 0, 0, 1, 'áo thun nữ', 'ao-thun-nu', 'áo thun nữ', 'Sản phẩm thời trang<br  /> <div style="text-align:center"><img alt="giay bup be ngoi sao nhap khau" height="800" src="/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg" width="800" /></div> ', '', ''),
(11, 15, 1, 1432607113, 1435376866, 3, 1432607113, 1457104646, 2, 'S000011', 20, 100000, '', 'VND', 2, 250, 'g', 0, '2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 1, 'GIÀY BÚP BÊ NGÔI SAO NHẬP KHẨU', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 2, 0, 0, 0, 1, 'GIÀY BÚP BÊ NGÔI SAO NHẬP KHẨU', 'GIAY-BUP-BE-NGOI-SAO-NHAP-KHAU', 'GIÀY BÚP BÊ NGÔI SAO NHẬP KHẨU', 'Sản phẩm thời trang<br  /> <div style="text-align:center"><img alt="giay bup be ngoi sao nhap khau" height="800" src="/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg" width="800" /></div> ', '', ''),
(12, 23, 1, 1457103406, 1457103506, 1, 1457103406, 0, 2, 'S000012', 0, 2000000, '', 'VND', 1, 0, 'g', 0, '2016_03/go-van-san_efloor.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 0, 0, 0, 0, 1, 'Gỗ ván sàn', 'go-van-san', 'Sàn gỗ Efloor&nbsp;Mode 323 có bề&nbsp;mặt sần theo vân&nbsp;đặc biệt hình kim cương sáu cạnh, với', 'Sàn gỗ Efloor&nbsp;Mode 323 có bề&nbsp;mặt sần theo vân&nbsp;đặc biệt hình kim cương sáu cạnh, với', '', ''),
(13, 23, 1, 1457103679, 1457103679, 1, 1457103679, 0, 2, 'S000013', 0, 3000000, '', 'VND', 1, 0, 'g', 0, '2016_03/supper_floor.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 1, 0, 0, 0, 1, 'Supper floor', 'supper-floor', 'Sàn gỗ Efloor Mode 1011 là sàn gỗ với họa tiết hoa mầm được xen mọc vào giữa mặt gỗ thể hiện sự gần', 'Sàn gỗ Efloor Mode 1011 là sàn gỗ với họa tiết hoa mầm được xen mọc vào giữa mặt gỗ thể hiện sự gần', '', ''),
(14, 23, 1, 1457103779, 1457103779, 1, 1457103779, 0, 2, 'S000014', 0, 4000000, '', 'VND', 1, 0, 'g', 0, '2016_03/term3.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 3, 0, 0, 0, 1, 'Phụ kiện', 'phu-kien', 'Sàn gỗ Efloor Mode 501 là sàn gỗ bóng, có ưu điểm bắt ánh sáng mạnh, tạo độ rộng rãi cho ngôi nhà,', 'Sàn gỗ Efloor Mode 501 là sàn gỗ bóng, có ưu điểm bắt ánh sáng mạnh, tạo độ rộng rãi cho ngôi nhà,', '', ''),
(15, 23, 1, 1457255871, 1457255871, 1, 1457255871, 0, 2, 'S000015', 0, 3000000, '', 'VND', 1, 0, 'g', 0, '2016_03/_mg_1807_0.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 3, 0, 0, 0, 1, 'S323', 's323', 'Sàn gỗ Efloor&nbsp;Mode 323 có bề&nbsp;mặt sần theo vân&nbsp;đặc biệt hình kim cương sáu cạnh, với', 'Sàn gỗ Efloor&nbsp;Mode 323 có bề&nbsp;mặt sần theo vân&nbsp;đặc biệt hình kim cương sáu cạnh, với', '', ''),
(16, 23, 1, 1457255968, 1458717420, 1, 1457255968, 0, 2, 'S000016', 0, 3000000, '', 'VND', 1, 0, 'g', 0, '2016_03/501_bong.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 2, 0, 0, 0, 1, 'T 1011', 't-1011', 'Sàn gỗ Efloor Mode 1011 là sàn gỗ với họa tiết hoa mầm được xen mọc vào giữa mặt gỗ thể hiện sự gần', 'Sàn gỗ Efloor Mode 1011 là sàn gỗ với họa tiết hoa mầm được xen mọc vào giữa mặt gỗ thể hiện sự gần', '', ''),
(17, 23, 1, 1457256035, 1457256035, 1, 1457256035, 0, 2, 'S000017', 0, 3500000, '', 'VND', 1, 0, 'g', 0, '2016_03/1001_tran_0.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 1, 0, 0, 0, 1, 'B 501', 'b-501', 'Sàn gỗ Efloor Mode 501 là sàn gỗ bóng, có ưu điểm bắt ánh sáng mạnh, tạo độ rộng rãi cho ngôi nhà,', 'Sàn gỗ Efloor Mode 501 là sàn gỗ bóng, có ưu điểm bắt ánh sáng mạnh, tạo độ rộng rãi cho ngôi nhà,', '', ''),
(18, 23, 1, 1457256125, 1457256125, 1, 1457256125, 0, 2, 'S000018', 0, 4000000, '', 'VND', 1, 0, 'g', 0, '2016_03/1011_tran.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 2, 0, 0, 0, 1, 'T 1001', 't-1001', '<strong><a href="http://efloorvn.com/san-pham/go-van-san">Sàn gỗ Efloor</a></strong>&nbsp;Vân gỗ sồi với màu vàng tươi giúp căn phòng của bạn trở nên tươi tắn và trẻ trung....', '<strong><a href="http://efloorvn.com/san-pham/go-van-san">Sàn gỗ Efloor</a></strong>&nbsp;Vân gỗ sồi với màu vàng tươi giúp căn phòng của bạn trở nên tươi tắn và trẻ trung....', '', ''),
(19, 23, 1, 1457319849, 1457319849, 1, 1457319849, 0, 2, 'S000019', 0, 5000000, '', 'VND', 1, 0, 'g', 0, '2016_03/d.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 0, 0, 0, 0, 1, 'Nâng cấp sàn gạch men bằng sàn gỗ tại...', 'nang-cap-san-gach-men-bang-san-go-tai', 'Công ty CP TM Hà Thành đã thực hiện công trình trang trí, lát sàn gỗ tại toàn bộ các địa điểm đào tạo của hệ thống trường này. Dream House là hệ thống gồm ba khối trường: Mầm non và Nhà trẻ, Cấp 1, Cấp 2 được tổ chức theo loại hình đào tạo cao câp.', 'Công ty CP TM Hà Thành đã thực hiện công trình trang trí, lát sàn gỗ tại toàn bộ các địa điểm đào tạo của hệ thống trường này. Dream House là hệ thống gồm ba khối trường: Mầm non và Nhà trẻ, Cấp 1, Cấp 2 được tổ chức theo loại hình đào tạo cao câp.', '', ''),
(20, 23, 1, 1457320038, 1457320038, 1, 1457320038, 0, 2, 'S000020', 0, 6000000, '', 'VND', 1, 0, 'g', 0, '2016_03/duan4.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 0, 0, 0, 0, 1, 'Sàn gỗ tại Biệt thự cao cấp khu Ciputra...', 'san-go-tai-biet-thu-cao-cap-khu-ciputra', 'Công ty CP TM Hà Thành đã thực hiện công trình trang trí, lát sàn gỗ tại toàn bộ các địa điểm đào tạo của hệ thống trường này. Dream House là hệ thống gồm ba khối trường: Mầm non và Nhà trẻ, Cấp 1, Cấp 2 được tổ chức theo loại hình đào tạo cao câp.', 'Công ty CP TM Hà Thành đã thực hiện công trình trang trí, lát sàn gỗ tại toàn bộ các địa điểm đào tạo của hệ thống trường này. Dream House là hệ thống gồm ba khối trường: Mầm non và Nhà trẻ, Cấp 1, Cấp 2 được tổ chức theo loại hình đào tạo cao câp.', '', ''),
(21, 23, 1, 1457320126, 1457320126, 1, 1457320126, 0, 2, 'S000021', 0, 3000000, '', 'VND', 1, 0, 'g', 0, '2016_03/duan81.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 1, 0, 0, 0, 1, 'Nâng cấp sàn gạch men bằng sàn gỗ tại...', 'nang-cap-san-gach-men-bang-san-go-tai-21', 'Công ty CP TM Hà Thành đã thực hiện công trình trang trí, lát sàn gỗ tại toàn bộ các địa điểm đào tạo của hệ thống trường này. Dream House là hệ thống gồm ba khối trường: Mầm non và Nhà trẻ, Cấp 1, Cấp 2 được tổ chức theo loại hình đào tạo cao câp.', 'Công ty CP TM Hà Thành đã thực hiện công trình trang trí, lát sàn gỗ tại toàn bộ các địa điểm đào tạo của hệ thống trường này. Dream House là hệ thống gồm ba khối trường: Mầm non và Nhà trẻ, Cấp 1, Cấp 2 được tổ chức theo loại hình đào tạo cao câp.', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_shops`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_shops` (
`id` tinyint(3) unsigned NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_shops_carrier`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_shops_carrier` (
  `shops_id` tinyint(3) unsigned NOT NULL,
  `carrier_id` tinyint(3) unsigned NOT NULL,
  `config_id` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_tabs`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_tabs` (
`id` int(3) unsigned NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` int(10) unsigned NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_tabs`
--

INSERT INTO `nv4_shops_tabs` (`id`, `icon`, `content`, `weight`, `active`, `vi_title`) VALUES
(1, '', 'content_detail', 1, 1, 'Chi tiết sản phẩm'),
(2, '', 'content_comments', 2, 1, 'Bình luận'),
(3, '', 'content_rate', 3, 1, 'Đánh giá');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_tags_id_vi`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_tags_id_vi` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_tags_id_vi`
--

INSERT INTO `nv4_shops_tags_id_vi` (`id`, `tid`, `keyword`) VALUES
(1, 1, 'thời trang'),
(1, 2, 'sang trọng'),
(1, 3, 'phù hợp'),
(1, 4, 'đi chơi'),
(6, 5, 'áo sơ mi'),
(10, 6, 'mũi nhọn'),
(11, 7, 'búp bê'),
(12, 8, 'kim cương'),
(13, 9, 'thể hiện'),
(14, 10, 'ưu điểm'),
(14, 11, 'ánh sáng'),
(14, 12, 'rộng rãi'),
(15, 8, 'kim cương'),
(16, 9, 'thể hiện'),
(17, 10, 'ưu điểm'),
(17, 11, 'ánh sáng'),
(17, 12, 'rộng rãi'),
(18, 13, 'trở nên'),
(18, 14, 'tươi tắn'),
(19, 15, 'công ty'),
(19, 16, 'thực hiện'),
(19, 17, 'trang trí'),
(19, 18, 'toàn bộ'),
(19, 19, 'địa điểm'),
(19, 20, 'đào tạo'),
(19, 21, 'hệ thống'),
(19, 22, 'mầm non'),
(19, 23, 'nhà trẻ'),
(19, 24, 'tổ chức'),
(19, 25, 'loại hình'),
(20, 15, 'công ty'),
(20, 16, 'thực hiện'),
(20, 17, 'trang trí'),
(20, 18, 'toàn bộ'),
(20, 19, 'địa điểm'),
(20, 20, 'đào tạo'),
(20, 21, 'hệ thống'),
(20, 22, 'mầm non'),
(20, 23, 'nhà trẻ'),
(20, 24, 'tổ chức'),
(20, 25, 'loại hình'),
(21, 15, 'công ty'),
(21, 16, 'thực hiện'),
(21, 17, 'trang trí'),
(21, 18, 'toàn bộ'),
(21, 19, 'địa điểm'),
(21, 20, 'đào tạo'),
(21, 21, 'hệ thống'),
(21, 22, 'mầm non'),
(21, 23, 'nhà trẻ'),
(21, 24, 'tổ chức'),
(21, 25, 'loại hình');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_tags_vi`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_tags_vi` (
`tid` mediumint(8) unsigned NOT NULL,
  `numpro` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_tags_vi`
--

INSERT INTO `nv4_shops_tags_vi` (`tid`, `numpro`, `alias`, `image`, `description`, `keywords`) VALUES
(1, 1, 'thời-trang', '', '', 'thời trang'),
(2, 1, 'sang-trọng', '', '', 'sang trọng'),
(3, 1, 'phù-hợp', '', '', 'phù hợp'),
(4, 1, 'đi-chơi', '', '', 'đi chơi'),
(5, 1, 'áo-sơ-mi', '', '', 'áo sơ mi'),
(6, 1, 'mũi-nhọn', '', '', 'mũi nhọn'),
(7, 1, 'búp-bê', '', '', 'búp bê'),
(8, 2, 'kim-cương', '', '', 'kim cương'),
(9, 2, 'thể-hiện', '', '', 'thể hiện'),
(10, 2, 'ưu-điểm', '', '', 'ưu điểm'),
(11, 2, 'ánh-sáng', '', '', 'ánh sáng'),
(12, 2, 'rộng-rãi', '', '', 'rộng rãi'),
(13, 1, 'trở-nên', '', '', 'trở nên'),
(14, 1, 'tươi-tắn', '', '', 'tươi tắn'),
(15, 3, 'công-ty', '', '', 'công ty'),
(16, 3, 'thực-hiện', '', '', 'thực hiện'),
(17, 3, 'trang-trí', '', '', 'trang trí'),
(18, 3, 'toàn-bộ', '', '', 'toàn bộ'),
(19, 3, 'địa-điểm', '', '', 'địa điểm'),
(20, 3, 'đào-tạo', '', '', 'đào tạo'),
(21, 3, 'hệ-thống', '', '', 'hệ thống'),
(22, 3, 'mầm-non', '', '', 'mầm non'),
(23, 3, 'nhà-trẻ', '', '', 'nhà trẻ'),
(24, 3, 'tổ-chức', '', '', 'tổ chức'),
(25, 3, 'loại-hình', '', '', 'loại hình');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_template`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_template` (
`id` mediumint(8) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_transaction`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_transaction` (
`transaction_id` int(11) NOT NULL,
  `transaction_time` int(11) NOT NULL DEFAULT '0',
  `transaction_status` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `payment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `payment_id` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `payment_time` int(11) NOT NULL DEFAULT '0',
  `payment_amount` float NOT NULL DEFAULT '0',
  `payment_data` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_units`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_units` (
`id` int(11) NOT NULL,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_note` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_units`
--

INSERT INTO `nv4_shops_units` (`id`, `vi_title`, `vi_note`) VALUES
(1, 'cái', ''),
(2, 'đôi', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_warehouse`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_warehouse` (
`wid` int(11) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_warehouse`
--

INSERT INTO `nv4_shops_warehouse` (`wid`, `title`, `note`, `user_id`, `addtime`) VALUES
(1, 'Nhập kho ngày 23/05/2015', '', 1, 1432364016),
(2, 'Nhập kho ngày 23/05/2015', '', 1, 1432365552),
(3, 'Nhập kho ngày 23/05/2015', '', 1, 1432366753),
(4, 'Nhập kho ngày 23/05/2015', '', 1, 1432367106),
(5, 'Nhập kho ngày 23/05/2015', '', 1, 1432367387),
(6, 'Nhập kho ngày 23/05/2015', '', 1, 1432367857),
(7, 'Nhập kho ngày 23/05/2015', '', 1, 1432369139),
(8, 'Nhập kho ngày 26/05/2015', '', 1, 1432608794),
(9, 'Nhập kho ngày 26/05/2015', '', 1, 1432608805),
(10, 'Nhập kho ngày 26/05/2015', '', 1, 1432608819),
(11, 'Nhập kho ngày 26/05/2015', '', 1, 1432608835);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_warehouse_logs`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_warehouse_logs` (
`logid` int(11) unsigned NOT NULL,
  `wid` int(11) unsigned NOT NULL DEFAULT '0',
  `pro_id` int(11) unsigned NOT NULL DEFAULT '0',
  `quantity` int(11) unsigned NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_warehouse_logs`
--

INSERT INTO `nv4_shops_warehouse_logs` (`logid`, `wid`, `pro_id`, `quantity`, `price`, `money_unit`) VALUES
(1, 1, 1, 20, 150000, 'VND'),
(2, 2, 2, 50, 250000, 'VND'),
(3, 3, 3, 15, 70000, 'VND'),
(4, 4, 4, 20, 120000, 'VND'),
(5, 5, 5, 30, 120000, 'VND'),
(6, 6, 6, 15, 180000, 'VND'),
(7, 7, 7, 50, 50000, 'VND'),
(8, 8, 11, 20, 80, 'VND'),
(9, 9, 10, 10, 180, 'VND'),
(10, 10, 9, 10, 150, 'VND'),
(11, 11, 8, 15, 50000, 'VND');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_warehouse_logs_group`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_warehouse_logs_group` (
`id` int(11) unsigned NOT NULL,
  `logid` int(11) unsigned NOT NULL DEFAULT '0',
  `listgroup` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) unsigned NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_weight_vi`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_weight_vi` (
`id` tinyint(2) unsigned NOT NULL,
  `code` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange` float NOT NULL DEFAULT '0',
  `round` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_weight_vi`
--

INSERT INTO `nv4_shops_weight_vi` (`id`, `code`, `title`, `exchange`, `round`) VALUES
(1, 'g', 'Gram', 1, '0.1'),
(2, 'kg', 'Kilogam', 1000, '0.1');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_wishlist`
--

CREATE TABLE IF NOT EXISTS `nv4_shops_wishlist` (
`wid` smallint(6) NOT NULL,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `listid` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_upload_dir`
--

CREATE TABLE IF NOT EXISTS `nv4_upload_dir` (
`did` mediumint(8) NOT NULL,
  `dirname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `thumb_type` tinyint(4) NOT NULL DEFAULT '0',
  `thumb_width` smallint(6) NOT NULL DEFAULT '0',
  `thumb_height` smallint(6) NOT NULL DEFAULT '0',
  `thumb_quality` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_upload_dir`
--

INSERT INTO `nv4_upload_dir` (`did`, `dirname`, `time`, `thumb_type`, `thumb_width`, `thumb_height`, `thumb_quality`) VALUES
(0, '', 0, 3, 100, 150, 90),
(1, 'uploads', 1457256676, 0, 0, 0, 0),
(2, 'uploads/about', 0, 0, 0, 0, 0),
(3, 'uploads/banners', 0, 0, 0, 0, 0),
(4, 'uploads/contact', 0, 0, 0, 0, 0),
(5, 'uploads/freecontent', 0, 0, 0, 0, 0),
(6, 'uploads/menu', 0, 0, 0, 0, 0),
(7, 'uploads/news', 1458663616, 0, 0, 0, 0),
(8, 'uploads/news/2016_01', 1458525981, 0, 0, 0, 0),
(9, 'uploads/news/source', 0, 0, 0, 0, 0),
(10, 'uploads/news/temp_pic', 0, 0, 0, 0, 0),
(11, 'uploads/news/topics', 0, 0, 0, 0, 0),
(12, 'uploads/page', 0, 0, 0, 0, 0),
(13, 'uploads/shops', 1457104059, 0, 0, 0, 0),
(14, 'uploads/shops/2015_05', 0, 0, 0, 0, 0),
(15, 'uploads/siteterms', 0, 0, 0, 0, 0),
(16, 'uploads/users', 0, 0, 0, 0, 0),
(17, 'uploads/users/groups', 0, 0, 0, 0, 0),
(18, 'uploads/shops/temp_pic', 0, 0, 0, 0, 0),
(19, 'uploads/shops/2016_03', 1457256686, 2, 0, 300, 90),
(20, 'uploads/shops/files', 0, 0, 0, 0, 0),
(21, 'uploads/news/2016_03', 1458526198, 2, 0, 300, 90),
(22, 'uploads/cong-trinh-da-thuc-hien', 1458663643, 0, 0, 0, 0),
(23, 'uploads/cong-trinh-da-thuc-hien/source', 1458534868, 0, 0, 0, 0),
(24, 'uploads/cong-trinh-da-thuc-hien/temp_pic', 0, 0, 0, 0, 0),
(25, 'uploads/cong-trinh-da-thuc-hien/topics', 0, 0, 0, 0, 0),
(26, 'uploads/cong-trinh-da-thuc-hien/2016_03', 1458663682, 2, 0, 300, 90);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_upload_file`
--

CREATE TABLE IF NOT EXISTS `nv4_upload_file` (
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `srcwidth` int(11) NOT NULL DEFAULT '0',
  `srcheight` int(11) NOT NULL DEFAULT '0',
  `sizes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_upload_file`
--

INSERT INTO `nv4_upload_file` (`name`, `ext`, `type`, `filesize`, `src`, `srcwidth`, `srcheight`, `sizes`, `userid`, `mtime`, `did`, `title`, `alt`) VALUES
('logo_0.jpg', 'jpg', 'image', 4084, 'assets/logo_0.jpg', 80, 29, '166|59', 1, 1456905801, 1, 'logo_0.jpg', 'logo 0'),
('efloorvn.com_.jpg', 'jpg', 'image', 95868, 'assets/efloorvn.com_.jpg', 80, 46, '1050|591', 1, 1456907386, 1, 'efloorvn.com_.jpg', 'efloorvn com'),
('go_van_san_1.jpg', 'jpg', 'image', 75570, 'assets/go_van_san_1.jpg', 80, 46, '1050|591', 1, 1456907396, 1, 'go_van_san_1.jpg', 'go van san 1'),
('go_van_san_5.jpg', 'jpg', 'image', 97121, 'assets/go_van_san_5.jpg', 80, 46, '1050|591', 1, 1456907408, 1, 'go_van_san_5.jpg', 'go van san 5'),
('go-van-san...jpg', 'jpg', 'image', 92660, 'assets/go-van-san_efloor_0.jpg', 80, 46, '1050|591', 1, 1456907424, 1, 'go-van-san_efloor_0.jpg', 'go van san efloor 0'),
('kho_efloor.png', 'png', 'image', 516711, 'assets/kho_efloor.png', 80, 38, '819|390', 1, 1456907435, 1, 'kho_efloor.png', 'kho efloor'),
('go-van-san...jpg', 'jpg', 'image', 92660, 'assets/shops/2016_03/go-van-san_efloor.jpg', 80, 45, '1050|591', 1, 1457103500, 19, 'go-van-san_efloor.jpg', 'go van san efloor'),
('supper_floor.jpg', 'jpg', 'image', 122203, 'assets/shops/2016_03/supper_floor.jpg', 80, 45, '1050|591', 1, 1457103600, 19, 'supper_floor.jpg', 'supper floor'),
('term3.jpg', 'jpg', 'image', 19041, 'assets/shops/2016_03/term3.jpg', 80, 48, '262|157', 1, 1457108697, 19, 'term3.jpg', 'term3'),
('_mg_1807_0.jpg', 'jpg', 'image', 77537, 'assets/shops/2016_03/_mg_1807_0.jpg', 45, 80, '432|768', 1, 1457255760, 19, '_mg_1807_0.jpg', 'mg 1807 0'),
('501_bong.jpg', 'jpg', 'image', 154164, 'assets/shops/2016_03/501_bong.jpg', 45, 80, '431|768', 1, 1457255917, 19, '501_bong.jpg', '501 bong'),
('1001_tran_0.jpg', 'jpg', 'image', 163725, 'assets/shops/2016_03/1001_tran_0.jpg', 45, 80, '431|768', 1, 1457256008, 19, '1001_tran_0.jpg', '1001 tran 0'),
('1011_tran.jpg', 'jpg', 'image', 366798, 'assets/shops/2016_03/1011_tran.jpg', 80, 53, '1024|682', 1, 1457256098, 19, '1011_tran.jpg', '1011 tran'),
('d.jpg', 'jpg', 'image', 129469, 'assets/shops/2016_03/d.jpg', 80, 80, '400|400', 1, 1457319804, 19, 'd.jpg', 'd'),
('duan4.jpg', 'jpg', 'image', 109330, 'assets/shops/2016_03/duan4.jpg', 80, 60, '400|300', 1, 1457319982, 19, 'duan4.jpg', 'duan4'),
('duan81.jpg', 'jpg', 'image', 123238, 'assets/shops/2016_03/duan81.jpg', 80, 60, '400|300', 1, 1457320088, 19, 'duan81.jpg', 'duan81'),
('chuc-mung-...jpg', 'jpg', 'image', 130708, 'assets/news/chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 80, 62, '461|360', 1, 1456082540, 7, 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'chuc mung nukeviet thong tu 20 bo tttt'),
('go_van_san.jpg', 'jpg', 'image', 258032, 'assets/news/go_van_san.jpg', 80, 46, '1050|591', 1, 1458525974, 7, 'go_van_san.jpg', ''),
('go_van_san...jpg', 'jpg', 'image', 129120, 'assets/news/go_van_san_efloor_1.jpg', 80, 46, '1050|591', 1, 1458525974, 7, 'go_van_san_efloor_1.jpg', ''),
('san_go_con...jpg', 'jpg', 'image', 119659, 'assets/news/san_go_cong_nghiep.jpg', 80, 46, '1050|591', 1, 1458525973, 7, 'san_go_cong_nghiep.jpg', ''),
('efloorvn_1.jpg', 'jpg', 'image', 75645, 'assets/news/efloorvn_1.jpg', 80, 46, '1050|591', 1, 1458525973, 7, 'efloorvn_1.jpg', ''),
('go_van_san_2.jpg', 'jpg', 'image', 75570, 'assets/news/go_van_san_2.jpg', 80, 46, '1050|591', 1, 1458525973, 7, 'go_van_san_2.jpg', ''),
('hoc-viec-t...jpg', 'jpg', 'image', 167193, 'assets/news/hoc-viec-tai-cong-ty-vinades.jpg', 80, 63, '460|360', 1, 1456082540, 7, 'hoc-viec-tai-cong-ty-vinades.jpg', 'hoc viec tai cong ty vinades'),
('hoptac.jpg', 'jpg', 'image', 12871, 'assets/news/hoptac.jpg', 80, 66, '382|314', 1, 1456082540, 7, 'hoptac.jpg', 'hoptac'),
('nangly.jpg', 'jpg', 'image', 34802, 'assets/news/nangly.jpg', 80, 53, '500|332', 1, 1456082540, 7, 'nangly.jpg', 'nangly'),
('nukeviet-cms.jpg', 'jpg', 'image', 83489, 'assets/news/nukeviet-cms.jpg', 80, 55, '500|345', 1, 1456082540, 7, 'nukeviet-cms.jpg', 'nukeviet cms'),
('nukeviet-n...jpg', 'jpg', 'image', 18611, 'assets/news/nukeviet-nhantaidatviet2011.jpg', 80, 54, '400|268', 1, 1456082540, 7, 'nukeviet-nhantaidatviet2011.jpg', 'nukeviet nhantaidatviet2011'),
('tap-huan-p...jpg', 'jpg', 'image', 132379, 'assets/news/tap-huan-pgd-ha-dong-2015.jpg', 80, 52, '460|295', 1, 1456082540, 7, 'tap-huan-pgd-ha-dong-2015.jpg', 'tap huan pgd ha dong 2015'),
('thuc-tap-sinh.jpg', 'jpg', 'image', 71135, 'assets/news/thuc-tap-sinh.jpg', 80, 63, '460|360', 1, 1456082540, 7, 'thuc-tap-sinh.jpg', 'thuc tap sinh'),
('tuyen-dung...png', 'png', 'image', 118910, 'assets/news/tuyen-dung-nvkd.png', 80, 56, '400|279', 1, 1456082540, 7, 'tuyen-dung-nvkd.png', 'tuyen dung nvkd'),
('tuyendung-...jpg', 'jpg', 'image', 83783, 'assets/news/tuyendung-kythuat.jpg', 80, 80, '300|300', 1, 1456082540, 7, 'tuyendung-kythuat.jpg', 'tuyendung kythuat'),
('123host-ne...jpg', 'jpg', 'image', 65162, 'assets/news/2016_01/123host-network-security.jpg', 80, 46, '540|310', 1, 1456082540, 8, '123host-network-security.jpg', '123host network security'),
('cc-by-nc-sa.png', 'png', 'image', 417, 'assets/news/2016_01/cc-by-nc-sa.png', 80, 15, '80|15', 1, 1456082540, 8, 'cc-by-nc-sa.png', 'cc by nc sa'),
('cloudlinux...jpg', 'jpg', 'image', 66150, 'assets/news/2016_01/cloudlinux-security.jpg', 80, 46, '540|312', 1, 1456082540, 8, 'cloudlinux-security.jpg', 'cloudlinux security'),
('cpanel-ddo...jpg', 'jpg', 'image', 82476, 'assets/news/2016_01/cpanel-ddos-protection-malware-scanner.jpg', 80, 45, '540|300', 1, 1456082540, 8, 'cpanel-ddos-protection-malware-scanner.jpg', 'cpanel ddos protection malware scanner'),
('hosting-12...jpg', 'jpg', 'image', 45292, 'assets/news/2016_01/hosting-123host-nukeviet.jpg', 80, 45, '540|298', 1, 1456082540, 8, 'hosting-123host-nukeviet.jpg', 'hosting 123host nukeviet'),
('how-to-cho...jpg', 'jpg', 'image', 55022, 'assets/news/2016_01/how-to-choose-hosting.jpg', 80, 50, '540|338', 1, 1456082540, 8, 'how-to-choose-hosting.jpg', 'how to choose hosting'),
('litespeed-...jpg', 'jpg', 'image', 36867, 'assets/news/2016_01/litespeed-benchmark.jpg', 80, 43, '540|292', 1, 1456082540, 8, 'litespeed-benchmark.jpg', 'litespeed benchmark'),
('support247.jpg', 'jpg', 'image', 39576, 'assets/news/2016_01/support247.jpg', 80, 22, '540|151', 1, 1456082540, 8, 'support247.jpg', 'support247'),
('duan81.jpg', 'jpg', 'image', 123238, 'assets/cong-trinh-da-thuc-hien/2016_03/duan81.jpg', 80, 60, '400|300', 1, 1458534753, 26, 'duan81.jpg', 'duan81'),
('duan4.jpg', 'jpg', 'image', 109330, 'assets/cong-trinh-da-thuc-hien/2016_03/duan4.jpg', 80, 60, '400|300', 1, 1458534959, 26, 'duan4.jpg', 'duan4'),
('go-van-san...jpg', 'jpg', 'image', 92660, 'assets/cong-trinh-da-thuc-hien/2016_03/go-van-san_efloor.jpg', 80, 45, '1050|591', 1, 1458535035, 26, 'go-van-san_efloor.jpg', 'go van san efloor'),
('d.jpg', 'jpg', 'image', 129469, 'assets/cong-trinh-da-thuc-hien/2016_03/d.jpg', 80, 80, '400|400', 1, 1458535062, 26, 'd.jpg', 'd'),
('chuc-mung-...jpg', 'jpg', 'image', 130708, 'assets/cong-trinh-da-thuc-hien/chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 80, 62, '461|360', 1, 1458534627, 22, 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'chuc mung nukeviet thong tu 20 bo tttt'),
('hoc-viec-t...jpg', 'jpg', 'image', 167193, 'assets/cong-trinh-da-thuc-hien/hoc-viec-tai-cong-ty-vinades.jpg', 80, 63, '460|360', 1, 1458534627, 22, 'hoc-viec-tai-cong-ty-vinades.jpg', 'hoc viec tai cong ty vinades'),
('hoptac.jpg', 'jpg', 'image', 12871, 'assets/cong-trinh-da-thuc-hien/hoptac.jpg', 80, 66, '382|314', 1, 1458534627, 22, 'hoptac.jpg', 'hoptac'),
('nangly.jpg', 'jpg', 'image', 34802, 'assets/cong-trinh-da-thuc-hien/nangly.jpg', 80, 53, '500|332', 1, 1458534627, 22, 'nangly.jpg', 'nangly'),
('nukeviet-cms.jpg', 'jpg', 'image', 83489, 'assets/cong-trinh-da-thuc-hien/nukeviet-cms.jpg', 80, 55, '500|345', 1, 1458534627, 22, 'nukeviet-cms.jpg', 'nukeviet cms'),
('nukeviet-n...jpg', 'jpg', 'image', 18611, 'assets/cong-trinh-da-thuc-hien/nukeviet-nhantaidatviet2011.jpg', 80, 54, '400|268', 1, 1458534627, 22, 'nukeviet-nhantaidatviet2011.jpg', 'nukeviet nhantaidatviet2011'),
('tap-huan-p...jpg', 'jpg', 'image', 132379, 'assets/cong-trinh-da-thuc-hien/tap-huan-pgd-ha-dong-2015.jpg', 80, 52, '460|295', 1, 1458534627, 22, 'tap-huan-pgd-ha-dong-2015.jpg', 'tap huan pgd ha dong 2015'),
('thuc-tap-sinh.jpg', 'jpg', 'image', 71135, 'assets/cong-trinh-da-thuc-hien/thuc-tap-sinh.jpg', 80, 63, '460|360', 1, 1458534627, 22, 'thuc-tap-sinh.jpg', 'thuc tap sinh'),
('tuyen-dung...png', 'png', 'image', 118910, 'assets/cong-trinh-da-thuc-hien/tuyen-dung-nvkd.png', 80, 56, '400|279', 1, 1458534627, 22, 'tuyen-dung-nvkd.png', 'tuyen dung nvkd'),
('tuyendung-...jpg', 'jpg', 'image', 83783, 'assets/cong-trinh-da-thuc-hien/tuyendung-kythuat.jpg', 80, 80, '300|300', 1, 1458534627, 22, 'tuyendung-kythuat.jpg', 'tuyendung kythuat');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users`
--

CREATE TABLE IF NOT EXISTS `nv4_users` (
`userid` mediumint(8) unsigned NOT NULL,
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci,
  `regdate` int(11) NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `passlostkey` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `view_mail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remember` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `in_groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checknum` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `idsite` int(11) NOT NULL DEFAULT '0',
  `safemode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `safekey` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users`
--

INSERT INTO `nv4_users` (`userid`, `group_id`, `username`, `md5username`, `password`, `email`, `first_name`, `last_name`, `gender`, `photo`, `birthday`, `sig`, `regdate`, `question`, `answer`, `passlostkey`, `view_mail`, `remember`, `in_groups`, `active`, `checknum`, `last_login`, `last_ip`, `last_agent`, `last_openid`, `idsite`, `safemode`, `safekey`) VALUES
(1, 1, 'ngocphan', '48a8f79c8073d73711833fe20e5f132f', '{SSHA}4zYFSwX5TtPOwnjRB2gCeALIaDNaWnk5', 'ngocphan12031995@gmail.com', 'ngocphan', '', '', '', 0, '', 1456905105, 'thích', 'thích', '', 0, 1, '', 1, '', 1456905105, '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_config`
--

CREATE TABLE IF NOT EXISTS `nv4_users_config` (
  `config` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_config`
--

INSERT INTO `nv4_users_config` (`config`, `content`, `edit_time`) VALUES
('access_admin', 'a:6:{s:12:"access_addus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:"access_waiting";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:"access_editus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:"access_delus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:"access_passus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:"access_groups";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}', 1352873462),
('password_simple', '000000|1234|2000|12345|111111|123123|123456|11223344|654321|696969|1234567|12345678|87654321|123456789|23456789|1234567890|66666666|68686868|66668888|88888888|99999999|999999999|1234569|12345679|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|nuke123|nuke123@|nuke@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|iloveyou|jennifer|jordan|letmein|macromedia|master|michael|monkey|mustang|password|photoshop|pussy|qwerty|shadow|superman|hoilamgi|khongbiet|khongco|khongcopass', 1456905063),
('deny_email', 'yoursite.com|mysite.com|localhost|xxx', 1456905063),
('deny_name', 'anonimo|anonymous|god|linux|nobody|operator|root', 1456905063),
('avatar_width', '80', 1456905063),
('avatar_height', '80', 1456905063),
('active_group_newusers', '0', 1456905063),
('siteterms_vi', '<p> Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br /> <br /> Bạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br /> <br /> Bạn đồng ý rằng website có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong website vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br /> <br /> Đăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>', 1274757129),
('siteterms_en', '<p style="text-align:center;"> <strong>Website usage terms and conditions – sample template</strong></p><p> Welcome to our website. If you continue to browse and use this website you are agreeing to comply with and be bound by the following terms and conditions of use, which together with our privacy policy govern [business name]’s relationship with you in relation to this website.<br /> The term ‘[business name]’ or ‘us’ or ‘we’ refers to the owner of the website whose registered office is [address]. Our company registration number is [company registration number and place of registration]. The term ‘you’ refers to the user or viewer of our website.<br /> The use of this website is subject to the following terms of use:<br /> • The content of the pages of this website is for your general information and use only. It is subject to change without notice.<br /> • Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.<br /> • Your use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services or information available through this website meet your specific requirements.<br /> • This website contains material which is owned by or licensed to us. This material includes, but is not limited to, the design, layout, look, appearance and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions.<br /> • All trademarks reproduced in this website, which are not the property of, or licensed to the operator, are acknowledged on the website.<br /> • Unauthorised use of this website may give rise to a claim for damages and/or be a criminal offence.<br /> • fr0m time to time this website may also include links to other websites. These links are provided for your convenience to provide further information. They do not signify that we endorse the website(s). We have no responsibility for the content of the linked website(s).<br /> • You may not crea-te a link to this website fr0m another website or document without [business name]’s prior written consent.<br /> • Your use of this website and any dispute arising out of such use of the website is subject to the laws of England, Scotland and Wales.</p>', 1274757617);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_field`
--

CREATE TABLE IF NOT EXISTS `nv4_users_field` (
`fid` mediumint(8) NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(10) unsigned NOT NULL DEFAULT '1',
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` bigint(20) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_register` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_editable` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_profile` tinyint(4) NOT NULL DEFAULT '1',
  `class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_groups`
--

CREATE TABLE IF NOT EXISTS `nv4_users_groups` (
`group_id` smallint(5) unsigned NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `group_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0:Sys, 1:approval, 2:public',
  `group_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL,
  `idsite` int(11) unsigned NOT NULL DEFAULT '0',
  `numbers` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `siteus` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `config` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_groups`
--

INSERT INTO `nv4_users_groups` (`group_id`, `title`, `email`, `description`, `content`, `group_type`, `group_color`, `group_avatar`, `is_default`, `add_time`, `exp_time`, `weight`, `act`, `idsite`, `numbers`, `siteus`, `config`) VALUES
(1, 'Super admin', '', 'Super Admin', '', 0, '', '', 0, 1456905063, 0, 1, 1, 0, 1, 0, ''),
(2, 'General admin', '', 'General Admin', '', 0, '', '', 0, 1456905063, 0, 2, 1, 0, 0, 0, ''),
(3, 'Module admin', '', 'Module Admin', '', 0, '', '', 0, 1456905063, 0, 3, 1, 0, 0, 0, ''),
(4, 'Users', '', 'Users', '', 0, '', '', 0, 1456905063, 0, 4, 1, 0, 1, 0, ''),
(7, 'New Users', '', 'New Users', '', 0, '', '', 0, 1456905063, 0, 5, 1, 0, 0, 0, ''),
(5, 'Guest', '', 'Guest', '', 0, '', '', 0, 1456905063, 0, 6, 1, 0, 0, 0, ''),
(6, 'All', '', 'All', '', 0, '', '', 0, 1456905063, 0, 7, 1, 0, 0, 0, ''),
(10, 'NukeViet-Fans', '', 'Nhóm những người hâm mộ hệ thống NukeViet', '', 2, '', '', 1, 1456905063, 0, 8, 1, 0, 0, 0, ''),
(11, 'NukeViet-Admins', '', 'Nhóm những người quản lý website xây dựng bằng hệ thống NukeViet', '', 2, '', '', 0, 1456905063, 0, 9, 1, 0, 0, 0, ''),
(12, 'NukeViet-Programmers', '', 'Nhóm Lập trình viên hệ thống NukeViet', '', 1, '', '', 0, 1456905063, 0, 10, 1, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_groups_users`
--

CREATE TABLE IF NOT EXISTS `nv4_users_groups_users` (
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_leader` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `approved` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_groups_users`
--

INSERT INTO `nv4_users_groups_users` (`group_id`, `userid`, `is_leader`, `approved`, `data`) VALUES
(1, 1, 1, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_info`
--

CREATE TABLE IF NOT EXISTS `nv4_users_info` (
  `userid` mediumint(8) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_info`
--

INSERT INTO `nv4_users_info` (`userid`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_openid`
--

CREATE TABLE IF NOT EXISTS `nv4_users_openid` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_question`
--

CREATE TABLE IF NOT EXISTS `nv4_users_question` (
`qid` smallint(5) unsigned NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_question`
--

INSERT INTO `nv4_users_question` (`qid`, `title`, `lang`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Bạn thích môn thể thao nào nhất', 'vi', 1, 1274840238, 1274840238),
(2, 'Món ăn mà bạn yêu thích', 'vi', 2, 1274840250, 1274840250),
(3, 'Thần tượng điện ảnh của bạn', 'vi', 3, 1274840257, 1274840257),
(4, 'Bạn thích nhạc sỹ nào nhất', 'vi', 4, 1274840264, 1274840264),
(5, 'Quê ngoại của bạn ở đâu', 'vi', 5, 1274840270, 1274840270),
(6, 'Tên cuốn sách &quot;gối đầu giường&quot;', 'vi', 6, 1274840278, 1274840278),
(7, 'Ngày lễ mà bạn luôn mong đợi', 'vi', 7, 1274840285, 1274840285),
(8, 'What is the first name of your favorite uncle?', 'en', 1, 1274841115, 1274841115),
(9, 'whe-re did you meet your spouse', 'en', 2, 1274841123, 1274841123),
(10, 'What is your oldest cousin&#039;s name?', 'en', 3, 1274841131, 1274841131),
(11, 'What is your youngest child&#039;s username?', 'en', 4, 1274841142, 1274841142),
(12, 'What is your oldest child&#039;s username?', 'en', 5, 1274841150, 1274841150),
(13, 'What is the first name of your oldest niece?', 'en', 6, 1274841158, 1274841158),
(14, 'What is the first name of your oldest nephew?', 'en', 7, 1274841167, 1274841167),
(15, 'What is the first name of your favorite aunt?', 'en', 8, 1274841175, 1274841175),
(16, 'whe-re did you spend your honeymoon?', 'en', 9, 1274841183, 1274841183);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_reg`
--

CREATE TABLE IF NOT EXISTS `nv4_users_reg` (
`userid` mediumint(8) unsigned NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `regdate` int(11) unsigned NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checknum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_info` text COLLATE utf8mb4_unicode_ci,
  `openid_info` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_about`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_about` (
`id` mediumint(8) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_about`
--

INSERT INTO `nv4_vi_about` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `gid`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`) VALUES
(1, 'Giới thiệu', 'gioi-thieu-ve-nukeviet', '', '', 0, '', '<div class="region region-content">\r\n<div class="block block-system" id="block-system-main">\r\n<div class="content">\r\n<div class="node node-khoind clearfix" id="node-23">\r\n<div class="content">\r\n<div class="field field-name-field-khoind field-type-text-with-summary field-label-hidden">\r\n<div class="field-items">\r\n<div class="field-item even">\r\n<p>Công Ty Cổ Phần Thương Mại Hà Thành là nhà phân phối chính thức và duy nhất của thương hiệu sàn gỗ <strong>eFLOOR</strong> <strong>Malaysia</strong> tại Việt Nam. Với hơn 10 năm kinh nghiêm hoạt động trong lĩnh vực thiết kế - thi công sàn gỗ, chúng tôi luôn lắng nghe và thấu hiểu mong muốn cũng như những băn khoăn của khách hàng, từ đó tư vấn/ cung cấp những sản phẩm phù hợp nhất với căn hộ và sở thích của mỗi khách hàng. Bên cạnh đội ngũ thiết kế chuyên nghiêp, tư vấn tận tâm, Hà Thành còn sở hữu đội thợ thi công lành nghề, quy cách chuẩn xác tiến độ nhanh chóng, thường chỉ mất chưa đầy 1 ngày cho 1 sàn rộng hơn 50m2 với nhiều đồ đạc.</p>\r\n\r\n<p>Trong cuộc sống hiện đại, sàn gỗ công nghiệp ngày càng được ưa chuộng bởi những ưu điểm vượt trội so với gạch men và sàn gỗ tự nhiên như: giá rẻ, vân màu đa dạng, thanh lịch, bền, tháo dỡ cơ động,&nbsp;dễ làm sạch... Đặc biệt, ván gỗ <span style="color:rgb(255, 255, 255);"><strong><span style="background-color:rgb(255, 0, 0);">eFLOOR</span></strong></span> còn đáp ứng được các tiêu chuẩn chất lượng của châu Âu,&nbsp;thân thiện với môi trường. Sản phẩm cấu tạo từ xơ gỗ ép cao cấp, gồm 4 lớp với 5 tính năng ưu việt:</p>\r\n\r\n<p>+ Dễ lau sạch, chống bám bụi bẩn và vi khuẩn &nbsp;</p>\r\n\r\n<p>+ Chống nồm (mỗi tấm gỗ của<span style="color:rgb(255, 255, 255);"> <strong><span style="background-color:rgb(255, 0, 0);">eFLOOR</span></strong></span> đều được phủ keo đặc biệt 4 phía, chịu nước tốt hơn)</p>\r\n\r\n<p>+ Chống cháy, chống mòn, chống trầy xước tự nhiên</p>\r\n\r\n<p>+ Bền màu dưới tác động của ánh sáng</p>\r\n\r\n<p>+ Không chất độc hại, không gây ồn khi đi lại, di chuyển trên sàn.</p>\r\n\r\n<p>Thuộc top thương hiệu sàn gỗ hàng đầu tại Malaysia, sản phẩm của <span style="color:rgb(255, 255, 255);"><strong><span style="background-color:rgb(255, 0, 0);">eFLOOR</span></strong></span> được thiết kế đặc&nbsp;biệt phù hợp với khí hậu các nước châu Á nóng ẩm, chênh lệch nhiệt giữa các mùa lớn. Vì vậy sàn gỗ&nbsp;không bị ảnh hưởng bởi thời tiết, không mối mọt, không cong vênh co ngót, là sản phẩm lý tưởng cho&nbsp;các gia đình Việt Nam.</p>\r\n\r\n<p>Không chỉ vượt trội về chất lượng, sàn gỗ <strong>eFLOOR Malaysia</strong> còn rất phong phú về mẫu mã với nhiều&nbsp;loại ván trần, bóng, các mẫu ván hoa văn đặc biệt, độc đáo... phù hợp với đa dạng sở thích cá nhân&nbsp;cũng như các loại nền/sàn. Dù căn hộ của bạn rộng cả trăm m2 hay chỉ nhỏ nhắn như một phòng ở thì&nbsp;sàn gỗ Efloor cũng luôn là một sự lựa chọn tuyệt vời. Sàn nhà được lát gỗ sẽ mang lại cảm giác ấm&nbsp;cúng, gần gũi với thiên nhiên, mà lại vô cùng sang trọng, sạch sẽ, mát về mùa hè, ấm trong mùa đông.</p>\r\n\r\n<p>&nbsp; &nbsp; Công ty chúng tôi cam kết bán hàng đúng chủng loại, nguyên tem mác ,nguồn gốc xuất xứ rõ&nbsp;ràng. Đặc biệt, Hà Thành là nhà phân phối chính thức và duy nhất của <strong>eFLOOR</strong> <strong>Malaysia</strong> tại Việt Nam,&nbsp;nên khách hàng hoàn toàn yên tâm được mua sản phẩm giá tốt như giá gốc, và được đảm bảo chất&nbsp;lượng tuyệt hảo của sàn gỗ cũng như các chế độ bảo hành của nhà sản xuất.</p>\r\n\r\n<h2 class="rtecenter"><em><strong>SÀN GỖ EFLOOR - GIẢI PHÁP TUYỆT VỜI CHO CUỘC SỐNG HIỆN TẠI!</strong></em></h2>\r\n\r\n<p>Hoạt động sản xuất gỗ ván sàn <strong style="line-height: 20.8px;">eFLOOR</strong><span style="line-height: 20.8px;">&nbsp;</span><strong style="line-height: 20.8px;">Malaysia</strong><span style="line-height: 20.8px;">&nbsp;</span>được Tập đoàn <a href="http://efloorvn.com/san-pham/go-van-san"><strong>eFLOOR</strong></a> Industries Malaysia thực hiện với công nghệ sản xuất <strong>gỗ ván sàn</strong> của HOMAG Đức và dây chuyền sản xuất tấm vắn Bắc Ý (được điều khiển tự động hoàn toàn), phù hợp các tiêu chuẩn chất lượng của LB Đức như GB/T18102-2000 về “<strong>Gỗ ván sàn</strong> làm bằng chất liệu bột gỗ”; Độ thoát hơi formaldehyt thấp hơn mức E1 của tiêu chuẩn GB18580-2001 về “Giới hạn bay hơi formaldehyt đối với vật liệu trang trí nội thất, đồ gỗ và các sản phẩm liên quan”.</p>\r\n\r\n<p>Là một sản phẩm thân thiện với môi trường, được chứng nhận đạt các tiêu chẩn môi trường quốc gia, sản phẩm <a href="http://efloorvn.com/san-pham/go-van-san"><strong>sàn gỗ eFLOOR</strong></a> đã đáp ứng yêu cầu HBC17-2003 về “vật liệu gỗ và các sản phẩm liên quan”. Chất lượng vượt trội của sàn gỗ <strong style="line-height: 20.8px;">eFLOOR</strong><span style="line-height: 20.8px;">&nbsp;</span><strong style="line-height: 20.8px;">Malaysia</strong><span style="line-height: 20.8px;">&nbsp;</span>không chỉ đáp ứng tiêu chuẩn GB/T18102-2000 (LB Đức) mà còn phù hợp với tiêu chuẩn Châu Âu PREN13329AC4.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '', 0, '4', '', 0, 1, 1, 1456905063, 1459156535, 1),
(2, 'Giới thiệu về NukeViet CMS', 'gioi-thieu-ve-nukeviet-cms', '', '', 0, '', '<p style="text-align: justify;">CMS là gì?<br  /> CMS là từ viết tắt từ Content Management System. Theo wikipedia</p>  <blockquote> <p><strong>Định nghĩa.</strong><br  /> Hệ quản trị nội dung, cũng được gọi là hệ thống quản lý nội dung hay CMS (từ Content Management System của tiếng Anh) là phần mềm để tổ chức và tạo môi trường cộng tác thuận lợi nhằm mục đích xây dựng một hệ thống tài liệu và các loại nội dung khác một cách thống nhất. Mới đây thuật ngữ này liên kết với chương trình quản lý nội dung của website. Quản lý nội dung web (web content management) cũng đồng nghĩa như vậy.<br  /> <br  /> <span class="mw-headline" id="Ch.E1.BB.A9c_n.C4.83ng"><strong>Chức năng</strong>.</span><br  /> Quản trị những nội dung tài liệu điện tử (bao gồm những tài liệu, văn bản số và đã được số hoá) của tổ chức. Những chức năng bao gồm:</p>  <ul> 	<li>Tạo lập nội dung;</li> 	<li>Lưu trữ nội dung;</li> 	<li>Chỉnh sửa nội dung;</li> 	<li>Chuyển tải nội dung;</li> 	<li>Chia sẻ nội dung;</li> 	<li>Tìm kiếm nội dung;</li> 	<li>Phân quyền người dùng và nội dung...</li> </ul>  <p><strong>Đặc điểm.</strong><br  /> Các đặc điểm cơ bản của CMS bao gồm:</p>  <ul> 	<li>Phê chuẩn việc tạo hoặc thay đổi nội dung trực tuyến</li> 	<li>Chế độ Soạn thảo &quot;Nhìn là biết&quot; WYSIWYG</li> 	<li>Quản lý người dùng</li> 	<li>Tìm kiếm và lập chỉ mục</li> 	<li>Lưu trữ</li> 	<li>Tùy biến giao diện</li> 	<li>Quản lý ảnh và các liên kết (URL)</li> </ul> </blockquote>  <p style="text-align: justify;"><br  /> NukeViet CMS là một <strong>hệ quản trị nội dung</strong> (<em>Content Management System - CMS</em>) cho phép bạn quản lý các cổng thông tin điện tử trên Internet. Nói đơn giản, NukeViet giống như một phần mềm giúp bạn<strong> xây dựng</strong> và <strong>vận hành</strong> các trang web của mình một cách dễ dàng nhất.</p>  <p style="text-align: justify;">NukeViet CMS là một phần mềm <strong>mã nguồn mở</strong>, do đó việc sử dụng <strong>hoàn toàn miễn phí</strong>, bạn có thể tải NukeViet CMS về bất cứ lúc nào tại website chính thức của NukeViet là <strong><a href="http://nukeviet.vn">nukeviet.vn</a></strong>. Bạn có thể cài NukeViet lên hosting để sử dụng hoặc cũng có thể thử nghiệm bằng cách cài ngay lên máy tính cá nhân.</p>  <p style="text-align: justify;">NukeViet cho phép xây dựng một website động, đa chức năng, hiện đại một cách nhanh chóng mà người vận hành nó thậm chí <strong>không cần phải biết một tí gì về lập trình</strong> bởi tất cả các tác vụ quản lý phức tạp đều được tự động hóa ở mức cao. NukeViet đặc biệt dễ dàng sử dụng vì hoàn toàn bằng tiếng Việt và được thiết kế phù hợp nhất với thói quen sử dụng mạng của <strong>người Việt Nam</strong>.</p>  <p style="text-align: justify;">Bằng việc sử dụng các công nghệ web mới nhất hiện nay, thiết kế hệ thống uyển chuyển và sở hữu những tính năng độc đáo, NukeViet sẽ giúp bạn triển khai các ứng dụng web từ nhỏ đến lớn một cách nhanh chóng và tiết kiệm: từ các website cá nhân cho tới các cổng thông tin điện tử; từ các gian hàng trực tuyến cho tới các mạng xã hội...</p> NukeViet là CMS <strong>mã nguồn mở đầu tiên của Việt Nam</strong> có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là <a href="http://vinades.vn" target="_blank">VINADES.,JSC</a> - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp.', '', 0, '4', '', 0, 2, 1, 1456905063, 1456905063, 1),
(3, 'Logo và tên gọi NukeViet', 'logo-va-ten-goi-nukeviet', '', '', 0, '', '<p style="text-align: justify;"><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px;"><strong>Tên gọi:</strong></span></span><br  /> <strong>NukeViet </strong>phát âm là <strong>&#91;Nu-Ke-Việt</strong>&#93;, đây là cách đọc riêng, không phải là cách phát âm chuẩn của tiếng Anh.<br  /> <br  /> <strong>Ý nghĩa:</strong><br  /> NukeViet là từ ghép từ chữ <strong>Nuke </strong>và <strong>Việt Nam</strong>.<br  /> <br  /> Sở dĩ có tên gọi này là vì phiên bản 1.0 và 2.0 của NukeViet được phát triển từ mã nguồn mở<strong> PHP-Nuke</strong>.</p>  <p style="text-align: justify;">Mặc dù từ phiên bản 3.0, NukeViet được viết mới hoàn toàn và trong quá trình phát triển của mình, nhiều cái tên đã được đưa ra để thay thế nhưng cuối cùng cái tên NukeViet đã được giữ lại để nhớ rằng <strong>NukeViet </strong>được khởi đầu từ <strong>PHP-Nuke</strong> và để cảm ơn <strong>Franscisco Burzi</strong> - Tác giả PHP-Nuke - vì chính ông là nhân tố để có một cộng đồng mã nguồn mở NukeViet với hàng chục ngàn người dùng như hiện nay.</p>  <p style="text-align: justify;"><strong>Nuke</strong> trong tiếng Anh (từ lóng) có nghĩa là &quot;<strong>vũ khí hạt nhân</strong>&quot; (nuclear weapons). Xem: <a href="http://vi.wiktionary.org/wiki/nuke" target="_blank">http://vi.wiktionary.org/wiki/nuke</a></p>  <p style="text-align: justify;">Đội ngũ phát triển cũng hy vọng rằng <strong>NukeViet </strong>sẽ phát triển bùng nổ như đúng tên gọi của nó.</p>  <p style="text-align: justify;"><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px;"><strong>Logo NukeViet 3.0:</strong></span></span><br  /> Sau thời gian dài lựa chọn từ hàng chục mẫu thiết kế của thành viên diễn đàn NukeViet.VN và các nhà thiết kế đồ họa chuyên nghiệp... logo chính thức của NukeViet 3.0 đã được Ban Quản Trị chọn lựa đúng trước ngày Offline phát hành bản NukeViet 3.0 một ngày.<br  /> <br  /> Logo NukeViet 3.0 được lấy hình tượng từ Biển, Đêm, và Ánh Trăng trong khung hình giọt nước:</p>  <p style="text-align:center"><img alt="w" height="143" src="/uploads/about/w.png" style="width: 288px; height: 143px; border-width: 0px; border-style: solid;" width="288" /></p>  <p style="text-align: justify;">Dưới nền trắng, cả logo nhìn như cảnh biển đêm huyền ảo, tĩnh mịch với mặt nước biển, bầu trời, thuyền buồm và ánh trăng. Đây là những hình ảnh biểu tượng cho sự thanh bình mà bất cứ ai cũng mong ước được thấy khi ngắm biển về đêm.<br  /> <br  /> Màu xanh thẫm là màu hòa quyện của của mặt biển, bầu trời về đêm, màu này cũng gần với màu xanh tượng trưng cho hòa bình.<br  /> Hai vệt khuyết chính là ánh trăng sáng màu bạc phản chiếu lên giọt nước.<br  /> <br  /> Giọt nước còn là biểu tượng cho sự sống, cho khát khao bất diệt của vạn vật trên trái đất này.<br  /> <br  /> <strong>Thông số chuẩn của màu logo:</strong><br  /> -&nbsp;&nbsp;&nbsp; Màu xanh: C80, M60, Y0, K0<br  /> <br  /> <strong>Tác giả mẫu thiết kế:</strong> Lê Thanh Xuân, chuyên viên thiết kế đồ họa của VINADES.,JSC</p>  <p style="text-align: justify;"><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px;"><strong>Slogan NukeViet 3.0:</strong></span></span> “Chia sẻ thành công, kết nối đam mê”, Tiếng Anh: “Sharing success, connect passions”</p>  <p style="text-align: justify;">Slogan này của tác giả HoaiNamDr, đây là slogan đã đoạt giải trong cuộc thi sáng tác slogan trên diễn đàn NukeViet.VN</p>  <div style="text-align:center"><img alt="nukevietcms 180x84" height="84" src="/uploads/about/nukevietcms-180x84.png" width="180" /></div>  <p style="text-align: center;">Mẫu phối Logo, slogan và tên NukeViet CMS (180x84px)<br  /> Tải về mẫu kích thước lớn <a href="/uploads/about/nukevietcms.png">logo-nukeviet-cms.png</a> (1500x700px)</p>  <div style="text-align:center"><img alt="nukevietcms mu noel 180x84" height="84" src="/uploads/about/nukevietcms_mu_noel_180x84.png" width="180" /></div>  <p style="text-align: center;">Mẫu phối Logo, slogan và tên NukeViet CMS với chiếc mũ ông già Noel (184x84px)<br  /> &nbsp;</p>  <div style="text-align:center"><img alt="logo nukeviet3 flag 180x75" height="75" src="/uploads/about/logo-nukeviet3-flag-180x75.png" width="180" /></div>  <p style="text-align: center;">Mẫu phối Logo, slogan và tên NukeViet CMS cắm cờ Việt Nam (180x75px)<br  /> &nbsp;</p>  <div style="text-align:center"><img alt="nukevietcms laco 180x57" height="57" src="/uploads/about/nukevietcms_laco_180x57.png" width="180" /></div>  <p style="text-align: center;">Mẫu phối Logo, slogan và tên NukeViet CMS với chiếc ruy băng cờ Việt Nam (180x57px)</p>  <div style="text-align:center"><img alt="nukevietvn 180x84" height="84" src="/uploads/about/nukevietvn_180x84.png" width="180" /></div>  <p style="text-align: center;">Mẫu phối Logo, slogan và tên NukeViet.VN (180x84px)<br  /> Tải về mẫu kích thước lớn <a href="/uploads/about/nukevietvn.png">logo-nukeviet-big.png</a> (1500x700px)</p>  <p><br  /> <strong>Tải về file đồ họa gốc:</strong><br  /> - <a href="http://nukeviet.vn/vi/download/Tai-lieu/NukeViet-logo/">NukeViet logo</a> - hình ảnh gốc có độ phân giải cao, bao gồm cả font chữ, có thể sử dụng cho in ấn sticker, in logo lên áo hoặc in Backdrop, Standy khổ lớn.</p>', '', 0, '4', '', 0, 3, 1, 1456905063, 1456905063, 1),
(4, 'Giấy phép sử dụng NukeViet', 'giay-phep-su-dung-nukeviet', '', '', 0, 'Giấy phép công cộng GNU (tiếng Anh: GNU General Public License, viết tắt GNU GPL hay chỉ GPL) là giấy phép phần mềm tự do được sử dụng để phân phối mã nguồn mở NukeViet.', '<p><strong>Bản dịch tiếng Việt của Giấy phép Công cộng GNU</strong></p>\r\n\r\n<p>Người dịch&nbsp;<a href="mailto:dangtuan@vietkey.net">Đặng Minh Tuấn &lt;dangtuan@vietkey.net&gt;</a></p>\r\n\r\n<p>Đây là bản dịch tiếng Việt không chính thức của Giấy phép Công cộng GNU. Bản dịch này không phải do Tổ chức Phần mềm Tự do ấn hành, và nó không quy định về mặt pháp lý các điều khoản cho các phần mềm sử dụng giấy phép GNU GPL -- chỉ có bản tiếng Anh gốc của GNU GPL mới có tính pháp lý. Tuy nhiên, chúng tôi hy vọng rằng bản dịch này sẽ giúp cho những người nói tiếng Việt hiểu rõ hơn về GNU GPL.</p>\r\n\r\n<p>This is an unofficial translation of the GNU General Public License into Vietnamese. It was not published by the Free Software Foundation, and does not legally state the distribution terms for software that uses the GNU GPL--only the original English text of the GNU GPL does that. However, we hope that this translation will help Vietnamese speakers understand the GNU GPL better.</p>\r\n\r\n<hr  />\r\n<h3>GIẤY PHÉP CÔNG CỘNG GNU (GPL)</h3>\r\nGiấy phép công cộng GNU<br />\r\nPhiên bản 2, tháng 6/1991<br />\r\nCopyright (C) 1989, 1991 Free Software Foundation, Inc. &nbsp;<br />\r\n59 Temple Place - Suite 330, Boston, MA&nbsp; 02111-1307, USA\r\n<p>Mọi người đều được phép sao chép và lưu hành bản sao nguyên bản nhưng không được phép thay đổi nội dung của giấy phép này.<br />\r\n<br />\r\n<strong>Lời nói đầu</strong><br />\r\n<br />\r\nGiấy phép sử dụng của hầu hết các phần mềm đều được đưa ra nhằm hạn chế bạn tự do chia sẻ và thay đổi nó. Ngược lại, Giấy phép Công cộng của GNU có mục đích đảm bảo cho bạn có thể tự do chia sẻ và thay đổi phần mềm tự do - tức là đảm bảo rằng phần mềm đó là tự do đối với mọi người sử dụng. Giấy phép Công cộng này áp dụng cho hầu hết các phần mềm của Tổ chức Phần mềm Tự do và cho tất cả các chương trình khác mà tác giả cho phép sử dụng. (Đối với một số phần mềm khác của Tổ chức Phần Mềm Tự do, áp dụng Giấy phép Công cộng Hạn chế của GNU thay cho giấy phép công cộng). Bạn cũng có thể áp dụng nó cho các chương trình của mình.<br />\r\n<br />\r\nKhi nói đến phần mềm tự do, chúng ta nói đến sự tự do sử dụng chứ không quan tâm về giá cả. Giấy phép Công cộng của chúng tôi được thiết kế để đảm bảo rằng bạn hoàn toàn tự do cung cấp các bản sao của phần mềm tự do (cũng như kinh doanh dịch vụ này nếu bạn muốn), rằng bạn có thể nhận được mã nguồn nếu bạn có yêu cầu, rằng bạn có thể thay đổi phần mềm hoặc sử dụng các thành phần của phần mềm đó cho những chương trình tự do mới; và rằng bạn biết chắc là bạn có thể làm được những điều này.<br />\r\n<br />\r\nĐể bảo vệ bản quyền của bạn, chúng tôi cần đưa ra những hạn chế để ngăn chặn những ai chối bỏ quyền của bạn, hoặc yêu cầu bạn chối bỏ quyền của mình. Những hạn chế này cũng có nghĩa là những trách nhiệm nhất định của bạn khi cung cấp các bản sao phần mềm hoặc khi chỉnh sửa phần mềm đó.<br />\r\n<br />\r\nVí dụ, nếu bạn cung cấp các bản sao của một chương trình, dù miễn phí hay không, bạn phải cho người nhận tất cả các quyền mà bạn có. Bạn cũng phải đảm bảo rằng họ cũng nhận được hoặc tiếp cận được mã nguồn. Và bạn phải thông báo những điều khoản này cho họ để họ biết rõ về quyền của mình.<br />\r\n<br />\r\nChúng tôi bảo vệ quyền của bạn với hai bước: (1) bảo vệ bản quyền phần mềm, và (2) cung cấp giấy phép này để bạn có thể sao chép, lưu hành và/hoặc chỉnh sửa phần mềm một cách hợp pháp.<br />\r\n<br />\r\nNgoài ra, để bảo vệ các tác giả cũng như để bảo vệ chính mình, chúng tôi muốn chắc chắn rằng tất cả mọi người đều hiểu rõ rằng không hề có bảo hành đối với phần mềm tự do này. Nếu phần mềm được chỉnh sửa thay đổi bởi một người khác và sau đó lưu hành, thì chúng tôi muốn những người sử dụng biết rằng phiên bản họ đang có không phải là bản gốc, do đó tất cả những trục trặc do những người khác gây ra hoàn toàn không ảnh hưởng tới uy tín của tác giả ban đầu.<br />\r\n<br />\r\nCuối cùng, bất kỳ một chương trình tự do nào cũng đều thường xuyên có nguy cơ bị đe doạ về giấy phép bản quyền. Chúng tôi muốn tránh nguy cơ khi những người cung cấp lại một chương trình tự do có thể có được giấy phép bản quyền cho bản thân họ, từ đó trở thành độc quyền đối với chương trình đó. Để ngăn ngừa trường hợp này, chúng tôi đã nêu rõ rằng mỗi giấy phép bản quyền hoặc phải được cấp cho tất cả mọi người sử dụng một cách tự do hoặc hoàn toàn không cấp phép.<br />\r\n<br />\r\nDưới đây là những điều khoản và điều kiện rõ ràng đối với việc sao chép, lưu hành và chỉnh sửa.<br />\r\n<br />\r\n<strong>Những điều khoản và điều kiện đối với việc sao chép, lưu hành và chỉnh sửa</strong><br />\r\n<br />\r\n<strong>0.</strong>&nbsp;Giấy phép này áp dụng cho bất kỳ một chương trình hay sản phẩm nào mà người giữ bản quyền công bố rằng nó có thể được cung cấp trong khuôn khổ những điều khoản của Giấy phép Công cộng này. Từ “Chương trình” dưới đây có nghĩa là tất cả các chương trình hay sản phẩm như vậy, và “sản phẩm dựa trên Chương trình” có nghĩa là Chương trình hoặc bất kỳ một sản phẩm nào bắt nguồn từ chương trình đó tuân theo luật bản quyền, nghĩa là một sản phẩm dựa trên Chương trình hoặc một phần của nó, đúng nguyên bản hoặc có một số chỉnh sửa và/hoặc được dịch ra một ngôn ngữ khác. (Dưới đây, việc dịch cũng được hiểu trong khái niệm “chỉnh sửa”). Mỗi người được cấp phép được gọi là “bạn”.<br />\r\n<br />\r\nTrong Giấy phép này không đề cập tới các hoạt động khác ngoài việc sao chép, lưu hành và chỉnh sửa; chúng nằm ngoài phạm vi của giấy phép này. Hành động chạy chương trình không bị hạn chế, và những kết quả từ việc chạy chương trình chỉ được đề cập tới nếu nội dung của nó tạo thành một sản phẩm dựa trên chương trình (độc lập với việc chạy chương trình). Điều này đúng hay không là phụ thuộc vào Chương trình.<br />\r\n<br />\r\n<strong>1.</strong>&nbsp;Bạn có thể sao chép và lưu hành những phiên bản nguyên bản của mã nguồn Chương trình đúng như khi bạn nhận được, qua bất kỳ phương tiện phân phối nào, với điều kiện trên mỗi bản sao bạn đều kèm theo một ghi chú bản quyền rõ ràng và từ chối bảo hành; giữ nguyên tất cả các ghi chú về Giấy phép và về việc không có bất kỳ một sự bảo hành nào; và cùng với Chương trình bạn cung cấp cho người sử dụng một bản sao của Giấy phép này.<br />\r\n<br />\r\nBạn có thể tính phí cho việc chuyển giao bản sao, và tuỳ theo quyết định của mình bạn có thể cung cấp bảo hành để đổi lại với chi phí mà bạn đã tính.<br />\r\n<br />\r\n<strong>2.</strong>&nbsp;Bạn có thể chỉnh sửa bản sao của bạn hoặc các bản sao của Chương trình hoặc của bất kỳ phần nào của nó, từ đó hình thành một sản phẩm dựa trên Chương trình, và sao chép cũng như lưu hành sản phẩm đó hoặc những chỉnh sửa đó theo điều khoản trong Mục 1 ở trên, với điều kiện bạn đáp ứng được những điều kiện dưới đây:<br />\r\n•&nbsp;&nbsp; &nbsp;a) Bạn phải có ghi chú rõ ràng trong những tập tin đã chỉnh sửa là bạn đã chỉnh sửa nó, và ngày tháng của bất kỳ một thay đổi nào.<br />\r\n•&nbsp;&nbsp; &nbsp;b) Bạn phải cấp phép miễn phí cho tất cả các bên thứ ba đối với các sản phẩm bạn cung cấp hoặc phát hành, bao gồm Chương trình nguyên bản, từng phần của nó hay các sản phẩm dựa trên Chương trình hay dựa trên từng phần của Chương trình, theo những điều khoản của Giấy phép này.<br />\r\n•&nbsp;&nbsp; &nbsp;c) Nếu chương trình đã chỉnh sửa thường đọc lệnh tương tác trong khi chạy, bạn phải thực hiện sao cho khi bắt đầu chạy để sử dụng tương tác theo cách thông thường nhất phải có một thông báo bao gồm bản quyền và thông báo về việc không có bảo hành (hoặc thông báo bạn là người cung cấp bảo hành), và rằng người sử dụng có thể cung cấp lại Chương trình theo những điều kiện này, và thông báo để người sử dụng có thể xem bản sao của Giấy phép này. (Ngoại lệ: nếu bản thân Chương trình là tương tác nhưng không có một thông báo nào như trên, thì sản phẩm của bạn dựa trên Chương trình đó cũng không bắt buộc phải có thông báo như vậy).<br />\r\n<br />\r\nNhững yêu cầu trên áp dụng cho toàn bộ các sản phẩm chỉnh sửa. Nếu có những phần của sản phẩm rõ ràng không bắt nguồn từ Chương trình, và có thể được xem là độc lập và riêng biệt, thì Giấy phép này và các điều khoản của nó sẽ không áp dụng cho những phần đó khi bạn cung cấp chúng như những sản phẩm riêng biệt. Nhưng khi bạn cung cấp những phần đó như những phần nhỏ trong cả một sản phẩm dựa trên Chương trình, thì việc cung cấp này phải tuân theo những điều khoản của Giấy phép này, cho phép những người được cấp phép có quyền đối với toàn bộ sản phẩm, cũng như đối với từng phần trong đó, bất kể ai đã viết nó.<br />\r\n<br />\r\nNhư vậy, điều khoản này không nhằm mục đích xác nhận quyền hoặc tranh giành quyền của bạn đối với những sản phẩm hoàn toàn do bạn viết; mà mục đích của nó là nhằm thi hành quyền kiểm soát đối với việc cung cấp những sản phẩm bắt nguồn hoặc tổng hợp dựa trên Chương trình.<br />\r\n<br />\r\nNgoài ra, việc kết hợp thuần tuý Chương trình (hoặc một sản phẩm dựa trên Chương trình) với một sản phẩm không dựa trên Chương trình với mục đích lưu trữ hoặc quảng bá không đưa sản phẩm đó vào trong phạm vi áp dụng của Giấy phép này.<br />\r\n<br />\r\n<strong>3.</strong>&nbsp;Bạn có thể sao chép và cung cấp Chương trình (hoặc một sản phẩm dựa trên Chương trình, nêu trong Mục 2) dưới hình thức mã đã biên dịch hoặc dạng có thể thực thi được trong khuôn khổ các điều khoản nêu trong Mục 1 và 2 ở trên, nếu như bạn:<br />\r\n•&nbsp;&nbsp; &nbsp;a) Kèm theo đó một bản mã nguồn dạng đầy đủ có thể biên dịch được theo các điều khoản trong Mục 1 và 2 nêu trên trong một môi trường trao đổi phần mềm thông thường; hoặc,<br />\r\n•&nbsp;&nbsp; &nbsp;b) Kèm theo đó một đề nghị có hạn trong ít nhất 3 năm, theo đó cung cấp cho bất kỳ một bên thứ ba nào một bản sao đầy đủ của mã nguồn tương ứng, và phải được cung cấp với giá chi phí không cao hơn giá chi phí vật lý của việc cung cấp theo các điều khoản trong Mục 1 và 2 nêu trên trong một môi trường trao đổi phần mềm thông thường; hoặc<br />\r\n•&nbsp;&nbsp; &nbsp;c) Kèm theo đó thông tin bạn đã nhận được để đề nghị cung cấp mã nguồn tương ứng. (Phương án này chỉ được phép đối với việc cung cấp phi thương mại và chỉ với điều kiện nếu bạn nhận được Chương trình dưới hình thức mã đã biên dịch hoặc dạng có thể thực thi được cùng với lời đề nghị như vậy, theo phần b trong điều khoản nêu trên).<br />\r\n<br />\r\nMã nguồn của một sản phẩm là một dạng ưu tiên của sản phẩm dành cho việc chỉnh sửa nó. Với một sản phẩm có thể thi hành, mã nguồn hoàn chỉnh có nghĩa là tất cả các mã nguồn cho các môđun trong sản phẩm đó, cộng với tất cả các tệp tin định nghĩa giao diện đi kèm với nó, cộng với các hướng dẫn dùng để kiểm soát việc biên dịch và cài đặt các tệp thi hành. Tuy nhiên, một ngoại lệ đặc biệt là mã nguồn không cần chứa bất kỳ một thứ gì mà bình thường được cung cấp (từ nguồn khác hoặc hình thức nhị phân) cùng với những thành phần chính (chương trình biên dịch, nhân, và những phần tương tự) của hệ điều hành mà các chương trình chạy trong đó, trừ khi bản thân thành phần đó lại đi kèm với một tệp thi hành.<br />\r\n<br />\r\nNếu việc cung cấp lưu hành mã đã biên dịch hoặc tập tin thi hành được thực hiện qua việc cho phép tiếp cận và sao chép từ một địa điểm được chỉ định, thì việc cho phép tiếp cận tương đương tới việc sao chép mã nguồn từ cùng địa điểm cũng được tính như việc cung cấp mã nguồn, mặc dù thậm chí các bên thứ ba không bị buộc phải sao chép mã nguồn cùng với mã đã biên dịch.<br />\r\n<br />\r\n<strong>4.</strong>&nbsp;Bạn không được phép sao chép, chỉnh sửa, cấp phép hoặc cung cấp Chương trình trừ phi phải tuân thủ một cách chính xác các điều khoản trong Giấy phép. Bất kỳ ý định sao chép, chỉnh sửa, cấp phép hoặc cung cấp Chương trình theo cách khác đều làm mất hiệu lực và tự động huỷ bỏ quyền của bạn trong khuôn khổ Giấy phép này. Tuy nhiên, các bên đã nhận được bản sao hoặc quyền từ bạn với Giấy phép này sẽ không bị huỷ bỏ giấy phép nếu các bên đó vẫn tuân thủ đầy đủ các điều khoản của giấy phép.<br />\r\n<br />\r\n<strong>5.</strong>&nbsp;Bạn không bắt buộc phải chấp nhận Giấy phép này khi bạn chưa ký vào đó. Tuy nhiên, không có gì khác đảm bảo cho bạn được phép chỉnh sửa hoặc cung cấp Chương trình hoặc các sản phẩm bắt nguồn từ Chương trình. Những hành động này bị luật pháp nghiêm cấm nếu bạn không chấp nhận Giấy phép này. Do vậy, bằng việc chỉnh sửa hoặc cung cấp Chương trình (hoặc bất kỳ một sản phẩm nào dựa trên Chương trình), bạn đã thể hiện sự chấp thuận đối với Giấy phép này, cùng với tất cả các điều khoản và điều kiện đối với việc sao chép, cung cấp hoặc chỉnh sửa Chương trình hoặc các sản phẩm dựa trên nó.<br />\r\n<br />\r\n<strong>6.</strong> Mỗi khi bạn cung cấp lại Chương trình (hoặc bất kỳ một sản phẩm nào dựa trên Chương trình), người nhận sẽ tự động nhận được giấy phép từ người cấp phép đầu tiên cho phép sao chép, cung cấp và chỉnh sửa Chương trình theo các điều khoản và điều kiện này. Bạn không thể áp đặt bất cứ hạn chế nào khác đối với việc thực hiện quyền của người nhận đã được cấp phép từ thời điểm đó. Bạn cũng không phải chịu trách nhiệm bắt buộc các bên thứ ba tuân thủ theo Giấy phép này.<br />\r\n<br />\r\n<strong>7.</strong>&nbsp;Nếu như, theo quyết định của toà án hoặc với những bằng chứng về việc vi phạm bản quyền hoặc vì bất kỳ lý do nào khác (không giới hạn trong các vấn đề về bản quyền), mà bạn phải tuân theo các điều kiện (nêu ra trong lệnh của toà án, biên bản thoả thuận hoặc ở nơi khác) trái với các điều kiện của Giấy phép này, thì chúng cũng không thể miễn cho bạn khỏi những điều kiện của Giấy phép này. Nếu bạn không thể đồng thời thực hiện các nghĩa vụ của mình trong khuôn khổ Giấy phép này và các nghĩa vụ thích đáng khác, thì hậu quả là bạn hoàn toàn không được cung cấp Chương trình. Ví dụ, nếu trong giấy phép bản quyền không cho phép những người nhận được bản sao trực tiếp hoặc gián tiếp qua bạn có thể cung cấp lại Chương trình thì trong trường hợp này cách duy nhất bạn có thể thoả mãn cả hai điều kiện là hoàn toàn không cung cấp Chương trình.<br />\r\n<br />\r\nNếu bất kỳ một phần nào trong điều khoản này không có hiệu lực hoặc không thể thi hành trong một hoàn cảnh cụ thể, thì sẽ cân đối áp dụng các điều khoản, và toàn bộ điều khoản sẽ được áp dụng trong những hoàn cảnh khác.<br />\r\n<br />\r\nMục đích của điều khoản này không nhằm buộc bạn phải vi phạm bất kỳ một bản quyền nào hoặc các quyền sở hữu khác hoặc tranh luận về giá trị hiệu lực của bất kỳ quyền hạn nào như vậy; mục đích duy nhất của điều khoản này là nhằm bảo vệ sự toàn vẹn của hệ thống cung cấp phần mềm tự do đang được thực hiện với giấy phép công cộng. Nhiều người đã đóng góp rất nhiều vào sự đa dạng của các phần mềm tự do được cung cấp thông qua hệ thống này với sự tin tưởng rằng hệ thống được sử dụng một cách thống nhất; tác giả/người cung cấp có quyền quyết định rằng họ có mong muốn cung cấp phần mềm thông qua hệ thống nào khác hay không, và người được cấp phép không thể có ảnh hưởng tới sự lựa chọn này.<br />\r\n<br />\r\nĐiều khoản này nhằm làm rõ những hệ quả của các phần còn lại của Giấy phép này.<br />\r\n<br />\r\n<strong>8.</strong>&nbsp;Nếu việc cung cấp và/hoặc sử dụng Chương trình bị cấm ở một số nước nhất định bởi quy định về bản quyền, người giữ bản quyền gốc đã đưa Chương trình vào dưới Giấy phép này có thể bổ sung một điều khoản hạn chế việc cung cấp ở những nước đó, nghĩa là việc cung cấp chỉ được phép ở các nước không bị liệt kê trong danh sách hạn chế. Trong trường hợp này, Giấy phép đưa vào những hạn chế được ghi trong nội dung của nó.<br />\r\n<br />\r\n<strong>9.&nbsp;</strong>Tổ chức Phần mềm Tự do có thể theo thời gian công bố những phiên bản chỉnh sửa và/hoặc phiên bản mới của Giấy phép Công cộng. Những phiên bản đó sẽ đồng nhất với tinh thần của phiên bản hiện này, nhưng có thể khác ở một số chi tiết nhằm giải quyết những vấn đề hay những lo ngại mới.<br />\r\n<br />\r\nMỗi phiên bản sẽ có một mã số phiên bản riêng. Nếu Chương trình và &quot;bất kỳ một phiên bản nào sau đó&quot; có áp dụng một phiên bản Giấy phép cụ thể, bạn có quyền lựa chọn tuân theo những điều khoản và điều kiện của phiên bản giấy phép đó hoặc của bất kỳ một phiên bản nào sau đó do Tổ chức Phần mềm Tự do công bố. Nếu Chương trình không nêu cụ thể mã số phiên bản giấy phép, bạn có thể lựa chọn bất kỳ một phiên bản nào đã từng được công bố bởi Tổ chức Phần mềm Tự do.<br />\r\n<br />\r\n<strong>10.</strong>&nbsp;Nếu bạn muốn kết hợp các phần của Chương trình vào các chương trình tự do khác mà điều kiện cung cấp khác với chương trình này, hãy viết cho tác giả để được phép. Đối với các phần mềm được cấp bản quyền bởi Tổ chức Phầm mềm Tự do, hãy đề xuất với tổ chức này; đôi khi chúng tôi cũng có những ngoại lệ. Quyết định của chúng tôi sẽ dựa trên hai mục tiêu là bảo hộ tình trạng tự do của tất cả các sản phẩm bắt nguồn từ phần mềm tự do của chúng tôi, và thúc đẩy việc chia sẻ và tái sử dụng phần mềm nói chung.<br />\r\n<br />\r\n<strong>KHÔNG BẢO HÀNH</strong><br />\r\nDO CHƯƠNG TRÌNH ĐƯỢC CẤP PHÉP MIỄN PHÍ NÊN KHÔNG CÓ MỘT CHẾ ĐỘ BẢO HÀNH NÀO TRONG MỨC ĐỘ CHO PHÉP CỦA LUẬT PHÁP. TRỪ KHI ĐƯỢC CÔNG BỐ KHÁC ĐI BẰNG VĂN BẢN, NHỮNG NGƯỜI GIỮ BẢN QUYỀN VÀ/HOẶC CÁC BÊN CUNG CẤP CHƯƠNG TRÌNH NGUYÊN BẢN SẼ KHÔNG BẢO HÀNH DƯỚI BẤT KỲ HÌNH THỨC NÀO, BAO GỒM NHƯNG KHÔNG GIỚI HẠN TRONG CÁC HÌNH THỨC BẢO HÀNH ĐỐI VỚI TÍNH THƯƠNG MẠI CŨNG NHƯ TÍNH THÍCH HỢP CHO MỘT MỤC ĐÍCH CỤ THỂ. BẠN LÀ NGƯỜI CHỊU TOÀN BỘ RỦI RO VỀ CHẤT LƯỢNG CŨNG NHƯ VIỆC VẬN HÀNH CHƯƠNG TRÌNH. TRONG TRƯỜNG HỢP CHƯƠNG TRÌNH CÓ KHIẾM KHUYẾT, BẠN PHẢI CHỊU TOÀN BỘ CHI PHÍ CHO NHỮNG DỊCH VỤ SỬA CHỮA CẦN THIẾT.<br />\r\n<br />\r\nTRONG TẤT CẢ CÁC TRƯỜNG HỢP TRỪ KHI CÓ YÊU CẦU CỦA LUẬT PHÁP HOẶC CÓ THOẢ THUẬN BẰNG VĂN BẢN, NHỮNG NGƯỜI CÓ BẢN QUYỀN HOẶC BẤT KỲ MỘT BÊN NÀO CHỈNH SỬA VÀ/HOẶC CUNG CẤP LẠI CHƯƠNG TRÌNH TRONG CÁC ĐIỀU KIỆN NHƯ ĐÃ NÊU TRÊN ĐỀU KHÔNG CÓ TRÁCH NHIỆM VỚI BẠN VỀ CÁC LỖI HỎNG HÓC, BAO GỒM CÁC LỖI CHUNG HAY ĐẶC BIỆT, NGẪU NHIÊN HAY TẤT YẾU NẢY SINH DO VIỆC SỬ DỤNG HOẶC KHÔNG SỬ DỤNG ĐƯỢC CHƯƠNG TRÌNH (BAO GỒM NHƯNG KHÔNG GIỚI HẠN TRONG VIỆC MẤT DỮ LIỆU, DỮ LIỆU THIẾU CHÍNH XÁC HOẶC CHƯƠNG TRÌNH KHÔNG VẬN HÀNH ĐƯỢC VỚI CÁC CHƯƠNG TRÌNH KHÁC), THẬM CHÍ CẢ KHI NGƯỜI CÓ BẢN QUYỀN VÀ CÁC BÊN KHÁC ĐÃ ĐƯỢC THÔNG BÁO VỀ KHẢ NĂNG XẢY RA NHỮNG THIỆT HẠI ĐÓ.<br />\r\n<br />\r\n<strong>KẾT THÚC CÁC ĐIỀU KIỆN VÀ ĐIỀU KHOẢN.</strong></p>\r\n\r\n<p><strong>Áp dụng những điều khoản trên như thế nào đối với chương trình của bạn</strong><br />\r\n<br />\r\nNếu bạn xây dựng một chương trình mới, và bạn muốn cung cấp một cách tối đa cho công chúng sử dụng, thì biện pháp tốt nhất để đạt được điều này là phát triển chương trình đó thành phần mềm tự do để ai cũng có thể cung cấp lại và thay đổi theo những điều khoản như trên.<br />\r\n<br />\r\nĐể làm được việc này, hãy đính kèm những thông báo như sau cùng với chương trình của mình. An toàn nhất là đính kèm chúng trong phần đầu của tập tin mã nguồn để thông báo một cách hiệu quả nhất về việc không có bảo hành; và mỗi tệp tin đều phải có ít nhất một dòng về “bản quyền” và trỏ đến toàn bộ thông báo.</p>\r\n\r\n<blockquote>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; <strong>Một dòng đề tên chương trình và nội dung của nó.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; Bản quyền (C) năm,&nbsp; tên tác giả.</strong><br />\r\n<br />\r\nChương trình này là phần mềm tự do, bạn có thể cung cấp lại và/hoặc chỉnh sửa nó theo những điều khoản của Giấy phép Công cộng của GNU do Tổ chức Phần mềm Tự do công bố; phiên bản 2 của Giấy phép, hoặc bất kỳ một phiên bản sau đó (tuỳ sự lựa chọn của bạn).<br />\r\n<br />\r\nChương trình này được cung cấp với hy vọng nó sẽ hữu ích, tuy nhiên KHÔNG CÓ BẤT KỲ MỘT BẢO HÀNH NÀO; thậm chí kể cả bảo hành về KHẢ NĂNG THƯƠNG MẠI hoặc TÍNH THÍCH HỢP CHO MỘT MỤC ĐÍCH CỤ THỂ. Xin xem Giấy phép Công cộng của GNU để biết thêm chi tiết.<br />\r\n<br />\r\nBạn phải nhận được một bản sao của Giấy phép Công cộng của GNU kèm theo chương trình này; nếu bạn chưa nhận được, xin gửi thư về Tổ chức Phần mềm Tự do, 59 Temple Place - Suite 330, Boston, MA&nbsp; 02111-1307, USA.<br />\r\n<br />\r\nXin hãy bổ sung thông tin về địa chỉ liên lạc của bạn (thư điện tử và bưu điện).</p>\r\n</blockquote>\r\n\r\n<p>Nếu chương trình chạy tương tác, hãy đưa một thông báo ngắn khi bắt đầu chạy chương trình như sau:</p>\r\n\r\n<blockquote>\r\n<p>Gnomovision phiên bản 69, Copyright (C) năm, tên tác giả.<br />\r\n<br />\r\nGnomovision HOÀN TOÀN KHÔNG CÓ BẢO HÀNH; để xem chi tiết hãy gõ `show w&#039;.&nbsp; Đây là một phần mềm miễn phí, bạn có thể cung cấp lại với những điều kiện nhất định, gõ ‘show c’ để xem chi tiết.<br />\r\nGiả thiết lệnh `show w&#039; và `show c&#039; cho xem những phần tương ứng trong Giấy phép Công cộng. Tất nhiên những lệnh mà bạn dùng có thể khác với ‘show w&#039; và `show c&#039;; những lệnh này có thể là nhấn chuột hoặc lệnh trong thanh công cụ - tuỳ theo chương trình của bạn.</p>\r\n</blockquote>\r\n\r\n<p>Bạn cũng cần phải lấy chữ ký của người phụ trách (nếu bạn là người lập trình) hoặc của trường học (nếu có) xác nhận từ chối bản quyền đối với chương trình. Sau đây là ví dụ:</p>\r\n\r\n<blockquote>\r\n<p>Yoyodyne, Inc., tại đây từ chối tất cả các quyền lợi bản quyền đối với chương trình `Gnomovision&#039; viết bởi James Hacker.<br />\r\n<br />\r\nchữ ký của Ty Coon, 1 April 1989<br />\r\nTy Coon, Phó Tổng Giám đốc.</p>\r\n</blockquote>\r\n\r\n<p>Giấy phép Công cộng này không cho phép đưa chương trình của bạn vào trong các chương trình độc quyền. Nếu chương trình của bạn là một thư viện thủ tục phụ, bạn có thể thấy nó hữu ích hơn nếu cho thư viện liên kết với các ứng dụng độc quyền. Nếu đây là việc bạn muốn làm, hãy sử dụng Giấy phép Công cộng Hạn chế của GNU thay cho Giấy phép này.</p>\r\n\r\n<hr  />\r\n<p><strong>Bản gốc của giấy phép bằng tiếng Anh có tại các địa chỉ sau:</strong></p>\r\n\r\n<ol>\r\n	<li>GNU General Public License, version 1, February 1989:&nbsp;<a href="http://www.gnu.org/licenses/old-licenses/gpl-1.0.txt" target="_blank">http://www.gnu.org/licenses/old-licenses/gpl-1.0.txt</a></li>\r\n	<li>GNU General Public License, version 2, June 1991:&nbsp;<a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html" target="_blank">http://www.gnu.org/licenses/old-licenses/gpl-2.0.html</a></li>\r\n	<li>GNU General Public License, version 3, 29 June 2007:&nbsp;<a href="http://www.gnu.org/licenses/gpl-3.0.txt" target="_blank">http://www.gnu.org/licenses/gpl-3.0.txt</a></li>\r\n</ol>\r\n\r\n<p><strong>Tài liệu tham khảo:</strong></p>\r\n\r\n<ol>\r\n	<li>Bản dịch tiếng Việt của Giấy phép Công cộng GNU tại OpenOffice.org:&nbsp;<br />\r\n	<a href="http://vi.openoffice.org/gplv.html" target="_blank">http://vi.openoffice.org/gplv.html</a></li>\r\n	<li>GPL tại&nbsp;Văn thư lưu trữ mở Wikisource:&nbsp;<a href="http://vi.wikisource.org/wiki/GPL" target="_blank">http://vi.wikisource.org/wiki/GPL</a></li>\r\n</ol>\r\n\r\n<p><strong>Xem thêm:</strong></p>\r\n\r\n<ol>\r\n	<li>LGPL tại&nbsp;Văn thư lưu trữ mở Wikisource:&nbsp;<a href="http://vi.wikisource.org/wiki/LGPL" target="_blank">http://vi.wikisource.org/wiki/LGPL</a></li>\r\n	<li>Giấy phép Công cộng GNU - WikiPedia:&nbsp;<br />\r\n	<a href="http://vi.wikipedia.org/wiki/Gi%E1%BA%A5y_ph%C3%A9p_C%C3%B4ng_c%E1%BB%99ng_GNU" target="_blank">http://vi.wikipedia.org/wiki/Giấy_phép_Công_cộng_GNU</a></li>\r\n	<li>Thảo luận giấy phép GNU GPL - HVA:<br />\r\n	&nbsp;<a href="http://www.hvaonline.net/hvaonline/posts/list/7120.hva" target="_blank">http://www.hvaonline.net/hvaonline/posts/list/7120.hva</a></li>\r\n	<li>Thảo luận tại diễn đàn:&nbsp;<a href="http://nukeviet.vn/phpbb/viewtopic.php?f=83&amp;t=1591" target="_blank">http://nukeviet.vn/phpbb/viewtopic.php?f=83&amp;t=1591</a></li>\r\n</ol>', 'giấy phép,công cộng,tiếng anh,gnu general,public license,gnu gpl,phần mềm,là tự,sử dụng,mã nguồn,bản dịch,tiếng việt,của gnu,đây là,này không,do tổ,chức tự,hành và,các điều,cho các,có bản,tuy nhiên,chúng tôi,cho những,phiên bản,mọi người,được phép,sao chép,lưu hành,bản sao,nguyên bản,nhưng không,và thay,nội dung,của này,hạn chế,tự do,chia sẻ,nukeviet,portal,mysql,php,cms,mã nguồn mở,thiết kế website', 0, '4', '', 0, 4, 1, 1456905063, 1456905063, 1);
INSERT INTO `nv4_vi_about` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `gid`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`) VALUES
(5, 'Những tính năng của NukeViet CMS 4.0', 'nhung-tinh-nang-cua-nukeviet-cms-4-0', '', '', 0, '', '<p style="text-align: justify;"><span style="font-size: 150%; line-height: 116%;"><span style="font-weight: bold;">Giới thiệu chung</span></span><br  /> <span style="font-weight: bold;">Mã nguồn mở NukeViet là sản phẩm của sự làm việc chuyên nghiệp: </span><br  /> Để xây dựng lên NukeViet 4, đội ngũ phát triển đã thành lập công ty VINADES.,JSC. Trong quá trình phát triển NukeViet 4, VINADES.,JSC đã hợp tác với nhiều đơn vị cung cấp hosting trong và ngoài nước để thử nghiệm host, đảm bảo tương thích với đa số các hosting chuyên nghiệp.<br  /> NukeViet 4 cũng được vận hành thử nghiệm, góp ý bởi nhiều webmaster có kinh nghiệm quản trị ở nhiều hệ thống khác nhau nhằm tối ưu các tính năng hệ thống cho người sử dụng.<br  /> NukeViet 4 được lập trình bởi các lập trình viên mà kinh nghiệm và tên tuổi của họ đã được xác lập cùng với tên tuổi của bộ mã nguồn mở tạo web đầu tiên của Việt Nam.<br  /> <br  /> <span style="font-weight: bold;">NukeViet 4 là một hệ thống mạnh:</span><br  /> Rút kinh nghiệm từ chính NukeViet 2, NukeViet 3, NukeViet 4 được viết mới hoàn toàn trên nền tảng kỹ thuật tiên tiến nhất hiện nay cho phép xây dựng các nền tảng ứng dụng trực tuyến lớn như Các cổng thông tin điện tử, các tòa soạn báo điện tử, các mạng xã hội và các hệ thống thương mại trực tuyến.<br  /> NukeViet 4 đã được thử nghiệm vận hành với dữ liệu lớn lên tới hàng triệu bản tin. Trên thực tế, NukeViet 4 cũng đã triển khai thành công cho các hiệp hội, doanh nghiệp có lượng truy cập rất lớn.<br  /> <br  /> <span style="font-weight: bold;">NukeViet 4 thích hợp cho mọi đối tượng:</span><br  /> NukeViet lấy người sử dụng làm trọng tâm, những tính năng của NukeViet tạo nên chuẩn mực trong việc sử dụng và quản trị. Vì thế, NukeViet 4 tốt cho cả người sử dụng lẫn người phát triển.<br  /> Với người sử dụng, NukeViet 4 cho phép tùy biến dễ dàng và sử dụng ngay mà không cần can thiệp vào hệ thống.<br  /> Với người phát triển, sử dụng NukeViet cho phép nhanh chóng xây dựng các nền tảng khác nhau nhờ việc viết thêm các module cho hệ thống thay vì phải tự mình viết cả một hệ thống.</p>  <p style="text-align: justify;"><span style="font-size: 150%; line-height: 116%;"><span style="font-weight: bold;">Các tính năng của NukeViet 4</span></span></p> <span style="font-weight: bold;">Nền tảng công nghệ</span>  <ul> 	<li style="text-align: justify;"><span id="cke_bm_178S" style="display: none;">&nbsp;</span>NukeViet CMS 4 lập trình trên PHP 5.4 và MySQL 5, Sử dụng PDO để kết nối với MySQL (Sẵn sàng kết nối với các CSDL khác) cho phép vận dụng tối đa sức mạnh của công nghệ mới.</li> 	<li style="text-align: justify;">Sử dụng Composer để quản lý các thư viện PHP được cài vào hệ thống.</li> 	<li style="text-align: justify;">Từng bước áp dụng các tiêu chuẩn viết code PHP theo khuyến nghị của http://www.php-fig.org/psr/</li> 	<li style="text-align: justify;">Ứng dụng Xtemplate và jQuery cho phép vận dụng Ajax uyển chuyển từ trong nhân hệ thống.</li> 	<li style="text-align: justify;">Giai diện trong NukeViet 4 được làm mới, tương thích với nhiều màn hình hơn, Sử dụng thư viện bootstrap để việc phát triển giao diện thống nhất và dễ dàng hơn.</li> 	<li style="text-align: justify;">Tận dụng các thành tựu mã nguồn mở có sẵn nhưng NukeViet 4 vẫn đảm bảo rằng từng dòng code là được code tay. Điều này có nghĩa là NukeViet 4 hoàn toàn không lệ thuộc vào bất cứ framework nào trong quá trình phát triển của mình; Bạn hoàn toàn có thể đọc hiểu để tự lập trình trên NukeViet 4 nếu bạn biết PHP và MySQL (đồng nghĩa với việc NukeViet 4 hoàn toàn mở và dễ nghiên cứu cho bất cứ ai muốn tìm hiểu về code của NukeViet).<span id="cke_bm_178E" style="display: none;">&nbsp;</span></li> </ul>  <ul id="docs-internal-guid-7ec786f5-1ade-f016-4c9b-c9a8e36cc922"> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Kiến trúc Module</span></p>  <ul> 	<li style="text-align: justify;">NukeViet CMS 4 tái cấu trúc lại module, theo đó, toàn bộ tệp tin của mỗi module được gói gọn trong một thư mục riêng nhằm đơn giản trong việc quản lý và đóng gói ứng dụng. Kiến trúc module này tạo ra khái niệm block của module và theme của module giúp đa dạng hóa việc trình bày module.</li> 	<li style="text-align: justify;">Hệ thống NukeViet 4 hỗ trợ công nghệ đa nhân module. Chúng tôi gọi đó là công nghệ ảo hóa module. Công nghệ này cho phép người sử dụng có thể khởi tạo hàng ngàn module một cách tự động mà không cần động đến một dòng code. Các module được sinh ra từ công nghệ này gọi là module ảo. Module ảo là module được nhân bản từ một module bất kỳ của hệ thống nukeviet nếu module đó cho phép tạo module ảo.</li> 	<li style="text-align: justify;">NukeViet 4 cũng hỗ trợ việc cài đặt từ động 100% các module kèm theo block, theme từ Admin Control Panel, người sử dụng có thể cài module mà không cần làm bất cứ thao tác phức tạp nào. NukeViet 4 còn cho phép bạn đóng gói module để chia sẻ cho người khác.</li> 	<li style="text-align: justify;">Hệ thống cho phép quản lý module từ trong Admin Control Panel, quản trị cấp cao có thể phân quyền truy cập cũng như tạm ngưng hoạt động hay thậm chí cài lại hoặc xóa module tùy theo nhu cầu sử dụng.</li> </ul>  <p style="text-align: justify;"><br  /> <span style="font-weight: bold;">Đa ngôn ngữ</span></p>  <ul> 	<li>NukeViet 4 đa ngôn ngữ 100% với 2 loại: đa ngôn ngữ giao diện và đa ngôn ngữ xử lý dữ liệu (database).</li> 	<li>NukeViet 4 có tính năng cho phép người quản trị tự xây dựng ngôn ngữ mới cho site. Cho phép đóng gói file ngôn ngữ để chia sẻ cho cộng đồng...</li> 	<li>NukeViet cũng có trung tâm dịch thuật riêng dành cho việc chung tay góp sức xây dựng những ngôn ngữ mới tại địa chỉ: <a href="http://translate.nukeviet.vn" target="_blank">http://translate.nukeviet.vn</a></li> 	<li>NukeViet 4 tách bạch ngôn ngữ quản trị và ngôn ngữ người dùng, ngôn ngữ giao diện và ngôn ngữ database giúp dễ dàng xây dựng và quản lý các hệ thống đa ngôn ngữ.</li> 	<li>NukeViet 4 còn có khả năng tự động nhận diện và chuyển ngôn ngữ phù hợp cho người sử dụng.</li> 	<li>NukeViet 4 còn có sẵn 3 ngôn ngữ mặc định là Việt, Anh và Pháp.</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Phân quyền</span><strong> cấp độ hệ thống</strong><br  /> NukeViet 4 tách biệt 2 khu vực: Khu vực quản trị và Khu vực người dùng. Toàn bộ các tính năng quản lý nằm trong khu vực quản trị nhằm đảm bảo việc phân quyền được thực hiện chính xác và an toàn nhất.<br  /> <br  /> <span style="font-weight: bold;">Phân quyền Quản trị</span><br  /> NukeViet 4 phân quyền theo module và theo ngôn ngữ, do đó dễ dàng xác lập quyền quản trị cho các hệ thống lớn, nhiều người quản trị cùng làm việc.<br  /> <br  /> <span style="font-weight: bold;">Phân quyền thành viên</span><br  /> NukeViet 4 cho phép quản lý và phân nhóm người sử dụng thành các nhóm khác nhau để dễ dàng phân quyền người sử dụng theo từng module cụ thể.<br  /> <br  /> <strong>Phân quyền cấp độ module</strong><br  /> Ở cấp module, tùy chức năng module được thiết kế mà nó có thể được phân quyền theo các cơ chế khác nhau, việc này đặc biệt linh hoạt khi xây dựng các hệ thống lớn. Với module News tích hợp trong hệ thống được trang bị việc phân quyền tới từng chuyên mục.<br  /> <br  /> <span style="font-weight: bold;">Đa giao diện</span></p>  <ul> 	<li style="text-align: justify;">Cài đặt: NukeViet 4 hỗ trợ cài đặt và gỡ bỏ giao diện hoàn toàn tự động. Hơn thế nữa, bạn có thể đóng gói giao diện để chia sẻ cho website khác một cách dễ dàng.</li> 	<li style="text-align: justify;">NukeViet hỗ trợ giao diện theo ngôn ngữ, giao diện theo module, định nghĩa giao diện mobile (NukeViet 4) và giao diện PC tùy theo ý người quản trị.</li> 	<li style="text-align: justify;">NukeViet hỗ trợ hệ thống đa giao diện cực kỳ uyển chuyển cho cả người sử dụng lẫn người lập trình. Với NukeViet 4, người sử dụng có thể tùy biến một cách dễ dàng: gán giao diện theo module, thiết lập bố cục giao diện cho từng tính năng của module.</li> 	<li style="text-align: justify;">Với người thiết kế giao diện: có thể tùy ý thiết kế không giới hạn bố cục giao diện. Giao diện đã được tách bạch phần HTML và CSS khỏi PHP vì vậy người thiết kế tùy trình độ mà có thể can thiệp vào các lớp giao diện để chỉnh sửa hoặc thiết kế giao diện mới một cách dễ dàng.</li> </ul>  <p style="text-align: justify;"><strong>Hỗ trợ truy cập từ điện thoại, máy tính bảng.</strong><br  /> Từ bản NukeViet 4, NukeViet có thể tự động nhận diện thiết bị di động để chuyển giao diện và chế độ tương tác phù hợp. Ngoài ra NukeViet 4 còn có giao diện tùy biến, để có thể hiển thị tốt trên các màn hình khác nhau.<br  /> <br  /> <span style="font-weight: bold;">Tùy biến site bằng Block</span><br  /> NukeViet cho phép đa dạng hóa bố cục và chức năng cho website nhờ các khối (block) khác nhau trên website. Các khối này có thể là các ứng dụng, các khối quảng cáo hoặc dữ liệu bất kỳ nào được người sử dụng định nghĩa. Block của NukeViet 4 cũng phân theo 2 cấp: Block của hệ thống và block cho từng module.<br  /> Người sử dụng có thể tùy ý bố trí vị trí block ở các vị trí khác nhau: toàn bộ website, theo từng module và thậm chí là từng tính năng của module. Block có thể có các giao diện khác nhau theo theme. Có thể hẹn giờ bật/tắt cũng như phân quyền cho từng đối tượng người truy cập.<br  /> Việc bố trí block có thể thực hiện trong Admin Control Panel hoặc kéo thả trực quan ngay tại giao diện người dùng.<br  /> <br  /> <span style="font-weight: bold;">An ninh, bảo mật</span><br  /> NukeViet 4 được thiết kế để nhận biết và chống các truy cập bất hợp pháp vào hệ thống cũng như gửi các dữ liệu có hại lên hệ thống.</p>  <ul> 	<li style="text-align: justify;">Sau khi các chuyên giả bảo mật của HP gửi đánh giá, chúng tôi đã tối ưu NukeViet 4.0 để hệ thống an toàn hơn.</li> 	<li style="text-align: justify;">Mã hóa các mật khẩu lưu trữ trong hệ thống: Các mật khẩu như FPT, SMTP,... đã được mã hóa, bảo mật thông tin người dùng.<br  /> 	Tường lửa Admin bảo vệ khu vực bằng mật khẩu và IP.</li> 	<li style="text-align: justify;">Bộ lọc IP cấm và bộ lọc file cấm giúp ngăn ngừa các nguy cơ biết trước.</li> 	<li style="text-align: justify;">Dữ liệu gửi qua hệ thống được kiểm duyệt bằng bộ lọc an ninh kép nhằm ngăn chặn các dữ liệu có khả năng tấn công vào hệ thống.</li> 	<li style="text-align: justify;">NukeViet có khả năng ngăn chặn, theo dõi và kiểm soát truy cập vào hệ thống của tất cả các máy chủ tìm kiếm như yahoo và google hay bất cứ máy chủ tìm kiếm nào khác.</li> 	<li style="text-align: justify;">Hệ thống có khả năng chống Spam bằng Captcha, chống lụt dữ liệu bằng nhiều hình thức như giới hạn thời gian gửi dữ liệu (sử dụng các công thức kép)...</li> 	<li style="text-align: justify;">Hệ thống cho phép theo dõi, ghi nhận các thông số của máy tính truy cập đến site như: Hệ điều hành, Trình duyệt, quốc gia, các liên kết đến site (referer) để từ đó có thể kịp thời ngăn ngừa các nguy cơ tấn công bằng các hình thức như: kiểm tra và chặn các máy tình dùng proxy, chặn IP truy cập...</li> 	<li style="text-align: justify;">hật ký hệ thống sẽ ghi nhận truy cập và thao tác tới cơ sở dữ liệu &amp; tệp tin, giúp người quản trị cũng như các thành viên dễ dàng phát hiện ra những đăng nhập bất hợp pháp từ lần đăng nhập trước đó.</li> 	<li style="text-align: justify;">Hệ thống có thể phát hiện các bản nâng cấp mới của phần mềm để nhắc nhở người sử dụng nâng cấp và sửa chữa các lỗi (nếu có)</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Quản lý CSDL</span></p>  <ul> 	<li style="text-align: justify;">NukeViet 4 cho phép quản lý CSDL, người sử dụng có thể tối ưu, sao lưu trên máy chủ và tải dữ liệu về để phục vụ cho công tác phục hồi nếu xảy ra sự cố.</li> 	<li style="text-align: justify;">Hỗ trợ mô hình CSDL theo mô hình master/slave để phân tải CSDL.</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Kiểm soát lỗi tự động và báo lỗi thông minh</span></p>  <ul> 	<li style="text-align: justify;">NukeViet 4 có hệ thống kiểm soát lỗi tự động và báo lỗi cho người dùng.</li> 	<li style="text-align: justify;">Các lỗi (nếu có) sẽ được hệ thống kiểm soát có chủ đích, nó chỉ hiển thị lên màn hình người sử dụng ở lần đầu nó xuất hiện, sau đó hệ thống ghi nhận và báo về cho người quản trị qua email.</li> 	<li style="text-align: justify;">Quản trị có thể cấu hình việc bật tắt việc có ghi nhận lỗi hay không.</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Tối ưu hóa cho công cụ tìm kiếm (SEO)</span></p>  <ul> 	<li style="text-align: justify;">Loại bỏ tên module khỏi URL khi không dùng đa ngôn ngữ.</li> 	<li style="text-align: justify;">Cho phép đổi đường dẫn module</li> 	<li style="text-align: justify;">Thêm chức năng xác thực Google+ (Bản quyền tác giả)</li> 	<li style="text-align: justify;">Thêm chức năng ping đến các công cụ tìm kiếm: Submit url mới đến google để việc hiển thị bài viết mới lên kết quả tìm kiếm nhanh chóng hơn.</li> 	<li style="text-align: justify;">Hỗ trợ Meta OG của facebook</li> 	<li style="text-align: justify;">Hỗ trợ chèn Meta GEO qua Cấu hình Meta-Tags<br  /> 	Hỗ trợ SEO link.</li> 	<li style="text-align: justify;">Quản lý và tùy biến tiêu đề site, description</li> 	<li style="text-align: justify;">Hỗ trợ quản lý các thẻ meta như: keywords, description</li> 	<li style="text-align: justify;">Hỗ trợ sử dụng keywords để phát sinh trang thống kê một cách tự động nhờ công cụ tìm kiếm.</li> 	<li style="text-align: justify;">Hỗ trợ quản lý máy chủ tìm kiếm.</li> 	<li style="text-align: justify;">Hỗ trợ quản lý cấu hình robots.txt</li> 	<li style="text-align: justify;">Hỗ trợ chuẩn đoán site (site Diagnostic).</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Sẵn sàng cho việc tích hợp các ứng dụng của bên thứ 3</span><br  /> NukeViet 3.4 sử dụng Cơ sở dữ liệu thành viên độc lập và xây dựng sẵn các phương thức kết nối với các ứng dụng Forum. Cơ sở dữ liệu thành viên độc lập giúp việc quản lý thành viên được chủ động, khi có nhu cầu kết nối hoặc trao quyền quản lý cho các ứng dụng từ bên thứ 3, NukeViet 3.4 vẫn hoàn toàn chủ động với dữ liệu thành viên của mình. Với NukeViet 3.4, các kết nối trực tiếp dành cho Forum như PHPBB hay VBB đều sẵn sàng.<br  /> <br  /> <span style="font-weight: bold;">Hỗ trợ Đăng nhập phân tán</span><br  /> NukeViet hỗ trợ thư viện OAuth , cho phép người truy cập có thể đăng nhập phân tán từ các hệ thống như FaceBook và Google hay các hệ thống OpenID khác giúp các website mới xây dựng có cơ hội thu hút lượng người sử dụng khổng lồ từ các hệ thống lớn.<br  /> Trong mọi trường hợp, hệ thống cho phép admin kiểm duyệt việc login OAuth. Tùy nhu cầu sử dụng mà có thể thiết đặt mức độ login cao nhất (tự động) tới mức độ vẫn phải đăng ký thành viên (bớt bước kích hoạt qua email). Người sử dụng cũng có thể quản lý nhiều tài khoản OAuth để từ đó có thể đăng nhập bằng tài khoản bất kỳ (nếu hệ thống cho phép).</p>  <p style="text-align: justify;"><strong>Trình soạn thảo tích hợp sẵn:</strong></p>  <p style="text-align: justify;">Tại những vị trí phù hợp, NukeViet tích hợp sẵn trình soạn thảo CKeditor giúp người sử dụng dễ dàng biên tập nội dung trên giao diện trực quan và thân thiện như làm việc với phần mềm Microsoft Word hay OpenOffice. Hiện tại NukeViet 4 cũng đã mở sẵn để tích hợp các trình soạn thảo khác.</p>  <p style="text-align: justify;"><span style="font-weight: bold;">Các tiện ích khác</span><br  /> Hệ thống cho phép gửi mail bằng các phương thức: SMTP, Linux Mail, PHPmail.<br  /> Cho phép sử dụng phương thức FTP để ghi file nếu máy chủ không cho phép làm điều đó bằng PHP<br  /> Cho phép xây dựng và quản lý các tác vụ xử lý tự động như tự động sao lưu CSDL, tự động xóa các dữ liệu cũ hoặc gửi báo lỗi tới người quản trị...<br  /> Cung cấp đầy đủ các thông tin về hệ thống giúp nhà phát triển dễ dàng sử dụng các thông tin này phục vụ cho việc lập trình, kiểm tra và báo lỗi hệ thống.<br  /> <br  /> <span style="font-size: 150%; line-height: 116%;"><span style="font-weight: bold;">Các module tích hợp sẵn trong NukeViet CMS 4:</span></span><br  /> <span style="font-weight: bold;">Quản lý Upload</span></p>  <ul> 	<li style="text-align: justify;">Upload hình (ảnh, flash) từ máy tính hoặc một địa chỉ bất kỳ trên mạng.</li> 	<li style="text-align: justify;">Quản lý: Di chuyển, đổi tên, sửa, xóa, tạo hình thu nhỏ...</li> 	<li style="text-align: justify;">Hỗ trợ tìm kiểm các file và mô tả các file được upload lên trong khu vực quản trị.</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Quản trị và xuất bản Tin tức:</span> (cho phép tạo module ảo)<br  /> Hệ thống tin tức của NukeViet là hệ thống quản trị tin tức chuyên nghiệp đặc biệt phù hợp với các website tin tức. Nó cho phép xử lý nhiều tác vụ nền thông minh mà không cần người sử dụng can thiệp nhằm tối ưu cho hệ thống tin tức, Ví dụ: tạo hình thu nhỏ, tự động chia thư mục và sắp xếp hình vào các thư mục theo thời gian...</p>  <ul> 	<li style="text-align: justify;">Quản lý chủ đề đa cấp trong đó bản tin có thể nằm ở 1 hoặc nhiều chủ đề không phụ thuộc quan hệ cha con giữa các chủ đề.</li> 	<li style="text-align: justify;">Phân quyền cho người quản lý module, đến từng chủ đề</li> 	<li style="text-align: justify;">Quản lý nhóm tin liên quan (phân luồn tin theo dòng đơn)</li> 	<li style="text-align: justify;">Quản lý block tin (nhóm tin đa luồng)</li> 	<li style="text-align: justify;">Quản lý Tags</li> 	<li style="text-align: justify;">Quản lý nguồn tin</li> 	<li style="text-align: justify;">Tùy chỉnh bố cục trang tin.</li> 	<li style="text-align: justify;">Gửi bài viết, hẹn giờ đăng và nhiều tùy chỉnh khác: cho phép gửi bản tin, in, lưu bản tin.</li> 	<li style="text-align: justify;">Cấp tin RSS</li> 	<li style="text-align: justify;">Công cụ tương tác với mạng xã&nbsp; hội.</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Module Page:</span></p>  <ul> 	<li style="text-align: justify;">Module này thích hợp làm các bài viết không cần quản lý chủ đề, như các module ảo: giới thiệu, nội quy site ...</li> 	<li style="text-align: justify;">Hỗ trợ SEO: Ảnh minh họa, chú thích ảnh minh họa, mô tả, từ khóa cho bài viết, hiển thị các công cụ tương tác với các mạng xã hội.</li> 	<li style="text-align: justify;">Hỗ trợ RSS</li> 	<li style="text-align: justify;">Cấu hình phương án hiển thị các bài viết trên trang chính.</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Quản lý thành viên:</span></p>  <ul> 	<li style="text-align: justify;">Quản lý việc đăng nhập, đăng ký.</li> 	<li style="text-align: justify;">Quản lý phương thức đăng nhập: Qua openid hoặc đăng nhập trực tiếp.</li> 	<li style="text-align: justify;">Quản lý câu hỏi bảo mật.</li> 	<li style="text-align: justify;">Quản lý nội quy.</li> 	<li style="text-align: justify;">Quản lý thông tin thành viên.</li> 	<li style="text-align: justify;">Cho phép đăng nhập 1 lần tài khoản người dùng NukeViet với Alfresco, Zimbra, Moodle, Koha thông qua CAS.</li> 	<li style="text-align: justify;">Chức năng tùy biến trường dữ liệu thành viên</li> 	<li style="text-align: justify;">Chức năng phân quyền sử dụng module users</li> 	<li style="text-align: justify;">Cấu hình Số ký tự username, độ phức tạp mật khẩu, tạo mật khảu ngẫu nhiên,....</li> 	<li style="text-align: justify;">Cho phép sử dụng tên truy cập, hoặc email để đăng nhập</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Quản lý liên hệ gửi đến website</span></p>  <ul> 	<li style="text-align: justify;">Quản lý thông tin liên hệ trên site.</li> 	<li style="text-align: justify;">Quản lý các bộ phận tiếp nhận liên hệ.</li> 	<li style="text-align: justify;">Quản lý và trả lời các thư gửi tới. Admin có thể trả lời khách nhiều lần, hệ thống lưu lại lịch sử trao đổi đó.</li> 	<li style="text-align: justify;">Hệ thống nhận thông báo: đây là một tiện ích nhỏ, song nó rất hữu dụng để admin tương tác với hệ thống một cách nhanh chóng. Admin có thể nhận thông báo từ hệ thống (hoặc từ module) khi có sự kiện nào đó. Ví dụ: Khi có khách gửi liên hệ (qua module contact) đến thì hệ thống xuất hiện biểu tượng thông báo “Có liên hệ mới” ở góc phải, Admin sẽ nhận được ngay lập tức thông báo khi người dùng đang ở Admin control panel (ACP).</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Quản lý thăm dò ý kiến:</span></p>  <ul> 	<li style="text-align: justify;">Tạo các thăm dò ý kiến</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Quản lý quảng cáo chuyên nghiệp:</span></p>  <ul> 	<li style="text-align: justify;">Quản lý khách hàng.</li> 	<li style="text-align: justify;">Quản lý các khu vực quảng cáo</li> 	<li style="text-align: justify;">Quản lý các nội dung quảng cáo.</li> 	<li style="text-align: justify;">Kết hợp với việc quản lý block. Các quản cáo có thể đặt vào các khu vực khác nhau, dễ dàng thay đổi theo nhu cầu của người dùng.</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Thống kê:</span> Thống kê theo năm, tháng, ngày, tuần, giờ.</p>  <ul> 	<li style="text-align: justify;">Theo liên kết đến site</li> 	<li style="text-align: justify;">Theo quốc gia</li> 	<li style="text-align: justify;">Theo trình duyệt</li> 	<li style="text-align: justify;">Theo hệ điều hành</li> 	<li style="text-align: justify;">Máy chủ tìm kiếm</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Tìm kiếm</span></p>  <ul> 	<li style="text-align: justify;">Tìm kiếm chung toàn hệ thống</li> 	<li style="text-align: justify;">Tìm kiếm nâng cao từng khu vực</li> </ul>  <div style="text-align: justify;"><strong>Module menu:</strong></div>  <ul> 	<li style="text-align: justify;">Module này cung cấp để quản lý các menu tùy biên, có thể lấy liên kết từ nhiều mục khác nhau.</li> 	<li style="text-align: justify;">Phương án quản lý menu được thay đổi hướng tới việc quản lý menu nhanh chóng, tiện lợi nhất cho admin.</li> 	<li style="text-align: justify;">Admin có thể nạp nhanh menu theo các tùy chọn mà hệ thống cung cấp.</li> 	<li style="text-align: justify;">Mẫu menu cũng được thay đổi, đa dạng và hiển thị tốt với các giao diện hiện đại.</li> </ul>  <p style="text-align: justify;"><strong>Quản lý Bình luận</strong></p>  <ul> 	<li style="text-align: justify;">Các bình luận của các module sẽ được tích hợp quản lý tập trung để cấu hình, phân quyền.</li> 	<li style="text-align: justify;">Khi xây dựng mới module, Chỉ cần nhúng 1 đoạn mã vào. Tránh phải việc copy mã code gây khó khăn cho bảo trì.</li> </ul>  <p style="text-align: justify;"><br  /> Trên đây là các tính năng chính của bộ nhân hệ thống NukeViet 4, để xem đầy đủ hơn các tính năng <strong><a href="http://wiki.nukeviet.vn/nukeviet4:feature">click vào đây</a></strong>. Với NukeViet, việc mở rộng thêm các tính năng là không hạn chế, đơn giản là cài thêm các module tương ứng hoặc xây dựng thêm các module đó cho NukeViet.</p>', '', 0, '4', '', 0, 5, 1, 1456905063, 1456905063, 1),
(6, 'Yêu cầu sử dụng NukeViet 4', 'Yeu-cau-su-dung-NukeViet-4', '', '', 0, '', '<h2 class="sectionedit2" id="moi_truong_may_chủ">1. Môi trường máy chủ</h2>  <div class="level2"> <p><strong>Yêu cầu bắt buộc</strong></p>  <ul> 	<li class="level1"> 	<div class="li">Hệ điều hành: Unix (Linux, Ubuntu, Fedora …) hoặc Windows</div> 	</li> 	<li class="level1"> 	<div class="li">PHP: PHP 5.4 hoặc phiên bản mới nhất.</div> 	</li> 	<li class="level1"> 	<div class="li">MySQL: MySQL 5.5 hoặc phiên bản mới nhất</div> 	</li> </ul>  <p><strong>Tùy chọn bổ sung</strong></p>  <ul> 	<li class="level1"> 	<div class="li">Máy chủ Apache cần hỗ trợ mod mod_rewrite.</div> 	</li> 	<li class="level1"> 	<div class="li">Máy chủ Nginx cấu hình các thông số rewite.</div> 	</li> 	<li class="level1"> 	<div class="li">Máy chủ IIS 7.0 hoặc IIS 7.5 cần cài thêm module rewrite</div> 	</li> 	<li class="level1"> 	<div class="li">Môi trường PHP mở rộng: Các thư viện PHP cần có: file_uploads, session, mbstring, curl, gd2, zlib, soap, php_zip.</div> 	</li> </ul>  <p><em class="u"><strong>Ghi chú:</strong></em></p>  <ul> 	<li class="level1"> 	<div class="li">Những yêu cầu trên không có nghĩa là NukeViet 4 không làm việc trên các hệ thống khác, điều quan trọng là cần thiết lập môi trường làm việc phù hợp.</div> 	</li> 	<li class="level1"> 	<div class="li">Với những website sử dụng hosting, NukeViet 4 làm việc tốt nhất trên các hosting Linux cài sẵn Apache 2.2, PHP 5, MySQL 5, DirectAdmin hoặc Cpanel.</div> 	</li> 	<li class="level1"> 	<div class="li">Với các website cần chịu tải cao, nên sử dụng Nginx, PHP7 (php-fpm). Tham khảo thêm mô hình <a class="urlextern" href="http://wiki.nukeviet.vn/web_server:cai-dat-server-chi-tai-cao" rel="nofollow" target="_blank" title="http://wiki.nukeviet.vn/web_server:cai-dat-server-chi-tai-cao">http://wiki.nukeviet.vn/web_server:cai-dat-server-chi-tai-cao</a></div> 	</li> </ul> </div>  <div class="secedit editbutton_section editbutton_2">  <div class="no">&nbsp;</div>  </div>  <h2 class="sectionedit3" id="may_tinh_nguời_truy_cập">2. Máy tính người truy cập</h2>  <div class="level2"> <p>NukeViet 4 cho kết quả là chuẩn HTML5 và CSS 3, đây là định dạng chuẩn mà hầu hết các trình duyệt hiện nay đang hỗ trợ. Chính vì vậy các website làm trên nền NukeViet 4 có thể truy cập tốt trên các phiên bản mới nhất của trình duyệt FireFox, Internet Explorer 9, Google Chrome … Máy tính người truy cập chỉ cần cài một trong các trình duyệt này là có thể tương tác với NukeViet thông qua internet hoặc intranet.</p> </div>', '', 0, '4', '', 0, 6, 1, 1456905063, 1456905063, 1),
(7, 'Giới thiệu về Công ty cổ phần phát triển nguồn mở Việt Nam', 'gioi-thieu-ve-cong-ty-co-phan-phat-trien-nguon-mo-viet-nam', '', '', 0, '', '<p style="text-align: justify;"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam</strong> (VINADES.,JSC) là công ty mã nguồn mở đầu tiên của Việt Nam sở hữu riêng một mã nguồn mở nổi tiếng và đang được sử dụng ở hàng ngàn website lớn nhỏ trong mọi lĩnh vực. Wbsite đang hoạt động chính thức: <a href="http://vinades.vn/">http://vinades.vn/</a><br  /> <br  /> Ra đời từ hoạt động của tổ chức nguồn mở NukeViet (từ năm 2004) và chính thức được thành lập đầu 2010 tại Hà Nội, khi đó báo chí đã gọi VINADES.,JSC là <em><strong>&quot;Công ty mã nguồn mở đầu tiên tại Việt Nam&quot;</strong></em>.<br  /> <br  /> Ngay sau khi thành lập, VINADES.,JSC đã thành công trong việc xây dựng <strong><a href="http://nukeviet.vn/" target="_blank">NukeViet</a></strong> thành một <a href="http://nukeviet.vn/" target="_blank">mã nguồn mở</a> thuần Việt. Với khả năng mạnh mẽ, cùng các ưu điểm vượt trội về công nghệ, độ an toàn và bảo mật, NukeViet đã được hàng ngàn website lựa chọn sử dụng trong năm qua. Ngay khi ra mắt phiên bản mới năm 2010, NukeViet đã tạo nên hiệu ứng truyền thông chưa từng có trong lịch sử mã nguồn mở Việt Nam. Tiếp đó, năm 2011 Mã nguồn mở NukeViet đã giành giải thưởng Nhân tài đất Việt cho sản phẩm Công nghệ thông tin đã được ứng dụng rộng rãi.</p>  <div style="text-align: center;"> <div class="youtube-embed-wrapper" style="position:relative;padding-bottom:56.25%;padding-top:30px;height:0;overflow:hidden;"><iframe allowfullscreen="" frameborder="0" height="480" src="//www.youtube.com/embed/ZOhu2bLE-eA?rel=0&amp;autoplay=1" style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;" width="640"></iframe></div> <br  /> <span style="font-size:12px;"><strong>Video clip trao giải Nhân tài đất Việt 2011.</strong><br  /> Sản phẩm &quot;Mã nguồn mở NukeViet&quot; đã nhận giải cao nhất (Giải ba, không có giải nhất, giải nhì) của Giải thưởng Nhân Tài Đất Việt 2011 ở lĩnh vực Công nghệ thông tin - Sản phẩm đã có ứng dụng rộng rãi.</span></div>  <p style="text-align: justify;"><br  /> Tự chuyên nghiệp hóa mình, thoát khỏi mô hình phát triển tự phát, công ty đã nỗ lực vươn mình ra thế giới và đang phấn đấu trở thành một trong những hiện tượng của thời &quot;dotcom&quot; ở Việt Nam.<br  /> <br  /> Để phục vụ hoạt động của công ty, công ty liên tục mở rộng và tuyển thêm nhân sự ở các vị trí: Lập trình viên, chuyên viên đồ họa, nhân viên kinh doanh... Hãy liên hệ ngay để gia nhập VINADES.,JSC và cùng chúng tôi trở thành một công ty phát triển nguồn mở thành công nhất Việt Nam.</p>  <p>Nếu bạn có nhu cầu triển khai các hệ thống <strong><a href="http://toasoandientu.vn" target="_blank">Tòa Soạn Điện Tử</a></strong>, <strong><a href="http://webnhanh.vn" target="_blank">phần mềm trực tuyến</a></strong>, <strong><a href="http://vinades.vn" target="_blank">thiết kế website</a></strong> theo yêu cầu hoặc dịch vụ có liên quan, hãy liên hệ công ty chuyên quản NukeViet theo thông tin dưới đây:</p>  <p><strong><span style="font-family: Tahoma; color: rgb(255, 69, 0); font-size: 14px;">CÔNG TY CỔ PHẦN PHÁT TRIỂN NGUỒN MỞ VIỆT NAM</span></strong><br  /> <strong>VIET NAM OPEN SOURCE DEVELOPMENT JOINT STOCK COMPANY</strong> (<strong>VINADES.,JSC</strong>)<br  /> Website: <a href="http://vinades.vn/">http://vinades.vn</a> | <a href="http://nukeviet.vn/">http://nukeviet.vn</a> | <a href="http://webnhanh.vn/">http://webnhanh.vn</a><br  /> Trụ sở: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /> - Tel: +84-4-85872007<br  /> - Fax: +84-4-35500914<br  /> - Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a></p>', 'giới thiệu,công ty,cổ phần,phát triển', 0, '4', '', 0, 7, 1, 1456905063, 1456905063, 1),
(8, 'Ủng hộ, hỗ trợ và tham gia phát triển NukeViet', 'ung-ho-ho-tro-va-tham-gia-phat-trien-nukeviet', '', '', 0, 'Nếu bạn yêu thích NukeViet, bạn có thể ủng hộ và hỗ trợ NukeViet bằng nhiều cách', '<h1 class="title" id="page-title">Giới thiệu</h1>\r\n\r\n<div id="navigation">\r\n<div class="tabs-secondary clearfix">\r\n<ul class="tabs secondary">\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="region region-content">\r\n<div class="block block-system" id="block-system-main">\r\n<div class="content">\r\n<div class="node node-khoind clearfix" id="node-23">\r\n<div class="content">\r\n<div class="field field-name-field-khoind field-type-text-with-summary field-label-hidden">\r\n<div class="field-items">\r\n<div class="field-item even">\r\n<p>Công Ty Cổ Phần Thương Mại Hà Thành là nhà phân phối chính thức và duy nhất của thương hiệu sàn gỗ <strong>eFLOOR</strong> <strong>Malaysia</strong> tại Việt Nam. Với hơn 10 năm kinh nghiêm hoạt động trong lĩnh vực thiết kế - thi công sàn gỗ, chúng tôi luôn lắng nghe và thấu hiểu mong muốn cũng như những băn khoăn của khách hàng, từ đó tư vấn/ cung cấp những sản phẩm phù hợp nhất với căn hộ và sở thích của mỗi khách hàng. Bên cạnh đội ngũ thiết kế chuyên nghiêp, tư vấn tận tâm, Hà Thành còn sở hữu đội thợ thi công lành nghề, quy cách chuẩn xác tiến độ nhanh chóng, thường chỉ mất chưa đầy 1 ngày cho 1 sàn rộng hơn 50m2 với nhiều đồ đạc.</p>\r\n\r\n<p>Trong cuộc sống hiện đại, sàn gỗ công nghiệp ngày càng được ưa chuộng bởi những ưu điểm vượt trội so với gạch men và sàn gỗ tự nhiên như: giá rẻ, vân màu đa dạng, thanh lịch, bền, tháo dỡ cơ động,&nbsp;dễ làm sạch... Đặc biệt, ván gỗ <span style="color:rgb(255, 255, 255);"><strong><span style="background-color:rgb(255, 0, 0);">eFLOOR</span></strong></span> còn đáp ứng được các tiêu chuẩn chất lượng của châu Âu,&nbsp;thân thiện với môi trường. Sản phẩm cấu tạo từ xơ gỗ ép cao cấp, gồm 4 lớp với 5 tính năng ưu việt:</p>\r\n\r\n<p>+ Dễ lau sạch, chống bám bụi bẩn và vi khuẩn &nbsp;</p>\r\n\r\n<p>+ Chống nồm (mỗi tấm gỗ của<span style="color:rgb(255, 255, 255);"> <strong><span style="background-color:rgb(255, 0, 0);">eFLOOR</span></strong></span> đều được phủ keo đặc biệt 4 phía, chịu nước tốt hơn)</p>\r\n\r\n<p>+ Chống cháy, chống mòn, chống trầy xước tự nhiên</p>\r\n\r\n<p>+ Bền màu dưới tác động của ánh sáng</p>\r\n\r\n<p>+ Không chất độc hại, không gây ồn khi đi lại, di chuyển trên sàn.</p>\r\n\r\n<p>Thuộc top thương hiệu sàn gỗ hàng đầu tại Malaysia, sản phẩm của <span style="color:rgb(255, 255, 255);"><strong><span style="background-color:rgb(255, 0, 0);">eFLOOR</span></strong></span> được thiết kế đặc&nbsp;biệt phù hợp với khí hậu các nước châu Á nóng ẩm, chênh lệch nhiệt giữa các mùa lớn. Vì vậy sàn gỗ&nbsp;không bị ảnh hưởng bởi thời tiết, không mối mọt, không cong vênh co ngót, là sản phẩm lý tưởng cho&nbsp;các gia đình Việt Nam.</p>\r\n\r\n<p>Không chỉ vượt trội về chất lượng, sàn gỗ <strong>eFLOOR Malaysia</strong> còn rất phong phú về mẫu mã với nhiều&nbsp;loại ván trần, bóng, các mẫu ván hoa văn đặc biệt, độc đáo... phù hợp với đa dạng sở thích cá nhân&nbsp;cũng như các loại nền/sàn. Dù căn hộ của bạn rộng cả trăm m2 hay chỉ nhỏ nhắn như một phòng ở thì&nbsp;sàn gỗ Efloor cũng luôn là một sự lựa chọn tuyệt vời. Sàn nhà được lát gỗ sẽ mang lại cảm giác ấm&nbsp;cúng, gần gũi với thiên nhiên, mà lại vô cùng sang trọng, sạch sẽ, mát về mùa hè, ấm trong mùa đông.</p>\r\n\r\n<p>&nbsp; &nbsp; Công ty chúng tôi cam kết bán hàng đúng chủng loại, nguyên tem mác ,nguồn gốc xuất xứ rõ&nbsp;ràng. Đặc biệt, Hà Thành là nhà phân phối chính thức và duy nhất của <strong>eFLOOR</strong> <strong>Malaysia</strong> tại Việt Nam,&nbsp;nên khách hàng hoàn toàn yên tâm được mua sản phẩm giá tốt như giá gốc, và được đảm bảo chất&nbsp;lượng tuyệt hảo của sàn gỗ cũng như các chế độ bảo hành của nhà sản xuất.</p>\r\n\r\n<h2 class="rtecenter"><em><strong>SÀN GỖ EFLOOR - GIẢI PHÁP TUYỆT VỜI CHO CUỘC SỐNG HIỆN TẠI!</strong></em></h2>\r\n\r\n<p>Hoạt động sản xuất gỗ ván sàn <strong style="line-height: 20.8px;">eFLOOR</strong><span style="line-height: 20.8px;">&nbsp;</span><strong style="line-height: 20.8px;">Malaysia</strong><span style="line-height: 20.8px;">&nbsp;</span>được Tập đoàn <a href="http://efloorvn.com/san-pham/go-van-san"><strong>eFLOOR</strong></a> Industries Malaysia thực hiện với công nghệ sản xuất <strong>gỗ ván sàn</strong> của HOMAG Đức và dây chuyền sản xuất tấm vắn Bắc Ý (được điều khiển tự động hoàn toàn), phù hợp các tiêu chuẩn chất lượng của LB Đức như GB/T18102-2000 về “<strong>Gỗ ván sàn</strong> làm bằng chất liệu bột gỗ”; Độ thoát hơi formaldehyt thấp hơn mức E1 của tiêu chuẩn GB18580-2001 về “Giới hạn bay hơi formaldehyt đối với vật liệu trang trí nội thất, đồ gỗ và các sản phẩm liên quan”.</p>\r\n\r\n<p>Là một sản phẩm thân thiện với môi trường, được chứng nhận đạt các tiêu chẩn môi trường quốc gia, sản phẩm <a href="http://efloorvn.com/san-pham/go-van-san"><strong>sàn gỗ eFLOOR</strong></a> đã đáp ứng yêu cầu HBC17-2003 về “vật liệu gỗ và các sản phẩm liên quan”. Chất lượng vượt trội của sàn gỗ <strong style="line-height: 20.8px;">eFLOOR</strong><span style="line-height: 20.8px;">&nbsp;</span><strong style="line-height: 20.8px;">Malaysia</strong><span style="line-height: 20.8px;">&nbsp;</span>không chỉ đáp ứng tiêu chuẩn GB/T18102-2000 (LB Đức) mà còn phù hợp với tiêu chuẩn Châu Âu PREN13329AC4.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'ủng hộ,hỗ trợ,tham gia,phát triển', 0, '4', '', 0, 8, 1, 1456905063, 1459156505, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_about_config`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_about_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_about_config`
--

INSERT INTO `nv4_vi_about_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_blocks_groups`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_blocks_groups` (
`bid` mediumint(8) unsigned NOT NULL,
  `theme` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_time` int(11) DEFAULT '0',
  `active` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_blocks_groups`
--

INSERT INTO `nv4_vi_blocks_groups` (`bid`, `theme`, `module`, `file_name`, `title`, `link`, `template`, `position`, `exp_time`, `active`, `act`, `groups_view`, `all_func`, `weight`, `config`) VALUES
(1, 'default', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:"numrow";i:6;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";s:12:"length_title";i:0;s:15:"length_hometext";i:0;s:17:"length_othertitle";i:60;s:5:"width";i:500;s:6:"height";i:0;s:7:"nocatid";a:0:{}}'),
(2, 'default', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:"idplanbanner";i:1;}'),
(3, 'default', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:"catid";i:0;s:12:"title_length";i:25;}'),
(4, 'default', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(5, 'default', 'banners', 'global.banners.php', 'Quảng cáo trái', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:"idplanbanner";i:2;}'),
(6, 'default', 'statistics', 'global.counter.php', 'Thống kê truy cập', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 4, ''),
(7, 'default', 'about', 'global.about.php', 'Giới thiệu', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(8, 'default', 'banners', 'global.banners.php', 'Quang cao Phai', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:"idplanbanner";i:3;}'),
(9, 'default', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, ''),
(10, 'default', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:6:{s:10:"number_day";i:3650;s:6:"numrow";i:10;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";s:7:"nocatid";a:2:{i:0;i:10;i:1;i:11;}}'),
(11, 'default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:"copyright_by";s:0:"";s:13:"copyright_url";s:0:"";s:9:"design_by";s:12:"VINADES.,JSC";s:10:"design_url";s:18:"http://vinades.vn/";s:13:"siteterms_url";s:39:"/index.php?language=vi&amp;nv=siteterms";}'),
(12, 'default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, ''),
(13, 'default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:"level";s:1:"M";s:15:"pixel_per_point";i:4;s:11:"outer_frame";i:1;}'),
(14, 'default', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(15, 'default', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(16, 'default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:"company_name";s:58:"Công ty cổ phần phát triển nguồn mở Việt Nam";s:16:"company_sortname";s:12:"VINADES.,JSC";s:15:"company_regcode";s:0:"";s:16:"company_regplace";s:0:"";s:21:"company_licensenumber";s:0:"";s:22:"company_responsibility";s:0:"";s:15:"company_address";s:72:"Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội";s:15:"company_showmap";i:1;s:20:"company_mapcenterlat";d:20.9845159999999992805896908976137638092041015625;s:20:"company_mapcenterlng";d:105.7954749999999961573848850093781948089599609375;s:14:"company_maplat";d:20.9845159999999992805896908976137638092041015625;s:14:"company_maplng";d:105.7954750000000103682396002113819122314453125;s:15:"company_mapzoom";i:17;s:13:"company_phone";s:56:"+84-4-85872007[+84485872007]|+84-904762534[+84904762534]";s:11:"company_fax";s:14:"+84-4-35500914";s:13:"company_email";s:18:"contact@vinades.vn";s:15:"company_website";s:17:"http://vinades.vn";}'),
(17, 'default', 'menu', 'global.slimmenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:"menuid";i:2;s:12:"title_length";i:20;}'),
(18, 'default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, ''),
(19, 'default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:"facebook";s:32:"http://www.facebook.com/nukeviet";s:11:"google_plus";s:32:"https://www.google.com/+nukeviet";s:7:"youtube";s:37:"https://www.youtube.com/user/nukeviet";s:7:"twitter";s:28:"https://twitter.com/nukeviet";}'),
(20, 'default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:"module_in_menu";a:8:{i:0;s:5:"about";i:1;s:4:"news";i:2;s:5:"users";i:3;s:7:"contact";i:4;s:6:"voting";i:5;s:7:"banners";i:6;s:4:"seek";i:7;s:5:"feeds";}}'),
(21, 'default', 'freecontent', 'global.free_content.php', 'Sản phẩm', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:7:"blockid";i:1;s:7:"numrows";i:2;}'),
(22, 'mobile_default', 'menu', 'global.metismenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:"menuid";i:1;s:12:"title_length";i:0;}'),
(23, 'mobile_default', 'users', 'global.user_button.php', 'Sign In', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 2, ''),
(24, 'mobile_default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, ''),
(25, 'mobile_default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 2, ''),
(26, 'mobile_default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 3, 'a:4:{s:8:"facebook";s:32:"http://www.facebook.com/nukeviet";s:11:"google_plus";s:32:"https://www.google.com/+nukeviet";s:7:"youtube";s:37:"https://www.youtube.com/user/nukeviet";s:7:"twitter";s:28:"https://twitter.com/nukeviet";}'),
(27, 'mobile_default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 4, 'a:3:{s:5:"level";s:1:"L";s:15:"pixel_per_point";i:4;s:11:"outer_frame";i:1;}'),
(28, 'mobile_default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:"copyright_by";s:0:"";s:13:"copyright_url";s:0:"";s:9:"design_by";s:12:"VINADES.,JSC";s:10:"design_url";s:18:"http://vinades.vn/";s:13:"siteterms_url";s:35:"/index.php?language=vi&nv=siteterms";}'),
(29, 'mobile_default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'primary', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:"module_in_menu";a:9:{i:0;s:5:"about";i:1;s:4:"news";i:2;s:5:"users";i:3;s:7:"contact";i:4;s:6:"voting";i:5;s:7:"banners";i:6;s:4:"seek";i:7;s:5:"feeds";i:8;s:9:"siteterms";}}'),
(30, 'mobile_default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'primary', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:"company_name";s:58:"Công ty cổ phần phát triển nguồn mở Việt Nam";s:16:"company_sortname";s:12:"VINADES.,JSC";s:15:"company_regcode";s:0:"";s:16:"company_regplace";s:0:"";s:21:"company_licensenumber";s:0:"";s:22:"company_responsibility";s:0:"";s:15:"company_address";s:72:"Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội";s:15:"company_showmap";i:1;s:20:"company_mapcenterlat";d:20.9845159999999992805896908976137638092041015625;s:20:"company_mapcenterlng";d:105.7954749999999961573848850093781948089599609375;s:14:"company_maplat";d:20.9845159999999992805896908976137638092041015625;s:14:"company_maplng";d:105.7954750000000103682396002113819122314453125;s:15:"company_mapzoom";i:17;s:13:"company_phone";s:56:"+84-4-85872007[+84485872007]|+84-904762534[+84904762534]";s:11:"company_fax";s:14:"+84-4-35500914";s:13:"company_email";s:18:"contact@vinades.vn";s:15:"company_website";s:17:"http://vinades.vn";}'),
(34, 'sango', 'theme', 'global.copyright.php', 'Copyright', NULL, 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:"copyright_by";s:0:"";s:13:"copyright_url";s:0:"";s:9:"design_by";s:12:"VINADES.,JSC";s:10:"design_url";s:18:"http://vinades.vn/";s:13:"siteterms_url";s:48:"/nukeviet/index.php?language=vi&amp;nv=siteterms";}'),
(35, 'sango', 'contact', 'global.contact_form.php', 'Feedback', NULL, 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, ''),
(36, 'sango', 'news', 'global.block_category.php', 'Chủ đề', NULL, 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:"catid";i:0;s:12:"title_length";i:25;}'),
(37, 'sango', 'theme', 'global.module_menu.php', 'Module Menu', NULL, 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(38, 'sango', 'news', 'module.block_news.php', 'Sản phẩm', '/vi/news/San-pham/', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 3, 'a:4:{s:6:"numrow";i:20;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";}'),
(39, 'sango', 'news', 'global.block_news_cat.php', 'TIN TƯC MỚI NHẤT', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 4, 'a:5:{s:5:"catid";a:1:{i:0;s:1:"2";}s:6:"numrow";i:5;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";}'),
(40, 'sango', 'menu', 'global.metismenu.php', 'Link hữu ích', '', 'simple', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:"menuid";i:3;s:12:"title_length";i:20;}'),
(41, 'sango', 'menu', 'global.slimmenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:"menuid";i:2;s:12:"title_length";i:20;}'),
(42, 'sango', 'users', 'global.user_button.php', 'Đăng nhập thành viên', NULL, 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(43, 'sango', 'theme', 'global.QR_code.php', 'QR code', NULL, 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:"level";s:1:"M";s:15:"pixel_per_point";i:4;s:11:"outer_frame";i:1;}'),
(44, 'sango', 'statistics', 'global.counter_button.php', 'Online button', NULL, 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(45, 'sango', 'about', 'global.about.php', 'Giới thiệu', NULL, 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(46, 'sango', 'banners', 'global.banners.php', 'Quang cao Phai', NULL, 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:"idplanbanner";i:3;}'),
(47, 'sango', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', NULL, 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, ''),
(48, 'sango', 'news', 'global.block_tophits.php', 'Tin xem nhiều', NULL, 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:6:{s:10:"number_day";i:3650;s:6:"numrow";i:10;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";s:7:"nocatid";a:2:{i:0;i:10;i:1;i:11;}}'),
(49, 'sango', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:"facebook";s:32:"http://www.facebook.com/nukeviet";s:11:"google_plus";s:0:"";s:7:"youtube";s:37:"https://www.youtube.com/user/nukeviet";s:7:"twitter";s:28:"https://twitter.com/nukeviet";}'),
(50, 'sango', 'news', 'module.block_newscenter.php', 'Tin mới nhất', NULL, 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:9:{s:6:"numrow";i:6;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";s:12:"length_title";i:400;s:15:"length_hometext";i:0;s:5:"width";i:500;s:6:"height";i:0;s:7:"nocatid";a:0:{}}'),
(51, 'sango', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', NULL, 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:"idplanbanner";i:1;}'),
(53, 'sango', 'theme', 'global.image.php', 'global image', '', 'no_title', '[HEADER]', 0, '1', 1, '6', 0, 1, 'a:1:{s:12:"imagecontent";s:182:"uploads/kho_efloor.png||-||-uploads/go-van-san_efloor_0.jpg||-||-uploads/go_van_san_5.jpg||-||-uploads/go_van_san_1.jpg||-||-uploads/efloorvn.com_.jpg||-||-||-||-||-||-||-||-||-||-||";}'),
(54, 'sango', 'theme', 'global.image.php', 'global image', '', 'no_title', '[HEADER]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:"imagecontent";s:182:"uploads/kho_efloor.png||-||-uploads/go-van-san_efloor_0.jpg||-||-uploads/go_van_san_5.jpg||-||-uploads/go_van_san_1.jpg||-||-uploads/efloorvn.com_.jpg||-||-||-||-||-||-||-||-||-||-||";}'),
(56, 'sango', 'shops', 'global.block_relates_product.php', 'GIỚI THIỆU', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 3, 'a:3:{s:7:"blockid";i:1;s:6:"numrow";i:3;s:7:"cut_num";i:24;}'),
(59, 'sango', 'shops', 'global.block_bxproduct_center.php', 'sản phẩm tiêu biểu', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 4, 'a:10:{s:7:"blockid";i:3;s:6:"numrow";i:4;s:6:"numget";i:4;s:4:"auto";i:1;s:4:"mode";s:8:"vertical";s:5:"speed";i:500;s:5:"width";i:360;s:6:"margin";i:10;s:4:"move";i:1;s:5:"pager";i:1;}'),
(64, 'sango', 'about', 'global.about.php', 'global html', '', 'no_title', '[HEADER]', 0, '1', 1, '6', 0, 3, ''),
(65, 'sango', 'cong-trinh-da-thuc-hien', 'module.block_newscenter.php', 'Tin mới nhất', '/vi/cong-trinh-da-thuc-hien/groups/Tin-moi-nhat/', 'no_title', '[COMPANY_INFO]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:"numrow";i:5;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";s:12:"length_title";i:0;s:15:"length_hometext";i:0;s:17:"length_othertitle";i:0;s:5:"width";i:400;s:6:"height";i:0;s:7:"nocatid";a:0:{}}'),
(67, 'sango', 'cong-trinh-da-thuc-hien', 'module.block_news.php', 'module block news', '', 'no_title', '[COMPANY_INFO]', 0, '1', 1, '6', 0, 2, 'a:4:{s:6:"numrow";i:3;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";}'),
(68, 'sango', 'cong-trinh-da-thuc-hien', 'module.block_news.php', 'module block news', '', '', '[COMPANY_INFO]', 0, '1', 1, '6', 0, 3, 'a:4:{s:6:"numrow";i:5;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";}'),
(69, 'sango', 'cong-trinh-da-thuc-hien', 'global.block_groups.php', 'CÔNG TRÌNH ĐÃ THỰC HIỆN', '/vi/cong-trinh-da-thuc-hien/groups/Tin-moi-nhat/', 'no_title', '[FOOTER]', 0, '1', 1, '6', 0, 1, 'a:5:{s:7:"blockid";i:2;s:6:"numrow";i:3;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";}'),
(70, 'sango', 'page', 'global.html.php', 'global html', '', 'no_title', '[PHONE_HOT]', 0, '1', 1, '6', 1, 1, 'a:1:{s:11:"htmlcontent";s:10:"0982365585";}'),
(72, 'sango', 'theme', 'global.company_info.php', 'LIÊN HỆ', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:"company_name";s:47:"CÔNG  TY CỔ PHẦN THƯƠNG MẠI HÀ THÀNH";s:16:"company_sortname";s:0:"";s:15:"company_regcode";s:0:"";s:16:"company_regplace";s:0:"";s:21:"company_licensenumber";s:0:"";s:22:"company_responsibility";s:0:"";s:15:"company_address";s:39:"Số 625 Tam Trinh-Hoàng Mai-Hà Nội";s:15:"company_showmap";i:1;s:20:"company_mapcenterlat";d:20.9845159999999992805896908976137638092041015625;s:20:"company_mapcenterlng";d:105.7954749999999961573848850093781948089599609375;s:14:"company_maplat";d:20.9845159999999992805896908976137638092041015625;s:14:"company_maplng";d:105.7954749999999961573848850093781948089599609375;s:15:"company_mapzoom";i:105;s:13:"company_phone";s:23:"(84-4)22143530/39724599";s:11:"company_fax";s:14:"(84-4)39724599";s:13:"company_email";s:19:"hathanh@efloovn.com";s:15:"company_website";s:16:"www.efloorvn.com";}'),
(75, 'sango', 'theme', 'global.contactmenu.php', 'HỖ TRỢ TRỰC TUYẾN', '', 'simple', '[CONTACT_MENU]', 0, '1', 1, '6', 1, 1, 'a:7:{s:15:"yahoo_kinhdoanh";s:25:"ngocphancnpm@yahoo.com.vn";s:15:"skype_kinhdoanh";s:29:"ngocphan11091995@gmail.com.vn";s:11:"yahoo_tuvan";s:25:"ngocphancnpm@yahoo.com.vn";s:11:"skype_tuvan";s:29:"ngocphan11091995@gmail.com.vn";s:13:"yahoo_kithuat";s:25:"ngocphancnpm@yahoo.com.vn";s:13:"skype_kithuat";s:29:"ngocphan11091995@gmail.com.vn";s:9:"dienthoai";s:11:"01684809262";}');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_blocks_weight`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `func_id` mediumint(8) NOT NULL DEFAULT '0',
  `weight` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_blocks_weight`
--

INSERT INTO `nv4_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(16, 1, 1),
(16, 37, 1),
(16, 38, 1),
(16, 39, 1),
(16, 40, 1),
(16, 46, 1),
(16, 47, 1),
(16, 48, 1),
(16, 49, 1),
(16, 56, 1),
(16, 59, 1),
(16, 4, 1),
(16, 5, 1),
(16, 6, 1),
(16, 7, 1),
(16, 8, 1),
(16, 9, 1),
(16, 10, 1),
(16, 11, 1),
(16, 12, 1),
(16, 50, 1),
(16, 58, 1),
(16, 53, 1),
(16, 54, 1),
(16, 30, 1),
(16, 31, 1),
(16, 32, 1),
(16, 33, 1),
(16, 34, 1),
(16, 35, 1),
(16, 36, 1),
(16, 18, 1),
(16, 19, 1),
(16, 20, 1),
(16, 21, 1),
(16, 22, 1),
(16, 23, 1),
(16, 24, 1),
(16, 25, 1),
(16, 26, 1),
(16, 27, 1),
(16, 28, 1),
(16, 57, 1),
(18, 1, 1),
(18, 37, 1),
(18, 38, 1),
(18, 39, 1),
(18, 40, 1),
(18, 46, 1),
(18, 47, 1),
(18, 48, 1),
(18, 49, 1),
(18, 56, 1),
(18, 59, 1),
(18, 4, 1),
(18, 5, 1),
(18, 6, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 10, 1),
(18, 11, 1),
(18, 12, 1),
(18, 50, 1),
(18, 58, 1),
(18, 53, 1),
(18, 54, 1),
(18, 30, 1),
(18, 31, 1),
(18, 32, 1),
(18, 33, 1),
(18, 34, 1),
(18, 35, 1),
(18, 36, 1),
(18, 18, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 26, 1),
(18, 27, 1),
(18, 28, 1),
(18, 57, 1),
(21, 1, 1),
(21, 37, 1),
(21, 38, 1),
(21, 39, 1),
(21, 40, 1),
(21, 46, 1),
(21, 47, 1),
(21, 48, 1),
(21, 49, 1),
(21, 56, 1),
(21, 59, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 10, 1),
(21, 11, 1),
(21, 12, 1),
(21, 50, 1),
(21, 58, 1),
(21, 53, 1),
(21, 54, 1),
(21, 30, 1),
(21, 31, 1),
(21, 32, 1),
(21, 33, 1),
(21, 34, 1),
(21, 35, 1),
(21, 36, 1),
(21, 18, 1),
(21, 19, 1),
(21, 20, 1),
(21, 21, 1),
(21, 22, 1),
(21, 23, 1),
(21, 24, 1),
(21, 25, 1),
(21, 26, 1),
(21, 27, 1),
(21, 28, 1),
(21, 57, 1),
(11, 1, 1),
(11, 37, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 46, 1),
(11, 47, 1),
(11, 48, 1),
(11, 49, 1),
(11, 56, 1),
(11, 59, 1),
(11, 4, 1),
(11, 5, 1),
(11, 6, 1),
(11, 7, 1),
(11, 8, 1),
(11, 9, 1),
(11, 10, 1),
(11, 11, 1),
(11, 12, 1),
(11, 50, 1),
(11, 58, 1),
(11, 53, 1),
(11, 54, 1),
(11, 30, 1),
(11, 31, 1),
(11, 32, 1),
(11, 33, 1),
(11, 34, 1),
(11, 35, 1),
(11, 36, 1),
(11, 18, 1),
(11, 19, 1),
(11, 20, 1),
(11, 21, 1),
(11, 22, 1),
(11, 23, 1),
(11, 24, 1),
(11, 25, 1),
(11, 26, 1),
(11, 27, 1),
(11, 28, 1),
(11, 57, 1),
(12, 1, 2),
(12, 37, 2),
(12, 38, 2),
(12, 39, 2),
(12, 40, 2),
(12, 46, 2),
(12, 47, 2),
(12, 48, 2),
(12, 49, 2),
(12, 56, 2),
(12, 59, 2),
(12, 4, 2),
(12, 5, 2),
(12, 6, 2),
(12, 7, 2),
(12, 8, 2),
(12, 9, 2),
(12, 10, 2),
(12, 11, 2),
(12, 12, 2),
(12, 50, 2),
(12, 58, 2),
(12, 53, 2),
(12, 54, 2),
(12, 30, 2),
(12, 31, 2),
(12, 32, 2),
(12, 33, 2),
(12, 34, 2),
(12, 35, 2),
(12, 36, 2),
(12, 18, 2),
(12, 19, 2),
(12, 20, 2),
(12, 21, 2),
(12, 22, 2),
(12, 23, 2),
(12, 24, 2),
(12, 25, 2),
(12, 26, 2),
(12, 27, 2),
(12, 28, 2),
(12, 57, 2),
(3, 4, 1),
(3, 5, 1),
(3, 6, 1),
(3, 7, 1),
(3, 8, 1),
(3, 9, 1),
(3, 10, 1),
(3, 11, 1),
(3, 12, 1),
(4, 18, 1),
(4, 19, 1),
(4, 20, 1),
(4, 21, 1),
(4, 22, 1),
(4, 23, 1),
(4, 24, 1),
(4, 25, 1),
(4, 26, 1),
(4, 27, 1),
(4, 30, 1),
(4, 31, 1),
(4, 32, 1),
(4, 33, 1),
(4, 34, 1),
(4, 35, 1),
(4, 36, 1),
(5, 1, 1),
(5, 37, 1),
(5, 38, 1),
(5, 39, 1),
(5, 40, 1),
(5, 46, 1),
(5, 47, 1),
(5, 48, 1),
(5, 49, 1),
(5, 56, 1),
(5, 59, 1),
(5, 4, 2),
(5, 5, 2),
(5, 6, 2),
(5, 7, 2),
(5, 8, 2),
(5, 9, 2),
(5, 10, 2),
(5, 11, 2),
(5, 12, 2),
(5, 50, 1),
(5, 58, 1),
(5, 53, 1),
(5, 54, 1),
(5, 30, 2),
(5, 31, 2),
(5, 32, 2),
(5, 33, 2),
(5, 34, 2),
(5, 35, 2),
(5, 36, 2),
(5, 18, 2),
(5, 19, 2),
(5, 20, 2),
(5, 21, 2),
(5, 22, 2),
(5, 23, 2),
(5, 24, 2),
(5, 25, 2),
(5, 26, 2),
(5, 27, 2),
(5, 28, 1),
(5, 57, 1),
(6, 1, 2),
(6, 37, 2),
(6, 38, 2),
(6, 39, 2),
(6, 40, 2),
(6, 46, 2),
(6, 47, 2),
(6, 48, 2),
(6, 49, 2),
(6, 56, 2),
(6, 59, 2),
(6, 4, 3),
(6, 5, 3),
(6, 6, 3),
(6, 7, 3),
(6, 8, 3),
(6, 9, 3),
(6, 10, 3),
(6, 11, 3),
(6, 12, 3),
(6, 50, 2),
(6, 58, 2),
(6, 53, 2),
(6, 54, 2),
(6, 30, 3),
(6, 31, 3),
(6, 32, 3),
(6, 33, 3),
(6, 34, 3),
(6, 35, 3),
(6, 36, 3),
(6, 18, 3),
(6, 19, 3),
(6, 20, 3),
(6, 21, 3),
(6, 22, 3),
(6, 23, 3),
(6, 24, 3),
(6, 25, 3),
(6, 26, 3),
(6, 27, 3),
(6, 28, 2),
(6, 57, 2),
(20, 1, 1),
(20, 37, 1),
(20, 38, 1),
(20, 39, 1),
(20, 40, 1),
(20, 46, 1),
(20, 47, 1),
(20, 48, 1),
(20, 49, 1),
(20, 56, 1),
(20, 59, 1),
(20, 4, 1),
(20, 5, 1),
(20, 6, 1),
(20, 7, 1),
(20, 8, 1),
(20, 9, 1),
(20, 10, 1),
(20, 11, 1),
(20, 12, 1),
(20, 50, 1),
(20, 58, 1),
(20, 53, 1),
(20, 54, 1),
(20, 30, 1),
(20, 31, 1),
(20, 32, 1),
(20, 33, 1),
(20, 34, 1),
(20, 35, 1),
(20, 36, 1),
(20, 18, 1),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 26, 1),
(20, 27, 1),
(20, 28, 1),
(20, 57, 1),
(17, 1, 1),
(17, 37, 1),
(17, 38, 1),
(17, 39, 1),
(17, 40, 1),
(17, 46, 1),
(17, 47, 1),
(17, 48, 1),
(17, 49, 1),
(17, 56, 1),
(17, 59, 1),
(17, 4, 1),
(17, 5, 1),
(17, 6, 1),
(17, 7, 1),
(17, 8, 1),
(17, 9, 1),
(17, 10, 1),
(17, 11, 1),
(17, 12, 1),
(17, 50, 1),
(17, 58, 1),
(17, 53, 1),
(17, 54, 1),
(17, 30, 1),
(17, 31, 1),
(17, 32, 1),
(17, 33, 1),
(17, 34, 1),
(17, 35, 1),
(17, 36, 1),
(17, 18, 1),
(17, 19, 1),
(17, 20, 1),
(17, 21, 1),
(17, 22, 1),
(17, 23, 1),
(17, 24, 1),
(17, 25, 1),
(17, 26, 1),
(17, 27, 1),
(17, 28, 1),
(17, 57, 1),
(15, 1, 1),
(15, 37, 1),
(15, 38, 1),
(15, 39, 1),
(15, 40, 1),
(15, 46, 1),
(15, 47, 1),
(15, 48, 1),
(15, 49, 1),
(15, 56, 1),
(15, 59, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 11, 1),
(15, 12, 1),
(15, 50, 1),
(15, 58, 1),
(15, 53, 1),
(15, 54, 1),
(15, 30, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(15, 34, 1),
(15, 35, 1),
(15, 36, 1),
(15, 18, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(15, 27, 1),
(15, 28, 1),
(15, 57, 1),
(13, 1, 1),
(13, 37, 1),
(13, 38, 1),
(13, 39, 1),
(13, 40, 1),
(13, 46, 1),
(13, 47, 1),
(13, 48, 1),
(13, 49, 1),
(13, 56, 1),
(13, 59, 1),
(13, 4, 1),
(13, 5, 1),
(13, 6, 1),
(13, 7, 1),
(13, 8, 1),
(13, 9, 1),
(13, 10, 1),
(13, 11, 1),
(13, 12, 1),
(13, 50, 1),
(13, 58, 1),
(13, 53, 1),
(13, 54, 1),
(13, 30, 1),
(13, 31, 1),
(13, 32, 1),
(13, 33, 1),
(13, 34, 1),
(13, 35, 1),
(13, 36, 1),
(13, 18, 1),
(13, 19, 1),
(13, 20, 1),
(13, 21, 1),
(13, 22, 1),
(13, 23, 1),
(13, 24, 1),
(13, 25, 1),
(13, 26, 1),
(13, 27, 1),
(13, 28, 1),
(13, 57, 1),
(14, 1, 2),
(14, 37, 2),
(14, 38, 2),
(14, 39, 2),
(14, 40, 2),
(14, 46, 2),
(14, 47, 2),
(14, 48, 2),
(14, 49, 2),
(14, 56, 2),
(14, 59, 2),
(14, 4, 2),
(14, 5, 2),
(14, 6, 2),
(14, 7, 2),
(14, 8, 2),
(14, 9, 2),
(14, 10, 2),
(14, 11, 2),
(14, 12, 2),
(14, 50, 2),
(14, 58, 2),
(14, 53, 2),
(14, 54, 2),
(14, 30, 2),
(14, 31, 2),
(14, 32, 2),
(14, 33, 2),
(14, 34, 2),
(14, 35, 2),
(14, 36, 2),
(14, 18, 2),
(14, 19, 2),
(14, 20, 2),
(14, 21, 2),
(14, 22, 2),
(14, 23, 2),
(14, 24, 2),
(14, 25, 2),
(14, 26, 2),
(14, 27, 2),
(14, 28, 2),
(14, 57, 2),
(7, 1, 1),
(7, 37, 1),
(7, 38, 1),
(7, 39, 1),
(7, 40, 1),
(7, 46, 1),
(7, 47, 1),
(7, 48, 1),
(7, 49, 1),
(7, 56, 1),
(7, 59, 1),
(7, 4, 1),
(7, 5, 1),
(7, 6, 1),
(7, 7, 1),
(7, 8, 1),
(7, 9, 1),
(7, 10, 1),
(7, 11, 1),
(7, 12, 1),
(7, 50, 1),
(7, 58, 1),
(7, 53, 1),
(7, 54, 1),
(7, 30, 1),
(7, 31, 1),
(7, 32, 1),
(7, 33, 1),
(7, 34, 1),
(7, 35, 1),
(7, 36, 1),
(7, 18, 1),
(7, 19, 1),
(7, 20, 1),
(7, 21, 1),
(7, 22, 1),
(7, 23, 1),
(7, 24, 1),
(7, 25, 1),
(7, 26, 1),
(7, 27, 1),
(7, 28, 1),
(7, 57, 1),
(8, 1, 2),
(8, 37, 2),
(8, 38, 2),
(8, 39, 2),
(8, 40, 2),
(8, 46, 2),
(8, 47, 2),
(8, 48, 2),
(8, 49, 2),
(8, 56, 2),
(8, 59, 2),
(8, 4, 2),
(8, 5, 2),
(8, 6, 2),
(8, 7, 2),
(8, 8, 2),
(8, 9, 2),
(8, 10, 2),
(8, 11, 2),
(8, 12, 2),
(8, 50, 2),
(8, 58, 2),
(8, 53, 2),
(8, 54, 2),
(8, 30, 2),
(8, 31, 2),
(8, 32, 2),
(8, 33, 2),
(8, 34, 2),
(8, 35, 2),
(8, 36, 2),
(8, 18, 2),
(8, 19, 2),
(8, 20, 2),
(8, 21, 2),
(8, 22, 2),
(8, 23, 2),
(8, 24, 2),
(8, 25, 2),
(8, 26, 2),
(8, 27, 2),
(8, 28, 2),
(8, 57, 2),
(9, 1, 3),
(9, 37, 3),
(9, 38, 3),
(9, 39, 3),
(9, 40, 3),
(9, 46, 3),
(9, 47, 3),
(9, 48, 3),
(9, 49, 3),
(9, 56, 3),
(9, 59, 3),
(9, 4, 3),
(9, 5, 3),
(9, 6, 3),
(9, 7, 3),
(9, 8, 3),
(9, 9, 3),
(9, 10, 3),
(9, 11, 3),
(9, 12, 3),
(9, 50, 3),
(9, 58, 3),
(9, 53, 3),
(9, 54, 3),
(9, 30, 3),
(9, 31, 3),
(9, 32, 3),
(9, 33, 3),
(9, 34, 3),
(9, 35, 3),
(9, 36, 3),
(9, 18, 3),
(9, 19, 3),
(9, 20, 3),
(9, 21, 3),
(9, 22, 3),
(9, 23, 3),
(9, 24, 3),
(9, 25, 3),
(9, 26, 3),
(9, 27, 3),
(9, 28, 3),
(9, 57, 3),
(10, 1, 4),
(10, 37, 4),
(10, 38, 4),
(10, 39, 4),
(10, 40, 4),
(10, 46, 4),
(10, 47, 4),
(10, 48, 4),
(10, 49, 4),
(10, 56, 4),
(10, 59, 4),
(10, 4, 4),
(10, 5, 4),
(10, 6, 4),
(10, 7, 4),
(10, 8, 4),
(10, 9, 4),
(10, 10, 4),
(10, 11, 4),
(10, 12, 4),
(10, 50, 4),
(10, 58, 4),
(10, 53, 4),
(10, 54, 4),
(10, 30, 4),
(10, 31, 4),
(10, 32, 4),
(10, 33, 4),
(10, 34, 4),
(10, 35, 4),
(10, 36, 4),
(10, 18, 4),
(10, 19, 4),
(10, 20, 4),
(10, 21, 4),
(10, 22, 4),
(10, 23, 4),
(10, 24, 4),
(10, 25, 4),
(10, 26, 4),
(10, 27, 4),
(10, 28, 4),
(10, 57, 4),
(19, 1, 1),
(19, 37, 1),
(19, 38, 1),
(19, 39, 1),
(19, 40, 1),
(19, 46, 1),
(19, 47, 1),
(19, 48, 1),
(19, 49, 1),
(19, 56, 1),
(19, 59, 1),
(19, 4, 1),
(19, 5, 1),
(19, 6, 1),
(19, 7, 1),
(19, 8, 1),
(19, 9, 1),
(19, 10, 1),
(19, 11, 1),
(19, 12, 1),
(19, 50, 1),
(19, 58, 1),
(19, 53, 1),
(19, 54, 1),
(19, 30, 1),
(19, 31, 1),
(19, 32, 1),
(19, 33, 1),
(19, 34, 1),
(19, 35, 1),
(19, 36, 1),
(19, 18, 1),
(19, 19, 1),
(19, 20, 1),
(19, 21, 1),
(19, 22, 1),
(19, 23, 1),
(19, 24, 1),
(19, 25, 1),
(19, 26, 1),
(19, 27, 1),
(19, 28, 1),
(19, 57, 1),
(1, 4, 1),
(2, 4, 2),
(30, 1, 1),
(30, 37, 1),
(30, 38, 1),
(30, 39, 1),
(30, 40, 1),
(30, 46, 1),
(30, 47, 1),
(30, 48, 1),
(30, 49, 1),
(30, 56, 1),
(30, 59, 1),
(30, 4, 1),
(30, 5, 1),
(30, 6, 1),
(30, 7, 1),
(30, 8, 1),
(30, 9, 1),
(30, 10, 1),
(30, 11, 1),
(30, 12, 1),
(30, 50, 1),
(30, 58, 1),
(30, 53, 1),
(30, 54, 1),
(30, 30, 1),
(30, 31, 1),
(30, 32, 1),
(30, 33, 1),
(30, 34, 1),
(30, 35, 1),
(30, 36, 1),
(30, 18, 1),
(30, 19, 1),
(30, 20, 1),
(30, 21, 1),
(30, 22, 1),
(30, 23, 1),
(30, 24, 1),
(30, 25, 1),
(30, 26, 1),
(30, 27, 1),
(30, 28, 1),
(30, 57, 1),
(28, 1, 1),
(28, 37, 1),
(28, 38, 1),
(28, 39, 1),
(28, 40, 1),
(28, 46, 1),
(28, 47, 1),
(28, 48, 1),
(28, 49, 1),
(28, 56, 1),
(28, 59, 1),
(28, 4, 1),
(28, 5, 1),
(28, 6, 1),
(28, 7, 1),
(28, 8, 1),
(28, 9, 1),
(28, 10, 1),
(28, 11, 1),
(28, 12, 1),
(28, 50, 1),
(28, 58, 1),
(28, 53, 1),
(28, 54, 1),
(28, 30, 1),
(28, 31, 1),
(28, 32, 1),
(28, 33, 1),
(28, 34, 1),
(28, 35, 1),
(28, 36, 1),
(28, 18, 1),
(28, 19, 1),
(28, 20, 1),
(28, 21, 1),
(28, 22, 1),
(28, 23, 1),
(28, 24, 1),
(28, 25, 1),
(28, 26, 1),
(28, 27, 1),
(28, 28, 1),
(28, 57, 1),
(29, 1, 1),
(29, 37, 1),
(29, 38, 1),
(29, 39, 1),
(29, 40, 1),
(29, 46, 1),
(29, 47, 1),
(29, 48, 1),
(29, 49, 1),
(29, 56, 1),
(29, 59, 1),
(29, 4, 1),
(29, 5, 1),
(29, 6, 1),
(29, 7, 1),
(29, 8, 1),
(29, 9, 1),
(29, 10, 1),
(29, 11, 1),
(29, 12, 1),
(29, 50, 1),
(29, 58, 1),
(29, 53, 1),
(29, 54, 1),
(29, 30, 1),
(29, 31, 1),
(29, 32, 1),
(29, 33, 1),
(29, 34, 1),
(29, 35, 1),
(29, 36, 1),
(29, 18, 1),
(29, 19, 1),
(29, 20, 1),
(29, 21, 1),
(29, 22, 1),
(29, 23, 1),
(29, 24, 1),
(29, 25, 1),
(29, 26, 1),
(29, 27, 1),
(29, 28, 1),
(29, 57, 1),
(22, 1, 1),
(22, 37, 1),
(22, 38, 1),
(22, 39, 1),
(22, 40, 1),
(22, 46, 1),
(22, 47, 1),
(22, 48, 1),
(22, 49, 1),
(22, 56, 1),
(22, 59, 1),
(22, 4, 1),
(22, 5, 1),
(22, 6, 1),
(22, 7, 1),
(22, 8, 1),
(22, 9, 1),
(22, 10, 1),
(22, 11, 1),
(22, 12, 1),
(22, 50, 1),
(22, 58, 1),
(22, 53, 1),
(22, 54, 1),
(22, 30, 1),
(22, 31, 1),
(22, 32, 1),
(22, 33, 1),
(22, 34, 1),
(22, 35, 1),
(22, 36, 1),
(22, 18, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 26, 1),
(22, 27, 1),
(22, 28, 1),
(22, 57, 1),
(23, 1, 2),
(23, 37, 2),
(23, 38, 2),
(23, 39, 2),
(23, 40, 2),
(23, 46, 2),
(23, 47, 2),
(23, 48, 2),
(23, 49, 2),
(23, 56, 2),
(23, 59, 2),
(23, 4, 2),
(23, 5, 2),
(23, 6, 2),
(23, 7, 2),
(23, 8, 2),
(23, 9, 2),
(23, 10, 2),
(23, 11, 2),
(23, 12, 2),
(23, 50, 2),
(23, 58, 2),
(23, 53, 2),
(23, 54, 2),
(23, 30, 2),
(23, 31, 2),
(23, 32, 2),
(23, 33, 2),
(23, 34, 2),
(23, 35, 2),
(23, 36, 2),
(23, 18, 2),
(23, 19, 2),
(23, 20, 2),
(23, 21, 2),
(23, 22, 2),
(23, 23, 2),
(23, 24, 2),
(23, 25, 2),
(23, 26, 2),
(23, 27, 2),
(23, 28, 2),
(23, 57, 2),
(24, 1, 1),
(24, 37, 1),
(24, 38, 1),
(24, 39, 1),
(24, 40, 1),
(24, 46, 1),
(24, 47, 1),
(24, 48, 1),
(24, 49, 1),
(24, 56, 1),
(24, 59, 1),
(24, 4, 1),
(24, 5, 1),
(24, 6, 1),
(24, 7, 1),
(24, 8, 1),
(24, 9, 1),
(24, 10, 1),
(24, 11, 1),
(24, 12, 1),
(24, 50, 1),
(24, 58, 1),
(24, 53, 1),
(24, 54, 1),
(24, 30, 1),
(24, 31, 1),
(24, 32, 1),
(24, 33, 1),
(24, 34, 1),
(24, 35, 1),
(24, 36, 1),
(24, 18, 1),
(24, 19, 1),
(24, 20, 1),
(24, 21, 1),
(24, 22, 1),
(24, 23, 1),
(24, 24, 1),
(24, 25, 1),
(24, 26, 1),
(24, 27, 1),
(24, 28, 1),
(24, 57, 1),
(25, 1, 2),
(25, 37, 2),
(25, 38, 2),
(25, 39, 2),
(25, 40, 2),
(25, 46, 2),
(25, 47, 2),
(25, 48, 2),
(25, 49, 2),
(25, 56, 2),
(25, 59, 2),
(25, 4, 2),
(25, 5, 2),
(25, 6, 2),
(25, 7, 2),
(25, 8, 2),
(25, 9, 2),
(25, 10, 2),
(25, 11, 2),
(25, 12, 2),
(25, 50, 2),
(25, 58, 2),
(25, 53, 2),
(25, 54, 2),
(25, 30, 2),
(25, 31, 2),
(25, 32, 2),
(25, 33, 2),
(25, 34, 2),
(25, 35, 2),
(25, 36, 2),
(25, 18, 2),
(25, 19, 2),
(25, 20, 2),
(25, 21, 2),
(25, 22, 2),
(25, 23, 2),
(25, 24, 2),
(25, 25, 2),
(25, 26, 2),
(25, 27, 2),
(25, 28, 2),
(25, 57, 2),
(26, 1, 3),
(26, 37, 3),
(26, 38, 3),
(26, 39, 3),
(26, 40, 3),
(26, 46, 3),
(26, 47, 3),
(26, 48, 3),
(26, 49, 3),
(26, 56, 3),
(26, 59, 3),
(26, 4, 3),
(26, 5, 3),
(26, 6, 3),
(26, 7, 3),
(26, 8, 3),
(26, 9, 3),
(26, 10, 3),
(26, 11, 3),
(26, 12, 3),
(26, 50, 3),
(26, 58, 3),
(26, 53, 3),
(26, 54, 3),
(26, 30, 3),
(26, 31, 3),
(26, 32, 3),
(26, 33, 3),
(26, 34, 3),
(26, 35, 3),
(26, 36, 3),
(26, 18, 3),
(26, 19, 3),
(26, 20, 3),
(26, 21, 3),
(26, 22, 3),
(26, 23, 3),
(26, 24, 3),
(26, 25, 3),
(26, 26, 3),
(26, 27, 3),
(26, 28, 3),
(26, 57, 3),
(27, 1, 4),
(27, 37, 4),
(27, 38, 4),
(27, 39, 4),
(27, 40, 4),
(27, 46, 4),
(27, 47, 4),
(27, 48, 4),
(27, 49, 4),
(27, 56, 4),
(27, 59, 4),
(27, 4, 4),
(27, 5, 4),
(27, 6, 4),
(27, 7, 4),
(27, 8, 4),
(27, 9, 4),
(27, 10, 4),
(27, 11, 4),
(27, 12, 4),
(27, 50, 4),
(27, 58, 4),
(27, 53, 4),
(27, 54, 4),
(27, 30, 4),
(27, 31, 4),
(27, 32, 4),
(27, 33, 4),
(27, 34, 4),
(27, 35, 4),
(27, 36, 4),
(27, 18, 4),
(27, 19, 4),
(27, 20, 4),
(27, 21, 4),
(27, 22, 4),
(27, 23, 4),
(27, 24, 4),
(27, 25, 4),
(27, 26, 4),
(27, 27, 4),
(27, 28, 4),
(27, 57, 4),
(16, 60, 1),
(18, 60, 1),
(21, 60, 1),
(11, 60, 1),
(12, 60, 2),
(5, 60, 1),
(6, 60, 2),
(20, 60, 1),
(17, 60, 1),
(15, 60, 1),
(13, 60, 1),
(14, 60, 2),
(7, 60, 1),
(8, 60, 2),
(9, 60, 3),
(10, 60, 4),
(19, 60, 1),
(30, 60, 1),
(28, 60, 1),
(29, 60, 1),
(22, 60, 1),
(23, 60, 2),
(24, 60, 1),
(25, 60, 2),
(26, 60, 3),
(27, 60, 4),
(16, 61, 1),
(18, 61, 1),
(21, 61, 1),
(11, 61, 1),
(12, 61, 2),
(5, 61, 1),
(6, 61, 2),
(20, 61, 1),
(17, 61, 1),
(15, 61, 1),
(13, 61, 1),
(14, 61, 2),
(7, 61, 1),
(8, 61, 2),
(9, 61, 3),
(10, 61, 4),
(19, 61, 1),
(30, 61, 1),
(28, 61, 1),
(29, 61, 1),
(22, 61, 1),
(23, 61, 2),
(24, 61, 1),
(25, 61, 2),
(26, 61, 3),
(27, 61, 4),
(16, 63, 1),
(18, 63, 1),
(21, 63, 1),
(11, 63, 1),
(12, 63, 2),
(5, 63, 1),
(6, 63, 2),
(20, 63, 1),
(17, 63, 1),
(15, 63, 1),
(13, 63, 1),
(14, 63, 2),
(7, 63, 1),
(8, 63, 2),
(9, 63, 3),
(10, 63, 4),
(19, 63, 1),
(30, 63, 1),
(28, 63, 1),
(29, 63, 1),
(22, 63, 1),
(23, 63, 2),
(24, 63, 1),
(25, 63, 2),
(26, 63, 3),
(27, 63, 4),
(16, 64, 1),
(18, 64, 1),
(21, 64, 1),
(11, 64, 1),
(12, 64, 2),
(5, 64, 1),
(6, 64, 2),
(20, 64, 1),
(17, 64, 1),
(15, 64, 1),
(13, 64, 1),
(14, 64, 2),
(7, 64, 1),
(8, 64, 2),
(9, 64, 3),
(10, 64, 4),
(19, 64, 1),
(30, 64, 1),
(28, 64, 1),
(29, 64, 1),
(22, 64, 1),
(23, 64, 2),
(24, 64, 1),
(25, 64, 2),
(26, 64, 3),
(27, 64, 4),
(16, 66, 1),
(18, 66, 1),
(21, 66, 1),
(11, 66, 1),
(12, 66, 2),
(5, 66, 1),
(6, 66, 2),
(20, 66, 1),
(17, 66, 1),
(15, 66, 1),
(13, 66, 1),
(14, 66, 2),
(7, 66, 1),
(8, 66, 2),
(9, 66, 3),
(10, 66, 4),
(19, 66, 1),
(30, 66, 1),
(28, 66, 1),
(29, 66, 1),
(22, 66, 1),
(23, 66, 2),
(24, 66, 1),
(25, 66, 2),
(26, 66, 3),
(27, 66, 4),
(16, 67, 1),
(18, 67, 1),
(21, 67, 1),
(11, 67, 1),
(12, 67, 2),
(5, 67, 1),
(6, 67, 2),
(20, 67, 1),
(17, 67, 1),
(15, 67, 1),
(13, 67, 1),
(14, 67, 2),
(7, 67, 1),
(8, 67, 2),
(9, 67, 3),
(10, 67, 4),
(19, 67, 1),
(30, 67, 1),
(28, 67, 1),
(29, 67, 1),
(22, 67, 1),
(23, 67, 2),
(24, 67, 1),
(25, 67, 2),
(26, 67, 3),
(27, 67, 4),
(16, 68, 1),
(18, 68, 1),
(21, 68, 1),
(11, 68, 1),
(12, 68, 2),
(5, 68, 1),
(6, 68, 2),
(20, 68, 1),
(17, 68, 1),
(15, 68, 1),
(13, 68, 1),
(14, 68, 2),
(7, 68, 1),
(8, 68, 2),
(9, 68, 3),
(10, 68, 4),
(19, 68, 1),
(30, 68, 1),
(28, 68, 1),
(29, 68, 1),
(22, 68, 1),
(23, 68, 2),
(24, 68, 1),
(25, 68, 2),
(26, 68, 3),
(27, 68, 4),
(16, 69, 1),
(18, 69, 1),
(21, 69, 1),
(11, 69, 1),
(12, 69, 2),
(5, 69, 1),
(6, 69, 2),
(20, 69, 1),
(17, 69, 1),
(15, 69, 1),
(13, 69, 1),
(14, 69, 2),
(7, 69, 1),
(8, 69, 2),
(9, 69, 3),
(10, 69, 4),
(19, 69, 1),
(30, 69, 1),
(28, 69, 1),
(29, 69, 1),
(22, 69, 1),
(23, 69, 2),
(24, 69, 1),
(25, 69, 2),
(26, 69, 3),
(27, 69, 4),
(16, 71, 1),
(18, 71, 1),
(21, 71, 1),
(11, 71, 1),
(12, 71, 2),
(5, 71, 1),
(6, 71, 2),
(20, 71, 1),
(17, 71, 1),
(15, 71, 1),
(13, 71, 1),
(14, 71, 2),
(7, 71, 1),
(8, 71, 2),
(9, 71, 3),
(10, 71, 4),
(19, 71, 1),
(30, 71, 1),
(28, 71, 1),
(29, 71, 1),
(22, 71, 1),
(23, 71, 2),
(24, 71, 1),
(25, 71, 2),
(26, 71, 3),
(27, 71, 4),
(16, 72, 1),
(18, 72, 1),
(21, 72, 1),
(11, 72, 1),
(12, 72, 2),
(5, 72, 1),
(6, 72, 2),
(20, 72, 1),
(17, 72, 1),
(15, 72, 1),
(13, 72, 1),
(14, 72, 2),
(7, 72, 1),
(8, 72, 2),
(9, 72, 3),
(10, 72, 4),
(19, 72, 1),
(30, 72, 1),
(28, 72, 1),
(29, 72, 1),
(22, 72, 1),
(23, 72, 2),
(24, 72, 1),
(25, 72, 2),
(26, 72, 3),
(27, 72, 4),
(16, 73, 1),
(18, 73, 1),
(21, 73, 1),
(11, 73, 1),
(12, 73, 2),
(5, 73, 1),
(6, 73, 2),
(20, 73, 1),
(17, 73, 1),
(15, 73, 1),
(13, 73, 1),
(14, 73, 2),
(7, 73, 1),
(8, 73, 2),
(9, 73, 3),
(10, 73, 4),
(19, 73, 1),
(30, 73, 1),
(28, 73, 1),
(29, 73, 1),
(22, 73, 1),
(23, 73, 2),
(24, 73, 1),
(25, 73, 2),
(26, 73, 3),
(27, 73, 4),
(16, 74, 1),
(18, 74, 1),
(21, 74, 1),
(11, 74, 1),
(12, 74, 2),
(5, 74, 1),
(6, 74, 2),
(20, 74, 1),
(17, 74, 1),
(15, 74, 1),
(13, 74, 1),
(14, 74, 2),
(7, 74, 1),
(8, 74, 2),
(9, 74, 3),
(10, 74, 4),
(19, 74, 1),
(30, 74, 1),
(28, 74, 1),
(29, 74, 1),
(22, 74, 1),
(23, 74, 2),
(24, 74, 1),
(25, 74, 2),
(26, 74, 3),
(27, 74, 4),
(16, 80, 1),
(18, 80, 1),
(21, 80, 1),
(11, 80, 1),
(12, 80, 2),
(5, 80, 1),
(6, 80, 2),
(20, 80, 1),
(17, 80, 1),
(15, 80, 1),
(13, 80, 1),
(14, 80, 2),
(7, 80, 1),
(8, 80, 2),
(9, 80, 3),
(10, 80, 4),
(19, 80, 1),
(30, 80, 1),
(28, 80, 1),
(29, 80, 1),
(22, 80, 1),
(23, 80, 2),
(24, 80, 1),
(25, 80, 2),
(26, 80, 3),
(27, 80, 4),
(16, 81, 1),
(18, 81, 1),
(21, 81, 1),
(11, 81, 1),
(12, 81, 2),
(5, 81, 1),
(6, 81, 2),
(20, 81, 1),
(17, 81, 1),
(15, 81, 1),
(13, 81, 1),
(14, 81, 2),
(7, 81, 1),
(8, 81, 2),
(9, 81, 3),
(10, 81, 4),
(19, 81, 1),
(30, 81, 1),
(28, 81, 1),
(29, 81, 1),
(22, 81, 1),
(23, 81, 2),
(24, 81, 1),
(25, 81, 2),
(26, 81, 3),
(27, 81, 4),
(16, 84, 1),
(18, 84, 1),
(21, 84, 1),
(11, 84, 1),
(12, 84, 2),
(5, 84, 1),
(6, 84, 2),
(20, 84, 1),
(17, 84, 1),
(15, 84, 1),
(13, 84, 1),
(14, 84, 2),
(7, 84, 1),
(8, 84, 2),
(9, 84, 3),
(10, 84, 4),
(19, 84, 1),
(30, 84, 1),
(28, 84, 1),
(29, 84, 1),
(22, 84, 1),
(23, 84, 2),
(24, 84, 1),
(25, 84, 2),
(26, 84, 3),
(27, 84, 4),
(16, 86, 1),
(18, 86, 1),
(21, 86, 1),
(11, 86, 1),
(12, 86, 2),
(5, 86, 1),
(6, 86, 2),
(20, 86, 1),
(17, 86, 1),
(15, 86, 1),
(13, 86, 1),
(14, 86, 2),
(7, 86, 1),
(8, 86, 2),
(9, 86, 3),
(10, 86, 4),
(19, 86, 1),
(30, 86, 1),
(28, 86, 1),
(29, 86, 1),
(22, 86, 1),
(23, 86, 2),
(24, 86, 1),
(25, 86, 2),
(26, 86, 3),
(27, 86, 4),
(16, 87, 1),
(18, 87, 1),
(21, 87, 1),
(11, 87, 1),
(12, 87, 2),
(5, 87, 1),
(6, 87, 2),
(20, 87, 1),
(17, 87, 1),
(15, 87, 1),
(13, 87, 1),
(14, 87, 2),
(7, 87, 1),
(8, 87, 2),
(9, 87, 3),
(10, 87, 4),
(19, 87, 1),
(30, 87, 1),
(28, 87, 1),
(29, 87, 1),
(22, 87, 1),
(23, 87, 2),
(24, 87, 1),
(25, 87, 2),
(26, 87, 3),
(27, 87, 4),
(16, 88, 1),
(18, 88, 1),
(21, 88, 1),
(11, 88, 1),
(12, 88, 2),
(5, 88, 1),
(6, 88, 2),
(20, 88, 1),
(17, 88, 1),
(15, 88, 1),
(13, 88, 1),
(14, 88, 2),
(7, 88, 1),
(8, 88, 2),
(9, 88, 3),
(10, 88, 4),
(19, 88, 1),
(30, 88, 1),
(28, 88, 1),
(29, 88, 1),
(22, 88, 1),
(23, 88, 2),
(24, 88, 1),
(25, 88, 2),
(26, 88, 3),
(27, 88, 4),
(34, 1, 1),
(34, 37, 1),
(34, 38, 1),
(34, 39, 1),
(34, 40, 1),
(34, 46, 1),
(34, 47, 1),
(34, 48, 1),
(34, 49, 1),
(34, 56, 1),
(34, 59, 1),
(34, 4, 1),
(34, 5, 1),
(34, 6, 1),
(34, 7, 1),
(34, 8, 1),
(34, 9, 1),
(34, 10, 1),
(34, 11, 1),
(34, 12, 1),
(34, 50, 1),
(34, 58, 1),
(34, 71, 1),
(34, 87, 1),
(34, 66, 1),
(34, 80, 1),
(34, 61, 1),
(34, 72, 1),
(34, 73, 1),
(34, 64, 1),
(34, 69, 1),
(34, 68, 1),
(34, 81, 1),
(34, 63, 1),
(34, 88, 1),
(34, 86, 1),
(34, 74, 1),
(34, 84, 1),
(34, 67, 1),
(34, 60, 1),
(34, 53, 1),
(34, 54, 1),
(34, 30, 1),
(34, 31, 1),
(34, 32, 1),
(34, 33, 1),
(34, 34, 1),
(34, 35, 1),
(34, 36, 1),
(34, 18, 1),
(34, 19, 1),
(34, 20, 1),
(34, 21, 1),
(34, 22, 1),
(34, 23, 1),
(34, 24, 1),
(34, 25, 1),
(34, 26, 1),
(34, 27, 1),
(34, 28, 1),
(34, 57, 1),
(35, 1, 2),
(35, 37, 2),
(35, 38, 2),
(35, 39, 2),
(35, 40, 2),
(35, 46, 2),
(35, 47, 2),
(35, 48, 2),
(35, 49, 2),
(35, 56, 2),
(35, 59, 2),
(35, 4, 2),
(35, 5, 2),
(35, 6, 2),
(35, 7, 2),
(35, 8, 2),
(35, 9, 2),
(35, 10, 2),
(35, 11, 2),
(35, 12, 2),
(35, 50, 2),
(35, 58, 2),
(35, 71, 2),
(35, 87, 2),
(35, 66, 2),
(35, 80, 2),
(35, 61, 2),
(35, 72, 2),
(35, 73, 2),
(35, 64, 2),
(35, 69, 2),
(35, 68, 2),
(35, 81, 2),
(35, 63, 2),
(35, 88, 2),
(35, 86, 2),
(35, 74, 2),
(35, 84, 2),
(35, 67, 2),
(35, 60, 2),
(35, 53, 2),
(35, 54, 2),
(35, 30, 2),
(35, 31, 2),
(35, 32, 2),
(35, 33, 2),
(35, 34, 2),
(35, 35, 2),
(35, 36, 2),
(35, 18, 2),
(35, 19, 2),
(35, 20, 2),
(35, 21, 2),
(35, 22, 2),
(35, 23, 2),
(35, 24, 2),
(35, 25, 2),
(35, 26, 2),
(35, 27, 2),
(35, 28, 2),
(35, 57, 2),
(36, 4, 1),
(36, 5, 1),
(36, 6, 1),
(36, 7, 1),
(36, 8, 1),
(36, 9, 1),
(36, 10, 1),
(36, 11, 1),
(36, 12, 1),
(37, 18, 1),
(37, 19, 1),
(37, 20, 1),
(37, 21, 1),
(37, 22, 1),
(37, 23, 1),
(37, 24, 1),
(37, 25, 1),
(37, 26, 1),
(37, 27, 1),
(37, 30, 1),
(37, 31, 1),
(37, 32, 1),
(37, 33, 1),
(37, 34, 1),
(37, 35, 1),
(37, 36, 1),
(38, 4, 2),
(38, 5, 2),
(38, 6, 2),
(38, 7, 2),
(38, 8, 2),
(38, 9, 2),
(38, 10, 2),
(38, 11, 2),
(38, 12, 2),
(39, 1, 2),
(39, 37, 2),
(39, 38, 2),
(39, 39, 2),
(39, 40, 2),
(39, 46, 2),
(39, 47, 2),
(39, 48, 2),
(39, 49, 2),
(39, 56, 2),
(39, 59, 2),
(39, 4, 3),
(39, 5, 3),
(39, 6, 3),
(39, 7, 3),
(39, 8, 3),
(39, 9, 3),
(39, 10, 3),
(39, 11, 3),
(39, 12, 3),
(39, 50, 2),
(39, 58, 2),
(39, 71, 2),
(39, 87, 2),
(39, 66, 2),
(39, 80, 2),
(39, 61, 2),
(39, 72, 2),
(39, 73, 2),
(39, 64, 2),
(39, 69, 2),
(39, 68, 2),
(39, 81, 2),
(39, 63, 2),
(39, 88, 2),
(39, 86, 2),
(39, 74, 2),
(39, 84, 2),
(39, 67, 2),
(39, 60, 2),
(39, 53, 2),
(39, 54, 2),
(39, 30, 3),
(39, 31, 3),
(39, 32, 3),
(39, 33, 3),
(39, 34, 3),
(39, 35, 3),
(39, 36, 3),
(39, 18, 3),
(39, 19, 3),
(39, 20, 3),
(39, 21, 3),
(39, 22, 3),
(39, 23, 3),
(39, 24, 3),
(39, 25, 3),
(39, 26, 3),
(39, 27, 3),
(39, 28, 2),
(39, 57, 2),
(40, 1, 1),
(40, 37, 1),
(40, 38, 1),
(40, 39, 1),
(40, 40, 1),
(40, 46, 1),
(40, 47, 1),
(40, 48, 1),
(40, 49, 1),
(40, 56, 1),
(40, 59, 1),
(40, 4, 1),
(40, 5, 1),
(40, 6, 1),
(40, 7, 1),
(40, 8, 1),
(40, 9, 1),
(40, 10, 1),
(40, 11, 1),
(40, 12, 1),
(40, 50, 1),
(40, 58, 1),
(40, 71, 1),
(40, 87, 1),
(40, 66, 1),
(40, 80, 1),
(40, 61, 1),
(40, 72, 1),
(40, 73, 1),
(40, 64, 1),
(40, 69, 1),
(40, 68, 1),
(40, 81, 1),
(40, 63, 1),
(40, 88, 1),
(40, 86, 1),
(40, 74, 1),
(40, 84, 1),
(40, 67, 1),
(40, 60, 1),
(40, 53, 1),
(40, 54, 1),
(40, 30, 1),
(40, 31, 1),
(40, 32, 1),
(40, 33, 1),
(40, 34, 1),
(40, 35, 1),
(40, 36, 1),
(40, 18, 1),
(40, 19, 1),
(40, 20, 1),
(40, 21, 1),
(40, 22, 1),
(40, 23, 1),
(40, 24, 1),
(40, 25, 1),
(40, 26, 1),
(40, 27, 1),
(40, 28, 1),
(40, 57, 1),
(41, 1, 1),
(41, 37, 1),
(41, 38, 1),
(41, 39, 1),
(41, 40, 1),
(41, 46, 1),
(41, 47, 1),
(41, 48, 1),
(41, 49, 1),
(41, 56, 1),
(41, 59, 1),
(41, 4, 1),
(41, 5, 1),
(41, 6, 1),
(41, 7, 1),
(41, 8, 1),
(41, 9, 1),
(41, 10, 1),
(41, 11, 1),
(41, 12, 1),
(41, 50, 1),
(41, 58, 1),
(41, 71, 1),
(41, 87, 1),
(41, 66, 1),
(41, 80, 1),
(41, 61, 1),
(41, 72, 1),
(41, 73, 1),
(41, 64, 1),
(41, 69, 1),
(41, 68, 1),
(41, 81, 1),
(41, 63, 1),
(41, 88, 1),
(41, 86, 1),
(41, 74, 1),
(41, 84, 1),
(41, 67, 1),
(41, 60, 1),
(41, 53, 1),
(41, 54, 1),
(41, 30, 1),
(41, 31, 1),
(41, 32, 1),
(41, 33, 1),
(41, 34, 1),
(41, 35, 1),
(41, 36, 1),
(41, 18, 1),
(41, 19, 1),
(41, 20, 1),
(41, 21, 1),
(41, 22, 1),
(41, 23, 1),
(41, 24, 1),
(41, 25, 1),
(41, 26, 1),
(41, 27, 1),
(41, 28, 1),
(41, 57, 1),
(42, 1, 1),
(42, 37, 1),
(42, 38, 1),
(42, 39, 1),
(42, 40, 1),
(42, 46, 1),
(42, 47, 1),
(42, 48, 1),
(42, 49, 1),
(42, 56, 1),
(42, 59, 1),
(42, 4, 1),
(42, 5, 1),
(42, 6, 1),
(42, 7, 1),
(42, 8, 1),
(42, 9, 1),
(42, 10, 1),
(42, 11, 1),
(42, 12, 1),
(42, 50, 1),
(42, 58, 1),
(42, 71, 1),
(42, 87, 1),
(42, 66, 1),
(42, 80, 1),
(42, 61, 1),
(42, 72, 1),
(42, 73, 1),
(42, 64, 1),
(42, 69, 1),
(42, 68, 1),
(42, 81, 1),
(42, 63, 1),
(42, 88, 1),
(42, 86, 1),
(42, 74, 1),
(42, 84, 1),
(42, 67, 1),
(42, 60, 1),
(42, 53, 1),
(42, 54, 1),
(42, 30, 1),
(42, 31, 1),
(42, 32, 1),
(42, 33, 1),
(42, 34, 1),
(42, 35, 1),
(42, 36, 1),
(42, 18, 1),
(42, 19, 1),
(42, 20, 1),
(42, 21, 1),
(42, 22, 1),
(42, 23, 1),
(42, 24, 1),
(42, 25, 1),
(42, 26, 1),
(42, 27, 1),
(42, 28, 1),
(42, 57, 1),
(43, 1, 1),
(43, 37, 1),
(43, 38, 1),
(43, 39, 1),
(43, 40, 1),
(43, 46, 1),
(43, 47, 1),
(43, 48, 1),
(43, 49, 1),
(43, 56, 1),
(43, 59, 1),
(43, 4, 1),
(43, 5, 1),
(43, 6, 1),
(43, 7, 1),
(43, 8, 1),
(43, 9, 1),
(43, 10, 1),
(43, 11, 1),
(43, 12, 1),
(43, 50, 1),
(43, 58, 1),
(43, 71, 1),
(43, 87, 1),
(43, 66, 1),
(43, 80, 1),
(43, 61, 1),
(43, 72, 1),
(43, 73, 1),
(43, 64, 1),
(43, 69, 1),
(43, 68, 1),
(43, 81, 1),
(43, 63, 1),
(43, 88, 1),
(43, 86, 1),
(43, 74, 1),
(43, 84, 1),
(43, 67, 1),
(43, 60, 1),
(43, 53, 1),
(43, 54, 1),
(43, 30, 1),
(43, 31, 1),
(43, 32, 1),
(43, 33, 1),
(43, 34, 1),
(43, 35, 1),
(43, 36, 1),
(43, 18, 1),
(43, 19, 1),
(43, 20, 1),
(43, 21, 1),
(43, 22, 1),
(43, 23, 1),
(43, 24, 1),
(43, 25, 1),
(43, 26, 1),
(43, 27, 1),
(43, 28, 1),
(43, 57, 1),
(44, 1, 2),
(44, 37, 2),
(44, 38, 2),
(44, 39, 2),
(44, 40, 2),
(44, 46, 2),
(44, 47, 2),
(44, 48, 2),
(44, 49, 2),
(44, 56, 2),
(44, 59, 2),
(44, 4, 2),
(44, 5, 2),
(44, 6, 2),
(44, 7, 2),
(44, 8, 2),
(44, 9, 2),
(44, 10, 2),
(44, 11, 2),
(44, 12, 2),
(44, 50, 2),
(44, 58, 2),
(44, 71, 2),
(44, 87, 2),
(44, 66, 2),
(44, 80, 2),
(44, 61, 2),
(44, 72, 2),
(44, 73, 2),
(44, 64, 2),
(44, 69, 2),
(44, 68, 2),
(44, 81, 2),
(44, 63, 2),
(44, 88, 2),
(44, 86, 2),
(44, 74, 2),
(44, 84, 2),
(44, 67, 2),
(44, 60, 2),
(44, 53, 2),
(44, 54, 2),
(44, 30, 2),
(44, 31, 2),
(44, 32, 2),
(44, 33, 2),
(44, 34, 2),
(44, 35, 2),
(44, 36, 2),
(44, 18, 2),
(44, 19, 2),
(44, 20, 2),
(44, 21, 2),
(44, 22, 2),
(44, 23, 2),
(44, 24, 2),
(44, 25, 2),
(44, 26, 2),
(44, 27, 2),
(44, 28, 2),
(44, 57, 2),
(45, 1, 1),
(45, 37, 1),
(45, 38, 1),
(45, 39, 1),
(45, 40, 1),
(45, 46, 1),
(45, 47, 1),
(45, 48, 1),
(45, 49, 1),
(45, 56, 1),
(45, 59, 1),
(45, 4, 1),
(45, 5, 1),
(45, 6, 1),
(45, 7, 1),
(45, 8, 1),
(45, 9, 1),
(45, 10, 1),
(45, 11, 1),
(45, 12, 1),
(45, 50, 1),
(45, 58, 1),
(45, 71, 1),
(45, 87, 1),
(45, 66, 1),
(45, 80, 1),
(45, 61, 1),
(45, 72, 1),
(45, 73, 1),
(45, 64, 1),
(45, 69, 1),
(45, 68, 1),
(45, 81, 1),
(45, 63, 1),
(45, 88, 1),
(45, 86, 1),
(45, 74, 1),
(45, 84, 1),
(45, 67, 1),
(45, 60, 1),
(45, 53, 1),
(45, 54, 1),
(45, 30, 1),
(45, 31, 1),
(45, 32, 1),
(45, 33, 1),
(45, 34, 1),
(45, 35, 1),
(45, 36, 1),
(45, 18, 1),
(45, 19, 1),
(45, 20, 1),
(45, 21, 1),
(45, 22, 1),
(45, 23, 1),
(45, 24, 1),
(45, 25, 1),
(45, 26, 1),
(45, 27, 1),
(45, 28, 1),
(45, 57, 1),
(46, 1, 2),
(46, 37, 2),
(46, 38, 2),
(46, 39, 2),
(46, 40, 2),
(46, 46, 2),
(46, 47, 2),
(46, 48, 2),
(46, 49, 2),
(46, 56, 2),
(46, 59, 2),
(46, 4, 2),
(46, 5, 2),
(46, 6, 2),
(46, 7, 2),
(46, 8, 2),
(46, 9, 2),
(46, 10, 2),
(46, 11, 2),
(46, 12, 2),
(46, 50, 2),
(46, 58, 2),
(46, 71, 2),
(46, 87, 2),
(46, 66, 2),
(46, 80, 2),
(46, 61, 2),
(46, 72, 2),
(46, 73, 2),
(46, 64, 2),
(46, 69, 2),
(46, 68, 2),
(46, 81, 2),
(46, 63, 2),
(46, 88, 2),
(46, 86, 2),
(46, 74, 2),
(46, 84, 2),
(46, 67, 2),
(46, 60, 2),
(46, 53, 2),
(46, 54, 2),
(46, 30, 2),
(46, 31, 2),
(46, 32, 2),
(46, 33, 2),
(46, 34, 2),
(46, 35, 2),
(46, 36, 2),
(46, 18, 2),
(46, 19, 2),
(46, 20, 2),
(46, 21, 2),
(46, 22, 2),
(46, 23, 2),
(46, 24, 2),
(46, 25, 2),
(46, 26, 2),
(46, 27, 2),
(46, 28, 2),
(46, 57, 2),
(47, 1, 3),
(47, 37, 3),
(47, 38, 3),
(47, 39, 3),
(47, 40, 3),
(47, 46, 3),
(47, 47, 3),
(47, 48, 3),
(47, 49, 3),
(47, 56, 3),
(47, 59, 3),
(47, 4, 3),
(47, 5, 3),
(47, 6, 3),
(47, 7, 3),
(47, 8, 3),
(47, 9, 3),
(47, 10, 3),
(47, 11, 3),
(47, 12, 3),
(47, 50, 3),
(47, 58, 3),
(47, 71, 3),
(47, 87, 3),
(47, 66, 3),
(47, 80, 3),
(47, 61, 3),
(47, 72, 3),
(47, 73, 3),
(47, 64, 3),
(47, 69, 3),
(47, 68, 3),
(47, 81, 3),
(47, 63, 3),
(47, 88, 3),
(47, 86, 3),
(47, 74, 3),
(47, 84, 3),
(47, 67, 3),
(47, 60, 3),
(47, 53, 3),
(47, 54, 3),
(47, 30, 3),
(47, 31, 3),
(47, 32, 3),
(47, 33, 3),
(47, 34, 3),
(47, 35, 3),
(47, 36, 3),
(47, 18, 3),
(47, 19, 3),
(47, 20, 3),
(47, 21, 3),
(47, 22, 3),
(47, 23, 3),
(47, 24, 3),
(47, 25, 3),
(47, 26, 3),
(47, 27, 3),
(47, 28, 3),
(47, 57, 3),
(48, 1, 4),
(48, 37, 4),
(48, 38, 4),
(48, 39, 4),
(48, 40, 4),
(48, 46, 4),
(48, 47, 4),
(48, 48, 4),
(48, 49, 4),
(48, 56, 4),
(48, 59, 4),
(48, 4, 4),
(48, 5, 4),
(48, 6, 4),
(48, 7, 4),
(48, 8, 4),
(48, 9, 4),
(48, 10, 4),
(48, 11, 4),
(48, 12, 4),
(48, 50, 4),
(48, 58, 4),
(48, 71, 4),
(48, 87, 4),
(48, 66, 4),
(48, 80, 4),
(48, 61, 4),
(48, 72, 4),
(48, 73, 4),
(48, 64, 4),
(48, 69, 4),
(48, 68, 4),
(48, 81, 4),
(48, 63, 4),
(48, 88, 4),
(48, 86, 4),
(48, 74, 4),
(48, 84, 4),
(48, 67, 4),
(48, 60, 4),
(48, 53, 4),
(48, 54, 4),
(48, 30, 4),
(48, 31, 4),
(48, 32, 4),
(48, 33, 4),
(48, 34, 4),
(48, 35, 4),
(48, 36, 4),
(48, 18, 4),
(48, 19, 4),
(48, 20, 4),
(48, 21, 4),
(48, 22, 4),
(48, 23, 4),
(48, 24, 4),
(48, 25, 4),
(48, 26, 4),
(48, 27, 4),
(48, 28, 4),
(48, 57, 4),
(49, 1, 1),
(49, 37, 1),
(49, 38, 1),
(49, 39, 1),
(49, 40, 1),
(49, 46, 1),
(49, 47, 1),
(49, 48, 1),
(49, 49, 1),
(49, 56, 1),
(49, 59, 1),
(49, 4, 1),
(49, 5, 1),
(49, 6, 1),
(49, 7, 1),
(49, 8, 1),
(49, 9, 1),
(49, 10, 1),
(49, 11, 1),
(49, 12, 1),
(49, 50, 1),
(49, 58, 1),
(49, 71, 1),
(49, 87, 1),
(49, 66, 1),
(49, 80, 1),
(49, 61, 1),
(49, 72, 1),
(49, 73, 1),
(49, 64, 1),
(49, 69, 1),
(49, 68, 1),
(49, 81, 1),
(49, 63, 1),
(49, 88, 1),
(49, 86, 1),
(49, 74, 1),
(49, 84, 1),
(49, 67, 1),
(49, 60, 1),
(49, 53, 1),
(49, 54, 1),
(49, 30, 1),
(49, 31, 1),
(49, 32, 1),
(49, 33, 1),
(49, 34, 1),
(49, 35, 1),
(49, 36, 1),
(49, 18, 1),
(49, 19, 1),
(49, 20, 1),
(49, 21, 1),
(49, 22, 1),
(49, 23, 1),
(49, 24, 1),
(49, 25, 1),
(49, 26, 1),
(49, 27, 1),
(49, 28, 1),
(49, 57, 1),
(50, 4, 1),
(51, 4, 2),
(53, 4, 1),
(53, 5, 1),
(53, 6, 1),
(53, 7, 1),
(53, 8, 1),
(53, 9, 1),
(53, 10, 1),
(53, 11, 1),
(53, 12, 1),
(54, 71, 1),
(56, 71, 1),
(56, 73, 1),
(56, 64, 1),
(56, 69, 1),
(56, 68, 1),
(56, 81, 1),
(56, 63, 1),
(56, 88, 1),
(56, 86, 1),
(56, 74, 1),
(56, 84, 1),
(56, 67, 1),
(56, 60, 1),
(59, 71, 2),
(64, 71, 2),
(16, 93, 1),
(16, 103, 1),
(16, 102, 1),
(16, 92, 1),
(16, 91, 1),
(16, 98, 1),
(16, 90, 1),
(16, 101, 1),
(16, 96, 1),
(18, 93, 1),
(18, 103, 1),
(18, 102, 1),
(18, 92, 1),
(18, 91, 1),
(18, 98, 1),
(18, 90, 1),
(18, 101, 1),
(18, 96, 1),
(21, 93, 1),
(21, 103, 1),
(21, 102, 1),
(21, 92, 1),
(21, 91, 1),
(21, 98, 1),
(21, 90, 1),
(21, 101, 1),
(21, 96, 1),
(11, 93, 1),
(11, 103, 1),
(11, 102, 1),
(11, 92, 1),
(11, 91, 1),
(11, 98, 1),
(11, 90, 1),
(11, 101, 1),
(11, 96, 1),
(12, 93, 2),
(12, 103, 2),
(12, 102, 2),
(12, 92, 2),
(12, 91, 2),
(12, 98, 2),
(12, 90, 2),
(12, 101, 2),
(12, 96, 2),
(5, 93, 1),
(5, 103, 1),
(5, 102, 1),
(5, 92, 1),
(5, 91, 1),
(5, 98, 1),
(5, 90, 1),
(5, 101, 1),
(5, 96, 1),
(6, 93, 2),
(6, 103, 2),
(6, 102, 2),
(6, 92, 2),
(6, 91, 2),
(6, 98, 2),
(6, 90, 2),
(6, 101, 2),
(6, 96, 2),
(20, 93, 1),
(20, 103, 1),
(20, 102, 1),
(20, 92, 1),
(20, 91, 1),
(20, 98, 1),
(20, 90, 1),
(20, 101, 1),
(20, 96, 1),
(17, 93, 1),
(17, 103, 1),
(17, 102, 1),
(17, 92, 1),
(17, 91, 1),
(17, 98, 1),
(17, 90, 1),
(17, 101, 1),
(17, 96, 1),
(15, 93, 1),
(15, 103, 1),
(15, 102, 1),
(15, 92, 1),
(15, 91, 1),
(15, 98, 1),
(15, 90, 1),
(15, 101, 1),
(15, 96, 1),
(13, 93, 1),
(13, 103, 1),
(13, 102, 1),
(13, 92, 1),
(13, 91, 1),
(13, 98, 1),
(13, 90, 1),
(13, 101, 1),
(13, 96, 1),
(14, 93, 2),
(14, 103, 2),
(14, 102, 2),
(14, 92, 2),
(14, 91, 2),
(14, 98, 2),
(14, 90, 2),
(14, 101, 2),
(14, 96, 2),
(7, 93, 1),
(7, 103, 1),
(7, 102, 1),
(7, 92, 1),
(7, 91, 1),
(7, 98, 1),
(7, 90, 1),
(7, 101, 1),
(7, 96, 1),
(8, 93, 2),
(8, 103, 2),
(8, 102, 2),
(8, 92, 2),
(8, 91, 2),
(8, 98, 2),
(8, 90, 2),
(8, 101, 2),
(8, 96, 2),
(9, 93, 3),
(9, 103, 3),
(9, 102, 3),
(9, 92, 3),
(9, 91, 3),
(9, 98, 3),
(9, 90, 3),
(9, 101, 3),
(9, 96, 3),
(10, 93, 4),
(10, 103, 4),
(10, 102, 4),
(10, 92, 4),
(10, 91, 4),
(10, 98, 4),
(10, 90, 4),
(10, 101, 4),
(10, 96, 4),
(19, 93, 1),
(19, 103, 1),
(19, 102, 1),
(19, 92, 1),
(19, 91, 1),
(19, 98, 1),
(19, 90, 1),
(19, 101, 1),
(19, 96, 1),
(30, 93, 1),
(30, 103, 1),
(30, 102, 1),
(30, 92, 1),
(30, 91, 1),
(30, 98, 1),
(30, 90, 1),
(30, 101, 1),
(30, 96, 1),
(28, 93, 1),
(28, 103, 1),
(28, 102, 1),
(28, 92, 1),
(28, 91, 1),
(28, 98, 1),
(28, 90, 1),
(28, 101, 1),
(28, 96, 1),
(29, 93, 1),
(29, 103, 1),
(29, 102, 1),
(29, 92, 1),
(29, 91, 1),
(29, 98, 1),
(29, 90, 1),
(29, 101, 1),
(29, 96, 1),
(22, 93, 1),
(22, 103, 1),
(22, 102, 1),
(22, 92, 1),
(22, 91, 1),
(22, 98, 1),
(22, 90, 1),
(22, 101, 1),
(22, 96, 1),
(23, 93, 2),
(23, 103, 2),
(23, 102, 2),
(23, 92, 2),
(23, 91, 2),
(23, 98, 2),
(23, 90, 2),
(23, 101, 2),
(23, 96, 2),
(24, 93, 1),
(24, 103, 1),
(24, 102, 1),
(24, 92, 1),
(24, 91, 1),
(24, 98, 1),
(24, 90, 1),
(24, 101, 1),
(24, 96, 1),
(25, 93, 2),
(25, 103, 2),
(25, 102, 2),
(25, 92, 2),
(25, 91, 2),
(25, 98, 2),
(25, 90, 2),
(25, 101, 2),
(25, 96, 2),
(26, 93, 3),
(26, 103, 3),
(26, 102, 3),
(26, 92, 3),
(26, 91, 3),
(26, 98, 3),
(26, 90, 3),
(26, 101, 3),
(26, 96, 3),
(27, 93, 4),
(27, 103, 4),
(27, 102, 4),
(27, 92, 4),
(27, 91, 4),
(27, 98, 4),
(27, 90, 4),
(27, 101, 4),
(27, 96, 4),
(40, 93, 1),
(40, 103, 1),
(40, 102, 1),
(40, 92, 1),
(40, 91, 1),
(40, 98, 1),
(40, 90, 1),
(40, 101, 1),
(40, 96, 1),
(34, 93, 1),
(34, 103, 1),
(34, 102, 1),
(34, 92, 1),
(34, 91, 1),
(34, 98, 1),
(34, 90, 1),
(34, 101, 1),
(34, 96, 1),
(35, 93, 2),
(35, 103, 2),
(35, 102, 2),
(35, 92, 2),
(35, 91, 2),
(35, 98, 2),
(35, 90, 2),
(35, 101, 2),
(35, 96, 2),
(39, 93, 1),
(39, 103, 1),
(39, 102, 1),
(39, 92, 1),
(39, 91, 1),
(39, 98, 1),
(39, 90, 1),
(39, 101, 1),
(39, 96, 1),
(41, 93, 1),
(41, 103, 1),
(41, 102, 1),
(41, 92, 1),
(41, 91, 1),
(41, 98, 1),
(41, 90, 1),
(41, 101, 1),
(41, 96, 1),
(42, 93, 1),
(42, 103, 1),
(42, 102, 1),
(42, 92, 1),
(42, 91, 1),
(42, 98, 1),
(42, 90, 1),
(42, 101, 1),
(42, 96, 1),
(43, 93, 1),
(43, 103, 1),
(43, 102, 1),
(43, 92, 1),
(43, 91, 1),
(43, 98, 1),
(43, 90, 1),
(43, 101, 1),
(43, 96, 1),
(44, 93, 2),
(44, 103, 2),
(44, 102, 2),
(44, 92, 2),
(44, 91, 2),
(44, 98, 2),
(44, 90, 2),
(44, 101, 2),
(44, 96, 2),
(45, 93, 1),
(45, 103, 1),
(45, 102, 1),
(45, 92, 1),
(45, 91, 1),
(45, 98, 1),
(45, 90, 1),
(45, 101, 1),
(45, 96, 1),
(46, 93, 2),
(46, 103, 2),
(46, 102, 2),
(46, 92, 2),
(46, 91, 2),
(46, 98, 2),
(46, 90, 2),
(46, 101, 2),
(46, 96, 2),
(47, 93, 3),
(47, 103, 3),
(47, 102, 3),
(47, 92, 3),
(47, 91, 3),
(47, 98, 3),
(47, 90, 3),
(47, 101, 3),
(47, 96, 3),
(48, 93, 4),
(48, 103, 4),
(48, 102, 4),
(48, 92, 4),
(48, 91, 4),
(48, 98, 4),
(48, 90, 4),
(48, 101, 4),
(48, 96, 4),
(49, 93, 1),
(49, 103, 1),
(49, 102, 1),
(49, 92, 1),
(49, 91, 1),
(49, 98, 1),
(49, 90, 1),
(49, 101, 1),
(49, 96, 1),
(65, 93, 1),
(67, 93, 2),
(68, 93, 3),
(68, 103, 1),
(68, 102, 1),
(68, 92, 1),
(68, 91, 1),
(68, 98, 1),
(68, 90, 1),
(68, 101, 1),
(68, 96, 1),
(69, 71, 1),
(70, 71, 1),
(70, 87, 1),
(70, 66, 1),
(70, 80, 1),
(70, 61, 1),
(70, 72, 1),
(70, 73, 1),
(70, 64, 1),
(70, 69, 1),
(70, 68, 1),
(70, 81, 1),
(70, 63, 1),
(70, 88, 1),
(70, 86, 1),
(70, 74, 1),
(70, 84, 1),
(70, 67, 1),
(70, 60, 1),
(70, 1, 1),
(70, 4, 1),
(70, 5, 1),
(70, 6, 1),
(70, 7, 1),
(70, 8, 1),
(70, 9, 1),
(70, 10, 1),
(70, 11, 1),
(70, 12, 1),
(70, 18, 1),
(70, 19, 1),
(70, 20, 1),
(70, 21, 1),
(70, 22, 1),
(70, 23, 1),
(70, 24, 1),
(70, 25, 1),
(70, 26, 1),
(70, 27, 1),
(70, 28, 1),
(70, 56, 1),
(70, 30, 1),
(70, 31, 1),
(70, 32, 1),
(70, 33, 1),
(70, 34, 1),
(70, 35, 1),
(70, 36, 1),
(70, 57, 1),
(70, 37, 1),
(70, 38, 1),
(70, 39, 1),
(70, 40, 1),
(70, 58, 1),
(70, 59, 1),
(70, 50, 1),
(70, 46, 1),
(70, 47, 1),
(70, 48, 1),
(70, 49, 1),
(70, 53, 1),
(70, 54, 1),
(70, 93, 1),
(70, 103, 1),
(70, 102, 1),
(70, 92, 1),
(70, 91, 1),
(70, 98, 1),
(70, 90, 1),
(70, 101, 1),
(70, 96, 1),
(72, 1, 1),
(72, 4, 1),
(72, 5, 1),
(72, 6, 1),
(72, 7, 1),
(72, 8, 1),
(72, 9, 1),
(72, 10, 1),
(72, 11, 1),
(72, 12, 1),
(72, 18, 1),
(72, 19, 1),
(72, 20, 1),
(72, 21, 1),
(72, 22, 1),
(72, 23, 1),
(72, 24, 1),
(72, 25, 1),
(72, 26, 1),
(72, 27, 1),
(72, 28, 1),
(72, 56, 1),
(72, 30, 1),
(72, 31, 1),
(72, 32, 1),
(72, 33, 1),
(72, 34, 1),
(72, 35, 1),
(72, 36, 1),
(72, 57, 1),
(72, 37, 1),
(72, 38, 1),
(72, 39, 1),
(72, 40, 1),
(72, 58, 1),
(72, 59, 1),
(72, 50, 1),
(72, 46, 1),
(72, 47, 1),
(72, 48, 1),
(72, 49, 1),
(72, 53, 1),
(72, 54, 1),
(72, 71, 1),
(72, 87, 1),
(72, 66, 1),
(72, 80, 1),
(72, 61, 1),
(72, 72, 1),
(72, 73, 1),
(72, 64, 1),
(72, 69, 1),
(72, 68, 1),
(72, 81, 1),
(72, 63, 1),
(72, 88, 1),
(72, 86, 1),
(72, 74, 1),
(72, 84, 1),
(72, 67, 1),
(72, 60, 1),
(72, 93, 1),
(72, 103, 1),
(72, 102, 1),
(72, 92, 1),
(72, 91, 1),
(72, 98, 1),
(72, 90, 1),
(72, 101, 1),
(72, 96, 1),
(75, 1, 1),
(75, 4, 1),
(75, 5, 1),
(75, 6, 1),
(75, 7, 1),
(75, 8, 1),
(75, 9, 1),
(75, 10, 1),
(75, 11, 1),
(75, 12, 1),
(75, 18, 1),
(75, 19, 1),
(75, 20, 1),
(75, 21, 1),
(75, 22, 1),
(75, 23, 1),
(75, 24, 1),
(75, 25, 1),
(75, 26, 1),
(75, 27, 1),
(75, 28, 1),
(75, 56, 1),
(75, 30, 1),
(75, 31, 1),
(75, 32, 1),
(75, 33, 1),
(75, 34, 1),
(75, 35, 1),
(75, 36, 1),
(75, 57, 1),
(75, 37, 1),
(75, 38, 1),
(75, 39, 1),
(75, 40, 1),
(75, 58, 1),
(75, 59, 1),
(75, 50, 1),
(75, 46, 1),
(75, 47, 1),
(75, 48, 1),
(75, 49, 1),
(75, 53, 1),
(75, 54, 1),
(75, 71, 1),
(75, 87, 1),
(75, 66, 1),
(75, 80, 1),
(75, 61, 1),
(75, 72, 1),
(75, 73, 1),
(75, 64, 1),
(75, 69, 1),
(75, 68, 1),
(75, 81, 1),
(75, 63, 1),
(75, 88, 1),
(75, 86, 1),
(75, 74, 1),
(75, 84, 1),
(75, 67, 1),
(75, 60, 1),
(75, 93, 1),
(75, 103, 1),
(75, 102, 1),
(75, 92, 1),
(75, 91, 1),
(75, 98, 1),
(75, 90, 1),
(75, 101, 1),
(75, 96, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_comment`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_comment` (
`cid` mediumint(8) unsigned NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) NOT NULL DEFAULT '0',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_cong_trinh_da_thuc_hien_1`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_cong_trinh_da_thuc_hien_1` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_cong_trinh_da_thuc_hien_1`
--

INSERT INTO `nv4_vi_cong_trinh_da_thuc_hien_1` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 2, 0, 0, 0),
(6, 12, '1,12', 0, 1, 'Nguyễn Thế Hùng', 7, 1453192444, 1453192444, 1, 1453192444, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 13, 0, 0, 0),
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 1, 0, 0, 0),
(11, 1, '1', 0, 1, '', 4, 1445309676, 1445309676, 1, 1445309520, 0, 2, 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 'nukeviet-duoc-uu-tien-mua-sam-su-dung-trong-co-quan-to-chuc-nha-nuoc', 'Ngày 5/12/2014, Bộ trưởng Bộ TT&TT Nguyễn Bắc Son đã ký ban hành Thông tư 20/2014/TT-BTTTT (Thông tư 20) quy định về các sản phẩm phần mềm nguồn mở (PMNM) được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước. NukeViet (phiên bản 3.4.02 trở lên) là phần mềm được nằm trong danh sách này.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 1, 1, '4', 1, 2, 0, 0, 0),
(14, 1, '1,11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(16, 1, '1', 0, 1, '', 0, 1445391182, 1445394133, 1, 1445391120, 0, 2, 'NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016', 'nukeviet-duoc-bo-gd-dt-dua-vao-huong-dan-thuc-hien-nhiem-vu-cntt-nam-hoc-2015-2016', 'Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, NukeViet được đưa vào các hạng mục: Tập huấn sử dụng phần mềm nguồn mở cho giáo viên và cán bộ quản lý giáo dục; Khai thác, sử dụng và dạy học; đặc biệt phần &quot;khuyến cáo khi sử dụng các hệ thống CNTT&quot; có chỉ rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.', 'nukeviet-cms.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(17, 1, '1,10', 0, 1, '', 0, 1445391217, 1445393997, 1, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_cong_trinh_da_thuc_hien_2`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_cong_trinh_da_thuc_hien_2` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_cong_trinh_da_thuc_hien_2`
--

INSERT INTO `nv4_vi_cong_trinh_da_thuc_hien_2` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(18, 2, '2', 0, 1, 'VINADES', 0, 1453194455, 1453194455, 1, 1453194455, 0, 2, 'NukeViet 4.0 có gì mới?', 'nukeviet-4-0-co-gi-moi', 'NukeViet 4 là phiên bản NukeViet được cộng đồng đánh giá cao, hứa hẹn nhiều điểm vượt trội về công nghệ đến thời điểm hiện tại. NukeViet 4 thay đổi gần như hoàn toàn từ nhân hệ thống đến chức năng, giao diện người dùng. Vậy, có gì mới trong phiên bản này?', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 2, 0, 0, 0),
(20, 2, '2', 0, 1, '', 0, 1458534907, 1458668372, 1, 1458534600, 0, 2, 'Nâng cấp sàn gạch men bằng sàn gỗ tại...', 'nang-cap-san-gach-men-bang-san-go-tai', 'Địa chỉ:Số 144, Nguyễn Xiển, Thanh Xuân, HN<br />Chủ đầu tư:Công Ty Cổ Phần Thương Mại & Đầu Tư Phát Triển Bình Minh', '2016_03/duan81.jpg', '', 1, 1, '4', 1, 1, 0, 0, 0),
(21, 2, '2', 0, 1, '', 0, 1458535001, 1458535001, 1, 1458534900, 0, 2, 'Sàn gỗ tại Biệt thự cao cấp khu Ciputra...', 'san-go-tai-biet-thu-cao-cap-khu-ciputra', 'Địa chỉ:<br />Chủ đầu tư:', '2016_03/duan4.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(22, 2, '2', 0, 1, '', 0, 1458535070, 1458668305, 1, 1458534960, 0, 2, 'Nâng cấp sàn gạch men bằng sàn...', 'hoan-thanh-thang-09-2015-cong-trinh-tai-he-thong-truong-lien', 'Địa chỉ:<br />Chủ đầu tư:', '2016_03/d.jpg', '', 1, 1, '4', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_cong_trinh_da_thuc_hien_8`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_cong_trinh_da_thuc_hien_8` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_cong_trinh_da_thuc_hien_8`
--

INSERT INTO `nv4_vi_cong_trinh_da_thuc_hien_8` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_cong_trinh_da_thuc_hien_9`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_cong_trinh_da_thuc_hien_9` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_cong_trinh_da_thuc_hien_9`
--

INSERT INTO `nv4_vi_cong_trinh_da_thuc_hien_9` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_cong_trinh_da_thuc_hien_10`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_cong_trinh_da_thuc_hien_10` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_cong_trinh_da_thuc_hien_10`
--

INSERT INTO `nv4_vi_cong_trinh_da_thuc_hien_10` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(17, 1, '1,10', 0, 1, '', 0, 1445391217, 1445393997, 1, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 1, 0, 0, 0),
(19, 10, '10', 0, 1, '123host', 0, 1453192440, 1453192440, 1, 1453192440, 0, 2, 'Chọn nhà cung cấp Hosting nào tốt cho NukeViet?', 'chon-nha-cung-cap-hosting-nao-tot-cho-nukeviet', 'NukeViet được xây dựng và phát triển để tương thích với nhiều loại hosting và server. Tuy nhiên, để website NukeViet của bạn hoạt động tốt trên môi trường internet, cần chọn một nhà cung cấp Hosting uy tín, tin cậy và để &quot;chọn mặt gởi vàng&quot; website của mình. Bài viết này sẽ trình bày các tiêu chí để lựa chọn một nhà cung cấp Hosting tốt cho website của bạn.', '', '', 0, 1, '4', 1, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_cong_trinh_da_thuc_hien_11`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_cong_trinh_da_thuc_hien_11` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_cong_trinh_da_thuc_hien_11`
--

INSERT INTO `nv4_vi_cong_trinh_da_thuc_hien_11` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(7, 11, '11', 0, 1, 'Phạm Quốc Tiến', 2, 1453192400, 1453192400, 1, 1453192400, 0, 2, 'Tuyển dụng lập trình viên PHP phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-PHP', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về PHP và MySQL?. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0),
(8, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391089, 1445394192, 1, 1445391060, 0, 2, 'Tuyển dụng chuyên viên đồ hoạ phát triển NukeViet', 'Tuyen-dung-chuyen-vien-do-hoa', 'Bạn đam mê nguồn mở? Bạn là chuyên gia đồ họa? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0),
(9, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391090, 1445394193, 1, 1445391060, 0, 2, 'Tuyển dụng lập trình viên front-end (HTML/CSS/JS) phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về front-end (HTML/CSS/JS)?. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0),
(12, 11, '11', 0, 1, 'Vũ Bích Ngọc', 0, 1445391061, 1445394203, 1, 1445391000, 0, 2, 'Công ty VINADES tuyển dụng nhân viên kinh doanh', 'cong-ty-vinades-tuyen-dung-nhan-vien-kinh-doanh', 'Công ty cổ phần phát triển nguồn mở Việt Nam là đơn vị chủ quản của phần mềm mã nguồn mở NukeViet - một mã nguồn được tin dùng trong cơ quan nhà nước, đặc biệt là ngành giáo dục. Chúng tôi cần tuyển 05 nhân viên kinh doanh cho lĩnh vực này.', 'tuyen-dung-nvkd.png', '', 1, 1, '4', 1, 0, 0, 0, 0),
(14, 1, '1,11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(15, 11, '11', 0, 1, 'Trần Thị Thu', 0, 1445391135, 1445394444, 1, 1445391120, 0, 2, 'Học việc tại công ty VINADES', 'hoc-viec-tai-cong-ty-vinades', 'Công ty cổ phần phát triển nguồn mở Việt Nam tạo cơ hội việc làm và học việc miễn phí cho những ứng viên có đam mê thiết kế web, lập trình PHP… được học tập và rèn luyện cùng đội ngũ lập trình viên phát triển NukeViet.', 'hoc-viec-tai-cong-ty-vinades.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_cong_trinh_da_thuc_hien_12`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_cong_trinh_da_thuc_hien_12` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_cong_trinh_da_thuc_hien_12`
--

INSERT INTO `nv4_vi_cong_trinh_da_thuc_hien_12` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 2, 0, 0, 0),
(6, 12, '1,12', 0, 1, 'Nguyễn Thế Hùng', 7, 1453192444, 1453192444, 1, 1453192444, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 13, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_cong_trinh_da_thuc_hien_admins`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_cong_trinh_da_thuc_hien_admins` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_cong_trinh_da_thuc_hien_block`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_cong_trinh_da_thuc_hien_block` (
  `bid` smallint(5) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_cong_trinh_da_thuc_hien_block`
--

INSERT INTO `nv4_vi_cong_trinh_da_thuc_hien_block` (`bid`, `id`, `weight`) VALUES
(1, 1, 1),
(2, 14, 7),
(2, 12, 9),
(2, 6, 12),
(2, 13, 8),
(2, 11, 10),
(2, 1, 11),
(2, 15, 6),
(2, 16, 5),
(2, 17, 4),
(2, 20, 3),
(2, 21, 2),
(2, 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_cong_trinh_da_thuc_hien_block_cat`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_cong_trinh_da_thuc_hien_block_cat` (
`bid` smallint(5) unsigned NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_cong_trinh_da_thuc_hien_block_cat`
--

INSERT INTO `nv4_vi_cong_trinh_da_thuc_hien_block_cat` (`bid`, `adddefault`, `numbers`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 0, 4, 'Tin tiêu điểm', 'Tin-tieu-diem', '', 'Tin tiêu điểm', 1, '', 1279945710, 1279956943),
(2, 1, 4, 'Tin mới nhất', 'Tin-moi-nhat', '', 'Tin mới nhất', 2, '', 1279945725, 1279956445);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_cong_trinh_da_thuc_hien_cat`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_cong_trinh_da_thuc_hien_cat` (
`catid` smallint(5) unsigned NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `descriptionhtml` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT '0',
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `newday` tinyint(2) unsigned NOT NULL DEFAULT '2',
  `featured` int(11) NOT NULL DEFAULT '0',
  `ad_block_cat` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `admins` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_cong_trinh_da_thuc_hien_cat`
--

INSERT INTO `nv4_vi_cong_trinh_da_thuc_hien_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `inhome`, `numlinks`, `newday`, `featured`, `ad_block_cat`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`) VALUES
(1, 0, 'Tin tức', '', 'Tin-tuc', '', '', '', 0, 1, 1, 0, 'viewcat_main_right', 3, '8,12,9', 1, 4, 2, 0, '', '', '', 1274986690, 1274986690, '6'),
(2, 0, 'Sản phẩm', '', 'San-pham', '', '', '', 0, 2, 5, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274986705, 1274986705, '6'),
(8, 1, 'Thông cáo báo chí', '', 'thong-cao-bao-chi', '', '', '', 0, 1, 2, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987105, 1274987244, '6'),
(9, 1, 'Tin công nghệ', '', 'Tin-cong-nghe', '', '', '', 0, 3, 4, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987212, 1274987212, '6'),
(10, 0, 'Đối tác', '', 'Doi-tac', '', '', '', 0, 3, 9, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987460, 1274987460, '6'),
(11, 0, 'Tuyển dụng', '', 'Tuyen-dung', '', '', '', 0, 4, 12, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987538, 1274987538, '6'),
(12, 1, 'Bản tin nội bộ', '', 'Ban-tin-noi-bo', '', '', '', 0, 2, 3, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987902, 1274987902, '6');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_cong_trinh_da_thuc_hien_config_post`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_cong_trinh_da_thuc_hien_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_cong_trinh_da_thuc_hien_detail`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_cong_trinh_da_thuc_hien_detail` (
  `id` int(11) unsigned NOT NULL,
  `bodyhtml` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sourcetext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0',
  `gid` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_cong_trinh_da_thuc_hien_detail`
--

INSERT INTO `nv4_vi_cong_trinh_da_thuc_hien_detail` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(1, '<p style="text-align: justify;">Để chuyên nghiệp hóa việc phát hành mã nguồn mở NukeViet, Ban quản trị NukeViet quyết định thành lập doanh nghiệp chuyên quản NukeViet mang tên Công ty cổ phần Phát triển nguồn mở Việt Nam (Viết tắt là VINADES.,JSC), chính thức ra mắt vào ngày 25-2-2010 (trụ sở tại Hà Nội) nhằm phát triển, phổ biến hệ thống NukeViet tại Việt Nam.<br /> <br /> Theo ông Nguyễn Anh Tú, Chủ tịch HĐQT VINADES, công ty sẽ phát triển bộ mã nguồn NukeViet nhất quán theo con đường mã nguồn mở đã chọn, chuyên nghiệp và quy mô hơn bao giờ hết. Đặc biệt là hoàn toàn miễn phí đúng tinh thần mã nguồn mở quốc tế.<br /> <br /> NukeViet là một hệ quản trị nội dung mã nguồn mở (Opensource Content Management System) thuần Việt từ nền tảng PHP-Nuke và cơ sở dữ liệu MySQL. Người sử dụng thường gọi NukeViet là portal vì nó có khả năng tích hợp nhiều ứng dụng trên nền web, cho phép người sử dụng có thể dễ dàng xuất bản và quản trị các nội dung của họ lên internet hoặc intranet.<br /> <br /> NukeViet cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng thêm các module, block... tạo sự dễ dàng cài đặt, quản lý, ngay cả với những người mới tiếp cận với website. Người dùng có thể tìm hiểu thêm thông tin và tải về sản phẩm tại địa chỉ http://nukeviet.vn</p><blockquote> <p style="text-align: justify;"> <em>Thông tin ra mắt công ty VINADES có thể tìm thấy trên trang 7 báo Hà Nội Mới ra ngày 25/02/2010 (<a href="http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm" target="_blank">xem chi tiết</a>), Bản tin tiếng Anh của đài tiếng nói Việt Nam ngày 26/02/2010 (<a href="http://english.vovnews.vn/Home/First-opensource-company-starts-operation/20102/112960.vov" target="_blank">xem chi tiết</a>); trang 7 báo An ninh Thủ Đô số 2858 ra vào thứ 2 ngày 01/03/2010 và các trang tin tức, báo điện tử khác.</em></p></blockquote>', 'http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm', 2, 0, 1, 1, 1, 0),
(6, '<div style="text-align: justify;">Tính đến năm 2015, ước tính có hơn 10.000 website đang sử dụng NukeViet. Nhu cầu triển khai NukeViet không chỉ dừng lại ở các cá nhân, doanh nghiệp, cơ sở giáo dục mà đã lan rộng ra khối chính phủ.</div><div style="text-align: justify;"><br  />Cộng đồng NukeViet cũng đã lớn mạnh hơn trước. Nếu như đầu năm 2010, ngoài Công ty VINADES chỉ có một vài công ty cung cấp dịch vụ cho NukeViet nhưng không chuyên, thì theo thống kê năm 2015 đã có hàng trăm doanh nghiệp đang cung cấp dịch vụ có liên quan đến NukeViet như: đào tạo NukeViet, thiết kế web, phát triển phần mềm, cung cấp giao diện, module... trên nền tảng NukeViet. Đặc biệt có nhiều doanh nghiệp hoàn toàn cung cấp dịch vụ thiết kế web, cung cấp giao diện, module... sử dụng nền tảng NukeViet. Nhiều sản phẩm phái sinh từ NukeViet đã ra đời, NukeViet được phát triển thành nhiều phần mềm quản lý sử dụng trên mạng LAN hay trên internet, được phát triển thành các phần mềm dùng riêng hay sử dụng như một nền tảng để cung cấp dịch vụ online, thậm chí đã được thử nghiệm tích hợp vào trong các thiết bị phần cứng để bán cùng thiết bị (NukeViet Captive Portal - dùng để quản lý người dùng truy cập internet, tích hợp trong thiết bị quản lý wifi)...<br  /><br  />Tuy nhiên, cùng với những cơ hội, cộng đồng NukeViet đang đứng trước một thách thức mới. NukeViet cần tập hợp tất cả các doanh nghiệp, tổ chức và cá nhân đang cung cấp dịch vụ cho NukeViet và liên kết các đơn vị này với nhau để giúp nhau chuyên nghiệp hóa, cùng nhau chia sẻ những cơ hội kinh doanh và trở lên lớn mạnh hơn.<br  /><br  />Nếu cộng đồng NukeViet có 500 công ty siêu nhỏ chỉ 2-3 người và những công ty này đứng riêng rẽ như hiện nay thì NukeViet mãi bé nhỏ và sẽ không làm được việc gì. Nhưng nếu 500 công ty này biết nhau, cùng làm một số việc, cùng tham gia phát triển NukeViet, đó sẽ là sức mạnh rất lớn cho một phần mềm nguồn mở như NukeViet, và đó cũng là cơ hội rất lớn để các công ty nhỏ ấy trở lên chuyên nghiệp và vững mạnh.<br  /><br  />Cho dù bạn là doanh nghiệp hay một nhóm kinh doanh, cho dù bạn đang cung cấp bất kỳ dịch vụ có liên quan trực tiếp đến NukeViet như: đào tạo NukeViet, thiết kế web, phát triển phần mềm, cung cấp giao diện, module... hoặc gián tiếp có liên quan đến NukeViet (ví dụ các công ty hosting, các nhà cung cấp dịch vụ thanh toán điện tử...). Bạn đều là một thành phần quan trọng của NukeViet. Dù bạn là công ty to hay một nhóm nhỏ, hãy đăng ký vào danh sách các đối tác của NukeViet để thiết lập kênh liên lạc với các doanh nghiệp khác trong cộng đồng NukeViet và nhận sự hỗ trợ từ Ban Quản Trị NukeViet cũng như từ các cơ quan nhà nước đang có nhu cầu tìm kiếm các đơn vị cung ứng dịch vụ cho NukeViet.<br  /><br  />Hãy gửi email cho Ban Quản Trị NukeViet về địa chỉ: admin@nukeviet.vn để đăng ký vào danh sách các đơn vị hỗ trợ NukeViet.<br  /><br  />Tiêu đề email: Đăng ký vào danh sách các đơn vị cung cấp dịch vụ dựa trên NukeViet<br  />Nội dung email: Thông tin về đơn vị, dịch vụ cung cấp.<br  /><br  />Hoặc gửi yêu cầu tại đây: <a href="http://nukeviet.vn/vi/contact/" target="_blank">http://nukeviet.vn/vi/contact/</a><br  /><br  />Mọi yêu cầu sẽ được phản hồi trong vòng 24h. Trường hợp không nhận được phản hồi, hãy liên hệ với Ban Quản Trị NukeViet qua các kênh liên lạc khác như:<br  /><br  />- Diễn đàn doanh nghiệp NukeViet: <a href="http://forum.nukeviet.vn/viewforum.php?f=4" target="_blank">http://forum.nukeviet.vn/viewforum.php?f=4</a><br  />- Fanpage NukeViet trên FaceBook: <a href="http://fb.com/nukeviet/" target="_blank">http://fb.com/nukeviet/</a><br  /><br  />Vui lòng truy cập địa chỉ sau để xem danh sách các đơn vị: <a href="https://nukeviet.vn/vi/partner/" target="_blank">https://nukeviet.vn/vi/partner/</a></div>', 'http://vinades.vn/vi/news/thong-cao-bao-chi/Thu-moi-hop-tac-6/', 2, 0, 1, 1, 1, 0),
(7, 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href="/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html">Lập trình viên PHP và MySQL.</a></li><li><a href="/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href="/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style="font-size:16px;"><strong>1. Vị trí dự tuyển:</strong></span> Lập trình viên PHP và MySQL<br /><br /><span style="font-size:16px;"><strong>2. Mô tả công việc:</strong></span><ul><li>Phát triển hệ thống NukeViet.</li><li>Phân tích yêu cầu và lập trình riêng cho các dự án cụ thể.</li><li>Thực hiện các công đoạn để dưa website vào hoạt động như upload dữ liệu lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng, trải nghiệm người dùng của sản phẩm trong khi sản phẩm hoạt động.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><span style="font-size:16px;"><strong>3. Yêu cầu:</strong></span><ul><li>Nắm vững kiến thức hướng đối tượng, cấu trúc dữ liệu và giải thuật.</li><li>Có kinh nghiệm về PHP và các hệ cơ sở dữ liệu MySQL.…</li><li>Tư duy lập trình tốt, thiết kế CSDL chuẩn, biết xử lý nhanh các vấn đề khi phát sinh nghiệp vụ mới.</li><li>Sửa được các lỗi, nâng cấp tính năng cho các module đã có. 6. Viết module mới.</li><li>Biết đưa website lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo.</li><li>Đam mê công việc về lập trình web.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt.</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng.</li></ul><br /><span style="font-size:16px;"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style="font-size:16px;"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style="font-size:16px;"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href="http://vinades.vn/vi/news/Tuyen-dung/">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style="font-size:16px;"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (file mềm)</strong></em> và gửi về hòm thư <a href="mailto:tuyendung@vinades.vn">tuyendung@vinades.vn</a><br /><br /><span style="font-size:16px;"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style="text-align: justify;"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style="text-align: justify;"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-4-85872007 - Fax: +84-4-35500914<br />- Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a> - Website: <a href="http://www.vinades.vn/">http://www.vinades.vn</a></div></blockquote>', 'http://vinades.vn/vi/news/Tuyen-dung/', 2, 0, 1, 1, 1, 0),
(8, 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href="/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html">Lập trình viên PHP và MySQL.</a></li><li><a href="/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href="/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style="font-size:16px;"><strong>1. Vị trí dự tuyển:</strong></span> Chuyên viên đồ hoạ.<br /><br /><span style="font-size:16px;"><strong>2. Mô tả công việc:</strong></span><br /><br /><em><strong>Công việc chính:</strong></em><ul><li>Thiết kế layout, banner, logo website theo yêu cầu của dự án.</li><li>Đưa ra sản phẩm sáng tạo dựa trên ý tưởng của khách hàng.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><em><strong>Ngoài ra bạn cần có khả năng thực hiện các công việc sau:</strong></em><ul><li>Cắt và ghép giao diện cho hệ thống.</li><li>Valid CSS, xHTML.</li></ul><br /><span style="font-size:16px;"><strong>3. Yêu cầu:</strong></span><ul><li>Sử dụng thành thạo phần mềm thiết kế: Photoshop ngoài ra cần biết cách sử dụng các phần mềm thiết kế khác là một lợi thế.</li><li>Có kiến thức cơ bản về thiết kế website: Am hiểu các dạng layout, thành phần của một website.</li><li>Có kinh nghiệm, kỹ năng thiết kế giao diện web, logo, banner.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo, tính thẩm mỹ tốt</li><li>Đam mê công việc thiết kế và website.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt</li><li>Am hiểu về Responsive và có thể thiết kế giao diện, layout trên mobile (Boostrap).</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Sử dụng thành thạo HTML5, CSS3 &amp; Javascrip/Jquery và Xtemplate</li><li>Khả năng chuyển PSD sang NukeViet tốt.</li><li>Hiểu rõ và nắm chắc cách làm Theme/Template.</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng</li></ul><br /><span style="font-size:16px;"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style="font-size:16px;"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style="font-size:16px;"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href="http://vinades.vn/vi/news/Tuyen-dung/">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style="font-size:16px;"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (file mềm)</strong></em> và gửi về hòm thư <a href="mailto:tuyendung@vinades.vn">tuyendung@vinades.vn</a><br /><br /><span style="font-size:16px;"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style="text-align: justify;"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style="text-align: justify;"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-4-85872007 - Fax: +84-4-35500914<br />- Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a> - Website: <a href="http://www.vinades.vn/">http://www.vinades.vn</a></div></blockquote>', '', 2, 0, 1, 1, 1, 0),
(9, 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href="/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html">Lập trình viên PHP và MySQL.</a></li><li><a href="/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href="/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style="font-size:16px;"><strong>1. Vị trí dự tuyển:</strong></span> Lập trình viên front-end (HTML/ CSS/ JS)<br /><br /><span style="font-size:16px;"><strong>2. Mô tả công việc:</strong></span><ul><li>Cắt, làm giao diện website từ bản thiết kế (sử dụng Photoshop) trên nền hệ thống NukeViet.</li><li>Tham gia vào việc phát triển Front-End các ứng dụng nền web.</li><li>Thực hiện các công đoạn để dưa website vào hoạt động như upload dữ liệu lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng, trải nghiệm người dùng, thẩm mỹ của sản phẩm trong khi sản phẩm hoạt động Tham mưu, tư vấn về chất lượng, thẩm mỹ, trải nghiệm người dùng về các sản phẩm.</li><li>Đảm bảo website theo các tiêu chuẩn web (W3c, XHTML, CSS 3.0, Tableless, no inline style, … ).</li><li>Đảm bảo website hiển thị đúng trên tất cả các trình duyệt.</li><li>Đảm bảo website theo chuẩn “Responsive Web Design.</li><li>Đảm bảo việc đưa sản phẩm thiết kế đến người dùng cuối cùng một cách chính xác và đẹp.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><span style="font-size:16px;"><strong>3. Yêu cầu:</strong></span><ul><li>Có kiến thức cơ bản về thiết kế website: Am hiểu các dạng layout, thành phần của một website.</li><li>Hiểu rõ và nắm chắc cách làm Theme/Template.</li><li>Sử dụng thành thạo HTML5, CSS3 &amp; Javascrip/Jquery và Xtemplate</li><li>Khả năng chuyển PSD sang NukeViet tốt.</li><li>Biết đưa website lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo, tính thẩm mỹ tốt.</li><li>Đam mê công việc về web.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt.</li><li>Am hiểu về Responsive và có thể thiết kế giao diện, layout trên mobile (Boostrap).</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng.</li></ul><br /><span style="font-size:16px;"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style="font-size:16px;"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style="font-size:16px;"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href="http://vinades.vn/vi/news/Tuyen-dung/">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style="font-size:16px;"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (file mềm)</strong></em> và gửi về hòm thư <a href="mailto:tuyendung@vinades.vn">tuyendung@vinades.vn</a><br /><br /><span style="font-size:16px;"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style="text-align: justify;"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style="text-align: justify;"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-4-85872007 - Fax: +84-4-35500914<br />- Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a> - Website: <a href="http://www.vinades.vn/">http://www.vinades.vn</a></div></blockquote>', '', 2, 0, 1, 1, 1, 0);
INSERT INTO `nv4_vi_cong_trinh_da_thuc_hien_detail` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(10, 'Cả hội trường như vỡ òa, rộn tiếng vỗ tay, tiếng cười nói chúc mừng các nhà khoa học, các nhóm tác giả đoạt Giải thưởng Nhân tài Đất Việt năm 2011. Năm thứ 7 liên tiếp, Giải thưởng đã phát hiện và tôn vinh nhiều tài năng của đất nước.<div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/01_b7d3f.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Sân khấu trước lễ trao giải.</span></div><div> &nbsp;</div><div align="center"> &nbsp;</div><div align="left"> Cơ cấu Giải thưởng của Nhân tài Đất Việt 2011 trong lĩnh vực CNTT bao gồm 2 hệ thống giải dành cho “Sản phẩm có tiềm năng ứng dụng” và “Sản phẩm đã ứng dụng rộng rãi trong thực tế”. Mỗi hệ thống giải sẽ có 1 giải Nhất, 1 giải Nhì và 1 giải Ba với trị giá giải thưởng tương đương là 100 triệu đồng, 50 triệu đồng và 30 triệu đồng cùng phần thưởng của các đơn vị tài trợ.</div><div align="center"> &nbsp;</div><div align="center"> <div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/03_f19bd.jpg" width="350" /></div> <div align="center"> Nhiều tác giả, nhóm tác giả đến lễ trao giải từ rất sớm.</div></div><p> Giải thưởng Nhân tài Đất Việt 2011 trong lĩnh vực Khoa học Tự nhiên được gọi chính thức là Giải thưởng Khoa học Tự nhiên Việt Nam sẽ có tối đa 6 giải, trị giá 100 triệu đồng/giải dành cho các lĩnh vực: Toán học, Cơ học, Vật lý, Hoá học, Các khoa học về sự sống, Các khoa học về trái đất (gồm cả biển) và môi trường, và các lĩnh vực khoa học liên ngành hoặc đa ngành của hai hoặc nhiều ngành nói trên. Viện Khoa học và Công nghệ Việt Nam thành lập Hội đồng giám khảo gồm các nhà khoa học tự nhiên hàng đầu trong nước để thực hiện việc đánh giá và trao giải.</p><div> Sau thành công của việc trao Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y dược năm 2010, Ban Tổ chức tiếp tục tìm kiếm những chủ nhân xứng đáng cho Giải thưởng này trong năm 2011.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/07_78b85.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam Lê Khả Phiêu tới&nbsp;dự Lễ trao giải.</span></div><div> &nbsp;</div><div> 45 phút trước lễ trao giải, không khí tại Cung Văn hóa Hữu nghị Việt - Xô đã trở nên nhộn nhịp. Sảnh phía trước Cung gần như chật kín. Rất đông bạn trẻ yêu thích công nghệ thông tin, sinh viên các trường đại học đã đổ về đây, cùng với đó là những bó hoa tươi tắn sẽ được dành cho các tác giả, nhóm tác giả đoạt giải.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/09_aef87.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Phó Chủ tịch nước CHXHCN Việt Nam Nguyễn Thị Doan.</span></div><div> &nbsp;</div><div> Các vị khách quý cũng đến từ rất sớm. Tới tham dự lễ trao giải năm nay có ông Lê Khả Phiêu, nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam; bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCN Việt Nam; ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam; ông Nguyễn Bắc Son, Bộ trưởng Bộ Thông tin và Truyền thông; ông Đặng Ngọc Tùng, Chủ tịch Tổng Liên đoàn lao động Việt Nam; ông Phạm Văn Linh, Phó trưởng ban Tuyên giáo Trung ương; ông Đỗ Trung Tá, Phái viên của Thủ tướng Chính phủ về CNTT, Chủ tịch Hội đồng Khoa học công nghệ quốc gia; ông Nguyễn Quốc Triệu, nguyên Bộ trưởng Bộ Y tế, Trưởng Ban Bảo vệ Sức khỏe TƯ; bà Cù Thị Hậu, Chủ tịch Hội người cao tuổi Việt Nam; ông Lê Doãn Hợp, nguyên Bộ trưởng Bộ Thông tin Truyền thông, Chủ tịch Hội thông tin truyền thông số…</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/08_ba46c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Bộ trưởng Bộ Thông tin và Truyền thông Nguyễn Bắc Son.</span></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/06_29592.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Giáo sư - Viện sỹ Nguyễn Văn Hiệu.</span></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/04_051f2.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nguyên Bộ trưởng Bộ Y tế Nguyễn Quốc Triệu.</span></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/05_c7ea4.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam.</span></div><p> Do tuổi cao, sức yếu hoặc bận công tác không đến tham dự lễ trao giải nhưng Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang cũng gửi lẵng hoa đến chúc mừng lễ trao giải.</p><div> Đúng 20h, Lễ trao giải bắt đầu với bài hát “Nhân tài Đất Việt” do ca sỹ Thái Thùy Linh cùng ca sĩ nhí và nhóm múa biểu diễn. Các nhóm tác giả tham dự Giải thưởng năm 2011 và những tác giả của các năm trước từ từ bước ra sân khấu trong tiếng vỗ tay tán dương của khán giả.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/12_74abf.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN15999_3e629.jpg" style="MARGIN: 5px" width="450" /></div></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Tiết mục mở màn Lễ trao giải.</span></div><p> Trước Lễ trao giải Giải thưởng Nhân tài Đất Việt năm 2011, Đại tướng Võ Nguyên Giáp, Chủ tịch danh dự Hội Khuyến học Việt Nam, đã gửi thư chúc mừng, khích lệ Ban tổ chức Giải thưởng cũng như các nhà khoa học, các tác giả tham dự.</p><blockquote> <p> <em><span style="FONT-STYLE: italic">Hà Nội, ngày 16 tháng 11 năm 2011</span></em></p> <div> <em>Giải thưởng “Nhân tài đất Việt” do Hội Khuyến học Việt Nam khởi xướng đã bước vào năm thứ bảy (2005 - 2011) với ba lĩnh vực: Công nghệ thông tin, Khoa học tự nhiên và Y dược.</em></div></blockquote><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/thuDaituong1_767f4.jpg" style="MARGIN: 5px" width="400" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Thư của Đại tướng Võ Nguyên Giáp gửi BTC Giải thưởng Nhân tài đất Việt.</span></div><blockquote> <p> <em>Tôi gửi lời chúc mừng các nhà khoa học và các thí sinh được nhận giải thưởng “Nhân tài đất Việt” năm nay.</em></p> <p> <em>Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực.</em></p> <p> <em>Nhân ngày “Nhà giáo Việt Nam”, chúc Hội Khuyến học Việt nam, chúc các thầy giáo và cô giáo, với tâm huyết và trí tuệ của mình, sẽ đóng góp xứng đáng vào công cuộc đổi mới căn bản và toàn diện nền giáo dục nước nhà, để cho nền giáo dục Việt Nam thực sự là cội nguồn của nguyên khí quốc gia, đảm bảo cho mọi nhân cách và tài năng đất Việt được vun đắp và phát huy vì sự trường tồn, sự phát triển tiến bộ và bền vững của đất nước trong thời đại toàn cầu hóa và hội nhập quốc tế.</em></p> <p> <em>Chào thân ái,</em></p> <p> <strong><em>Chủ tịch danh dự Hội Khuyến học Việt Nam</em></strong></p> <p> <strong><em>Đại tướng Võ Nguyên Giáp</em></strong></p></blockquote><p> Phát biểu khai mạc Lễ trao giải, Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng Ban tổ chức, bày tỏ lời cám ơn chân thành về những tình cảm cao đẹp và sự quan tâm chăm sóc của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang đã và đang dành cho Nhân tài Đất Việt.</p><div> Nhà báo Phạm Huy Hoàn nhấn mạnh, Giải thưởng Nhân tài Đất Việt suốt 7 năm qua đều nhận được sự quan tâm của các vị lãnh đạo Đảng, Nhà nước và của toàn xã hội. Tại Lễ trao giải, Ban tổ chức luôn có vinh dự được đón tiếp&nbsp;các vị lãnh đạo&nbsp; Đảng và Nhà nước đến dự và trực tiếp trao Giải thưởng.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/15_4670c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Trưởng Ban tổ chức Phạm Huy Hoàn phát biểu khai mạc buổi lễ.</span></div><p> Năm 2011, Giải thưởng có 3 lĩnh vực được xét trao giải là CNTT, Khoa học tự nhiên và Y dược. Lĩnh&nbsp; vực CNTT đã đón nhận 204 sản phẩm tham dự từ mọi miền đất nước và cả nước ngoài như thí sinh Nguyễn Thái Bình từ bang California - Hoa Kỳ và một thí sinh ở Pháp cũng đăng ký tham gia.</p><div> “Cùng với lĩnh vực CNTT, năm nay, Hội đồng khoa học của Viện khoa học và công nghệ Việt Nam và Hội đồng khoa học - Bộ Y tế tiếp tục giới thiệu những nhà khoa học xuất&nbsp; sắc, có công trình nghiên cứu đem lại nhiều lợi ích cho xã hội trong lĩnh vực khoa học tự nhiên và lĩnh vực y dược. Đó là những bác sĩ tài năng, những nhà khoa học mẫn tuệ, những người đang ngày đêm thầm lặng cống hiến trí tuệ sáng tạo của mình cho xã hội trong công cuộc xây dựng đất nước.” - nhà báo Phạm Huy Hoàn nói.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/14_6e18f.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng BTC Giải thưởng và ông Phan Hoàng Đức, Phó TGĐ Tập đoàn VNPT nhận lẵng hoa chúc mừng của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang.</span></div><p> Cũng theo Trưởng Ban tổ chức Phạm Huy Hoàn, đến nay, vị Chủ tịch danh dự đầu tiên của Hội Khuyến học Việt Nam, Đại tướng Võ Nguyên Giáp, đã bước qua tuổi 100 nhưng vẫn luôn dõi theo và động viên từng bước phát triển của Giải thưởng Nhân tài Đất Việt. Đại tướng luôn quan tâm chăm sóc Giải thưởng ngay từ khi Giải thưởng&nbsp; mới ra đời cách đây 7 năm.</p><p> Trước lễ trao giải, Đại tướng Võ Nguyên Giáp đã gửi thư chúc mừng, động viên Ban tổ chức. Trong thư, Đại tướng viết: “Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực.</p><p> Sau phần khai mạc, cả hội trường hồi hội chờ đợi phút vinh danh các nhà khoa học và các tác giả, nhóm tác giả đoạt giải.</p><div> <span style="FONT-WEIGHT: bold">* Giải thưởng Khoa học Tự nhiên Việt Nam </span>thuộc về 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ - Viện Vật lý, Viện Khoa học công nghệ Việt Nam với công trình “Nghiên cứu cấu trúc hạt nhân và các phản ứng hạt nhân”.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn_d4aae.jpg" style="MARGIN: 5px" width="450" /></div></div><p> Hai nhà khoa học đã tiến hành thành công các nghiên cứu về phản ứng hạt nhân với nơtron, phản ứng quang hạt nhân, quang phân hạch và các phản ứng hạt nhân khác có cơ chế phức tạp trên các máy gia tốc như máy phát nơtron, Microtron và các máy gia tốc thẳng của Việt Nam và Quốc tế. Các nghiên cứu này đã góp phần làm sáng tỏ cấu trúc hạt nhân và cơ chế phản ứng hạt nhân, đồng thời cung cấp nhiều số liệu hạt nhân mới có giá trị cho Kho tàng số liệu hạt nhân.</p><p> GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ đã khai thác hiệu quả hai máy gia tốc đầu tiên của Việt Nam là máy phát nơtron NA-3-C và Microtron MT-17 trong nghiên cứu cơ bản, nghiên cứu ứng dụng và đào tạo nhân lực. Trên cơ sở các thiết bị này, hai nhà khoa học đã tiến hành thành công những nghiên cứu cơ bản thực nghiệm đầu tiên về phản ứng hạt nhân ở Việt Nam; nghiên cứu và phát triển các phương pháp phân tích hạt nhân hiện đại và áp dụng thành công ở Việt Nam.</p><div> Bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCNVN và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn2_e2865.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Phó Chủ tịch nước CHXHCNVN Nguyễn Thị Doan và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ.</span></div><p> GS.VS Nguyễn Văn Hiệu chia sẻ: “Cách đây không lâu, Chính phủ đã ký quyết định xây dựng nhà máy điện hạt nhân trong điều kiện đất nước còn nhỏ bé, nghèo khó và vì thế việc đào tạo nhân lực là nhiệm vụ số 1 hiện nay. Rất may, Việt Nam có 2 nhà khoa học cực kỳ tâm huyết và nổi tiếng trong cả nước cũng như trên thế giới. Hội đồng khoa học chúng tôi muốn xướng tên 2 nhà khoa học này để Chính phủ huy động cùng phát triển xây dựng nhà máy điện hạt nhân.”</p><p> GS.VS Hiệu nhấn mạnh, mặc dù điều kiện làm việc của 2 nhà khoa học không được quan tâm, làm việc trên những máy móc cũ kỹ được mua từ năm 1992 nhưng 2 ông vẫn xay mê cống hiến hết mình cho lĩnh Khoa học tự nhiên Việt Nam.</p><p> <span style="FONT-WEIGHT: bold">* Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y Dược:</span> 2 giải</p><div> <span style="FONT-WEIGHT: bold">1.</span> Nhóm nghiên cứu của Bệnh viện Hữu nghị Việt - Đức với công trình <span style="FONT-STYLE: italic">“Nghiên cứu triển khai ghép gan, thận, tim lấy từ người cho chết não”</span>.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y_3dca2.jpg" style="MARGIN: 5px" width="450" /></div></div><div> &nbsp;</div><div> Tại bệnh viện Việt Đức, tháng 4/2011, các ca ghép tạng từ nguồn cho là người bệnh chết não được triển khai liên tục. Với 4 người cho chết não hiến tạng, bệnh viện đã ghép tim cho một trường hợp,&nbsp;2 người được ghép gan, 8 người được ghép thận, 2 người được ghép van tim và tất cả các ca ghép này đều thành công, người bệnh được ghép đã có một cuộc sống tốt hơn với tình trạng sức khỏe ổn định.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y2_cb5a1.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nguyên Tổng Bí Ban chấp hành TW Đảng CSVN Lê Khả Phiêu và ông Vũ Văn Tiền, Chủ tịch Hội đồng quản trị Ngân hàng An Bình trao giải thưởng cho nhóm nghiên cứu của BV Hữu nghị Việt - Đức.</span></div><p> Công trong việc ghép tạng từ người cho chết não không chỉ thể hiện năng lực, trình độ, tay nghề của bác sĩ Việt Nam mà nó còn mang một ý nghĩa nhân văn to lớn, mang một thông điệp gửi đến những con người giàu lòng nhân ái với nghĩa cử cao đẹp đã hiến tạng để cứu sống những người bệnh khác.</p><p> <span style="FONT-WEIGHT: bold">2.</span> Hội đồng ghép tim Bệnh viện Trung ương Huế với công trình nghiên cứu <span style="FONT-STYLE: italic">“Triển khai ghép tim trên người lấy từ người cho chết não”</span>.</p><div> Đề tài được thực hiện dựa trên ca mổ ghép tim thành công lần đầu tiên ở Việt Nam của chính 100% đội ngũ y, bác sĩ của Bệnh viện Trung ương Huế đầu tháng 3/2011. Bệnh nhân được ghép tim thành công là anh Trần Mậu Đức (26 tuổi, ở phường Phú Hội, TP. Huế).</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y3_7768c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Hội đồng ghép tim BV Trung ương Huế nhận Giải thưởng Nhân tài Đất Việt.</span></div><p> Ghép tim từ người cho chết não đến người bị bệnh tim cần được ghép tim phải đảm bảo các yêu cầu: đánh giá chức năng các cơ quan; đánh giá tương hợp miễn dịch và phát hiện nguy cơ tiềm ẩn có thể xảy ra trong và sau khi ghép tim để từ đó có phương thức điều trị thích hợp. Có tới 30 xét nghiệm cận lâm sàng trung và cao cấp tiến hành cho cả người cho tim chết não và người sẽ nhận ghép tim tại hệ thống labo của bệnh viện.</p><p> ---------------------</p><p> <span style="FONT-WEIGHT: bold">* Giải thưởng Nhân tài đất Việt Lĩnh vực Công nghệ thông tin.</span></p><p> <span style="FONT-STYLE: italic">Hệ thống sản phẩm đã ứng dụng thực tế:</span></p><p> <span style="FONT-STYLE: italic">Giải Nhất:</span> Không có.</p><p> <span style="FONT-STYLE: italic">Giải Nhì:</span> Không có</p><p> <span style="FONT-STYLE: italic">Giải Ba:</span> 3 giải, mỗi giải trị giá 30 triệu đồng.</p><div> <span style="FONT-WEIGHT: bold">1.</span> <span style="FONT-STYLE: italic">“Bộ cạc xử lý tín hiệu HDTV”</span> của nhóm HD Việt Nam.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/hdtv_13b10.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhóm HDTV Việt Nam lên nhận giải.</span></div><p> Đây là bộ cạc xử lý tín hiệu HDTV đầu tiên tại Việt Nam đạt tiêu chuẩn OpenGear. Bộ thiết bị bao gồm 2 sản phẩm là cạc khuếch đại phân chia tín hiệu HD DA và cạc xử lý tín hiệu HD FX1. Nhờ bộ cạc này mà người sử dụng cũng có thể điều chỉnh mức âm thanh hoặc video để tín hiệu của kênh tuân theo mức chuẩn và không phụ thuộc vào chương trình đầu vào.</p><div> <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">2.</span> <span style="FONT-STYLE: italic">“Mã nguồn mở NukeViet”</span> của nhóm tác giả Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC).</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" alt="NukeViet nhận giải ba Nhân tài đất Việt 2011" src="/uploads/news/nukeviet-nhantaidatviet2011.jpg" style="margin: 5px; width: 450px; height: 301px;" /></div></div><p> NukeViet là CMS mã nguồn mở đầu tiên của Việt Nam có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là VINADES.,JSC - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp.</p><div> <span style="FONT-WEIGHT: bold">3.</span> <span style="FONT-STYLE: italic">“Hệ thống ngôi nhà thông minh homeON”</span> của nhóm Smart home group.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16132_82014.jpg" style="MARGIN: 5px" width="450" /></div></div><p> Sản phẩm là kết quả từ những nghiên cứu miệt mài nhằm xây dựng một ngôi nhà thông minh, một cuộc sống xanh với tiêu chí: An toàn, tiện nghi, sang trọng và tiết kiệm năng lượng, hưởng ứng lời kêu gọi tiết kiệm năng lượng của Chính phủ.&nbsp;</p><p> <strong><span style="FONT-STYLE: italic">* Hệ thống sản phẩm có tiềm năng ứng dụng:</span></strong></p><p> <span style="FONT-STYLE: italic">Giải Nhất: </span>Không có.</p><div> <span style="FONT-STYLE: italic">Giải Nhì:</span> trị giá 50 triệu đồng: <span style="FONT-STYLE: italic">“Dịch vụ Thông tin và Tri thức du lịch ứng dụng cộng nghệ ngữ nghĩa - iCompanion”</span> của nhóm tác giả SIG.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/nhi_7eee0.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhóm tác giả SIG nhận giải Nhì Nhân tài đất Việt 2011 ở hệ thống sản phẩm có tiềm năng ứng dụng.</span></div><p> ICompanion là hệ thống thông tin đầu tiên ứng dụng công nghệ ngữ nghĩa trong lĩnh vực du lịch - với đặc thù khác biệt là cung cấp các dịch vụ tìm kiếm, gợi ý thông tin “thông minh” hơn, hướng người dùng và kết hợp khai thác các tính năng hiện đại của môi trường di động.</p><p> Đại diện nhóm SIG chia sẻ: “Tinh thần sáng tạo và lòng khát khao muốn được tạo ra các sản phẩm mới có khả năng ứng dụng cao trong thực tiễn luôn có trong lòng của những người trẻ Việt Nam. Cảm ơn ban tổ chức và những nhà tài trợ đã giúp chúng tôi có một sân chơi thú vị để khuyến khích và chắp cánh thực hiện ước mơ của mình. Xin cảm ơn trường ĐH Bách Khoa đã tạo ra một môi trường nghiên cứu và sáng tạo, gắn kết 5 thành viên trong nhóm.”</p><p> <span style="FONT-STYLE: italic">Giải Ba:</span> 2 giải, mỗi giải trị giá 30 triệu đồng.</p><div> <span style="FONT-WEIGHT: bold">1. </span><span style="FONT-STYLE: italic">“Bộ điều khiển IPNET”</span> của nhóm IPNET</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16149_ed58d.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhà báo Phạm Huy Hoàn, Trưởng Ban Tổ chức Giải thưởng NTĐV, Tổng Biên tập báo điện tử Dân trí và ông Tạ Hữu Thanh - Phó TGĐ Jetstar Pacific trao giải cho nhóm IPNET.</span></div><p> Bằng cách sử dụng kiến thức thiên văn học để tính giờ mặt trời lặn và mọc tại vị trí cần chiếu sáng được sáng định bởi kinh độ, vĩ độ cao độ, hàng ngày sản phẩm sẽ tính lại thời gian cần bật/tắt đèn cho phù hợp với giờ mặt trời lặn/mọc.</p><div> <span style="FONT-WEIGHT: bold">2.</span> <span style="FONT-STYLE: italic">“Hệ thống lập kế hoạch xạ trị ung thư quản lý thông tin bệnh nhân trên web - LYNX”</span> của nhóm LYNX.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/3tiem-nang_32fee.jpg" style="MARGIN: 5px" width="450" /></div></div><p> Đây là loại phần mềm hoàn toàn mới ở Việt Nam, là hệ thống lập kế hoạch và quản lý thông tin của bệnh nhân ung thư qua Internet (LYNX) dựa vào nền tảng Silverlight của Microsoft và kiến thức chuyên ngành Vật lý y học. LYNX giúp ích cho các nhà khoa học, bác sĩ, kỹ sư vật lý, bệnh nhân và mọi thành viên trong việc quản lý và theo dõi hệ thống xạ trị ung thư một cách tổng thể. LYNX có thể được sử dụng thông qua các thiết bị như máy tính cá nhân, máy tính bảng… và các trình duyệt Internet Explorer, Firefox, Chrome…</p><div> Chương trình trao giải đã được truyền hình trực tiếp trên VTV2 - Đài Truyền hình Việt Nam và tường thuật trực&nbsp;tuyến trên báo điện tử Dân trí từ 20h tối 20/11/2011.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0545_c898e.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0560_c995c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16199_36a5c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <div align="center"> <table border="1" cellpadding="0" cellspacing="0" width="90%"> <tbody> <tr> <td> <div> <span style="FONT-WEIGHT: bold"><span style="FONT-WEIGHT: normal; FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Khởi xướng từ năm 2005, Giải thưởng Nhân tài Đất Việt đã phát hiện và tôn vinh nhiều tài năng trong lĩnh vực CNTT-TT, Khoa học tự nhiên và Y dược, trở thành một sân chơi bổ ích cho những người yêu thích CNTT. Mỗi năm, Giải thưởng ngày càng thu hút số lượng tác giả và sản phẩm tham gia đông đảo và nhận được sự quan tâm sâu sắc của lãnh đạo Đảng, Nhà nước cũng như công chúng.</span></span></div> <div> <span style="FONT-WEIGHT: bold">&nbsp;</span></div> <div> <span style="FONT-WEIGHT: bold"><span style="FONT-WEIGHT: normal; FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Đối tượng tham gia Giải thưởng trong lĩnh vực CNTT là những người Việt Nam ở mọi lứa tuổi, đang sinh sống trong cũng như ngoài nước. Năm 2006, Giải thưởng có sự tham gia của thí sinh đến từ 8 nước trên thế giới và 40 tỉnh thành của Việt Nam. Từ năm 2009, Giải thưởng được mở rộng sang lĩnh vực Khoa học tự nhiên, và năm 2010 là lĩnh vực Y dược, vinh danh những nhà khoa học trong các lĩnh vực này.</span>&nbsp;</span></div> <div> <span style="FONT-WEIGHT: bold">&nbsp;</span></div> </td> </tr> </tbody> </table> </div></div>', '', 2, 0, 1, 1, 1, 0),
(11, '<div style="text-align: justify;">Có hiệu lực từ ngày 20/1/2015, Thông tư này thay thế cho Thông tư 41/2009/TT-BTTTT (Thông tư 41) ngày 30/12/2009 ban hành Danh mục các sản phẩm phần mềm nguồn mở đáp ứng yêu cầu sử dụng trong cơ quan, tổ chức nhà nước.<br />\r\n<br />\r\nSản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước trong Thông tư 41/2009/TT-BTTTT vừa được Bộ TT&amp;TT ban hành, là những&nbsp;sản phẩm đã đáp ứng các tiêu chí về tính năng kỹ thuật cũng như tính mở và bền vững, và NukeViet là một trong số đó.</div>\r\n\r\n<p style="text-align: justify;">Cụ thể, theo Thông tư 20, sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước phải đáp các tiêu chí về chức năng, tính năng kỹ thuật bao gồm: phần mềm có các chức năng, tính năng kỹ thuật phù hợp với các yêu cầu nghiệp vụ hoặc các quy định, hướng dẫn tương ứng về ứng dụng CNTT trong các cơ quan, tổ chức nhà nước; phần mềm đáp ứng được yêu cầu tương thích với hệ thống thông tin, cơ sở dữ liệu hiện có của các cơ quan, tổ chức.</p>\r\n\r\n<p style="text-align: justify;">Bên cạnh đó, các sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước còn phải đáp ứng tiêu chí về tính mở và tính bền vững của phần mềm. Cụ thể, phần mềm phải đảm bảo các quyền: tự do sử dụng phần mềm không phải trả phí bản quyền, tự do phân phối lại phần mềm, tự do sửa đổi phần mềm theo nhu cầu sử dụng, tự do phân phối lại phần mềm đã chỉnh sửa (có thể thu phí hoặc miễn phí); phần mềm phải có bản mã nguồn, bản cài đặt được cung cấp miễn phí trên mạng; có điểm ngưỡng thất bại PoF từ 50 điểm trở xuống và điểm mô hình độ chín nguồn mở OSMM từ 60 điểm trở lên.</p>\r\n\r\n<p style="text-align: justify;">Căn cứ những tiêu chuẩn trên, thông tư 20 quy định cụ thể Danh mục 31 sản phẩm thuộc 11 loại phần mềm được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước.&nbsp;NukeViet thuộc danh mục hệ quản trị nội dung nguồn mở. Chi tiết thông tư và danh sách 31 sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước có&nbsp;<a href="http://vinades.vn/vi/download/van-ban-luat/Thong-tu-20-2014-TT-BTTTT/" target="_blank">tại đây</a>.</p>\r\n\r\n<p style="text-align: justify;">Thông tư 20/2014/TT-BTTTT quy định rõ: Các cơ quan, tổ chức nhà nước khi có nhu cầu sử dụng vốn nhà nước để đầu tư xây dựng, mua sắm hoặc thuê sử dụng các loại phần mềm có trong Danh mục hoặc các loại phần mềm trên thị trường đã có sản phẩm phần mềm nguồn mở tương ứng thỏa mãn các tiêu chí trên (quy định tại Điều 3 Thông tư 20) thì phải&nbsp;ưu tiên lựa chọn các sản phẩm phần mềm nguồn mở tương ứng, đồng thời phải thể hiện rõ sự ưu tiên này trong các tài liệu&nbsp;như thiết kế sơ bộ, thiết kế thi công, kế hoạch đấu thầu, kế hoạch đầu tư, hồ sơ mời thầu, yêu cầu chào hàng, yêu cầu báo giá hoặc các yêu cầu mua sắm khác.</p>\r\n\r\n<p style="text-align: justify;">Đồng thời,&nbsp;các cơ quan, tổ chức nhà nước phải đảm bảo không đưa ra các yêu cầu, điều kiện, tính năng kỹ thuật có thể dẫn đến việc loại bỏ các sản phẩm phần mềm nguồn mở&nbsp;trong các tài liệu như thiết kế sơ bộ, thiết kế thi công, kế hoạch đấu thầu, kế hoạch đầu tư, hồ sơ mời thầu, yêu cầu chào hàng, yêu cầu báo giá hoặc các yêu cầu mua sắm khác.</p>\r\n\r\n<p style="text-align: justify;">Như vậy, sau thông tư số 08/2010/TT-BGDĐT của Bộ GD&amp;ĐT ban hành ngày 01-03-2010 quy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục trong đó đưa NukeViet vào danh sách các mã nguồn mở được khuyến khích sử dụng trong giáo dục, thông tư 20/2014/TT-BTTTT đã mở đường cho NukeViet vào sử dụng cho các cơ quan, tổ chức nhà nước. Các đơn vị hỗ trợ triển khai NukeViet cho các cơ quan nhà nước có thể sử dụng quy định này để được ưu tiên triển khai cho các dự án website, cổng thông tin cho các cơ quan, tổ chức nhà nước.<br />\r\n<br />\r\nThời gian tới, Công ty cổ phần phát triển nguồn mở Việt Nam (<a href="http://vinades.vn/" target="_blank">VINADES.,JSC</a>) - đơn vị chủ quản của NukeViet - sẽ cùng với Ban Quản Trị NukeViet tiếp tục hỗ trợ các doanh nghiệp đào tạo nguồn nhân lực chính quy phát triển NukeViet nhằm cung cấp dịch vụ ngày một tốt hơn cho chính phủ và các cơ quan nhà nước, từng bước xây dựng và hình thành liên minh các doanh nghiệp phát triển NukeViet, đưa sản phẩm phần mềm nguồn mở Việt không những phục vụ tốt thị trường Việt Nam mà còn từng bước tiến ra thị trường khu vực và các nước đang phát triển khác trên thế giới nhờ vào lợi thế phần mềm nguồn mở đang được chính phủ nhiều nước ưu tiên phát triển.</p>', 'mic.gov.vn', 2, 0, 1, 1, 1, 0),
(12, '<div style="text-align: justify;">Trong năm 2016, chúng tôi xác định là đơn vị sát cánh cùng các đơn vị giáo dục- là đơn vị xây dựng nhiều website cho ngành giáo dục nhất trên cả nước.<br  />Với phần mềm mã nguồn mở NukeViet hiện có nhiều lợi thế:<br  />+ Được Bộ giáo dục khuyến khích sử dụng.<br  />+ Được bộ thông tin truyền thông chỉ định sử dụng trong khối cơ quan nhà nước.<br  />+Được cục công nghệ thông tin ghi rõ tên sản phẩm NukeViet nên dùng theo hướng dẫn thực hiện CNTT 2015-2016.<br  />Chúng tôi cần các bạn góp phần xây dựng nền giáo dục nước nhà ngày càng phát triển.</div><div>&nbsp;</div><table align="left" border="1" cellpadding="20" cellspacing="0" class="table table-striped table-bordered table-hover" style="width:100%;" width="653">	<tbody>		<tr>			<td style="width: 27.66%;"><strong>Vị trí tuyển dụng:</strong></td>			<td style="width: 72.34%;">Nhân viên kinh doanh</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Chức vụ:</strong></td>			<td style="width: 72.34%;">Nhân viên</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Ngành nghề:</strong></td>			<td style="width: 72.34%;"><strong>Sản phẩm:</strong><br  />			Cổng thông tin, website cho các phòng, sở giáo dục và đào tạo các trường học.</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Hình thức làm việc:</strong></td>			<td style="width: 72.34%;">Toàn thời gian cố định</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Địa điểm làm việc:</strong></td>			<td style="width: 72.34%;">Văn phòng công ty (Được đi công tác theo hợp đồng đã ký)</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Mức lương:</strong></td>			<td style="width: 72.34%;">&nbsp;Lương cố định + Thưởng vượt doanh số + thưởng theo từng hợp đồng (từ 2-7%).</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Mô tả công việc:</strong></td>			<td style="width: 72.34%;">Chúng tôi có khách hàng mục tiêu và danh sách khách hàng, công việc đòi hỏi ứng viên sử dụng thành thạo vi tính văn phòng, các phần mềm liên quan đến công việc và có laptop để phục vụ công việc.<br  />			- Sales Online, quảng bá ký kết, liên kết, với các đối tác qua INTERNET. Xây dưng mối quan hệ phát triển bền vững với các đối tác.<br  />			- Gọi điện, giới thiệu dịch vụ, sản phẩm của công ty đến đối tác.<br  />			- Xử lý các cuộc gọi của khách hàng liên quan đến, sản phẩm, dịch vụ công ty.<br  />			- Đàm phán, thương thuyết, ký kết hợp đồng với khách hàng đang có nhu cầu thiết kế website , SEO website , PR thương hiệu trên Internet&nbsp;<br  />			- Duy trì và chăm sóc mối quan hệ lâu dài với khách hàng, mở rộng khách hàng tiềm năng nhằm thúc đẩy doanh số bán hàng<br  />			- Hỗ trợ khách hàng khi được yêu cầu</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Số lượng cần tuyển:</strong></td>			<td style="width: 72.34%;">05</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Quyền lợi được hưởng:</strong></td>			<td style="width: 72.34%;">- Được đào tạo kĩ năng bán hàng, được công ty hỗ trợ tham gia khóa học bán hàng chuyên nghiệp.<br  />			- Lương cứng: 3.000.000 VNĐ+ hoa hồng dự án (2-7%/năm/hợp đồng). Lương trả qua ATM, được xét tăng lương 3 tháng một lần dựa trên doanh thu.<br  />			- Bậc lương xét trên năng lực bán hàng.<br  />			- Thưởng theo dự án, các ngày lễ tết.<br  />			- Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội.<br  />			- Cơ hội làm việc và gắn bó lâu dài trong công ty, được thưởng cổ phần nếu doanh thu tốt.</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Số năm kinh nghiệm:</strong></td>			<td style="width: 72.34%;">Trên 6 tháng</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Yêu cầu bằng cấp:</strong></td>			<td style="width: 72.34%;">Cao đẳng, Đại học</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Yêu cầu giới tính:</strong></td>			<td style="width: 72.34%;">Không yêu cầu</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Yêu cầu độ tuổi:</strong></td>			<td style="width: 72.34%;">Không yêu cầu</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Yêu cầu khác:</strong></td>			<td style="width: 72.34%;">- Yêu thích và đam mê Internet Marketing, thích online, thương mại điện tử<br  />			- Giọng nói dễ nghe, không nói ngọng.<br  />			- Có khả năng giao tiếp qua điện thoại.<br  />			- Ngoại hình ưa nhìn là một lợi thế<br  />			- Có tính cẩn thận trong công việc, luôn cố gắng học hỏi.<br  />			- Kỹ năng sales online tốt.<br  />			-Trung thực, năng động, nhiệt tình,siêng năng, nhiệt huyết trong công việc.</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Hồ sơ bao gồm:</strong></td>			<td style="width: 72.34%;"><strong>* Yêu cầu Hồ sơ:</strong><br  />			<strong>Cách thức đăng ký dự tuyển</strong>: Làm Hồ sơ xin việc (file mềm) và gửi về hòm thư <a href="mailto:tuyendung@vinades.vn">tuyendung@vinades.vn</a><br  />			<br  />			<strong>Nội dung hồ sơ xin việc file mềm gồm</strong>:<br  />			<strong>+ Đơn xin việc:</strong>&nbsp;Theo hướng dẫn bên dưới.<br  />			<strong>+ Thông tin ứng viên:</strong>&nbsp;Theo mẫu của VINADES.,JSC <strong><em>(download tại đây:&nbsp;<a href="http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-kinh-doanh/">Mẫu lý lịch ứng viên</a>)</em></strong><br  />			<strong>* Hồ sơ xin việc (Bản in thông thường) bao gồm</strong>:<br  />			- Giấy khám sức khoẻ của cơ quan y tế.<br  />			- Bản sao hộ khẩu (có công chứng)<br  />			- Bản sao giấy khai sinh (có công chứng)<br  />			- Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn -bằng chứng chỉ (có công chứng)<br  />			- Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.<br  />			- Thư giới thiệu (nếu có)<br  />			- Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).<br  />			<br  />			<strong>*Hướng dẫn</strong>:<br  />			- Với bản in của hồ sơ ứng tuyển, ứng viên sẽ phải nộp trước cho Ban tuyển dụng hoặc muộn nhất là mang theo khi có lịch phỏng vấn. Bản in sẽ không được trả lại ngay cả khi ứng viên không đạt yêu cầu.<br  />			- Nếu không thể bố trí thời gian phỏng vấn như sắp xếp của -Ban tuyển dụng, thí sinh cần thông báo ngay để được đổi lịch.<br  />			- Nếu có bất cứ thắc mắc gì bạn có thể liên hệ với Ms. Thu qua email: tuyendung@vinades.vn. Có thể gọi điện theo số điện thoại: 01255723353</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Hạn nộp hồ sơ:</strong></td>			<td style="width: 72.34%;">Không hạn chế cho tới khi tuyển đủ.</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Hình thức nộp hồ sơ:</strong></td>			<td style="width: 72.34%;">Qua Email</td>		</tr>		<tr>			<td colspan="2" style="width:100.0%;">			<h3>THÔNG TIN LIÊN HỆ</h3>			</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Điện thoại liên hệ:</strong></td>			<td style="width: 72.34%;">01255723353- Ms. Thu</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Địa chỉ liên hệ:</strong></td>			<td style="width: 72.34%;">Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Email liên hệ:</strong></td><td style="width: 72.34%;">tuyendung@vinades.vn</td></tr></tbody></table>', '', 2, 0, 1, 1, 1, 0);
INSERT INTO `nv4_vi_cong_trinh_da_thuc_hien_detail` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(14, '<p style="text-align: justify;">Nếu bạn yêu thích công nghệ, thích kinh doanh hoặc lập trình web và mong muốn trải nghiệm, học hỏi, thậm chí là đi làm ngay từ khi còn ngồi trên ghế nhà trường, hãy tham gia chương trình thực tập sinh tại công ty VINADES.</p><p style="text-align: justify;">Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) là đơn vị chịu trách nhiệm chính trong việc phát triển phần mềm NukeViet và có nhiệm vụ hỗ trợ cộng đồng người dùng NukeViet &#91;<u><a href="http://vinades.vn/vi/about/history/" target="_blank">xem thêm giới thiệu về lịch sử hình thành VINADES</a></u>&#93;. Là công ty được thành lập từ cộng đồng phần mềm nguồn mở, hàng năm công ty dành những vị trí đặc biệt cho các bạn sinh viên được học tập, trải nghiệm, làm việc tại công ty.<br  />&nbsp;</p><h2 style="text-align: justify;"><b>C</b><b>ác vị trí thực tập</b></h2><ul>	<li style="text-align: justify;"><strong>Kinh doanh:</strong> Cổng thông tin doanh nghiệp, Cổng thông tin giáo dục Edu Gate…</li>	<li style="text-align: justify;"><strong>Kỹ thuật:</strong> Chuyên viên đồ họa, Lập trình viên…</li></ul><h2 style="text-align: justify;"><b>Quyền lợi của thực tập sinh</b></h2><ul>	<li style="text-align: justify;">Được&nbsp;tiếp xúc với văn hóa doanh nghiệp, trải nghiệm trong môi trường làm việc chuyên nghiệp, năng động.</li>	<li style="text-align: justify;">Được&nbsp;giao tiếp và học hỏi kiến thức từ những SEO, các lập trình viên chính của đội code NukeViet; qua đó&nbsp;nâng cao không chỉ kỹ năng chuyên môn liên quan đến công việc mà còn các kỹ năng mềm trong quá trình làm việc hàng ngày.</li>	<li style="text-align: justify;">Có cơ hội tìm hiểu, phát triển định hướng của bản thân.</li>	<li style="text-align: justify;">Tham gia các chương trình ngoại khóa, các hoạt động nội bộ của công ty.</li>	<li style="text-align: justify;">Cơ&nbsp;hội được học việc để trở thành nhân viên chính thức nếu có kết quả thực tập tốt.</li>	<li style="text-align: justify;">Thực tập không hưởng lương nhưng có thể được trả thù lao cho một số công việc được giao theo đơn hàng.</li></ul><h2 style="text-align: justify;"><b>Thời gian làm việc</b></h2><ul>	<li style="text-align: justify;">Toàn thời gian cố định hoặc làm online.</li>	<li style="text-align: justify;">Thời gian làm việc là:&nbsp;8:00 – 17:00, Thứ hai – Thứ sáu</li>	<li style="text-align: justify;">Ngày làm việc và thời gian làm việc có thể thay đổi linh hoạt tùy thuộc vào điều kiện của ứng viên và tình hình thực tế.</li></ul><h2 style="text-align: justify;"><b>Đối tượng và điều kiện ứng tuyển</b></h2><p style="text-align: justify;">Tất cả các bạn sinh viên năm cuối/mới tốt nghiệp các trường CĐ - ĐH đáp ứng được những yêu cầu sau:</p><ul>	<li style="text-align: justify;">Sinh viên khối ngành kinh tế: yêu thích marketing online, mong muốn thực tập trong lĩnh vực kinh doanh phần mềm.</li>	<li style="text-align: justify;">Sinh viên khối ngành kỹ thuật: yêu thích thiết kế, lập trình web.</li></ul><p style="text-align: justify;">Có kỹ năng giao tiếp và tư duy logic tốt, năng động và ham học hỏi.</p><p style="text-align: justify;">Có máy tính xách tay để làm việc.</p><p style="text-align: justify;">Ưu tiên các ứng viên đam mê phần mềm nguồn mở, đặc biệt là các ứng viên đã từng tham gia và có bài viết diễn đàn NukeViet (<a href="http://forum.nukeviet.vn/">forum.nukeviet.vn</a>).</p><h2 style="text-align: justify;"><b>Cách thức ứng tuyển</b></h2><p style="text-align: justify;">Gửi bản mềm đơn đăng ký ứng tuyển tới:&nbsp;<a href="mailto:tuyendung@vinades.vn">tuyendung@vinades.vn</a>;</p><p style="text-align: justify;">Tiêu đề mail ghi rõ: &#91;Họ tên&#93; –Ứng tuyển thực tập &#91;Bộ phận ứng tuyển&#93;.</p><p style="text-align: justify;">Ví dụ: Lê Văn Nam –&nbsp;Ứng tuyển thực tập sinh bộ phận đồ họa</p><p style="text-align: justify;">Hồ sơ bản cứng cần chuẩn bị (sẽ gửi sau nếu đạt yêu cầu) gồm:</p><ul>	<li style="text-align: justify;">Giấy khám sức khoẻ của cơ quan y tế</li>	<li style="text-align: justify;">Bản sao giấy khai sinh (có công chứng).</li>	<li style="text-align: justify;">Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn bằng chứng chỉ (có công chứng) nếu đã tốt nghiệp.</li>	<li style="text-align: justify;">Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.</li>	<li style="text-align: justify;">Chứng minh thư (photo không cần công chứng).</li>	<li style="text-align: justify;">Thư giới thiệu (nếu có)</li>	<li style="text-align: justify;">Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).</li></ul><p><br  /><strong>Chi tiết vui lòng tham khảo tại:</strong>&nbsp;<a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a><br  /><br  /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br  />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /><br  />- Tel: +84-4-85872007 - Fax: +84-4-35500914<br  />- Email:&nbsp;<a href="mailto:contact@vinades.vn">contact@vinades.vn</a>&nbsp;- Website:&nbsp;<a href="http://www.vinades.vn/">http://www.vinades.vn</a></p></blockquote>', '', 2, 0, 1, 1, 1, 0),
(15, '<p style="text-align: justify;">Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) là đơn vị chịu trách nhiệm chính trong việc phát triển phần mềm NukeViet và có nhiệm vụ hỗ trợ cộng đồng người dùng NukeViet &#91;<u><a href="http://vinades.vn/vi/about/history/" target="_blank">xem thêm giới thiệu về lịch sử hình thành VINADES</a></u>&#93;.</p><p style="text-align: justify;">Nếu bạn yêu thích phần mềm nguồn mở, triết lý của phần mềm tự do nguồn mở hoặc đơn giản là yêu NukeViet, hãy liên hệ ngay để gia nhập công ty VINADES, cùng chúng tôi phát triển NukeViet – Phần mềm nguồn mở Việt Nam – và tạo ra những sản phẩm web tuyệt vời cho cộng đồng.</p><h2 style="text-align: justify;"><b>Các vị trí nhận học việc</b></h2><ul>	<li style="text-align: justify;"><strong>Kinh doanh:</strong> Cổng thông tin doanh nghiệp, Cổng thông tin giáo dục Edu Gate…</li>	<li style="text-align: justify;"><strong>Kỹ thuật:</strong> Chuyên viên đồ họa, Lập trình viên…</li></ul><h2 style="text-align: justify;"><b>Quyền lợi của học viên</b></h2><ul>	<li style="text-align: justify;">Được hưởng trợ cấp ăn trưa.</li>	<li style="text-align: justify;">Được trợ cấp vé gửi xe.</li>	<li style="text-align: justify;">Được hưởng lương khoán theo từng dự án (nếu có).</li>	<li style="text-align: justify;">Được hỗ trợ học phí tham gia các khóa học nâng cao các kỹ năng (nếu có).</li>	<li style="text-align: justify;">Được&nbsp;tiếp xúc với văn hóa doanh nghiệp, trải nghiệm trong môi trường làm việc chuyên nghiệp, năng động.</li>	<li style="text-align: justify;">Được&nbsp;giao tiếp và học hỏi kiến thức từ những SEO, các lập trình viên chính của đội code NukeViet; qua đó&nbsp;nâng cao không chỉ kỹ năng chuyên môn liên quan đến công việc mà còn các kỹ năng mềm trong quá trình làm việc hàng ngày.</li>	<li style="text-align: justify;">Tham gia các chương trình ngoại khóa, các hoạt động nội bộ của công ty.</li>	<li style="text-align: justify;">Cơ&nbsp;hội ưu tiên (không cần qua thử việc) trở thành nhân viên chính thức nếu có kết quả học việc tốt.</li></ul><h2 style="text-align: justify;"><b>Thời gian làm việc</b></h2><ul>	<li style="text-align: justify;">Toàn thời gian cố định hoặc làm online.</li>	<li style="text-align: justify;">Thời gian làm việc là:&nbsp;8:00 – 17:00, Thứ hai – Thứ sáu</li>	<li style="text-align: justify;">Ngày làm việc và thời gian làm việc có thể thay đổi linh hoạt tùy thuộc vào điều kiện của ứng viên và tình hình thực tế.</li></ul><h2 style="text-align: justify;"><b>Đối tượng</b></h2><p style="text-align: justify;">Tất cả các bạn sinh viên năm cuối/mới tốt nghiệp các trường CĐ - ĐH đáp ứng được những yêu cầu sau:</p><ul>	<li style="text-align: justify;">Sinh viên khối ngành kinh tế: yêu thích marketing online, mong muốn thực tập trong lĩnh vực kinh doanh phần mềm.</li>	<li style="text-align: justify;">Sinh viên khối ngành kỹ thuật: yêu thích thiết kế, lập trình web.</li></ul><p style="text-align: justify;">Có kỹ năng giao tiếp và tư duy logic tốt, năng động và ham học hỏi.</p><p style="text-align: justify;">Ưu tiên các ứng viên đam mê phần mềm nguồn mở, đặc biệt là các ứng viên đã từng tham gia và có bài viết diễn đàn NukeViet (<a href="http://forum.nukeviet.vn/">forum.nukeviet.vn</a>)</p><h2 style="text-align: justify;"><b>Điều kiện</b></h2><p style="text-align: justify;">Có máy tính xách tay để làm việc.</p><p style="text-align: justify;">Ứng viên sẽ được ký hợp đồng học việc (có thời hạn cụ thể). Nếu được nhận vào làm việc chính thức, người lao động phải làm ở công ty ít nhất 2 năm, nếu không làm hoặc nghỉ trước thời hạn sẽ phải hoàn lại tiền đào tạo. Chi phí này được tính là 3.000.000 VND</p><p style="text-align: justify;">Nếu được cử đi học, người lao động phải làm ở công ty ít nhất 2 năm, nếu không làm hoặc nghỉ trước thời hạn sẽ phải hoàn lại tiền học phí.</p><p style="text-align: justify;">Thực hiện theo các quy định khác của công ty...</p><h2 style="text-align: justify;"><b>Cách thức ứng tuyển</b></h2><p style="text-align: justify;">Gửi bản mềm đơn đăng ký ứng tuyển tới:&nbsp;<a href="mailto:tuyendung@vinades.vn">tuyendung@vinades.vn</a>;</p><p style="text-align: justify;">Tiêu đề mail ghi rõ: &#91;Họ tên&#93; –Ứng tuyển học việc&#91;Bộ phận ứng tuyển&#93;;</p><p style="text-align: justify;">Ví dụ: Lê Văn Nam –&nbsp;Ứng tuyển học việc bộ phận đồ họa</p><p style="text-align: justify;">Hồ sơ bản cứng cần chuẩn bị (sẽ gửi sau nếu đạt yêu cầu) gồm:</p><ul>	<li style="text-align: justify;">Giấy khám sức khoẻ của cơ quan y tế</li>	<li style="text-align: justify;">Bản sao giấy khai sinh (có công chứng).</li>	<li style="text-align: justify;">Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn bằng chứng chỉ (có công chứng) nếu đã tốt nghiệp.</li>	<li style="text-align: justify;">Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.</li>	<li style="text-align: justify;">Chứng minh thư (photo không cần công chứng).</li>	<li style="text-align: justify;">Thư giới thiệu (nếu có)</li>	<li style="text-align: justify;">Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).</li></ul><p style="text-align: justify;"><br  /><strong>Chi tiết vui lòng tham khảo tại:</strong>&nbsp;<a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a><br  /><br  /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style="text-align: justify;"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br  />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /><br  />- Tel: +84-4-85872007 - Fax: +84-4-35500914<br  />- Email:&nbsp;<a href="mailto:contact@vinades.vn">contact@vinades.vn</a>&nbsp;- Website:&nbsp;<a href="http://www.vinades.vn/">http://www.vinades.vn</a></p></blockquote>', '', 2, 0, 1, 1, 1, 0),
(16, '<div class="details-content clearfix" id="bodytext"><strong>Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo có gì mới?</strong><br  /><br  />Trong các hướng dẫn thực hiện nhiệm vụ CNTT từ năm 2010 đến nay liên tục chỉ đạo việc đẩy mạnh công tác triển khai sử dụng phần mềm nguồn mở trong nhà trường và các cơ quan quản lý giáo dục. Tuy nhiên Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo có nhiều thay đổi mạnh mẽ đáng chú ý, đặc biệt việc chỉ đạo triển khai các phần mềm nguồn mở vào trong các cơ sở quản lý giao dục được rõ ràng và cụ thể hơn rất nhiều.<br  /><br  />Một điểm thay đổi đáng chú ý đối với phần mềm nguồn mở, trong đó đã thay hẳn thuật ngữ &quot;phần mềm tự do mã nguồn mở&quot; hoặc &quot;phần mềm mã nguồn mở&quot; thành &quot;phần mềm nguồn mở&quot;, phản ánh xu thế sử dụng thuật ngữ phần mềm nguồn mở đã phổ biến trong cộng đồng nguồn mở thời gian vài năm trở lại đây.<br  /><br  /><strong>NukeViet - Phần mềm nguồn mở Việt - không chỉ được khuyến khích mà đã được hướng dẫn thực thi</strong><br  /><br  />Từ 5 năm trước, thông tư số 08/2010/TT-BGDĐT của Bộ GD&amp;ĐTquy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục, NukeViet đã được đưa vào danh sách các mã nguồn mở <strong>được khuyến khích sử dụng trong giáo dục</strong>. Tuy nhiên, việc sử dụng chưa được thực hiện một cách đồng bộ mà chủ yếu làm nhỏ lẻ rải rác tại một số trường, Phòng và Sở GD&amp;ĐT.<br  /><br  />Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo lần này, NukeViet&nbsp; không chỉ được khuyến khích mà đã được hướng dẫn thực thi, không những thế NukeViet còn được đưa vào hầu hết các nhiệm vụ chính, cụ thể:<div><div><div>&nbsp;</div>- <strong>Nhiệm vụ số 5</strong> &quot;<strong>Công tác bồi dưỡng ứng dụng CNTT cho giáo viên và cán bộ quản lý giáo dục</strong>&quot;, mục 5.1 &quot;Một số nội dung cần bồi dưỡng&quot; có ghi &quot;<strong>Tập huấn sử dụng phần mềm nguồn mở NukeViet.</strong>&quot;<br  />&nbsp;</div>- <strong>Nhiệm vụ số 10 &quot;Khai thác, sử dụng và dạy học bằng phần mềm nguồn mở</strong>&quot; có ghi: &quot;<strong>Khai thác và áp dụng phần mềm nguồn mở NukeViet trong giáo dục.&quot;</strong><br  />&nbsp;</div>- Phụ lục văn bản, có trong nội dung &quot;Khuyến cáo khi sử dụng các hệ thống CNTT&quot;, hạng mục số 3 ghi rõ &quot;<strong>Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.</strong><br  />&nbsp;<div>Hiện giờ văn bản này đã được đăng lên website của Bộ GD&amp;ĐT: <a href="http://moet.gov.vn/?page=1.10&amp;view=983&amp;opt=brpage" target="_blank">http://moet.gov.vn/?page=1.10&amp;view=983&amp;opt=brpage</a></div><p><br  />Hoặc có thể tải về tại đây: <a href="http://vinades.vn/vi/download/van-ban-luat/Huong-dan-thuc-hien-nhiem-vu-CNTT-nam-hoc-2015-2016/" target="_blank">http://vinades.vn/vi/download/van-ban-luat/Huong-dan-thuc-hien-nhiem-vu-CNTT-nam-hoc-2015-2016/</a></p><blockquote><p><em>Trên cơ sở hướng dẫn của Bộ GD&amp;ĐT, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&amp;ĐT, Sở GD&amp;ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT.<br  /><br  />Các Phòng, Sở GD&amp;ĐT có nhu cầu có thể xem thêm thông tin chi tiết tại đây: <a href="http://vinades.vn/vi/news/thong-cao-bao-chi/Ho-tro-trien-khai-dao-tao-va-trien-khai-NukeViet-cho-cac-Phong-So-GD-DT-264/" target="_blank">Hỗ trợ triển khai đào tạo và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT</a></em></p></blockquote></div>', '', 2, 0, 1, 1, 1, 0),
(17, '<div class="details-content clearfix" id="bodytext"><span style="font-size:16px;"><strong>Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng phần mềm nguồn mở NukeViet</strong></span><br  /><br  />Công tác hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng phần mềm nguồn mở NukeViet sẽ được thực hiện bởi đội ngũ chuyên gia giàu kinh nghiệm về NukeViet được tuyển chọn từ lực lượng lập trình viên, chuyên viên kỹ thuật hiện đang tham gia phát triển và hỗ trợ về NukeViet từ Ban Quản Trị NukeViet và Công ty cổ phần phát triển nguồn mở Việt Nam và các đối tác thuộc Liên minh phần mềm giáo dục nguồn mở NukeViet.<br  /><br  />Với kinh nghiệm tập huấn đã được tổ chức thành công cho nhiều Phòng giáo dục và đào tạo, các chuyên gia về NukeViet sẽ giúp chuyển giao giáo trình, chương trình, kịch bản đào tạo cho các Phòng, Sở GD&amp;ĐT; hỗ trợ các giáo viên và cán bộ quản lý giáo dục sử dụng trong suốt thời gian sau đào tạo.<br  /><br  />Đặc biệt, đối với các đơn vị sử dụng NukeViet làm website và cổng thông tin đồng bộ theo quy mô cấp Phòng và Sở, cán bộ tập huấn của NukeViet sẽ có nhiều chương trình hỗ trợ khác như chương trình thi đua giữa các website sử dụng NukeViet trong cùng đơn vị cấp Phòng, Sở và trên toàn quốc; Chương trình báo cáo và giám sát và xếp hạng website hàng tháng; Chương trình tập huấn nâng cao trình độ sử dụng NukeViet hàng năm cho giáo viên và cán bộ quản lý giáo dục đang thực hiện công tác quản trị các hệ thống sử dụng nền tảng NukeViet.<br  /><br  /><span style="font-size:16px;"><strong>Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT</strong></span><br  /><br  />Nhằm hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT một cách toàn diện, đồng bộ và tiết kiệm, hiện tại, Liên minh phần mềm nguồn mở giáo dục NukeViet chuẩn bị ra mắt. Liên minh này do Công ty cổ phần phát triển nguồn mở Việt Nam đứng dầu và thực hiện việc điều phối công các hỗ trợ và phối hợp giữa các đơn vị trên toàn quốc. Thành viên của liên minh là các doanh nghiệp cung cấp sản phẩm và dịch vụ phần mềm hỗ trợ cho giáo dục (kể cả những đơn vị chỉ tham gia lập trình và những đơn vị chỉ tham gia khai thác thương mại). Liên minh sẽ cùng nhau làm việc để xây dựng một hệ thống phần mềm thống nhất cho giáo dục, có khả năng liên thông và kết nối với nhau, hoàn toàn dựa trên nền tảng phần mềm nguồn mở. Liên minh cũng hỗ trợ và phân phối phần mềm cho các đơn vị làm phần mềm trong ngành giáo dục với mục tiêu là tiết kiệm tối đa chi phí trong khâu thương mại, mang tới cơ hội cho các đơn vị làm phần mềm giáo dục mà không cần phải lo lắng về việc phân phối phần mềm. Các doanh nghiệp quan tâm đến cơ hội kinh doanh bằng phần mềm nguồn mở, muốn tìm hiểu và tham gia liên minh có thể đăng ký tại đây: <a href="http://edu.nukeviet.vn/lienminh-dangky.html" target="_blank">http://edu.nukeviet.vn/lienminh-dangky.html</a><br  /><br  />Liên minh phần mềm nguồn mở giáo dục NukeViet đang cung cấp giải pháp cổng thông tin chuyên dùng cho phòng và Sở GD&amp;ĐT (NukeViet Edu Gate) cung cấp dưới dạng dịch vụ công nghệ thông tin (theo mô hình của <a href="http://vinades.vn/vi/download/van-ban-luat/Quyet-dinh-80-ve-thue-dich-vu-CNTT/" target="_blank">Quyết định số 80/2014/QĐ-TTg của Thủ tướng Chính phủ</a>) có thể hỗ trợ cho các trường, Phòng và Sở GD&amp;ĐT triển khai NukeViet ngay lập tức.<br  /><br  />Giải pháp cổng thông tin chuyên dùng cho phòng và Sở GD&amp;ĐT (NukeViet Edu Gate) có tích hợp website các trường (liên thông 3 cấp: trường - phòng - sở) cho phép tích hợp hàng ngàn website của các trường cùng nhiều dịch vụ khác trên cùng một hệ thống giúp tiết kiệm chi phí đầu tư, chi phí triển khai và bảo trì hệ thống bởi toàn bộ hệ thống được vận hành bằng một phần mềm duy nhất. Ngoài giải pháp cổng thông tin giáo dục tích hợp, Liên minh phần mềm nguồn mở giáo dục NukeViet cũng đang phát triển một số&nbsp;sản phẩm phần mềm dựa trên phần mềm nguồn mở NukeViet và sẽ sớm ra mắt trong thời gian tới.<div><br  />Hiện nay,&nbsp;NukeViet Edu Gate cũng&nbsp;đã được triển khai rộng rãi và nhận được sự ủng hộ của&nbsp;nhiều Phòng, Sở GD&amp;ĐT trên toàn quốc.&nbsp;Các phòng, sở GD&amp;ĐT quan tâm đến giải pháp NukeViet Edu Gate có thể truy cập&nbsp;<a href="http://edu.nukeviet.vn/" target="_blank">http://edu.nukeviet.vn</a>&nbsp;để tìm hiểu thêm hoặc liên hệ:<br  /><br  /><span style="font-size:14px;"><strong>Liên minh phần mềm nguồn mở giáo dục NukeViet</strong></span><br  />Đại diện: <strong>Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC)</strong><br  /><strong>Địa chỉ</strong>: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội<br  /><strong>Email</strong>: contact@vinades.vn, Tel: 04-85872007, <strong>Fax</strong>: 04-35500914,<br  /><strong>Hotline</strong>: 0904762534 (Mr. Hùng), 0936226385 (Ms. Ngọc),&nbsp;<span style="color: rgb(38, 38, 38); font-family: arial, sans-serif; font-size: 13px; line-height: 16px;">0904719186 (Mr. Hậu)</span><br  />Các Phòng GD&amp;ĐT, Sở GD&amp;ĐT có thể đăng ký tìm hiểu, tổ chức hội thảo, tập huấn, triển khai NukeViet trực tiếp tại đây: <a href="http://edu.nukeviet.vn/dangky.html" target="_blank">http://edu.nukeviet.vn/dangky.html</a><br  /><br  /><span style="font-size:16px;"><strong>Tìm hiểu về phương thức chuyển đổi các hệ thống website cổng thông tin sang NukeViet theo mô hình tích hợp liên thông từ trưởng, lên Phòng, Sở GD&amp;ĐT:</strong></span><br  /><br  />Đối với các Phòng, Sở GD&amp;ĐT, trường Nầm non, tiểu học, THCS, THPT... chưa có website, Liên minh phần mềm nguồn mở giáo dục NukeViet sẽ hỗ trợ triển khai NukeViet theo mô hình cổng thông tin liên cấp như quy định tại <a href="http://vinades.vn/vi/download/van-ban-luat/Thong-tu-quy-dinh-ve-ve-to-chuc-hoat-dong-su-dung-thu-dien-tu/" target="_blank">thông tư số <strong>53/2012/TT-BGDĐT</strong> của Bộ GD&amp;ĐT</a> ban hành ngày 20-12-2012 quy định về quy định về về tổ chức hoạt động, sử dụng thư điện tử và cổng thông tin điện tử tại sở giáo dục và đào tạo, phòng giáo dục và đào tạo và các cơ sở GDMN, GDPT và GDTX.<br  /><br  />Trường hợp các đơn vị có website và đang sử dụng NukeViet theo dạng rời rạc thì việc chuyển đổi và tích hợp các website NukeViet rời rạc vào NukeViet Edu Gate của Phòng và Sở có thể thực hiện dễ dàng và giữ nguyên toàn bộ dữ liệu.<br  /><br  />Trường hợp các đơn vị có website và nhưng không sử dụng NukeViet cũng có thể chuyển đổi sang sử dụng NukeViet để hợp nhất vào hệ thống cổng thông tin giáo dục cấp Phòng, Sở. Tuy nhiên mức độ và tỉ lệ dữ liệu được chuyển đổi thành công sẽ phụ thuộc vào tình hình thực tế của từng website.</div></div>', '', 2, 0, 1, 1, 1, 0),
(18, '<p dir="ltr" style="text-align: justify;">Trải qua hơn 10 năm phát triển, từ một mã nguồn chỉ mang tính cá nhân, NukeViet đã phát triển thành công theo hướng cộng đồng. Năm 2010, NukeViet 3 ra đời đánh dấu một mốc lớn trong quá trình đi lên của NukeViet, phát triển theo hướng chuyên nghiệp với sự hậu thuẫn của Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC). NukeViet 3 đã và được sử dụng rộng rãi trong cộng đồng, từ các cổng thông tin tổ chức, hệ thống giáo dục, cho đến các website cá nhân, thương mại, mang lại các trải nghiệm vượt trội của mã nguồn thương hiệu Việt so với các mã nguồn nổi tiếng khác trên thế giới.<br  /><br  />Năm 2016, NukeViet 4 ra đời được xem là một cuộc cách mạng lớn trong chuỗi sự kiện phát triển NukeViet, cũng như xu thế công nghệ hiện tại. Hệ thống gần như được đổi mới hoàn toàn từ nhân hệ thống đến giao diện, nâng cao đáng kể hiệu suất và trải nghiệm người dùng.<br  /><br  /><span style="line-height: 1.6;"><strong>Dưới đây là một số thay đổi của NukeViet 4.</strong></span><br  /><strong><span style="line-height: 1.6;">Các thay đổi từ nhân hệ thống:</span></strong></p><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Các công nghệ mới được áp dụng.</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Sử dụng composer để quản lý các thư viện PHP được cài vào hệ thống.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Từng bước áp dụng &nbsp;các tiêu chuẩn viết code PHP theo khuyến nghị của <a href="http://www.php-fig.org/psr/">http://www.php-fig.org/psr/</a></p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Sử dụng PDO để thay cho extension MySQL.</p>		</li>	</ul>	</li></ul><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Tăng cường khả năng bảo mật</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Sau khi các chuyên giả bảo mật của HP gửi đánh giá, chúng tôi đã tối ưu NukeViet 4.0 để hệ thống an toàn hơn.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Mã hóa các mật khẩu lưu trữ trong hệ thống: Các mật khẩu như FPT, SMTP,... đã được mã hóa, bảo mật thông tin người dùng.</p>		</li>	</ul>	</li></ul><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Tối ưu SEO:</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">SEO được xem là một trong những ưu tiên hàng đầu được phát triển trong phiên bản này. NukeViet 4 tập trung tối ưu hóa SEO Onpage mạnh mẽ. Các công cụ hỗ trợ SEO được tập hợp lại qua module “Công cụ SEO”. Các chức năng được thêm mới:</p>		<ul>			<li dir="ltr">			<p dir="ltr" style="text-align: justify;">Loại bỏ tên module khỏi URL khi không dùng đa ngôn ngữ</p>			</li>			<li dir="ltr">			<p dir="ltr" style="text-align: justify;">Cho phép đổi đường dẫn module</p>			</li>			<li dir="ltr">			<p dir="ltr" style="text-align: justify;">Thêm chức năng xác thực Google+ (Bản quyền tác giả)</p>			</li>			<li dir="ltr">			<p dir="ltr" style="text-align: justify;">Thêm chức năng ping đến các công cụ tìm kiếm: Submit url mới đến google để việc hiển thị bài viết mới lên kết quả tìm kiếm nhanh chóng hơn.</p>			</li>			<li dir="ltr">			<p dir="ltr" style="text-align: justify;">Hỗ trợ Meta OG của facebook</p>			</li>			<li dir="ltr">			<p dir="ltr" style="text-align: justify;">Hỗ trợ chèn Meta GEO qua Cấu hình Meta-Tags</p>			</li>		</ul>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Cùng với đó, các module cũng được tối ưu hóa bằng các form hỗ trợ khai báo tiêu đề, mô tả (description), từ khóa (keywods) cho từng khu vực, từng trang. &nbsp;</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Với sự hỗ trợ tối đa này, người quản trị (admin) có thể tùy biến lại website theo phong cách SEO riêng biệt.</p>		</li>	</ul>	</li>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Thay đổi giao diện, sử dụng giao diện tuỳ biến</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Giao diện trong NukeViet 4 được làm mới, tương thích với nhiều màn hình hơn.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Sử dụng thư viện bootstrap để việc phát triển giao diện thống nhất và dễ dàng hơn.</p>		</li>	</ul>	</li>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Hệ thống nhận thông báo:&nbsp;</strong><span style="line-height: 1.6;">Có thể gọi đây là một tiện ích nhỏ, song nó rất hữu dụng để admin tương tác với hệ thống một cách nhanh chóng. Admin có thể nhận thông báo từ hệ thống (hoặc từ module) khi có sự kiện nào đó.</span></p>	</li></ul><p dir="ltr" style="text-align: justify; margin-left: 40px;"><strong>Ví dụ:</strong> Khi có khách gửi liên hệ (qua module contact) đến thì hệ thống xuất hiện biểu tượng thông báo “Có liên hệ mới” ở góc phải, Admin sẽ nhận được ngay lập tức thông báo khi người dùng đang ở Admin control panel (ACP).</p><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Thay đổi cơ chế quản lý block:</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Nhận thấy việc hiển thị block ở lightbox trong NukeViet 3 dẫn đến một số bất tiện trong quá trình quản lý, NukeViet 4 đã thay thế cách hiển thị này ở dạng cửa sổ popup. Dễ nhận thấy sự thay đổi này khi admin thêm (hoặc sửa) một block nào đó.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">“Cấu hình hiển thị block trên các thiết bị” cũng được đưa vào phần cấu hình block, admin có thể tùy chọn cho phép block hiển thị trên các thiết bị nào (tất cả thiết bị, thiết bị di động, máy tính bảng, thiết bị khác).<span style="line-height: 1.6;">&nbsp;</span></p>		</li>	</ul>	</li></ul><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Thêm ngôn ngữ tiếng Pháp:</strong> website cài đặt mới có sẵn 3 ngôn ngữ mặc định là Việt, Anh và Pháp.</p>	</li></ul><p dir="ltr" style="text-align: justify;"><strong>Các thay đổi của module:</strong></p><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Module menu:</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Phương án quản lý menu được thay đổi hướng tới việc quản lý menu nhanh chóng, tiện lợi nhất cho admin. Admin có thể nạp nhanh menu theo các tùy chọn mà hệ thống cung cấp.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Mẫu menu cũng được thay đổi, đa dạng và hiển thị tốt với các giao diện hiện đại.</p>		</li>	</ul>	</li>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Module contact (Liên hệ):</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Bổ sung các trường thông tin về bộ phận (Điện thoại, fax, email, các trường liên hệ khác,...).</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Admin có thể trả lời khách nhiều lần, hệ thống lưu lại lịch sử trao đổi đó.</p>		</li>	</ul>	</li>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Module users (Tài khoản):</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thay thế OpenID bằng thư viện OAuth - hỗ trợ tích hợp đăng nhập qua tài khoản mạng xã hội</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Cho phép đăng nhập 1 lần tài khoản người dùng NukeViet với Alfresco, Zimbra, Moodle, Koha</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm chức năng tùy biến trường dữ liệu thành viên</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm chức năng phân quyền sử dụng module users</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm cấu hình: Số ký tự username, độ phức tạp mật khẩu, tạo mật khảu ngẫu nhiên,....</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Cho phép sử dụng tên truy cập, hoặc email để đăng nhập</p>		</li>	</ul>	</li>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Module about:</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Module about ở NukeViet 3 được đổi tên thành module page</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm các cấu hình hỗ trợ SEO: Ảnh minh họa, chú thích ảnh minh họa, mô tả, từ khóa cho bài viết, hiển thị các công cụ tương tác với các mạng xã hội.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm RSS</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Cấu hình phương án hiển thị các bài viết trên trang chính</p>		</li>	</ul>	</li>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Module news (Tin tức):</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm phân quyền cho người quản lý module, đến từng chủ đề</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thay đổi phương án lọc từ khóa bài viết, lọc từ khóa theo các từ khóa đã có trong tags thay vì đọc từ từ điển.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Bổ sung các trạng thái bài viết</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm cấu hình mặc định hiển thị ảnh minh họa trên trang xem chi tiết bài viết</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm các công cụ tương tác với mạng xã &nbsp;hội.</p>		</li>	</ul>	</li></ul><p dir="ltr" style="text-align: justify;"><strong>Quản lý Bình luận</strong></p><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;">Các bình luận của các module sẽ được tích hợp quản lý tập trung để cấu hình.</p>	</li>	<li dir="ltr" style="text-align: justify;">Khi xây dựng mới module, Chỉ cần nhúng 1 đoạn mã vào. Tránh phải việc copy mã code gây khó khăn cho bảo trì.</li></ul>', '', 2, 0, 1, 1, 1, 0),
(19, '<h2><span style="color:rgb(255, 0, 0);"><strong>1. Tốc độ</strong></span></h2><div style="text-align:center"><img alt="litespeed benchmark" height="292" src="/uploads/news/2016_01/litespeed-benchmark.jpg" width="540" /></div><br  />Tốc độ truy cập website rất quan trọng, ảnh hưởng đến trải nghiệm của người dùng cũng như thứ hạng trên các bộ máy tìm kiếm (Google, Bing...). Website có tốc độ nhanh là website không để người dùng &quot;chờ&quot; khi click vào bất cứ trang nào. Hay nói cách khác tốc độ load trang phải 1 giây trở xuống. Có 2 yếu tố tác động đến tốc độ đó là &quot;sự tối ưu của mã nguồn website&quot; và &quot;sự tối ưu của hệ thống hosting&quot;<br  />&nbsp;<ul>	<li><span style="color:rgb(0, 0, 205);"><strong>Sự tối ưu của mã nguồn website:</strong></span> Nếu bạn đang dùng NukeViet, bạn đang rất may mắn bởi NukeViet được thiết kế để tối ưu và tăng tốc truy cập.</li>	<li><span style="color:rgb(0, 0, 205);"><strong>Sự tối ưu của hệ thống hosting:</strong></span> Các nhà cung cấp hosting kinh nghiệm và uy tín luôn tối ưu hệ thống Hosting của họ một cách tốt nhất, hãy để ý một số tiêu chí sau để đánh giá mức độ VIP về việc tối ưu tốc độ của hosting bạn đang sử dụng:	<ul>		<li><strong>Ổ cứng SSD:</strong> Công nghệ ổ cứng SSD đang được sử dụng mạnh mẽ để thay thế các ổ cứng SATA thế hệ cũ bởi tốc độ đọc ghi dữ liệu của ổ cứng SSD cực nhanh, giúp máy chủ hosting xử lý và đọc ghi dữ liệu nhanh hơn. Công nghệ này không những áp dụng vào hệ thống hosting mà còn đang áp dụng với hầu hết các hệ thống máy chủ thời nay.</li>		<li><strong>Webserver Litespeed:</strong> Đây là phần mềm web server có tốc độ nhanh nhất (nhanh gấp 5 lần Apache), là giải pháp thay thế cho web server truyền thống Apache. Web server này cũng được đánh giá là ổn định và bảo mật. Tuy nhiên đây là phần mềm web server có bản quyền<strong>. <span style="background-color:rgb(250, 235, 215);">Nếu nhà cung cấp hosting của bạn sử dụng phần mềm này, họ đã đầu tư bài bản cho hệ thống hosting của mình</span></strong>.</li>	</ul>	</li></ul><h2><span style="color:rgb(255, 0, 0);"><strong>2. Bảo mật</strong></span></h2><div style="text-align:center"><img alt="cloudlinux security" height="312" src="/uploads/news/2016_01/cloudlinux-security.jpg" width="540" /></div><br  />Khi sử dụng hosting, bạn cần quan tâm đến hình thức tấn công &quot;local attack&quot;. Bởi một máy chủ hosting có rất nhiều tài khoản hosting khác nhau. Local attack là hình thức chiếm quyền điều khiển tài khoản hosting A (vì website trên hosting A này bị lỗi bảo mật hoặc bị lộ mật khẩu) sau đó dùng hosting A để chiếm quyền điền khiển sang hosting B - hosting của bạn. Hình thức tấn công này rất nguy hiểm, tuy nhiên hãy để ý, <strong><span style="background-color:rgb(255, 255, 224);">nếu nhà cung cấp hosting nào đang sử dụng công nghệ &quot;CloudLinux&quot;, hosting của họ đã chống được gần như 100% hình thức tấn công này</span></strong><span style="background-color:rgb(255, 255, 224);">.</span><h3>&nbsp;</h3><h2><span style="color:rgb(255, 0, 0);"><strong>3. Ổn định</strong></span></h2><div style="text-align:center"><img alt="123host network security" height="310" src="/uploads/news/2016_01/123host-network-security.jpg" width="540" /></div><br  />Sự ổn định rất quan trọng bởi bạn sẽ sử dụng hosting lâu dài ngày này qua ngày khác. Sự chập chờn, gián đoạn truy cập chỉ trong ít phút cũng đã ảnh hưởng đến doanh thu, thứ hạn, làm giảm lượng truy cập vào website bạn. Các yếu tố cơ bản sau ảnh hưởng đến độ ổn định của dịch vụ hosting:<ul>	<li><span style="color:rgb(0, 0, 205);"><strong>Network &amp; Datacenter: </strong></span>Hạ tầng network ổn định đặt tại các datacenter lớn là tiêu chí rất quan trọng. <strong><span style="background-color:rgb(255, 255, 224);">Các nhà cung cấp hosting lớn luôn đặt máy chủ của mình tại các datacenter lớn nhất Việt Nam như VDC2 hoặc ViettelIDC</span></strong>.</li>	<li><span style="color:rgb(0, 0, 205);"><strong>Chống tấn công DDOS: </strong></span>Đây là yếu tố cực kỳ quan trọng giúp các máy chủ hosting ổn định. Một máy chủ hosting có thể chứa hàng nghìn website, vì vậy thường xuyên sẽ có những cuộc tấn công DDOS vào một trong số các website này và sẽ ảnh hưởng toàn bộ máy chủ hosting và tất nhiên sẽ ảnh hưởng đến website của bạn. Truy cập sẽ chập chờn, lúc chậm lúc nhanh và có khi sẽ gián đoạn<strong>. <span style="background-color:rgb(255, 255, 224);">Hãy để ý các nhà cung cấp hosting tốt luôn có hệ thống Firewall</span> </strong>(tường lửa) chuyện dụng cho hosting của mình.</li></ul><h2><br  /><span style="color:rgb(255, 0, 0);"><strong>4. Hỗ trợ</strong></span></h2><div style="text-align:center"><img alt="support247" height="151" src="/uploads/news/2016_01/support247.jpg" width="540" /></div><br  />Không cần bàn cãi gì nữa, một nhà cung cấp hosting tốt luôn:<br  />&nbsp;<ul>	<li>Hỗ trợ khách hàng 24/7 bất kể là đêm hay ngày, kể cả những ngày lễ tết.</li>	<li>Hỗ trợ nhanh và nhiệt tình, giải quyết các vấn đề bạn gặp phải nhanh chóng.</li></ul><h3>&nbsp;</h3><h2><span style="color:rgb(255, 0, 0);"><strong>5. Các tham số quan trọng của hosting</strong><span style="font-size: 13px; line-height: 1.6;">&nbsp;</span></span></h2><ul>	<li><strong><span style="color:rgb(0, 0, 205);">Băng thông</span></strong> (bandwidth): Tham số này rất quan trọng nếu website của bạn chứa nhiều hình ảnh và lượng truy cập website cao. Vì vậy khi lựa chọn hosting, hãy để ý tham số băng thông, tốt nhất <strong><span style="background-color:rgb(255, 255, 224);">nên chọn các nhà cung cấp hosting không giới hạn băng thông</span></strong>&nbsp;để khỏi lo lắng về vấn đề này.</li>	<li><span style="color:rgb(0, 0, 205);"><strong>Tự ý thay đổi được phiên bản PHP</strong></span>, thành phần mở rộng (extension) của PHP cũng như các tham số cấu hình PHP: Yếu tố này cũng khá quan trọng, ví dụ bạn đang dùng NukeViet 3, phiên bản NukeViet này yêu cầu PHP version là 5.3, nếu bạn nâng cấp Nukeviet lên Nukeviet 4, yêu cầu phiên bản PHP phải là 5.4 . Vì vậy<strong> <span style="background-color:rgb(255, 255, 224);">hãy chọn lựa các nhà cung cấp hosting cho phép bạn thay đổi được các phiên bản PHP</span></strong> cũng như các tham số cấu hình nó.</li></ul>&nbsp;<br  />Đến thời điểm hiện tại, <a href="https://123host.vn/web-hosting.html" target="_blank"><strong>123HOST</strong></a> là nhà cung cấp hosting đầu tiên&nbsp;<span style="color:rgb(0, 0, 205);"><strong>đạt chứng nhận tương thích với mã nguồn NukeViet 4 </strong></span>(xem tại <a href="http://nukeviet.vn/vi/partner/hosting/">http://nukeviet.vn/vi/partner/hosting/</a> ).&nbsp; Đồng thời họ cũng là nhà cung cấp hosting uy tín đáp ứng được tất cả 5 tiêu chí khắt khe trên.<br  />&nbsp;<div style="text-align:center"><img alt="hosting 123host nukeviet" height="298" src="/uploads/news/2016_01/hosting-123host-nukeviet.jpg" width="540" /></div><br  /><br  />Nếu sử dụng NukeViet hay bất kỳ mã nguồn mở nào khác, chúng tôi khuyên bạn nên dùng dịch vụ tại <strong>123HOST</strong>. Ngoài đáp ứng 5 tiêu chí trên, hosting tại <strong>123HOST</strong> còn có các tính năng đặc biệt mà không nhà cung cấp nào có:<ul>	<li>Tất cả các gói hosting của <strong>123HOST</strong> đều<strong> <span style="color:rgb(0, 0, 205);">không giới hạn băng thông</span></strong>, parked domain, tài khoản email, FTP, tài khoản MySQL. Hầu như tất cả đều không giới hạn cho tất cả các gói hosting.</li>	<li><span style="color:rgb(0, 0, 205);"><strong>DDOS Protection:</strong> </span>Nếu dùng hosting của các nhà cung cấp khác, khi website của bạn bị tấn công DDOS, họ sẽ khóa website của bạn để khỏi ảnh hưởng đến máy chủ hosting. Tuy nhiên tại <strong>123HOST</strong>, hệ thống của họ sẽ tự phát hiện và bật cản lọc tấn công cho website của bạn. Đồng thời bạn cũng có thể tự&nbsp; mình kích hoạt tính năng này tại giao diện cPanel. &nbsp;Website của bạn sẽ an toàn và hoạt động bình thường.</li>	<li><span style="color:rgb(0, 0, 205);"><strong>Malware Scanner:</strong></span> Tính năng này được tích hợp tại cPanel để người dùng quét xem mã nguồn website của mình có bị kẻ xấu lợi dụng và upload mã độc lên hay không. Đồng thời họ cũng hỗ trợ kiểm tra mã nguồn cho bạn nếu bạn gởi yêu cầu hỗ trợ kỹ thuật.</li>	<li><strong><span style="color:rgb(0, 0, 205);">Backup miễn phí:</span> </strong>Hosting tại <strong>123HOST</strong> đều tự động backup trong vòng 7 ngày, mỗi ngày 1 bản backup. Nếu bạn lỡ tay xóa mất dữ liệu website của mình hay website bị kẻ xấu hack và xóa dữ liệu, hãy bình tĩnh và liên hệ với kỹ thuật của 123HOST, họ sẽ khôi phục website cho bạn MIỄN PHÍ.</li></ul><div style="text-align:center"><img alt="cpanel ddos protection malware scanner" height="300" src="/uploads/news/2016_01/cpanel-ddos-protection-malware-scanner.jpg" width="540" /></div><br  />Chúc các bạn thành công.<br /><br />----<div>Giấy phép:<br /><a href="http://creativecommons.org/licenses/by-nc-sa/4.0/" rel="license" target="_blank"><img alt="CC BY NC SA" height="15" src="/uploads/news/2016_01/cc-by-nc-sa.png" style="border-width: 0px;" width="80" /></a><br />Bài viết này được chia sẻ với các điều khoản của <a href="http://creativecommons.org/licenses/by-nc-sa/4.0/" rel="license" target="_blank">giấy phép Creative Commons Attribution-NonCommercial-ShareAlike 4.0</a>.<br />Nguồn: <a href="https://123host.vn/blog/chon-nha-cung-cap-hosting-nao-tot-cho-nukeviet.html" target="_blank">https://123host.vn/blog/chon-nha-cung-cap-hosting-nao-tot-cho-nukeviet.html</a></div>', '', 2, 0, 1, 1, 1, 0),
(20, '<div class="views-field views-field-field-congtrinh-diachi"><span class="views-label views-label-field-congtrinh-diachi">Địa chỉ: </span>\r\n<div class="field-content">Số 144, Nguyễn Xiển, Thanh Xuân, HN</div>\r\n</div>\r\n\r\n<div class="views-field views-field-field-congtrinh-chudautu"><span class="views-label views-label-field-congtrinh-chudautu">Chủ đầu tư: </span>\r\n\r\n<div class="field-content">Công Ty Cổ Phần Thương Mại &amp; Đầu Tư Phát Triển Bình Minh</div>\r\n</div>', '', 2, 0, 1, 1, 1, 0),
(21, '<div class="views-field views-field-field-congtrinh-diachi"><span class="views-label views-label-field-congtrinh-diachi">Địa chỉ: </span>\r\n<div class="field-content">&nbsp;</div>\r\n</div>\r\n\r\n<div class="views-field views-field-field-congtrinh-chudautu"><span class="views-label views-label-field-congtrinh-chudautu">Chủ đầu tư:</span></div>', '', 2, 0, 1, 1, 1, 0),
(22, '<div class="views-field views-field-field-congtrinh-diachi"><span class="views-label views-label-field-congtrinh-diachi">Địa chỉ: </span>\r\n<div class="field-content">&nbsp;</div>\r\n</div>\r\n\r\n<div class="views-field views-field-field-congtrinh-chudautu"><span class="views-label views-label-field-congtrinh-chudautu">Chủ đầu tư:</span></div>', '', 2, 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_cong_trinh_da_thuc_hien_logs`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_cong_trinh_da_thuc_hien_logs` (
`id` mediumint(8) unsigned NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_cong_trinh_da_thuc_hien_rows`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_cong_trinh_da_thuc_hien_rows` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_cong_trinh_da_thuc_hien_rows`
--

INSERT INTO `nv4_vi_cong_trinh_da_thuc_hien_rows` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 2, 0, 0, 0),
(6, 12, '1,12', 0, 1, 'Nguyễn Thế Hùng', 7, 1453192444, 1453192444, 1, 1453192444, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 13, 0, 0, 0),
(7, 11, '11', 0, 1, 'Phạm Quốc Tiến', 2, 1453192400, 1453192400, 1, 1453192400, 0, 2, 'Tuyển dụng lập trình viên PHP phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-PHP', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về PHP và MySQL?. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0),
(8, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391089, 1445394192, 1, 1445391060, 0, 2, 'Tuyển dụng chuyên viên đồ hoạ phát triển NukeViet', 'Tuyen-dung-chuyen-vien-do-hoa', 'Bạn đam mê nguồn mở? Bạn là chuyên gia đồ họa? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0),
(9, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391090, 1445394193, 1, 1445391060, 0, 2, 'Tuyển dụng lập trình viên front-end (HTML/CSS/JS) phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về front-end (HTML/CSS/JS)?. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0),
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 1, 0, 0, 0),
(11, 1, '1', 0, 1, '', 4, 1445309676, 1445309676, 1, 1445309520, 0, 2, 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 'nukeviet-duoc-uu-tien-mua-sam-su-dung-trong-co-quan-to-chuc-nha-nuoc', 'Ngày 5/12/2014, Bộ trưởng Bộ TT&TT Nguyễn Bắc Son đã ký ban hành Thông tư 20/2014/TT-BTTTT (Thông tư 20) quy định về các sản phẩm phần mềm nguồn mở (PMNM) được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước. NukeViet (phiên bản 3.4.02 trở lên) là phần mềm được nằm trong danh sách này.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 1, 1, '4', 1, 2, 0, 0, 0),
(12, 11, '11', 0, 1, 'Vũ Bích Ngọc', 0, 1445391061, 1445394203, 1, 1445391000, 0, 2, 'Công ty VINADES tuyển dụng nhân viên kinh doanh', 'cong-ty-vinades-tuyen-dung-nhan-vien-kinh-doanh', 'Công ty cổ phần phát triển nguồn mở Việt Nam là đơn vị chủ quản của phần mềm mã nguồn mở NukeViet - một mã nguồn được tin dùng trong cơ quan nhà nước, đặc biệt là ngành giáo dục. Chúng tôi cần tuyển 05 nhân viên kinh doanh cho lĩnh vực này.', 'tuyen-dung-nvkd.png', '', 1, 1, '4', 1, 0, 0, 0, 0),
(14, 1, '1,11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(15, 11, '11', 0, 1, 'Trần Thị Thu', 0, 1445391135, 1445394444, 1, 1445391120, 0, 2, 'Học việc tại công ty VINADES', 'hoc-viec-tai-cong-ty-vinades', 'Công ty cổ phần phát triển nguồn mở Việt Nam tạo cơ hội việc làm và học việc miễn phí cho những ứng viên có đam mê thiết kế web, lập trình PHP… được học tập và rèn luyện cùng đội ngũ lập trình viên phát triển NukeViet.', 'hoc-viec-tai-cong-ty-vinades.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(16, 1, '1', 0, 1, '', 0, 1445391182, 1445394133, 1, 1445391120, 0, 2, 'NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016', 'nukeviet-duoc-bo-gd-dt-dua-vao-huong-dan-thuc-hien-nhiem-vu-cntt-nam-hoc-2015-2016', 'Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, NukeViet được đưa vào các hạng mục: Tập huấn sử dụng phần mềm nguồn mở cho giáo viên và cán bộ quản lý giáo dục; Khai thác, sử dụng và dạy học; đặc biệt phần &quot;khuyến cáo khi sử dụng các hệ thống CNTT&quot; có chỉ rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.', 'nukeviet-cms.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(17, 1, '1,10', 0, 1, '', 0, 1445391217, 1445393997, 1, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 1, 0, 0, 0),
(18, 2, '2', 0, 1, 'VINADES', 0, 1453194455, 1453194455, 1, 1453194455, 0, 2, 'NukeViet 4.0 có gì mới?', 'nukeviet-4-0-co-gi-moi', 'NukeViet 4 là phiên bản NukeViet được cộng đồng đánh giá cao, hứa hẹn nhiều điểm vượt trội về công nghệ đến thời điểm hiện tại. NukeViet 4 thay đổi gần như hoàn toàn từ nhân hệ thống đến chức năng, giao diện người dùng. Vậy, có gì mới trong phiên bản này?', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 2, 0, 0, 0),
(19, 10, '10', 0, 1, '123host', 0, 1453192440, 1453192440, 1, 1453192440, 0, 2, 'Chọn nhà cung cấp Hosting nào tốt cho NukeViet?', 'chon-nha-cung-cap-hosting-nao-tot-cho-nukeviet', 'NukeViet được xây dựng và phát triển để tương thích với nhiều loại hosting và server. Tuy nhiên, để website NukeViet của bạn hoạt động tốt trên môi trường internet, cần chọn một nhà cung cấp Hosting uy tín, tin cậy và để &quot;chọn mặt gởi vàng&quot; website của mình. Bài viết này sẽ trình bày các tiêu chí để lựa chọn một nhà cung cấp Hosting tốt cho website của bạn.', '', '', 0, 1, '4', 1, 2, 0, 0, 0),
(20, 2, '2', 0, 1, '', 0, 1458534907, 1458668372, 1, 1458534600, 0, 2, 'Nâng cấp sàn gạch men bằng sàn gỗ tại...', 'nang-cap-san-gach-men-bang-san-go-tai', 'Địa chỉ:Số 144, Nguyễn Xiển, Thanh Xuân, HN<br />Chủ đầu tư:Công Ty Cổ Phần Thương Mại & Đầu Tư Phát Triển Bình Minh', '2016_03/duan81.jpg', '', 1, 1, '4', 1, 1, 0, 0, 0),
(21, 2, '2', 0, 1, '', 0, 1458535001, 1458535001, 1, 1458534900, 0, 2, 'Sàn gỗ tại Biệt thự cao cấp khu Ciputra...', 'san-go-tai-biet-thu-cao-cap-khu-ciputra', 'Địa chỉ:<br />Chủ đầu tư:', '2016_03/duan4.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(22, 2, '2', 0, 1, '', 0, 1458535070, 1458668305, 1, 1458534960, 0, 2, 'Nâng cấp sàn gạch men bằng sàn...', 'hoan-thanh-thang-09-2015-cong-trinh-tai-he-thong-truong-lien', 'Địa chỉ:<br />Chủ đầu tư:', '2016_03/d.jpg', '', 1, 1, '4', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_cong_trinh_da_thuc_hien_sources`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_cong_trinh_da_thuc_hien_sources` (
`sourceid` mediumint(8) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL,
  `edit_time` int(11) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_cong_trinh_da_thuc_hien_sources`
--

INSERT INTO `nv4_vi_cong_trinh_da_thuc_hien_sources` (`sourceid`, `title`, `link`, `logo`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Báo Hà Nội Mới', 'http://hanoimoi.com.vn', '', 1, 1274989177, 1274989177),
(2, 'VINADES.,JSC', 'http://vinades.vn', '', 2, 1274989787, 1274989787),
(3, 'Báo điện tử Dân Trí', 'http://dantri.com.vn', '', 4, 1322685396, 1322685396),
(4, 'Bộ Thông tin và Truyền thông', 'http://http://mic.gov.vn', '', 5, 1445309676, 1445309676);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_cong_trinh_da_thuc_hien_tags`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_cong_trinh_da_thuc_hien_tags` (
`tid` mediumint(8) unsigned NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_cong_trinh_da_thuc_hien_tags`
--

INSERT INTO `nv4_vi_cong_trinh_da_thuc_hien_tags` (`tid`, `numnews`, `alias`, `image`, `description`, `keywords`) VALUES
(1, 0, 'nguồn-mở', '', '', 'nguồn mở'),
(2, 0, 'quen-thuộc', '', '', 'quen thuộc'),
(3, 0, 'cộng-đồng', '', '', 'cộng đồng'),
(4, 0, 'việt-nam', '', '', 'việt nam'),
(5, 0, 'hoạt-động', '', '', 'hoạt động'),
(6, 0, 'tin-tức', '', '', 'tin tức'),
(7, 1, 'thương-mại-điện', '', '', 'thương mại điện'),
(8, 0, 'điện-tử', '', '', 'điện tử'),
(9, 13, 'nukeviet', '', '', 'nukeviet'),
(10, 8, 'vinades', '', '', 'vinades'),
(11, 3, 'lập-trình-viên', '', '', 'lập trình viên'),
(12, 3, 'chuyên-viên-đồ-họa', '', '', 'chuyên viên đồ họa'),
(13, 3, 'php', '', '', 'php'),
(14, 2, 'mysql', '', '', 'mysql'),
(15, 1, 'nhân-tài-đất-việt-2011', '', '', 'nhân tài đất việt 2011'),
(16, 9, 'mã-nguồn-mở', '', '', 'mã nguồn mở'),
(17, 2, 'nukeviet4', '', '', 'nukeviet4'),
(18, 1, 'mail', '', '', 'mail'),
(19, 1, 'fpt', '', '', 'fpt'),
(20, 1, 'smtp', '', '', 'smtp'),
(21, 1, 'bootstrap', '', '', 'bootstrap'),
(22, 1, 'block', '', '', 'block'),
(23, 1, 'modules', '', '', 'modules'),
(24, 2, 'banner', '', '', 'banner'),
(25, 1, 'liên-kết', '', '', 'liên kết'),
(26, 2, 'hosting', '', '', 'hosting'),
(27, 1, 'hỗ-trợ', '', '', 'hỗ trợ'),
(28, 1, 'hợp-tác', '', '', 'hợp tác'),
(29, 1, 'tốc-độ', '', '', 'tốc độ'),
(30, 2, 'website', '', '', 'website'),
(31, 1, 'bảo-mật', '', '', 'bảo mật'),
(32, 4, 'giáo-dục', '', '', 'giáo dục'),
(33, 1, 'edu-gate', '', '', 'edu gate'),
(34, 2, 'lập-trình', '', '', 'lập trình'),
(35, 1, 'logo', '', '', 'logo'),
(36, 1, 'code', '', '', 'code'),
(37, 1, 'thực-tập', '', '', 'thực tập'),
(38, 1, 'kinh-doanh', '', '', 'kinh doanh'),
(39, 1, 'nhân-viên', '', '', 'nhân viên'),
(40, 1, 'bộ-gd&đt', '', '', 'Bộ GD&ĐT'),
(41, 1, 'module', '', '', 'module'),
(42, 1, 'php-nuke', '', '', 'php-nuke');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_cong_trinh_da_thuc_hien_tags_id`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_cong_trinh_da_thuc_hien_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_cong_trinh_da_thuc_hien_tags_id`
--

INSERT INTO `nv4_vi_cong_trinh_da_thuc_hien_tags_id` (`id`, `tid`, `keyword`) VALUES
(1, 7, 'thương mại điện'),
(1, 9, 'nukeviet'),
(7, 10, 'vinades'),
(7, 9, 'nukeviet'),
(7, 11, 'lập trình viên'),
(7, 12, 'chuyên viên đồ họa'),
(7, 13, 'php'),
(7, 14, 'mysql'),
(10, 15, 'Nhân tài đất Việt 2011'),
(10, 16, 'mã nguồn mở'),
(10, 9, 'nukeviet'),
(18, 17, 'nukeviet4'),
(18, 9, 'nukeviet'),
(18, 10, 'vinades'),
(18, 13, 'php'),
(18, 14, 'mysql'),
(18, 18, 'mail'),
(18, 19, 'fpt'),
(18, 20, 'smtp'),
(18, 21, 'bootstrap'),
(18, 22, 'block'),
(18, 23, 'modules'),
(18, 16, 'mã nguồn mở'),
(6, 16, 'mã nguồn mở'),
(6, 9, 'nukeviet'),
(6, 17, 'nukeviet4'),
(6, 10, 'vinades'),
(6, 24, 'banner'),
(6, 25, 'liên kết'),
(6, 26, 'hosting'),
(6, 27, 'hỗ trợ'),
(6, 28, 'hợp tác'),
(19, 9, 'nukeviet'),
(19, 10, 'vinades'),
(19, 29, 'tốc độ'),
(19, 26, 'hosting'),
(19, 30, 'website'),
(19, 31, 'bảo mật'),
(17, 9, 'nukeviet'),
(17, 32, 'giáo dục'),
(17, 33, 'edu gate'),
(15, 16, 'mã nguồn mở'),
(15, 10, 'vinades'),
(15, 9, 'nukeviet'),
(15, 11, 'lập trình viên'),
(15, 12, 'chuyên viên đồ họa'),
(16, 9, 'nukeviet'),
(16, 16, 'mã nguồn mở'),
(16, 32, 'giáo dục'),
(8, 10, 'vinades'),
(8, 34, 'lập trình'),
(8, 35, 'logo'),
(8, 24, 'banner'),
(8, 30, 'website'),
(8, 36, 'code'),
(8, 13, 'php'),
(9, 16, 'mã nguồn mở'),
(9, 10, 'vinades'),
(9, 34, 'lập trình'),
(9, 9, 'nukeviet'),
(14, 37, 'thực tập'),
(14, 10, 'vinades'),
(14, 12, 'chuyên viên đồ họa'),
(14, 11, 'lập trình viên'),
(14, 9, 'nukeviet'),
(14, 16, 'mã nguồn mở'),
(12, 38, 'kinh doanh'),
(12, 9, 'nukeviet'),
(12, 32, 'giáo dục'),
(12, 39, 'nhân viên'),
(11, 16, 'mã nguồn mở'),
(11, 9, 'nukeviet'),
(11, 40, 'Bộ GD&ĐT'),
(11, 32, 'giáo dục'),
(1, 41, 'module'),
(1, 16, 'mã nguồn mở'),
(1, 42, 'php-nuke');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_cong_trinh_da_thuc_hien_topics`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_cong_trinh_da_thuc_hien_topics` (
`topicid` smallint(5) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_cong_trinh_da_thuc_hien_topics`
--

INSERT INTO `nv4_vi_cong_trinh_da_thuc_hien_topics` (`topicid`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 'NukeViet 4', 'NukeViet-4', '', 'NukeViet 4', 1, 'NukeViet 4', 1445396011, 1445396011);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_department`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_contact_department` (
`id` smallint(5) unsigned NOT NULL,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cats` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_contact_department`
--

INSERT INTO `nv4_vi_contact_department` (`id`, `full_name`, `alias`, `image`, `phone`, `fax`, `email`, `address`, `note`, `others`, `cats`, `admins`, `act`, `weight`, `is_default`) VALUES
(1, 'Phòng Chăm sóc khách hàng', 'Cham-soc-khach-hang', '', '(08) 38.000.000[+84838000000]', '08 38.000.001', 'customer@mysite.com', '', 'Bộ phận tiếp nhận và giải quyết các yêu cầu, đề nghị, ý kiến liên quan đến hoạt động chính của doanh nghiệp', '{"viber":"myViber","skype":"mySkype","yahoo":"myYahoo"}', 'Tư vấn|Khiếu nại, phản ánh|Đề nghị hợp tác', '1/1/1/0;', 1, 1, 1),
(2, 'Phòng Kỹ thuật', 'Ky-thuat', '', '(08) 38.000.002[+84838000002]', '08 38.000.003', 'technical@mysite.com', '', 'Bộ phận tiếp nhận và giải quyết các câu hỏi liên quan đến kỹ thuật', '{"viber":"myViber2","skype":"mySkype2","yahoo":"myYahoo2"}', 'Thông báo lỗi|Góp ý cải tiến', '1/1/1/0;', 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_reply`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_contact_reply` (
`rid` mediumint(8) unsigned NOT NULL,
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reply_content` text COLLATE utf8mb4_unicode_ci,
  `reply_time` int(11) unsigned NOT NULL DEFAULT '0',
  `reply_aid` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_send`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_contact_send` (
`id` mediumint(8) unsigned NOT NULL,
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_time` int(11) unsigned NOT NULL DEFAULT '0',
  `sender_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sender_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sender_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_reply` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_freecontent_blocks`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_freecontent_blocks` (
`bid` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_freecontent_blocks`
--

INSERT INTO `nv4_vi_freecontent_blocks` (`bid`, `title`, `description`) VALUES
(1, 'Sản phẩm', 'Sản phẩm của công ty cổ phần phát triển nguồn mở Việt Nam - VINADES.,JSC');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_freecontent_rows`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_freecontent_rows` (
`id` mediumint(8) unsigned NOT NULL,
  `bid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_freecontent_rows`
--

INSERT INTO `nv4_vi_freecontent_rows` (`id`, `bid`, `title`, `description`, `link`, `target`, `image`, `start_time`, `end_time`, `status`) VALUES
(1, 1, 'Hệ quản trị nội dung NukeViet', '<ul>\n	<li>Giải thưởng Nhân tài đất Việt 2011, 10.000+ website đang sử dụng</li>\n	<li>Được Bộ GD&amp;ĐT khuyến khích sử dụng trong các cơ sở giáo dục</li>\n	<li>Bộ TT&amp;TT quy định ưu tiên sử dụng trong cơ quan nhà nước</li>\n</ul>', 'http://vinades.vn/vi/san-pham/nukeviet/', '_blank', 'cms.jpg', 1456905063, 0, 1),
(2, 1, 'Cổng thông tin doanh nghiệp', '<ul>\n	<li>Tích hợp bán hàng trực tuyến</li>\n	<li>Tích hợp các nghiệp vụ quản lý (quản lý khách hàng, quản lý nhân sự, quản lý tài liệu)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-doanh-nghiep-NukeViet-portal/', '_blank', 'portal.jpg', 1456905063, 0, 1),
(3, 1, 'Cổng thông tin Phòng giáo dục, Sở giáo dục', '<ul>\n	<li>Tích hợp chung website hàng trăm trường</li>\n	<li>Tích hợp các ứng dụng trực tuyến (Tra điểm SMS, Tra cứu văn bằng, Học bạ điện tử ...)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-giao-duc-NukeViet-Edugate/', '_blank', 'edugate.jpg', 1456905063, 0, 1),
(4, 1, 'Tòa soạn báo điện tử chuyên nghiệp', '<ul>\n	<li>Bảo mật đa tầng, phân quyền linh hoạt</li>\n	<li>Hệ thống bóc tin tự động, đăng bài tự động, cùng nhiều chức năng tiên tiến khác...</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Toa-soan-bao-dien-tu/', '_blank', 'toa-soan-dien-tu.jpg', 1456905063, 0, 1),
(5, 1, 'Giải pháp bán hàng trực tuyến', '<ul><li>Tích hợp các tính năng cơ bản bán hàng trực tuyến</li><li>Tích hợp với các cổng thanh toán, ví điện tử trên toàn quốc</li></ul>', 'http://vinades.vn', '_blank', 'shop.jpg', 1456905063, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_menu`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_menu` (
`id` smallint(5) unsigned NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_menu`
--

INSERT INTO `nv4_vi_menu` (`id`, `title`) VALUES
(1, 'Top Menu'),
(2, 'sango'),
(3, 'sango_footer');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_menu_rows`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_menu_rows` (
`id` mediumint(5) NOT NULL,
  `parentid` mediumint(5) unsigned NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `lev` int(11) NOT NULL DEFAULT '0',
  `subitem` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `op` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` tinyint(4) DEFAULT '0',
  `css` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_menu_rows`
--

INSERT INTO `nv4_vi_menu_rows` (`id`, `parentid`, `mid`, `title`, `link`, `icon`, `note`, `weight`, `sort`, `lev`, `subitem`, `groups_view`, `module_name`, `op`, `target`, `css`, `active_type`, `status`) VALUES
(1, 0, 1, 'Giới thiệu', '/index.php?language=vi&nv=about', '', '', 1, 1, 0, '2,3,4,5,6,7,8,9', '6', 'about', '', 1, '', 1, 1),
(2, 1, 1, 'Giới thiệu về NukeViet', '/index.php?language=vi&nv=about&op=gioi-thieu-ve-nukeviet.html', '', '', 1, 2, 1, '', '6', 'about', 'gioi-thieu-ve-nukeviet.html', 1, '', 0, 1),
(3, 1, 1, 'Giới thiệu về NukeViet CMS', '/index.php?language=vi&nv=about&op=gioi-thieu-ve-nukeviet-cms.html', '', '', 2, 3, 1, '', '6', 'about', 'gioi-thieu-ve-nukeviet-cms.html', 1, '', 0, 1),
(4, 1, 1, 'Logo và tên gọi NukeViet', '/index.php?language=vi&nv=about&op=logo-va-ten-goi-nukeviet.html', '', '', 3, 4, 1, '', '6', 'about', 'logo-va-ten-goi-nukeviet.html', 1, '', 0, 1),
(5, 1, 1, 'Giấy phép sử dụng NukeViet', '/index.php?language=vi&nv=about&op=giay-phep-su-dung-nukeviet.html', '', '', 4, 5, 1, '', '6', 'about', 'giay-phep-su-dung-nukeviet.html', 1, '', 0, 1),
(6, 1, 1, 'Những tính năng của NukeViet CMS 4.0', '/index.php?language=vi&nv=about&op=nhung-tinh-nang-cua-nukeviet-cms-4-0.html', '', '', 5, 6, 1, '', '6', 'about', 'nhung-tinh-nang-cua-nukeviet-cms-4-0.html', 1, '', 0, 1),
(7, 1, 1, 'Yêu cầu sử dụng NukeViet 4', '/index.php?language=vi&nv=about&op=Yeu-cau-su-dung-NukeViet-4.html', '', '', 6, 7, 1, '', '6', 'about', 'cac-yeu-cau-cai-dat.html', 1, '', 0, 1),
(8, 1, 1, 'Giới thiệu về Công ty cổ phần phát triển nguồn mở Việt Nam', '/index.php?language=vi&nv=about&op=gioi-thieu-ve-cong-ty-co-phan-phat-trien-nguon-mo-viet-nam.html', '', '', 7, 8, 1, '', '6', 'about', 'gioi-thieu-ve-cong-ty-co-phan-phat-trien-nguon-mo-viet-nam.html', 1, '', 0, 1),
(9, 1, 1, 'Ủng hộ, hỗ trợ và tham gia phát triển NukeViet', '/index.php?language=vi&nv=about&op=ung-ho-ho-tro-va-tham-gia-phat-trien-nukeviet.html', '', '', 8, 9, 1, '', '6', 'about', 'ung-ho-ho-tro-va-tham-gia-phat-trien-nukeviet.html', 1, '', 0, 1),
(10, 0, 1, 'Tin Tức', '/index.php?language=vi&nv=news', '', '', 2, 10, 0, '11,12,13,14,15,16,17', '6', 'news', '', 1, '', 1, 1),
(11, 10, 1, 'Đối tác', '/index.php?language=vi&nv=news&amp;op=Doi-tac', '', '', 3, 13, 1, '', '6', 'news', 'Doi-tac', 1, '', 1, 1),
(12, 10, 1, 'Tuyển dụng', '/index.php?language=vi&nv=news&amp;op=Tuyen-dung', '', '', 4, 14, 1, '', '6', 'news', 'Tuyen-dung', 1, '', 1, 1),
(13, 10, 1, 'Rss', '/index.php?language=vi&nv=news&op=rss', '', '', 7, 17, 1, '', '6', 'news', 'rss', 1, '', 0, 1),
(14, 10, 1, 'Đăng bài viết', '/index.php?language=vi&nv=news&op=content', '', '', 5, 15, 1, '', '6', 'news', 'content', 1, '', 0, 1),
(15, 10, 1, 'Tìm kiếm', '/index.php?language=vi&nv=news&op=search', '', '', 6, 16, 1, '', '6', 'news', 'search', 1, '', 0, 1),
(16, 10, 1, 'Tin tức', '/index.php?language=vi&nv=news&amp;op=Tin-tuc', '', '', 1, 11, 1, '', '6', 'news', 'Tin-tuc', 1, '', 1, 1),
(17, 10, 1, 'Sản phẩm', '/index.php?language=vi&nv=news&amp;op=San-pham', '', '', 2, 12, 1, '', '6', 'news', 'San-pham', 1, '', 1, 1),
(18, 0, 1, 'Thành viên', '/index.php?language=vi&nv=users', '', '', 3, 18, 0, '', '6', 'users', '', 1, '', 1, 1),
(19, 0, 1, 'Thống kê', '/index.php?language=vi&nv=statistics', '', '', 4, 19, 0, '', '2', 'statistics', '', 1, '', 1, 1),
(20, 0, 1, 'Thăm dò ý kiến', '/index.php?language=vi&nv=voting', '', '', 5, 20, 0, '', '6', 'voting', '', 1, '', 1, 1),
(21, 0, 1, 'Tìm kiếm', '/index.php?language=vi&nv=seek', '', '', 6, 21, 0, '', '6', 'seek', '', 1, '', 1, 1),
(22, 0, 1, 'Liên hệ', '/index.php?language=vi&nv=contact', '', '', 7, 22, 0, '', '6', 'contact', '', 1, '', 1, 1),
(23, 0, 2, 'TRANG CHỦ', '/index.php?language=vi', '', '', 1, 1, 0, '', '6', '0', '', 1, '', 0, 1),
(24, 0, 2, 'GIỚI THIỆU', '/index.php?language=vi&nv=about', '', '', 2, 2, 0, '', '6', 'about', '', 1, '', 0, 1),
(25, 0, 2, 'SẢN PHẨM', '#', '', '', 3, 3, 0, '30,31,32', '6', 'shops', '', 1, '', 0, 1),
(26, 0, 2, 'PHONG THỦY', '#', '', '', 4, 7, 0, '', '6', '0', '', 1, '', 0, 1),
(27, 0, 2, 'THƯ VIỆN ẢNH', '#', '', '', 5, 8, 0, '', '6', '0', '', 1, '', 0, 1),
(28, 0, 2, 'TIN TỨC', '/index.php?language=vi&nv=news', '', '', 6, 9, 0, '', '6', 'news', '', 1, '', 0, 1),
(29, 0, 2, 'LIÊN HỆ', '/index.php?language=vi&nv=contact', '', '', 7, 10, 0, '', '6', 'contact', '', 1, '', 0, 1),
(30, 25, 2, 'GỖ VÁN SÀN', '#', '', '', 1, 4, 1, '', '6', '0', '', 1, '', 0, 1),
(31, 25, 2, 'SUPPER FlLOOR', '#', '', '', 2, 5, 1, '', '6', '0', '', 1, '', 0, 1),
(39, 0, 2, 'TÌM KIẾM', '#', '', '', 8, 11, 0, '', '6', '0', '', 1, '', 0, 1),
(32, 25, 2, 'PHỤ KIỆN', '#', '', '', 3, 6, 1, '', '6', '0', '', 1, '', 0, 1),
(33, 0, 3, 'Chính sách bảo hành', '#', '', '', 1, 1, 0, '', '6', '0', '', 1, '', 0, 1),
(34, 0, 3, 'Mạng lưới phân phối', '#', '', '', 2, 2, 0, '', '6', '0', '', 1, '', 0, 1),
(35, 0, 3, 'Thông số kỹ thuật', '#', '', '', 3, 3, 0, '', '6', '0', '', 1, '', 0, 1),
(36, 0, 3, 'Đặt hàng', '#', '', '', 4, 4, 0, '', '6', '0', '', 1, '', 0, 1),
(37, 0, 3, 'Dự án thực hiện', '#', '', '', 5, 5, 0, '', '6', '0', '', 1, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modfuncs`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_modfuncs` (
`func_id` mediumint(8) unsigned NOT NULL,
  `func_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT '0',
  `in_submenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subweight` smallint(2) unsigned NOT NULL DEFAULT '1',
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modfuncs`
--

INSERT INTO `nv4_vi_modfuncs` (`func_id`, `func_name`, `alias`, `func_custom_name`, `in_module`, `show_func`, `in_submenu`, `subweight`, `setting`) VALUES
(1, 'main', 'main', 'Main', 'about', 1, 0, 1, ''),
(2, 'sitemap', 'sitemap', 'Sitemap', 'about', 0, 0, 0, ''),
(3, 'rss', 'rss', 'Rss', 'about', 0, 0, 0, ''),
(4, 'main', 'main', 'Main', 'news', 1, 0, 1, ''),
(5, 'viewcat', 'viewcat', 'Viewcat', 'news', 1, 0, 2, ''),
(6, 'topic', 'topic', 'Topic', 'news', 1, 0, 3, ''),
(7, 'content', 'content', 'Content', 'news', 1, 1, 4, ''),
(8, 'detail', 'detail', 'Detail', 'news', 1, 0, 5, ''),
(9, 'tag', 'tag', 'Tag', 'news', 1, 0, 6, ''),
(10, 'rss', 'rss', 'Rss', 'news', 1, 1, 7, ''),
(11, 'search', 'search', 'Search', 'news', 1, 1, 8, ''),
(12, 'groups', 'groups', 'Groups', 'news', 1, 0, 9, ''),
(13, 'sitemap', 'sitemap', 'Sitemap', 'news', 0, 0, 0, ''),
(14, 'print', 'print', 'Print', 'news', 0, 0, 0, ''),
(15, 'rating', 'rating', 'Rating', 'news', 0, 0, 0, ''),
(16, 'savefile', 'savefile', 'Savefile', 'news', 0, 0, 0, ''),
(17, 'sendmail', 'sendmail', 'Sendmail', 'news', 0, 0, 0, ''),
(18, 'main', 'main', 'Main', 'users', 1, 0, 1, ''),
(19, 'login', 'login', 'Đăng nhập', 'users', 1, 1, 2, ''),
(20, 'register', 'register', 'Đăng ký', 'users', 1, 1, 3, ''),
(21, 'lostpass', 'lostpass', 'Quên mật khẩu', 'users', 1, 1, 4, ''),
(22, 'active', 'active', 'Kích hoạt', 'users', 1, 0, 5, ''),
(23, 'lostactivelink', 'lostactivelink', 'Lostactivelink', 'users', 1, 0, 6, ''),
(24, 'editinfo', 'editinfo', 'Thiếp lập tài khoản', 'users', 1, 1, 7, ''),
(25, 'memberlist', 'memberlist', 'Danh sách thành viên', 'users', 1, 1, 8, ''),
(26, 'avatar', 'avatar', 'Avatar', 'users', 1, 0, 9, ''),
(27, 'logout', 'logout', 'Thoát', 'users', 1, 1, 10, ''),
(28, 'groups', 'groups', 'Quản lý nhóm', 'users', 1, 0, 11, ''),
(29, 'oauth', 'oauth', 'Oauth', 'users', 0, 0, 0, ''),
(30, 'main', 'main', 'Main', 'statistics', 1, 0, 1, ''),
(31, 'allreferers', 'allreferers', 'Theo đường dẫn đến site', 'statistics', 1, 1, 2, ''),
(32, 'allcountries', 'allcountries', 'Theo quốc gia', 'statistics', 1, 1, 3, ''),
(33, 'allbrowsers', 'allbrowsers', 'Theo trình duyệt', 'statistics', 1, 1, 4, ''),
(34, 'allos', 'allos', 'Theo hệ điều hành', 'statistics', 1, 1, 5, ''),
(35, 'allbots', 'allbots', 'Máy chủ tìm kiếm', 'statistics', 1, 1, 6, ''),
(36, 'referer', 'referer', 'Đường dẫn đến site theo tháng', 'statistics', 1, 0, 7, ''),
(37, 'main', 'main', 'Main', 'banners', 1, 0, 1, ''),
(38, 'addads', 'addads', 'Addads', 'banners', 1, 0, 2, ''),
(39, 'clientinfo', 'clientinfo', 'Clientinfo', 'banners', 1, 0, 3, ''),
(40, 'stats', 'stats', 'Stats', 'banners', 1, 0, 4, ''),
(41, 'cledit', 'cledit', 'Cledit', 'banners', 0, 0, 0, ''),
(42, 'click', 'click', 'Click', 'banners', 0, 0, 0, ''),
(43, 'clinfo', 'clinfo', 'Clinfo', 'banners', 0, 0, 0, ''),
(44, 'logininfo', 'logininfo', 'Logininfo', 'banners', 0, 0, 0, ''),
(45, 'viewmap', 'viewmap', 'Viewmap', 'banners', 0, 0, 0, ''),
(46, 'main', 'main', 'main', 'comment', 1, 0, 1, ''),
(47, 'post', 'post', 'post', 'comment', 1, 0, 2, ''),
(48, 'like', 'like', 'Like', 'comment', 1, 0, 3, ''),
(49, 'delete', 'delete', 'Delete', 'comment', 1, 0, 4, ''),
(50, 'main', 'main', 'Main', 'page', 1, 0, 1, ''),
(51, 'sitemap', 'sitemap', 'Sitemap', 'page', 0, 0, 0, ''),
(52, 'rss', 'rss', 'Rss', 'page', 0, 0, 0, ''),
(53, 'main', 'main', 'Main', 'siteterms', 1, 0, 1, ''),
(54, 'rss', 'rss', 'Rss', 'siteterms', 1, 0, 2, ''),
(55, 'sitemap', 'sitemap', 'Sitemap', 'siteterms', 0, 0, 0, ''),
(56, 'main', 'main', 'Main', 'contact', 1, 0, 1, ''),
(57, 'main', 'main', 'Main', 'voting', 1, 0, 1, ''),
(58, 'main', 'main', 'Main', 'seek', 1, 0, 1, ''),
(59, 'main', 'main', 'Main', 'feeds', 1, 0, 1, ''),
(60, 'blockcat', 'blockcat', 'Blockcat', 'shops', 1, 0, 18, ''),
(61, 'cart', 'cart', 'Cart', 'shops', 1, 0, 5, ''),
(62, 'checkorder', 'checkorder', 'Checkorder', 'shops', 0, 0, 0, ''),
(63, 'compare', 'compare', 'Compare', 'shops', 1, 0, 12, ''),
(64, 'complete', 'complete', 'Complete', 'shops', 1, 0, 8, ''),
(65, 'delhis', 'delhis', 'Delhis', 'shops', 0, 0, 0, ''),
(66, 'detail', 'detail', 'Detail', 'shops', 1, 0, 3, ''),
(67, 'download', 'download', 'Download', 'shops', 1, 0, 17, ''),
(68, 'group', 'group', 'Group', 'shops', 1, 0, 10, ''),
(69, 'history', 'history', 'History', 'shops', 1, 0, 9, ''),
(70, 'loadcart', 'loadcart', 'Loadcart', 'shops', 0, 0, 0, ''),
(71, 'main', 'main', 'Main', 'shops', 1, 0, 1, ''),
(72, 'order', 'order', 'Order', 'shops', 1, 0, 6, ''),
(73, 'payment', 'payment', 'Payment', 'shops', 1, 0, 7, ''),
(74, 'point', 'point', 'Point', 'shops', 1, 0, 15, ''),
(75, 'print', 'print', 'Print', 'shops', 0, 0, 0, ''),
(76, 'print_pro', 'print_pro', 'Print_pro', 'shops', 0, 0, 0, ''),
(77, 'remove', 'remove', 'Remove', 'shops', 0, 0, 0, ''),
(78, 'review', 'review', 'Review', 'shops', 0, 0, 0, ''),
(79, 'rss', 'rss', 'Rss', 'shops', 0, 0, 0, ''),
(80, 'search', 'search', 'Search', 'shops', 1, 0, 4, ''),
(81, 'search_result', 'search_result', 'Search_result', 'shops', 1, 0, 11, ''),
(82, 'sendmail', 'sendmail', 'Sendmail', 'shops', 0, 0, 0, ''),
(83, 'setcart', 'setcart', 'Setcart', 'shops', 0, 0, 0, ''),
(84, 'shippingajax', 'shippingajax', 'Shippingajax', 'shops', 1, 0, 16, ''),
(85, 'sitemap', 'sitemap', 'Sitemap', 'shops', 0, 0, 0, ''),
(86, 'tag', 'tag', 'Tag', 'shops', 1, 0, 14, ''),
(87, 'viewcat', 'viewcat', 'Viewcat', 'shops', 1, 0, 2, ''),
(88, 'wishlist', 'wishlist', 'Wishlist', 'shops', 1, 0, 13, ''),
(89, 'wishlist_update', 'wishlist_update', 'Wishlist_update', 'shops', 0, 0, 0, ''),
(90, 'content', 'content', 'Content', 'cong-trinh-da-thuc-hien', 1, 1, 7, ''),
(91, 'detail', 'detail', 'Detail', 'cong-trinh-da-thuc-hien', 1, 0, 5, ''),
(92, 'groups', 'groups', 'Groups', 'cong-trinh-da-thuc-hien', 1, 0, 4, ''),
(93, 'main', 'main', 'Main', 'cong-trinh-da-thuc-hien', 1, 0, 1, ''),
(94, 'print', 'print', 'Print', 'cong-trinh-da-thuc-hien', 0, 0, 0, ''),
(95, 'rating', 'rating', 'Rating', 'cong-trinh-da-thuc-hien', 0, 0, 0, ''),
(96, 'rss', 'rss', 'Rss', 'cong-trinh-da-thuc-hien', 1, 1, 9, ''),
(97, 'savefile', 'savefile', 'Savefile', 'cong-trinh-da-thuc-hien', 0, 0, 0, ''),
(98, 'search', 'search', 'Search', 'cong-trinh-da-thuc-hien', 1, 1, 6, ''),
(99, 'sendmail', 'sendmail', 'Sendmail', 'cong-trinh-da-thuc-hien', 0, 0, 0, ''),
(100, 'sitemap', 'sitemap', 'Sitemap', 'cong-trinh-da-thuc-hien', 0, 0, 0, ''),
(101, 'tag', 'tag', 'Tag', 'cong-trinh-da-thuc-hien', 1, 0, 8, ''),
(102, 'topic', 'topic', 'Topic', 'cong-trinh-da-thuc-hien', 1, 0, 3, ''),
(103, 'viewcat', 'viewcat', 'Viewcat', 'cong-trinh-da-thuc-hien', 1, 0, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modthemes`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modthemes`
--

INSERT INTO `nv4_vi_modthemes` (`func_id`, `layout`, `theme`) VALUES
(0, 'left-body-right', 'sango'),
(0, 'left-main-right', 'default'),
(0, 'main', 'mobile_default'),
(1, 'body', 'sango'),
(1, 'left-main-right', 'default'),
(1, 'main', 'mobile_default'),
(4, 'body', 'sango'),
(4, 'left-main-right', 'default'),
(4, 'main', 'mobile_default'),
(5, 'body', 'sango'),
(5, 'left-main-right', 'default'),
(5, 'main', 'mobile_default'),
(6, 'body', 'sango'),
(6, 'left-main-right', 'default'),
(6, 'main', 'mobile_default'),
(7, 'body', 'sango'),
(7, 'left-main-right', 'default'),
(7, 'main', 'mobile_default'),
(8, 'body', 'sango'),
(8, 'left-main-right', 'default'),
(8, 'main', 'mobile_default'),
(9, 'body', 'sango'),
(9, 'left-main-right', 'default'),
(9, 'main', 'mobile_default'),
(10, 'body', 'sango'),
(10, 'left-main-right', 'default'),
(11, 'body', 'sango'),
(11, 'left-main-right', 'default'),
(11, 'main', 'mobile_default'),
(12, 'body', 'sango'),
(12, 'left-main-right', 'default'),
(12, 'main', 'mobile_default'),
(18, 'left-body-right', 'sango'),
(18, 'left-main-right', 'default'),
(18, 'main', 'mobile_default'),
(19, 'left-body-right', 'sango'),
(19, 'left-main-right', 'default'),
(19, 'main', 'mobile_default'),
(20, 'left-body-right', 'sango'),
(20, 'left-main-right', 'default'),
(20, 'main', 'mobile_default'),
(21, 'left-body-right', 'sango'),
(21, 'left-main-right', 'default'),
(21, 'main', 'mobile_default'),
(22, 'left-body-right', 'sango'),
(22, 'left-main-right', 'default'),
(22, 'main', 'mobile_default'),
(23, 'left-body-right', 'sango'),
(23, 'left-main-right', 'default'),
(23, 'main', 'mobile_default'),
(24, 'left-body-right', 'sango'),
(24, 'left-main', 'default'),
(24, 'main', 'mobile_default'),
(25, 'left-body-right', 'sango'),
(25, 'left-main-right', 'default'),
(25, 'main', 'mobile_default'),
(26, 'left-body-right', 'sango'),
(26, 'left-main-right', 'default'),
(27, 'left-body-right', 'sango'),
(27, 'left-main-right', 'default'),
(27, 'main', 'mobile_default'),
(28, 'left-body-right', 'sango'),
(28, 'left-main', 'default'),
(28, 'main', 'mobile_default'),
(30, 'left-body-right', 'sango'),
(30, 'left-main', 'default'),
(30, 'main', 'mobile_default'),
(31, 'left-body-right', 'sango'),
(31, 'left-main', 'default'),
(31, 'main', 'mobile_default'),
(32, 'left-body-right', 'sango'),
(32, 'left-main', 'default'),
(32, 'main', 'mobile_default'),
(33, 'left-body-right', 'sango'),
(33, 'left-main', 'default'),
(33, 'main', 'mobile_default'),
(34, 'left-body-right', 'sango'),
(34, 'left-main', 'default'),
(34, 'main', 'mobile_default'),
(35, 'left-body-right', 'sango'),
(35, 'left-main', 'default'),
(35, 'main', 'mobile_default'),
(36, 'left-body-right', 'sango'),
(36, 'left-main', 'default'),
(36, 'main', 'mobile_default'),
(37, 'left-body-right', 'sango'),
(37, 'left-main-right', 'default'),
(37, 'main', 'mobile_default'),
(38, 'left-body-right', 'sango'),
(38, 'left-main-right', 'default'),
(38, 'main', 'mobile_default'),
(39, 'left-body-right', 'sango'),
(39, 'left-main-right', 'default'),
(39, 'main', 'mobile_default'),
(40, 'left-body-right', 'sango'),
(40, 'left-main-right', 'default'),
(40, 'main', 'mobile_default'),
(46, 'left-body-right', 'sango'),
(46, 'left-main-right', 'default'),
(46, 'main', 'mobile_default'),
(47, 'left-body-right', 'sango'),
(47, 'left-main-right', 'default'),
(47, 'main', 'mobile_default'),
(48, 'left-body-right', 'sango'),
(48, 'left-main-right', 'default'),
(48, 'main', 'mobile_default'),
(49, 'left-body-right', 'sango'),
(49, 'left-main-right', 'default'),
(49, 'main', 'mobile_default'),
(50, 'left-body-right', 'sango'),
(50, 'left-main', 'default'),
(50, 'main', 'mobile_default'),
(53, 'left-body-right', 'sango'),
(53, 'left-main-right', 'default'),
(53, 'main', 'mobile_default'),
(54, 'left-body-right', 'sango'),
(54, 'left-main-right', 'default'),
(54, 'main', 'mobile_default'),
(56, 'left-body-right', 'sango'),
(56, 'left-main', 'default'),
(56, 'main', 'mobile_default'),
(57, 'left-body-right', 'sango'),
(57, 'left-main', 'default'),
(57, 'main', 'mobile_default'),
(58, 'left-body-right', 'sango'),
(58, 'left-main-right', 'default'),
(58, 'main', 'mobile_default'),
(59, 'left-body-right', 'sango'),
(59, 'left-main-right', 'default'),
(59, 'main', 'mobile_default'),
(60, 'body', 'sango'),
(60, 'left-main-right', 'default'),
(61, 'body', 'sango'),
(61, 'left-main-right', 'default'),
(63, 'body', 'sango'),
(63, 'left-main-right', 'default'),
(64, 'body', 'sango'),
(64, 'left-main-right', 'default'),
(66, 'body', 'sango'),
(66, 'left-main-right', 'default'),
(67, 'body', 'sango'),
(67, 'left-main-right', 'default'),
(68, 'body', 'sango'),
(68, 'left-main-right', 'default'),
(69, 'body', 'sango'),
(69, 'left-main-right', 'default'),
(71, 'body', 'sango'),
(71, 'left-main-right', 'default'),
(72, 'body', 'sango'),
(72, 'left-main-right', 'default'),
(73, 'body', 'sango'),
(73, 'left-main-right', 'default'),
(74, 'body', 'sango'),
(74, 'left-main-right', 'default'),
(80, 'body', 'sango'),
(80, 'left-main-right', 'default'),
(81, 'body', 'sango'),
(81, 'left-main-right', 'default'),
(84, 'body', 'sango'),
(84, 'left-main-right', 'default'),
(86, 'body', 'sango'),
(86, 'left-main-right', 'default'),
(87, 'body', 'sango'),
(87, 'left-main-right', 'default'),
(88, 'body', 'sango'),
(88, 'left-main-right', 'default'),
(90, 'left-body-right', 'sango'),
(90, 'left-main-right', 'default'),
(90, 'main', 'mobile_default'),
(91, 'left-body-right', 'sango'),
(91, 'left-main-right', 'default'),
(91, 'main', 'mobile_default'),
(92, 'left-body-right', 'sango'),
(92, 'left-main-right', 'default'),
(92, 'main', 'mobile_default'),
(93, 'left-body-right', 'sango'),
(93, 'left-main-right', 'default'),
(93, 'main', 'mobile_default'),
(94, 'left-body-right', 'sango'),
(95, 'left-body-right', 'sango'),
(96, 'left-body-right', 'sango'),
(96, 'left-main-right', 'default'),
(96, 'main', 'mobile_default'),
(97, 'left-body-right', 'sango'),
(98, 'left-body-right', 'sango'),
(98, 'left-main-right', 'default'),
(98, 'main', 'mobile_default'),
(99, 'left-body-right', 'sango'),
(100, 'left-body-right', 'sango'),
(101, 'left-body-right', 'sango'),
(101, 'left-main-right', 'default'),
(101, 'main', 'mobile_default'),
(102, 'left-body-right', 'sango'),
(102, 'left-main-right', 'default'),
(102, 'main', 'mobile_default'),
(103, 'left-body-right', 'sango'),
(103, 'left-main-right', 'default'),
(103, 'main', 'mobile_default');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modules`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_modules` (
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_file` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_data` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_upload` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `set_time` int(11) unsigned NOT NULL DEFAULT '0',
  `main_file` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_file` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT '1',
  `gid` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modules`
--

INSERT INTO `nv4_vi_modules` (`title`, `module_file`, `module_data`, `module_upload`, `custom_title`, `admin_title`, `set_time`, `main_file`, `admin_file`, `theme`, `mobile`, `description`, `keywords`, `groups_view`, `weight`, `act`, `admins`, `rss`, `gid`) VALUES
('about', 'page', 'about', 'about', 'Giới thiệu', '', 1456905063, 1, 1, '', '', '', '', '6', 1, 1, '', 1, 0),
('news', 'news', 'news', 'news', 'Tin Tức', '', 1456905063, 1, 1, '', '', '', '', '6', 2, 1, '', 1, 0),
('users', 'users', 'users', 'users', 'Thành viên', 'Tài khoản', 1456905063, 1, 1, '', '', '', '', '6', 3, 1, '', 0, 0),
('contact', 'contact', 'contact', 'contact', 'Liên hệ', '', 1456905063, 1, 1, '', '', '', '', '6', 4, 1, '', 0, 0),
('statistics', 'statistics', 'statistics', 'statistics', 'Thống kê', '', 1456905063, 1, 1, '', '', '', 'truy cập, online, statistics', '6', 5, 1, '', 0, 0),
('voting', 'voting', 'voting', 'voting', 'Thăm dò ý kiến', '', 1456905063, 1, 1, '', '', '', '', '6', 6, 1, '', 1, 0),
('banners', 'banners', 'banners', 'banners', 'Quảng cáo', '', 1456905063, 1, 1, '', '', '', '', '6', 7, 1, '', 0, 0),
('seek', 'seek', 'seek', 'seek', 'Tìm kiếm', '', 1456905063, 1, 0, '', '', '', '', '6', 8, 1, '', 0, 0),
('menu', 'menu', 'menu', 'menu', 'Menu Site', '', 1456905063, 0, 1, '', '', '', '', '6', 9, 1, '', 0, 0),
('feeds', 'feeds', 'feeds', 'feeds', 'Rss Feeds', '', 1456905063, 1, 1, '', '', '', '', '6', 10, 1, '', 0, 0),
('page', 'page', 'page', 'page', 'Page', '', 1456905063, 1, 1, '', '', '', '', '6', 11, 1, '', 1, 0),
('comment', 'comment', 'comment', 'comment', 'Bình luận', 'Quản lý bình luận', 1456905063, 0, 1, '', '', '', '', '6', 12, 1, '', 0, 0),
('siteterms', 'page', 'siteterms', 'siteterms', 'Điều khoản sử dụng', '', 1456905063, 1, 1, '', '', '', '', '6', 13, 1, '', 1, 0),
('freecontent', 'freecontent', 'freecontent', 'freecontent', 'Giới thiệu sản phẩm', '', 1456905063, 0, 1, '', '', '', '', '6', 14, 1, '', 0, 0),
('shops', 'shops', 'shops', 'shops', 'shops', '', 1456905121, 1, 1, '', '', '', '', '6', 15, 1, '', 1, 0),
('cong-trinh-da-thuc-hien', 'news', 'cong_trinh_da_thuc_hien', 'cong-trinh-da-thuc-hien', 'Công trình đã thực hiện', '', 1458534626, 1, 1, '', '', '', '', '6', 16, 1, '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_1`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_news_1` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_1`
--

INSERT INTO `nv4_vi_news_1` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 2, 0, 0, 0),
(6, 12, '1,12', 0, 1, 'Nguyễn Thế Hùng', 7, 1453192444, 1453192444, 1, 1453192444, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 13, 0, 0, 0),
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 1, 0, 0, 0),
(11, 1, '1', 0, 1, '', 4, 1445309676, 1445309676, 1, 1445309520, 0, 2, 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 'nukeviet-duoc-uu-tien-mua-sam-su-dung-trong-co-quan-to-chuc-nha-nuoc', 'Ngày 5/12/2014, Bộ trưởng Bộ TT&TT Nguyễn Bắc Son đã ký ban hành Thông tư 20/2014/TT-BTTTT (Thông tư 20) quy định về các sản phẩm phần mềm nguồn mở (PMNM) được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước. NukeViet (phiên bản 3.4.02 trở lên) là phần mềm được nằm trong danh sách này.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 1, 1, '4', 1, 2, 0, 0, 0),
(14, 1, '1,11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(16, 1, '1', 0, 1, '', 0, 1445391182, 1445394133, 1, 1445391120, 0, 2, 'NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016', 'nukeviet-duoc-bo-gd-dt-dua-vao-huong-dan-thuc-hien-nhiem-vu-cntt-nam-hoc-2015-2016', 'Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, NukeViet được đưa vào các hạng mục: Tập huấn sử dụng phần mềm nguồn mở cho giáo viên và cán bộ quản lý giáo dục; Khai thác, sử dụng và dạy học; đặc biệt phần &quot;khuyến cáo khi sử dụng các hệ thống CNTT&quot; có chỉ rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.', 'nukeviet-cms.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(17, 1, '1,10', 0, 1, '', 0, 1445391217, 1445393997, 1, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_2`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_news_2` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_2`
--

INSERT INTO `nv4_vi_news_2` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(18, 2, '2', 0, 1, 'VINADES', 0, 1453194455, 1453194455, 1, 1453194455, 0, 2, 'NukeViet 4.0 có gì mới?', 'nukeviet-4-0-co-gi-moi', 'NukeViet 4 là phiên bản NukeViet được cộng đồng đánh giá cao, hứa hẹn nhiều điểm vượt trội về công nghệ đến thời điểm hiện tại. NukeViet 4 thay đổi gần như hoàn toàn từ nhân hệ thống đến chức năng, giao diện người dùng. Vậy, có gì mới trong phiên bản này?', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 2, 0, 0, 0),
(20, 2, '2', 0, 1, '', 0, 1458526280, 1458526280, 1, 1458526080, 0, 2, 'SÀN GÔC CHỊU NƯỚC', 'san-goc-chiu-nuoc', 'SÀN GỖ CHỊU NƯỚC', 'go_van_san.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(21, 2, '2', 0, 1, '', 0, 1458526554, 1458526597, 1, 1458526440, 0, 2, 'Vệ sinh sàn gỗ công nghiệp đúng cách', 've-sinh-san-go-cong-nghiep-dung-cach', 'Vệ sinh sàn gỗ công nghiệp đúng cách', 'go_van_san_efloor_1.jpg', '', 1, 1, '4', 1, 1, 0, 0, 0),
(22, 2, '2', 0, 1, '', 0, 1458526707, 1458526707, 1, 1458526620, 0, 2, 'Ván sàn gỗ công nghiệp vàng thau lẫn lộn', 'van-san-go-cong-nghiep-vang-thau-lan-lon', 'Ván sàn gỗ công nghiệp vàng thau lẫn lộn', 'go_van_san_2.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_8`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_news_8` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_8`
--

INSERT INTO `nv4_vi_news_8` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_9`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_news_9` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_9`
--

INSERT INTO `nv4_vi_news_9` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_10`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_news_10` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_10`
--

INSERT INTO `nv4_vi_news_10` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(17, 1, '1,10', 0, 1, '', 0, 1445391217, 1445393997, 1, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 1, 0, 0, 0),
(19, 10, '10', 0, 1, '123host', 0, 1453192440, 1453192440, 1, 1453192440, 0, 2, 'Chọn nhà cung cấp Hosting nào tốt cho NukeViet?', 'chon-nha-cung-cap-hosting-nao-tot-cho-nukeviet', 'NukeViet được xây dựng và phát triển để tương thích với nhiều loại hosting và server. Tuy nhiên, để website NukeViet của bạn hoạt động tốt trên môi trường internet, cần chọn một nhà cung cấp Hosting uy tín, tin cậy và để &quot;chọn mặt gởi vàng&quot; website của mình. Bài viết này sẽ trình bày các tiêu chí để lựa chọn một nhà cung cấp Hosting tốt cho website của bạn.', '2016_01/how-to-choose-hosting.jpg', '', 1, 1, '4', 1, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_11`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_news_11` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_11`
--

INSERT INTO `nv4_vi_news_11` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(7, 11, '11', 0, 1, 'Phạm Quốc Tiến', 2, 1453192400, 1453192400, 1, 1453192400, 0, 2, 'Tuyển dụng lập trình viên PHP phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-PHP', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về PHP và MySQL?. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0),
(8, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391089, 1445394192, 1, 1445391060, 0, 2, 'Tuyển dụng chuyên viên đồ hoạ phát triển NukeViet', 'Tuyen-dung-chuyen-vien-do-hoa', 'Bạn đam mê nguồn mở? Bạn là chuyên gia đồ họa? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0),
(9, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391090, 1445394193, 1, 1445391060, 0, 2, 'Tuyển dụng lập trình viên front-end (HTML/CSS/JS) phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về front-end (HTML/CSS/JS)?. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0),
(12, 11, '11', 0, 1, 'Vũ Bích Ngọc', 0, 1445391061, 1445394203, 1, 1445391000, 0, 2, 'Công ty VINADES tuyển dụng nhân viên kinh doanh', 'cong-ty-vinades-tuyen-dung-nhan-vien-kinh-doanh', 'Công ty cổ phần phát triển nguồn mở Việt Nam là đơn vị chủ quản của phần mềm mã nguồn mở NukeViet - một mã nguồn được tin dùng trong cơ quan nhà nước, đặc biệt là ngành giáo dục. Chúng tôi cần tuyển 05 nhân viên kinh doanh cho lĩnh vực này.', 'tuyen-dung-nvkd.png', '', 1, 1, '4', 1, 0, 0, 0, 0),
(14, 1, '1,11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(15, 11, '11', 0, 1, 'Trần Thị Thu', 0, 1445391135, 1445394444, 1, 1445391120, 0, 2, 'Học việc tại công ty VINADES', 'hoc-viec-tai-cong-ty-vinades', 'Công ty cổ phần phát triển nguồn mở Việt Nam tạo cơ hội việc làm và học việc miễn phí cho những ứng viên có đam mê thiết kế web, lập trình PHP… được học tập và rèn luyện cùng đội ngũ lập trình viên phát triển NukeViet.', 'hoc-viec-tai-cong-ty-vinades.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_12`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_news_12` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_12`
--

INSERT INTO `nv4_vi_news_12` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 2, 0, 0, 0),
(6, 12, '1,12', 0, 1, 'Nguyễn Thế Hùng', 7, 1453192444, 1453192444, 1, 1453192444, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 13, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_admins`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_news_admins` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_block`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_news_block` (
  `bid` smallint(5) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_block`
--

INSERT INTO `nv4_vi_news_block` (`bid`, `id`, `weight`) VALUES
(1, 1, 1),
(2, 14, 7),
(2, 12, 9),
(2, 6, 12),
(2, 13, 8),
(2, 11, 10),
(2, 1, 11),
(2, 15, 6),
(2, 16, 5),
(2, 17, 4),
(2, 20, 3),
(2, 21, 2),
(2, 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_block_cat`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_news_block_cat` (
`bid` smallint(5) unsigned NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_block_cat`
--

INSERT INTO `nv4_vi_news_block_cat` (`bid`, `adddefault`, `numbers`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 0, 4, 'Tin tiêu điểm', 'Tin-tieu-diem', '', 'Tin tiêu điểm', 1, '', 1279945710, 1279956943),
(2, 1, 4, 'Tin mới nhất', 'Tin-moi-nhat', '', 'Tin mới nhất', 2, '', 1279945725, 1279956445);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_cat`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_news_cat` (
`catid` smallint(5) unsigned NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `descriptionhtml` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT '0',
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `newday` tinyint(2) unsigned NOT NULL DEFAULT '2',
  `featured` int(11) NOT NULL DEFAULT '0',
  `ad_block_cat` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `admins` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_cat`
--

INSERT INTO `nv4_vi_news_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `inhome`, `numlinks`, `newday`, `featured`, `ad_block_cat`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`) VALUES
(1, 0, 'Tin tức', '', 'Tin-tuc', '', '', '', 0, 1, 1, 0, 'viewcat_main_right', 3, '8,12,9', 1, 4, 2, 0, '', '', '', 1274986690, 1274986690, '6'),
(2, 0, 'Sản phẩm', '', 'San-pham', '', '', '', 0, 2, 5, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274986705, 1274986705, '6'),
(8, 1, 'Thông cáo báo chí', '', 'thong-cao-bao-chi', '', '', '', 0, 1, 2, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987105, 1274987244, '6'),
(9, 1, 'Tin công nghệ', '', 'Tin-cong-nghe', '', '', '', 0, 3, 4, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987212, 1274987212, '6'),
(10, 0, 'Đối tác', '', 'Doi-tac', '', '', '', 0, 3, 9, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987460, 1274987460, '6'),
(11, 0, 'Tuyển dụng', '', 'Tuyen-dung', '', '', '', 0, 4, 12, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987538, 1274987538, '6'),
(12, 1, 'Bản tin nội bộ', '', 'Ban-tin-noi-bo', '', '', '', 0, 2, 3, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987902, 1274987902, '6');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_config_post`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_detail`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_news_detail` (
  `id` int(11) unsigned NOT NULL,
  `bodyhtml` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sourcetext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0',
  `gid` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_detail`
--

INSERT INTO `nv4_vi_news_detail` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(1, '<p style="text-align: justify;">Để chuyên nghiệp hóa việc phát hành mã nguồn mở NukeViet, Ban quản trị NukeViet quyết định thành lập doanh nghiệp chuyên quản NukeViet mang tên Công ty cổ phần Phát triển nguồn mở Việt Nam (Viết tắt là VINADES.,JSC), chính thức ra mắt vào ngày 25-2-2010 (trụ sở tại Hà Nội) nhằm phát triển, phổ biến hệ thống NukeViet tại Việt Nam.<br /> <br /> Theo ông Nguyễn Anh Tú, Chủ tịch HĐQT VINADES, công ty sẽ phát triển bộ mã nguồn NukeViet nhất quán theo con đường mã nguồn mở đã chọn, chuyên nghiệp và quy mô hơn bao giờ hết. Đặc biệt là hoàn toàn miễn phí đúng tinh thần mã nguồn mở quốc tế.<br /> <br /> NukeViet là một hệ quản trị nội dung mã nguồn mở (Opensource Content Management System) thuần Việt từ nền tảng PHP-Nuke và cơ sở dữ liệu MySQL. Người sử dụng thường gọi NukeViet là portal vì nó có khả năng tích hợp nhiều ứng dụng trên nền web, cho phép người sử dụng có thể dễ dàng xuất bản và quản trị các nội dung của họ lên internet hoặc intranet.<br /> <br /> NukeViet cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng thêm các module, block... tạo sự dễ dàng cài đặt, quản lý, ngay cả với những người mới tiếp cận với website. Người dùng có thể tìm hiểu thêm thông tin và tải về sản phẩm tại địa chỉ http://nukeviet.vn</p><blockquote> <p style="text-align: justify;"> <em>Thông tin ra mắt công ty VINADES có thể tìm thấy trên trang 7 báo Hà Nội Mới ra ngày 25/02/2010 (<a href="http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm" target="_blank">xem chi tiết</a>), Bản tin tiếng Anh của đài tiếng nói Việt Nam ngày 26/02/2010 (<a href="http://english.vovnews.vn/Home/First-opensource-company-starts-operation/20102/112960.vov" target="_blank">xem chi tiết</a>); trang 7 báo An ninh Thủ Đô số 2858 ra vào thứ 2 ngày 01/03/2010 và các trang tin tức, báo điện tử khác.</em></p></blockquote>', 'http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm', 2, 0, 1, 1, 1, 0),
(6, '<div style="text-align: justify;">Tính đến năm 2015, ước tính có hơn 10.000 website đang sử dụng NukeViet. Nhu cầu triển khai NukeViet không chỉ dừng lại ở các cá nhân, doanh nghiệp, cơ sở giáo dục mà đã lan rộng ra khối chính phủ.</div><div style="text-align: justify;"><br  />Cộng đồng NukeViet cũng đã lớn mạnh hơn trước. Nếu như đầu năm 2010, ngoài Công ty VINADES chỉ có một vài công ty cung cấp dịch vụ cho NukeViet nhưng không chuyên, thì theo thống kê năm 2015 đã có hàng trăm doanh nghiệp đang cung cấp dịch vụ có liên quan đến NukeViet như: đào tạo NukeViet, thiết kế web, phát triển phần mềm, cung cấp giao diện, module... trên nền tảng NukeViet. Đặc biệt có nhiều doanh nghiệp hoàn toàn cung cấp dịch vụ thiết kế web, cung cấp giao diện, module... sử dụng nền tảng NukeViet. Nhiều sản phẩm phái sinh từ NukeViet đã ra đời, NukeViet được phát triển thành nhiều phần mềm quản lý sử dụng trên mạng LAN hay trên internet, được phát triển thành các phần mềm dùng riêng hay sử dụng như một nền tảng để cung cấp dịch vụ online, thậm chí đã được thử nghiệm tích hợp vào trong các thiết bị phần cứng để bán cùng thiết bị (NukeViet Captive Portal - dùng để quản lý người dùng truy cập internet, tích hợp trong thiết bị quản lý wifi)...<br  /><br  />Tuy nhiên, cùng với những cơ hội, cộng đồng NukeViet đang đứng trước một thách thức mới. NukeViet cần tập hợp tất cả các doanh nghiệp, tổ chức và cá nhân đang cung cấp dịch vụ cho NukeViet và liên kết các đơn vị này với nhau để giúp nhau chuyên nghiệp hóa, cùng nhau chia sẻ những cơ hội kinh doanh và trở lên lớn mạnh hơn.<br  /><br  />Nếu cộng đồng NukeViet có 500 công ty siêu nhỏ chỉ 2-3 người và những công ty này đứng riêng rẽ như hiện nay thì NukeViet mãi bé nhỏ và sẽ không làm được việc gì. Nhưng nếu 500 công ty này biết nhau, cùng làm một số việc, cùng tham gia phát triển NukeViet, đó sẽ là sức mạnh rất lớn cho một phần mềm nguồn mở như NukeViet, và đó cũng là cơ hội rất lớn để các công ty nhỏ ấy trở lên chuyên nghiệp và vững mạnh.<br  /><br  />Cho dù bạn là doanh nghiệp hay một nhóm kinh doanh, cho dù bạn đang cung cấp bất kỳ dịch vụ có liên quan trực tiếp đến NukeViet như: đào tạo NukeViet, thiết kế web, phát triển phần mềm, cung cấp giao diện, module... hoặc gián tiếp có liên quan đến NukeViet (ví dụ các công ty hosting, các nhà cung cấp dịch vụ thanh toán điện tử...). Bạn đều là một thành phần quan trọng của NukeViet. Dù bạn là công ty to hay một nhóm nhỏ, hãy đăng ký vào danh sách các đối tác của NukeViet để thiết lập kênh liên lạc với các doanh nghiệp khác trong cộng đồng NukeViet và nhận sự hỗ trợ từ Ban Quản Trị NukeViet cũng như từ các cơ quan nhà nước đang có nhu cầu tìm kiếm các đơn vị cung ứng dịch vụ cho NukeViet.<br  /><br  />Hãy gửi email cho Ban Quản Trị NukeViet về địa chỉ: admin@nukeviet.vn để đăng ký vào danh sách các đơn vị hỗ trợ NukeViet.<br  /><br  />Tiêu đề email: Đăng ký vào danh sách các đơn vị cung cấp dịch vụ dựa trên NukeViet<br  />Nội dung email: Thông tin về đơn vị, dịch vụ cung cấp.<br  /><br  />Hoặc gửi yêu cầu tại đây: <a href="http://nukeviet.vn/vi/contact/" target="_blank">http://nukeviet.vn/vi/contact/</a><br  /><br  />Mọi yêu cầu sẽ được phản hồi trong vòng 24h. Trường hợp không nhận được phản hồi, hãy liên hệ với Ban Quản Trị NukeViet qua các kênh liên lạc khác như:<br  /><br  />- Diễn đàn doanh nghiệp NukeViet: <a href="http://forum.nukeviet.vn/viewforum.php?f=4" target="_blank">http://forum.nukeviet.vn/viewforum.php?f=4</a><br  />- Fanpage NukeViet trên FaceBook: <a href="http://fb.com/nukeviet/" target="_blank">http://fb.com/nukeviet/</a><br  /><br  />Vui lòng truy cập địa chỉ sau để xem danh sách các đơn vị: <a href="https://nukeviet.vn/vi/partner/" target="_blank">https://nukeviet.vn/vi/partner/</a></div>', 'http://vinades.vn/vi/news/thong-cao-bao-chi/Thu-moi-hop-tac-6/', 2, 0, 1, 1, 1, 0),
(7, 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href="/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html">Lập trình viên PHP và MySQL.</a></li><li><a href="/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href="/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style="font-size:16px;"><strong>1. Vị trí dự tuyển:</strong></span> Lập trình viên PHP và MySQL<br /><br /><span style="font-size:16px;"><strong>2. Mô tả công việc:</strong></span><ul><li>Phát triển hệ thống NukeViet.</li><li>Phân tích yêu cầu và lập trình riêng cho các dự án cụ thể.</li><li>Thực hiện các công đoạn để dưa website vào hoạt động như upload dữ liệu lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng, trải nghiệm người dùng của sản phẩm trong khi sản phẩm hoạt động.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><span style="font-size:16px;"><strong>3. Yêu cầu:</strong></span><ul><li>Nắm vững kiến thức hướng đối tượng, cấu trúc dữ liệu và giải thuật.</li><li>Có kinh nghiệm về PHP và các hệ cơ sở dữ liệu MySQL.…</li><li>Tư duy lập trình tốt, thiết kế CSDL chuẩn, biết xử lý nhanh các vấn đề khi phát sinh nghiệp vụ mới.</li><li>Sửa được các lỗi, nâng cấp tính năng cho các module đã có. 6. Viết module mới.</li><li>Biết đưa website lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo.</li><li>Đam mê công việc về lập trình web.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt.</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng.</li></ul><br /><span style="font-size:16px;"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style="font-size:16px;"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style="font-size:16px;"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href="http://vinades.vn/vi/news/Tuyen-dung/">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style="font-size:16px;"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (file mềm)</strong></em> và gửi về hòm thư <a href="mailto:tuyendung@vinades.vn">tuyendung@vinades.vn</a><br /><br /><span style="font-size:16px;"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style="text-align: justify;"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style="text-align: justify;"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-4-85872007 - Fax: +84-4-35500914<br />- Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a> - Website: <a href="http://www.vinades.vn/">http://www.vinades.vn</a></div></blockquote>', 'http://vinades.vn/vi/news/Tuyen-dung/', 2, 0, 1, 1, 1, 0),
(8, 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href="/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html">Lập trình viên PHP và MySQL.</a></li><li><a href="/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href="/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style="font-size:16px;"><strong>1. Vị trí dự tuyển:</strong></span> Chuyên viên đồ hoạ.<br /><br /><span style="font-size:16px;"><strong>2. Mô tả công việc:</strong></span><br /><br /><em><strong>Công việc chính:</strong></em><ul><li>Thiết kế layout, banner, logo website theo yêu cầu của dự án.</li><li>Đưa ra sản phẩm sáng tạo dựa trên ý tưởng của khách hàng.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><em><strong>Ngoài ra bạn cần có khả năng thực hiện các công việc sau:</strong></em><ul><li>Cắt và ghép giao diện cho hệ thống.</li><li>Valid CSS, xHTML.</li></ul><br /><span style="font-size:16px;"><strong>3. Yêu cầu:</strong></span><ul><li>Sử dụng thành thạo phần mềm thiết kế: Photoshop ngoài ra cần biết cách sử dụng các phần mềm thiết kế khác là một lợi thế.</li><li>Có kiến thức cơ bản về thiết kế website: Am hiểu các dạng layout, thành phần của một website.</li><li>Có kinh nghiệm, kỹ năng thiết kế giao diện web, logo, banner.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo, tính thẩm mỹ tốt</li><li>Đam mê công việc thiết kế và website.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt</li><li>Am hiểu về Responsive và có thể thiết kế giao diện, layout trên mobile (Boostrap).</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Sử dụng thành thạo HTML5, CSS3 &amp; Javascrip/Jquery và Xtemplate</li><li>Khả năng chuyển PSD sang NukeViet tốt.</li><li>Hiểu rõ và nắm chắc cách làm Theme/Template.</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng</li></ul><br /><span style="font-size:16px;"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style="font-size:16px;"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style="font-size:16px;"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href="http://vinades.vn/vi/news/Tuyen-dung/">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style="font-size:16px;"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (file mềm)</strong></em> và gửi về hòm thư <a href="mailto:tuyendung@vinades.vn">tuyendung@vinades.vn</a><br /><br /><span style="font-size:16px;"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style="text-align: justify;"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style="text-align: justify;"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-4-85872007 - Fax: +84-4-35500914<br />- Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a> - Website: <a href="http://www.vinades.vn/">http://www.vinades.vn</a></div></blockquote>', '', 2, 0, 1, 1, 1, 0),
(9, 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href="/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html">Lập trình viên PHP và MySQL.</a></li><li><a href="/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href="/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style="font-size:16px;"><strong>1. Vị trí dự tuyển:</strong></span> Lập trình viên front-end (HTML/ CSS/ JS)<br /><br /><span style="font-size:16px;"><strong>2. Mô tả công việc:</strong></span><ul><li>Cắt, làm giao diện website từ bản thiết kế (sử dụng Photoshop) trên nền hệ thống NukeViet.</li><li>Tham gia vào việc phát triển Front-End các ứng dụng nền web.</li><li>Thực hiện các công đoạn để dưa website vào hoạt động như upload dữ liệu lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng, trải nghiệm người dùng, thẩm mỹ của sản phẩm trong khi sản phẩm hoạt động Tham mưu, tư vấn về chất lượng, thẩm mỹ, trải nghiệm người dùng về các sản phẩm.</li><li>Đảm bảo website theo các tiêu chuẩn web (W3c, XHTML, CSS 3.0, Tableless, no inline style, … ).</li><li>Đảm bảo website hiển thị đúng trên tất cả các trình duyệt.</li><li>Đảm bảo website theo chuẩn “Responsive Web Design.</li><li>Đảm bảo việc đưa sản phẩm thiết kế đến người dùng cuối cùng một cách chính xác và đẹp.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><span style="font-size:16px;"><strong>3. Yêu cầu:</strong></span><ul><li>Có kiến thức cơ bản về thiết kế website: Am hiểu các dạng layout, thành phần của một website.</li><li>Hiểu rõ và nắm chắc cách làm Theme/Template.</li><li>Sử dụng thành thạo HTML5, CSS3 &amp; Javascrip/Jquery và Xtemplate</li><li>Khả năng chuyển PSD sang NukeViet tốt.</li><li>Biết đưa website lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo, tính thẩm mỹ tốt.</li><li>Đam mê công việc về web.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt.</li><li>Am hiểu về Responsive và có thể thiết kế giao diện, layout trên mobile (Boostrap).</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng.</li></ul><br /><span style="font-size:16px;"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style="font-size:16px;"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style="font-size:16px;"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href="http://vinades.vn/vi/news/Tuyen-dung/">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style="font-size:16px;"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (file mềm)</strong></em> và gửi về hòm thư <a href="mailto:tuyendung@vinades.vn">tuyendung@vinades.vn</a><br /><br /><span style="font-size:16px;"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style="text-align: justify;"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style="text-align: justify;"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-4-85872007 - Fax: +84-4-35500914<br />- Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a> - Website: <a href="http://www.vinades.vn/">http://www.vinades.vn</a></div></blockquote>', '', 2, 0, 1, 1, 1, 0);
INSERT INTO `nv4_vi_news_detail` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(10, 'Cả hội trường như vỡ òa, rộn tiếng vỗ tay, tiếng cười nói chúc mừng các nhà khoa học, các nhóm tác giả đoạt Giải thưởng Nhân tài Đất Việt năm 2011. Năm thứ 7 liên tiếp, Giải thưởng đã phát hiện và tôn vinh nhiều tài năng của đất nước.<div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/01_b7d3f.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Sân khấu trước lễ trao giải.</span></div><div> &nbsp;</div><div align="center"> &nbsp;</div><div align="left"> Cơ cấu Giải thưởng của Nhân tài Đất Việt 2011 trong lĩnh vực CNTT bao gồm 2 hệ thống giải dành cho “Sản phẩm có tiềm năng ứng dụng” và “Sản phẩm đã ứng dụng rộng rãi trong thực tế”. Mỗi hệ thống giải sẽ có 1 giải Nhất, 1 giải Nhì và 1 giải Ba với trị giá giải thưởng tương đương là 100 triệu đồng, 50 triệu đồng và 30 triệu đồng cùng phần thưởng của các đơn vị tài trợ.</div><div align="center"> &nbsp;</div><div align="center"> <div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/03_f19bd.jpg" width="350" /></div> <div align="center"> Nhiều tác giả, nhóm tác giả đến lễ trao giải từ rất sớm.</div></div><p> Giải thưởng Nhân tài Đất Việt 2011 trong lĩnh vực Khoa học Tự nhiên được gọi chính thức là Giải thưởng Khoa học Tự nhiên Việt Nam sẽ có tối đa 6 giải, trị giá 100 triệu đồng/giải dành cho các lĩnh vực: Toán học, Cơ học, Vật lý, Hoá học, Các khoa học về sự sống, Các khoa học về trái đất (gồm cả biển) và môi trường, và các lĩnh vực khoa học liên ngành hoặc đa ngành của hai hoặc nhiều ngành nói trên. Viện Khoa học và Công nghệ Việt Nam thành lập Hội đồng giám khảo gồm các nhà khoa học tự nhiên hàng đầu trong nước để thực hiện việc đánh giá và trao giải.</p><div> Sau thành công của việc trao Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y dược năm 2010, Ban Tổ chức tiếp tục tìm kiếm những chủ nhân xứng đáng cho Giải thưởng này trong năm 2011.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/07_78b85.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam Lê Khả Phiêu tới&nbsp;dự Lễ trao giải.</span></div><div> &nbsp;</div><div> 45 phút trước lễ trao giải, không khí tại Cung Văn hóa Hữu nghị Việt - Xô đã trở nên nhộn nhịp. Sảnh phía trước Cung gần như chật kín. Rất đông bạn trẻ yêu thích công nghệ thông tin, sinh viên các trường đại học đã đổ về đây, cùng với đó là những bó hoa tươi tắn sẽ được dành cho các tác giả, nhóm tác giả đoạt giải.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/09_aef87.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Phó Chủ tịch nước CHXHCN Việt Nam Nguyễn Thị Doan.</span></div><div> &nbsp;</div><div> Các vị khách quý cũng đến từ rất sớm. Tới tham dự lễ trao giải năm nay có ông Lê Khả Phiêu, nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam; bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCN Việt Nam; ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam; ông Nguyễn Bắc Son, Bộ trưởng Bộ Thông tin và Truyền thông; ông Đặng Ngọc Tùng, Chủ tịch Tổng Liên đoàn lao động Việt Nam; ông Phạm Văn Linh, Phó trưởng ban Tuyên giáo Trung ương; ông Đỗ Trung Tá, Phái viên của Thủ tướng Chính phủ về CNTT, Chủ tịch Hội đồng Khoa học công nghệ quốc gia; ông Nguyễn Quốc Triệu, nguyên Bộ trưởng Bộ Y tế, Trưởng Ban Bảo vệ Sức khỏe TƯ; bà Cù Thị Hậu, Chủ tịch Hội người cao tuổi Việt Nam; ông Lê Doãn Hợp, nguyên Bộ trưởng Bộ Thông tin Truyền thông, Chủ tịch Hội thông tin truyền thông số…</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/08_ba46c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Bộ trưởng Bộ Thông tin và Truyền thông Nguyễn Bắc Son.</span></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/06_29592.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Giáo sư - Viện sỹ Nguyễn Văn Hiệu.</span></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/04_051f2.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nguyên Bộ trưởng Bộ Y tế Nguyễn Quốc Triệu.</span></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/05_c7ea4.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam.</span></div><p> Do tuổi cao, sức yếu hoặc bận công tác không đến tham dự lễ trao giải nhưng Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang cũng gửi lẵng hoa đến chúc mừng lễ trao giải.</p><div> Đúng 20h, Lễ trao giải bắt đầu với bài hát “Nhân tài Đất Việt” do ca sỹ Thái Thùy Linh cùng ca sĩ nhí và nhóm múa biểu diễn. Các nhóm tác giả tham dự Giải thưởng năm 2011 và những tác giả của các năm trước từ từ bước ra sân khấu trong tiếng vỗ tay tán dương của khán giả.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/12_74abf.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN15999_3e629.jpg" style="MARGIN: 5px" width="450" /></div></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Tiết mục mở màn Lễ trao giải.</span></div><p> Trước Lễ trao giải Giải thưởng Nhân tài Đất Việt năm 2011, Đại tướng Võ Nguyên Giáp, Chủ tịch danh dự Hội Khuyến học Việt Nam, đã gửi thư chúc mừng, khích lệ Ban tổ chức Giải thưởng cũng như các nhà khoa học, các tác giả tham dự.</p><blockquote> <p> <em><span style="FONT-STYLE: italic">Hà Nội, ngày 16 tháng 11 năm 2011</span></em></p> <div> <em>Giải thưởng “Nhân tài đất Việt” do Hội Khuyến học Việt Nam khởi xướng đã bước vào năm thứ bảy (2005 - 2011) với ba lĩnh vực: Công nghệ thông tin, Khoa học tự nhiên và Y dược.</em></div></blockquote><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/thuDaituong1_767f4.jpg" style="MARGIN: 5px" width="400" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Thư của Đại tướng Võ Nguyên Giáp gửi BTC Giải thưởng Nhân tài đất Việt.</span></div><blockquote> <p> <em>Tôi gửi lời chúc mừng các nhà khoa học và các thí sinh được nhận giải thưởng “Nhân tài đất Việt” năm nay.</em></p> <p> <em>Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực.</em></p> <p> <em>Nhân ngày “Nhà giáo Việt Nam”, chúc Hội Khuyến học Việt nam, chúc các thầy giáo và cô giáo, với tâm huyết và trí tuệ của mình, sẽ đóng góp xứng đáng vào công cuộc đổi mới căn bản và toàn diện nền giáo dục nước nhà, để cho nền giáo dục Việt Nam thực sự là cội nguồn của nguyên khí quốc gia, đảm bảo cho mọi nhân cách và tài năng đất Việt được vun đắp và phát huy vì sự trường tồn, sự phát triển tiến bộ và bền vững của đất nước trong thời đại toàn cầu hóa và hội nhập quốc tế.</em></p> <p> <em>Chào thân ái,</em></p> <p> <strong><em>Chủ tịch danh dự Hội Khuyến học Việt Nam</em></strong></p> <p> <strong><em>Đại tướng Võ Nguyên Giáp</em></strong></p></blockquote><p> Phát biểu khai mạc Lễ trao giải, Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng Ban tổ chức, bày tỏ lời cám ơn chân thành về những tình cảm cao đẹp và sự quan tâm chăm sóc của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang đã và đang dành cho Nhân tài Đất Việt.</p><div> Nhà báo Phạm Huy Hoàn nhấn mạnh, Giải thưởng Nhân tài Đất Việt suốt 7 năm qua đều nhận được sự quan tâm của các vị lãnh đạo Đảng, Nhà nước và của toàn xã hội. Tại Lễ trao giải, Ban tổ chức luôn có vinh dự được đón tiếp&nbsp;các vị lãnh đạo&nbsp; Đảng và Nhà nước đến dự và trực tiếp trao Giải thưởng.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/15_4670c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Trưởng Ban tổ chức Phạm Huy Hoàn phát biểu khai mạc buổi lễ.</span></div><p> Năm 2011, Giải thưởng có 3 lĩnh vực được xét trao giải là CNTT, Khoa học tự nhiên và Y dược. Lĩnh&nbsp; vực CNTT đã đón nhận 204 sản phẩm tham dự từ mọi miền đất nước và cả nước ngoài như thí sinh Nguyễn Thái Bình từ bang California - Hoa Kỳ và một thí sinh ở Pháp cũng đăng ký tham gia.</p><div> “Cùng với lĩnh vực CNTT, năm nay, Hội đồng khoa học của Viện khoa học và công nghệ Việt Nam và Hội đồng khoa học - Bộ Y tế tiếp tục giới thiệu những nhà khoa học xuất&nbsp; sắc, có công trình nghiên cứu đem lại nhiều lợi ích cho xã hội trong lĩnh vực khoa học tự nhiên và lĩnh vực y dược. Đó là những bác sĩ tài năng, những nhà khoa học mẫn tuệ, những người đang ngày đêm thầm lặng cống hiến trí tuệ sáng tạo của mình cho xã hội trong công cuộc xây dựng đất nước.” - nhà báo Phạm Huy Hoàn nói.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/14_6e18f.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng BTC Giải thưởng và ông Phan Hoàng Đức, Phó TGĐ Tập đoàn VNPT nhận lẵng hoa chúc mừng của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang.</span></div><p> Cũng theo Trưởng Ban tổ chức Phạm Huy Hoàn, đến nay, vị Chủ tịch danh dự đầu tiên của Hội Khuyến học Việt Nam, Đại tướng Võ Nguyên Giáp, đã bước qua tuổi 100 nhưng vẫn luôn dõi theo và động viên từng bước phát triển của Giải thưởng Nhân tài Đất Việt. Đại tướng luôn quan tâm chăm sóc Giải thưởng ngay từ khi Giải thưởng&nbsp; mới ra đời cách đây 7 năm.</p><p> Trước lễ trao giải, Đại tướng Võ Nguyên Giáp đã gửi thư chúc mừng, động viên Ban tổ chức. Trong thư, Đại tướng viết: “Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực.</p><p> Sau phần khai mạc, cả hội trường hồi hội chờ đợi phút vinh danh các nhà khoa học và các tác giả, nhóm tác giả đoạt giải.</p><div> <span style="FONT-WEIGHT: bold">* Giải thưởng Khoa học Tự nhiên Việt Nam </span>thuộc về 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ - Viện Vật lý, Viện Khoa học công nghệ Việt Nam với công trình “Nghiên cứu cấu trúc hạt nhân và các phản ứng hạt nhân”.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn_d4aae.jpg" style="MARGIN: 5px" width="450" /></div></div><p> Hai nhà khoa học đã tiến hành thành công các nghiên cứu về phản ứng hạt nhân với nơtron, phản ứng quang hạt nhân, quang phân hạch và các phản ứng hạt nhân khác có cơ chế phức tạp trên các máy gia tốc như máy phát nơtron, Microtron và các máy gia tốc thẳng của Việt Nam và Quốc tế. Các nghiên cứu này đã góp phần làm sáng tỏ cấu trúc hạt nhân và cơ chế phản ứng hạt nhân, đồng thời cung cấp nhiều số liệu hạt nhân mới có giá trị cho Kho tàng số liệu hạt nhân.</p><p> GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ đã khai thác hiệu quả hai máy gia tốc đầu tiên của Việt Nam là máy phát nơtron NA-3-C và Microtron MT-17 trong nghiên cứu cơ bản, nghiên cứu ứng dụng và đào tạo nhân lực. Trên cơ sở các thiết bị này, hai nhà khoa học đã tiến hành thành công những nghiên cứu cơ bản thực nghiệm đầu tiên về phản ứng hạt nhân ở Việt Nam; nghiên cứu và phát triển các phương pháp phân tích hạt nhân hiện đại và áp dụng thành công ở Việt Nam.</p><div> Bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCNVN và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn2_e2865.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Phó Chủ tịch nước CHXHCNVN Nguyễn Thị Doan và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ.</span></div><p> GS.VS Nguyễn Văn Hiệu chia sẻ: “Cách đây không lâu, Chính phủ đã ký quyết định xây dựng nhà máy điện hạt nhân trong điều kiện đất nước còn nhỏ bé, nghèo khó và vì thế việc đào tạo nhân lực là nhiệm vụ số 1 hiện nay. Rất may, Việt Nam có 2 nhà khoa học cực kỳ tâm huyết và nổi tiếng trong cả nước cũng như trên thế giới. Hội đồng khoa học chúng tôi muốn xướng tên 2 nhà khoa học này để Chính phủ huy động cùng phát triển xây dựng nhà máy điện hạt nhân.”</p><p> GS.VS Hiệu nhấn mạnh, mặc dù điều kiện làm việc của 2 nhà khoa học không được quan tâm, làm việc trên những máy móc cũ kỹ được mua từ năm 1992 nhưng 2 ông vẫn xay mê cống hiến hết mình cho lĩnh Khoa học tự nhiên Việt Nam.</p><p> <span style="FONT-WEIGHT: bold">* Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y Dược:</span> 2 giải</p><div> <span style="FONT-WEIGHT: bold">1.</span> Nhóm nghiên cứu của Bệnh viện Hữu nghị Việt - Đức với công trình <span style="FONT-STYLE: italic">“Nghiên cứu triển khai ghép gan, thận, tim lấy từ người cho chết não”</span>.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y_3dca2.jpg" style="MARGIN: 5px" width="450" /></div></div><div> &nbsp;</div><div> Tại bệnh viện Việt Đức, tháng 4/2011, các ca ghép tạng từ nguồn cho là người bệnh chết não được triển khai liên tục. Với 4 người cho chết não hiến tạng, bệnh viện đã ghép tim cho một trường hợp,&nbsp;2 người được ghép gan, 8 người được ghép thận, 2 người được ghép van tim và tất cả các ca ghép này đều thành công, người bệnh được ghép đã có một cuộc sống tốt hơn với tình trạng sức khỏe ổn định.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y2_cb5a1.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nguyên Tổng Bí Ban chấp hành TW Đảng CSVN Lê Khả Phiêu và ông Vũ Văn Tiền, Chủ tịch Hội đồng quản trị Ngân hàng An Bình trao giải thưởng cho nhóm nghiên cứu của BV Hữu nghị Việt - Đức.</span></div><p> Công trong việc ghép tạng từ người cho chết não không chỉ thể hiện năng lực, trình độ, tay nghề của bác sĩ Việt Nam mà nó còn mang một ý nghĩa nhân văn to lớn, mang một thông điệp gửi đến những con người giàu lòng nhân ái với nghĩa cử cao đẹp đã hiến tạng để cứu sống những người bệnh khác.</p><p> <span style="FONT-WEIGHT: bold">2.</span> Hội đồng ghép tim Bệnh viện Trung ương Huế với công trình nghiên cứu <span style="FONT-STYLE: italic">“Triển khai ghép tim trên người lấy từ người cho chết não”</span>.</p><div> Đề tài được thực hiện dựa trên ca mổ ghép tim thành công lần đầu tiên ở Việt Nam của chính 100% đội ngũ y, bác sĩ của Bệnh viện Trung ương Huế đầu tháng 3/2011. Bệnh nhân được ghép tim thành công là anh Trần Mậu Đức (26 tuổi, ở phường Phú Hội, TP. Huế).</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y3_7768c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Hội đồng ghép tim BV Trung ương Huế nhận Giải thưởng Nhân tài Đất Việt.</span></div><p> Ghép tim từ người cho chết não đến người bị bệnh tim cần được ghép tim phải đảm bảo các yêu cầu: đánh giá chức năng các cơ quan; đánh giá tương hợp miễn dịch và phát hiện nguy cơ tiềm ẩn có thể xảy ra trong và sau khi ghép tim để từ đó có phương thức điều trị thích hợp. Có tới 30 xét nghiệm cận lâm sàng trung và cao cấp tiến hành cho cả người cho tim chết não và người sẽ nhận ghép tim tại hệ thống labo của bệnh viện.</p><p> ---------------------</p><p> <span style="FONT-WEIGHT: bold">* Giải thưởng Nhân tài đất Việt Lĩnh vực Công nghệ thông tin.</span></p><p> <span style="FONT-STYLE: italic">Hệ thống sản phẩm đã ứng dụng thực tế:</span></p><p> <span style="FONT-STYLE: italic">Giải Nhất:</span> Không có.</p><p> <span style="FONT-STYLE: italic">Giải Nhì:</span> Không có</p><p> <span style="FONT-STYLE: italic">Giải Ba:</span> 3 giải, mỗi giải trị giá 30 triệu đồng.</p><div> <span style="FONT-WEIGHT: bold">1.</span> <span style="FONT-STYLE: italic">“Bộ cạc xử lý tín hiệu HDTV”</span> của nhóm HD Việt Nam.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/hdtv_13b10.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhóm HDTV Việt Nam lên nhận giải.</span></div><p> Đây là bộ cạc xử lý tín hiệu HDTV đầu tiên tại Việt Nam đạt tiêu chuẩn OpenGear. Bộ thiết bị bao gồm 2 sản phẩm là cạc khuếch đại phân chia tín hiệu HD DA và cạc xử lý tín hiệu HD FX1. Nhờ bộ cạc này mà người sử dụng cũng có thể điều chỉnh mức âm thanh hoặc video để tín hiệu của kênh tuân theo mức chuẩn và không phụ thuộc vào chương trình đầu vào.</p><div> <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">2.</span> <span style="FONT-STYLE: italic">“Mã nguồn mở NukeViet”</span> của nhóm tác giả Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC).</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" alt="NukeViet nhận giải ba Nhân tài đất Việt 2011" src="/uploads/news/nukeviet-nhantaidatviet2011.jpg" style="margin: 5px; width: 450px; height: 301px;" /></div></div><p> NukeViet là CMS mã nguồn mở đầu tiên của Việt Nam có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là VINADES.,JSC - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp.</p><div> <span style="FONT-WEIGHT: bold">3.</span> <span style="FONT-STYLE: italic">“Hệ thống ngôi nhà thông minh homeON”</span> của nhóm Smart home group.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16132_82014.jpg" style="MARGIN: 5px" width="450" /></div></div><p> Sản phẩm là kết quả từ những nghiên cứu miệt mài nhằm xây dựng một ngôi nhà thông minh, một cuộc sống xanh với tiêu chí: An toàn, tiện nghi, sang trọng và tiết kiệm năng lượng, hưởng ứng lời kêu gọi tiết kiệm năng lượng của Chính phủ.&nbsp;</p><p> <strong><span style="FONT-STYLE: italic">* Hệ thống sản phẩm có tiềm năng ứng dụng:</span></strong></p><p> <span style="FONT-STYLE: italic">Giải Nhất: </span>Không có.</p><div> <span style="FONT-STYLE: italic">Giải Nhì:</span> trị giá 50 triệu đồng: <span style="FONT-STYLE: italic">“Dịch vụ Thông tin và Tri thức du lịch ứng dụng cộng nghệ ngữ nghĩa - iCompanion”</span> của nhóm tác giả SIG.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/nhi_7eee0.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhóm tác giả SIG nhận giải Nhì Nhân tài đất Việt 2011 ở hệ thống sản phẩm có tiềm năng ứng dụng.</span></div><p> ICompanion là hệ thống thông tin đầu tiên ứng dụng công nghệ ngữ nghĩa trong lĩnh vực du lịch - với đặc thù khác biệt là cung cấp các dịch vụ tìm kiếm, gợi ý thông tin “thông minh” hơn, hướng người dùng và kết hợp khai thác các tính năng hiện đại của môi trường di động.</p><p> Đại diện nhóm SIG chia sẻ: “Tinh thần sáng tạo và lòng khát khao muốn được tạo ra các sản phẩm mới có khả năng ứng dụng cao trong thực tiễn luôn có trong lòng của những người trẻ Việt Nam. Cảm ơn ban tổ chức và những nhà tài trợ đã giúp chúng tôi có một sân chơi thú vị để khuyến khích và chắp cánh thực hiện ước mơ của mình. Xin cảm ơn trường ĐH Bách Khoa đã tạo ra một môi trường nghiên cứu và sáng tạo, gắn kết 5 thành viên trong nhóm.”</p><p> <span style="FONT-STYLE: italic">Giải Ba:</span> 2 giải, mỗi giải trị giá 30 triệu đồng.</p><div> <span style="FONT-WEIGHT: bold">1. </span><span style="FONT-STYLE: italic">“Bộ điều khiển IPNET”</span> của nhóm IPNET</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16149_ed58d.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhà báo Phạm Huy Hoàn, Trưởng Ban Tổ chức Giải thưởng NTĐV, Tổng Biên tập báo điện tử Dân trí và ông Tạ Hữu Thanh - Phó TGĐ Jetstar Pacific trao giải cho nhóm IPNET.</span></div><p> Bằng cách sử dụng kiến thức thiên văn học để tính giờ mặt trời lặn và mọc tại vị trí cần chiếu sáng được sáng định bởi kinh độ, vĩ độ cao độ, hàng ngày sản phẩm sẽ tính lại thời gian cần bật/tắt đèn cho phù hợp với giờ mặt trời lặn/mọc.</p><div> <span style="FONT-WEIGHT: bold">2.</span> <span style="FONT-STYLE: italic">“Hệ thống lập kế hoạch xạ trị ung thư quản lý thông tin bệnh nhân trên web - LYNX”</span> của nhóm LYNX.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/3tiem-nang_32fee.jpg" style="MARGIN: 5px" width="450" /></div></div><p> Đây là loại phần mềm hoàn toàn mới ở Việt Nam, là hệ thống lập kế hoạch và quản lý thông tin của bệnh nhân ung thư qua Internet (LYNX) dựa vào nền tảng Silverlight của Microsoft và kiến thức chuyên ngành Vật lý y học. LYNX giúp ích cho các nhà khoa học, bác sĩ, kỹ sư vật lý, bệnh nhân và mọi thành viên trong việc quản lý và theo dõi hệ thống xạ trị ung thư một cách tổng thể. LYNX có thể được sử dụng thông qua các thiết bị như máy tính cá nhân, máy tính bảng… và các trình duyệt Internet Explorer, Firefox, Chrome…</p><div> Chương trình trao giải đã được truyền hình trực tiếp trên VTV2 - Đài Truyền hình Việt Nam và tường thuật trực&nbsp;tuyến trên báo điện tử Dân trí từ 20h tối 20/11/2011.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0545_c898e.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0560_c995c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16199_36a5c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <div align="center"> <table border="1" cellpadding="0" cellspacing="0" width="90%"> <tbody> <tr> <td> <div> <span style="FONT-WEIGHT: bold"><span style="FONT-WEIGHT: normal; FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Khởi xướng từ năm 2005, Giải thưởng Nhân tài Đất Việt đã phát hiện và tôn vinh nhiều tài năng trong lĩnh vực CNTT-TT, Khoa học tự nhiên và Y dược, trở thành một sân chơi bổ ích cho những người yêu thích CNTT. Mỗi năm, Giải thưởng ngày càng thu hút số lượng tác giả và sản phẩm tham gia đông đảo và nhận được sự quan tâm sâu sắc của lãnh đạo Đảng, Nhà nước cũng như công chúng.</span></span></div> <div> <span style="FONT-WEIGHT: bold">&nbsp;</span></div> <div> <span style="FONT-WEIGHT: bold"><span style="FONT-WEIGHT: normal; FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Đối tượng tham gia Giải thưởng trong lĩnh vực CNTT là những người Việt Nam ở mọi lứa tuổi, đang sinh sống trong cũng như ngoài nước. Năm 2006, Giải thưởng có sự tham gia của thí sinh đến từ 8 nước trên thế giới và 40 tỉnh thành của Việt Nam. Từ năm 2009, Giải thưởng được mở rộng sang lĩnh vực Khoa học tự nhiên, và năm 2010 là lĩnh vực Y dược, vinh danh những nhà khoa học trong các lĩnh vực này.</span>&nbsp;</span></div> <div> <span style="FONT-WEIGHT: bold">&nbsp;</span></div> </td> </tr> </tbody> </table> </div></div>', '', 2, 0, 1, 1, 1, 0),
(11, '<div style="text-align: justify;">Có hiệu lực từ ngày 20/1/2015, Thông tư này thay thế cho Thông tư 41/2009/TT-BTTTT (Thông tư 41) ngày 30/12/2009 ban hành Danh mục các sản phẩm phần mềm nguồn mở đáp ứng yêu cầu sử dụng trong cơ quan, tổ chức nhà nước.<br />\r\n<br />\r\nSản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước trong Thông tư 41/2009/TT-BTTTT vừa được Bộ TT&amp;TT ban hành, là những&nbsp;sản phẩm đã đáp ứng các tiêu chí về tính năng kỹ thuật cũng như tính mở và bền vững, và NukeViet là một trong số đó.</div>\r\n\r\n<p style="text-align: justify;">Cụ thể, theo Thông tư 20, sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước phải đáp các tiêu chí về chức năng, tính năng kỹ thuật bao gồm: phần mềm có các chức năng, tính năng kỹ thuật phù hợp với các yêu cầu nghiệp vụ hoặc các quy định, hướng dẫn tương ứng về ứng dụng CNTT trong các cơ quan, tổ chức nhà nước; phần mềm đáp ứng được yêu cầu tương thích với hệ thống thông tin, cơ sở dữ liệu hiện có của các cơ quan, tổ chức.</p>\r\n\r\n<p style="text-align: justify;">Bên cạnh đó, các sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước còn phải đáp ứng tiêu chí về tính mở và tính bền vững của phần mềm. Cụ thể, phần mềm phải đảm bảo các quyền: tự do sử dụng phần mềm không phải trả phí bản quyền, tự do phân phối lại phần mềm, tự do sửa đổi phần mềm theo nhu cầu sử dụng, tự do phân phối lại phần mềm đã chỉnh sửa (có thể thu phí hoặc miễn phí); phần mềm phải có bản mã nguồn, bản cài đặt được cung cấp miễn phí trên mạng; có điểm ngưỡng thất bại PoF từ 50 điểm trở xuống và điểm mô hình độ chín nguồn mở OSMM từ 60 điểm trở lên.</p>\r\n\r\n<p style="text-align: justify;">Căn cứ những tiêu chuẩn trên, thông tư 20 quy định cụ thể Danh mục 31 sản phẩm thuộc 11 loại phần mềm được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước.&nbsp;NukeViet thuộc danh mục hệ quản trị nội dung nguồn mở. Chi tiết thông tư và danh sách 31 sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước có&nbsp;<a href="http://vinades.vn/vi/download/van-ban-luat/Thong-tu-20-2014-TT-BTTTT/" target="_blank">tại đây</a>.</p>\r\n\r\n<p style="text-align: justify;">Thông tư 20/2014/TT-BTTTT quy định rõ: Các cơ quan, tổ chức nhà nước khi có nhu cầu sử dụng vốn nhà nước để đầu tư xây dựng, mua sắm hoặc thuê sử dụng các loại phần mềm có trong Danh mục hoặc các loại phần mềm trên thị trường đã có sản phẩm phần mềm nguồn mở tương ứng thỏa mãn các tiêu chí trên (quy định tại Điều 3 Thông tư 20) thì phải&nbsp;ưu tiên lựa chọn các sản phẩm phần mềm nguồn mở tương ứng, đồng thời phải thể hiện rõ sự ưu tiên này trong các tài liệu&nbsp;như thiết kế sơ bộ, thiết kế thi công, kế hoạch đấu thầu, kế hoạch đầu tư, hồ sơ mời thầu, yêu cầu chào hàng, yêu cầu báo giá hoặc các yêu cầu mua sắm khác.</p>\r\n\r\n<p style="text-align: justify;">Đồng thời,&nbsp;các cơ quan, tổ chức nhà nước phải đảm bảo không đưa ra các yêu cầu, điều kiện, tính năng kỹ thuật có thể dẫn đến việc loại bỏ các sản phẩm phần mềm nguồn mở&nbsp;trong các tài liệu như thiết kế sơ bộ, thiết kế thi công, kế hoạch đấu thầu, kế hoạch đầu tư, hồ sơ mời thầu, yêu cầu chào hàng, yêu cầu báo giá hoặc các yêu cầu mua sắm khác.</p>\r\n\r\n<p style="text-align: justify;">Như vậy, sau thông tư số 08/2010/TT-BGDĐT của Bộ GD&amp;ĐT ban hành ngày 01-03-2010 quy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục trong đó đưa NukeViet vào danh sách các mã nguồn mở được khuyến khích sử dụng trong giáo dục, thông tư 20/2014/TT-BTTTT đã mở đường cho NukeViet vào sử dụng cho các cơ quan, tổ chức nhà nước. Các đơn vị hỗ trợ triển khai NukeViet cho các cơ quan nhà nước có thể sử dụng quy định này để được ưu tiên triển khai cho các dự án website, cổng thông tin cho các cơ quan, tổ chức nhà nước.<br />\r\n<br />\r\nThời gian tới, Công ty cổ phần phát triển nguồn mở Việt Nam (<a href="http://vinades.vn/" target="_blank">VINADES.,JSC</a>) - đơn vị chủ quản của NukeViet - sẽ cùng với Ban Quản Trị NukeViet tiếp tục hỗ trợ các doanh nghiệp đào tạo nguồn nhân lực chính quy phát triển NukeViet nhằm cung cấp dịch vụ ngày một tốt hơn cho chính phủ và các cơ quan nhà nước, từng bước xây dựng và hình thành liên minh các doanh nghiệp phát triển NukeViet, đưa sản phẩm phần mềm nguồn mở Việt không những phục vụ tốt thị trường Việt Nam mà còn từng bước tiến ra thị trường khu vực và các nước đang phát triển khác trên thế giới nhờ vào lợi thế phần mềm nguồn mở đang được chính phủ nhiều nước ưu tiên phát triển.</p>', 'mic.gov.vn', 2, 0, 1, 1, 1, 0),
(12, '<div style="text-align: justify;">Trong năm 2016, chúng tôi xác định là đơn vị sát cánh cùng các đơn vị giáo dục- là đơn vị xây dựng nhiều website cho ngành giáo dục nhất trên cả nước.<br  />Với phần mềm mã nguồn mở NukeViet hiện có nhiều lợi thế:<br  />+ Được Bộ giáo dục khuyến khích sử dụng.<br  />+ Được bộ thông tin truyền thông chỉ định sử dụng trong khối cơ quan nhà nước.<br  />+Được cục công nghệ thông tin ghi rõ tên sản phẩm NukeViet nên dùng theo hướng dẫn thực hiện CNTT 2015-2016.<br  />Chúng tôi cần các bạn góp phần xây dựng nền giáo dục nước nhà ngày càng phát triển.</div><div>&nbsp;</div><table align="left" border="1" cellpadding="20" cellspacing="0" class="table table-striped table-bordered table-hover" style="width:100%;" width="653">	<tbody>		<tr>			<td style="width: 27.66%;"><strong>Vị trí tuyển dụng:</strong></td>			<td style="width: 72.34%;">Nhân viên kinh doanh</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Chức vụ:</strong></td>			<td style="width: 72.34%;">Nhân viên</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Ngành nghề:</strong></td>			<td style="width: 72.34%;"><strong>Sản phẩm:</strong><br  />			Cổng thông tin, website cho các phòng, sở giáo dục và đào tạo các trường học.</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Hình thức làm việc:</strong></td>			<td style="width: 72.34%;">Toàn thời gian cố định</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Địa điểm làm việc:</strong></td>			<td style="width: 72.34%;">Văn phòng công ty (Được đi công tác theo hợp đồng đã ký)</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Mức lương:</strong></td>			<td style="width: 72.34%;">&nbsp;Lương cố định + Thưởng vượt doanh số + thưởng theo từng hợp đồng (từ 2-7%).</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Mô tả công việc:</strong></td>			<td style="width: 72.34%;">Chúng tôi có khách hàng mục tiêu và danh sách khách hàng, công việc đòi hỏi ứng viên sử dụng thành thạo vi tính văn phòng, các phần mềm liên quan đến công việc và có laptop để phục vụ công việc.<br  />			- Sales Online, quảng bá ký kết, liên kết, với các đối tác qua INTERNET. Xây dưng mối quan hệ phát triển bền vững với các đối tác.<br  />			- Gọi điện, giới thiệu dịch vụ, sản phẩm của công ty đến đối tác.<br  />			- Xử lý các cuộc gọi của khách hàng liên quan đến, sản phẩm, dịch vụ công ty.<br  />			- Đàm phán, thương thuyết, ký kết hợp đồng với khách hàng đang có nhu cầu thiết kế website , SEO website , PR thương hiệu trên Internet&nbsp;<br  />			- Duy trì và chăm sóc mối quan hệ lâu dài với khách hàng, mở rộng khách hàng tiềm năng nhằm thúc đẩy doanh số bán hàng<br  />			- Hỗ trợ khách hàng khi được yêu cầu</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Số lượng cần tuyển:</strong></td>			<td style="width: 72.34%;">05</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Quyền lợi được hưởng:</strong></td>			<td style="width: 72.34%;">- Được đào tạo kĩ năng bán hàng, được công ty hỗ trợ tham gia khóa học bán hàng chuyên nghiệp.<br  />			- Lương cứng: 3.000.000 VNĐ+ hoa hồng dự án (2-7%/năm/hợp đồng). Lương trả qua ATM, được xét tăng lương 3 tháng một lần dựa trên doanh thu.<br  />			- Bậc lương xét trên năng lực bán hàng.<br  />			- Thưởng theo dự án, các ngày lễ tết.<br  />			- Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội.<br  />			- Cơ hội làm việc và gắn bó lâu dài trong công ty, được thưởng cổ phần nếu doanh thu tốt.</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Số năm kinh nghiệm:</strong></td>			<td style="width: 72.34%;">Trên 6 tháng</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Yêu cầu bằng cấp:</strong></td>			<td style="width: 72.34%;">Cao đẳng, Đại học</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Yêu cầu giới tính:</strong></td>			<td style="width: 72.34%;">Không yêu cầu</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Yêu cầu độ tuổi:</strong></td>			<td style="width: 72.34%;">Không yêu cầu</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Yêu cầu khác:</strong></td>			<td style="width: 72.34%;">- Yêu thích và đam mê Internet Marketing, thích online, thương mại điện tử<br  />			- Giọng nói dễ nghe, không nói ngọng.<br  />			- Có khả năng giao tiếp qua điện thoại.<br  />			- Ngoại hình ưa nhìn là một lợi thế<br  />			- Có tính cẩn thận trong công việc, luôn cố gắng học hỏi.<br  />			- Kỹ năng sales online tốt.<br  />			-Trung thực, năng động, nhiệt tình,siêng năng, nhiệt huyết trong công việc.</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Hồ sơ bao gồm:</strong></td>			<td style="width: 72.34%;"><strong>* Yêu cầu Hồ sơ:</strong><br  />			<strong>Cách thức đăng ký dự tuyển</strong>: Làm Hồ sơ xin việc (file mềm) và gửi về hòm thư <a href="mailto:tuyendung@vinades.vn">tuyendung@vinades.vn</a><br  />			<br  />			<strong>Nội dung hồ sơ xin việc file mềm gồm</strong>:<br  />			<strong>+ Đơn xin việc:</strong>&nbsp;Theo hướng dẫn bên dưới.<br  />			<strong>+ Thông tin ứng viên:</strong>&nbsp;Theo mẫu của VINADES.,JSC <strong><em>(download tại đây:&nbsp;<a href="http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-kinh-doanh/">Mẫu lý lịch ứng viên</a>)</em></strong><br  />			<strong>* Hồ sơ xin việc (Bản in thông thường) bao gồm</strong>:<br  />			- Giấy khám sức khoẻ của cơ quan y tế.<br  />			- Bản sao hộ khẩu (có công chứng)<br  />			- Bản sao giấy khai sinh (có công chứng)<br  />			- Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn -bằng chứng chỉ (có công chứng)<br  />			- Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.<br  />			- Thư giới thiệu (nếu có)<br  />			- Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).<br  />			<br  />			<strong>*Hướng dẫn</strong>:<br  />			- Với bản in của hồ sơ ứng tuyển, ứng viên sẽ phải nộp trước cho Ban tuyển dụng hoặc muộn nhất là mang theo khi có lịch phỏng vấn. Bản in sẽ không được trả lại ngay cả khi ứng viên không đạt yêu cầu.<br  />			- Nếu không thể bố trí thời gian phỏng vấn như sắp xếp của -Ban tuyển dụng, thí sinh cần thông báo ngay để được đổi lịch.<br  />			- Nếu có bất cứ thắc mắc gì bạn có thể liên hệ với Ms. Thu qua email: tuyendung@vinades.vn. Có thể gọi điện theo số điện thoại: 01255723353</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Hạn nộp hồ sơ:</strong></td>			<td style="width: 72.34%;">Không hạn chế cho tới khi tuyển đủ.</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Hình thức nộp hồ sơ:</strong></td>			<td style="width: 72.34%;">Qua Email</td>		</tr>		<tr>			<td colspan="2" style="width:100.0%;">			<h3>THÔNG TIN LIÊN HỆ</h3>			</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Điện thoại liên hệ:</strong></td>			<td style="width: 72.34%;">01255723353- Ms. Thu</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Địa chỉ liên hệ:</strong></td>			<td style="width: 72.34%;">Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Email liên hệ:</strong></td><td style="width: 72.34%;">tuyendung@vinades.vn</td></tr></tbody></table>', '', 2, 0, 1, 1, 1, 0);
INSERT INTO `nv4_vi_news_detail` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(14, '<p style="text-align: justify;">Nếu bạn yêu thích công nghệ, thích kinh doanh hoặc lập trình web và mong muốn trải nghiệm, học hỏi, thậm chí là đi làm ngay từ khi còn ngồi trên ghế nhà trường, hãy tham gia chương trình thực tập sinh tại công ty VINADES.</p><p style="text-align: justify;">Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) là đơn vị chịu trách nhiệm chính trong việc phát triển phần mềm NukeViet và có nhiệm vụ hỗ trợ cộng đồng người dùng NukeViet &#91;<u><a href="http://vinades.vn/vi/about/history/" target="_blank">xem thêm giới thiệu về lịch sử hình thành VINADES</a></u>&#93;. Là công ty được thành lập từ cộng đồng phần mềm nguồn mở, hàng năm công ty dành những vị trí đặc biệt cho các bạn sinh viên được học tập, trải nghiệm, làm việc tại công ty.<br  />&nbsp;</p><h2 style="text-align: justify;"><b>C</b><b>ác vị trí thực tập</b></h2><ul>	<li style="text-align: justify;"><strong>Kinh doanh:</strong> Cổng thông tin doanh nghiệp, Cổng thông tin giáo dục Edu Gate…</li>	<li style="text-align: justify;"><strong>Kỹ thuật:</strong> Chuyên viên đồ họa, Lập trình viên…</li></ul><h2 style="text-align: justify;"><b>Quyền lợi của thực tập sinh</b></h2><ul>	<li style="text-align: justify;">Được&nbsp;tiếp xúc với văn hóa doanh nghiệp, trải nghiệm trong môi trường làm việc chuyên nghiệp, năng động.</li>	<li style="text-align: justify;">Được&nbsp;giao tiếp và học hỏi kiến thức từ những SEO, các lập trình viên chính của đội code NukeViet; qua đó&nbsp;nâng cao không chỉ kỹ năng chuyên môn liên quan đến công việc mà còn các kỹ năng mềm trong quá trình làm việc hàng ngày.</li>	<li style="text-align: justify;">Có cơ hội tìm hiểu, phát triển định hướng của bản thân.</li>	<li style="text-align: justify;">Tham gia các chương trình ngoại khóa, các hoạt động nội bộ của công ty.</li>	<li style="text-align: justify;">Cơ&nbsp;hội được học việc để trở thành nhân viên chính thức nếu có kết quả thực tập tốt.</li>	<li style="text-align: justify;">Thực tập không hưởng lương nhưng có thể được trả thù lao cho một số công việc được giao theo đơn hàng.</li></ul><h2 style="text-align: justify;"><b>Thời gian làm việc</b></h2><ul>	<li style="text-align: justify;">Toàn thời gian cố định hoặc làm online.</li>	<li style="text-align: justify;">Thời gian làm việc là:&nbsp;8:00 – 17:00, Thứ hai – Thứ sáu</li>	<li style="text-align: justify;">Ngày làm việc và thời gian làm việc có thể thay đổi linh hoạt tùy thuộc vào điều kiện của ứng viên và tình hình thực tế.</li></ul><h2 style="text-align: justify;"><b>Đối tượng và điều kiện ứng tuyển</b></h2><p style="text-align: justify;">Tất cả các bạn sinh viên năm cuối/mới tốt nghiệp các trường CĐ - ĐH đáp ứng được những yêu cầu sau:</p><ul>	<li style="text-align: justify;">Sinh viên khối ngành kinh tế: yêu thích marketing online, mong muốn thực tập trong lĩnh vực kinh doanh phần mềm.</li>	<li style="text-align: justify;">Sinh viên khối ngành kỹ thuật: yêu thích thiết kế, lập trình web.</li></ul><p style="text-align: justify;">Có kỹ năng giao tiếp và tư duy logic tốt, năng động và ham học hỏi.</p><p style="text-align: justify;">Có máy tính xách tay để làm việc.</p><p style="text-align: justify;">Ưu tiên các ứng viên đam mê phần mềm nguồn mở, đặc biệt là các ứng viên đã từng tham gia và có bài viết diễn đàn NukeViet (<a href="http://forum.nukeviet.vn/">forum.nukeviet.vn</a>).</p><h2 style="text-align: justify;"><b>Cách thức ứng tuyển</b></h2><p style="text-align: justify;">Gửi bản mềm đơn đăng ký ứng tuyển tới:&nbsp;<a href="mailto:tuyendung@vinades.vn">tuyendung@vinades.vn</a>;</p><p style="text-align: justify;">Tiêu đề mail ghi rõ: &#91;Họ tên&#93; –Ứng tuyển thực tập &#91;Bộ phận ứng tuyển&#93;.</p><p style="text-align: justify;">Ví dụ: Lê Văn Nam –&nbsp;Ứng tuyển thực tập sinh bộ phận đồ họa</p><p style="text-align: justify;">Hồ sơ bản cứng cần chuẩn bị (sẽ gửi sau nếu đạt yêu cầu) gồm:</p><ul>	<li style="text-align: justify;">Giấy khám sức khoẻ của cơ quan y tế</li>	<li style="text-align: justify;">Bản sao giấy khai sinh (có công chứng).</li>	<li style="text-align: justify;">Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn bằng chứng chỉ (có công chứng) nếu đã tốt nghiệp.</li>	<li style="text-align: justify;">Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.</li>	<li style="text-align: justify;">Chứng minh thư (photo không cần công chứng).</li>	<li style="text-align: justify;">Thư giới thiệu (nếu có)</li>	<li style="text-align: justify;">Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).</li></ul><p><br  /><strong>Chi tiết vui lòng tham khảo tại:</strong>&nbsp;<a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a><br  /><br  /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br  />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /><br  />- Tel: +84-4-85872007 - Fax: +84-4-35500914<br  />- Email:&nbsp;<a href="mailto:contact@vinades.vn">contact@vinades.vn</a>&nbsp;- Website:&nbsp;<a href="http://www.vinades.vn/">http://www.vinades.vn</a></p></blockquote>', '', 2, 0, 1, 1, 1, 0),
(15, '<p style="text-align: justify;">Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) là đơn vị chịu trách nhiệm chính trong việc phát triển phần mềm NukeViet và có nhiệm vụ hỗ trợ cộng đồng người dùng NukeViet &#91;<u><a href="http://vinades.vn/vi/about/history/" target="_blank">xem thêm giới thiệu về lịch sử hình thành VINADES</a></u>&#93;.</p><p style="text-align: justify;">Nếu bạn yêu thích phần mềm nguồn mở, triết lý của phần mềm tự do nguồn mở hoặc đơn giản là yêu NukeViet, hãy liên hệ ngay để gia nhập công ty VINADES, cùng chúng tôi phát triển NukeViet – Phần mềm nguồn mở Việt Nam – và tạo ra những sản phẩm web tuyệt vời cho cộng đồng.</p><h2 style="text-align: justify;"><b>Các vị trí nhận học việc</b></h2><ul>	<li style="text-align: justify;"><strong>Kinh doanh:</strong> Cổng thông tin doanh nghiệp, Cổng thông tin giáo dục Edu Gate…</li>	<li style="text-align: justify;"><strong>Kỹ thuật:</strong> Chuyên viên đồ họa, Lập trình viên…</li></ul><h2 style="text-align: justify;"><b>Quyền lợi của học viên</b></h2><ul>	<li style="text-align: justify;">Được hưởng trợ cấp ăn trưa.</li>	<li style="text-align: justify;">Được trợ cấp vé gửi xe.</li>	<li style="text-align: justify;">Được hưởng lương khoán theo từng dự án (nếu có).</li>	<li style="text-align: justify;">Được hỗ trợ học phí tham gia các khóa học nâng cao các kỹ năng (nếu có).</li>	<li style="text-align: justify;">Được&nbsp;tiếp xúc với văn hóa doanh nghiệp, trải nghiệm trong môi trường làm việc chuyên nghiệp, năng động.</li>	<li style="text-align: justify;">Được&nbsp;giao tiếp và học hỏi kiến thức từ những SEO, các lập trình viên chính của đội code NukeViet; qua đó&nbsp;nâng cao không chỉ kỹ năng chuyên môn liên quan đến công việc mà còn các kỹ năng mềm trong quá trình làm việc hàng ngày.</li>	<li style="text-align: justify;">Tham gia các chương trình ngoại khóa, các hoạt động nội bộ của công ty.</li>	<li style="text-align: justify;">Cơ&nbsp;hội ưu tiên (không cần qua thử việc) trở thành nhân viên chính thức nếu có kết quả học việc tốt.</li></ul><h2 style="text-align: justify;"><b>Thời gian làm việc</b></h2><ul>	<li style="text-align: justify;">Toàn thời gian cố định hoặc làm online.</li>	<li style="text-align: justify;">Thời gian làm việc là:&nbsp;8:00 – 17:00, Thứ hai – Thứ sáu</li>	<li style="text-align: justify;">Ngày làm việc và thời gian làm việc có thể thay đổi linh hoạt tùy thuộc vào điều kiện của ứng viên và tình hình thực tế.</li></ul><h2 style="text-align: justify;"><b>Đối tượng</b></h2><p style="text-align: justify;">Tất cả các bạn sinh viên năm cuối/mới tốt nghiệp các trường CĐ - ĐH đáp ứng được những yêu cầu sau:</p><ul>	<li style="text-align: justify;">Sinh viên khối ngành kinh tế: yêu thích marketing online, mong muốn thực tập trong lĩnh vực kinh doanh phần mềm.</li>	<li style="text-align: justify;">Sinh viên khối ngành kỹ thuật: yêu thích thiết kế, lập trình web.</li></ul><p style="text-align: justify;">Có kỹ năng giao tiếp và tư duy logic tốt, năng động và ham học hỏi.</p><p style="text-align: justify;">Ưu tiên các ứng viên đam mê phần mềm nguồn mở, đặc biệt là các ứng viên đã từng tham gia và có bài viết diễn đàn NukeViet (<a href="http://forum.nukeviet.vn/">forum.nukeviet.vn</a>)</p><h2 style="text-align: justify;"><b>Điều kiện</b></h2><p style="text-align: justify;">Có máy tính xách tay để làm việc.</p><p style="text-align: justify;">Ứng viên sẽ được ký hợp đồng học việc (có thời hạn cụ thể). Nếu được nhận vào làm việc chính thức, người lao động phải làm ở công ty ít nhất 2 năm, nếu không làm hoặc nghỉ trước thời hạn sẽ phải hoàn lại tiền đào tạo. Chi phí này được tính là 3.000.000 VND</p><p style="text-align: justify;">Nếu được cử đi học, người lao động phải làm ở công ty ít nhất 2 năm, nếu không làm hoặc nghỉ trước thời hạn sẽ phải hoàn lại tiền học phí.</p><p style="text-align: justify;">Thực hiện theo các quy định khác của công ty...</p><h2 style="text-align: justify;"><b>Cách thức ứng tuyển</b></h2><p style="text-align: justify;">Gửi bản mềm đơn đăng ký ứng tuyển tới:&nbsp;<a href="mailto:tuyendung@vinades.vn">tuyendung@vinades.vn</a>;</p><p style="text-align: justify;">Tiêu đề mail ghi rõ: &#91;Họ tên&#93; –Ứng tuyển học việc&#91;Bộ phận ứng tuyển&#93;;</p><p style="text-align: justify;">Ví dụ: Lê Văn Nam –&nbsp;Ứng tuyển học việc bộ phận đồ họa</p><p style="text-align: justify;">Hồ sơ bản cứng cần chuẩn bị (sẽ gửi sau nếu đạt yêu cầu) gồm:</p><ul>	<li style="text-align: justify;">Giấy khám sức khoẻ của cơ quan y tế</li>	<li style="text-align: justify;">Bản sao giấy khai sinh (có công chứng).</li>	<li style="text-align: justify;">Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn bằng chứng chỉ (có công chứng) nếu đã tốt nghiệp.</li>	<li style="text-align: justify;">Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.</li>	<li style="text-align: justify;">Chứng minh thư (photo không cần công chứng).</li>	<li style="text-align: justify;">Thư giới thiệu (nếu có)</li>	<li style="text-align: justify;">Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).</li></ul><p style="text-align: justify;"><br  /><strong>Chi tiết vui lòng tham khảo tại:</strong>&nbsp;<a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a><br  /><br  /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style="text-align: justify;"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br  />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /><br  />- Tel: +84-4-85872007 - Fax: +84-4-35500914<br  />- Email:&nbsp;<a href="mailto:contact@vinades.vn">contact@vinades.vn</a>&nbsp;- Website:&nbsp;<a href="http://www.vinades.vn/">http://www.vinades.vn</a></p></blockquote>', '', 2, 0, 1, 1, 1, 0),
(16, '<div class="details-content clearfix" id="bodytext"><strong>Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo có gì mới?</strong><br  /><br  />Trong các hướng dẫn thực hiện nhiệm vụ CNTT từ năm 2010 đến nay liên tục chỉ đạo việc đẩy mạnh công tác triển khai sử dụng phần mềm nguồn mở trong nhà trường và các cơ quan quản lý giáo dục. Tuy nhiên Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo có nhiều thay đổi mạnh mẽ đáng chú ý, đặc biệt việc chỉ đạo triển khai các phần mềm nguồn mở vào trong các cơ sở quản lý giao dục được rõ ràng và cụ thể hơn rất nhiều.<br  /><br  />Một điểm thay đổi đáng chú ý đối với phần mềm nguồn mở, trong đó đã thay hẳn thuật ngữ &quot;phần mềm tự do mã nguồn mở&quot; hoặc &quot;phần mềm mã nguồn mở&quot; thành &quot;phần mềm nguồn mở&quot;, phản ánh xu thế sử dụng thuật ngữ phần mềm nguồn mở đã phổ biến trong cộng đồng nguồn mở thời gian vài năm trở lại đây.<br  /><br  /><strong>NukeViet - Phần mềm nguồn mở Việt - không chỉ được khuyến khích mà đã được hướng dẫn thực thi</strong><br  /><br  />Từ 5 năm trước, thông tư số 08/2010/TT-BGDĐT của Bộ GD&amp;ĐTquy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục, NukeViet đã được đưa vào danh sách các mã nguồn mở <strong>được khuyến khích sử dụng trong giáo dục</strong>. Tuy nhiên, việc sử dụng chưa được thực hiện một cách đồng bộ mà chủ yếu làm nhỏ lẻ rải rác tại một số trường, Phòng và Sở GD&amp;ĐT.<br  /><br  />Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo lần này, NukeViet&nbsp; không chỉ được khuyến khích mà đã được hướng dẫn thực thi, không những thế NukeViet còn được đưa vào hầu hết các nhiệm vụ chính, cụ thể:<div><div><div>&nbsp;</div>- <strong>Nhiệm vụ số 5</strong> &quot;<strong>Công tác bồi dưỡng ứng dụng CNTT cho giáo viên và cán bộ quản lý giáo dục</strong>&quot;, mục 5.1 &quot;Một số nội dung cần bồi dưỡng&quot; có ghi &quot;<strong>Tập huấn sử dụng phần mềm nguồn mở NukeViet.</strong>&quot;<br  />&nbsp;</div>- <strong>Nhiệm vụ số 10 &quot;Khai thác, sử dụng và dạy học bằng phần mềm nguồn mở</strong>&quot; có ghi: &quot;<strong>Khai thác và áp dụng phần mềm nguồn mở NukeViet trong giáo dục.&quot;</strong><br  />&nbsp;</div>- Phụ lục văn bản, có trong nội dung &quot;Khuyến cáo khi sử dụng các hệ thống CNTT&quot;, hạng mục số 3 ghi rõ &quot;<strong>Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.</strong><br  />&nbsp;<div>Hiện giờ văn bản này đã được đăng lên website của Bộ GD&amp;ĐT: <a href="http://moet.gov.vn/?page=1.10&amp;view=983&amp;opt=brpage" target="_blank">http://moet.gov.vn/?page=1.10&amp;view=983&amp;opt=brpage</a></div><p><br  />Hoặc có thể tải về tại đây: <a href="http://vinades.vn/vi/download/van-ban-luat/Huong-dan-thuc-hien-nhiem-vu-CNTT-nam-hoc-2015-2016/" target="_blank">http://vinades.vn/vi/download/van-ban-luat/Huong-dan-thuc-hien-nhiem-vu-CNTT-nam-hoc-2015-2016/</a></p><blockquote><p><em>Trên cơ sở hướng dẫn của Bộ GD&amp;ĐT, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&amp;ĐT, Sở GD&amp;ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT.<br  /><br  />Các Phòng, Sở GD&amp;ĐT có nhu cầu có thể xem thêm thông tin chi tiết tại đây: <a href="http://vinades.vn/vi/news/thong-cao-bao-chi/Ho-tro-trien-khai-dao-tao-va-trien-khai-NukeViet-cho-cac-Phong-So-GD-DT-264/" target="_blank">Hỗ trợ triển khai đào tạo và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT</a></em></p></blockquote></div>', '', 2, 0, 1, 1, 1, 0),
(17, '<div class="details-content clearfix" id="bodytext"><span style="font-size:16px;"><strong>Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng phần mềm nguồn mở NukeViet</strong></span><br  /><br  />Công tác hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng phần mềm nguồn mở NukeViet sẽ được thực hiện bởi đội ngũ chuyên gia giàu kinh nghiệm về NukeViet được tuyển chọn từ lực lượng lập trình viên, chuyên viên kỹ thuật hiện đang tham gia phát triển và hỗ trợ về NukeViet từ Ban Quản Trị NukeViet và Công ty cổ phần phát triển nguồn mở Việt Nam và các đối tác thuộc Liên minh phần mềm giáo dục nguồn mở NukeViet.<br  /><br  />Với kinh nghiệm tập huấn đã được tổ chức thành công cho nhiều Phòng giáo dục và đào tạo, các chuyên gia về NukeViet sẽ giúp chuyển giao giáo trình, chương trình, kịch bản đào tạo cho các Phòng, Sở GD&amp;ĐT; hỗ trợ các giáo viên và cán bộ quản lý giáo dục sử dụng trong suốt thời gian sau đào tạo.<br  /><br  />Đặc biệt, đối với các đơn vị sử dụng NukeViet làm website và cổng thông tin đồng bộ theo quy mô cấp Phòng và Sở, cán bộ tập huấn của NukeViet sẽ có nhiều chương trình hỗ trợ khác như chương trình thi đua giữa các website sử dụng NukeViet trong cùng đơn vị cấp Phòng, Sở và trên toàn quốc; Chương trình báo cáo và giám sát và xếp hạng website hàng tháng; Chương trình tập huấn nâng cao trình độ sử dụng NukeViet hàng năm cho giáo viên và cán bộ quản lý giáo dục đang thực hiện công tác quản trị các hệ thống sử dụng nền tảng NukeViet.<br  /><br  /><span style="font-size:16px;"><strong>Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT</strong></span><br  /><br  />Nhằm hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT một cách toàn diện, đồng bộ và tiết kiệm, hiện tại, Liên minh phần mềm nguồn mở giáo dục NukeViet chuẩn bị ra mắt. Liên minh này do Công ty cổ phần phát triển nguồn mở Việt Nam đứng dầu và thực hiện việc điều phối công các hỗ trợ và phối hợp giữa các đơn vị trên toàn quốc. Thành viên của liên minh là các doanh nghiệp cung cấp sản phẩm và dịch vụ phần mềm hỗ trợ cho giáo dục (kể cả những đơn vị chỉ tham gia lập trình và những đơn vị chỉ tham gia khai thác thương mại). Liên minh sẽ cùng nhau làm việc để xây dựng một hệ thống phần mềm thống nhất cho giáo dục, có khả năng liên thông và kết nối với nhau, hoàn toàn dựa trên nền tảng phần mềm nguồn mở. Liên minh cũng hỗ trợ và phân phối phần mềm cho các đơn vị làm phần mềm trong ngành giáo dục với mục tiêu là tiết kiệm tối đa chi phí trong khâu thương mại, mang tới cơ hội cho các đơn vị làm phần mềm giáo dục mà không cần phải lo lắng về việc phân phối phần mềm. Các doanh nghiệp quan tâm đến cơ hội kinh doanh bằng phần mềm nguồn mở, muốn tìm hiểu và tham gia liên minh có thể đăng ký tại đây: <a href="http://edu.nukeviet.vn/lienminh-dangky.html" target="_blank">http://edu.nukeviet.vn/lienminh-dangky.html</a><br  /><br  />Liên minh phần mềm nguồn mở giáo dục NukeViet đang cung cấp giải pháp cổng thông tin chuyên dùng cho phòng và Sở GD&amp;ĐT (NukeViet Edu Gate) cung cấp dưới dạng dịch vụ công nghệ thông tin (theo mô hình của <a href="http://vinades.vn/vi/download/van-ban-luat/Quyet-dinh-80-ve-thue-dich-vu-CNTT/" target="_blank">Quyết định số 80/2014/QĐ-TTg của Thủ tướng Chính phủ</a>) có thể hỗ trợ cho các trường, Phòng và Sở GD&amp;ĐT triển khai NukeViet ngay lập tức.<br  /><br  />Giải pháp cổng thông tin chuyên dùng cho phòng và Sở GD&amp;ĐT (NukeViet Edu Gate) có tích hợp website các trường (liên thông 3 cấp: trường - phòng - sở) cho phép tích hợp hàng ngàn website của các trường cùng nhiều dịch vụ khác trên cùng một hệ thống giúp tiết kiệm chi phí đầu tư, chi phí triển khai và bảo trì hệ thống bởi toàn bộ hệ thống được vận hành bằng một phần mềm duy nhất. Ngoài giải pháp cổng thông tin giáo dục tích hợp, Liên minh phần mềm nguồn mở giáo dục NukeViet cũng đang phát triển một số&nbsp;sản phẩm phần mềm dựa trên phần mềm nguồn mở NukeViet và sẽ sớm ra mắt trong thời gian tới.<div><br  />Hiện nay,&nbsp;NukeViet Edu Gate cũng&nbsp;đã được triển khai rộng rãi và nhận được sự ủng hộ của&nbsp;nhiều Phòng, Sở GD&amp;ĐT trên toàn quốc.&nbsp;Các phòng, sở GD&amp;ĐT quan tâm đến giải pháp NukeViet Edu Gate có thể truy cập&nbsp;<a href="http://edu.nukeviet.vn/" target="_blank">http://edu.nukeviet.vn</a>&nbsp;để tìm hiểu thêm hoặc liên hệ:<br  /><br  /><span style="font-size:14px;"><strong>Liên minh phần mềm nguồn mở giáo dục NukeViet</strong></span><br  />Đại diện: <strong>Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC)</strong><br  /><strong>Địa chỉ</strong>: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội<br  /><strong>Email</strong>: contact@vinades.vn, Tel: 04-85872007, <strong>Fax</strong>: 04-35500914,<br  /><strong>Hotline</strong>: 0904762534 (Mr. Hùng), 0936226385 (Ms. Ngọc),&nbsp;<span style="color: rgb(38, 38, 38); font-family: arial, sans-serif; font-size: 13px; line-height: 16px;">0904719186 (Mr. Hậu)</span><br  />Các Phòng GD&amp;ĐT, Sở GD&amp;ĐT có thể đăng ký tìm hiểu, tổ chức hội thảo, tập huấn, triển khai NukeViet trực tiếp tại đây: <a href="http://edu.nukeviet.vn/dangky.html" target="_blank">http://edu.nukeviet.vn/dangky.html</a><br  /><br  /><span style="font-size:16px;"><strong>Tìm hiểu về phương thức chuyển đổi các hệ thống website cổng thông tin sang NukeViet theo mô hình tích hợp liên thông từ trưởng, lên Phòng, Sở GD&amp;ĐT:</strong></span><br  /><br  />Đối với các Phòng, Sở GD&amp;ĐT, trường Nầm non, tiểu học, THCS, THPT... chưa có website, Liên minh phần mềm nguồn mở giáo dục NukeViet sẽ hỗ trợ triển khai NukeViet theo mô hình cổng thông tin liên cấp như quy định tại <a href="http://vinades.vn/vi/download/van-ban-luat/Thong-tu-quy-dinh-ve-ve-to-chuc-hoat-dong-su-dung-thu-dien-tu/" target="_blank">thông tư số <strong>53/2012/TT-BGDĐT</strong> của Bộ GD&amp;ĐT</a> ban hành ngày 20-12-2012 quy định về quy định về về tổ chức hoạt động, sử dụng thư điện tử và cổng thông tin điện tử tại sở giáo dục và đào tạo, phòng giáo dục và đào tạo và các cơ sở GDMN, GDPT và GDTX.<br  /><br  />Trường hợp các đơn vị có website và đang sử dụng NukeViet theo dạng rời rạc thì việc chuyển đổi và tích hợp các website NukeViet rời rạc vào NukeViet Edu Gate của Phòng và Sở có thể thực hiện dễ dàng và giữ nguyên toàn bộ dữ liệu.<br  /><br  />Trường hợp các đơn vị có website và nhưng không sử dụng NukeViet cũng có thể chuyển đổi sang sử dụng NukeViet để hợp nhất vào hệ thống cổng thông tin giáo dục cấp Phòng, Sở. Tuy nhiên mức độ và tỉ lệ dữ liệu được chuyển đổi thành công sẽ phụ thuộc vào tình hình thực tế của từng website.</div></div>', '', 2, 0, 1, 1, 1, 0),
(18, '<p dir="ltr" style="text-align: justify;">Trải qua hơn 10 năm phát triển, từ một mã nguồn chỉ mang tính cá nhân, NukeViet đã phát triển thành công theo hướng cộng đồng. Năm 2010, NukeViet 3 ra đời đánh dấu một mốc lớn trong quá trình đi lên của NukeViet, phát triển theo hướng chuyên nghiệp với sự hậu thuẫn của Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC). NukeViet 3 đã và được sử dụng rộng rãi trong cộng đồng, từ các cổng thông tin tổ chức, hệ thống giáo dục, cho đến các website cá nhân, thương mại, mang lại các trải nghiệm vượt trội của mã nguồn thương hiệu Việt so với các mã nguồn nổi tiếng khác trên thế giới.<br  /><br  />Năm 2016, NukeViet 4 ra đời được xem là một cuộc cách mạng lớn trong chuỗi sự kiện phát triển NukeViet, cũng như xu thế công nghệ hiện tại. Hệ thống gần như được đổi mới hoàn toàn từ nhân hệ thống đến giao diện, nâng cao đáng kể hiệu suất và trải nghiệm người dùng.<br  /><br  /><span style="line-height: 1.6;"><strong>Dưới đây là một số thay đổi của NukeViet 4.</strong></span><br  /><strong><span style="line-height: 1.6;">Các thay đổi từ nhân hệ thống:</span></strong></p><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Các công nghệ mới được áp dụng.</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Sử dụng composer để quản lý các thư viện PHP được cài vào hệ thống.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Từng bước áp dụng &nbsp;các tiêu chuẩn viết code PHP theo khuyến nghị của <a href="http://www.php-fig.org/psr/">http://www.php-fig.org/psr/</a></p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Sử dụng PDO để thay cho extension MySQL.</p>		</li>	</ul>	</li></ul><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Tăng cường khả năng bảo mật</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Sau khi các chuyên giả bảo mật của HP gửi đánh giá, chúng tôi đã tối ưu NukeViet 4.0 để hệ thống an toàn hơn.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Mã hóa các mật khẩu lưu trữ trong hệ thống: Các mật khẩu như FPT, SMTP,... đã được mã hóa, bảo mật thông tin người dùng.</p>		</li>	</ul>	</li></ul><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Tối ưu SEO:</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">SEO được xem là một trong những ưu tiên hàng đầu được phát triển trong phiên bản này. NukeViet 4 tập trung tối ưu hóa SEO Onpage mạnh mẽ. Các công cụ hỗ trợ SEO được tập hợp lại qua module “Công cụ SEO”. Các chức năng được thêm mới:</p>		<ul>			<li dir="ltr">			<p dir="ltr" style="text-align: justify;">Loại bỏ tên module khỏi URL khi không dùng đa ngôn ngữ</p>			</li>			<li dir="ltr">			<p dir="ltr" style="text-align: justify;">Cho phép đổi đường dẫn module</p>			</li>			<li dir="ltr">			<p dir="ltr" style="text-align: justify;">Thêm chức năng xác thực Google+ (Bản quyền tác giả)</p>			</li>			<li dir="ltr">			<p dir="ltr" style="text-align: justify;">Thêm chức năng ping đến các công cụ tìm kiếm: Submit url mới đến google để việc hiển thị bài viết mới lên kết quả tìm kiếm nhanh chóng hơn.</p>			</li>			<li dir="ltr">			<p dir="ltr" style="text-align: justify;">Hỗ trợ Meta OG của facebook</p>			</li>			<li dir="ltr">			<p dir="ltr" style="text-align: justify;">Hỗ trợ chèn Meta GEO qua Cấu hình Meta-Tags</p>			</li>		</ul>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Cùng với đó, các module cũng được tối ưu hóa bằng các form hỗ trợ khai báo tiêu đề, mô tả (description), từ khóa (keywods) cho từng khu vực, từng trang. &nbsp;</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Với sự hỗ trợ tối đa này, người quản trị (admin) có thể tùy biến lại website theo phong cách SEO riêng biệt.</p>		</li>	</ul>	</li>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Thay đổi giao diện, sử dụng giao diện tuỳ biến</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Giao diện trong NukeViet 4 được làm mới, tương thích với nhiều màn hình hơn.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Sử dụng thư viện bootstrap để việc phát triển giao diện thống nhất và dễ dàng hơn.</p>		</li>	</ul>	</li>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Hệ thống nhận thông báo:&nbsp;</strong><span style="line-height: 1.6;">Có thể gọi đây là một tiện ích nhỏ, song nó rất hữu dụng để admin tương tác với hệ thống một cách nhanh chóng. Admin có thể nhận thông báo từ hệ thống (hoặc từ module) khi có sự kiện nào đó.</span></p>	</li></ul><p dir="ltr" style="text-align: justify; margin-left: 40px;"><strong>Ví dụ:</strong> Khi có khách gửi liên hệ (qua module contact) đến thì hệ thống xuất hiện biểu tượng thông báo “Có liên hệ mới” ở góc phải, Admin sẽ nhận được ngay lập tức thông báo khi người dùng đang ở Admin control panel (ACP).</p><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Thay đổi cơ chế quản lý block:</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Nhận thấy việc hiển thị block ở lightbox trong NukeViet 3 dẫn đến một số bất tiện trong quá trình quản lý, NukeViet 4 đã thay thế cách hiển thị này ở dạng cửa sổ popup. Dễ nhận thấy sự thay đổi này khi admin thêm (hoặc sửa) một block nào đó.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">“Cấu hình hiển thị block trên các thiết bị” cũng được đưa vào phần cấu hình block, admin có thể tùy chọn cho phép block hiển thị trên các thiết bị nào (tất cả thiết bị, thiết bị di động, máy tính bảng, thiết bị khác).<span style="line-height: 1.6;">&nbsp;</span></p>		</li>	</ul>	</li></ul><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Thêm ngôn ngữ tiếng Pháp:</strong> website cài đặt mới có sẵn 3 ngôn ngữ mặc định là Việt, Anh và Pháp.</p>	</li></ul><p dir="ltr" style="text-align: justify;"><strong>Các thay đổi của module:</strong></p><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Module menu:</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Phương án quản lý menu được thay đổi hướng tới việc quản lý menu nhanh chóng, tiện lợi nhất cho admin. Admin có thể nạp nhanh menu theo các tùy chọn mà hệ thống cung cấp.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Mẫu menu cũng được thay đổi, đa dạng và hiển thị tốt với các giao diện hiện đại.</p>		</li>	</ul>	</li>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Module contact (Liên hệ):</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Bổ sung các trường thông tin về bộ phận (Điện thoại, fax, email, các trường liên hệ khác,...).</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Admin có thể trả lời khách nhiều lần, hệ thống lưu lại lịch sử trao đổi đó.</p>		</li>	</ul>	</li>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Module users (Tài khoản):</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thay thế OpenID bằng thư viện OAuth - hỗ trợ tích hợp đăng nhập qua tài khoản mạng xã hội</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Cho phép đăng nhập 1 lần tài khoản người dùng NukeViet với Alfresco, Zimbra, Moodle, Koha</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm chức năng tùy biến trường dữ liệu thành viên</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm chức năng phân quyền sử dụng module users</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm cấu hình: Số ký tự username, độ phức tạp mật khẩu, tạo mật khảu ngẫu nhiên,....</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Cho phép sử dụng tên truy cập, hoặc email để đăng nhập</p>		</li>	</ul>	</li>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Module about:</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Module about ở NukeViet 3 được đổi tên thành module page</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm các cấu hình hỗ trợ SEO: Ảnh minh họa, chú thích ảnh minh họa, mô tả, từ khóa cho bài viết, hiển thị các công cụ tương tác với các mạng xã hội.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm RSS</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Cấu hình phương án hiển thị các bài viết trên trang chính</p>		</li>	</ul>	</li>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Module news (Tin tức):</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm phân quyền cho người quản lý module, đến từng chủ đề</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thay đổi phương án lọc từ khóa bài viết, lọc từ khóa theo các từ khóa đã có trong tags thay vì đọc từ từ điển.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Bổ sung các trạng thái bài viết</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm cấu hình mặc định hiển thị ảnh minh họa trên trang xem chi tiết bài viết</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm các công cụ tương tác với mạng xã &nbsp;hội.</p>		</li>	</ul>	</li></ul><p dir="ltr" style="text-align: justify;"><strong>Quản lý Bình luận</strong></p><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;">Các bình luận của các module sẽ được tích hợp quản lý tập trung để cấu hình.</p>	</li>	<li dir="ltr" style="text-align: justify;">Khi xây dựng mới module, Chỉ cần nhúng 1 đoạn mã vào. Tránh phải việc copy mã code gây khó khăn cho bảo trì.</li></ul>', '', 2, 0, 1, 1, 1, 0),
(19, '<h2><span style="color:rgb(255, 0, 0);"><strong>1. Tốc độ</strong></span></h2><div style="text-align:center"><img alt="litespeed benchmark" height="292" src="/uploads/news/2016_01/litespeed-benchmark.jpg" width="540" /></div><br  />Tốc độ truy cập website rất quan trọng, ảnh hưởng đến trải nghiệm của người dùng cũng như thứ hạng trên các bộ máy tìm kiếm (Google, Bing...). Website có tốc độ nhanh là website không để người dùng &quot;chờ&quot; khi click vào bất cứ trang nào. Hay nói cách khác tốc độ load trang phải 1 giây trở xuống. Có 2 yếu tố tác động đến tốc độ đó là &quot;sự tối ưu của mã nguồn website&quot; và &quot;sự tối ưu của hệ thống hosting&quot;<br  />&nbsp;<ul>	<li><span style="color:rgb(0, 0, 205);"><strong>Sự tối ưu của mã nguồn website:</strong></span> Nếu bạn đang dùng NukeViet, bạn đang rất may mắn bởi NukeViet được thiết kế để tối ưu và tăng tốc truy cập.</li>	<li><span style="color:rgb(0, 0, 205);"><strong>Sự tối ưu của hệ thống hosting:</strong></span> Các nhà cung cấp hosting kinh nghiệm và uy tín luôn tối ưu hệ thống Hosting của họ một cách tốt nhất, hãy để ý một số tiêu chí sau để đánh giá mức độ VIP về việc tối ưu tốc độ của hosting bạn đang sử dụng:	<ul>		<li><strong>Ổ cứng SSD:</strong> Công nghệ ổ cứng SSD đang được sử dụng mạnh mẽ để thay thế các ổ cứng SATA thế hệ cũ bởi tốc độ đọc ghi dữ liệu của ổ cứng SSD cực nhanh, giúp máy chủ hosting xử lý và đọc ghi dữ liệu nhanh hơn. Công nghệ này không những áp dụng vào hệ thống hosting mà còn đang áp dụng với hầu hết các hệ thống máy chủ thời nay.</li>		<li><strong>Webserver Litespeed:</strong> Đây là phần mềm web server có tốc độ nhanh nhất (nhanh gấp 5 lần Apache), là giải pháp thay thế cho web server truyền thống Apache. Web server này cũng được đánh giá là ổn định và bảo mật. Tuy nhiên đây là phần mềm web server có bản quyền<strong>. <span style="background-color:rgb(250, 235, 215);">Nếu nhà cung cấp hosting của bạn sử dụng phần mềm này, họ đã đầu tư bài bản cho hệ thống hosting của mình</span></strong>.</li>	</ul>	</li></ul><h2><span style="color:rgb(255, 0, 0);"><strong>2. Bảo mật</strong></span></h2><div style="text-align:center"><img alt="cloudlinux security" height="312" src="/uploads/news/2016_01/cloudlinux-security.jpg" width="540" /></div><br  />Khi sử dụng hosting, bạn cần quan tâm đến hình thức tấn công &quot;local attack&quot;. Bởi một máy chủ hosting có rất nhiều tài khoản hosting khác nhau. Local attack là hình thức chiếm quyền điều khiển tài khoản hosting A (vì website trên hosting A này bị lỗi bảo mật hoặc bị lộ mật khẩu) sau đó dùng hosting A để chiếm quyền điền khiển sang hosting B - hosting của bạn. Hình thức tấn công này rất nguy hiểm, tuy nhiên hãy để ý, <strong><span style="background-color:rgb(255, 255, 224);">nếu nhà cung cấp hosting nào đang sử dụng công nghệ &quot;CloudLinux&quot;, hosting của họ đã chống được gần như 100% hình thức tấn công này</span></strong><span style="background-color:rgb(255, 255, 224);">.</span><h3>&nbsp;</h3><h2><span style="color:rgb(255, 0, 0);"><strong>3. Ổn định</strong></span></h2><div style="text-align:center"><img alt="123host network security" height="310" src="/uploads/news/2016_01/123host-network-security.jpg" width="540" /></div><br  />Sự ổn định rất quan trọng bởi bạn sẽ sử dụng hosting lâu dài ngày này qua ngày khác. Sự chập chờn, gián đoạn truy cập chỉ trong ít phút cũng đã ảnh hưởng đến doanh thu, thứ hạn, làm giảm lượng truy cập vào website bạn. Các yếu tố cơ bản sau ảnh hưởng đến độ ổn định của dịch vụ hosting:<ul>	<li><span style="color:rgb(0, 0, 205);"><strong>Network &amp; Datacenter: </strong></span>Hạ tầng network ổn định đặt tại các datacenter lớn là tiêu chí rất quan trọng. <strong><span style="background-color:rgb(255, 255, 224);">Các nhà cung cấp hosting lớn luôn đặt máy chủ của mình tại các datacenter lớn nhất Việt Nam như VDC2 hoặc ViettelIDC</span></strong>.</li>	<li><span style="color:rgb(0, 0, 205);"><strong>Chống tấn công DDOS: </strong></span>Đây là yếu tố cực kỳ quan trọng giúp các máy chủ hosting ổn định. Một máy chủ hosting có thể chứa hàng nghìn website, vì vậy thường xuyên sẽ có những cuộc tấn công DDOS vào một trong số các website này và sẽ ảnh hưởng toàn bộ máy chủ hosting và tất nhiên sẽ ảnh hưởng đến website của bạn. Truy cập sẽ chập chờn, lúc chậm lúc nhanh và có khi sẽ gián đoạn<strong>. <span style="background-color:rgb(255, 255, 224);">Hãy để ý các nhà cung cấp hosting tốt luôn có hệ thống Firewall</span> </strong>(tường lửa) chuyện dụng cho hosting của mình.</li></ul><h2><br  /><span style="color:rgb(255, 0, 0);"><strong>4. Hỗ trợ</strong></span></h2><div style="text-align:center"><img alt="support247" height="151" src="/uploads/news/2016_01/support247.jpg" width="540" /></div><br  />Không cần bàn cãi gì nữa, một nhà cung cấp hosting tốt luôn:<br  />&nbsp;<ul>	<li>Hỗ trợ khách hàng 24/7 bất kể là đêm hay ngày, kể cả những ngày lễ tết.</li>	<li>Hỗ trợ nhanh và nhiệt tình, giải quyết các vấn đề bạn gặp phải nhanh chóng.</li></ul><h3>&nbsp;</h3><h2><span style="color:rgb(255, 0, 0);"><strong>5. Các tham số quan trọng của hosting</strong><span style="font-size: 13px; line-height: 1.6;">&nbsp;</span></span></h2><ul>	<li><strong><span style="color:rgb(0, 0, 205);">Băng thông</span></strong> (bandwidth): Tham số này rất quan trọng nếu website của bạn chứa nhiều hình ảnh và lượng truy cập website cao. Vì vậy khi lựa chọn hosting, hãy để ý tham số băng thông, tốt nhất <strong><span style="background-color:rgb(255, 255, 224);">nên chọn các nhà cung cấp hosting không giới hạn băng thông</span></strong>&nbsp;để khỏi lo lắng về vấn đề này.</li>	<li><span style="color:rgb(0, 0, 205);"><strong>Tự ý thay đổi được phiên bản PHP</strong></span>, thành phần mở rộng (extension) của PHP cũng như các tham số cấu hình PHP: Yếu tố này cũng khá quan trọng, ví dụ bạn đang dùng NukeViet 3, phiên bản NukeViet này yêu cầu PHP version là 5.3, nếu bạn nâng cấp Nukeviet lên Nukeviet 4, yêu cầu phiên bản PHP phải là 5.4 . Vì vậy<strong> <span style="background-color:rgb(255, 255, 224);">hãy chọn lựa các nhà cung cấp hosting cho phép bạn thay đổi được các phiên bản PHP</span></strong> cũng như các tham số cấu hình nó.</li></ul>&nbsp;<br  />Đến thời điểm hiện tại, <a href="https://123host.vn/web-hosting.html" target="_blank"><strong>123HOST</strong></a> là nhà cung cấp hosting đầu tiên&nbsp;<span style="color:rgb(0, 0, 205);"><strong>đạt chứng nhận tương thích với mã nguồn NukeViet 4 </strong></span>(xem tại <a href="http://nukeviet.vn/vi/partner/hosting/">http://nukeviet.vn/vi/partner/hosting/</a> ).&nbsp; Đồng thời họ cũng là nhà cung cấp hosting uy tín đáp ứng được tất cả 5 tiêu chí khắt khe trên.<br  />&nbsp;<div style="text-align:center"><img alt="hosting 123host nukeviet" height="298" src="/uploads/news/2016_01/hosting-123host-nukeviet.jpg" width="540" /></div><br  /><br  />Nếu sử dụng NukeViet hay bất kỳ mã nguồn mở nào khác, chúng tôi khuyên bạn nên dùng dịch vụ tại <strong>123HOST</strong>. Ngoài đáp ứng 5 tiêu chí trên, hosting tại <strong>123HOST</strong> còn có các tính năng đặc biệt mà không nhà cung cấp nào có:<ul>	<li>Tất cả các gói hosting của <strong>123HOST</strong> đều<strong> <span style="color:rgb(0, 0, 205);">không giới hạn băng thông</span></strong>, parked domain, tài khoản email, FTP, tài khoản MySQL. Hầu như tất cả đều không giới hạn cho tất cả các gói hosting.</li>	<li><span style="color:rgb(0, 0, 205);"><strong>DDOS Protection:</strong> </span>Nếu dùng hosting của các nhà cung cấp khác, khi website của bạn bị tấn công DDOS, họ sẽ khóa website của bạn để khỏi ảnh hưởng đến máy chủ hosting. Tuy nhiên tại <strong>123HOST</strong>, hệ thống của họ sẽ tự phát hiện và bật cản lọc tấn công cho website của bạn. Đồng thời bạn cũng có thể tự&nbsp; mình kích hoạt tính năng này tại giao diện cPanel. &nbsp;Website của bạn sẽ an toàn và hoạt động bình thường.</li>	<li><span style="color:rgb(0, 0, 205);"><strong>Malware Scanner:</strong></span> Tính năng này được tích hợp tại cPanel để người dùng quét xem mã nguồn website của mình có bị kẻ xấu lợi dụng và upload mã độc lên hay không. Đồng thời họ cũng hỗ trợ kiểm tra mã nguồn cho bạn nếu bạn gởi yêu cầu hỗ trợ kỹ thuật.</li>	<li><strong><span style="color:rgb(0, 0, 205);">Backup miễn phí:</span> </strong>Hosting tại <strong>123HOST</strong> đều tự động backup trong vòng 7 ngày, mỗi ngày 1 bản backup. Nếu bạn lỡ tay xóa mất dữ liệu website của mình hay website bị kẻ xấu hack và xóa dữ liệu, hãy bình tĩnh và liên hệ với kỹ thuật của 123HOST, họ sẽ khôi phục website cho bạn MIỄN PHÍ.</li></ul><div style="text-align:center"><img alt="cpanel ddos protection malware scanner" height="300" src="/uploads/news/2016_01/cpanel-ddos-protection-malware-scanner.jpg" width="540" /></div><br  />Chúc các bạn thành công.<br /><br />----<div>Giấy phép:<br /><a href="http://creativecommons.org/licenses/by-nc-sa/4.0/" rel="license" target="_blank"><img alt="CC BY NC SA" height="15" src="/uploads/news/2016_01/cc-by-nc-sa.png" style="border-width: 0px;" width="80" /></a><br />Bài viết này được chia sẻ với các điều khoản của <a href="http://creativecommons.org/licenses/by-nc-sa/4.0/" rel="license" target="_blank">giấy phép Creative Commons Attribution-NonCommercial-ShareAlike 4.0</a>.<br />Nguồn: <a href="https://123host.vn/blog/chon-nha-cung-cap-hosting-nao-tot-cho-nukeviet.html" target="_blank">https://123host.vn/blog/chon-nha-cung-cap-hosting-nao-tot-cho-nukeviet.html</a></div>', '', 2, 0, 1, 1, 1, 0),
(20, 'Công Ty Cổ Phần Thương Mại Hà Thành là nhà phân phối chính thức và duy nhất của thương hiệu sàn gỗ <strong>eFLOOR</strong> <strong>Malaysia</strong> tại Việt Nam. Với hơn 10 năm kinh nghiêm hoạt động trong lĩnh vực thiết kế - thi công sàn gỗ, chúng tôi luôn lắng nghe và thấu hiểu mong muốn cũng như', '', 2, 0, 1, 1, 1, 0),
(21, 'Công Ty Cổ Phần Thương Mại Hà Thành là nhà phân phối chính thức và duy nhất của thương hiệu sàn gỗ <strong>eFLOOR</strong> <strong>Malaysia</strong> tại Việt Nam. Với hơn 10 năm kinh nghiêm hoạt động trong lĩnh vực thiết kế - thi công sàn gỗ, chúng tôi luôn lắng nghe và thấu hiểu mong muốn cũng như những băn khoăn của khách hàng, từ đó tư vấn/ cung cấp những sản phẩm phù hợp nhất với căn hộ và sở thích của mỗi khách hàng. Bên cạnh đội ngũ thiết kế chuyên nghiêp, tư vấn tận tâm, Hà Thành còn sở hữu đội thợ thi công lành nghề, quy cách chuẩn xác tiến độ nhanh chóng, thường chỉ mất chưa đầy 1 ngày cho 1 sàn rộng hơn 50m2 với nhiều đồ đạc.', '', 2, 0, 1, 1, 1, 0);
INSERT INTO `nv4_vi_news_detail` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(22, 'Công ty chúng tôi cam kết bán hàng đúng chủng loại, nguyên tem mác ,nguồn gốc xuất xứ rõ&nbsp;ràng. Đặc biệt, Hà Thành là nhà phân phối chính thức và duy nhất của <strong>eFLOOR</strong> <strong>Malaysia</strong> tại Việt Nam,&nbsp;nên khách hàng hoàn toàn yên tâm được mua sản phẩm giá tốt như giá gốc, và được đảm bảo chất&nbsp;lượng tuyệt hảo của sàn gỗ cũng như các chế độ bảo hành của nhà sản xuất.', '', 2, 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_logs`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_news_logs` (
`id` mediumint(8) unsigned NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_rows`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_news_rows` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_rows`
--

INSERT INTO `nv4_vi_news_rows` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 2, 0, 0, 0),
(6, 12, '1,12', 0, 1, 'Nguyễn Thế Hùng', 7, 1453192444, 1453192444, 1, 1453192444, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 13, 0, 0, 0),
(7, 11, '11', 0, 1, 'Phạm Quốc Tiến', 2, 1453192400, 1453192400, 1, 1453192400, 0, 2, 'Tuyển dụng lập trình viên PHP phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-PHP', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về PHP và MySQL?. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0),
(8, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391089, 1445394192, 1, 1445391060, 0, 2, 'Tuyển dụng chuyên viên đồ hoạ phát triển NukeViet', 'Tuyen-dung-chuyen-vien-do-hoa', 'Bạn đam mê nguồn mở? Bạn là chuyên gia đồ họa? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0),
(9, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391090, 1445394193, 1, 1445391060, 0, 2, 'Tuyển dụng lập trình viên front-end (HTML/CSS/JS) phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về front-end (HTML/CSS/JS)?. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0),
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 1, 0, 0, 0),
(11, 1, '1', 0, 1, '', 4, 1445309676, 1445309676, 1, 1445309520, 0, 2, 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 'nukeviet-duoc-uu-tien-mua-sam-su-dung-trong-co-quan-to-chuc-nha-nuoc', 'Ngày 5/12/2014, Bộ trưởng Bộ TT&TT Nguyễn Bắc Son đã ký ban hành Thông tư 20/2014/TT-BTTTT (Thông tư 20) quy định về các sản phẩm phần mềm nguồn mở (PMNM) được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước. NukeViet (phiên bản 3.4.02 trở lên) là phần mềm được nằm trong danh sách này.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 1, 1, '4', 1, 2, 0, 0, 0),
(12, 11, '11', 0, 1, 'Vũ Bích Ngọc', 0, 1445391061, 1445394203, 1, 1445391000, 0, 2, 'Công ty VINADES tuyển dụng nhân viên kinh doanh', 'cong-ty-vinades-tuyen-dung-nhan-vien-kinh-doanh', 'Công ty cổ phần phát triển nguồn mở Việt Nam là đơn vị chủ quản của phần mềm mã nguồn mở NukeViet - một mã nguồn được tin dùng trong cơ quan nhà nước, đặc biệt là ngành giáo dục. Chúng tôi cần tuyển 05 nhân viên kinh doanh cho lĩnh vực này.', 'tuyen-dung-nvkd.png', '', 1, 1, '4', 1, 0, 0, 0, 0),
(14, 1, '1,11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(15, 11, '11', 0, 1, 'Trần Thị Thu', 0, 1445391135, 1445394444, 1, 1445391120, 0, 2, 'Học việc tại công ty VINADES', 'hoc-viec-tai-cong-ty-vinades', 'Công ty cổ phần phát triển nguồn mở Việt Nam tạo cơ hội việc làm và học việc miễn phí cho những ứng viên có đam mê thiết kế web, lập trình PHP… được học tập và rèn luyện cùng đội ngũ lập trình viên phát triển NukeViet.', 'hoc-viec-tai-cong-ty-vinades.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(16, 1, '1', 0, 1, '', 0, 1445391182, 1445394133, 1, 1445391120, 0, 2, 'NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016', 'nukeviet-duoc-bo-gd-dt-dua-vao-huong-dan-thuc-hien-nhiem-vu-cntt-nam-hoc-2015-2016', 'Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, NukeViet được đưa vào các hạng mục: Tập huấn sử dụng phần mềm nguồn mở cho giáo viên và cán bộ quản lý giáo dục; Khai thác, sử dụng và dạy học; đặc biệt phần &quot;khuyến cáo khi sử dụng các hệ thống CNTT&quot; có chỉ rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.', 'nukeviet-cms.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(17, 1, '1,10', 0, 1, '', 0, 1445391217, 1445393997, 1, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 1, 0, 0, 0),
(18, 2, '2', 0, 1, 'VINADES', 0, 1453194455, 1453194455, 1, 1453194455, 0, 2, 'NukeViet 4.0 có gì mới?', 'nukeviet-4-0-co-gi-moi', 'NukeViet 4 là phiên bản NukeViet được cộng đồng đánh giá cao, hứa hẹn nhiều điểm vượt trội về công nghệ đến thời điểm hiện tại. NukeViet 4 thay đổi gần như hoàn toàn từ nhân hệ thống đến chức năng, giao diện người dùng. Vậy, có gì mới trong phiên bản này?', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 2, 0, 0, 0),
(19, 10, '10', 0, 1, '123host', 0, 1453192440, 1453192440, 1, 1453192440, 0, 2, 'Chọn nhà cung cấp Hosting nào tốt cho NukeViet?', 'chon-nha-cung-cap-hosting-nao-tot-cho-nukeviet', 'NukeViet được xây dựng và phát triển để tương thích với nhiều loại hosting và server. Tuy nhiên, để website NukeViet của bạn hoạt động tốt trên môi trường internet, cần chọn một nhà cung cấp Hosting uy tín, tin cậy và để &quot;chọn mặt gởi vàng&quot; website của mình. Bài viết này sẽ trình bày các tiêu chí để lựa chọn một nhà cung cấp Hosting tốt cho website của bạn.', '2016_01/how-to-choose-hosting.jpg', '', 1, 1, '4', 1, 2, 0, 0, 0),
(20, 2, '2', 0, 1, '', 0, 1458526280, 1458526280, 1, 1458526080, 0, 2, 'SÀN GÔC CHỊU NƯỚC', 'san-goc-chiu-nuoc', 'SÀN GỖ CHỊU NƯỚC', 'go_van_san.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(21, 2, '2', 0, 1, '', 0, 1458526554, 1458526597, 1, 1458526440, 0, 2, 'Vệ sinh sàn gỗ công nghiệp đúng cách', 've-sinh-san-go-cong-nghiep-dung-cach', 'Vệ sinh sàn gỗ công nghiệp đúng cách', 'go_van_san_efloor_1.jpg', '', 1, 1, '4', 1, 1, 0, 0, 0),
(22, 2, '2', 0, 1, '', 0, 1458526707, 1458526707, 1, 1458526620, 0, 2, 'Ván sàn gỗ công nghiệp vàng thau lẫn lộn', 'van-san-go-cong-nghiep-vang-thau-lan-lon', 'Ván sàn gỗ công nghiệp vàng thau lẫn lộn', 'go_van_san_2.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_sources`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_news_sources` (
`sourceid` mediumint(8) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL,
  `edit_time` int(11) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_sources`
--

INSERT INTO `nv4_vi_news_sources` (`sourceid`, `title`, `link`, `logo`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Báo Hà Nội Mới', 'http://hanoimoi.com.vn', '', 1, 1274989177, 1274989177),
(2, 'VINADES.,JSC', 'http://vinades.vn', '', 2, 1274989787, 1274989787),
(3, 'Báo điện tử Dân Trí', 'http://dantri.com.vn', '', 4, 1322685396, 1322685396),
(4, 'Bộ Thông tin và Truyền thông', 'http://http://mic.gov.vn', '', 5, 1445309676, 1445309676);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_tags`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_news_tags` (
`tid` mediumint(8) unsigned NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_tags`
--

INSERT INTO `nv4_vi_news_tags` (`tid`, `numnews`, `alias`, `image`, `description`, `keywords`) VALUES
(1, 0, 'nguồn-mở', '', '', 'nguồn mở'),
(2, 0, 'quen-thuộc', '', '', 'quen thuộc'),
(3, 0, 'cộng-đồng', '', '', 'cộng đồng'),
(4, 0, 'việt-nam', '', '', 'việt nam'),
(5, 0, 'hoạt-động', '', '', 'hoạt động'),
(6, 0, 'tin-tức', '', '', 'tin tức'),
(7, 1, 'thương-mại-điện', '', '', 'thương mại điện'),
(8, 0, 'điện-tử', '', '', 'điện tử'),
(9, 13, 'nukeviet', '', '', 'nukeviet'),
(10, 8, 'vinades', '', '', 'vinades'),
(11, 3, 'lập-trình-viên', '', '', 'lập trình viên'),
(12, 3, 'chuyên-viên-đồ-họa', '', '', 'chuyên viên đồ họa'),
(13, 3, 'php', '', '', 'php'),
(14, 2, 'mysql', '', '', 'mysql'),
(15, 1, 'nhân-tài-đất-việt-2011', '', '', 'nhân tài đất việt 2011'),
(16, 9, 'mã-nguồn-mở', '', '', 'mã nguồn mở'),
(17, 2, 'nukeviet4', '', '', 'nukeviet4'),
(18, 1, 'mail', '', '', 'mail'),
(19, 1, 'fpt', '', '', 'fpt'),
(20, 1, 'smtp', '', '', 'smtp'),
(21, 1, 'bootstrap', '', '', 'bootstrap'),
(22, 1, 'block', '', '', 'block'),
(23, 1, 'modules', '', '', 'modules'),
(24, 2, 'banner', '', '', 'banner'),
(25, 1, 'liên-kết', '', '', 'liên kết'),
(26, 2, 'hosting', '', '', 'hosting'),
(27, 1, 'hỗ-trợ', '', '', 'hỗ trợ'),
(28, 1, 'hợp-tác', '', '', 'hợp tác'),
(29, 1, 'tốc-độ', '', '', 'tốc độ'),
(30, 2, 'website', '', '', 'website'),
(31, 1, 'bảo-mật', '', '', 'bảo mật'),
(32, 4, 'giáo-dục', '', '', 'giáo dục'),
(33, 1, 'edu-gate', '', '', 'edu gate'),
(34, 2, 'lập-trình', '', '', 'lập trình'),
(35, 1, 'logo', '', '', 'logo'),
(36, 1, 'code', '', '', 'code'),
(37, 1, 'thực-tập', '', '', 'thực tập'),
(38, 1, 'kinh-doanh', '', '', 'kinh doanh'),
(39, 1, 'nhân-viên', '', '', 'nhân viên'),
(40, 1, 'bộ-gd&đt', '', '', 'Bộ GD&ĐT'),
(41, 1, 'module', '', '', 'module'),
(42, 1, 'php-nuke', '', '', 'php-nuke');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_tags_id`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_tags_id`
--

INSERT INTO `nv4_vi_news_tags_id` (`id`, `tid`, `keyword`) VALUES
(1, 7, 'thương mại điện'),
(1, 9, 'nukeviet'),
(7, 10, 'vinades'),
(7, 9, 'nukeviet'),
(7, 11, 'lập trình viên'),
(7, 12, 'chuyên viên đồ họa'),
(7, 13, 'php'),
(7, 14, 'mysql'),
(10, 15, 'Nhân tài đất Việt 2011'),
(10, 16, 'mã nguồn mở'),
(10, 9, 'nukeviet'),
(18, 17, 'nukeviet4'),
(18, 9, 'nukeviet'),
(18, 10, 'vinades'),
(18, 13, 'php'),
(18, 14, 'mysql'),
(18, 18, 'mail'),
(18, 19, 'fpt'),
(18, 20, 'smtp'),
(18, 21, 'bootstrap'),
(18, 22, 'block'),
(18, 23, 'modules'),
(18, 16, 'mã nguồn mở'),
(6, 16, 'mã nguồn mở'),
(6, 9, 'nukeviet'),
(6, 17, 'nukeviet4'),
(6, 10, 'vinades'),
(6, 24, 'banner'),
(6, 25, 'liên kết'),
(6, 26, 'hosting'),
(6, 27, 'hỗ trợ'),
(6, 28, 'hợp tác'),
(19, 9, 'nukeviet'),
(19, 10, 'vinades'),
(19, 29, 'tốc độ'),
(19, 26, 'hosting'),
(19, 30, 'website'),
(19, 31, 'bảo mật'),
(17, 9, 'nukeviet'),
(17, 32, 'giáo dục'),
(17, 33, 'edu gate'),
(15, 16, 'mã nguồn mở'),
(15, 10, 'vinades'),
(15, 9, 'nukeviet'),
(15, 11, 'lập trình viên'),
(15, 12, 'chuyên viên đồ họa'),
(16, 9, 'nukeviet'),
(16, 16, 'mã nguồn mở'),
(16, 32, 'giáo dục'),
(8, 10, 'vinades'),
(8, 34, 'lập trình'),
(8, 35, 'logo'),
(8, 24, 'banner'),
(8, 30, 'website'),
(8, 36, 'code'),
(8, 13, 'php'),
(9, 16, 'mã nguồn mở'),
(9, 10, 'vinades'),
(9, 34, 'lập trình'),
(9, 9, 'nukeviet'),
(14, 37, 'thực tập'),
(14, 10, 'vinades'),
(14, 12, 'chuyên viên đồ họa'),
(14, 11, 'lập trình viên'),
(14, 9, 'nukeviet'),
(14, 16, 'mã nguồn mở'),
(12, 38, 'kinh doanh'),
(12, 9, 'nukeviet'),
(12, 32, 'giáo dục'),
(12, 39, 'nhân viên'),
(11, 16, 'mã nguồn mở'),
(11, 9, 'nukeviet'),
(11, 40, 'Bộ GD&ĐT'),
(11, 32, 'giáo dục'),
(1, 41, 'module'),
(1, 16, 'mã nguồn mở'),
(1, 42, 'php-nuke');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_topics`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_news_topics` (
`topicid` smallint(5) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_topics`
--

INSERT INTO `nv4_vi_news_topics` (`topicid`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 'NukeViet 4', 'NukeViet-4', '', 'NukeViet 4', 1, 'NukeViet 4', 1445396011, 1445396011);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_page`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_page` (
`id` mediumint(8) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_page_config`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_page_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_page_config`
--

INSERT INTO `nv4_vi_page_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_referer_stats`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_referer_stats` (
  `host` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `month01` int(11) NOT NULL DEFAULT '0',
  `month02` int(11) NOT NULL DEFAULT '0',
  `month03` int(11) NOT NULL DEFAULT '0',
  `month04` int(11) NOT NULL DEFAULT '0',
  `month05` int(11) NOT NULL DEFAULT '0',
  `month06` int(11) NOT NULL DEFAULT '0',
  `month07` int(11) NOT NULL DEFAULT '0',
  `month08` int(11) NOT NULL DEFAULT '0',
  `month09` int(11) NOT NULL DEFAULT '0',
  `month10` int(11) NOT NULL DEFAULT '0',
  `month11` int(11) NOT NULL DEFAULT '0',
  `month12` int(11) NOT NULL DEFAULT '0',
  `last_update` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_referer_stats`
--

INSERT INTO `nv4_vi_referer_stats` (`host`, `total`, `month01`, `month02`, `month03`, `month04`, `month05`, `month06`, `month07`, `month08`, `month09`, `month10`, `month11`, `month12`, `last_update`) VALUES
('google.com', 2, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1459822005);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_searchkeys`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_searchkeys` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skey` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `search_engine` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_siteterms`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_siteterms` (
`id` mediumint(8) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_siteterms`
--

INSERT INTO `nv4_vi_siteterms` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `gid`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`) VALUES
(1, 'Chính sách bảo mật (Quyền riêng tư)', 'privacy', '', '', 0, 'Tài liệu này cung cấp cho bạn (người truy cập và sử dụng website) chính sách liên quan đến bảo mật và quyền riêng tư của bạn', '<strong><a id="index" name="index"></a>Danh mục</strong><br /> <a href="#1">Điều 1: Thu thập thông tin</a><br /> <a href="#2">Điều 2: Lưu trữ &amp; Bảo vệ thông tin</a><br /> <a href="#3">Điều 3: Sử dụng thông tin </a><br /> <a href="#4">Điều 4: Tiếp nhận thông tin từ các đối tác </a><br /> <a href="#5">Điều 5: Chia sẻ thông tin với bên thứ ba</a><br /> <a href="#6">Điều 6: Thay đổi chính sách bảo mật</a>  <hr  /> <h2 style="text-align: justify;"><a id="1" name="1"></a>Điều 1: Thu thập thông tin</h2>  <h3 style="text-align: justify;">1.1. Thu thập tự động:</h3>  <div style="text-align: justify;">Hệ thống này được xây dựng bằng mã nguồn NukeViet. Như mọi website hiện đại khác, chúng tôi sẽ thu thập địa chỉ IP và các thông tin web tiêu chuẩn khác của bạn như: loại trình duyệt, các trang bạn truy cập trong quá trình sử dụng dịch vụ, thông tin về máy tính &amp; thiết bị mạng v.v… cho mục đích phân tích thông tin phục vụ việc bảo mật và giữ an toàn cho hệ thống.</div>  <h3 style="text-align: justify;">1.2. Thu thập từ các khai báo của chính bạn:</h3>  <div style="text-align: justify;">Các thông tin do bạn khai báo cho chúng tôi trong quá trình làm việc như: đăng ký tài khoản, liên hệ với chúng tôi... cũng sẽ được chúng tôi lưu trữ phục vụ công việc chăm sóc khách hàng sau này.</div>  <h3 style="text-align: justify;">1.3. Thu thập thông tin thông qua việc đặt cookies:</h3>  <p style="text-align: justify;">Như mọi website hiện đại khác, khi bạn truy cập website, chúng tôi (hoặc các công cụ theo dõi hoặc thống kê hoạt động của website do các đối tác cung cấp) sẽ đặt một số File dữ liệu gọi là Cookies lên đĩa cứng hoặc bộ nhớ máy tính của bạn.</p>  <p style="text-align: justify;">Một trong số những Cookies này có thể tồn tại lâu để thuận tiện cho bạn trong quá trình sử dụng, ví dụ như: lưu Email của bạn trong trang đăng nhập để bạn không phải nhập lại v.v…</p>  <h3 style="text-align: justify;">1.4. Thu thập và lưu trữ thông tin trong quá khứ:</h3>  <p style="text-align: justify;">Bạn có thể thay đổi thông tin cá nhân của mình bất kỳ lúc nào bằng cách sử dụng chức năng tương ứng. Tuy nhiên chúng tôi sẽ lưu lại những thông tin bị thay đổi để chống các hành vi xóa dấu vết gian lận.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="2" name="2"></a>Điều 2: Lưu trữ &amp; Bảo vệ thông tin</h2>  <div style="text-align: justify;">Hầu hết các thông tin được thu thập sẽ được lưu trữ tại cơ sở dữ liệu của chúng tôi.<br /> <br /> Chúng tôi bảo vệ dữ liệu cá nhân của các bạn bằng các hình thức như: mật khẩu, tường lửa, mã hóa cùng các hình thức thích hợp khác và chỉ cấp phép việc truy cập và xử lý dữ liệu cho các đối tượng phù hợp, ví dụ chính bạn hoặc các nhân viên có trách nhiệm xử thông tin với bạn thông qua các bước xác định danh tính phù hợp.<br /> <br /> Mật khẩu của bạn được lưu trữ và bảo vệ bằng phương pháp mã hoá trong cơ sở dữ liệu của hệ thống, vì thế nó rất an toàn. Tuy nhiên, chúng tôi khuyên bạn không nên dùng lại mật khẩu này trên các website khác. Mật khẩu của bạn là cách duy nhất để bạn đăng nhập vào tài khoản thành viên của mình trong website này, vì thế hãy cất giữ nó cẩn thận. Trong mọi trường hợp bạn không nên cung cấp thông tin mật khẩu cho bất kỳ người nào dù là người của chúng tôi, người của NukeViet hay bất kỳ người thứ ba nào khác trừ khi bạn hiểu rõ các rủi ro khi để lộ mật khẩu. Nếu quên mật khẩu, bạn có thể sử dụng chức năng “<a href="/users/lostpass/">Quên mật khẩu</a>” trên website. Để thực hiện việc này, bạn cần phải cung cấp cho hệ thống biết tên thành viên hoặc địa chỉ Email đang sử dụng của mình trong tài khoản, sau đó hệ thống sẽ tạo ra cho bạn mật khẩu mới và gửi đến cho bạn để bạn vẫn có thể đăng nhập vào tài khoản thành viên của mình.  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p> </div>  <h2 style="text-align: justify;"><a id="3" name="3"></a>Điều 3: Sử dụng thông tin</h2>  <p style="text-align: justify;">Thông tin thu thập được sẽ được chúng tôi sử dụng để:</p>  <div style="text-align: justify;">- Cung cấp các dịch vụ hỗ trợ &amp; chăm sóc khách hàng.</div>  <div style="text-align: justify;">- Thực hiện giao dịch thanh toán &amp; gửi các thông báo trong quá trình giao dịch.</div>  <div style="text-align: justify;">- Xử lý khiếu nại, thu phí &amp; giải quyết sự cố.</div>  <div style="text-align: justify;">- Ngăn chặn các hành vi có nguy cơ rủi ro, bị cấm hoặc bất hợp pháp và đảm bảo tuân thủ đúng chính sách “Thỏa thuận người dùng”.</div>  <div style="text-align: justify;">- Đo đạc, tùy biến &amp; cải tiến dịch vụ, nội dung và hình thức của website.</div>  <div style="text-align: justify;">- Gửi bạn các thông tin về chương trình Marketing, các thông báo &amp; chương trình khuyến mại.</div>  <div style="text-align: justify;">- So sánh độ chính xác của thông tin cá nhân của bạn trong quá trình kiểm tra với bên thứ ba.</div>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="4" name="4"></a>Điều 4: Tiếp nhận thông tin từ các đối tác</h2>  <div style="text-align: justify;">Khi sử dụng các công cụ giao dịch và thanh toán thông qua internet, chúng tôi có thể tiếp nhận thêm các thông tin về bạn như địa chỉ username, Email, số tài khoản ngân hàng... Chúng tôi kiểm tra những thông tin này với cơ sở dữ liệu người dùng của mình nhằm xác nhận rằng bạn có phải là khách hàng của chúng tôi hay không nhằm giúp việc thực hiện các dịch vụ cho bạn được thuận lợi.<br /> <br /> Các thông tin tiếp nhận được sẽ được chúng tôi bảo mật như những thông tin mà chúng tôi thu thập được trực tiếp từ bạn.</div>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2><a id="5" name="5"></a>Điều 5: Chia sẻ thông tin với bên thứ ba</h2>  <p style="text-align: justify;">Chúng tôi sẽ không chia sẻ thông tin cá nhân, thông tin tài chính... của bạn cho các bên thứ 3 trừ khi được sự đồng ý của chính bạn hoặc khi chúng tôi buộc phải tuân thủ theo các quy định pháp luật hoặc khi có yêu cầu từ cơ quan công quyền có thẩm quyền.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2><a id="6" name="6"></a>Điều 6: Thay đổi chính sách bảo mật</h2>  <p style="text-align: justify;">Chính sách Bảo mật này có thể thay đổi theo thời gian. Chúng tôi sẽ không giảm quyền của bạn theo Chính sách Bảo mật này mà không có sự đồng ý rõ ràng của bạn. Chúng tôi sẽ đăng bất kỳ thay đổi Chính sách Bảo mật nào trên trang này và, nếu những thay đổi này quan trọng, chúng tôi sẽ cung cấp thông báo nổi bật hơn (bao gồm, đối với một số dịch vụ nhất định, thông báo bằng email về các thay đổi của Chính sách Bảo mật).</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <p style="text-align: right;">Chính sách bảo mật mặc định này được xây dựng cho <a href="http://nukeviet.vn" target="_blank">NukeViet CMS</a>, được tham khảo từ website <a href="http://webnhanh.vn/vi/thiet-ke-web/detail/Chinh-sach-bao-mat-Quyen-rieng-tu-Privacy-Policy-2147/">webnhanh.vn</a></p>', '', 0, '4', '', 0, 1, 1, 1456905063, 1456905063, 1),
(2, 'Điều khoản và điều kiện sử dụng', 'terms-and-conditions', '', '', 0, 'Đây là các điều khoản và điều kiện áp dụng cho website này. Truy cập và sử dụng website tức là bạn đã đồng ý với các quy định này.', '<div style="text-align: justify;">Cảm ơn bạn đã sử dụng. Xin vui lòng đọc các Điều khoản một cách cẩn thận, và <a href="/contact/">liên hệ</a> với chúng tôi nếu bạn có bất kỳ câu hỏi. Bằng việc truy cập hoặc sử dụng website của chúng tôi, bạn đồng ý bị ràng buộc bởi các <a href="/siteterms/terms-and-conditions.html">Điều khoản và điều kiện</a> sử dụng cũng như <a href="/siteterms/privacy.html">Chính sách bảo mật</a> của chúng tôi. Nếu không đồng ý với các quy định này, bạn vui lòng ngưng sử dụng website.<br /> <br /> <strong><a id="index" name="index"></a>Danh mục</strong><br /> <a href="#1">Điều 1: Điều khoản liên quan đến phần mềm vận hành website</a><br /> <a href="#2">Điều 2: Giới hạn cho việc sử dụng Website và các tài liệu trên website</a><br /> <a href="#3">Điều 3: Sử dụng thương hiệu</a><br /> <a href="#4">Điều 4: Các hành vi bị nghiêm cấm</a><br /> <a href="#5">Điều 5: Các đường liên kết đến các website khác</a><br /> <a href="#6">Điều 6: Từ chối bảo đảm</a><br /> <a href="#7">Điều 7: Luật áp dụng và cơ quan giải quyết tranh chấp</a><br /> <a href="#8">Điều 8: Thay đổi điều khoản và điều kiện sử dụng</a></div>  <hr  /> <h2 style="text-align: justify;"><a id="1" name="1"></a>Điều khoản liên quan đến phần mềm vận hành website</h2>  <p style="text-align: justify;">- Website của chúng tôi sử dụng hệ thống NukeViet, là giải pháp về website/ cổng thông tin nguồn mở được phát hành theo giấy phép bản quyền phần mềm tự do nguồn mở “<a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html" target="_blank">GNU General Public License</a>” (viết tắt là GNU/GPL hay GPL) và có thể tải về miễn phí tại trang web <a href="http://www.nukeviet.vn" target="_blank">www.nukeviet.vn</a>.<br /> - Website này do chúng tôi sở hữu, điều hành và duy trì. NukeViet (hiểu ở đây là “hệ thống NukeViet” (bao gồm nhân hệ thống NukeViet và các sản phẩm phái sinh như NukeViet CMS, NukeViet Portal, <a href="http://edu.nukeviet.vn" target="_blank">NukeViet Edu Gate</a>...), “www.nukeviet.vn”, “tổ chức NukeViet”, “ban điều hành NukeViet”, &quot;Ban Quản Trị NukeViet&quot; và nói chung là những gì liên quan đến NukeViet...) không liên quan gì đến việc chúng tôi điều hành website cũng như quy định bạn được phép làm và không được phép làm gì trên website này.<br /> - Hệ thống NukeViet là bộ mã nguồn được phát triển để xây dựng các website/ cổng thông tin trên mạng. Chúng tôi (chủ sở hữu, điều hành và duy trì website này) không hỗ trợ và khẳng định hay ngụ ý về việc có liên quan đến NukeViet. Để biết thêm nhiều thông tin về NukeViet, hãy ghé thăm website của NukeViet tại địa chỉ: <a href="http://nukeviet.vn" target="_blank">http://nukeviet.vn</a>.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="2" name="2"></a>Giới hạn cho việc sử dụng Website và các tài liệu trên website</h2>  <p style="text-align: justify;">- Tất cả các quyền liên quan đến tất cả tài liệu và thông tin được hiển thị và/ hoặc được tạo ra sẵn cho Website này (ví dụ như những tài liệu được cung cấp để tải về) được quản lý, sở hữu hoặc được cho phép sử dụng bởi chúng tôi hoặc chủ sở hữu tương ứng với giấy phép tương ứng. Việc sử dụng các tài liệu và thông tin phải được tuân thủ theo giấy phép tương ứng được áp dụng cho chúng.<br /> - Ngoại trừ các tài liệu được cấp phép rõ ràng dưới dạng giấy phép tư liệu mở&nbsp;Creative Commons (gọi là giấy phép CC) cho phép bạn khai thác và chia sẻ theo quy định của giấy phép tư liệu mở, đối với các loại tài liệu không ghi giấy phép rõ ràng thì bạn không được phép sử dụng (bao gồm nhưng không giới hạn việc sao chép, chỉnh sửa toàn bộ hay một phần, đăng tải, phân phối, cấp phép, bán và xuất bản) bất cứ tài liệu nào mà không có sự cho phép trước bằng văn bản của chúng tôi ngoại trừ việc sử dụng cho mục đích cá nhân, nội bộ, phi thương mại.<br /> - Một số tài liệu hoặc thông tin có những điều khoản và điều kiện áp dụng riêng cho chúng không phải là giấy phép tư liệu mở, trong trường hợp như vậy, bạn được yêu cầu phải chấp nhận các điều khoản và điều kiện đó khi truy cập vào các tài liệu và thông tin này.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="3" name="3"></a>Sử dụng thương hiệu</h2>  <p style="text-align: justify;">- VINADES.,JSC, NukeViet và thương hiệu gắn với NukeViet (ví dụ NukeViet CMS, NukeViet Portal, NukeViet Edu Gate...), logo công ty VINADES thuộc sở hữu của Công ty cổ phần phát triển nguồn mở Việt Nam.<br /> - Những tên sản phẩm, tên dịch vụ khác, logo và/ hoặc những tên công ty được sử dụng trong Website này là những tài sản đã được đăng ký độc quyền và được giữ bản quyền bởi những người sở hữu và/ hoặc người cấp phép tương ứng.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="4" name="4"></a>Các hành vi bị nghiêm cấm</h2>  <p style="text-align: justify;">Người truy cập website này không được thực hiện những hành vi dưới đây khi sử dụng website:<br /> - Xâm phạm các quyền hợp pháp (bao gồm nhưng không giới hạn đối với các quyền riêng tư và chung) của người khác.<br /> - Gây ra sự thiệt hại hoặc bất lợi cho người khác.<br /> - Làm xáo trộn trật tự công cộng.<br /> - Hành vi liên quan đến tội phạm.<br /> - Tải lên hoặc phát tán thông tin riêng tư của tổ chức, cá nhân khác mà không được sự chấp thuận của họ.<br /> - Sử dụng Website này vào mục đích thương mại mà chưa được sự cho phép của chúng tôi.<br /> - Nói xấu, làm nhục, phỉ báng người khác.<br /> - Tải lên các tập tin chứa virus hoặc các tập tin bị hư mà có thể gây thiệt hại đến sự vận hành của máy tính khác.<br /> - Những hoạt động có khả năng ảnh hưởng đến hoạt động bình thường của website.<br /> - Những hoạt động mà chúng tôi cho là không thích hợp.<br /> - Những hoạt động bất hợp pháp hoặc bị cấm bởi pháp luật hiện hành.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="5" name="5"></a>Các đường liên kết đến các website khác</h2>  <p style="text-align: justify;">- Các website của các bên thứ ba (không phải các trang do chúng tôi quản lý) được liên kết đến hoặc từ website này (&quot;Các website khác&quot;) được điều hành và duy trì hoàn toàn độc lập bởi các bên thứ ba đó và không nằm trong quyền điều khiển và/hoặc giám sát của chúng tôi. Việc truy cập các website khác phải được tuân thủ theo các điều khoản và điều kiện quy định bởi ban điều hành của website đó.<br /> - Chúng tôi không chịu trách nhiệm cho sự mất mát hoặc thiệt hại do việc truy cập và sử dụng các website bên ngoài, và bạn phải chịu mọi rủi ro khi truy cập các website đó.<br /> - Không có nội dung nào trong Website này thể hiện như một sự đảm bảo của chúng tôi về nội dung của các website khác và các sản phẩm và/ hoặc các dịch vụ xuất hiện và/ hoặc được cung cấp tại các website khác.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="6" name="6"></a>Từ chối bảo đảm</h2>  <p style="text-align: justify;">NGOẠI TRỪ PHẠM VI BỊ CẤM THEO LUẬT PHÁP HIỆN HÀNH, CHÚNG TÔI SẼ:<br /> - KHÔNG CHỊU TRÁCH NHIỆM HAY BẢO ĐẢM, MỘT CÁCH RÕ RÀNG HAY NGỤ Ý, BAO GỒM SỰ BẢO ĐẢM VỀ TÍNH CHÍNH XÁC, MỨC ĐỘ TIN CẬY, HOÀN THIỆN, PHÙ HỢP CHO MỤC ĐÍCH CỤ THỂ, SỰ KHÔNG XÂM PHẠM QUYỀN CỦA BÊN THỨ 3 VÀ/HOẶC TÍNH AN TOÀN CỦA NỘI DỤNG WEBSITE NÀY, VÀ NHỮNG TUYÊN BỐ, ĐẢM BẢO CÓ LIÊN QUAN.<br /> - KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT KỲ SỰ THIỆT HẠI HAY MẤT MÁT PHÁT SINH TỪ VIỆC TRUY CẬP VÀ SỬ DỤNG WEBSITE HAY VIỆC KHÔNG THỂ SỬ DỤNG WEBSITE.<br /> - CHÚNG TÔI CÓ THỂ THAY ĐỔI VÀ/HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE NÀY, HOẶC TẠM HOÃN HOẶC NGƯNG CUNG CẤP CÁC DỊCH VỤ QUA WEBSITE NÀY VÀO BẤT KỲ THỜI ĐIỂM NÀO MÀ KHÔNG CẦN THÔNG BÁO TRƯỚC. CHÚNG TÔI SẼ KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT CỨ THIỆT HẠI NÀO PHÁT SINH DO SỰ THAY ĐỔI HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="7" name="7"></a>Luật áp dụng và cơ quan giải quyết tranh chấp</h2>  <p style="text-align: justify;">- Các Điều Khoản và Điều Kiện này được điều chỉnh và giải thích theo luật của Việt Nam trừ khi có điều khoản khác được cung cấp thêm. Tất cả tranh chấp phát sinh liên quan đến website này và các Điều Khoản và Điều Kiện sử dụng này sẽ được giải quyết tại các tòa án ở Việt Nam.<br /> - Nếu một phần nào đó của các Điều Khoản và Điều Kiện bị xem là không có giá trị, vô hiệu, hoặc không áp dụng được vì lý do nào đó, phần đó được xem như là phần riêng biệt và không ảnh hưởng đến tính hiệu lực của phần còn lại.<br /> - Trong trường hợp có sự mâu thuẫn giữa bản Tiếng Anh và bản Tiếng Việt của bản Điều Khoản và Điều Kiện này, bản Tiếng Việt sẽ được ưu tiên áp dụng.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="8" name="8"></a>Thay đổi điều khoản và điều kiện sử dụng</h2>  <div style="text-align: justify;">Điều khoản và điều kiện sử dụng có thể thay đổi theo thời gian. Chúng tôi bảo lưu quyền thay đổi hoặc sửa đổi bất kỳ điều khoản và điều kiện cũng như các quy định khác, bất cứ lúc nào và theo ý mình. Chúng tôi sẽ có thông báo trên website khi có sự thay đổi. Tiếp tục sử dụng trang web này sau khi đăng các thay đổi tức là bạn đã chấp nhận các thay đổi đó. <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p> </div>', '', 0, '4', '', 0, 2, 1, 1456905063, 1456905063, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_siteterms_config`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_siteterms_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_siteterms_config`
--

INSERT INTO `nv4_vi_siteterms_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_voting`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_voting` (
`vid` smallint(5) unsigned NOT NULL,
  `question` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `acceptcm` int(2) NOT NULL DEFAULT '1',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `publ_time` int(11) unsigned NOT NULL DEFAULT '0',
  `exp_time` int(11) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_voting`
--

INSERT INTO `nv4_vi_voting` (`vid`, `question`, `link`, `acceptcm`, `admin_id`, `groups_view`, `publ_time`, `exp_time`, `act`) VALUES
(2, 'Bạn biết gì về NukeViet 4?', '', 1, 1, '6', 1275318563, 0, 1),
(3, 'Lợi ích của phần mềm nguồn mở là gì?', '', 1, 1, '6', 1275318563, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_voting_rows`
--

CREATE TABLE IF NOT EXISTS `nv4_vi_voting_rows` (
`id` mediumint(8) unsigned NOT NULL,
  `vid` smallint(5) unsigned NOT NULL,
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hitstotal` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_voting_rows`
--

INSERT INTO `nv4_vi_voting_rows` (`id`, `vid`, `title`, `url`, `hitstotal`) VALUES
(5, 2, 'Một bộ sourcecode cho web hoàn toàn mới.', '', 0),
(6, 2, 'Mã nguồn mở, sử dụng miễn phí.', '', 0),
(7, 2, 'Sử dụng HTML5, CSS3 và hỗ trợ Ajax', '', 0),
(8, 2, 'Tất cả các ý kiến trên', '', 0),
(9, 3, 'Liên tục được cải tiến, sửa đổi bởi cả thế giới.', '', 0),
(10, 3, 'Được sử dụng miễn phí không mất tiền.', '', 0),
(11, 3, 'Được tự do khám phá, sửa đổi theo ý thích.', '', 0),
(12, 3, 'Phù hợp để học tập, nghiên cứu vì được tự do sửa đổi theo ý thích.', '', 0),
(13, 3, 'Tất cả các ý kiến trên', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nv4_authors`
--
ALTER TABLE `nv4_authors`
 ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `nv4_authors_config`
--
ALTER TABLE `nv4_authors_config`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `keyname` (`keyname`);

--
-- Indexes for table `nv4_authors_module`
--
ALTER TABLE `nv4_authors_module`
 ADD PRIMARY KEY (`mid`), ADD UNIQUE KEY `module` (`module`);

--
-- Indexes for table `nv4_banip`
--
ALTER TABLE `nv4_banip`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `ip` (`ip`);

--
-- Indexes for table `nv4_banners_click`
--
ALTER TABLE `nv4_banners_click`
 ADD KEY `bid` (`bid`), ADD KEY `click_day` (`click_day`), ADD KEY `click_ip` (`click_ip`), ADD KEY `click_country` (`click_country`), ADD KEY `click_browse_key` (`click_browse_key`), ADD KEY `click_os_key` (`click_os_key`);

--
-- Indexes for table `nv4_banners_clients`
--
ALTER TABLE `nv4_banners_clients`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `login` (`login`), ADD UNIQUE KEY `email` (`email`), ADD KEY `full_name` (`full_name`);

--
-- Indexes for table `nv4_banners_plans`
--
ALTER TABLE `nv4_banners_plans`
 ADD PRIMARY KEY (`id`), ADD KEY `title` (`title`);

--
-- Indexes for table `nv4_banners_rows`
--
ALTER TABLE `nv4_banners_rows`
 ADD PRIMARY KEY (`id`), ADD KEY `pid` (`pid`), ADD KEY `clid` (`clid`);

--
-- Indexes for table `nv4_config`
--
ALTER TABLE `nv4_config`
 ADD UNIQUE KEY `lang` (`lang`,`module`,`config_name`);

--
-- Indexes for table `nv4_cookies`
--
ALTER TABLE `nv4_cookies`
 ADD UNIQUE KEY `cookiename` (`name`,`domain`,`path`), ADD KEY `name` (`name`);

--
-- Indexes for table `nv4_counter`
--
ALTER TABLE `nv4_counter`
 ADD UNIQUE KEY `c_type` (`c_type`,`c_val`);

--
-- Indexes for table `nv4_cronjobs`
--
ALTER TABLE `nv4_cronjobs`
 ADD PRIMARY KEY (`id`), ADD KEY `is_sys` (`is_sys`);

--
-- Indexes for table `nv4_en_about`
--
ALTER TABLE `nv4_en_about`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_en_about_config`
--
ALTER TABLE `nv4_en_about_config`
 ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_en_blocks_groups`
--
ALTER TABLE `nv4_en_blocks_groups`
 ADD PRIMARY KEY (`bid`), ADD KEY `theme` (`theme`), ADD KEY `module` (`module`), ADD KEY `position` (`position`), ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `nv4_en_blocks_weight`
--
ALTER TABLE `nv4_en_blocks_weight`
 ADD UNIQUE KEY `bid` (`bid`,`func_id`);

--
-- Indexes for table `nv4_en_comment`
--
ALTER TABLE `nv4_en_comment`
 ADD PRIMARY KEY (`cid`), ADD KEY `mod_id` (`module`,`area`,`id`), ADD KEY `post_time` (`post_time`);

--
-- Indexes for table `nv4_en_contact_department`
--
ALTER TABLE `nv4_en_contact_department`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `full_name` (`full_name`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_en_contact_reply`
--
ALTER TABLE `nv4_en_contact_reply`
 ADD PRIMARY KEY (`rid`), ADD KEY `id` (`id`);

--
-- Indexes for table `nv4_en_contact_send`
--
ALTER TABLE `nv4_en_contact_send`
 ADD PRIMARY KEY (`id`), ADD KEY `sender_name` (`sender_name`);

--
-- Indexes for table `nv4_en_freecontent_blocks`
--
ALTER TABLE `nv4_en_freecontent_blocks`
 ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `nv4_en_freecontent_rows`
--
ALTER TABLE `nv4_en_freecontent_rows`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_en_menu`
--
ALTER TABLE `nv4_en_menu`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_en_menu_rows`
--
ALTER TABLE `nv4_en_menu_rows`
 ADD PRIMARY KEY (`id`), ADD KEY `parentid` (`parentid`,`mid`);

--
-- Indexes for table `nv4_en_modfuncs`
--
ALTER TABLE `nv4_en_modfuncs`
 ADD PRIMARY KEY (`func_id`), ADD UNIQUE KEY `func_name` (`func_name`,`in_module`), ADD UNIQUE KEY `alias` (`alias`,`in_module`);

--
-- Indexes for table `nv4_en_modthemes`
--
ALTER TABLE `nv4_en_modthemes`
 ADD UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`);

--
-- Indexes for table `nv4_en_modules`
--
ALTER TABLE `nv4_en_modules`
 ADD PRIMARY KEY (`title`);

--
-- Indexes for table `nv4_en_news_1`
--
ALTER TABLE `nv4_en_news_1`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_en_news_2`
--
ALTER TABLE `nv4_en_news_2`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_en_news_3`
--
ALTER TABLE `nv4_en_news_3`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_en_news_4`
--
ALTER TABLE `nv4_en_news_4`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_en_news_5`
--
ALTER TABLE `nv4_en_news_5`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_en_news_6`
--
ALTER TABLE `nv4_en_news_6`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_en_news_7`
--
ALTER TABLE `nv4_en_news_7`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_en_news_8`
--
ALTER TABLE `nv4_en_news_8`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_en_news_9`
--
ALTER TABLE `nv4_en_news_9`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_en_news_10`
--
ALTER TABLE `nv4_en_news_10`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_en_news_11`
--
ALTER TABLE `nv4_en_news_11`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_en_news_12`
--
ALTER TABLE `nv4_en_news_12`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_en_news_13`
--
ALTER TABLE `nv4_en_news_13`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_en_news_14`
--
ALTER TABLE `nv4_en_news_14`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_en_news_admins`
--
ALTER TABLE `nv4_en_news_admins`
 ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Indexes for table `nv4_en_news_block`
--
ALTER TABLE `nv4_en_news_block`
 ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `nv4_en_news_block_cat`
--
ALTER TABLE `nv4_en_news_block_cat`
 ADD PRIMARY KEY (`bid`), ADD UNIQUE KEY `title` (`title`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_en_news_cat`
--
ALTER TABLE `nv4_en_news_cat`
 ADD PRIMARY KEY (`catid`), ADD UNIQUE KEY `alias` (`alias`), ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_en_news_config_post`
--
ALTER TABLE `nv4_en_news_config_post`
 ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `nv4_en_news_detail`
--
ALTER TABLE `nv4_en_news_detail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_en_news_logs`
--
ALTER TABLE `nv4_en_news_logs`
 ADD PRIMARY KEY (`id`), ADD KEY `sid` (`sid`), ADD KEY `userid` (`userid`);

--
-- Indexes for table `nv4_en_news_rows`
--
ALTER TABLE `nv4_en_news_rows`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_en_news_sources`
--
ALTER TABLE `nv4_en_news_sources`
 ADD PRIMARY KEY (`sourceid`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_en_news_tags`
--
ALTER TABLE `nv4_en_news_tags`
 ADD PRIMARY KEY (`tid`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_en_news_tags_id`
--
ALTER TABLE `nv4_en_news_tags_id`
 ADD UNIQUE KEY `id_tid` (`id`,`tid`), ADD KEY `tid` (`tid`);

--
-- Indexes for table `nv4_en_news_topics`
--
ALTER TABLE `nv4_en_news_topics`
 ADD PRIMARY KEY (`topicid`), ADD UNIQUE KEY `title` (`title`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_en_page`
--
ALTER TABLE `nv4_en_page`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_en_page_config`
--
ALTER TABLE `nv4_en_page_config`
 ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_en_referer_stats`
--
ALTER TABLE `nv4_en_referer_stats`
 ADD UNIQUE KEY `host` (`host`), ADD KEY `total` (`total`);

--
-- Indexes for table `nv4_en_searchkeys`
--
ALTER TABLE `nv4_en_searchkeys`
 ADD KEY `id` (`id`), ADD KEY `skey` (`skey`), ADD KEY `search_engine` (`search_engine`);

--
-- Indexes for table `nv4_en_siteterms`
--
ALTER TABLE `nv4_en_siteterms`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_en_siteterms_config`
--
ALTER TABLE `nv4_en_siteterms_config`
 ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_en_voting`
--
ALTER TABLE `nv4_en_voting`
 ADD PRIMARY KEY (`vid`), ADD UNIQUE KEY `question` (`question`);

--
-- Indexes for table `nv4_en_voting_rows`
--
ALTER TABLE `nv4_en_voting_rows`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `vid` (`vid`,`title`);

--
-- Indexes for table `nv4_extension_files`
--
ALTER TABLE `nv4_extension_files`
 ADD PRIMARY KEY (`idfile`);

--
-- Indexes for table `nv4_googleplus`
--
ALTER TABLE `nv4_googleplus`
 ADD PRIMARY KEY (`gid`), ADD UNIQUE KEY `idprofile` (`idprofile`);

--
-- Indexes for table `nv4_language`
--
ALTER TABLE `nv4_language`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `filelang` (`idfile`,`lang_key`);

--
-- Indexes for table `nv4_language_file`
--
ALTER TABLE `nv4_language_file`
 ADD PRIMARY KEY (`idfile`), ADD UNIQUE KEY `module` (`module`,`admin_file`);

--
-- Indexes for table `nv4_logs`
--
ALTER TABLE `nv4_logs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_notification`
--
ALTER TABLE `nv4_notification`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_plugin`
--
ALTER TABLE `nv4_plugin`
 ADD PRIMARY KEY (`pid`), ADD UNIQUE KEY `plugin_file` (`plugin_file`);

--
-- Indexes for table `nv4_sessions`
--
ALTER TABLE `nv4_sessions`
 ADD UNIQUE KEY `session_id` (`session_id`), ADD KEY `onl_time` (`onl_time`);

--
-- Indexes for table `nv4_setup`
--
ALTER TABLE `nv4_setup`
 ADD UNIQUE KEY `lang` (`lang`,`module`);

--
-- Indexes for table `nv4_setup_extensions`
--
ALTER TABLE `nv4_setup_extensions`
 ADD UNIQUE KEY `title` (`type`,`title`), ADD KEY `id` (`id`), ADD KEY `type` (`type`);

--
-- Indexes for table `nv4_setup_language`
--
ALTER TABLE `nv4_setup_language`
 ADD PRIMARY KEY (`lang`);

--
-- Indexes for table `nv4_shops_block`
--
ALTER TABLE `nv4_shops_block`
 ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `nv4_shops_block_cat`
--
ALTER TABLE `nv4_shops_block_cat`
 ADD PRIMARY KEY (`bid`), ADD UNIQUE KEY `vi_alias` (`vi_alias`);

--
-- Indexes for table `nv4_shops_carrier`
--
ALTER TABLE `nv4_shops_carrier`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_carrier_config`
--
ALTER TABLE `nv4_shops_carrier_config`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_carrier_config_items`
--
ALTER TABLE `nv4_shops_carrier_config_items`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_carrier_config_location`
--
ALTER TABLE `nv4_shops_carrier_config_location`
 ADD UNIQUE KEY `cid` (`cid`,`lid`);

--
-- Indexes for table `nv4_shops_catalogs`
--
ALTER TABLE `nv4_shops_catalogs`
 ADD PRIMARY KEY (`catid`), ADD UNIQUE KEY `vi_alias` (`vi_alias`), ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_shops_coupons`
--
ALTER TABLE `nv4_shops_coupons`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_coupons_history`
--
ALTER TABLE `nv4_shops_coupons_history`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_coupons_product`
--
ALTER TABLE `nv4_shops_coupons_product`
 ADD UNIQUE KEY `cid` (`cid`,`pid`);

--
-- Indexes for table `nv4_shops_discounts`
--
ALTER TABLE `nv4_shops_discounts`
 ADD PRIMARY KEY (`did`), ADD KEY `begin_time` (`begin_time`,`end_time`);

--
-- Indexes for table `nv4_shops_field`
--
ALTER TABLE `nv4_shops_field`
 ADD PRIMARY KEY (`fid`), ADD UNIQUE KEY `field` (`field`);

--
-- Indexes for table `nv4_shops_field_value_vi`
--
ALTER TABLE `nv4_shops_field_value_vi`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `rows_id` (`rows_id`,`field_id`);

--
-- Indexes for table `nv4_shops_files`
--
ALTER TABLE `nv4_shops_files`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_files_rows`
--
ALTER TABLE `nv4_shops_files_rows`
 ADD UNIQUE KEY `id_files` (`id_files`,`id_rows`);

--
-- Indexes for table `nv4_shops_group`
--
ALTER TABLE `nv4_shops_group`
 ADD PRIMARY KEY (`groupid`), ADD UNIQUE KEY `vi_alias` (`vi_alias`), ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_shops_group_cateid`
--
ALTER TABLE `nv4_shops_group_cateid`
 ADD UNIQUE KEY `groupid` (`groupid`,`cateid`);

--
-- Indexes for table `nv4_shops_group_items`
--
ALTER TABLE `nv4_shops_group_items`
 ADD PRIMARY KEY (`pro_id`,`group_id`), ADD KEY `pro_id` (`pro_id`), ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `nv4_shops_group_quantity`
--
ALTER TABLE `nv4_shops_group_quantity`
 ADD UNIQUE KEY `pro_id` (`pro_id`,`listgroup`);

--
-- Indexes for table `nv4_shops_location`
--
ALTER TABLE `nv4_shops_location`
 ADD PRIMARY KEY (`id`), ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_shops_money_vi`
--
ALTER TABLE `nv4_shops_money_vi`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `nv4_shops_orders`
--
ALTER TABLE `nv4_shops_orders`
 ADD PRIMARY KEY (`order_id`), ADD UNIQUE KEY `order_code` (`order_code`), ADD KEY `user_id` (`user_id`), ADD KEY `order_time` (`order_time`), ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `nv4_shops_orders_id`
--
ALTER TABLE `nv4_shops_orders_id`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `orderid` (`order_id`,`id`);

--
-- Indexes for table `nv4_shops_orders_id_group`
--
ALTER TABLE `nv4_shops_orders_id_group`
 ADD UNIQUE KEY `orderid` (`order_i`,`group_id`);

--
-- Indexes for table `nv4_shops_orders_shipping`
--
ALTER TABLE `nv4_shops_orders_shipping`
 ADD PRIMARY KEY (`id`), ADD KEY `add_time` (`add_time`);

--
-- Indexes for table `nv4_shops_payment`
--
ALTER TABLE `nv4_shops_payment`
 ADD PRIMARY KEY (`payment`);

--
-- Indexes for table `nv4_shops_point`
--
ALTER TABLE `nv4_shops_point`
 ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `nv4_shops_point_history`
--
ALTER TABLE `nv4_shops_point_history`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_review`
--
ALTER TABLE `nv4_shops_review`
 ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `nv4_shops_rows`
--
ALTER TABLE `nv4_shops_rows`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `vi_alias` (`vi_alias`), ADD KEY `listcatid` (`listcatid`), ADD KEY `user_id` (`user_id`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`);

--
-- Indexes for table `nv4_shops_shops`
--
ALTER TABLE `nv4_shops_shops`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_shops_carrier`
--
ALTER TABLE `nv4_shops_shops_carrier`
 ADD UNIQUE KEY `shops_id` (`shops_id`,`carrier_id`);

--
-- Indexes for table `nv4_shops_tabs`
--
ALTER TABLE `nv4_shops_tabs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_tags_id_vi`
--
ALTER TABLE `nv4_shops_tags_id_vi`
 ADD UNIQUE KEY `sid` (`id`,`tid`), ADD KEY `tid` (`tid`);

--
-- Indexes for table `nv4_shops_tags_vi`
--
ALTER TABLE `nv4_shops_tags_vi`
 ADD PRIMARY KEY (`tid`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_shops_template`
--
ALTER TABLE `nv4_shops_template`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_shops_transaction`
--
ALTER TABLE `nv4_shops_transaction`
 ADD PRIMARY KEY (`transaction_id`), ADD KEY `order_id` (`order_id`), ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `nv4_shops_units`
--
ALTER TABLE `nv4_shops_units`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_warehouse`
--
ALTER TABLE `nv4_shops_warehouse`
 ADD PRIMARY KEY (`wid`);

--
-- Indexes for table `nv4_shops_warehouse_logs`
--
ALTER TABLE `nv4_shops_warehouse_logs`
 ADD PRIMARY KEY (`logid`), ADD KEY `wid` (`wid`);

--
-- Indexes for table `nv4_shops_warehouse_logs_group`
--
ALTER TABLE `nv4_shops_warehouse_logs_group`
 ADD PRIMARY KEY (`id`), ADD KEY `logid` (`logid`);

--
-- Indexes for table `nv4_shops_weight_vi`
--
ALTER TABLE `nv4_shops_weight_vi`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `nv4_shops_wishlist`
--
ALTER TABLE `nv4_shops_wishlist`
 ADD PRIMARY KEY (`wid`);

--
-- Indexes for table `nv4_upload_dir`
--
ALTER TABLE `nv4_upload_dir`
 ADD PRIMARY KEY (`did`), ADD UNIQUE KEY `name` (`dirname`);

--
-- Indexes for table `nv4_upload_file`
--
ALTER TABLE `nv4_upload_file`
 ADD UNIQUE KEY `did` (`did`,`title`), ADD KEY `userid` (`userid`), ADD KEY `type` (`type`);

--
-- Indexes for table `nv4_users`
--
ALTER TABLE `nv4_users`
 ADD PRIMARY KEY (`userid`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `md5username` (`md5username`), ADD UNIQUE KEY `email` (`email`), ADD KEY `idsite` (`idsite`);

--
-- Indexes for table `nv4_users_config`
--
ALTER TABLE `nv4_users_config`
 ADD PRIMARY KEY (`config`);

--
-- Indexes for table `nv4_users_field`
--
ALTER TABLE `nv4_users_field`
 ADD PRIMARY KEY (`fid`), ADD UNIQUE KEY `field` (`field`);

--
-- Indexes for table `nv4_users_groups`
--
ALTER TABLE `nv4_users_groups`
 ADD PRIMARY KEY (`group_id`), ADD UNIQUE KEY `ktitle` (`title`,`idsite`), ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `nv4_users_groups_users`
--
ALTER TABLE `nv4_users_groups_users`
 ADD PRIMARY KEY (`group_id`,`userid`);

--
-- Indexes for table `nv4_users_info`
--
ALTER TABLE `nv4_users_info`
 ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `nv4_users_openid`
--
ALTER TABLE `nv4_users_openid`
 ADD PRIMARY KEY (`opid`), ADD KEY `userid` (`userid`), ADD KEY `email` (`email`);

--
-- Indexes for table `nv4_users_question`
--
ALTER TABLE `nv4_users_question`
 ADD PRIMARY KEY (`qid`), ADD UNIQUE KEY `title` (`title`,`lang`);

--
-- Indexes for table `nv4_users_reg`
--
ALTER TABLE `nv4_users_reg`
 ADD PRIMARY KEY (`userid`), ADD UNIQUE KEY `login` (`username`), ADD UNIQUE KEY `md5username` (`md5username`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `nv4_vi_about`
--
ALTER TABLE `nv4_vi_about`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_about_config`
--
ALTER TABLE `nv4_vi_about_config`
 ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_blocks_groups`
--
ALTER TABLE `nv4_vi_blocks_groups`
 ADD PRIMARY KEY (`bid`), ADD KEY `theme` (`theme`), ADD KEY `module` (`module`), ADD KEY `position` (`position`), ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `nv4_vi_blocks_weight`
--
ALTER TABLE `nv4_vi_blocks_weight`
 ADD UNIQUE KEY `bid` (`bid`,`func_id`);

--
-- Indexes for table `nv4_vi_comment`
--
ALTER TABLE `nv4_vi_comment`
 ADD PRIMARY KEY (`cid`), ADD KEY `mod_id` (`module`,`area`,`id`), ADD KEY `post_time` (`post_time`);

--
-- Indexes for table `nv4_vi_cong_trinh_da_thuc_hien_1`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_1`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_cong_trinh_da_thuc_hien_2`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_2`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_cong_trinh_da_thuc_hien_8`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_8`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_cong_trinh_da_thuc_hien_9`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_9`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_cong_trinh_da_thuc_hien_10`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_10`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_cong_trinh_da_thuc_hien_11`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_11`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_cong_trinh_da_thuc_hien_12`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_12`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_cong_trinh_da_thuc_hien_admins`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_admins`
 ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Indexes for table `nv4_vi_cong_trinh_da_thuc_hien_block`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_block`
 ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `nv4_vi_cong_trinh_da_thuc_hien_block_cat`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_block_cat`
 ADD PRIMARY KEY (`bid`), ADD UNIQUE KEY `title` (`title`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_cong_trinh_da_thuc_hien_cat`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_cat`
 ADD PRIMARY KEY (`catid`), ADD UNIQUE KEY `alias` (`alias`), ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_vi_cong_trinh_da_thuc_hien_config_post`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_config_post`
 ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `nv4_vi_cong_trinh_da_thuc_hien_detail`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_detail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_cong_trinh_da_thuc_hien_logs`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_logs`
 ADD PRIMARY KEY (`id`), ADD KEY `sid` (`sid`), ADD KEY `userid` (`userid`);

--
-- Indexes for table `nv4_vi_cong_trinh_da_thuc_hien_rows`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_rows`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_cong_trinh_da_thuc_hien_sources`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_sources`
 ADD PRIMARY KEY (`sourceid`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_vi_cong_trinh_da_thuc_hien_tags`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_tags`
 ADD PRIMARY KEY (`tid`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_cong_trinh_da_thuc_hien_tags_id`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_tags_id`
 ADD UNIQUE KEY `id_tid` (`id`,`tid`), ADD KEY `tid` (`tid`);

--
-- Indexes for table `nv4_vi_cong_trinh_da_thuc_hien_topics`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_topics`
 ADD PRIMARY KEY (`topicid`), ADD UNIQUE KEY `title` (`title`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_contact_department`
--
ALTER TABLE `nv4_vi_contact_department`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `full_name` (`full_name`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_contact_reply`
--
ALTER TABLE `nv4_vi_contact_reply`
 ADD PRIMARY KEY (`rid`), ADD KEY `id` (`id`);

--
-- Indexes for table `nv4_vi_contact_send`
--
ALTER TABLE `nv4_vi_contact_send`
 ADD PRIMARY KEY (`id`), ADD KEY `sender_name` (`sender_name`);

--
-- Indexes for table `nv4_vi_freecontent_blocks`
--
ALTER TABLE `nv4_vi_freecontent_blocks`
 ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `nv4_vi_freecontent_rows`
--
ALTER TABLE `nv4_vi_freecontent_rows`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_menu`
--
ALTER TABLE `nv4_vi_menu`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_vi_menu_rows`
--
ALTER TABLE `nv4_vi_menu_rows`
 ADD PRIMARY KEY (`id`), ADD KEY `parentid` (`parentid`,`mid`);

--
-- Indexes for table `nv4_vi_modfuncs`
--
ALTER TABLE `nv4_vi_modfuncs`
 ADD PRIMARY KEY (`func_id`), ADD UNIQUE KEY `func_name` (`func_name`,`in_module`), ADD UNIQUE KEY `alias` (`alias`,`in_module`);

--
-- Indexes for table `nv4_vi_modthemes`
--
ALTER TABLE `nv4_vi_modthemes`
 ADD UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`);

--
-- Indexes for table `nv4_vi_modules`
--
ALTER TABLE `nv4_vi_modules`
 ADD PRIMARY KEY (`title`);

--
-- Indexes for table `nv4_vi_news_1`
--
ALTER TABLE `nv4_vi_news_1`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_2`
--
ALTER TABLE `nv4_vi_news_2`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_8`
--
ALTER TABLE `nv4_vi_news_8`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_9`
--
ALTER TABLE `nv4_vi_news_9`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_10`
--
ALTER TABLE `nv4_vi_news_10`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_11`
--
ALTER TABLE `nv4_vi_news_11`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_12`
--
ALTER TABLE `nv4_vi_news_12`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_admins`
--
ALTER TABLE `nv4_vi_news_admins`
 ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Indexes for table `nv4_vi_news_block`
--
ALTER TABLE `nv4_vi_news_block`
 ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `nv4_vi_news_block_cat`
--
ALTER TABLE `nv4_vi_news_block_cat`
 ADD PRIMARY KEY (`bid`), ADD UNIQUE KEY `title` (`title`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_news_cat`
--
ALTER TABLE `nv4_vi_news_cat`
 ADD PRIMARY KEY (`catid`), ADD UNIQUE KEY `alias` (`alias`), ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_vi_news_config_post`
--
ALTER TABLE `nv4_vi_news_config_post`
 ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `nv4_vi_news_detail`
--
ALTER TABLE `nv4_vi_news_detail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_news_logs`
--
ALTER TABLE `nv4_vi_news_logs`
 ADD PRIMARY KEY (`id`), ADD KEY `sid` (`sid`), ADD KEY `userid` (`userid`);

--
-- Indexes for table `nv4_vi_news_rows`
--
ALTER TABLE `nv4_vi_news_rows`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_sources`
--
ALTER TABLE `nv4_vi_news_sources`
 ADD PRIMARY KEY (`sourceid`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_vi_news_tags`
--
ALTER TABLE `nv4_vi_news_tags`
 ADD PRIMARY KEY (`tid`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_news_tags_id`
--
ALTER TABLE `nv4_vi_news_tags_id`
 ADD UNIQUE KEY `id_tid` (`id`,`tid`), ADD KEY `tid` (`tid`);

--
-- Indexes for table `nv4_vi_news_topics`
--
ALTER TABLE `nv4_vi_news_topics`
 ADD PRIMARY KEY (`topicid`), ADD UNIQUE KEY `title` (`title`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_page`
--
ALTER TABLE `nv4_vi_page`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_page_config`
--
ALTER TABLE `nv4_vi_page_config`
 ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_referer_stats`
--
ALTER TABLE `nv4_vi_referer_stats`
 ADD UNIQUE KEY `host` (`host`), ADD KEY `total` (`total`);

--
-- Indexes for table `nv4_vi_searchkeys`
--
ALTER TABLE `nv4_vi_searchkeys`
 ADD KEY `id` (`id`), ADD KEY `skey` (`skey`), ADD KEY `search_engine` (`search_engine`);

--
-- Indexes for table `nv4_vi_siteterms`
--
ALTER TABLE `nv4_vi_siteterms`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_siteterms_config`
--
ALTER TABLE `nv4_vi_siteterms_config`
 ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_voting`
--
ALTER TABLE `nv4_vi_voting`
 ADD PRIMARY KEY (`vid`), ADD UNIQUE KEY `question` (`question`);

--
-- Indexes for table `nv4_vi_voting_rows`
--
ALTER TABLE `nv4_vi_voting_rows`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `vid` (`vid`,`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nv4_authors_config`
--
ALTER TABLE `nv4_authors_config`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_authors_module`
--
ALTER TABLE `nv4_authors_module`
MODIFY `mid` mediumint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `nv4_banip`
--
ALTER TABLE `nv4_banip`
MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_banners_clients`
--
ALTER TABLE `nv4_banners_clients`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_banners_plans`
--
ALTER TABLE `nv4_banners_plans`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nv4_banners_rows`
--
ALTER TABLE `nv4_banners_rows`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `nv4_cronjobs`
--
ALTER TABLE `nv4_cronjobs`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nv4_en_about`
--
ALTER TABLE `nv4_en_about`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_en_blocks_groups`
--
ALTER TABLE `nv4_en_blocks_groups`
MODIFY `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `nv4_en_comment`
--
ALTER TABLE `nv4_en_comment`
MODIFY `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_en_contact_department`
--
ALTER TABLE `nv4_en_contact_department`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_en_contact_reply`
--
ALTER TABLE `nv4_en_contact_reply`
MODIFY `rid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_en_contact_send`
--
ALTER TABLE `nv4_en_contact_send`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_en_freecontent_blocks`
--
ALTER TABLE `nv4_en_freecontent_blocks`
MODIFY `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_en_freecontent_rows`
--
ALTER TABLE `nv4_en_freecontent_rows`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_en_menu`
--
ALTER TABLE `nv4_en_menu`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_en_menu_rows`
--
ALTER TABLE `nv4_en_menu_rows`
MODIFY `id` mediumint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `nv4_en_modfuncs`
--
ALTER TABLE `nv4_en_modfuncs`
MODIFY `func_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `nv4_en_news_1`
--
ALTER TABLE `nv4_en_news_1`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_en_news_2`
--
ALTER TABLE `nv4_en_news_2`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_en_news_3`
--
ALTER TABLE `nv4_en_news_3`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_en_news_4`
--
ALTER TABLE `nv4_en_news_4`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `nv4_en_news_5`
--
ALTER TABLE `nv4_en_news_5`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_en_news_6`
--
ALTER TABLE `nv4_en_news_6`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_en_news_7`
--
ALTER TABLE `nv4_en_news_7`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nv4_en_news_8`
--
ALTER TABLE `nv4_en_news_8`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_en_news_9`
--
ALTER TABLE `nv4_en_news_9`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_en_news_10`
--
ALTER TABLE `nv4_en_news_10`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_en_news_11`
--
ALTER TABLE `nv4_en_news_11`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_en_news_12`
--
ALTER TABLE `nv4_en_news_12`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nv4_en_news_13`
--
ALTER TABLE `nv4_en_news_13`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_en_news_14`
--
ALTER TABLE `nv4_en_news_14`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_en_news_block_cat`
--
ALTER TABLE `nv4_en_news_block_cat`
MODIFY `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_en_news_cat`
--
ALTER TABLE `nv4_en_news_cat`
MODIFY `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `nv4_en_news_logs`
--
ALTER TABLE `nv4_en_news_logs`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_en_news_rows`
--
ALTER TABLE `nv4_en_news_rows`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `nv4_en_news_sources`
--
ALTER TABLE `nv4_en_news_sources`
MODIFY `sourceid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_en_news_tags`
--
ALTER TABLE `nv4_en_news_tags`
MODIFY `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `nv4_en_news_topics`
--
ALTER TABLE `nv4_en_news_topics`
MODIFY `topicid` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_en_page`
--
ALTER TABLE `nv4_en_page`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_en_siteterms`
--
ALTER TABLE `nv4_en_siteterms`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_en_voting`
--
ALTER TABLE `nv4_en_voting`
MODIFY `vid` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_en_voting_rows`
--
ALTER TABLE `nv4_en_voting_rows`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_extension_files`
--
ALTER TABLE `nv4_extension_files`
MODIFY `idfile` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_googleplus`
--
ALTER TABLE `nv4_googleplus`
MODIFY `gid` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_language`
--
ALTER TABLE `nv4_language`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_language_file`
--
ALTER TABLE `nv4_language_file`
MODIFY `idfile` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_logs`
--
ALTER TABLE `nv4_logs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `nv4_notification`
--
ALTER TABLE `nv4_notification`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_plugin`
--
ALTER TABLE `nv4_plugin`
MODIFY `pid` tinyint(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_shops_block_cat`
--
ALTER TABLE `nv4_shops_block_cat`
MODIFY `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nv4_shops_carrier`
--
ALTER TABLE `nv4_shops_carrier`
MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_carrier_config`
--
ALTER TABLE `nv4_shops_carrier_config`
MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_carrier_config_items`
--
ALTER TABLE `nv4_shops_carrier_config_items`
MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_catalogs`
--
ALTER TABLE `nv4_shops_catalogs`
MODIFY `catid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `nv4_shops_coupons`
--
ALTER TABLE `nv4_shops_coupons`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_coupons_history`
--
ALTER TABLE `nv4_shops_coupons_history`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_discounts`
--
ALTER TABLE `nv4_shops_discounts`
MODIFY `did` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_field`
--
ALTER TABLE `nv4_shops_field`
MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_field_value_vi`
--
ALTER TABLE `nv4_shops_field_value_vi`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_files`
--
ALTER TABLE `nv4_shops_files`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_group`
--
ALTER TABLE `nv4_shops_group`
MODIFY `groupid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `nv4_shops_location`
--
ALTER TABLE `nv4_shops_location`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_orders`
--
ALTER TABLE `nv4_shops_orders`
MODIFY `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_orders_id`
--
ALTER TABLE `nv4_shops_orders_id`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_orders_shipping`
--
ALTER TABLE `nv4_shops_orders_shipping`
MODIFY `id` tinyint(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_point_history`
--
ALTER TABLE `nv4_shops_point_history`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_review`
--
ALTER TABLE `nv4_shops_review`
MODIFY `review_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_rows`
--
ALTER TABLE `nv4_shops_rows`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `nv4_shops_shops`
--
ALTER TABLE `nv4_shops_shops`
MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_tabs`
--
ALTER TABLE `nv4_shops_tabs`
MODIFY `id` int(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nv4_shops_tags_vi`
--
ALTER TABLE `nv4_shops_tags_vi`
MODIFY `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `nv4_shops_template`
--
ALTER TABLE `nv4_shops_template`
MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_transaction`
--
ALTER TABLE `nv4_shops_transaction`
MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_units`
--
ALTER TABLE `nv4_shops_units`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_shops_warehouse`
--
ALTER TABLE `nv4_shops_warehouse`
MODIFY `wid` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `nv4_shops_warehouse_logs`
--
ALTER TABLE `nv4_shops_warehouse_logs`
MODIFY `logid` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `nv4_shops_warehouse_logs_group`
--
ALTER TABLE `nv4_shops_warehouse_logs_group`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_weight_vi`
--
ALTER TABLE `nv4_shops_weight_vi`
MODIFY `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_shops_wishlist`
--
ALTER TABLE `nv4_shops_wishlist`
MODIFY `wid` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_upload_dir`
--
ALTER TABLE `nv4_upload_dir`
MODIFY `did` mediumint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `nv4_users`
--
ALTER TABLE `nv4_users`
MODIFY `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_users_field`
--
ALTER TABLE `nv4_users_field`
MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_users_groups`
--
ALTER TABLE `nv4_users_groups`
MODIFY `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `nv4_users_question`
--
ALTER TABLE `nv4_users_question`
MODIFY `qid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `nv4_users_reg`
--
ALTER TABLE `nv4_users_reg`
MODIFY `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_about`
--
ALTER TABLE `nv4_vi_about`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `nv4_vi_blocks_groups`
--
ALTER TABLE `nv4_vi_blocks_groups`
MODIFY `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `nv4_vi_comment`
--
ALTER TABLE `nv4_vi_comment`
MODIFY `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_cong_trinh_da_thuc_hien_1`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_1`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `nv4_vi_cong_trinh_da_thuc_hien_2`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_2`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `nv4_vi_cong_trinh_da_thuc_hien_8`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_8`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_vi_cong_trinh_da_thuc_hien_9`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_9`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nv4_vi_cong_trinh_da_thuc_hien_10`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_10`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `nv4_vi_cong_trinh_da_thuc_hien_11`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_11`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `nv4_vi_cong_trinh_da_thuc_hien_12`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_12`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `nv4_vi_cong_trinh_da_thuc_hien_block_cat`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_block_cat`
MODIFY `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_vi_cong_trinh_da_thuc_hien_cat`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_cat`
MODIFY `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `nv4_vi_cong_trinh_da_thuc_hien_logs`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_logs`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_cong_trinh_da_thuc_hien_rows`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_rows`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `nv4_vi_cong_trinh_da_thuc_hien_sources`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_sources`
MODIFY `sourceid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `nv4_vi_cong_trinh_da_thuc_hien_tags`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_tags`
MODIFY `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `nv4_vi_cong_trinh_da_thuc_hien_topics`
--
ALTER TABLE `nv4_vi_cong_trinh_da_thuc_hien_topics`
MODIFY `topicid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_vi_contact_department`
--
ALTER TABLE `nv4_vi_contact_department`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_vi_contact_reply`
--
ALTER TABLE `nv4_vi_contact_reply`
MODIFY `rid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_contact_send`
--
ALTER TABLE `nv4_vi_contact_send`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_freecontent_blocks`
--
ALTER TABLE `nv4_vi_freecontent_blocks`
MODIFY `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_vi_freecontent_rows`
--
ALTER TABLE `nv4_vi_freecontent_rows`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `nv4_vi_menu`
--
ALTER TABLE `nv4_vi_menu`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nv4_vi_menu_rows`
--
ALTER TABLE `nv4_vi_menu_rows`
MODIFY `id` mediumint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `nv4_vi_modfuncs`
--
ALTER TABLE `nv4_vi_modfuncs`
MODIFY `func_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `nv4_vi_news_1`
--
ALTER TABLE `nv4_vi_news_1`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `nv4_vi_news_2`
--
ALTER TABLE `nv4_vi_news_2`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `nv4_vi_news_8`
--
ALTER TABLE `nv4_vi_news_8`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_vi_news_9`
--
ALTER TABLE `nv4_vi_news_9`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nv4_vi_news_10`
--
ALTER TABLE `nv4_vi_news_10`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `nv4_vi_news_11`
--
ALTER TABLE `nv4_vi_news_11`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `nv4_vi_news_12`
--
ALTER TABLE `nv4_vi_news_12`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `nv4_vi_news_block_cat`
--
ALTER TABLE `nv4_vi_news_block_cat`
MODIFY `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_vi_news_cat`
--
ALTER TABLE `nv4_vi_news_cat`
MODIFY `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `nv4_vi_news_logs`
--
ALTER TABLE `nv4_vi_news_logs`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_news_rows`
--
ALTER TABLE `nv4_vi_news_rows`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `nv4_vi_news_sources`
--
ALTER TABLE `nv4_vi_news_sources`
MODIFY `sourceid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `nv4_vi_news_tags`
--
ALTER TABLE `nv4_vi_news_tags`
MODIFY `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `nv4_vi_news_topics`
--
ALTER TABLE `nv4_vi_news_topics`
MODIFY `topicid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_vi_page`
--
ALTER TABLE `nv4_vi_page`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_siteterms`
--
ALTER TABLE `nv4_vi_siteterms`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_vi_voting`
--
ALTER TABLE `nv4_vi_voting`
MODIFY `vid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nv4_vi_voting_rows`
--
ALTER TABLE `nv4_vi_voting_rows`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
