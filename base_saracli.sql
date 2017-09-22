-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Сен 22 2017 г., 15:35
-- Версия сервера: 5.6.37
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `saracli`
--

-- --------------------------------------------------------

--
-- Структура таблицы `actual_links`
--

CREATE TABLE `actual_links` (
  `id` int(5) NOT NULL,
  `title` varchar(500) NOT NULL,
  `link` varchar(500) NOT NULL,
  `ordering` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `actual_links`
--

INSERT INTO `actual_links` (`id`, `title`, `link`, `ordering`) VALUES
(2, 'Bakalavr', 'htttp://bakalavr.com', 6),
(4, 'Magistr', 'http://magistr.com', 1),
(56, 'Müəllimlərin işə qəbulu', 'http://miq.edu.az', 7),
(54, 'Xaricdə təhsil', 'http://xaricdetehsil.edu.gov.az', 4),
(52, 'Elektron dərslik portalı', 'http://www.e-derslik.edu.az/site/index.php', 2),
(50, 'Nostrifikasiya', 'https://www.nostrifikasiya.edu.az/frontend', 10),
(48, 'Telefon Məlumat Mərkəzi', 'http://edu.gov.az/az/page/89', 9),
(46, 'SABAH qrupları', 'http://sabah.edu.az/', 8),
(44, 'Onlayn kalkulyator', 'http://edu.gov.az/az/calc', 5),
(58, 'Rayon (şəhər) təhsil şöbələri (idarələri)', 'http://regionlist.edu.gov.az', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `sef` char(255) NOT NULL,
  `img` char(255) DEFAULT NULL,
  `source_url` char(255) DEFAULT NULL,
  `source_name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_datetime` datetime NOT NULL,
  `gallery_id` int(10) UNSIGNED DEFAULT NULL,
  `show_on_main_page` enum('0','1') NOT NULL DEFAULT '0',
  `is_highlighted` enum('0','1') NOT NULL DEFAULT '0',
  `ordering` int(10) UNSIGNED NOT NULL,
  `add_by` int(11) NOT NULL,
  `add_datetime` datetime NOT NULL,
  `mod_by` int(10) UNSIGNED DEFAULT NULL,
  `mod_datetime` datetime DEFAULT NULL,
  `is_published` enum('1','0') NOT NULL DEFAULT '1',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='''keywords'', ''descr'', ''title'', ''short'', ''full''';

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `sef`, `img`, `source_url`, `source_name`, `publish_datetime`, `gallery_id`, `show_on_main_page`, `is_highlighted`, `ordering`, `add_by`, `add_datetime`, `mod_by`, `mod_datetime`, `is_published`, `is_deleted`) VALUES
(1, 'qaydalari-ve-normalarinin-tesdiq-edilmesi-haqqinda-qerar-n_-8', NULL, NULL, NULL, '0000-00-00 00:00:00', 0, '0', '0', 1, 0, '0000-00-00 00:00:00', NULL, NULL, '1', '1'),
(2, 'beden-terbiyesi-ve-idman-haqqinda-azerbaycan-respublikasi-qanununun-tetbiqi-ile-', NULL, NULL, NULL, '2016-04-28 17:55:00', 0, '0', '0', 2, 1, '2016-04-28 18:12:20', NULL, NULL, '1', '1'),
(3, 'mayjaiavms', NULL, NULL, NULL, '2016-04-29 13:10:00', 0, '0', '0', 5, 1, '2016-04-29 13:53:49', NULL, NULL, '0', '1'),
(4, 'aprelin-29-da-yaz-heyeti-layihesi-cherchivesinde-tehsil-muessiselerinde-imecilik', NULL, NULL, NULL, '2016-02-29 16:45:00', 0, '0', '0', 11, 1, '2016-04-29 16:55:11', 1, '2016-05-02 12:31:36', '1', '1'),
(5, 'qurban-vypil-dvesti-qramm-i-uqnal-stroitelnyj-kran', NULL, NULL, NULL, '2016-04-05 19:10:00', 0, '0', '0', 4, 1, '2016-04-29 19:13:57', NULL, NULL, '0', '1'),
(6, 'some-silly-title', NULL, NULL, NULL, '2016-05-02 12:30:00', 0, '0', '0', 6, 1, '2016-05-02 12:32:11', NULL, NULL, '0', '1'),
(7, 'test-opublikovannostineopublikovannosti-jazykovyh-versij', NULL, NULL, NULL, '2016-05-02 13:30:00', 0, '0', '0', 7, 1, '2016-05-02 13:37:58', 1, '2016-05-02 14:01:34', '1', '1'),
(8, 'yadda-saxlanilmamish-deyishiklikler-itirilecek.-davam-etmek-istediyinize-eminsin', NULL, NULL, NULL, '2016-05-03 15:30:00', 0, '0', '0', 8, 1, '2016-05-03 15:38:45', 1, '2016-05-03 15:56:43', '1', '1'),
(9, 'bvfsbngfsn', NULL, NULL, NULL, '2016-05-03 19:25:00', 0, '0', '0', 3, 1, '2016-05-03 19:27:07', NULL, NULL, '1', '1'),
(10, 'gbfsnd-gfnd-g-dnhtg-dngtd-ngfvndn-gbdn-gf-ndg-nfd-b', 'wp_20160427_08_41_43_pro.jpg', NULL, NULL, '2016-05-03 19:35:00', 0, '0', '0', 9, 1, '2016-05-03 19:35:46', 1, '2016-05-06 12:46:30', '1', '1'),
(11, 'bgfvabfdabfdb-afdab-fdab-fda', NULL, NULL, NULL, '2016-05-09 15:20:00', 0, '0', '0', 12, 1, '2016-05-09 15:25:13', NULL, NULL, '1', '1'),
(12, 'arzularina-chatmaq-uchun-dayanmadan-chalishsinlar---ugur-formulu', NULL, NULL, NULL, '2016-05-13 13:30:00', NULL, '0', '0', 13, 1, '2016-05-13 16:32:33', NULL, NULL, '1', '1'),
(13, 'arzularina-chatmaq-uchun-dayanmadan-chalishsinlar---ugur-formulu', 'wp_20160427_08_41_43_pro_680b70ccafa047d3acd0c542a1acdd5f.jpg', NULL, NULL, '2016-05-13 13:30:00', 9, '0', '0', 18, 1, '2016-05-13 16:33:01', 1, '2016-05-17 17:39:51', '1', '1'),
(14, 'dostluq-kuboku-2016-futbol-turniri-kechirilib', NULL, NULL, NULL, '2016-05-17 11:45:00', 1, '0', '0', 17, 1, '2016-05-17 12:07:11', 1, '2016-06-02 15:39:21', '1', '1'),
(15, 'mekteblilerimiz-33-cu-balkan-riyaziyyat-olimpiadasindan-medalla-qayidiblar', NULL, NULL, NULL, '2016-05-17 13:35:00', 0, '1', '1', 10, 1, '2016-05-17 16:26:16', 1, '2016-05-25 14:19:53', '1', '1'),
(16, 'microsoft-imagine-cup-2016-musabiqesinin-milli-finalinin-qalibleri-mueyyenleshib', NULL, NULL, NULL, '2016-05-17 16:45:00', 0, '0', '1', 16, 1, '2016-05-17 16:47:38', 1, '2016-05-25 14:20:30', '1', '1'),
(17, 'sunny\'s-nights', NULL, 'http://www.randomhousebooks.com/books/175244/', 'Random House', '2016-05-24 15:50:00', 0, '0', '0', 14, 1, '2016-05-24 15:57:26', 1, '2016-05-24 16:20:15', '0', '1'),
(18, 'doktorantlarin-ve-genc-tedqiqatchilarin-respublika-elmi-konfransi', NULL, NULL, NULL, '2016-05-25 12:35:00', 0, '1', '0', 15, 1, '2016-05-25 12:38:49', 1, '2016-05-25 14:20:12', '1', '1'),
(19, 'community.az-portali-onlayn-musabiqelerin-qaliblerini-teltif-edib', '04-25.05.16-8.jpg', NULL, NULL, '2016-05-26 13:50:00', 0, '1', '1', 20, 13, '2016-05-26 13:09:24', 13, '2016-05-26 14:56:10', '0', '0'),
(20, 'masalli-celilabad-ve-yardimli-rayonlarinin-tehsil-ishchileri-ile-gorush', '03-26.05.16-1.jpg', NULL, NULL, '2016-05-27 15:00:00', 0, '0', '0', 21, 13, '2016-05-27 15:01:55', 1, '2016-05-27 15:03:17', '0', '1'),
(21, '10455-tel886-2-28856168-fax886-2-28862382-ie10firefoxchromesafari', 'firefox.jpg', NULL, NULL, '2016-06-02 15:35:00', 0, '0', '0', 19, 1, '2016-06-02 15:42:02', 1, '2016-08-14 16:03:22', '0', '1'),
(22, 'azerbaycan-numayende-heyeti-koreyada-seferdedir2', NULL, NULL, NULL, '2016-06-16 11:15:00', 0, '0', '0', 22, 1, '2016-06-16 11:16:29', 1, '2016-06-16 11:17:55', '1', '1'),
(23, 'mezunlar-akademik-fealiyyetde', '01-27.12.16-1.jpg', NULL, NULL, '2016-12-18 00:50:00', 0, '0', '0', 23, 1, '2016-12-18 00:58:42', 21, '2017-07-04 13:15:50', '1', '0'),
(24, 'qar-qizin-nagili-adli-yeni-il-shenliyi-kechirilir', '03-30.12.16-4_73b39bbeffbcd2fa2317c8dca4c34b70.jpg', NULL, NULL, '2016-12-29 21:15:00', 0, '0', '0', 24, 1, '2016-12-31 22:43:42', 21, '2017-07-04 13:06:01', '1', '0'),
(25, 'stenfordda-tehsil-alan-telebemiz-karyeramin-izi-ile-istenilen-yere-gedeceyem-ugu', NULL, 'http://1news.az/article,12/', '1news.az', '2017-01-15 00:15:00', 1, '0', '0', 25, 1, '2017-01-15 00:22:18', NULL, NULL, '1', '1'),
(26, 'stenfordda-tehsil-alan-telebemiz-karyeramin-izi-ile-istenilen-yere-gedeceyem-ugu', NULL, 'http://1news.az/article,12/', '1news.az', '2017-01-15 00:15:00', 1, '0', '0', 26, 1, '2017-01-15 00:22:44', NULL, NULL, '1', '1'),
(27, 'borchali', 'tab_content_5d274264b6136044a28c0e04122be990.jpg', NULL, NULL, '2017-01-15 00:25:00', 0, '0', '0', 27, 1, '2017-01-15 00:30:24', 21, '2017-08-31 14:40:19', '1', '0'),
(28, 'keywordarticletest', NULL, 'http://keywordarticletest.com', 'keywordarticletest', '2017-04-11 16:35:00', 0, '0', '0', 28, 21, '2017-04-11 16:42:30', NULL, NULL, '1', '1'),
(30, 'keywordarticletest', NULL, 'http://keywordarticletest.com', 'keywordarticletest', '2017-04-11 16:35:00', 0, '0', '0', 29, 21, '2017-04-11 16:44:16', NULL, NULL, '1', '1'),
(32, 'mytestarticle', NULL, 'http://mytestarticle.com', 'mytestarticle', '2017-04-11 16:50:00', 0, '0', '0', 30, 21, '2017-04-11 16:53:23', NULL, NULL, '1', '1'),
(33, 'newmeqale', NULL, NULL, NULL, '2017-07-01 13:10:00', 0, '0', '0', 31, 21, '2017-07-01 13:14:40', NULL, NULL, '1', '1'),
(34, 'new-meqale', 'bQr3H3ToW-Q', NULL, NULL, '2017-07-01 13:10:00', 0, '0', '0', 32, 21, '2017-07-01 13:30:00', 21, '2017-08-30 12:33:07', '1', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `articles_cats_rel`
--

CREATE TABLE `articles_cats_rel` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles_cats_rel`
--

INSERT INTO `articles_cats_rel` (`id`, `article_id`, `category_id`) VALUES
(1, 13, 20),
(5, 13, 21),
(6, 19, 29),
(7, 20, 29),
(9, 25, 18),
(10, 25, 21),
(11, 26, 18),
(12, 26, 21),
(16, 28, 19),
(18, 30, 19),
(20, 32, 19);

-- --------------------------------------------------------

--
-- Структура таблицы `articles_keywords`
--

CREATE TABLE `articles_keywords` (
  `id` int(5) NOT NULL,
  `article_id` int(5) NOT NULL,
  `keyword_id` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles_keywords`
--

INSERT INTO `articles_keywords` (`id`, `article_id`, `keyword_id`) VALUES
(34, 27, 4),
(32, 27, 2),
(36, 27, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `banners`
--

CREATE TABLE `banners` (
  `id` int(3) NOT NULL,
  `img` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `ordering` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `banners`
--

INSERT INTO `banners` (`id`, `img`, `link`, `ordering`) VALUES
(11, 'banner_example_f2b8f7f9dea8b4d0a8748bb2520c4c0e.png', 'http://google.az', 3),
(9, 'banner_example.png', 'http://google.il', 1),
(10, 'banner_example_e17f9b1d6cef9ffcf910db83a10a2cce.png', 'http://google.ru', 2),
(12, 'banner_example_0b84e12249a4c37582e2a7f1c23fab0e.png', 'http://google.it', 4),
(13, 'banner_example_95134a4e5d87995947c323779b76d713.png', 'http://google.com', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_languages`
--

CREATE TABLE `cms_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_dir` char(2) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `language_name` char(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cms_languages`
--

INSERT INTO `cms_languages` (`id`, `language_dir`, `language_name`) VALUES
(1, 'az', 'Azərbaycan'),
(2, 'ru', 'Русский'),
(3, 'en', 'English');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_log`
--

CREATE TABLE `cms_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `cms_user_id` int(10) UNSIGNED NOT NULL,
  `subj_table` char(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `subj_id` int(10) UNSIGNED NOT NULL,
  `action` char(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `descr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `cms_log`
--

INSERT INTO `cms_log` (`id`, `cms_user_id`, `subj_table`, `subj_id`, `action`, `descr`, `reg_date`) VALUES
(1, 1, 'galleries', 10, 'add', 'Gallery album added by admin Super Admin', '2016-05-27 13:19:44'),
(2, 1, 'galleries', 10, 'edit', 'Gallery album modified by admin Super Admin', '2016-05-27 13:20:37'),
(3, 1, 'galleries', 10, 'delete', 'Gallery album moved to recycle bin by admin Super Admin', '2016-05-27 13:21:02'),
(4, 1, 'galleries', 9, 'edit', 'Gallery album published by admin Super Admin', '2016-05-27 14:50:50'),
(5, 1, 'articles', 17, 'edit', 'Article unpublished by admin Super Admin', '2016-05-27 14:59:11'),
(6, 13, 'articles', 20, 'add', 'Article added by admin Forsaken Eddie', '2016-05-27 15:01:55'),
(7, 1, 'articles', 20, 'edit', 'Article modified by admin Super Admin', '2016-05-27 15:03:17'),
(8, 13, 'articles', 20, 'edit', 'Article published by admin Forsaken Eddie', '2016-05-27 15:05:51'),
(9, 1, 'cms_users', 14, 'add', 'User Grizgoldberg Eleonora added by admin Super Admin', '2016-05-27 16:38:34'),
(10, 1, 'cms_users', 14, 'edit', 'User Grizgoldberg Eleonora modified by admin Super Admin', '2016-05-27 16:38:55'),
(11, 1, 'cms_users', 14, 'edit', 'User blocked by admin Super Admin', '2016-05-27 16:39:09'),
(12, 1, 'cms_users', 14, 'edit', 'User Grizgoldberg Eleonora modified by admin Super Admin', '2016-05-27 16:39:19'),
(13, 1, 'cms_users', 14, 'sections_reassign', 'User`s allowed sections reassigned by admin Super Admin', '2016-05-27 16:39:31'),
(14, 1, 'cms_users', 14, 'erase', 'User erased by admin Super Admin', '2016-05-27 16:43:42'),
(15, 1, 'site_languages', 6, 'edit', 'Site language zh published by admin Super Admin', '2016-05-27 17:20:21'),
(16, 1, 'site_languages', 2, 'edit', 'Site language ru translations file saved by admin Super Admin', '2016-05-27 17:34:48'),
(17, 1, 'site_languages', 6, 'edit', 'Site language zh unpublished by admin Super Admin', '2016-05-27 17:35:25'),
(18, 1, 'site_languages', 6, 'erase', 'Site language zh and translations file erased by admin Super Admin', '2016-05-27 17:40:44'),
(19, 1, 'site_languages', 7, 'add', 'New site language ge added by admin Super Admin', '2016-05-27 17:42:39'),
(20, 1, 'site_languages', 1, 'edit', 'Site language az translations file saved by admin Super Admin', '2016-05-27 17:42:39'),
(21, 1, 'site_languages', 1, 'edit', 'Site language az translations file saved by admin Super Admin', '2016-05-27 18:16:46'),
(22, 1, 'site_languages', 2, 'edit', 'Site language ru translations file saved by admin Super Admin', '2016-05-27 18:17:58'),
(23, 1, 'menu', 30, 'add', 'Menu item added by admin Super Admin', '2016-05-27 18:42:54'),
(24, 1, 'menu', 30, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2016-05-27 18:43:03'),
(25, 1, 'menu', 29, 'edit', 'Menu item modified by admin Super Admin', '2016-05-27 18:44:02'),
(26, 1, 'galleries', 1, 'edit', 'Gallery album unpublished by admin Super Admin', '2016-05-31 11:14:28'),
(27, 1, 'debates', 1, 'add', 'Poll added by admin Super Admin', '2016-06-01 12:37:08'),
(28, 1, 'debates', 1, 'edit', 'Poll modified by admin Super Admin', '2016-06-01 13:45:13'),
(29, 1, 'debates', 1, 'edit', 'Poll modified by admin Super Admin', '2016-06-01 13:46:04'),
(30, 1, 'debates', 1, 'edit', 'Poll modified by admin Super Admin', '2016-06-01 14:21:55'),
(31, 1, 'debates', 1, 'edit', 'Poll modified by admin Super Admin', '2016-06-01 14:24:12'),
(32, 1, 'debates', 2, 'add', 'Poll added by admin Super Admin', '2016-06-01 14:29:36'),
(33, 1, 'articles', 2, 'edit', 'Article published by admin Super Admin', '2016-06-01 14:35:50'),
(34, 1, 'debates', 2, 'edit', 'Poll published by admin Super Admin', '2016-06-01 14:48:28'),
(35, 1, 'debates', 3, 'add', 'Poll added by admin Super Admin', '2016-06-01 14:55:54'),
(36, 1, 'debates', 3, 'delete', 'Poll moved to recycle bin by admin Super Admin', '2016-06-01 14:56:03'),
(37, 1, 'articles', 14, 'edit', 'Article modified by admin Super Admin', '2016-06-02 15:39:21'),
(38, 1, 'articles', 21, 'add', 'Article added by admin Super Admin', '2016-06-02 15:42:02'),
(39, 1, 'articles', 21, 'edit', 'Article modified by admin Super Admin', '2016-06-02 15:43:36'),
(40, 1, 'cms_users', 14, 'add', 'User Adminin Müavini added by admin Super Admin', '2016-06-06 17:03:56'),
(41, 1, 'site_users', 14, 'edit', 'Site user blocked by admin Super Admin', '2016-06-09 11:47:34'),
(42, 1, 'site_users', 15, 'erase', 'Site user erased by admin Super Admin', '2016-06-09 12:49:26'),
(43, 1, 'comments', 5, 'edit', 'Comment is published by admin Super Admin', '2016-06-09 19:00:05'),
(44, 1, 'comments', 5, 'edit', 'Comment is unpublished by admin Super Admin', '2016-06-09 19:03:00'),
(45, 1, 'comments', 5, 'edit', 'Comment is published by admin Super Admin', '2016-06-09 19:03:02'),
(46, 1, 'comments', 6, 'erase', 'Comment erased by admin Super Admin', '2016-06-10 11:31:55'),
(47, 1, 'site_users', 14, 'edit', 'Site user unblocked by admin Super Admin', '2016-06-14 19:00:34'),
(48, 1, 'site_users', 14, 'edit', 'Site user blocked by admin Super Admin', '2016-06-14 19:00:35'),
(49, 1, 'cms_users', 1, 'edit', 'User Super Admin modified by admin Super Admin', '2016-06-15 17:34:45'),
(50, 1, 'cms_users', 1, 'edit', 'User Super Admin modified by admin Super Admin', '2016-06-15 17:37:04'),
(51, 1, 'comments', 3, 'edit', 'Comment modified by admin Super Admin', '2016-06-15 19:06:26'),
(52, 1, 'comments', 3, 'edit', 'Comment modified by admin Super Admin', '2016-06-15 19:06:37'),
(53, 1, 'comments', 3, 'edit', 'Comment modified by admin Super Admin', '2016-06-15 19:06:51'),
(54, 1, 'comments', 3, 'edit', 'Comment modified by admin Super Admin', '2016-06-15 19:07:07'),
(55, 1, 'comments', 3, 'edit', 'Comment modified by admin Super Admin', '2016-06-15 19:07:10'),
(56, 1, 'comments', 3, 'edit', 'Comment modified by admin Super Admin', '2016-06-15 19:07:13'),
(57, 1, 'articles', 22, 'add', 'Article added by admin Super Admin', '2016-06-16 11:16:29'),
(58, 1, 'articles', 22, 'edit', 'Article modified by admin Super Admin', '2016-06-16 11:17:22'),
(59, 1, 'articles', 22, 'edit', 'Article modified by admin Super Admin', '2016-06-16 11:17:36'),
(60, 1, 'articles', 22, 'edit', 'Article modified by admin Super Admin', '2016-06-16 11:17:55'),
(61, 1, 'articles', 22, 'delete', 'Article moved to recycle bin by admin Super Admin', '2016-06-16 11:20:09'),
(62, 1, 'comments', 1, 'view', 'Comment inspekted by admin Super Admin', '2016-06-16 12:27:06'),
(63, 1, 'comments', 5, 'edit', 'Comment is unpublished by admin Super Admin', '2016-06-16 12:28:39'),
(64, 1, 'comments', 5, 'edit', 'Comment modified by admin Super Admin', '2016-06-16 12:28:55'),
(65, 1, 'comments', 5, 'edit', 'Comment modified by admin Super Admin', '2016-06-16 12:29:07'),
(66, 1, 'comments', 5, 'edit', 'Comment modified by admin Super Admin', '2016-06-16 12:29:33'),
(67, 1, 'comments', 3, 'view', 'Comment inspekted by admin Super Admin', '2016-06-17 11:08:36'),
(68, 1, 'complaints', 3, 'answered_complaint', 'User`s #12 Белоусов Валентин complaint is answered by admin Super Admin', '2016-07-06 17:26:01'),
(69, 1, 'complaints', 3, 'answered_complaint', 'User`s #12 Белоусов Валентин complaint is answered by admin Super Admin', '2016-07-06 17:26:24'),
(70, 1, 'complaints', 6, 'answered_complaint', 'User`s #12 Белоусов Валентин complaint is answered by admin Super Admin', '2016-07-06 17:45:11'),
(71, 1, 'comments', 4, 'view', 'Comment inspected by admin Super Admin', '2016-07-18 17:09:01'),
(72, 1, 'articles', 20, 'edit', 'Article unpublished by admin Super Admin', '2016-07-19 18:42:12'),
(73, 1, 'articles', 20, 'edit', 'Article published by admin Super Admin', '2016-07-19 18:42:17'),
(74, 1, 'galleries', 1, 'edit', 'Gallery album published by admin Super Admin', '2016-07-19 18:43:44'),
(75, 1, 'galleries', 1, 'edit', 'Gallery album unpublished by admin Super Admin', '2016-07-19 18:43:55'),
(76, 1, 'site_users', 14, 'edit', 'Site user unblocked by admin Super Admin', '2016-07-19 18:47:09'),
(77, 1, 'site_users', 14, 'edit', 'Site user blocked by admin Super Admin', '2016-07-19 18:47:11'),
(78, 1, 'comments', 5, 'edit', 'Comment is unpublished by admin Super Admin', '2016-07-19 18:47:51'),
(79, 1, 'comments', 5, 'edit', 'Comment is published by admin Super Admin', '2016-07-19 18:47:52'),
(80, 1, 'cms_users', 15, 'add', 'User asif added by admin Super Admin', '2016-07-19 18:57:47'),
(81, 1, 'cms_users', 15, 'edit', 'User blocked by admin Super Admin', '2016-07-20 10:46:54'),
(82, 1, 'cms_users', 15, 'edit', 'User unblocked by admin Super Admin', '2016-07-20 10:46:56'),
(83, 1, 'articles', 21, 'edit', 'Article modified by admin Super Admin', '2016-07-20 11:03:17'),
(84, 1, 'cms_users', 1, 'edit', 'User Super Admin modified by admin Super Admin', '2016-07-21 18:46:54'),
(85, 1, 'articles', 21, 'edit', 'Article modified by admin Super Admin', '2016-08-14 16:03:22'),
(86, 1, 'cms_users', 18, 'add', 'User  added by admin Super Admin', '2016-09-14 22:34:18'),
(87, 1, 'cms_users', 19, 'add', 'User Merovingen Franchaise added by admin Super Admin', '2016-09-14 22:47:45'),
(88, 1, 'cms_users', 20, 'add', 'User nhgfdsngf added by admin Super Admin ?', '2016-10-18 22:53:13'),
(89, 1, 'cms_users', 20, 'erase', 'User erased by admin Super Admin ?', '2016-10-18 23:23:02'),
(90, 1, 'cms_users', 17, 'edit', 'User Obama Barack Mustafa Ibrahim ex modified by admin Super Admin ?', '2016-11-16 00:01:47'),
(91, 1, 'cms_users', 17, 'edit', 'User Obama Barack Mustafa Ibrahim ex modified by admin Super Admin ?', '2016-11-16 00:01:58'),
(92, 1, 'cms_users', 17, 'edit', 'User Obama Barack Mustafa Ibrahim ex modified by admin Super Admin ?', '2016-11-16 00:02:06'),
(93, 1, 'cms_users', 17, 'edit', 'User Obama Barack Mustafa Ibrahim ex modified by admin Super Admin ?', '2016-11-16 00:02:13'),
(94, 1, 'cms_users', 17, 'edit', 'User Obama Barack Mustafa Ibrahim ex modified by admin Super Admin ?', '2016-11-16 00:03:06'),
(95, 1, 'cms_users', 17, 'edit', 'User Obama Barack Mustafa Ibrahim ex modified by admin Super Admin ?', '2016-11-16 00:04:37'),
(96, 1, 'cms_users', 17, 'edit', 'User Obama Barack Mustafa Ibrahim ex modified by admin Super Admin ?', '2016-11-16 00:05:07'),
(97, 1, 'cms_users', 17, 'edit', 'User  modified by admin Super Admin ?', '2016-11-16 00:06:14'),
(98, 1, 'cms_users', 17, 'edit', 'User  modified by admin Super Admin ?', '2016-11-16 00:07:34'),
(99, 1, 'cms_users', 17, 'edit', 'User Obama Barack Mustafa Ibrahim ex modified by admin Super Admin ?', '2016-11-16 00:09:19'),
(100, 1, 'cms_users', 17, 'edit', 'User Obama Barack Mustafa Ibrahim ex modified by admin Super Admin ?', '2016-11-16 00:11:41'),
(101, 1, 'cms_users', 17, 'edit', 'User Obama Barack Mustafa Ibrahim ex modified by admin Super Admin ?', '2016-11-16 00:13:11'),
(102, 1, 'site_users', 4, 'edit', 'Site user unblocked by admin Super Admin ?', '2016-11-16 23:03:34'),
(103, 1, 'site_users', 3, 'edit', 'Site user blocked by admin Super Admin ?', '2016-11-16 23:03:36'),
(104, 1, 'site_users', 2, 'edit', 'Site user blocked by admin Super Admin ?', '2016-11-16 23:03:37'),
(105, 1, 'cms_users', 1, 'edit', 'User Super Admin ????????? modified by admin Super Admin ?', '2016-11-16 23:38:17'),
(106, 1, 'cms_users', 19, 'edit', 'User blocked by admin Super Admin ?', '2016-11-16 23:51:56'),
(107, 1, 'site_users', 4, 'erase', 'Site user erased by admin Super Admin ?', '2016-11-17 00:06:40'),
(108, 1, 'site_users', 2, 'edit', 'Site user unblocked by admin Super Admin ?', '2016-11-17 00:06:51'),
(109, 1, 'site_users', 1, 'edit', 'Site user blocked by admin Super Admin ?', '2016-11-17 00:06:53'),
(110, 1, 'cms_users', 1, 'edit', 'User Super Admin ? modified by admin Super Admin ?', '2016-11-17 00:09:20'),
(111, 1, 'comments', 6, 'edit', 'Comment is published by admin Super Admin ?', '2016-12-04 01:30:48'),
(112, 1, 'comments', 6, 'edit', 'Comment is unpublished by admin Super Admin ?', '2016-12-04 01:30:53'),
(113, 1, 'comments', 6, 'edit', 'Comment is published by admin Super Admin ?', '2016-12-04 01:30:58'),
(114, 1, 'comments', 6, 'edit', 'Comment is unpublished by admin Super Admin ?', '2016-12-04 01:30:58'),
(115, 1, 'comments', 6, 'edit', 'Comment is published by admin Super Admin ?', '2016-12-04 01:30:58'),
(116, 1, 'comments', 6, 'edit', 'Comment is unpublished by admin Super Admin ?', '2016-12-04 01:30:58'),
(117, 1, 'comments', 6, 'edit', 'Comment is published by admin Super Admin ?', '2016-12-04 01:30:58'),
(118, 1, 'comments', 6, 'edit', 'Comment is unpublished by admin Super Admin ?', '2016-12-04 01:30:59'),
(119, 1, 'comments', 6, 'edit', 'Comment is published by admin Super Admin ?', '2016-12-04 01:30:59'),
(120, 1, 'comments', 6, 'edit', 'Comment is unpublished by admin Super Admin ?', '2016-12-04 01:30:59'),
(121, 1, 'comments', 6, 'edit', 'Comment is published by admin Super Admin ?', '2016-12-04 01:30:59'),
(122, 1, 'comments', 6, 'edit', 'Comment is unpublished by admin Super Admin ?', '2016-12-04 01:31:00'),
(123, 1, 'comments', 6, 'edit', 'Comment is published by admin Super Admin ?', '2016-12-04 01:31:00'),
(124, 1, 'comments', 6, 'edit', 'Comment is unpublished by admin Super Admin ?', '2016-12-04 01:31:00'),
(125, 1, 'comments', 6, 'edit', 'Comment is published by admin Super Admin ?', '2016-12-04 01:31:05'),
(126, 1, 'comments', 6, 'erase', 'Comment erased by admin Super Admin ?', '2016-12-04 01:34:39'),
(127, 1, 'comments', 7, 'delete', 'Comment moved to recycle bin by admin Super Admin ?', '2016-12-04 01:55:17'),
(128, 1, 'comments', 7, 'delete', 'Comment moved to recycle bin by admin Super Admin ?', '2016-12-04 02:01:19'),
(129, 1, 'comments', 3, 'edit', 'Comment modified by admin Super Admin ?', '2016-12-04 13:05:50'),
(130, 1, 'comments', 3, 'edit', 'Comment modified by admin Super Admin ?', '2016-12-04 13:06:38'),
(131, 1, 'comments', 3, 'edit', 'Comment modified by admin Super Admin ?', '2016-12-04 13:09:08'),
(132, 1, 'comments', 3, 'edit', 'Comment modified by admin Super Admin ?', '2016-12-04 13:09:19'),
(133, 1, 'comments', 3, 'edit', 'Comment modified by admin Super Admin ?', '2016-12-04 13:10:18'),
(134, 1, 'comments', 3, 'edit', 'Comment modified by admin Super Admin ?', '2016-12-04 13:10:22'),
(135, 1, 'comments', 3, 'edit', 'Comment modified by admin Super Admin ?', '2016-12-04 13:10:24'),
(136, 1, 'articles', 21, 'edit', 'Article unpublished by admin Super Admin ?', '2016-12-04 19:48:55'),
(137, 1, 'articles', 13, 'edit', 'Article published by admin Super Admin ?', '2016-12-04 19:49:11'),
(138, 1, 'articles', 21, 'delete', 'Article moved to recycle bin by admin Super Admin ?', '2016-12-04 23:15:27'),
(139, 1, 'articles', 9, 'delete', 'Article moved to recycle bin by admin Super Admin ?', '2016-12-04 23:17:22'),
(140, 1, 'cms_users', 1, 'edit', 'User Super Admin ? modified by admin Super Admin ?', '2016-12-17 22:04:46'),
(141, 1, 'cms_users', 1, 'edit', 'User Super Admin ? modified by admin Super Admin ?', '2016-12-18 00:40:48'),
(142, 1, 'cms_users', 1, 'edit', 'User Super Admin ? modified by admin Super Admin ?', '2016-12-18 00:40:54'),
(143, 1, 'cms_users', 1, 'edit', 'User Super Admin ? modified by admin Super Admin ?', '2016-12-18 00:43:49'),
(144, 1, 'cms_users', 1, 'edit', 'User Super Admin ? modified by admin Super Admin ?', '2016-12-18 00:44:53'),
(145, 1, 'cms_users', 1, 'edit', 'User Super Admin ? modified by admin Super Admin ?', '2016-12-18 00:44:58'),
(146, 1, 'cms_users', 1, 'edit', 'User Super Admin ? modified by admin Super Admin ?', '2016-12-18 00:45:04'),
(147, 1, 'articles', 23, 'add', 'Article added by admin Super Admin ?', '2016-12-18 00:58:42'),
(148, 1, 'articles', 24, 'add', 'Article added by admin Super Admin ?', '2016-12-31 22:43:42'),
(149, 1, 'articles', 24, 'edit', 'Article modified by admin Super Admin ?', '2017-01-04 00:04:50'),
(150, 1, 'articles', 24, 'edit', 'Article modified by admin Super Admin ?', '2017-01-04 00:06:12'),
(151, 1, 'articles', 24, 'edit', 'Article modified by admin Super Admin ?', '2017-01-04 00:06:29'),
(152, 1, 'articles', 24, 'edit', 'Article modified by admin Super Admin ?', '2017-01-04 00:06:34'),
(153, 1, 'articles', 24, 'edit', 'Article modified by admin Super Admin ?', '2017-01-04 00:06:39'),
(154, 1, 'cms_users', 1, 'edit', 'User Super Admin ? modified by admin Super Admin ?', '2017-01-04 00:07:54'),
(155, 1, 'cms_users', 1, 'edit', 'User Super Admin ? modified by admin Super Admin ?', '2017-01-04 00:16:27'),
(156, 1, 'articles', 23, 'edit', 'Article modified by admin Super Admin ?', '2017-01-04 00:19:10'),
(157, 1, 'articles', 20, 'edit', 'Article unpublished by admin Super Admin ?', '2017-01-04 00:21:55'),
(158, 1, 'articles', 19, 'edit', 'Article unpublished by admin Super Admin ?', '2017-01-04 00:21:56'),
(159, 1, 'articles', 24, 'edit', 'Article modified by admin Super Admin ?', '2017-01-15 00:05:14'),
(160, 1, 'articles', 24, 'edit', 'Article modified by admin Super Admin ?', '2017-01-15 00:11:10'),
(161, 1, 'articles', 24, 'edit', 'Article modified by admin Super Admin ?', '2017-01-15 00:11:46'),
(162, 1, 'articles', 11, 'delete', 'Article moved to recycle bin by admin Super Admin ?', '2017-01-15 00:19:48'),
(163, 1, 'articles', 25, 'add', 'Article added by admin Super Admin ?', '2017-01-15 00:22:18'),
(164, 1, 'articles', 26, 'add', 'Article added by admin Super Admin ?', '2017-01-15 00:22:44'),
(165, 1, 'articles', 25, 'delete', 'Article moved to recycle bin by admin Super Admin ?', '2017-01-15 00:27:37'),
(166, 1, 'articles', 26, 'delete', 'Article moved to recycle bin by admin Super Admin ?', '2017-01-15 00:27:43'),
(167, 1, 'articles', 27, 'add', 'Article added by admin Super Admin ?', '2017-01-15 00:30:24'),
(168, 1, 'articles', 3, 'delete', 'Article moved to recycle bin by admin Super Admin ?', '2017-01-15 01:26:25'),
(169, 1, 'articles', 6, 'delete', 'Article moved to recycle bin by admin Super Admin ?', '2017-01-15 18:22:01'),
(170, 1, 'galleries', 1, 'edit', 'Gallery album published by admin Super Admin ?', '2017-01-18 23:32:34'),
(171, 1, 'galleries', 1, 'edit', 'Gallery album unpublished by admin Super Admin ?', '2017-01-18 23:32:38'),
(172, 1, 'galleries', 10, 'delete', 'Gallery album moved to recycle bin by admin Super Admin ?', '2017-01-18 23:56:58'),
(173, 1, 'articles', 24, 'edit', 'Article unpublished by admin Super Admin ?', '2017-03-29 17:44:51'),
(174, 1, 'articles', 24, 'edit', 'Article published by admin Super Admin ?', '2017-03-29 17:44:52'),
(175, 1, 'articles', 24, 'edit', 'Article unpublished by admin Super Admin ?', '2017-03-29 17:45:13'),
(176, 1, 'articles', 24, 'edit', 'Article published by admin Super Admin ?', '2017-03-29 17:45:16'),
(177, 21, 'menu', 23, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-03-30 17:53:06'),
(178, 21, 'menu', 24, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-03-30 17:55:50'),
(179, 21, 'menu', 18, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-03-30 18:00:17'),
(180, 21, 'menu', 19, 'edit', 'Menu item modified by admin Super Admin', '2017-03-30 18:43:17'),
(181, 21, 'menu', 19, 'edit', 'Menu item modified by admin Super Admin', '2017-03-30 18:44:16'),
(182, 21, 'menu', 19, 'edit', 'Menu item modified by admin Super Admin', '2017-03-30 18:44:26'),
(183, 21, 'menu', 19, 'edit', 'Menu item modified by admin Super Admin', '2017-03-30 18:45:20'),
(184, 21, 'menu', 19, 'edit', 'Menu item modified by admin Super Admin', '2017-03-30 18:45:24'),
(185, 21, 'menu', 19, 'edit', 'Menu item modified by admin Super Admin', '2017-03-30 18:58:33'),
(186, 21, 'menu', 19, 'edit', 'Menu item modified by admin Super Admin', '2017-03-30 18:58:51'),
(187, 21, 'menu', 31, 'add', 'Menu item added by admin Super Admin', '2017-03-31 12:03:09'),
(188, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 12:05:34'),
(189, 21, 'menu', 32, 'add', 'Menu item added by admin Super Admin', '2017-03-31 12:06:36'),
(190, 21, 'menu', 32, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-03-31 12:07:21'),
(191, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:05:48'),
(192, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:11:32'),
(193, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:11:36'),
(194, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:14:25'),
(195, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:19:09'),
(196, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:19:24'),
(197, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:19:39'),
(198, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:20:18'),
(199, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:21:16'),
(200, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:22:31'),
(201, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:22:41'),
(202, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:23:14'),
(203, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:23:42'),
(204, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:24:00'),
(205, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:24:17'),
(206, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:24:40'),
(207, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:26:30'),
(208, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:26:54'),
(209, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:35:47'),
(210, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:36:10'),
(211, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:36:26'),
(212, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:36:43'),
(213, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:37:14'),
(214, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-03-31 18:46:29'),
(215, 21, 'menu', 33, 'add', 'Menu item added by admin Super Admin', '2017-04-04 19:05:12'),
(216, 21, 'menu', 34, 'add', 'Menu item added by admin Super Admin', '2017-04-05 12:00:42'),
(217, 21, 'menu', 34, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-04-05 12:01:10'),
(218, 21, 'menu', 31, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-04-05 12:01:17'),
(219, 21, 'menu', 33, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-04-05 12:01:23'),
(220, 21, 'menu', 19, 'edit', 'Menu item modified by admin Super Admin', '2017-04-05 12:17:40'),
(221, 21, 'menu', 19, 'edit', 'Menu item modified by admin Super Admin', '2017-04-05 12:17:45'),
(222, 21, 'menu', 19, 'edit', 'Menu item modified by admin Super Admin', '2017-04-05 12:17:54'),
(223, 21, 'menu', 35, 'add', 'Menu item added by admin Super Admin', '2017-04-05 12:19:17'),
(224, 21, 'menu', 35, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-04-05 12:19:28'),
(225, 21, 'menu', 36, 'add', 'Menu item added by admin Super Admin', '2017-04-05 12:22:03'),
(226, 21, 'menu', 36, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-04-05 12:22:25'),
(227, 21, 'menu', 37, 'add', 'Menu item added by admin Super Admin', '2017-04-05 12:23:05'),
(228, 21, 'menu', 37, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-04-05 12:23:11'),
(229, 21, 'menu', 19, 'edit', 'Menu item modified by admin Super Admin', '2017-04-05 12:23:17'),
(230, 21, 'menu', 19, 'edit', 'Menu item modified by admin Super Admin', '2017-04-05 12:23:28'),
(231, 21, 'menu', 38, 'add', 'Menu item added by admin Super Admin', '2017-04-05 12:28:26'),
(232, 21, 'menu', 38, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-04-05 12:28:40'),
(233, 21, 'menu', 39, 'add', 'Menu item added by admin Super Admin', '2017-04-05 12:29:29'),
(234, 21, 'menu', 39, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-04-05 12:29:41'),
(235, 21, 'menu', 40, 'add', 'Menu item added by admin Super Admin', '2017-04-05 12:31:53'),
(236, 21, 'menu', 40, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-04-05 12:33:51'),
(237, 21, 'menu', 41, 'add', 'Menu item added by admin Super Admin', '2017-04-05 12:34:10'),
(238, 21, 'menu', 42, 'add', 'Menu item added by admin Super Admin', '2017-04-05 12:42:57'),
(239, 21, 'menu', 43, 'add', 'Menu item added by admin Super Admin', '2017-04-05 12:45:28'),
(240, 21, 'menu', 44, 'add', 'Menu item added by admin Super Admin', '2017-04-05 12:46:44'),
(241, 21, 'menu', 45, 'add', 'Menu item added by admin Super Admin', '2017-04-05 12:47:30'),
(242, 21, 'menu', 46, 'add', 'Menu item added by admin Super Admin', '2017-04-05 12:48:46'),
(243, 21, 'menu', 41, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-04-05 12:48:59'),
(244, 21, 'menu', 47, 'add', 'Menu item added by admin Super Admin', '2017-04-05 12:49:45'),
(245, 21, 'menu', 47, 'edit', 'Menu item modified by admin Super Admin', '2017-04-05 12:50:11'),
(246, 21, 'menu', 47, 'edit', 'Menu item modified by admin Super Admin', '2017-04-05 12:57:02'),
(247, 21, 'menu', 47, 'edit', 'Menu item modified by admin Super Admin', '2017-04-05 12:58:03'),
(248, 21, 'menu', 47, 'edit', 'Menu item modified by admin Super Admin', '2017-04-05 13:03:10'),
(249, 21, 'menu', 47, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-04-05 13:12:38'),
(250, 21, 'menu', 48, 'add', 'Menu item added by admin Super Admin', '2017-04-05 13:13:05'),
(251, 21, 'menu', 48, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-04-05 13:22:49'),
(252, 21, 'menu', 25, 'edit', 'Menu item modified by admin Super Admin', '2017-04-05 13:39:46'),
(253, 21, 'menu', 25, 'edit', 'Menu item modified by admin Super Admin', '2017-04-05 13:40:00'),
(254, 21, 'menu', 25, 'edit', 'Menu item modified by admin Super Admin', '2017-04-05 13:40:09'),
(255, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-04-06 15:22:02'),
(256, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-04-06 15:23:32'),
(257, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-04-06 15:24:37'),
(258, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-04-06 15:26:24'),
(259, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-04-06 15:26:46'),
(260, 21, 'articles', 27, 'edit', 'Article modified by admin Super Admin', '2017-04-06 16:52:47'),
(262, 21, 'keywords', 2, 'add', 'Keyword newkeyword added by admin Super Admin', '2017-04-11 13:14:38'),
(264, 21, 'keywords', 4, 'add', 'Keyword magickeyword added by admin Super Admin', '2017-04-11 13:21:56'),
(266, 21, 'keywords', 2, 'delete', 'Keyword deleted by admin Super Admin', '2017-04-11 13:22:15'),
(268, 21, 'keywords', 4, 'delete', 'Keyword deleted by admin Super Admin', '2017-04-11 13:22:26'),
(270, 21, 'keywords', 6, 'add', 'Keyword qeyri-rəsmi sənəd added by admin Super Admin', '2017-04-11 13:22:48'),
(272, 21, 'keywords', 8, 'add', 'Keyword yeni sənəd added by admin Super Admin', '2017-04-11 13:22:59'),
(274, 21, 'keywords', 10, 'add', 'Keyword qanuni sənəd added by admin Super Admin', '2017-04-11 13:23:49'),
(276, 21, 'articles', 27, 'edit', 'Article modified by admin Super Admin', '2017-04-11 13:55:47'),
(278, 21, 'articles', 27, 'edit', 'Article modified by admin Super Admin', '2017-04-11 13:57:40'),
(280, 21, 'articles', 27, 'edit', 'Article modified by admin Super Admin', '2017-04-11 14:04:08'),
(282, 21, 'articles', 27, 'edit', 'Article modified by admin Super Admin', '2017-04-11 14:05:10'),
(284, 21, 'keywords', 1, 'delete', 'Keyword deleted by admin Super Admin', '2017-04-11 14:35:28'),
(286, 21, 'keywords', 6, 'delete', 'Keyword deleted by admin Super Admin', '2017-04-11 14:35:33'),
(288, 21, 'keywords', 8, 'delete', 'Keyword deleted by admin Super Admin', '2017-04-11 14:35:38'),
(290, 21, 'keywords', 10, 'delete', 'Keyword deleted by admin Super Admin', '2017-04-11 14:35:43'),
(292, 21, 'keywords', 12, 'add', 'Keyword rəsmi sənəd added by admin Super Admin', '2017-04-11 14:36:29'),
(294, 21, 'keywords', 14, 'add', 'Keyword qeyri-rəsmi sənəd added by admin Super Admin', '2017-04-11 14:36:42'),
(296, 21, 'keywords', 16, 'add', 'Keyword qanuni sənəd added by admin Super Admin', '2017-04-11 14:36:58'),
(298, 21, 'keywords', 18, 'add', 'Keyword yeni sənəd added by admin Super Admin', '2017-04-11 14:37:17'),
(300, 21, 'articles', 27, 'edit', 'Article modified by admin Super Admin', '2017-04-11 15:06:03'),
(302, 21, 'articles', 27, 'edit', 'Article modified by admin Super Admin', '2017-04-11 15:09:17'),
(304, 21, 'articles', 27, 'edit', 'Article modified by admin Super Admin', '2017-04-11 16:16:35'),
(306, 21, 'articles', 27, 'edit', 'Article modified by admin Super Admin', '2017-04-11 16:19:16'),
(308, 21, 'articles', 28, 'add', 'Article added by admin Super Admin', '2017-04-11 16:42:30'),
(310, 21, 'articles', 30, 'add', 'Article added by admin Super Admin', '2017-04-11 16:44:16'),
(312, 21, 'articles', 32, 'add', 'Article added by admin Super Admin', '2017-04-11 16:53:23'),
(314, 21, 'articles', 28, 'delete', 'Article moved to recycle bin by admin Super Admin', '2017-04-11 16:59:56'),
(316, 21, 'articles', 30, 'delete', 'Article moved to recycle bin by admin Super Admin', '2017-04-11 17:00:07'),
(318, 21, 'articles', 32, 'delete', 'Article moved to recycle bin by admin Super Admin', '2017-04-11 17:00:20'),
(320, 21, 'keywords', 20, 'add', 'Keyword 1 added by admin Super Admin', '2017-04-11 18:10:31'),
(322, 21, 'keywords', 22, 'add', 'Keyword 1 added by admin Super Admin', '2017-04-11 18:10:34'),
(324, 21, 'keywords', 24, 'add', 'Keyword 1 added by admin Super Admin', '2017-04-11 18:10:46'),
(326, 21, 'keywords', 26, 'add', 'Keyword 1 added by admin Super Admin', '2017-04-11 18:11:18'),
(328, 21, 'keywords', 28, 'add', 'Keyword [] added by admin Super Admin', '2017-04-11 18:14:22'),
(330, 21, 'keywords', 30, 'add', 'Keyword [\"delem\"] added by admin Super Admin', '2017-04-11 18:14:26'),
(332, 21, 'keywords', 32, 'add', 'Keyword [] added by admin Super Admin', '2017-04-11 18:15:35'),
(334, 21, 'keywords', 34, 'add', 'Keyword [\"delet\"] added by admin Super Admin', '2017-04-11 18:15:45'),
(336, 21, 'keywords', 36, 'add', 'Keyword bahane added by admin Super Admin', '2017-04-11 18:17:57'),
(338, 21, 'keywords', 38, 'add', 'Keyword delem added by admin Super Admin', '2017-04-11 18:20:14'),
(340, 21, 'keywords', 40, 'add', 'Keyword [\"delem\"] added by admin Super Admin', '2017-04-11 18:23:41'),
(342, 21, 'keywords', 42, 'add', 'Keyword [\"delem\"] added by admin Super Admin', '2017-04-11 18:29:27'),
(344, 21, 'keywords', 20, 'add', 'Keyword delem added by admin Super Admin', '2017-04-11 18:34:30'),
(346, 21, 'keywords', 22, 'add', 'Keyword mishe added by admin Super Admin', '2017-04-11 18:43:19'),
(348, 21, 'keywords', 24, 'add', 'Keyword hashup added by admin Super Admin', '2017-04-11 18:45:41'),
(350, 21, 'keywords', 26, 'add', 'Keyword payeez added by admin Super Admin', '2017-04-11 18:50:10'),
(352, 21, 'keywords', 28, 'add', 'Keyword porting added by admin Super Admin', '2017-04-11 19:03:51'),
(354, 21, 'keywords', 30, 'add', 'Keyword 12 added by admin Super Admin', '2017-04-11 19:07:38'),
(356, 21, 'keywords', 32, 'add', 'Keyword portdocument added by admin Super Admin', '2017-04-11 19:15:51'),
(358, 21, 'keywords', 34, 'add', 'Keyword 32 added by admin Super Admin', '2017-04-11 19:18:08'),
(360, 21, 'keywords', 36, 'add', 'Keyword 34 added by admin Super Admin', '2017-04-11 19:18:10'),
(362, 21, 'keywords', 38, 'add', 'Keyword 36 added by admin Super Admin', '2017-04-11 19:18:12'),
(364, 21, 'keywords', 40, 'add', 'Keyword 38 added by admin Super Admin', '2017-04-11 19:18:15'),
(366, 21, 'keywords', 42, 'add', 'Keyword 40 added by admin Super Admin', '2017-04-11 19:18:17'),
(368, 21, 'keywords', 44, 'add', 'Keyword 42 added by admin Super Admin', '2017-04-11 19:18:19'),
(370, 21, 'keywords', 46, 'add', 'Keyword 44 added by admin Super Admin', '2017-04-11 19:18:21'),
(372, 21, 'keywords', 48, 'add', 'Keyword 46 added by admin Super Admin', '2017-04-11 19:18:22'),
(374, 21, 'keywords', 50, 'add', 'Keyword 48 added by admin Super Admin', '2017-04-11 19:18:23'),
(376, 21, 'keywords', 52, 'add', 'Keyword 50 added by admin Super Admin', '2017-04-11 19:18:24'),
(378, 21, 'keywords', 54, 'add', 'Keyword 52 added by admin Super Admin', '2017-04-11 19:18:25'),
(380, 21, 'keywords', 56, 'add', 'Keyword 54 added by admin Super Admin', '2017-04-11 19:18:27'),
(382, 21, 'keywords', 58, 'add', 'Keyword 56 added by admin Super Admin', '2017-04-11 19:18:28'),
(384, 21, 'keywords', 60, 'add', 'Keyword 58 added by admin Super Admin', '2017-04-11 19:18:29'),
(386, 21, 'keywords', 62, 'add', 'Keyword 60 added by admin Super Admin', '2017-04-11 19:18:30'),
(388, 21, 'keywords', 64, 'add', 'Keyword 62 added by admin Super Admin', '2017-04-11 19:18:32'),
(390, 21, 'keywords', 66, 'add', 'Keyword cahannam added by admin Super Admin', '2017-04-11 19:21:38'),
(392, 21, 'keywords', 68, 'add', 'Keyword 66 added by admin Super Admin', '2017-04-11 19:21:40'),
(394, 21, 'keywords', 70, 'add', 'Keyword 68 added by admin Super Admin', '2017-04-11 19:21:42'),
(396, 21, 'keywords', 72, 'add', 'Keyword 70 added by admin Super Admin', '2017-04-11 19:21:44'),
(398, 21, 'keywords', 74, 'add', 'Keyword 72 added by admin Super Admin', '2017-04-11 19:21:48'),
(400, 21, 'keywords', 76, 'add', 'Keyword mard added by admin Super Admin', '2017-04-11 19:22:30'),
(402, 21, 'keywords', 78, 'add', 'Keyword 76 added by admin Super Admin', '2017-04-11 19:22:32'),
(404, 21, 'keywords', 80, 'add', 'Keyword 78 added by admin Super Admin', '2017-04-11 19:22:34'),
(406, 21, 'keywords', 82, 'add', 'Keyword 80 added by admin Super Admin', '2017-04-11 19:22:37'),
(408, 21, 'keywords', 84, 'add', 'Keyword 82 added by admin Super Admin', '2017-04-11 19:22:39'),
(410, 21, 'keywords', 86, 'add', 'Keyword 84 added by admin Super Admin', '2017-04-11 19:22:42'),
(412, 21, 'keywords', 88, 'add', 'Keyword 86 added by admin Super Admin', '2017-04-11 19:22:44'),
(414, 21, 'keywords', 90, 'add', 'Keyword 88 added by admin Super Admin', '2017-04-11 19:22:47'),
(416, 21, 'keywords', 92, 'add', 'Keyword 90 added by admin Super Admin', '2017-04-11 19:22:51'),
(418, 21, 'keywords', 94, 'add', 'Keyword cenzaeye added by admin Super Admin', '2017-04-11 19:23:28'),
(420, 21, 'keywords', 96, 'add', 'Keyword portuser added by admin Super Admin', '2017-04-11 19:24:47'),
(422, 21, 'keywords', 98, 'add', 'Keyword portdocudment added by admin Super Admin', '2017-04-11 19:26:22'),
(424, 21, 'keywords', 100, 'add', 'Keyword 94 added by admin Super Admin', '2017-04-11 19:31:35'),
(426, 21, 'keywords', 102, 'add', 'Keyword 1120 added by admin Super Admin', '2017-04-11 19:33:42'),
(428, 21, 'keywords', 104, 'add', 'Keyword 12 added by admin Super Admin', '2017-04-11 19:34:43'),
(430, 21, 'keywords', 106, 'add', 'Keyword portmin added by admin Super Admin', '2017-04-11 19:36:25'),
(432, 21, 'keywords', 108, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:27'),
(434, 21, 'keywords', 110, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:28'),
(436, 21, 'keywords', 112, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:29'),
(438, 21, 'keywords', 114, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:30'),
(440, 21, 'keywords', 116, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:32'),
(442, 21, 'keywords', 118, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:33'),
(444, 21, 'keywords', 120, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:34'),
(446, 21, 'keywords', 122, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:35'),
(448, 21, 'keywords', 124, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:36'),
(450, 21, 'keywords', 126, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:37'),
(452, 21, 'keywords', 128, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:38'),
(454, 21, 'keywords', 130, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:39'),
(456, 21, 'keywords', 132, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:40'),
(458, 21, 'keywords', 134, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:41'),
(460, 21, 'keywords', 136, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:42'),
(462, 21, 'keywords', 138, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:43'),
(464, 21, 'keywords', 140, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:44'),
(466, 21, 'keywords', 142, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:46'),
(468, 21, 'keywords', 144, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:47'),
(470, 21, 'keywords', 146, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:48'),
(472, 21, 'keywords', 148, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:49'),
(474, 21, 'keywords', 150, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:50'),
(476, 21, 'keywords', 152, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:51'),
(478, 21, 'keywords', 154, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:53'),
(480, 21, 'keywords', 156, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:54'),
(482, 21, 'keywords', 158, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:55'),
(484, 21, 'keywords', 160, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:56'),
(486, 21, 'keywords', 162, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:57'),
(488, 21, 'keywords', 164, 'add', 'Keyword 106 added by admin Super Admin', '2017-04-11 19:36:59'),
(490, 21, 'keywords', 166, 'add', 'Keyword portdoc added by admin Super Admin', '2017-04-11 19:38:42'),
(492, 21, 'keywords', 168, 'add', 'Keyword portdoc added by admin Super Admin', '2017-04-11 19:38:43'),
(494, 21, 'keywords', 170, 'add', 'Keyword portdoc added by admin Super Admin', '2017-04-11 19:38:45'),
(496, 21, 'keywords', 172, 'add', 'Keyword portdoc added by admin Super Admin', '2017-04-11 19:38:46'),
(498, 21, 'keywords', 174, 'add', 'Keyword portdoc added by admin Super Admin', '2017-04-11 19:38:47'),
(500, 21, 'keywords', 176, 'add', 'Keyword portdoc added by admin Super Admin', '2017-04-11 19:38:49'),
(502, 21, 'keywords', 178, 'add', 'Keyword portdoc added by admin Super Admin', '2017-04-11 19:38:50'),
(504, 21, 'keywords', 180, 'add', 'Keyword portdoc added by admin Super Admin', '2017-04-11 19:38:51'),
(506, 21, 'keywords', 182, 'add', 'Keyword portdoc added by admin Super Admin', '2017-04-11 19:38:52'),
(508, 21, 'keywords', 184, 'add', 'Keyword portdoc added by admin Super Admin', '2017-04-11 19:38:54'),
(510, 21, 'keywords', 186, 'add', 'Keyword smotri added by admin Super Admin', '2017-04-11 19:40:44'),
(512, 21, 'keywords', 188, 'add', 'Keyword portdoc added by admin Super Admin', '2017-04-11 19:44:01'),
(514, 21, 'keywords', 190, 'add', 'Keyword 188 added by admin Super Admin', '2017-04-11 19:44:02'),
(516, 21, 'keywords', 192, 'add', 'Keyword smotri added by admin Super Admin', '2017-04-11 19:46:10'),
(518, 21, 'keywords', 194, 'add', 'Keyword 192 added by admin Super Admin', '2017-04-11 19:46:11'),
(520, 21, 'keywords', 196, 'add', 'Keyword davno added by admin Super Admin', '2017-04-11 19:49:03'),
(522, 21, 'keywords', 198, 'add', 'Keyword davno added by admin Super Admin', '2017-04-11 19:49:05'),
(524, 21, 'keywords', 200, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:06'),
(526, 21, 'keywords', 202, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:07'),
(528, 21, 'keywords', 204, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:08'),
(530, 21, 'keywords', 206, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:09'),
(532, 21, 'keywords', 208, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:11'),
(534, 21, 'keywords', 210, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:12'),
(536, 21, 'keywords', 212, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:13'),
(538, 21, 'keywords', 214, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:14'),
(540, 21, 'keywords', 216, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:16'),
(542, 21, 'keywords', 218, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:17'),
(544, 21, 'keywords', 220, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:18'),
(546, 21, 'keywords', 222, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:19'),
(548, 21, 'keywords', 224, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:20'),
(550, 21, 'keywords', 226, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:21'),
(552, 21, 'keywords', 228, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:22'),
(554, 21, 'keywords', 230, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:24'),
(556, 21, 'keywords', 232, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:25'),
(558, 21, 'keywords', 234, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:26'),
(560, 21, 'keywords', 236, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:27'),
(562, 21, 'keywords', 238, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:28'),
(564, 21, 'keywords', 240, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:29'),
(566, 21, 'keywords', 242, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:31'),
(568, 21, 'keywords', 244, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:33'),
(570, 21, 'keywords', 246, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:34'),
(572, 21, 'keywords', 248, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:35'),
(574, 21, 'keywords', 250, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:37'),
(576, 21, 'keywords', 252, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:38'),
(578, 21, 'keywords', 254, 'add', 'Keyword 196 added by admin Super Admin', '2017-04-11 19:49:39'),
(580, 21, 'keywords', 256, 'add', 'Keyword smotri added by admin Super Admin', '2017-04-11 19:51:42'),
(582, 21, 'keywords', 258, 'add', 'Keyword 256 added by admin Super Admin', '2017-04-11 19:54:59'),
(584, 21, 'keywords', 260, 'add', 'Keyword meladze added by admin Super Admin', '2017-04-11 19:57:01'),
(586, 21, 'keywords', 264, 'add', 'Keyword valeriy added by admin Super Admin', '2017-04-11 20:00:35'),
(588, 21, 'keywords', 266, 'add', 'Keyword 12 added by admin Super Admin', '2017-04-11 20:02:56'),
(590, 21, 'keywords', 268, 'add', 'Keyword 50 added by admin Super Admin', '2017-04-11 20:05:54'),
(592, 21, 'keywords', 270, 'add', 'Keyword ajedaniya added by admin Super Admin', '2017-04-11 20:09:04'),
(594, 21, 'keywords', 272, 'add', 'Keyword nebesa added by admin Super Admin', '2017-04-11 20:11:28'),
(596, 21, 'keywords', 274, 'add', 'Keyword 16 added by admin Super Admin', '2017-04-11 20:14:01'),
(598, 21, 'keywords', 276, 'add', 'Keyword kajdiy added by admin Super Admin', '2017-04-11 20:17:39'),
(600, 21, 'keywords', 278, 'add', 'Keyword 276 added by admin Super Admin', '2017-04-11 20:17:40'),
(602, 21, 'keywords', 2, 'add', 'Keyword qanuni sənəd added by admin Super Admin', '2017-04-11 20:21:28'),
(604, 21, 'keywords', 4, 'add', 'Keyword 2 added by admin Super Admin', '2017-04-11 20:21:30'),
(606, 21, 'keywords', 6, 'add', 'Keyword teshme added by admin Super Admin', '2017-04-11 20:23:39'),
(608, 21, 'keywords', 8, 'add', 'Keyword 6 added by admin Super Admin', '2017-04-11 20:23:40'),
(610, 21, 'keywords', 10, 'add', 'Keyword cheshme added by admin Super Admin', '2017-04-11 20:25:47'),
(612, 21, 'keywords', 22, 'add', 'Keyword mashiona added by admin Super Admin', '2017-04-11 20:36:52'),
(613, 21, 'keywords', 24, 'add', 'Keyword resmi sənəd added by admin Super Admin', '2017-04-11 20:39:40'),
(614, 21, 'keywords', 25, 'add', 'Keyword 24 added by admin Super Admin', '2017-04-11 20:40:44'),
(615, 21, 'keywords', 26, 'add', 'Keyword hamidun added by admin Super Admin', '2017-04-11 20:43:08'),
(616, 21, 'keywords', 27, 'add', 'Keyword 26 added by admin Super Admin', '2017-04-11 20:43:12'),
(618, 21, 'keywords', 28, 'add', 'Keyword heyf added by admin Super Admin', '2017-04-12 11:57:54'),
(620, 21, 'keywords', 30, 'add', 'Keyword kay added by admin Super Admin', '2017-04-12 12:06:20'),
(622, 21, 'keywords', 32, 'add', 'Keyword 30 added by admin Super Admin', '2017-04-12 12:06:31'),
(624, 21, 'keywords', 34, 'add', 'Keyword kalb added by admin Super Admin', '2017-04-12 12:18:48'),
(626, 21, 'keywords', 36, 'add', 'Keyword 34 added by admin Super Admin', '2017-04-12 12:19:00'),
(628, 21, 'keywords', 38, 'add', 'Keyword nabood added by admin Super Admin', '2017-04-12 12:57:56'),
(630, 21, 'keywords', 40, 'add', 'Keyword vaxte_khobe added by admin Super Admin', '2017-04-12 12:58:20'),
(632, 21, 'articles', 27, 'edit', 'Article modified by admin Super Admin', '2017-04-12 12:58:29'),
(634, 21, 'keywords', 2, 'add', 'Keyword resmi sened added by admin Super Admin', '2017-04-12 13:36:09'),
(636, 21, 'keywords', 4, 'add', 'Keyword qeyr-resmi sened added by admin Super Admin', '2017-04-12 13:36:26'),
(638, 21, 'articles', 27, 'edit', 'Article modified by admin Super Admin', '2017-04-12 13:36:30'),
(640, 21, 'keywords', 6, 'add', 'Keyword baroon added by admin Super Admin', '2017-04-12 13:42:31'),
(642, 21, 'keywords', 8, 'add', 'Keyword hava added by admin Super Admin', '2017-04-12 13:44:28'),
(644, 21, 'articles', 27, 'edit', 'Article modified by admin Super Admin', '2017-04-12 13:44:30'),
(646, 21, 'articles', 27, 'edit', 'Article modified by admin Super Admin', '2017-04-12 13:44:46'),
(648, 21, 'keywords', 10, 'add', 'Keyword mykeyword added by admin Super Admin', '2017-04-14 17:35:28'),
(650, 21, 'articles', 27, 'edit', 'Article modified by admin Super Admin', '2017-04-14 17:35:43'),
(652, 21, 'documents', 27, 'edit', 'Document modified by admin Super Admin', '2017-04-18 12:37:28'),
(654, 21, 'documents', 27, 'edit', 'Document modified by admin Super Admin', '2017-04-18 12:37:54'),
(656, 21, 'documents', 20, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-04-18 12:38:15'),
(658, 21, 'documents', 19, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-04-18 12:38:25'),
(660, 21, 'documents', 17, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-04-18 12:38:35'),
(662, 21, 'documents', 27, 'edit', 'Document modified by admin Super Admin', '2017-04-18 12:53:41'),
(664, 21, 'documents', 34, 'add', 'Document added by admin Super Admin', '2017-04-18 13:05:33'),
(666, 21, 'documents', 36, 'add', 'Document added by admin Super Admin', '2017-04-18 13:10:48'),
(668, 21, 'documents', 34, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-04-18 13:10:58'),
(670, 21, 'documents', 36, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-04-18 13:11:07'),
(672, 21, 'documents', 38, 'add', 'Document added by admin Super Admin', '2017-04-18 13:11:32'),
(674, 21, 'documents', 42, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-04-18 13:24:48'),
(676, 21, 'documents', 40, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-04-18 13:24:56'),
(678, 21, 'documents', 38, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-04-18 13:25:05'),
(680, 21, 'documents', 44, 'add', 'Document added by admin Super Admin', '2017-04-18 13:25:27'),
(682, 21, 'documents', 46, 'add', 'Document added by admin Super Admin', '2017-04-18 13:31:14'),
(684, 21, 'documents', 46, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-04-18 13:33:16'),
(686, 21, 'documents', 44, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-04-18 13:33:26'),
(688, 21, 'documents', 48, 'add', 'Document added by admin Super Admin', '2017-04-18 13:33:46'),
(690, 21, 'documents', 48, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-04-18 13:34:20'),
(692, 21, 'documents', 10, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-04-18 14:06:36'),
(694, 21, 'documents', 7, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-04-18 14:06:52'),
(696, 21, 'documents', 8, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-04-18 14:07:57'),
(698, 21, 'documents_type', 10, 'add', 'Document type TestTypeDocument added by admin Super Admin', '2017-04-18 14:46:38'),
(700, 21, 'documents_type', 10, 'delete', 'Document type deleted by admin Super Admin', '2017-04-18 14:46:48'),
(702, 21, 'actual_links', 2, 'add', 'Link Bakalavr added by admin Super Admin', '2017-04-18 16:28:28'),
(704, 21, 'actual_links', 4, 'add', 'Link Magistr added by admin Super Admin', '2017-04-18 16:30:19'),
(706, 21, 'actual_links', 6, 'add', 'Link Qəbul added by admin Super Admin', '2017-04-18 16:30:44'),
(708, 21, 'actual_links', 8, 'add', 'Link sdsdsds added by admin Super Admin', '2017-04-18 16:31:00'),
(710, 21, 'actual_links', 8, 'delete', 'Link deleted by admin Super Admin', '2017-04-18 16:31:12'),
(712, 21, 'keywords', 12, 'add', 'Keyword bood added by admin Super Admin', '2017-04-18 17:46:06'),
(714, 21, 'keywords', 12, 'delete', 'Keyword deleted by admin Super Admin', '2017-04-18 17:46:15'),
(716, 21, 'actual_links', 16, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-18 19:00:16'),
(718, 21, 'actual_links', 10, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-18 19:00:16'),
(720, 21, 'actual_links', 36, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-19 12:12:34'),
(722, 21, 'actual_links', 28, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-19 12:12:34'),
(724, 21, 'actual_links', 30, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-19 12:12:34'),
(726, 21, 'actual_links', 32, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-19 12:12:34'),
(728, 21, 'actual_links', 34, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-19 12:12:34');
INSERT INTO `cms_log` (`id`, `cms_user_id`, `subj_table`, `subj_id`, `action`, `descr`, `reg_date`) VALUES
(730, 21, 'keywords', 14, 'add', 'Keyword nemsishe added by admin Super Admin', '2017-04-19 15:46:33'),
(732, 21, 'keywords', 14, 'delete', 'Keyword deleted by admin Super Admin', '2017-04-19 15:47:17'),
(734, 21, 'actual_links', 44, 'add', 'Link Onlayn kalkulyator added by admin Super Admin', '2017-04-24 16:18:30'),
(736, 21, 'actual_links', 46, 'add', 'Link SABAH qrupları added by admin Super Admin', '2017-04-24 16:19:05'),
(738, 21, 'actual_links', 48, 'add', 'Link Telefon Məlumat Mərkəzi added by admin Super Admin', '2017-04-24 16:19:40'),
(740, 21, 'actual_links', 50, 'add', 'Link Nostrifikasiya added by admin Super Admin', '2017-04-24 16:20:06'),
(742, 21, 'actual_links', 52, 'add', 'Link Elektron dərslik portalı added by admin Super Admin', '2017-04-24 16:20:29'),
(744, 21, 'actual_links', 54, 'add', 'Link Xaricdə təhsil added by admin Super Admin', '2017-04-24 16:20:52'),
(746, 21, 'actual_links', 56, 'add', 'Link Müəllimlərin işə qəbulu added by admin Super Admin', '2017-04-24 16:21:24'),
(748, 21, 'actual_links', 58, 'add', 'Link Rayon (şəhər) təhsil şöbələri (idarələri) added by admin Super Admin', '2017-04-24 16:21:44'),
(750, 21, 'actual_links', 58, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 16:24:10'),
(752, 21, 'actual_links', 2, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 16:24:10'),
(754, 21, 'actual_links', 4, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 16:24:10'),
(756, 21, 'actual_links', 44, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 16:24:10'),
(758, 21, 'actual_links', 46, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 16:24:10'),
(760, 21, 'actual_links', 48, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 16:24:10'),
(762, 21, 'actual_links', 50, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 16:24:10'),
(764, 21, 'actual_links', 52, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 16:24:10'),
(766, 21, 'actual_links', 54, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 16:24:10'),
(768, 21, 'actual_links', 56, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 16:24:10'),
(770, 21, 'actual_links', 2, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 16:24:34'),
(772, 21, 'actual_links', 58, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 16:24:34'),
(774, 21, 'actual_links', 56, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 16:30:19'),
(776, 21, 'actual_links', 54, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 16:30:19'),
(778, 21, 'actual_links', 54, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 16:31:14'),
(780, 21, 'actual_links', 56, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 16:31:14'),
(782, 21, 'actual_links', 56, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:12:29'),
(784, 21, 'actual_links', 52, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:12:29'),
(786, 21, 'actual_links', 54, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:12:29'),
(788, 21, 'actual_links', 54, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:14:47'),
(790, 21, 'actual_links', 52, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:14:47'),
(792, 21, 'actual_links', 52, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:15:43'),
(794, 21, 'actual_links', 54, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:15:43'),
(796, 21, 'actual_links', 54, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:16:08'),
(798, 21, 'actual_links', 52, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:16:08'),
(800, 21, 'actual_links', 54, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:17:02'),
(802, 21, 'actual_links', 56, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:17:02'),
(804, 21, 'actual_links', 52, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:18:24'),
(806, 21, 'actual_links', 56, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:18:24'),
(808, 21, 'actual_links', 52, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:18:35'),
(810, 21, 'actual_links', 54, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:18:35'),
(812, 21, 'actual_links', 56, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:19:05'),
(814, 21, 'actual_links', 52, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:19:05'),
(816, 21, 'actual_links', 54, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:19:05'),
(818, 21, 'actual_links', 54, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:20:24'),
(820, 21, 'actual_links', 50, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:20:24'),
(822, 21, 'actual_links', 56, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:20:24'),
(824, 21, 'actual_links', 52, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:20:24'),
(826, 21, 'actual_links', 52, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:21:44'),
(828, 21, 'actual_links', 50, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:21:44'),
(830, 21, 'actual_links', 56, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:21:44'),
(832, 21, 'actual_links', 56, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:22:34'),
(834, 21, 'actual_links', 52, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:22:34'),
(836, 21, 'actual_links', 50, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:22:34'),
(838, 21, 'actual_links', 54, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:22:40'),
(840, 21, 'actual_links', 46, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:22:40'),
(842, 21, 'actual_links', 48, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:22:40'),
(844, 21, 'actual_links', 54, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:22:46'),
(846, 21, 'actual_links', 44, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:22:46'),
(848, 21, 'actual_links', 54, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:22:49'),
(850, 21, 'actual_links', 4, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:22:49'),
(852, 21, 'actual_links', 58, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:23:01'),
(854, 21, 'actual_links', 54, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:23:01'),
(856, 21, 'actual_links', 4, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:23:01'),
(858, 21, 'actual_links', 44, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:23:01'),
(860, 21, 'actual_links', 2, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:23:01'),
(862, 21, 'actual_links', 56, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:23:08'),
(864, 21, 'actual_links', 46, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:23:08'),
(866, 21, 'actual_links', 48, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:23:08'),
(868, 21, 'actual_links', 52, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:23:11'),
(870, 21, 'actual_links', 46, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:23:11'),
(872, 21, 'actual_links', 48, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:23:11'),
(874, 21, 'actual_links', 46, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:23:52'),
(876, 21, 'actual_links', 52, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:23:52'),
(878, 21, 'actual_links', 52, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:24:10'),
(880, 21, 'actual_links', 46, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:24:10'),
(882, 21, 'actual_links', 52, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:24:13'),
(884, 21, 'actual_links', 56, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-04-24 17:24:13'),
(886, 21, 'documents', 4, 'edit', 'Document modified by admin Super Admin', '2017-04-28 19:45:38'),
(888, 21, 'site_settings', 6, 'edit', 'Setting last_added_limit edited by admin Super Admin', '2017-05-02 15:41:04'),
(890, 21, 'site_settings', 6, 'edit', 'Setting last_added_limit edited by admin Super Admin', '2017-05-02 15:41:26'),
(892, 21, 'documents', 24, 'edit', 'Document modified by admin Super Admin', '2017-05-04 21:23:49'),
(894, 21, 'actual_links', 52, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-05-08 17:32:51'),
(896, 21, 'actual_links', 58, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-05-08 17:32:51'),
(898, 21, 'actual_links', 54, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-05-08 17:32:51'),
(900, 21, 'actual_links', 4, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-05-08 17:32:51'),
(902, 21, 'actual_links', 44, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-05-08 17:32:51'),
(904, 21, 'actual_links', 2, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-05-08 17:32:51'),
(906, 21, 'menu', 1, 'edit', 'Menu item modified by admin Super Admin', '2017-05-10 19:45:28'),
(908, 21, 'menu', 17, 'edit', 'Menu item modified by admin Super Admin', '2017-05-10 19:46:21'),
(910, 21, 'menu', 19, 'edit', 'Menu item modified by admin Super Admin', '2017-05-10 19:47:14'),
(912, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-05-10 20:12:53'),
(914, 21, 'menu', 20, 'edit', 'Menu item modified by admin Super Admin', '2017-05-10 20:13:29'),
(916, 21, 'menu', 26, 'edit', 'Menu item modified by admin Super Admin', '2017-05-10 20:15:05'),
(918, 21, 'menu', 29, 'edit', 'Menu item modified by admin Super Admin', '2017-05-10 20:15:23'),
(920, 21, 'menu', 26, 'edit', 'Menu item modified by admin Super Admin', '2017-05-10 20:15:35'),
(922, 21, 'menu', 21, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-05-10 20:15:49'),
(924, 21, 'menu', 22, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-05-10 20:16:31'),
(926, 21, 'menu', 25, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-05-10 20:16:38'),
(928, 21, 'keywords', 16, 'add', 'Keyword fffff added by admin Super Admin', '2017-05-16 19:44:15'),
(930, 21, 'keywords', 16, 'delete', 'Keyword deleted by admin Super Admin', '2017-05-16 19:44:41'),
(932, 21, 'keywords', 18, 'add', 'Keyword в added by admin Super Admin', '2017-05-17 13:14:02'),
(934, 21, 'keywords', 20, 'add', 'Keyword sdssaa added by admin Super Admin', '2017-05-17 13:14:05'),
(936, 21, 'keywords', 22, 'add', 'Keyword asa added by admin Super Admin', '2017-05-17 13:14:07'),
(938, 21, 'keywords', 22, 'delete', 'Keyword deleted by admin Super Admin', '2017-05-17 13:14:45'),
(940, 21, 'keywords', 20, 'delete', 'Keyword deleted by admin Super Admin', '2017-05-17 13:14:50'),
(942, 21, 'keywords', 18, 'delete', 'Keyword deleted by admin Super Admin', '2017-05-17 13:14:54'),
(944, 21, 'keywords', 24, 'add', 'Keyword e added by admin Super Admin', '2017-05-17 13:15:49'),
(946, 21, 'keywords', 24, 'delete', 'Keyword deleted by admin Super Admin', '2017-05-17 13:25:23'),
(948, 21, 'documents', 27, 'edit', 'Document modified by admin Super Admin', '2017-05-17 13:27:11'),
(950, 21, 'documents', 27, 'edit', 'Document modified by admin Super Admin', '2017-05-17 13:27:35'),
(952, 21, 'documents', 27, 'edit', 'Document modified by admin Super Admin', '2017-05-17 14:17:13'),
(954, 21, 'documents', 27, 'edit', 'Document modified by admin Super Admin', '2017-05-17 14:17:31'),
(956, 21, 'documents', 27, 'edit', 'Document modified by admin Super Admin', '2017-05-17 14:17:58'),
(958, 21, 'documents', 27, 'edit', 'Document modified by admin Super Admin', '2017-05-17 14:18:04'),
(960, 21, 'documents', 27, 'edit', 'Document modified by admin Super Admin', '2017-05-17 14:18:12'),
(962, 21, 'documents', 27, 'edit', 'Document modified by admin Super Admin', '2017-05-17 14:18:41'),
(964, 21, 'documents', 27, 'edit', 'Document modified by admin Super Admin', '2017-05-17 14:19:46'),
(966, 21, 'documents', 27, 'edit', 'Document unpublished by admin Super Admin', '2017-05-17 14:21:51'),
(968, 21, 'documents', 27, 'edit', 'Document published by admin Super Admin', '2017-05-17 14:21:54'),
(970, 21, 'documents', 50, 'add', 'Document added by admin Super Admin', '2017-05-17 14:22:59'),
(972, 21, 'documents', 50, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-05-17 14:23:40'),
(974, 21, 'documents', 52, 'add', 'Document added by admin Super Admin', '2017-05-17 14:24:12'),
(976, 21, 'documents', 52, 'edit', 'Document modified by admin Super Admin', '2017-05-17 15:37:51'),
(978, 21, 'documents', 52, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-05-17 15:38:00'),
(980, 21, 'documents', 54, 'add', 'Document added by admin Super Admin', '2017-05-18 19:06:48'),
(982, 21, 'documents', 54, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-05-18 19:26:37'),
(984, 21, 'documents', 54, 'edit', 'Document modified by admin Super Admin', '2017-05-18 19:30:35'),
(986, 21, 'documents', 54, 'edit', 'Document modified by admin Super Admin', '2017-05-18 19:31:22'),
(988, 21, 'documents', 56, 'add', 'Document added by admin Super Admin', '2017-05-18 19:55:43'),
(990, 21, 'documents', 56, 'edit', 'Document modified by admin Super Admin', '2017-05-18 20:02:26'),
(992, 21, 'documents', 56, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-05-18 20:02:39'),
(994, 21, 'documents', 58, 'add', 'Document added by admin Super Admin', '2017-05-19 10:54:23'),
(996, 21, 'documents', 60, 'add', 'Document added by admin Super Admin', '2017-05-19 10:54:40'),
(998, 21, 'documents', 62, 'add', 'Document added by admin Super Admin', '2017-05-19 10:54:56'),
(1000, 21, 'documents', 64, 'add', 'Document added by admin Super Admin', '2017-05-19 10:55:12'),
(1002, 21, 'documents', 0, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-05-19 11:24:55'),
(1004, 21, 'documents', 64, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-05-19 11:25:54'),
(1006, 21, 'documents', 62, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-05-19 11:26:14'),
(1008, 21, 'documents', 60, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-05-19 11:32:02'),
(1010, 21, 'documents', 20, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-05-19 14:37:46'),
(1012, 21, 'documents', 20, 'restore', 'Document restored by admin Super Admin', '2017-05-19 14:39:13'),
(1014, 21, 'documents', 20, 'restore', 'Document restored by admin Super Admin', '2017-05-19 14:39:39'),
(1016, 21, 'documents', 20, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-05-19 14:40:02'),
(1018, 21, 'documents', 22, 'restore', 'Document restored by admin Super Admin', '2017-05-19 14:40:16'),
(1020, 21, 'documents', 22, 'delete', 'Document moved to recycle bin by admin Super Admin', '2017-05-19 14:40:43'),
(1022, 21, 'documents', 24, 'edit', 'Document modified by admin Super Admin', '2017-05-19 16:26:51'),
(1024, 21, 'documents', 18, 'edit', 'Document modified by admin Super Admin', '2017-05-19 17:04:58'),
(1026, 21, 'documents', 18, 'edit', 'Document modified by admin Super Admin', '2017-05-19 17:05:16'),
(1027, 21, 'menu', 1, 'edit', 'Menu item modified by admin Super Admin', '2017-05-23 13:54:33'),
(1028, 21, 'menu', 17, 'edit', 'Menu item modified by admin Super Admin', '2017-05-23 13:55:00'),
(1029, 21, 'menu', 19, 'edit', 'Menu item modified by admin Super Admin', '2017-05-23 14:13:10'),
(1030, 21, 'menu', 16, 'edit', 'Menu item modified by admin Super Admin', '2017-05-23 14:13:33'),
(1031, 21, 'menu', 20, 'edit', 'Menu item modified by admin Super Admin', '2017-05-23 14:13:50'),
(1032, 21, 'menu', 26, 'edit', 'Menu item modified by admin Super Admin', '2017-05-23 14:14:03'),
(1033, 21, 'menu', 29, 'edit', 'Menu item modified by admin Super Admin', '2017-05-23 14:14:22'),
(1034, 21, 'menu', 49, 'add', 'Menu item added by admin Super Admin', '2017-05-24 07:43:49'),
(1035, 21, 'menu', 50, 'add', 'Menu item added by admin Super Admin', '2017-05-24 07:46:02'),
(1036, 21, 'banners', 1, 'add', 'Banner  added by admin Super Admin', '2017-05-27 06:28:55'),
(1037, 21, 'banners', 1, 'delete', 'Banner deleted by admin Super Admin', '2017-05-27 06:51:46'),
(1038, 21, 'banners', 2, 'add', 'Banner 2 added by admin Super Admin', '2017-05-27 06:57:47'),
(1039, 21, 'banners', 2, 'delete', 'Banner deleted by admin Super Admin', '2017-05-27 07:22:12'),
(1040, 21, 'banners', 3, 'add', 'Banner 3 added by admin Super Admin', '2017-05-27 07:24:27'),
(1041, 21, 'banners', 3, 'delete', 'Banner deleted by admin Super Admin', '2017-05-27 07:54:11'),
(1042, 21, 'banners', 4, 'add', 'Banner 4 added by admin Super Admin', '2017-05-27 07:54:22'),
(1043, 21, 'banners', 4, 'delete', 'Banner deleted by admin Super Admin', '2017-05-27 07:54:39'),
(1044, 21, 'banners', 5, 'add', 'Banner 5 added by admin Super Admin', '2017-05-27 07:54:59'),
(1045, 21, 'banners', 5, 'edit', 'Banner5 edited by admin Super Admin', '2017-05-27 09:18:24'),
(1046, 21, 'banners', 5, 'edit', 'Banner5 edited by admin Super Admin', '2017-05-27 09:18:50'),
(1047, 21, 'banners', 6, 'add', 'Banner 6 added by admin Super Admin', '2017-05-27 09:19:24'),
(1048, 21, 'banners', 7, 'add', 'Banner 7 added by admin Super Admin', '2017-05-27 09:19:40'),
(1049, 21, 'banners', 8, 'add', 'Banner 8 added by admin Super Admin', '2017-05-27 09:19:57'),
(1050, 21, 'actual_links', 4, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-06-01 05:27:21'),
(1051, 21, 'actual_links', 54, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-06-01 05:27:21'),
(1052, 21, 'actual_links', 4, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-06-01 05:27:41'),
(1053, 21, 'actual_links', 52, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-06-01 05:27:41'),
(1054, 21, 'actual_links', 58, 'ajax_sort', 'Link sorted by admin Super Admin', '2017-06-01 05:27:41'),
(1055, 21, 'banners', 8, 'ajax_sort', 'Banner sorted by admin Super Admin', '2017-06-01 08:17:05'),
(1056, 21, 'banners', 5, 'ajax_sort', 'Banner sorted by admin Super Admin', '2017-06-01 08:17:05'),
(1057, 21, 'banners', 6, 'ajax_sort', 'Banner sorted by admin Super Admin', '2017-06-01 08:17:05'),
(1058, 21, 'banners', 7, 'ajax_sort', 'Banner sorted by admin Super Admin', '2017-06-01 08:17:05'),
(1059, 21, 'banners', 7, 'ajax_sort', 'Banner sorted by admin Super Admin', '2017-06-01 09:56:35'),
(1060, 21, 'banners', 6, 'ajax_sort', 'Banner sorted by admin Super Admin', '2017-06-01 09:56:35'),
(1061, 21, 'banners', 6, 'ajax_sort', 'Banner sorted by admin Super Admin', '2017-06-01 09:57:39'),
(1062, 21, 'banners', 7, 'ajax_sort', 'Banner sorted by admin Super Admin', '2017-06-01 09:57:39'),
(1063, 21, 'banners', 5, 'ajax_sort', 'Banner sorted by admin Super Admin', '2017-06-01 10:20:03'),
(1064, 21, 'banners', 8, 'ajax_sort', 'Banner sorted by admin Super Admin', '2017-06-01 10:20:03'),
(1065, 21, 'menu', 1, 'edit', 'Menu item modified by admin Super Admin', '2017-06-08 15:22:08'),
(1066, 21, 'menu', 17, 'edit', 'Menu item modified by admin Super Admin', '2017-06-12 16:35:02'),
(1067, 21, 'banners', 8, 'delete', 'Banner deleted by admin Super Admin', '2017-06-13 16:40:04'),
(1068, 21, 'banners', 7, 'ajax_sort', 'Banner sorted by admin Super Admin', '2017-06-23 14:43:05'),
(1069, 21, 'banners', 5, 'ajax_sort', 'Banner sorted by admin Super Admin', '2017-06-23 14:43:05'),
(1070, 21, 'banners', 5, 'ajax_sort', 'Banner sorted by admin Super Admin', '2017-06-23 14:43:07'),
(1071, 21, 'banners', 7, 'ajax_sort', 'Banner sorted by admin Super Admin', '2017-06-23 14:43:07'),
(1072, 21, 'menu', 1, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-06-23 15:09:40'),
(1073, 21, 'menu', 17, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-06-23 15:09:47'),
(1074, 21, 'menu', 19, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-06-23 15:09:53'),
(1075, 21, 'menu', 16, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-06-23 15:09:58'),
(1076, 21, 'menu', 20, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-06-23 15:10:03'),
(1077, 21, 'menu', 51, 'add', 'Menu item added by admin Super Admin', '2017-06-23 15:34:10'),
(1078, 21, 'menu', 52, 'add', 'Menu item added by admin Super Admin', '2017-06-23 15:35:30'),
(1079, 21, 'menu', 53, 'add', 'Menu item added by admin Super Admin', '2017-06-23 15:35:53'),
(1080, 21, 'menu', 54, 'add', 'Menu item added by admin Super Admin', '2017-06-23 15:36:20'),
(1081, 21, 'menu', 55, 'add', 'Menu item added by admin Super Admin', '2017-06-23 15:36:35'),
(1082, 21, 'menu', 56, 'add', 'Menu item added by admin Super Admin', '2017-06-23 15:49:15'),
(1083, 21, 'menu', 57, 'add', 'Menu item added by admin Super Admin', '2017-06-23 16:21:20'),
(1084, 21, 'menu', 58, 'add', 'Menu item added by admin Super Admin', '2017-06-23 16:21:54'),
(1085, 21, 'menu', 59, 'add', 'Menu item added by admin Super Admin', '2017-06-23 16:26:47'),
(1086, 21, 'menu', 60, 'add', 'Menu item added by admin Super Admin', '2017-06-23 16:35:55'),
(1087, 21, 'menu', 61, 'add', 'Menu item added by admin Super Admin', '2017-06-23 16:36:36'),
(1088, 21, 'menu', 62, 'add', 'Menu item added by admin Super Admin', '2017-06-23 16:37:01'),
(1089, 21, 'menu', 63, 'add', 'Menu item added by admin Super Admin', '2017-06-23 16:37:23'),
(1090, 21, 'banners', 5, 'delete', 'Banner deleted by admin Super Admin', '2017-06-25 18:33:07'),
(1091, 21, 'banners', 7, 'delete', 'Banner deleted by admin Super Admin', '2017-06-25 18:33:13'),
(1092, 21, 'banners', 6, 'delete', 'Banner deleted by admin Super Admin', '2017-06-25 18:33:17'),
(1093, 21, 'banners', 9, 'add', 'Banner 9 added by admin Super Admin', '2017-06-25 18:34:41'),
(1094, 21, 'banners', 10, 'add', 'Banner 10 added by admin Super Admin', '2017-06-25 18:36:45'),
(1095, 21, 'banners', 11, 'add', 'Banner 11 added by admin Super Admin', '2017-06-25 18:36:53'),
(1096, 21, 'banners', 12, 'add', 'Banner 12 added by admin Super Admin', '2017-06-25 18:37:02'),
(1097, 21, 'banners', 13, 'add', 'Banner 13 added by admin Super Admin', '2017-06-25 18:37:12'),
(1098, 21, 'news', 4, 'delete', 'News moved to recycle bin by admin Super Admin', '2017-06-29 22:05:07'),
(1099, 21, 'news', 16, 'delete', 'News moved to recycle bin by admin Super Admin', '2017-06-29 22:23:50'),
(1100, 21, 'news', 23, 'delete', 'News moved to recycle bin by admin Super Admin', '2017-06-29 22:24:32'),
(1101, 21, 'news', 65, 'add', 'News added by admin Super Admin', '2017-06-29 22:30:44'),
(1102, 21, 'news', 65, 'edit', 'News modified by admin Super Admin', '2017-06-29 22:46:53'),
(1103, 21, 'news', 65, 'edit', 'News modified by admin Super Admin', '2017-06-29 22:52:29'),
(1104, 21, 'news', 66, 'add', 'News added by admin Super Admin', '2017-06-29 22:54:42'),
(1105, 21, 'news', 67, 'add', 'News added by admin Super Admin', '2017-06-29 22:59:29'),
(1106, 21, 'news', 68, 'add', 'News added by admin Super Admin', '2017-06-29 23:00:22'),
(1107, 21, 'galleries', 1, 'delete', 'Gallery album moved to recycle bin by admin Super Admin', '2017-06-29 23:05:29'),
(1108, 21, 'galleries', 9, 'delete', 'Gallery album moved to recycle bin by admin Super Admin', '2017-06-29 23:05:35'),
(1109, 21, 'galleries', 11, 'add', 'Gallery album added by admin Super Admin', '2017-06-29 23:08:25'),
(1110, 21, 'galleries', 11, 'edit', 'Gallery album modified by admin Super Admin', '2017-06-29 23:27:25'),
(1111, 21, 'cms_users', 17, 'erase', 'User erased by admin Super Admin', '2017-06-30 15:59:20'),
(1112, 21, 'cms_users', 18, 'erase', 'User erased by admin Super Admin', '2017-06-30 15:59:27'),
(1113, 21, 'cms_users', 19, 'erase', 'User erased by admin Super Admin', '2017-06-30 15:59:35'),
(1114, 21, 'cms_users', 16, 'erase', 'User erased by admin Super Admin', '2017-06-30 15:59:41'),
(1115, 21, 'galleries', 12, 'delete', 'Gallery album moved to recycle bin by admin Super Admin', '2017-06-30 21:13:50'),
(1116, 21, 'galleries', 13, 'delete', 'Gallery album moved to recycle bin by admin Super Admin', '2017-06-30 21:19:38'),
(1117, 21, 'galleries', 14, 'add', 'Gallery album added by admin Super Admin', '2017-06-30 21:20:17'),
(1118, 21, 'galleries', 11, 'delete', 'Gallery album moved to recycle bin by admin Super Admin', '2017-06-30 21:20:41'),
(1119, 21, 'galleries', 14, 'delete', 'Gallery album moved to recycle bin by admin Super Admin', '2017-06-30 21:26:14'),
(1120, 21, 'galleries', 15, 'add', 'Gallery album added by admin Super Admin', '2017-06-30 21:28:17'),
(1121, 21, 'news', 68, 'edit', 'News modified by admin Super Admin', '2017-06-30 22:22:21'),
(1122, 21, 'news', 68, 'edit', 'News modified by admin Super Admin', '2017-06-30 22:25:42'),
(1123, 21, 'news', 69, 'add', 'News added by admin Super Admin', '2017-06-30 22:54:05'),
(1124, 21, 'news', 69, 'delete', 'News moved to recycle bin by admin Super Admin', '2017-06-30 22:54:21'),
(1125, 21, 'articles', 33, 'add', 'Article added by admin Super Admin', '2017-07-01 13:14:41'),
(1126, 21, 'articles', 33, 'delete', 'Article moved to recycle bin by admin Super Admin', '2017-07-01 13:14:50'),
(1127, 21, 'articles', 34, 'add', 'Article added by admin Super Admin', '2017-07-01 13:17:39'),
(1128, 21, 'menu', 52, 'edit', 'Menu item modified by admin Super Admin', '2017-07-02 20:43:13'),
(1129, 21, 'menu', 52, 'edit', 'Menu item modified by admin Super Admin', '2017-07-02 20:48:11'),
(1130, 21, 'menu', 52, 'edit', 'Menu item modified by admin Super Admin', '2017-07-02 21:18:04'),
(1131, 21, 'menu', 52, 'edit', 'Menu item modified by admin Super Admin', '2017-07-02 21:19:11'),
(1132, 21, 'menu', 57, 'edit', 'Menu item modified by admin Super Admin', '2017-07-02 21:24:33'),
(1133, 21, 'menu', 57, 'edit', 'Menu item modified by admin Super Admin', '2017-07-02 21:25:07'),
(1134, 21, 'menu', 57, 'edit', 'Menu item modified by admin Super Admin', '2017-07-02 21:25:32'),
(1135, 21, 'articles', 27, 'edit', 'Article modified by admin Super Admin', '2017-07-04 13:05:05'),
(1136, 21, 'articles', 24, 'edit', 'Article modified by admin Super Admin', '2017-07-04 13:05:36'),
(1137, 21, 'articles', 24, 'edit', 'Article modified by admin Super Admin', '2017-07-04 13:06:01'),
(1138, 21, 'articles', 23, 'edit', 'Article modified by admin Super Admin', '2017-07-04 13:15:50'),
(1139, 21, 'articles', 7, 'delete', 'Article moved to recycle bin by admin Super Admin', '2017-07-04 13:17:33'),
(1140, 21, 'articles', 8, 'delete', 'Article moved to recycle bin by admin Super Admin', '2017-07-04 13:17:42'),
(1141, 21, 'articles', 10, 'delete', 'Article moved to recycle bin by admin Super Admin', '2017-07-04 13:17:48'),
(1142, 21, 'articles', 15, 'delete', 'Article moved to recycle bin by admin Super Admin', '2017-07-04 13:17:55'),
(1143, 21, 'articles', 4, 'delete', 'Article moved to recycle bin by admin Super Admin', '2017-07-04 13:18:03'),
(1144, 21, 'articles', 17, 'delete', 'Article moved to recycle bin by admin Super Admin', '2017-07-04 13:18:10'),
(1145, 21, 'articles', 18, 'delete', 'Article moved to recycle bin by admin Super Admin', '2017-07-04 13:18:16'),
(1146, 21, 'articles', 16, 'delete', 'Article moved to recycle bin by admin Super Admin', '2017-07-04 13:18:23'),
(1147, 21, 'articles', 14, 'delete', 'Article moved to recycle bin by admin Super Admin', '2017-07-04 13:18:30'),
(1148, 21, 'articles', 13, 'delete', 'Article moved to recycle bin by admin Super Admin', '2017-07-04 13:18:36'),
(1149, 21, 'articles', 20, 'delete', 'Article moved to recycle bin by admin Super Admin', '2017-07-04 13:18:43'),
(1150, 21, 'menu', 56, 'edit', 'Menu item modified by admin Super Admin', '2017-07-04 13:24:15'),
(1151, 21, 'menu', 63, 'edit', 'Menu item modified by admin Super Admin', '2017-07-04 13:24:29'),
(1152, 21, 'articles', 27, 'edit', 'Article modified by admin Super Admin', '2017-07-04 15:19:57'),
(1153, 21, 'articles', 27, 'edit', 'Article modified by admin Super Admin', '2017-07-04 15:20:29'),
(1154, 21, 'articles', 27, 'edit', 'Article modified by admin Super Admin', '2017-07-04 15:31:52'),
(1155, 21, 'news', 70, 'add', 'News added by admin Super Admin', '2017-07-04 19:02:59'),
(1156, 21, 'news', 71, 'add', 'News added by admin Super Admin', '2017-07-04 19:03:24'),
(1157, 21, 'news', 71, 'delete', 'News moved to recycle bin by admin Super Admin', '2017-07-04 19:10:28'),
(1158, 21, 'news', 72, 'add', 'News added by admin Super Admin', '2017-07-04 23:51:21'),
(1159, 21, 'news', 73, 'add', 'News added by admin Super Admin', '2017-07-04 23:55:01'),
(1160, 21, 'news', 74, 'add', 'News added by admin Super Admin', '2017-07-04 23:55:48'),
(1161, 21, 'news', 72, 'delete', 'News moved to recycle bin by admin Super Admin', '2017-07-04 23:56:17'),
(1162, 21, 'news', 73, 'delete', 'News moved to recycle bin by admin Super Admin', '2017-07-04 23:59:13'),
(1163, 21, 'news', 74, 'delete', 'News moved to recycle bin by admin Super Admin', '2017-07-04 23:59:19'),
(1164, 21, 'news', 68, 'edit', 'News modified by admin Super Admin', '2017-07-04 23:59:52'),
(1165, 21, 'menu', 64, 'add', 'Menu item added by admin Super Admin', '2017-07-05 02:23:36'),
(1166, 21, 'menu', 65, 'add', 'Menu item added by admin Super Admin', '2017-07-05 02:30:21'),
(1167, 21, 'menu', 66, 'add', 'Menu item added by admin Super Admin', '2017-07-05 02:31:47'),
(1168, 21, 'menu', 67, 'add', 'Menu item added by admin Super Admin', '2017-07-05 02:32:24'),
(1169, 21, 'menu', 64, 'edit', 'Menu item modified by admin Super Admin', '2017-07-05 02:43:51'),
(1170, 21, 'menu', 66, 'edit', 'Menu item modified by admin Super Admin', '2017-07-05 02:44:02'),
(1171, 21, 'menu', 67, 'edit', 'Menu item modified by admin Super Admin', '2017-07-05 02:44:36'),
(1172, 21, 'menu', 67, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-08-28 13:52:28'),
(1173, 21, 'menu', 66, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-08-28 13:52:36'),
(1174, 21, 'menu', 65, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-08-28 13:52:56'),
(1175, 21, 'menu', 64, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-08-28 13:53:05'),
(1176, 21, 'menu', 63, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-08-28 13:53:11'),
(1177, 21, 'menu', 62, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-08-28 13:53:16'),
(1178, 21, 'menu', 61, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-08-28 13:53:22'),
(1179, 21, 'menu', 60, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-08-28 13:53:27'),
(1180, 21, 'menu', 59, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-08-28 13:53:35'),
(1181, 21, 'menu', 58, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-08-28 13:53:42'),
(1182, 21, 'menu', 57, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-08-28 13:53:48'),
(1183, 21, 'menu', 56, 'delete', 'Menu item moved to recycle bin by admin Super Admin', '2017-08-28 13:54:05'),
(1184, 21, 'menu', 51, 'edit', 'Menu item modified by admin Super Admin', '2017-08-28 16:37:27'),
(1185, 21, 'menu', 52, 'edit', 'Menu item modified by admin Super Admin', '2017-08-30 09:26:57'),
(1186, 21, 'menu', 52, 'edit', 'Menu item modified by admin Super Admin', '2017-08-30 09:29:31'),
(1187, 21, 'menu', 53, 'edit', 'Menu item modified by admin Super Admin', '2017-08-30 09:30:03'),
(1188, 21, 'menu', 54, 'edit', 'Menu item modified by admin Super Admin', '2017-08-30 09:30:38'),
(1189, 21, 'menu', 55, 'edit', 'Menu item modified by admin Super Admin', '2017-08-30 09:31:02'),
(1190, 21, 'menu', 68, 'add', 'Menu item added by admin Super Admin', '2017-08-30 09:31:36'),
(1191, 21, 'menu', 69, 'add', 'Menu item added by admin Super Admin', '2017-08-30 09:32:14'),
(1192, 21, 'menu', 70, 'add', 'Menu item added by admin Super Admin', '2017-08-30 09:32:43'),
(1193, 21, 'menu', 71, 'add', 'Menu item added by admin Super Admin', '2017-08-30 09:32:59'),
(1194, 21, 'menu', 72, 'add', 'Menu item added by admin Super Admin', '2017-08-30 09:33:19'),
(1195, 21, 'menu', 73, 'add', 'Menu item added by admin Super Admin', '2017-08-30 09:33:38'),
(1196, 21, 'menu', 74, 'add', 'Menu item added by admin Super Admin', '2017-08-30 09:33:57'),
(1197, 21, 'articles', 34, 'edit', 'Article modified by admin Super Admin', '2017-08-30 09:38:11'),
(1198, 21, 'articles', 34, 'edit', 'Article modified by admin Super Admin', '2017-08-30 12:05:45'),
(1199, 21, 'articles', 34, 'edit', 'Article modified by admin Super Admin', '2017-08-30 12:13:34'),
(1200, 21, 'articles', 34, 'edit', 'Article modified by admin Super Admin', '2017-08-30 12:19:48'),
(1201, 21, 'articles', 34, 'edit', 'Article modified by admin Super Admin', '2017-08-30 12:20:01'),
(1202, 21, 'articles', 34, 'edit', 'Article modified by admin Super Admin', '2017-08-30 12:20:31'),
(1203, 21, 'articles', 34, 'edit', 'Article modified by admin Super Admin', '2017-08-30 12:32:59'),
(1204, 21, 'articles', 34, 'edit', 'Article modified by admin Super Admin', '2017-08-30 12:33:07'),
(1205, 21, 'menu', 52, 'edit', 'Menu item modified by admin Super Admin', '2017-08-31 09:27:34'),
(1206, 21, 'articles', 27, 'edit', 'Article modified by admin Super Admin', '2017-08-31 14:39:35'),
(1207, 21, 'articles', 27, 'edit', 'Article modified by admin Super Admin', '2017-08-31 14:40:19'),
(1208, 21, 'site_settings', 11, 'edit', 'Setting footer_text edited by admin Super Admin', '2017-09-04 08:59:52'),
(1209, 21, 'site_settings', 11, 'edit', 'Setting footer_text edited by admin Super Admin', '2017-09-04 09:56:48'),
(1210, 21, 'site_settings', 11, 'edit', 'Setting footer_text edited by admin Super Admin', '2017-09-04 09:58:19'),
(1211, 21, 'site_settings', 11, 'edit', 'Setting footer_text edited by admin Super Admin', '2017-09-04 10:01:39'),
(1212, 21, 'site_settings', 11, 'edit', 'Setting footer_text edited by admin Super Admin', '2017-09-04 10:08:04'),
(1213, 21, 'site_settings', 11, 'edit', 'Setting footer_text edited by admin Super Admin', '2017-09-04 10:08:53'),
(1214, 21, 'site_settings', 11, 'edit', 'Setting footer_text edited by admin Super Admin', '2017-09-04 10:09:01'),
(1215, 21, 'site_settings', 11, 'edit', 'Setting footer_text edited by admin Super Admin', '2017-09-04 10:09:05'),
(1216, 21, 'site_settings', 11, 'edit', 'Setting footer_text edited by admin Super Admin', '2017-09-04 10:09:10'),
(1217, 21, 'site_settings', 11, 'edit', 'Setting footer_text edited by admin Super Admin', '2017-09-04 10:09:15'),
(1218, 21, 'site_settings', 11, 'edit', 'Setting footer_text edited by admin Super Admin', '2017-09-04 10:11:06'),
(1219, 21, 'site_settings', 11, 'edit', 'Setting footer_text edited by admin Super Admin', '2017-09-04 10:11:11'),
(1220, 21, 'site_settings', 11, 'edit', 'Setting footer_text edited by admin Super Admin', '2017-09-04 10:12:57'),
(1221, 21, 'site_settings', 11, 'edit', 'Setting footer_text edited by admin Super Admin', '2017-09-04 10:23:03'),
(1222, 21, 'site_settings', 11, 'edit', 'Setting footer_text edited by admin Super Admin', '2017-09-04 10:23:11'),
(1223, 21, 'menu', 70, 'edit', 'Menu item modified by admin Super Admin', '2017-09-04 10:28:21'),
(1224, 21, 'menu', 71, 'edit', 'Menu item modified by admin Super Admin', '2017-09-05 16:08:41'),
(1225, 21, 'cms_users', 22, 'add', 'User test added by admin Super Admin', '2017-09-08 12:17:13'),
(1226, 21, 'cms_users', 22, 'erase', 'User erased by admin Super Admin', '2017-09-08 12:17:52'),
(1227, 21, 'cms_users', 23, 'add', 'User Tets added by admin Super Admin', '2017-09-08 12:18:12'),
(1228, 21, 'cms_users', 21, 'erase', 'User erased by admin Super Admin', '2017-09-08 12:18:29'),
(1229, 23, 'cms_users', 23, 'edit', 'User Tets modified by admin Tets', '2017-09-08 12:31:18'),
(1230, 23, 'cms_users', 23, 'edit', 'User Tets modified by admin Tets', '2017-09-08 12:31:27'),
(1231, 23, 'cms_users', 23, 'edit', 'User Tets modified by admin Tets', '2017-09-08 12:31:41'),
(1232, 23, 'cms_users', 24, 'add', 'User Super Admin added by admin Tets', '2017-09-08 12:32:14'),
(1233, 23, 'cms_users', 23, 'erase', 'User erased by admin Tets', '2017-09-08 12:32:21'),
(1234, 24, 'cms_users', 24, 'edit', 'User blocked by admin Super Admin', '2017-09-08 12:37:57'),
(1235, 24, 'cms_users', 25, 'add', 'User вававав added by admin Super Admin', '2017-09-08 12:42:56'),
(1236, 24, 'cms_users', 25, 'edit', 'User blocked by admin Super Admin', '2017-09-08 12:42:59'),
(1237, 24, 'cms_users', 25, 'edit', 'User unblocked by admin Super Admin', '2017-09-08 12:43:00'),
(1238, 24, 'cms_users', 25, 'edit', 'User blocked by admin Super Admin', '2017-09-08 12:43:02'),
(1239, 24, 'cms_users', 25, 'edit', 'User unblocked by admin Super Admin', '2017-09-08 12:43:02'),
(1240, 24, 'cms_users', 25, 'erase', 'User erased by admin Super Admin', '2017-09-08 12:43:39'),
(1241, 24, 'phonebook', 2, 'ajax_sort', 'Phonebook sorted by admin Super Admin', '2017-09-09 12:01:26'),
(1242, 24, 'phonebook', 1, 'ajax_sort', 'Phonebook sorted by admin Super Admin', '2017-09-09 12:01:26'),
(1243, 24, 'phonebook', 1, 'delete', 'Phonebook deleted by admin Super Admin', '2017-09-09 12:01:49'),
(1244, 24, 'phonebook', 2, 'edit', 'Phonebook2 edited by admin Super Admin', '2017-09-09 14:25:44'),
(1245, 24, 'personalities', 2, 'add', 'Personalities 2 added by admin Super Admin', '2017-09-12 10:41:14'),
(1246, 24, 'personalities', 3, 'add', 'Personalities 3 added by admin Super Admin', '2017-09-12 10:44:10'),
(1247, 24, 'personalities', 3, 'delete', 'personalities deleted by admin Super Admin', '2017-09-12 10:44:17'),
(1248, 24, 'personalities', 4, 'add', 'Personalities 4 added by admin Super Admin', '2017-09-12 10:45:00'),
(1249, 24, 'personalities', 5, 'add', 'Personalities 5 added by admin Super Admin', '2017-09-12 22:02:56'),
(1250, 24, 'menu', 75, 'add', 'Menu item added by admin Super Admin', '2017-09-14 11:43:40'),
(1251, 24, 'menu', 76, 'add', 'Menu item added by admin Super Admin', '2017-09-14 11:45:04'),
(1252, 24, 'personalities', 5, 'edit', 'Personalities5 edited by admin Super Admin', '2017-09-14 11:46:11'),
(1253, 24, 'personalities', 6, 'add', 'Personalities 6 added by admin Super Admin', '2017-09-14 11:46:55'),
(1254, 24, 'personalities', 6, 'delete', 'personalities deleted by admin Super Admin', '2017-09-14 11:56:13'),
(1255, 24, 'personalities', 5, 'delete', 'personalities deleted by admin Super Admin', '2017-09-14 12:03:38'),
(1256, 24, 'personalities', 4, 'edit', 'Personalities4 edited by admin Super Admin', '2017-09-14 12:05:47'),
(1257, 24, 'personalities', 4, 'edit', 'Personalities4 edited by admin Super Admin', '2017-09-14 12:06:13'),
(1258, 24, 'personalities', 7, 'add', 'Personalities 7 added by admin Super Admin', '2017-09-14 12:06:44'),
(1259, 24, 'personalities', 7, 'delete', 'personalities deleted by admin Super Admin', '2017-09-14 12:07:10'),
(1260, 24, 'personalities', 8, 'add', 'Personalities 8 added by admin Super Admin', '2017-09-14 12:07:24'),
(1261, 24, 'personalities', 8, 'delete', 'personalities deleted by admin Super Admin', '2017-09-14 12:07:32'),
(1262, 24, 'personalities', 2, 'edit', 'Personalities2 edited by admin Super Admin', '2017-09-14 12:15:48'),
(1263, 24, 'personalities', 4, 'edit', 'Personalities4 edited by admin Super Admin', '2017-09-14 12:16:08'),
(1264, 24, 'galleries', 15, 'delete', 'Gallery album moved to recycle bin by admin Super Admin', '2017-09-14 15:17:47'),
(1265, 24, 'galleries', 16, 'add', 'Gallery album added by admin Super Admin', '2017-09-14 15:18:20'),
(1266, 24, 'menu', 54, 'edit', 'Menu item modified by admin Super Admin', '2017-09-16 09:57:01'),
(1267, 24, 'galleries', 16, 'delete', 'Gallery album moved to recycle bin by admin Super Admin', '2017-09-16 14:13:03'),
(1268, 24, 'galleries', 17, 'add', 'Gallery album added by admin Super Admin', '2017-09-16 14:13:18'),
(1269, 24, 'galleries', 17, 'delete', 'Gallery album moved to recycle bin by admin Super Admin', '2017-09-16 14:13:34'),
(1270, 24, 'galleries', 18, 'add', 'Gallery album added by admin Super Admin', '2017-09-16 14:13:51'),
(1271, 24, 'galleries', 18, 'delete', 'Gallery album moved to recycle bin by admin Super Admin', '2017-09-16 14:17:06'),
(1272, 24, 'galleries', 19, 'delete', 'Gallery album moved to recycle bin by admin Super Admin', '2017-09-16 14:31:19'),
(1273, 24, 'galleries', 20, 'delete', 'Gallery album moved to recycle bin by admin Super Admin', '2017-09-16 14:31:25'),
(1274, 24, 'galleries', 21, 'delete', 'Gallery album moved to recycle bin by admin Super Admin', '2017-09-16 14:31:29'),
(1275, 24, 'galleries', 22, 'delete', 'Gallery album moved to recycle bin by admin Super Admin', '2017-09-16 14:31:33'),
(1276, 24, 'galleries', 23, 'delete', 'Gallery album moved to recycle bin by admin Super Admin', '2017-09-16 14:31:38'),
(1277, 24, 'galleries', 24, 'add', 'Gallery album added by admin Super Admin', '2017-09-16 14:31:51'),
(1278, 24, 'galleries', 24, 'delete', 'Gallery album moved to recycle bin by admin Super Admin', '2017-09-16 14:32:05'),
(1279, 24, 'galleries', 25, 'delete', 'Gallery album moved to recycle bin by admin Super Admin', '2017-09-16 14:35:44'),
(1280, 24, 'galleries', 26, 'add', 'Gallery album added by admin Super Admin', '2017-09-16 14:36:54'),
(1281, 24, 'galleries', 26, 'delete', 'Gallery album moved to recycle bin by admin Super Admin', '2017-09-16 14:38:16'),
(1282, 24, 'galleries', 27, 'add', 'Gallery album added by admin Super Admin', '2017-09-16 14:38:40'),
(1283, 24, 'phonebook', 2, 'delete', 'Phonebook deleted by admin Super Admin', '2017-09-22 10:33:44'),
(1284, 24, 'phonebook', 3, 'edit', 'Phonebook3 edited by admin Super Admin', '2017-09-22 10:36:14');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `login` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `role` char(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'admin',
  `password` char(96) COLLATE utf8_unicode_ci NOT NULL,
  `name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'az',
  `reg_by` int(10) UNSIGNED NOT NULL,
  `reg_date` datetime NOT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `is_blocked` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `cms_users`
--

INSERT INTO `cms_users` (`id`, `login`, `role`, `password`, `name`, `avatar`, `lang`, `reg_by`, `reg_date`, `last_login_date`, `is_blocked`) VALUES
(24, 'admin@saracli.com', 'admin', 'f8fdc24f87edb2fd8dbda2f6dcf4a3c8e80dc28bf53b621f38abaccf3c5424eab50107dcc7716462397fd396e7764883', 'Super Admin', NULL, 'az', 23, '2017-09-08 12:32:14', '2017-09-22 10:33:16', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_users_actions`
--

CREATE TABLE `cms_users_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `cms_user_id` int(10) UNSIGNED NOT NULL,
  `controller` varchar(32) NOT NULL DEFAULT 'base',
  `action` varchar(32) NOT NULL DEFAULT '404',
  `is_readonly` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_users_menu_sections_rel`
--

CREATE TABLE `cms_users_menu_sections_rel` (
  `id` int(10) UNSIGNED NOT NULL,
  `cms_user_id` int(10) UNSIGNED NOT NULL,
  `menu_section_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cms_users_menu_sections_rel`
--

INSERT INTO `cms_users_menu_sections_rel` (`id`, `cms_user_id`, `menu_section_id`) VALUES
(1, 13, 18),
(3, 13, 26),
(4, 13, 29);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_users_roles_actions`
--

CREATE TABLE `cms_users_roles_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(32) NOT NULL DEFAULT 'all',
  `controller` varchar(32) NOT NULL DEFAULT 'base',
  `action` varchar(32) NOT NULL DEFAULT '404',
  `is_readonly` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cms_users_roles_actions`
--

INSERT INTO `cms_users_roles_actions` (`id`, `role`, `controller`, `action`, `is_readonly`) VALUES
(0, 'all', 'base', 'password_recovery', '0'),
(2, 'all', 'base', 'sign_out', '0'),
(3, 'all', 'base', 'sign_in', '0'),
(4, 'all', 'base', '404', '0'),
(5, 'all', 'base', 'change_password', '0'),
(6, 'all', 'base', 'ulogin', '0'),
(7, 'admin', 'cms_users', 'list', '0'),
(8, 'admin', 'statistics', 'dashboard', '0'),
(9, 'admin', 'cms_users', 'add', '0'),
(10, 'admin', 'cms_users', 'manage_privilegies', '0'),
(11, 'admin', 'cms_users', 'delete', '0'),
(12, 'admin', 'cms_users', 'edit', '0'),
(13, 'admin', 'site_users', 'list', '0'),
(14, 'admin', 'site_users', 'ajax_set_ban', '0'),
(15, 'admin', 'cms_users', 'ajax_set_ban', '0'),
(16, 'admin', 'site_users', 'delete', '0'),
(17, 'admin', 'site_users', 'view_info', '0'),
(18, 'admin', 'comments', 'list', '0'),
(19, 'admin', 'comments', 'edit', '0'),
(20, 'admin', 'comments', 'ajax_set_status', '0'),
(21, 'admin', 'comments', 'delete', '0'),
(22, 'admin', 'articles', 'list', '0'),
(23, 'admin', 'articles', 'edit', '0'),
(24, 'admin', 'articles', 'add', '0'),
(25, 'admin', 'articles', 'delete', '0'),
(26, 'admin', 'articles', 'ajax_set_status', '0'),
(27, 'admin', 'articles', 'ajax_sort', '0'),
(28, 'admin', 'articles', 'ajax_paged_sort', '0'),
(29, 'admin', 'articles', 'ajax_get_autocomplete', '0'),
(30, 'admin', 'articles', 'ajax_delete_image', '0'),
(31, 'admin', 'gallery', 'ajax_get_autocomplete', '0'),
(32, 'admin', 'gallery', 'list', '0'),
(33, 'admin', 'gallery', 'edit', '0'),
(34, 'admin', 'gallery', 'add', '0'),
(35, 'admin', 'gallery', 'ajax_set_status', '0'),
(36, 'admin', 'gallery', 'photos', '0'),
(37, 'admin', 'gallery', 'delete', '0'),
(38, 'admin', 'pages', 'list', '0'),
(39, 'admin', 'nav', 'list', '0'),
(40, 'admin', 'nav', 'delete', '0'),
(48, 'admin', 'keywords', 'list', '0'),
(43, 'admin', 'nav', 'add', '0'),
(44, 'admin', 'nav', 'ajax', '0'),
(45, 'admin', 'nav', 'autocomplete', '0'),
(46, 'admin', 'nav', 'set_parent', '0'),
(47, 'admin', 'nav', 'set_position', '0'),
(49, 'admin', 'keywords', 'add', '0'),
(50, 'admin', 'keywords', 'edit', '0'),
(51, 'admin', 'keywords', 'delete', '0'),
(52, 'admin', 'keywords', 'add_by_value', '0'),
(60, 'admin', 'news', 'edit', '0'),
(58, 'admin', 'news', 'list', '0'),
(62, 'admin', 'news', 'add', '0'),
(64, 'admin', 'news', 'delete', '0'),
(66, 'admin', 'news', 'ajax_set_status', '0'),
(68, 'admin', 'news', 'ajax_sort', '0'),
(70, 'admin', 'news', 'ajax_paged_sort', '0'),
(72, 'admin', 'news', 'ajax_get_autocomplete', '0'),
(74, 'admin', 'news', 'ajax_delete_image', '0'),
(76, 'admin', 'documents_type', 'delete', '0'),
(78, 'admin', 'documents_type', 'add', '0'),
(80, 'admin', 'documents_type', 'list', '0'),
(82, 'admin', 'actual_links', 'list', '0'),
(84, 'admin', 'actual_links', 'add', '0'),
(86, 'admin', 'actual_links', 'delete', '0'),
(88, 'admin', 'actual_links', 'ajax_sort', '0'),
(90, 'admin', 'settings', 'edit', '0'),
(92, 'admin', 'settings', 'delete', '0'),
(94, 'admin', 'settings', 'list', '0'),
(95, 'admin', 'banners', 'list', '0'),
(96, 'admin', 'banners', 'add', '0'),
(97, 'admin', 'banners', 'edit', '0'),
(98, 'admin', 'banners', 'delete', '0'),
(99, 'admin', 'banners', 'ajax_sort', '0'),
(100, 'admin', 'phonebook', 'list', '0'),
(101, 'admin', 'phonebook', 'edit', '0'),
(102, 'admin', 'phonebook', 'delete', '0'),
(103, 'admin', 'phonebook', 'ajax_sort', '0'),
(104, 'admin', 'personalities', 'list', '0'),
(105, 'admin', 'personalities', 'add', '0'),
(106, 'admin', 'personalities', 'edit', '0'),
(107, 'admin', 'personalities', 'ajax_sort', '0'),
(108, 'admin', 'personalities', 'delete', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `answered_comment_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ref_table` char(64) NOT NULL,
  `ref_id` int(10) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_datetime` datetime NOT NULL,
  `is_published` enum('1','0') NOT NULL DEFAULT '1',
  `is_inspected` enum('0','1') NOT NULL DEFAULT '0',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `answered_comment_id`, `user_id`, `ref_table`, `ref_id`, `text`, `add_datetime`, `is_published`, `is_inspected`, `is_deleted`) VALUES
(1, NULL, 10, 'articles', 20, 'Hey, there! I\'m writing comment!', '2016-06-09 13:20:16', '1', '1', '0'),
(2, 1, 12, 'articles', 20, 'Second comment about Masalli', '2016-06-09 13:26:36', '1', '0', '0'),
(3, NULL, 2, 'articles', 20, 'This article is genius!\r\nMy eyes leaked down to the floor)', '2016-06-09 13:28:35', '1', '0', '0'),
(4, NULL, 14, 'articles', 19, 'This community is awesome, just give them a chance.\r\n\r\nKeep up, guys!', '2016-06-09 13:30:47', '1', '1', '0'),
(5, NULL, 2, 'articles', 18, 'Doktorantlarımızla fəxr edirəm!\r\nƏfsuzlar olsun ki ozüm gələ bilmədim... ', '2016-06-10 11:29:34', '0', '1', '0'),
(7, NULL, 2, '', 0, 'bebebe', '2016-12-29 17:25:52', '1', '0', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `complaints`
--

CREATE TABLE `complaints` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tmp_name` varchar(100) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL,
  `is_read` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `complaints`
--

INSERT INTO `complaints` (`id`, `user_id`, `admin_id`, `message`, `tmp_name`, `filename`, `date`, `is_read`) VALUES
(1, 14, NULL, 'Why did you blocked me?', NULL, NULL, '2016-07-06 14:41:29', '0'),
(2, 13, NULL, 'Hey, there! I\'m writing complaints!\r\n\r\nWhatever...', NULL, NULL, '2016-07-06 15:30:42', '0'),
(3, 12, NULL, 'Why my facebook profile picture is not displaying?', NULL, NULL, '2016-07-06 17:34:11', '1'),
(6, 12, NULL, 'This', 'ne-boltai-300x285.png', 'Не болтай.png', '2016-07-06 17:35:22', '1'),
(5, 12, 1, 'Which picture?', NULL, NULL, '2016-07-06 17:26:24', '0'),
(7, 12, 1, 'No, this pucture is much better', '0a9c05bd73af5ec88f30f6e1469de74b.png', 'xsSombrero.png', '2016-07-06 17:45:11', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `content_registry`
--

CREATE TABLE `content_registry` (
  `id` int(10) UNSIGNED NOT NULL,
  `ref_table` varchar(64) NOT NULL,
  `list_link` varchar(255) NOT NULL,
  `item_link` varchar(255) NOT NULL,
  `item_page` varchar(64) NOT NULL,
  `title_column` varchar(64) NOT NULL,
  `text_column` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `content_registry`
--

INSERT INTO `content_registry` (`id`, `ref_table`, `list_link`, `item_link`, `item_page`, `title_column`, `text_column`) VALUES
(1, 'articles', '?controller=articles&action=list', '?controller=articles&action=edit&id={ref_id}', 'articles/edit', 'title', 'short'),
(2, 'debates', '?controller=debates&action=list', '?controller=debates&action=edit_poll&id={ref_id}', 'debates/edit_poll', 'title', 'text');

-- --------------------------------------------------------

--
-- Структура таблицы `documents_documents_type`
--

CREATE TABLE `documents_documents_type` (
  `id` int(5) NOT NULL,
  `document_id` int(5) NOT NULL,
  `type_id` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `documents_documents_type`
--

INSERT INTO `documents_documents_type` (`id`, `document_id`, `type_id`) VALUES
(58, 27, 4),
(56, 27, 2),
(6, 34, 6),
(8, 36, 6),
(10, 38, 6),
(12, 38, 8),
(14, 44, 4),
(16, 44, 6),
(18, 46, 4),
(20, 48, 4),
(22, 48, 6),
(60, 24, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `documents_keywords`
--

CREATE TABLE `documents_keywords` (
  `id` int(5) NOT NULL,
  `document_id` int(5) NOT NULL,
  `keyword_id` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `documents_keywords`
--

INSERT INTO `documents_keywords` (`id`, `document_id`, `keyword_id`) VALUES
(112, 27, 10),
(110, 27, 4),
(108, 27, 2),
(120, 24, 4),
(116, 54, 4),
(118, 56, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `documents_type`
--

CREATE TABLE `documents_type` (
  `id` int(5) NOT NULL,
  `type` varchar(500) NOT NULL,
  `ordering` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `documents_type`
--

INSERT INTO `documents_type` (`id`, `type`, `ordering`) VALUES
(2, 'Qanunlar', 1),
(4, 'Magistratura', 2),
(6, 'Bakalavriat', 3),
(8, 'Olimpiadalar', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `add_by` int(10) UNSIGNED NOT NULL,
  `add_datetime` datetime NOT NULL,
  `mod_by` int(10) UNSIGNED DEFAULT NULL,
  `mod_datetime` datetime DEFAULT NULL,
  `is_published` enum('1','0') NOT NULL DEFAULT '1',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='name';

--
-- Дамп данных таблицы `galleries`
--

INSERT INTO `galleries` (`id`, `add_by`, `add_datetime`, `mod_by`, `mod_datetime`, `is_published`, `is_deleted`) VALUES
(14, 21, '2017-06-30 21:20:17', NULL, NULL, '1', '1'),
(13, 21, '2017-06-30 21:16:51', NULL, NULL, '1', '1'),
(12, 21, '2017-06-30 12:00:06', NULL, NULL, '1', '1'),
(11, 21, '2017-06-29 23:08:25', 21, '2017-06-29 23:27:25', '1', '1'),
(15, 21, '2017-06-30 21:28:17', NULL, NULL, '1', '1'),
(16, 24, '2017-09-14 15:18:19', NULL, NULL, '1', '1'),
(17, 24, '2017-09-16 14:13:18', NULL, NULL, '1', '1'),
(18, 24, '2017-09-16 14:13:51', NULL, NULL, '1', '1'),
(19, 24, '2017-09-16 14:17:21', NULL, NULL, '1', '1'),
(20, 24, '2017-09-16 14:20:28', NULL, NULL, '1', '1'),
(21, 24, '2017-09-16 14:21:29', NULL, NULL, '1', '1'),
(22, 24, '2017-09-16 14:22:12', NULL, NULL, '1', '1'),
(23, 24, '2017-09-16 14:31:00', NULL, NULL, '1', '1'),
(24, 24, '2017-09-16 14:31:51', NULL, NULL, '1', '1'),
(25, 24, '2017-09-16 14:32:54', NULL, NULL, '1', '1'),
(26, 24, '2017-09-16 14:36:54', NULL, NULL, '1', '1'),
(27, 24, '2017-09-16 14:38:40', NULL, NULL, '1', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_photos`
--

CREATE TABLE `gallery_photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `gallery_id` int(10) UNSIGNED NOT NULL,
  `image` char(255) NOT NULL,
  `ordering` int(10) UNSIGNED NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `add_by` int(10) UNSIGNED NOT NULL,
  `add_datetime` datetime NOT NULL,
  `mod_by` int(10) UNSIGNED DEFAULT NULL,
  `mod_datetime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `instruction_languages`
--

CREATE TABLE `instruction_languages` (
  `id` int(3) NOT NULL,
  `ordering` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `instruction_languages`
--

INSERT INTO `instruction_languages` (`id`, `ordering`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `keywords`
--

CREATE TABLE `keywords` (
  `id` int(3) NOT NULL,
  `keyword` varchar(500) NOT NULL,
  `ordering` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `keywords`
--

INSERT INTO `keywords` (`id`, `keyword`, `ordering`) VALUES
(2, 'resmi sened', 1),
(4, 'qeyr-resmi sened', 2),
(10, 'mykeyword', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('category','url','phonebook','personalities','gallery') NOT NULL,
  `ref_table` char(64) DEFAULT NULL,
  `ref_id` int(10) UNSIGNED DEFAULT NULL,
  `url` char(255) DEFAULT NULL,
  `sef` char(80) DEFAULT NULL,
  `ordering` int(10) UNSIGNED NOT NULL,
  `add_by` int(10) UNSIGNED NOT NULL,
  `add_datetime` datetime NOT NULL,
  `mod_by` int(10) UNSIGNED DEFAULT NULL,
  `mod_datetime` datetime DEFAULT NULL,
  `is_section` enum('0','1') NOT NULL DEFAULT '0',
  `is_published` enum('1','0') NOT NULL DEFAULT '1',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='''name''';

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `parent_id`, `type`, `ref_table`, `ref_id`, `url`, `sef`, `ordering`, `add_by`, `add_datetime`, `mod_by`, `mod_datetime`, `is_section`, `is_published`, `is_deleted`) VALUES
(1, 0, 'category', NULL, NULL, '/{lang}/', 'i-bolme-tehsil-umumi-ve-mektebdenkenar-muessiselerine-ishchilerin-ishe-qebulu-il', 0, 24, '2016-05-11 12:49:42', 21, '2017-06-08 15:22:08', '0', '1', '1'),
(2, 0, 'category', NULL, NULL, NULL, 'test', 0, 24, '2016-05-11 14:48:48', 1, '2016-05-12 11:36:12', '0', '0', '1'),
(3, 0, 'category', NULL, NULL, NULL, 't2', 3, 24, '2016-05-11 14:52:22', NULL, NULL, '0', '1', '1'),
(4, 0, 'category', NULL, NULL, NULL, 't3', 5, 24, '2016-05-11 14:53:06', NULL, NULL, '0', '1', '1'),
(5, 0, 'category', NULL, NULL, NULL, 't4', 6, 24, '2016-05-11 16:27:48', NULL, NULL, '0', '1', '1'),
(6, 2, '', NULL, NULL, NULL, 't5', 1, 24, '2016-05-11 16:39:27', 1, '2016-05-12 11:36:12', '0', '1', '0'),
(7, 6, 'category', NULL, NULL, NULL, 't6', 0, 24, '2016-05-11 17:11:04', 1, '2016-05-12 11:36:12', '0', '0', '0'),
(8, 2, '', 'articles', 4, NULL, NULL, 0, 24, '2016-05-11 17:36:32', NULL, NULL, '0', '1', '0'),
(9, 10, 'category', NULL, NULL, NULL, 't7', 0, 24, '2016-05-12 11:21:30', NULL, NULL, '0', '1', '0'),
(10, 12, '', NULL, NULL, NULL, 'all-jstree-events-fire-in-a-special-.jstree-namespace---this-is-why-we-listen-fo', 0, 24, '2016-05-12 11:22:54', NULL, NULL, '0', '1', '0'),
(11, 9, 'url', NULL, NULL, '#top', NULL, 0, 24, '2016-05-12 11:25:06', 1, '2016-05-12 11:36:12', '0', '1', '0'),
(12, 13, 'url', NULL, NULL, '#', NULL, 0, 24, '2016-05-12 11:26:00', NULL, NULL, '0', '1', '0'),
(13, 6, 'url', NULL, NULL, '#', NULL, 1, 24, '2016-05-12 11:26:46', NULL, NULL, '0', '1', '0'),
(14, 0, 'url', NULL, NULL, '#', NULL, 7, 24, '2016-05-12 12:11:23', NULL, NULL, '0', '1', '1'),
(15, 0, 'url', NULL, NULL, '#', NULL, 8, 24, '2016-05-12 12:17:04', NULL, NULL, '0', '1', '1'),
(16, 0, 'category', NULL, NULL, NULL, 'emek-sheraitinin-shertlerinin-deyishilmesi-ve-bashqa-ishe-kechirme-ile-baghli-qa', 3, 24, '2016-05-12 13:09:18', 21, '2017-05-23 14:13:33', '0', '1', '1'),
(17, 0, 'url', NULL, NULL, 'http://tn-muassiselerin-qaydalari/doktorantlarin-ve-genc-tedqiqatchilarin-respublika-elmi-konfransi', 'umumtehsil', 1, 24, '2016-05-12 19:03:14', 21, '2017-06-12 16:35:02', '1', '1', '1'),
(18, 0, 'category', NULL, NULL, NULL, 'lifehack', 9, 24, '2016-05-13 10:53:52', 1, '2016-05-25 16:45:15', '1', '1', '1'),
(19, 0, 'category', NULL, NULL, NULL, 'arashdirmalar', 2, 24, '2016-05-13 10:57:35', 21, '2017-05-23 14:13:10', '1', '1', '1'),
(20, 0, 'category', NULL, NULL, NULL, 'emek-muqavilesine-xitam-verilmesi-ile-baghli-meseleler-numuneler-ve-normativ-baz', 4, 24, '2016-05-13 11:14:01', 21, '2017-05-23 14:13:50', '1', '1', '1'),
(21, 20, 'category', NULL, NULL, NULL, 'mektebli', 0, 24, '2016-05-13 11:19:43', NULL, NULL, '0', '1', '1'),
(22, 20, 'category', NULL, NULL, NULL, 'telebe', 1, 24, '2016-05-13 11:41:58', NULL, NULL, '0', '1', '1'),
(23, 20, 'category', NULL, NULL, NULL, 'abituriyent', 4, 24, '2016-05-13 11:45:24', NULL, NULL, '0', '1', '1'),
(24, 20, 'category', NULL, NULL, NULL, 'muellim', 3, 24, '2016-05-13 11:46:11', NULL, NULL, '0', '1', '1'),
(25, 20, '', NULL, NULL, NULL, 'valideyn', 2, 24, '2016-05-13 11:47:08', 21, '2017-04-05 13:40:09', '0', '1', '1'),
(67, 65, 'category', NULL, 24, NULL, 'why-azerbaijan-language-of-instruction-learn-azerbaijani-russian-english', 2, 24, '2017-07-05 02:32:24', 21, '2017-07-05 02:44:36', '0', '1', '1'),
(66, 65, '', NULL, 0, NULL, NULL, 1, 24, '2017-07-05 02:31:47', 21, '2017-07-05 02:44:02', '0', '1', '1'),
(65, 51, 'category', NULL, 0, NULL, 'why-azerbaijan-language-of-instruction', 2, 24, '2017-07-05 02:30:21', NULL, NULL, '0', '1', '1'),
(64, 51, '', NULL, 0, NULL, NULL, 1, 24, '2017-07-05 02:23:36', 21, '2017-07-05 02:43:51', '0', '1', '1'),
(63, 59, 'category', NULL, 24, NULL, 'how-to-apply-financial-suport-university-exchange', 4, 24, '2017-06-23 16:37:23', 21, '2017-07-04 13:24:29', '0', '1', '1'),
(62, 59, 'category', NULL, NULL, NULL, 'how-to-apply-financial-suport-bilateral-agreements-between-countries', 3, 24, '2017-06-23 16:37:01', NULL, NULL, '0', '1', '1'),
(61, 59, 'category', NULL, NULL, NULL, 'how-to-apply-financial-suport-international-exhange-programmes', 2, 24, '2017-06-23 16:36:36', NULL, NULL, '0', '1', '1'),
(60, 59, 'category', NULL, NULL, NULL, 'how-to-apply-financial-suport-local-scholarships', 1, 24, '2017-06-23 16:35:55', NULL, NULL, '0', '1', '1'),
(59, 53, 'category', NULL, NULL, NULL, 'how-to-apply-financial-suport', 4, 24, '2017-06-23 16:26:47', NULL, NULL, '0', '1', '1'),
(58, 53, 'category', NULL, NULL, NULL, 'how-to-apply-visas-migration', 3, 24, '2017-06-23 16:21:54', NULL, NULL, '0', '1', '1'),
(57, 53, 'category', NULL, 0, NULL, 'how-to-apply-study-checklist', 2, 24, '2017-06-23 16:21:20', 21, '2017-07-02 21:25:32', '0', '1', '1'),
(56, 53, 'category', NULL, 27, NULL, 'how-to-apply-e-application', 1, 24, '2017-06-23 15:49:15', 21, '2017-07-04 13:24:15', '0', '1', '1'),
(55, 0, 'category', NULL, 0, NULL, 'elaqe', 14, 24, '2017-06-23 15:36:35', 21, '2017-08-30 09:31:02', '0', '1', '0'),
(54, 0, 'gallery', NULL, 0, NULL, 'qalereya', 13, 24, '2017-06-23 15:36:20', 24, '2017-09-16 09:57:01', '0', '1', '0'),
(53, 0, 'category', NULL, 0, NULL, 'saracli', 12, 24, '2017-06-23 15:35:53', 21, '2017-08-30 09:30:03', '0', '1', '0'),
(52, 0, 'category', NULL, 27, NULL, 'borchali', 11, 24, '2017-06-23 15:35:30', 21, '2017-08-31 09:27:34', '0', '1', '0'),
(51, 0, 'category', NULL, 0, NULL, 'home', 10, 24, '2017-06-23 15:34:10', 21, '2017-08-28 16:37:27', '0', '1', '0'),
(68, 53, 'category', NULL, 0, NULL, 'saracli-kend-haqqinda', 5, 24, '2017-08-30 09:31:36', NULL, NULL, '0', '1', '0'),
(69, 53, 'category', NULL, 0, NULL, 'saracli-fiziki-coghrafi-movqeyi', 6, 24, '2017-08-30 09:32:14', NULL, NULL, '0', '1', '0'),
(70, 53, 'phonebook', NULL, 0, NULL, 'saracli-telefon-kitabchasi', 7, 24, '2017-08-30 09:32:43', 26, '2017-09-04 10:28:21', '0', '1', '0'),
(71, 53, 'personalities', NULL, 0, NULL, 'saracli-gorkemli-shexsiyyetleri', 8, 24, '2017-08-30 09:32:59', 21, '2017-09-05 16:08:41', '0', '1', '0'),
(72, 53, 'category', NULL, 0, NULL, 'saracli-ashiq-havalari', 9, 24, '2017-08-30 09:33:19', NULL, NULL, '0', '1', '0'),
(73, 53, 'category', NULL, 0, NULL, 'saracli-video-goruntuler', 10, 24, '2017-08-30 09:33:38', NULL, NULL, '0', '1', '0'),
(74, 53, 'category', NULL, 0, NULL, 'saracli-mezeli-ehvalatlar', 11, 24, '2017-08-30 09:33:57', NULL, NULL, '0', '1', '0'),
(75, 53, 'category', NULL, 0, NULL, 'saracli-tarixi-ve-ehalisi', 12, 24, '2017-09-14 11:43:40', NULL, NULL, '0', '0', '0'),
(76, 53, 'category', NULL, 0, NULL, 'saracli-kend-haqqinda-sheirler-ve-revayetler', 13, 24, '2017-09-14 11:45:04', NULL, NULL, '0', '0', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_navpos_rel`
--

CREATE TABLE `menu_navpos_rel` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `navpos_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu_navpos_rel`
--

INSERT INTO `menu_navpos_rel` (`id`, `item_id`, `navpos_id`) VALUES
(36, 36, 2),
(37, 36, 6),
(38, 37, 2),
(39, 37, 6),
(40, 47, 2),
(41, 47, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `nav_positions`
--

CREATE TABLE `nav_positions` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` char(32) NOT NULL,
  `name_az` char(255) NOT NULL,
  `name_ru` char(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `nav_positions`
--

INSERT INTO `nav_positions` (`id`, `position`, `name_az`, `name_ru`) VALUES
(1, 'top', 'Yuxarı', 'Сверху'),
(2, 'main', 'Əsas menyu', 'Основное меню'),
(3, 'left', 'Soldaki', 'Слева'),
(4, 'right', 'Sağdaki', 'Справа'),
(5, 'bottom', 'Aşağıda', 'В футере'),
(6, 'sitemap', 'Saytın xaritəsi', 'Карта сайта');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `sef` char(255) NOT NULL,
  `img` char(255) DEFAULT NULL,
  `source_url` char(255) DEFAULT NULL,
  `source_name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_datetime` datetime NOT NULL,
  `gallery_id` int(10) UNSIGNED DEFAULT NULL,
  `show_on_main_page` enum('0','1') NOT NULL DEFAULT '0',
  `is_highlighted` enum('0','1') NOT NULL DEFAULT '0',
  `ordering` int(10) UNSIGNED NOT NULL,
  `add_by` int(11) NOT NULL,
  `add_datetime` datetime NOT NULL,
  `mod_by` int(10) UNSIGNED DEFAULT NULL,
  `mod_datetime` datetime DEFAULT NULL,
  `is_published` enum('1','0') NOT NULL DEFAULT '1',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='''keywords'', ''descr'', ''title'', ''short'', ''full''';

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `sef`, `img`, `source_url`, `source_name`, `publish_datetime`, `gallery_id`, `show_on_main_page`, `is_highlighted`, `ordering`, `add_by`, `add_datetime`, `mod_by`, `mod_datetime`, `is_published`, `is_deleted`) VALUES
(68, 'before-you-begin-your-studies-you-will-have-to-prove-that-you-have-enough-money', 'news_example_666ed28136b9e263b5766b0d05a74314.jpg', NULL, NULL, '2017-06-29 22:55:00', 15, '0', '0', 31, 21, '2017-06-29 22:55:00', 21, '2017-07-04 23:59:51', '1', '0'),
(70, 'tesing-testing', NULL, NULL, NULL, '2017-07-04 19:00:00', 0, '0', '0', 32, 21, '2017-07-04 19:00:00', NULL, NULL, '1', '1'),
(71, 'testing-testing', NULL, NULL, NULL, '2017-07-04 19:00:00', 0, '0', '0', 33, 21, '2017-07-04 19:00:00', NULL, NULL, '1', '1'),
(72, 'title-title', NULL, NULL, NULL, '2017-07-04 23:40:00', 0, '0', '0', 34, 21, '2017-07-04 23:40:00', NULL, NULL, '1', '1'),
(73, 'title-mitle', NULL, NULL, NULL, '2017-07-04 23:50:00', 0, '0', '0', 35, 21, '2017-07-04 23:50:00', NULL, NULL, '1', '1'),
(74, 'tittle-fitle', NULL, NULL, NULL, '2017-07-04 23:55:00', 0, '0', '0', 36, 21, '2017-07-04 23:55:00', NULL, NULL, '1', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `news_cats_rel`
--

CREATE TABLE `news_cats_rel` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news_cats_rel`
--

INSERT INTO `news_cats_rel` (`id`, `news_id`, `category_id`) VALUES
(1, 13, 20),
(5, 13, 21),
(6, 19, 29),
(7, 20, 29),
(8, 23, 29),
(9, 25, 18),
(10, 25, 21),
(11, 26, 18),
(12, 26, 21),
(13, 27, 29),
(14, 27, 20),
(16, 28, 19),
(18, 30, 19),
(20, 32, 19),
(22, 34, 19),
(24, 36, 19),
(26, 38, 29),
(28, 40, 29),
(30, 42, 29),
(32, 44, 29),
(34, 46, 20),
(36, 46, 29),
(38, 48, 21),
(40, 4, 29),
(42, 54, 29),
(44, 18, 26),
(46, 18, 16);

-- --------------------------------------------------------

--
-- Структура таблицы `personalities`
--

CREATE TABLE `personalities` (
  `id` int(5) NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `fio` varchar(255) NOT NULL,
  `birth` varchar(255) NOT NULL,
  `deadth` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `ordering` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `personalities`
--

INSERT INTO `personalities` (`id`, `title`, `img`, `fio`, `birth`, `deadth`, `content`, `ordering`) VALUES
(1, 'Zahid Xəlilov', '', 'Zahid İsmayıl oğlu Xəlilov', '14 yanvar 1911-ci il', '4 fevral 1974-cü il', '<p>Zahid Xəlilov 14 yanvar 1911-ci ildə Tiflis quberniyasının Ekatrinenfeld nahiyəsinin (indiki Bolnisi rayonu) Saraçlı kəndində anadan olmuşdur.</p>\r\n                           <p>Orta məktəbi və Türk Pedoqoji Texnikumunu Tiflis də bitirdikdən sonra 1929-cu ildə Bakı da Azərbaycan Dövlət Universiteti nin riyaziyyat şöbəsinə daxil olmuş, 1930-1934-cü illərdə Universitet bağlandığına görə ali təhsilini Azərbaycan Pedaqoji İnstitutunda başa vuraraq yenidən Tiflisə qayıtmış və Dəmir yolu Nəqliyyatı Mühəndisləri İnstitutunda işləmişdir.</p>\r\n                           <p>1937-ci ildə Tiflisdə Riyaziyyat İnstitutunun aspiranturasına daxil olmuş, 1940-cı il aprelin 22-də Tbilisi Dövlət Universiteti ndə məşhur riyaziyyatçı, professor S. Berqmanın rəhbərliyi altında \"Kleb məsələsi və onun ümumiləşməsi\" mövzusunda dissertasiya müdafiə edərək Qafqaz türkləri arasında ikinci (İbrahim İbrahimov dan sonra) fizika-riyaziyyat elmləri namizədi — alimlik dərəcəsi alan şəxsdir (opponentləri — Musxelişvili, Vekua).</p>\r\n                           <p>1940-cı ildə onu Bakıya Azərbaycan Dövlət Universitetinə dəvət etmişlər. Beləliklə, o, ömrünü həmişəlik Azərbaycan və onun elmi ilə bağlamışdır.</p>\r\n                           <p>1942-ci ildən SSRİ EA-nın Azərbaycan filialına keçmiş, 1945-ci ildə Azərbaycan Elmlər Akademiyası yarandıqda isə onu fizika və riyaziyyat sektorlarının rəhbəri təyin etmişlər. Z.Xəlilov 1946-cı ildə \"Sərhəd məsələlərinin parametrdən asılılığının tədqiqi\" mövzusunda dissertasiyasını müvəffəqiyyətlə müdafiə edərək 35 yaşında Azərbaycanın ilk fizika-riyaziyyat elmləri doktoru olmuşdur.</p>\r\n                           <p>Artıq 1950-ci illərin əvvəllərindən başlayaraq Z. Xəlilovun elmi əsərləri Moskva, Leninqrad, Kiyev, Tbilisi kimi elmi mərkəzlərdə, eləcə də Amerika Birləşmiş Ştatları nda çap olunaraq ona şöhrəti gətirmişdir. Zahid müəllim nəinki Azərbaycan funksional analiz məktəbinin banisi, həm də SSRİ-də bu sahənin ideoloqlarından biri olmuşdur. Xüsusi qeyd etmək lazımdır ki, SSRİ-də ilk \"Funksional analiz\" dərsliyini də o yazmışdır (1949).</p>\r\n                           <p>Z.Xəlilov 1950–ci ildə Riyaziyyat və Mexanika İnstitutu nun direktoru təyin edilmiş, 1955-ci ildə Azərbaycan Elmlər Akademiyasının həqiqi üzvü seçilmişdir. Akademik Z.Xəlilov 1957-1959-cu illərdə Akademiyanın vitse-prezidenti, 1962-1967-ci illərdə isə prezidenti olmuşdur. 1967-ci ildən ömrünün sonuna qədər isə özünün yaratdığı Riyaziyyat və Mexanika İnstitutuna rəhbərlik etmişdir.</p>\r\n                           <p>Görkəmli Azərbaycan riyaziyyatçısı, Əməkdar elm xadimi, akademik Z.Xəlilov SSRİ Ali Sovetinə və Millətlər Sovetinə deputat seçilmiş, \"Qırmızı Əmək Bayrağı\", \"Şərəf Nişanı\" ordenləri ilə təltif olunmuş, bir çox başqa mükafatlara layiq görülmüşdür.</p>\r\n                           <p>1974-cü il fevral ayının 4-də 63 yaşında vəfat etmişdir. Məzarı Fəxri xiyabandadır. Bakı şəhərində adına küçə və məktəb var.</p>\r\n                           <h3>Əsas elmi nailiyyətləri</h3>\r\n                           <p>Əsas tədqiqatları funksional analiz, onun inteqral və diferensial tənliklərə tətbiqi, bütöv mühit mexanikası, avtomatik idarəetmə sisteminin riyazi nəzəriyyəsi, tətbiqi riyaziyyat və riyaziyyatın başqa səhələrinə aiddir. Azərbaycanın ilk riyaziyyatçılarından biri olan alim funksional analiz məktəbinin əsasını qoymuşdur. Poliharmonik tənliklər sistemi üçün ümumi sərhəd məsələsini həll etmiş, dəyişənlərinə ayrılmayan qarışıq məsələlərin həlli üçün Furye üsulunun analoqunu, qarışıq tipli model tənlikləri üçün şəbəkə üsulunu vermişdir. O, mücərrəd sinqulyar operatorlar nəzəriyyəsini yaratmış, yeraltı hidromexanikanın neft və qaz yataqlarının işlənməsində tətbiq olunan bir çox məsələnin həllini vermiş, Banax fəzasında öz-özünə qoşma olmayan operatorun spektrini tədqiq etmişdir.</p>\r\n                           <p>Yüksəkixtisaslı kadrların hazırlanmasında böyük xidməti var. Zahid Xəlilov Azərbaycan funksional analiz məktəbinin banisi olmaqla yanaşı həm də SSRİ-də ilk \"Funksional analiz\" dərsliyinin müəllifidir. O, Azərbaycan riyaziyyatçılar cəmiyyətinin prezidenti seçilmişdir.</p>', 0),
(2, 'Nəsib Hacıyev', '1505380548.jpg', 'Nəsib Qurban oğlu Hacıyev', '13 noyabr, 1916', '4 avqust, 1976', '<p>Nəsib Qurban oğlu Hacıyev 1916-cı il noyabrın 13-də G&uuml;rc&uuml;stan Respublikası Bolnisi rayonun Sara&ccedil;lı kəndində anadan olmuşdur. Natamam orta təhsilini Sara&ccedil;lıda, tam orta təhsilini isə qonşu Faxralı kəndində almışdır. Orta məktəbi əla qiymətlərlə bitirdiyinə g&ouml;rə ona kənddə m&uuml;əllimlik etməyə icazə vermişlər. 1934-c&uuml; ildə Tbilisi Pedaqoji Texnikumunu bitirmişdir. Elə həmin ildə də Sara&ccedil;lı yeddillik məktəbinə direktor təyin olunmuşdur. Sonra bir m&uuml;ddət Bolnisi Rayon Xalq Məhkəməsinin sədri işləmişdir.</p>', 1),
(4, 'Aşıq Hüseyn Saraçlı', '1505380568.jpg', 'Hüseyin Qurban oğlu Həsənov', '1916', '1987', '<p>Aşıq H&uuml;seyn Sara&ccedil;lı 1916-cı ildə G&uuml;rc&uuml;stan Respublikası Bolnisi rayonunun Sara&ccedil;lı kəndində Bor&ccedil;alının məşhur şəxslərindən olan Qurban kişinin ailəsində doğulub. Atası 1931-ci ildə kolxoz quruculuğu d&ouml;vr&uuml;ndə rus bolşevikləri tərəfindən g&uuml;llələnib.</p>\r\n\r\n<p>Natamam orta təhsilini Sara&ccedil;lı məktəbində alan H&uuml;seyn onu s&ouml;z&uuml;n əsl mənasında ş&ouml;hrətin zirvəsinə qaldıran, adını b&uuml;t&uuml;n Qafqazda, T&uuml;rkiyə və Orta Asiyada dillər əzbəri edən aşıqlıq sənətinə hələ lap gənc yaşlarından başlayıb. Saz tutmağı Sara&ccedil;lıda Aşıq İsmayıldan &ouml;yrənib, Aşıq İbrahim Quş&ccedil;unun və Sarvan Bayramın yanında p&uuml;xtələşib. Bor&ccedil;alının məşhur s&ouml;z ustaları Faxralı Şair Nəbinin və Şair Ağacanın Allah vergisi ilə yoğrulmuş istedadından bəhrələnib.</p>', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `phonebook`
--

CREATE TABLE `phonebook` (
  `id` int(5) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `patronymic` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phones` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `ordering` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phonebook`
--

INSERT INTO `phonebook` (`id`, `surname`, `name`, `patronymic`, `address`, `phones`, `email`, `website`, `ordering`) VALUES
(3, 'Bayramov', 'Etimad', 'Musa', 'Sumqayıt şəhəri', '[\"(050) 244 48 66\"]', 'etimad@bayramov.com', 'http://www.bayramov.com', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `site_languages`
--

CREATE TABLE `site_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_dir` char(2) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `language_name` char(64) NOT NULL,
  `is_published` enum('0','1') NOT NULL DEFAULT '0',
  `is_default` enum('0','1') NOT NULL DEFAULT '0',
  `is_rtl` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `site_languages`
--

INSERT INTO `site_languages` (`id`, `language_dir`, `language_name`, `is_published`, `is_default`, `is_rtl`) VALUES
(1, 'az', 'Azərbaycan dili', '1', '0', '0'),
(2, 'ru', 'Русский язык', '1', '0', '0'),
(8, 'en', 'English', '1', '0', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `option` char(64) NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `site_settings`
--

INSERT INTO `site_settings` (`id`, `option`, `value`, `name`) VALUES
(1, 'site_default_template', 'main', 'Saytın şablonu'),
(2, 'site_default_lang_dir', 'az', 'Saytın dili'),
(3, 'cms_name', 'CMS', ''),
(4, 'cms_default_lang', 'az', 'CMS -in dili'),
(5, 'cms_name_formatted', '<b>CMS</b>', ''),
(11, 'footer_text', '&lt;p&gt;© Bütün hüquqlar qorunur, 2017&lt;/p&gt;&lt;hr/&gt;&lt;p&gt;Bu internet səhifəsi &lt;i&gt;Bayramov Etimad Musa oğlu&lt;/i&gt; tərəfindən hazırlanmışdır.&lt;/p&gt;', 'Footer hissədəki text'),
(12, 'facebook', 'http://facebook.com/saracli', 'Facebook'),
(13, 'instagram', 'http://instagram.com/saracli', 'Instagram'),
(14, 'twitter', 'http://twitter.com/saracli', 'Twitter'),
(15, 'youtube', 'http://youtube.com/saracli', 'Youtube'),
(16, 'google_plus', 'http://plus.google.com/saracli', 'Google Plus');

-- --------------------------------------------------------

--
-- Структура таблицы `site_users`
--

CREATE TABLE `site_users` (
  `id` int(11) NOT NULL,
  `uid` char(64) DEFAULT NULL,
  `provider` char(255) DEFAULT NULL,
  `identity` char(255) DEFAULT NULL,
  `profile` char(255) DEFAULT NULL,
  `email` char(255) DEFAULT NULL,
  `password_hash` varchar(96) NOT NULL,
  `verified_email` tinyint(4) NOT NULL,
  `first_name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `nickname` char(255) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `registration_datetime` datetime NOT NULL,
  `last_login_datetime` datetime DEFAULT NULL,
  `is_blocked` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `site_users`
--

INSERT INTO `site_users` (`id`, `uid`, `provider`, `identity`, `profile`, `email`, `password_hash`, `verified_email`, `first_name`, `last_name`, `avatar`, `nickname`, `birth_date`, `gender`, `registration_datetime`, `last_login_datetime`, `is_blocked`) VALUES
(1, '116883195089063849540', 'googleplus', 'https://plus.google.com/u/0/116883195089063849540/', 'https://plus.google.com/116883195089063849540', 'profitaz1@gmail.com', '', 1, 'Professional', 'IT', '', 'profit', NULL, NULL, '2016-05-24 12:16:40', '2016-05-24 13:05:57', '1'),
(2, '1190297687648667', 'facebook', 'https://www.facebook.com/app_scoped_user_id/1190297687648667/', 'https://www.facebook.com/app_scoped_user_id/1190297687648667/', 'vallos_alien@mail.ru', '', 1, 'Валентин', 'Белоусов', '', 'belousov_valentin', NULL, NULL, '2016-05-24 13:22:37', '2016-05-24 13:22:37', '0'),
(3, '111454852475613307532', 'googleplus', 'https://plus.google.com/u/0/111454852475613307532/', 'https://plus.google.com/111454852475613307532', 'qurban.qurbanov93@gmail.com', '', 1, 'Курбан', 'Курбанов', '', 'kurbanov_kurban', '2016-06-24', 'male', '2016-05-24 13:24:00', '2016-05-30 14:19:39', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `site_users_events`
--

CREATE TABLE `site_users_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ref_table` varchar(64) NOT NULL,
  `ref_id` int(10) UNSIGNED NOT NULL,
  `event_type` enum('like','vote') NOT NULL,
  `event` enum('like','dislike','up_vote','down_vote','neutral_vote') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `translates`
--

CREATE TABLE `translates` (
  `id` int(10) UNSIGNED NOT NULL,
  `ref_table` char(64) NOT NULL,
  `ref_id` int(10) UNSIGNED NOT NULL,
  `lang` char(2) NOT NULL,
  `fieldname` char(64) NOT NULL,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `translates`
--

INSERT INTO `translates` (`id`, `ref_table`, `ref_id`, `lang`, `fieldname`, `text`) VALUES
(1, 'news', 4, 'az', 'title', 'Aprelin 29-da “Yaz həyəti” layihəsi çərçivəsində təhsil müəssisələrində iməcilik keçirilib.'),
(2, 'news', 4, 'az', 'short', ''),
(3, 'news', 4, 'az', 'full', '<p>- Təhsil Nazirliyi və IDEA İctimai Birliyinin təşkilat&ccedil;ılığı, &quot;Bir&quot; Tələbə-K&ouml;n&uuml;ll&uuml; Proqramının dəstəyi ilə həyata ke&ccedil;irilən &ldquo;Yaz həyəti&rdquo; layihəsinin məqsədi şagird və tələbələr arasında ətraf m&uuml;hitin qorunmasına dair maarifləndirmə işinin aparılmasıdan ibarətdir. Layihə 48 rayon və şəhər &uuml;zrə ali, ilk peşə və orta ixtisas, eləcə də &uuml;mumi təhsil m&uuml;əssisələrində həyata ke&ccedil;irilir. Mayın 1-dək təhsil m&uuml;əssisələrinə ayrılmış 12 000-ə yaxın ağac tingi tədris ocaqlarına aid həyətyanı sahədə əkiləcək. Həm&ccedil;inin, &quot;Yaz həyəti&quot; layihəsi &ccedil;ər&ccedil;ivəsində Bakı, Gəncə və Sumqayıt şəhərlərindəki 26 &uuml;mumi təhsil m&uuml;əssisəsində m&uuml;sabiqə ke&ccedil;iriləcək. M&uuml;sabiqənin şərtlərinə uyğun olaraq, se&ccedil;ilmiş məktəblər pedaqoji kolektivin, şagirdlərin və tələbə-k&ouml;n&uuml;ll&uuml;lərin iştirakı ilə təhsil m&uuml;əssisəsinin həyətyanı sahəsinin təmizlənməsini, yaşıllığın salınmasını, ağacların g&ouml;vdəsinin əhənglənməsini həyata ke&ccedil;irəcəklər. Layihənin sonunda Təhsil Nazirliyi, IDEA İctimai Birliyi və &quot;Bir&quot; Tələbə-K&ouml;n&uuml;ll&uuml; Proqramının n&uuml;mayəndələri tərəfindən qalib m&uuml;əyyən ediləcək.</p>'),
(10, 'news', 5, 'az', 'title', 'Гурбан выпил двести грамм и угнал строительный кран'),
(4, 'news', 4, 'ru', 'title', ''),
(5, 'news', 4, 'ru', 'short', ''),
(6, 'news', 4, 'ru', 'full', ''),
(7, 'news', 4, 'ge', 'title', ''),
(8, 'news', 4, 'ge', 'short', ''),
(9, 'news', 4, 'ge', 'full', ''),
(11, 'news', 5, 'az', 'short', ''),
(12, 'news', 5, 'az', 'full', 'Неееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееет!'),
(19, 'news', 6, 'az', 'title', 'some silly title'),
(20, 'news', 6, 'az', 'short', ''),
(21, 'news', 6, 'az', 'full', 'vfdba dfgf sgfv sgf gsb gfs'),
(22, 'news', 6, 'ru', 'title', ''),
(23, 'news', 6, 'ru', 'short', ''),
(24, 'news', 6, 'ru', 'full', ''),
(25, 'news', 6, 'ge', 'title', ''),
(26, 'news', 6, 'ge', 'short', ''),
(27, 'news', 6, 'ge', 'full', ''),
(28, 'news', 7, 'az', 'title', 'Тест опубликованности/неопубликованности языковых версий'),
(13, 'news', 5, 'ru', 'title', ''),
(14, 'news', 5, 'ru', 'short', ''),
(15, 'news', 5, 'ru', 'full', ''),
(16, 'news', 5, 'ge', 'title', ''),
(17, 'news', 5, 'ge', 'short', ''),
(18, 'news', 5, 'ge', 'full', ''),
(29, 'news', 7, 'az', 'short', ''),
(30, 'news', 7, 'az', 'full', 'Тест опубликован ности/неопубл икованности языковых версий Тест опубликованности/неопубликованности языковых версий Тест опубликован икованности языковых версий Тест опубликован опубликованности языковых версий'),
(31, 'news', 7, 'az', 'is_published', '1'),
(32, 'news', 7, 'ru', 'title', 'Такой вот русский текст'),
(33, 'news', 7, 'ru', 'short', ''),
(34, 'news', 7, 'ru', 'full', 'Такой вот русский текст Такой вот русский текст Такой вот русский текст Такой вот русский текст Такой вот русский текст Такой вот русский текст Такой вот русский текст Такой вот русский текст Такой вот русский текст Такой вот русский текст Такой вот русский текст Такой вот русский текст'),
(35, 'news', 7, 'ru', 'is_published', '1'),
(36, 'news', 7, 'ge', 'title', 'А грузинский неопубликован'),
(37, 'news', 7, 'ge', 'short', ''),
(38, 'news', 7, 'ge', 'full', 'аим вафи ав фавыи впвф паы памв фавм ав авы авф'),
(39, 'news', 7, 'ge', 'is_published', '1'),
(40, 'news', 8, 'az', 'title', 'Yadda saxlanılmamış dəyişikliklər itiriləcək. Davam etmək istədiyinizə əminsinizmi?'),
(41, 'news', 8, 'az', 'short', ''),
(42, 'news', 8, 'az', 'full', '<p>&nbsp;vc f bv <strong>xbsgfb htrwhtgehtgshnbg<em>stbgtshbgfbffg gfv</em></strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n <tbody>\r\n   <tr>\r\n      <td>&nbsp;</td>\r\n     <td>&nbsp;</td>\r\n   </tr>\r\n   <tr>\r\n      <td>&nbsp;</td>\r\n     <td>&nbsp;</td>\r\n   </tr>\r\n   <tr>\r\n      <td>&nbsp;</td>\r\n     <td>&nbsp;</td>\r\n   </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>'),
(43, 'news', 8, 'az', 'is_published', '1'),
(44, 'news', 8, 'ru', 'title', ''),
(45, 'news', 8, 'ru', 'short', ''),
(46, 'news', 8, 'ru', 'full', '<p>&nbsp;vbx bvx</p>'),
(47, 'news', 8, 'ru', 'is_published', '0'),
(48, 'news', 8, 'ge', 'title', ''),
(49, 'news', 8, 'ge', 'short', ''),
(50, 'news', 8, 'ge', 'full', ''),
(51, 'news', 8, 'ge', 'is_published', '0'),
(52, 'news', 9, 'az', 'title', 'bvfsbngfsn'),
(53, 'news', 9, 'az', 'short', ''),
(54, 'news', 9, 'az', 'full', '<p>bgfvsnbgfsngf</p>'),
(55, 'news', 9, 'az', 'is_published', '1'),
(56, 'news', 9, 'ru', 'title', ''),
(57, 'news', 9, 'ru', 'short', ''),
(58, 'news', 9, 'ru', 'full', ''),
(59, 'news', 9, 'ru', 'is_published', '0'),
(60, 'news', 9, 'ge', 'title', ''),
(61, 'news', 9, 'ge', 'short', ''),
(62, 'news', 9, 'ge', 'full', ''),
(63, 'news', 9, 'ge', 'is_published', '0'),
(64, 'news', 10, 'az', 'title', 'gbfsnd gfnd g dnhtg dngtd ngfvndn gbdn gf ndg nfd b'),
(65, 'news', 10, 'az', 'short', ''),
(66, 'news', 10, 'az', 'full', '<p>&nbsp;fg ngf ngfn gfnd</p>'),
(67, 'news', 10, 'az', 'is_published', '1'),
(68, 'news', 10, 'ru', 'title', ''),
(69, 'news', 10, 'ru', 'short', ''),
(70, 'news', 10, 'ru', 'full', ''),
(71, 'news', 10, 'ru', 'is_published', '0'),
(72, 'news', 10, 'ge', 'title', ''),
(73, 'news', 10, 'ge', 'short', ''),
(74, 'news', 10, 'ge', 'full', ''),
(75, 'news', 10, 'ge', 'is_published', '0'),
(76, 'news', 11, 'az', 'title', 'bgfvabfdabfdb afdab fdab fda'),
(77, 'news', 11, 'az', 'short', ''),
(78, 'news', 11, 'az', 'full', '<p>&nbsp;fda bfda bfdab fda df bfd afddf</p>'),
(79, 'news', 11, 'az', 'is_published', '1'),
(80, 'news', 11, 'ru', 'title', ''),
(81, 'news', 11, 'ru', 'short', ''),
(82, 'news', 11, 'ru', 'full', ''),
(83, 'news', 11, 'ru', 'is_published', '0'),
(84, 'news', 11, 'ge', 'title', ''),
(85, 'news', 11, 'ge', 'short', ''),
(86, 'news', 11, 'ge', 'full', ''),
(87, 'news', 11, 'ge', 'is_published', '0'),
(88, 'menu', 1, 'az', 'name', 'I bölmə - Təhsil (ümumi və məktəbdənkənar) müəssisələrinə işçilərin  işə qəbulu ilə bağlı qaydalar, nümunələr və normativ baza'),
(89, 'menu', 1, 'ru', 'name', 'Главная страница'),
(90, 'menu', 1, 'ge', 'name', ''),
(91, 'menu', 2, 'az', 'name', 'тест'),
(92, 'menu', 2, 'ru', 'name', 'тест'),
(93, 'menu', 2, 'ge', 'name', 'тест'),
(94, 'menu', 3, 'az', 'name', 'т2'),
(95, 'menu', 3, 'ru', 'name', ''),
(96, 'menu', 3, 'ge', 'name', ''),
(97, 'menu', 4, 'az', 'name', 'т3'),
(98, 'menu', 4, 'ru', 'name', ''),
(99, 'menu', 4, 'ge', 'name', ''),
(100, 'menu', 5, 'az', 'name', 't4'),
(101, 'menu', 5, 'ru', 'name', ''),
(102, 'menu', 5, 'ge', 'name', ''),
(103, 'menu', 6, 'az', 'name', 't5 Specpage nested'),
(104, 'menu', 6, 'ru', 'name', ''),
(105, 'menu', 6, 'ge', 'name', ''),
(106, 'menu', 7, 'az', 'name', 't6 Category test item'),
(107, 'menu', 7, 'az', 'is_published_lang', '1'),
(108, 'menu', 7, 'ru', 'name', 't6 ru'),
(109, 'menu', 7, 'ru', 'is_published_lang', '1'),
(110, 'menu', 7, 'ge', 'name', 't6 ge'),
(111, 'menu', 7, 'ge', 'is_published_lang', '1'),
(112, 'menu', 8, 'az', 'name', 'Document test item'),
(113, 'menu', 8, 'az', 'is_published_lang', '1'),
(114, 'menu', 8, 'ru', 'name', ''),
(115, 'menu', 8, 'ru', 'is_published_lang', '0'),
(116, 'menu', 8, 'ge', 'name', ''),
(117, 'menu', 8, 'ge', 'is_published_lang', '0'),
(118, 'menu', 9, 'az', 'name', 'Deepest integrity level'),
(119, 'menu', 9, 'az', 'is_published_lang', '1'),
(120, 'menu', 9, 'ru', 'name', ''),
(121, 'menu', 9, 'ru', 'is_published_lang', '0'),
(122, 'menu', 9, 'ge', 'name', ''),
(123, 'menu', 9, 'ge', 'is_published_lang', '0'),
(124, 'menu', 10, 'az', 'name', 'Even more deep level'),
(125, 'menu', 10, 'az', 'is_published_lang', '1'),
(126, 'menu', 10, 'ru', 'name', ''),
(127, 'menu', 10, 'ru', 'is_published_lang', '0'),
(128, 'menu', 10, 'ge', 'name', ''),
(129, 'menu', 10, 'ge', 'is_published_lang', '0'),
(130, 'menu', 11, 'az', 'name', 'Deeper than the deep'),
(131, 'menu', 11, 'az', 'is_published_lang', '1'),
(132, 'menu', 11, 'ru', 'name', ''),
(133, 'menu', 11, 'ru', 'is_published_lang', '0'),
(134, 'menu', 11, 'ge', 'name', ''),
(135, 'menu', 11, 'ge', 'is_published_lang', '0'),
(136, 'menu', 12, 'az', 'name', 'D-d-d-deeper'),
(137, 'menu', 12, 'az', 'is_published_lang', '1'),
(138, 'menu', 12, 'ru', 'name', ''),
(139, 'menu', 12, 'ru', 'is_published_lang', '0'),
(140, 'menu', 12, 'ge', 'name', ''),
(141, 'menu', 12, 'ge', 'is_published_lang', '0'),
(142, 'menu', 13, 'az', 'name', 'Extra mega deep overflow of the navigation panel'),
(143, 'menu', 13, 'az', 'is_published_lang', '1'),
(144, 'menu', 13, 'ru', 'name', ''),
(145, 'menu', 13, 'ru', 'is_published_lang', '0'),
(146, 'menu', 13, 'ge', 'name', ''),
(147, 'menu', 13, 'ge', 'is_published_lang', '0'),
(148, 'menu', 14, 'az', 'name', 'a'),
(149, 'menu', 14, 'az', 'is_published_lang', '1'),
(150, 'menu', 14, 'ru', 'name', ''),
(151, 'menu', 14, 'ru', 'is_published_lang', '0'),
(152, 'menu', 14, 'ge', 'name', ''),
(153, 'menu', 14, 'ge', 'is_published_lang', '0'),
(154, 'menu', 15, 'az', 'name', 'a'),
(155, 'menu', 15, 'az', 'is_published_lang', '1'),
(156, 'menu', 15, 'ru', 'name', ''),
(157, 'menu', 15, 'ru', 'is_published_lang', '0'),
(158, 'menu', 15, 'ge', 'name', ''),
(159, 'menu', 15, 'ge', 'is_published_lang', '0'),
(160, 'menu', 16, 'az', 'name', 'IV bölmə - Əmək şəraitinin şərtlərinin dəyişilməsi və başqa işə keçirmə ilə bağlı qaydalar, nümunələr və normativ baza'),
(161, 'menu', 16, 'az', 'is_published_lang', '1'),
(162, 'menu', 16, 'ru', 'name', 'О нас'),
(163, 'menu', 16, 'ru', 'is_published_lang', '1'),
(164, 'menu', 16, 'ge', 'name', ''),
(165, 'menu', 16, 'ge', 'is_published_lang', '0'),
(166, 'menu', 17, 'az', 'name', 'II bölmə - İş və istirahət vaxtı ilə bağlı qaydalar, nümunələr və normativ baza'),
(167, 'menu', 17, 'az', 'is_published_lang', '1'),
(168, 'menu', 17, 'ru', 'name', 'Общее образование'),
(169, 'menu', 17, 'ru', 'is_published_lang', '1'),
(170, 'menu', 17, 'ge', 'name', ''),
(171, 'menu', 17, 'ge', 'is_published_lang', '0'),
(172, 'menu', 18, 'az', 'name', 'Layfhak'),
(173, 'menu', 18, 'az', 'is_published_lang', '1'),
(174, 'menu', 18, 'ru', 'name', 'Лайфхаки'),
(175, 'menu', 18, 'ru', 'is_published_lang', '1'),
(176, 'menu', 18, 'ge', 'name', ''),
(177, 'menu', 18, 'ge', 'is_published_lang', '0'),
(178, 'menu', 19, 'az', 'name', 'III bölmə  - İşçinin məzuniyyət hüququ ilə bağlı qaydalar, nümunələr və normativ baza'),
(179, 'menu', 19, 'az', 'is_published_lang', '1'),
(180, 'menu', 19, 'ru', 'name', 'Исследования'),
(181, 'menu', 19, 'ru', 'is_published_lang', '1'),
(182, 'menu', 19, 'ge', 'name', ''),
(183, 'menu', 19, 'ge', 'is_published_lang', '0'),
(184, 'menu', 20, 'az', 'name', 'V bölmə - Əmək müqaviləsinə xitam verilməsi ilə bağlı məsələlər, nümunələr və normativ baza'),
(185, 'menu', 20, 'az', 'is_published_lang', '1'),
(186, 'menu', 20, 'ru', 'name', 'Интервью'),
(187, 'menu', 20, 'ru', 'is_published_lang', '1'),
(188, 'menu', 20, 'ge', 'name', ''),
(189, 'menu', 20, 'ge', 'is_published_lang', '0'),
(190, 'menu', 21, 'az', 'name', 'Məktəbli'),
(191, 'menu', 21, 'az', 'is_published_lang', '1'),
(192, 'menu', 21, 'ru', 'name', 'Школьник'),
(193, 'menu', 21, 'ru', 'is_published_lang', '1'),
(194, 'menu', 21, 'ge', 'name', ''),
(195, 'menu', 21, 'ge', 'is_published_lang', '0'),
(196, 'menu', 22, 'az', 'name', 'Tələbə'),
(197, 'menu', 22, 'az', 'is_published_lang', '1'),
(198, 'menu', 22, 'ru', 'name', 'Студент'),
(199, 'menu', 22, 'ru', 'is_published_lang', '1'),
(200, 'menu', 22, 'ge', 'name', ''),
(201, 'menu', 22, 'ge', 'is_published_lang', '0'),
(202, 'menu', 23, 'az', 'name', 'Abituriyent'),
(203, 'menu', 23, 'az', 'is_published_lang', '1'),
(204, 'menu', 23, 'ru', 'name', 'Абитуриент'),
(205, 'menu', 23, 'ru', 'is_published_lang', '1'),
(206, 'menu', 23, 'ge', 'name', ''),
(207, 'menu', 23, 'ge', 'is_published_lang', '0'),
(208, 'menu', 24, 'az', 'name', 'Müəllim'),
(209, 'menu', 24, 'az', 'is_published_lang', '1'),
(210, 'menu', 24, 'ru', 'name', 'Педагог'),
(211, 'menu', 24, 'ru', 'is_published_lang', '1'),
(212, 'menu', 24, 'ge', 'name', ''),
(213, 'menu', 24, 'ge', 'is_published_lang', '0'),
(214, 'menu', 25, 'az', 'name', 'Valideyni'),
(215, 'menu', 25, 'az', 'is_published_lang', '1'),
(216, 'menu', 25, 'ru', 'name', 'Родитель'),
(217, 'menu', 25, 'ru', 'is_published_lang', '1'),
(218, 'menu', 25, 'ge', 'name', ''),
(219, 'menu', 25, 'ge', 'is_published_lang', '0'),
(220, 'menu', 26, 'az', 'name', 'VI bölmə - Əmək və icra intizamı ilə bağlı qaydalar, nümunələr və normativ baza'),
(221, 'menu', 26, 'az', 'is_published_lang', '1'),
(222, 'menu', 26, 'ru', 'name', 'Опросы'),
(223, 'menu', 26, 'ru', 'is_published_lang', '1'),
(224, 'menu', 26, 'ge', 'name', ''),
(225, 'menu', 26, 'ge', 'is_published_lang', '0'),
(226, 'news', 13, 'az', 'title', '\"Arzularına çatmaq üçün dayanmadan çalışsınlar\" - \"Uğur formulu\"'),
(227, 'news', 13, 'az', 'short', ''),
(228, 'news', 13, 'az', 'full', '<p>Təhsil Nazirliyi və&nbsp;Lent.az&nbsp;İnformasiya Agentliyinin &quot;2007-2015-ci illərdə Azərbaycan gənclərinin xarici &ouml;lkələrdə təhsili &uuml;zrə D&ouml;vlət Proqramı&rdquo; təqa&uuml;d&ccedil;&uuml;lərini tanıdan birgə layihəsi &quot;Uğur formulu&rdquo;nun qonağı Kanadanın Vaterloo Universitetinin tələbəsi Anar Xəlilzadədir.&nbsp;</p>\r\n\r\n<p>Anar Xəlilzadə Kanadanın Vaterloo Universitetində kimya m&uuml;həndisliyi ixtisası &uuml;zrə bakalavr səviyyəsində təhsilini davam etdirir.</p>\r\n\r\n<p><strong>- Xaricdə təhsil sizə nə verir? &Uuml;midlərinizi doğruldurmu?</strong></p>\r\n\r\n<p>- Xaricdə təhsil almaq imkanı mənim hələ uşaqlıqdan olan arzumun reallaşmasına imkan yaradıb. X&uuml;susilə se&ccedil;diyim kimya m&uuml;həndisliyi ixtisası &uuml;zrə Qərbdə olan inkişaf səviyyəsini nəzərə alsaq, xaricdə təhsilin mənə və mənim &ouml;lkəmə nə qədər faydalı ola biləcəyini g&ouml;rərik.</p>\r\n\r\n<p>İnanıram ki, xaricdə təhsil &ouml;lkəmizdə &ccedil;ox da populyar olmayan, ancaq olduqca vacib bir sahə &uuml;zrə əsl peşəkar kimi yetişib Azərbaycanda &ccedil;alışmağıma yardım&ccedil;ı olacaq. Bundan əlavə, xaricdə təhsil almaq hər kəsə sərbəst yaşamağı, m&uuml;əyyən məsələlər &uuml;zrə sərbəst qərar verməyi &ouml;yrədir və yekunda insanın tam bir yetkin fərd kimi &ouml;z cəmiyyətinə t&ouml;hfə vermək prosesini s&uuml;rətləndirir.</p>\r\n\r\n<p>Təhsil aldığım Kanadanın Vaterloo Universiteti mənim g&ouml;zləntilərimi tam olaraq doğruldur. Burada se&ccedil;diyim sahə &uuml;zrə y&uuml;ksək səviyyəli peşəkar olmağım &uuml;&ccedil;&uuml;n hər bir şərait yaradılıb. İstər təhsil, istər ictimai həyat baxımından burada ke&ccedil;irdiyim g&uuml;nlər hədsiz dərəcədə maraqlı və yaddaqalan hadisələrlə zəngindir.&nbsp;</p>\r\n\r\n<p><strong>- Fərqli &ouml;lkə və təhsil m&uuml;hitini g&ouml;rd&uuml;kdən sonra əvvəl oxuduğunuz ali məktəbdə nəyin dəyişməsini arzulayardınız?</strong></p>\r\n\r\n<p>- Vaterloo Universiteti mənim təhsil aldığım ilk ali məktəbdir. Odur ki, bu barədə hər hansı bir fikir irəli s&uuml;rməyim m&uuml;mk&uuml;n olmayacaq.&nbsp;</p>\r\n\r\n<p><strong>- Təhsil aldığınız &ouml;lkəyə Azərbaycanla bağlı hansı materialları aparmısınız?</strong></p>\r\n\r\n<p>-Təhsil almağa yola d&uuml;şərkən daha &ccedil;ox Azərbaycana aid materiallar və m&uuml;xtəlif atributları &ouml;z&uuml;mlə g&ouml;t&uuml;rd&uuml;m. Bunlara &ouml;lkəmizin bayrağı, Azərbaycan haqqında ingilis dilində olan broş&uuml;rlər, disklər, milli şirniyyatlar və suvenirlər aiddir. Burada tanış olduğum hər kəsə bacardığım qədər &ouml;lkəmiz haqqında məlumat verməyə &ccedil;alışıram. Tələbə yoldaşlarımın Azərbaycana marağı b&ouml;y&uuml;kd&uuml;r.&nbsp;</p>\r\n\r\n<p><strong>- Azərbaycan gənclərinə, &ouml;lkəmizdəki dostlarınıza, həmyaşıdlarınıza nə demək istərdiniz?</strong></p>\r\n\r\n<p>- &Ouml;z arzularına &ccedil;atmaları &uuml;&ccedil;&uuml;n dayanmadan &ccedil;alışsınlar. M&uuml;asir d&uuml;nyada əldə olunmayacaq bir şey yoxdur. Sadəcə, nəyəsə nail olmaq &uuml;&ccedil;&uuml;n məqsədy&ouml;nl&uuml;, &ccedil;alışqan, d&uuml;r&uuml;st olmaq lazımdır. D&ouml;vlətimiz tərəfindən arzularımızın reallaşması &uuml;&ccedil;&uuml;n hər bir şəraitin yaradılacağına inanaraq, irəliləməyi məsləhət g&ouml;r&uuml;rəm. Sırf m&uuml;həndislik ixtisası &uuml;zrə təhsil almaq niyyətində olanlara məhz oxuduğum Vaterloo Universitetinin M&uuml;həndislik fak&uuml;ltəsini se&ccedil;məyi t&ouml;vsiyə edirəm.&nbsp;</p>\r\n\r\n<p><strong>- Oxuduğunuz ali məktəbdə m&uuml;əllim-tələbə m&uuml;nasibəti necədir?</strong></p>\r\n\r\n<p>- M&uuml;əllimlərlə tələbələr arasında sərbəst və səmimi m&uuml;nasibətlər m&ouml;vcuddur. Burada m&uuml;əllimlərlə sıx interaktiv təmasda olmaq &ccedil;ox &ouml;nəmlidir. Bunun &uuml;&ccedil;&uuml;n m&uuml;əllimlər tərəfindən hər bir imkan yaradılır. Universitetin m&uuml;əllim heyətinin əsas məqsədi tələbələrin hər bir sualını ətraflı şəkildə cavablandırmaq və səmimi akademik m&uuml;hit yaratmaqdır.&nbsp;</p>\r\n\r\n<p><strong>- Universitetdə əcnəbi tələbələrə m&uuml;nasibətdən razısınızmı?</strong></p>\r\n\r\n<p>- Vaterloo Universitetində &ccedil;oxsaylı əcnəbi tələbə təhsil alır. Universitet rəhbərliyi və m&uuml;əllimlər tərəfindən tələbələr he&ccedil; bir halda yerli və ya əcnəbi olaraq fərqləndirilmir. Hər bir tələbəyə eyni dərəcədə şərait yaradılır. Universitetdə 50-dən &ccedil;ox azərbaycanlı tələbə təhsil alır. &Ccedil;alışırıq hər zaman istənilən məsələdə biri-birimizə dəstək olaq.&nbsp;</p>\r\n\r\n<p><strong>- Xarici &ouml;lkədən Azərbaycan təhsilini necə g&ouml;r&uuml;rs&uuml;n&uuml;z?</strong></p>\r\n\r\n<p>- Azərbaycanda ali təhsil almadığım &uuml;&ccedil;&uuml;n bu sualı cavablandırmağa &ccedil;ətinlik &ccedil;əkirəm. Bununla belə, məndə olan məlumata əsaslanaraq, sırf mənim ixtisasım olan kimya m&uuml;həndisliyi sahəsində təhsilin daha da inkişaf etdirilməsinin və praktiki təcr&uuml;bələrin artırılmasının vacib olması qənaətindəyəm.&nbsp;</p>\r\n\r\n<p><strong>- &Ccedil;ətinlikləriniz varmı?</strong></p>\r\n\r\n<p>- Tələbəliyimin ilk ili olmasına g&ouml;rə təbii ki, vaxtaşırı m&uuml;əyyən &ccedil;ətinliklərlə rastlaşıram. Bunlar əsasən, ki&ccedil;ik məişət problemləri, dərslərimin &ccedil;ox olmasına g&ouml;rə vaxt azlığı, &ouml;lkəmizdən fərqli olaraq Kanadaya xas soyuq hava və bu kimi digər amillərdir.&nbsp;</p>\r\n\r\n<p><strong>- Asudə vaxtınızda nə ilə məşğul olursunuz?</strong></p>\r\n\r\n<p>- Təəss&uuml;f ki, dərslərimin &ccedil;ox intensiv olması səbəbindən asudə vaxtım &ccedil;ox azdır. Amma vaxt olanda &ccedil;alışıram ki, idmanla məşğul olum. Universitetin nəzdində bunun &uuml;&ccedil;&uuml;n hər bir imkan yaradılıb.</p>'),
(229, 'news', 13, 'az', 'is_published', '1'),
(230, 'news', 13, 'ru', 'title', ''),
(231, 'news', 13, 'ru', 'short', ''),
(232, 'news', 13, 'ru', 'full', ''),
(233, 'news', 13, 'ru', 'is_published', '0'),
(234, 'news', 13, 'ge', 'title', ''),
(235, 'news', 13, 'ge', 'short', ''),
(236, 'news', 13, 'ge', 'full', ''),
(237, 'news', 13, 'ge', 'is_published', '0'),
(238, 'menu', 18, 'zh', 'name', ''),
(239, 'menu', 18, 'zh', 'is_published_lang', '0'),
(240, 'menu', 20, 'zh', 'name', ''),
(241, 'menu', 20, 'zh', 'is_published_lang', '0'),
(242, 'galleries', 9, 'az', 'name', '\"Arzularına çatmaq üçün dayanmadan çalışsınlar\" - \"Uğur formulu\"'),
(243, 'galleries', 9, 'az', 'is_published_lang', '1'),
(244, 'galleries', 9, 'ru', 'name', ''),
(245, 'galleries', 9, 'ru', 'is_published_lang', '0'),
(246, 'galleries', 9, 'zh', 'name', ''),
(247, 'galleries', 9, 'zh', 'is_published_lang', '0'),
(248, 'galleries', 1, 'az', 'name', 'The development testing gallery'),
(249, 'galleries', 1, 'az', 'is_published_lang', '1'),
(250, 'galleries', 1, 'ru', 'name', ''),
(251, 'galleries', 1, 'ru', 'is_published_lang', '0'),
(252, 'galleries', 1, 'zh', 'name', ''),
(253, 'galleries', 1, 'zh', 'is_published_lang', '0'),
(254, 'gallery_photos', 31, 'az', 'name', 'mi bəndlə qutusu'),
(255, 'gallery_photos', 31, 'ru', 'name', 'коробочка с ми бяндом!'),
(256, 'gallery_photos', 31, 'zh', 'name', ''),
(257, 'gallery_photos', 2, 'az', 'name', 'Yelsabedler'),
(258, 'gallery_photos', 2, 'ru', 'name', ''),
(259, 'gallery_photos', 2, 'zh', 'name', ''),
(263, 'news', 14, 'az', 'title', '“Dostluq kuboku -2016” futbol turniri keçirilib'),
(264, 'news', 14, 'az', 'short', ''),
(265, 'news', 14, 'az', 'full', '<p>&Uuml;mummilli lider Heydər Əliyevin anadan olmasının 93-c&uuml; ild&ouml;n&uuml;m&uuml;nə həsr olunmuş &ldquo;Dostluq kuboku -2016&rdquo; mini futbol turniri turniri ke&ccedil;irilib.</p>\r\n\r\n<p>Yarışlar Azərbaycan Respublikası Təhsil Nazirliyi, Azərbaycan Respublikası Nazirlər Kabineti yanında &ldquo;İ&ccedil;ərişəhər&rdquo; D&ouml;vlət Tarix-Memarlıq Qoruğu İdarəsi, Azərbaycan Respublikasının Prezidenti yanında Vətəndaşlara Xidmət və Sosial İnnovasiyalar &uuml;zrə D&ouml;vlət Agentliyi və&nbsp;Azərbaycan Respublikasının Nazirlər Kabineti yanında Dənizkənarı Bulvar İdarəsinin&nbsp; əməkdaşları arasında&nbsp;ke&ccedil;irilib.</p>\r\n\r\n<p>D&ouml;vlət qurumlarının Həmkarlar İttifaqı komitələrinin təşkilat&ccedil;ılığı ilə ke&ccedil;irilən yarış iş&ccedil;ilərin sağlam həyat tərzinə cəlb edilməsi, onların asudə vaxtının və istirahətinin səmərəliliyinin artırılması məqsədilə təşkil olunub.</p>\r\n\r\n<p>Azərbaycan Tennis Akademiyasının stadionunda baş tutan və gərgin m&uuml;barizə şəraitində ke&ccedil;ən yarışlarda Təhsil Nazirliyinin komandası III yeri tutub.</p>\r\n\r\n<p>Qalib komandalar yarışın təşkilat&ccedil;ıları tərəfindən m&uuml;kafatlandırılıb.</p>'),
(266, 'news', 14, 'az', 'is_published', '1'),
(267, 'news', 14, 'ru', 'title', ''),
(268, 'news', 14, 'ru', 'short', ''),
(269, 'news', 14, 'ru', 'full', ''),
(270, 'news', 14, 'ru', 'is_published', '0'),
(271, 'news', 14, 'zh', 'title', ''),
(272, 'news', 14, 'zh', 'short', ''),
(273, 'news', 14, 'zh', 'full', ''),
(274, 'news', 14, 'zh', 'is_published', '0'),
(275, 'news', 13, 'zh', 'title', ''),
(276, 'news', 13, 'zh', 'short', ''),
(277, 'news', 13, 'zh', 'full', ''),
(294, 'news', 16, 'az', 'keywords', 'Microsoft, yüksək texnologiyalar, Imagine Cup, innovasiya'),
(309, 'news', 13, 'az', 'keywords', ''),
(310, 'news', 13, 'ru', 'keywords', ''),
(311, 'news', 13, 'zh', 'keywords', ''),
(295, 'news', 16, 'az', 'title', '“Microsoft Imagine Cup 2016” müsabiqəsinin Milli Finalının qalibləri müəyyənləşib'),
(296, 'news', 16, 'az', 'full', '<p>Mayın 17-də Təhsil Nazirliyi, Rabitə və Y&uuml;ksək Texnologiyalar Nazirliyi, Y&uuml;ksək Texnologiyalar Parkının dəstəyi, &laquo;Microsoft Azərbaycan&raquo; və &ldquo;Nar Mobile&rdquo; tərəfindən təşkil olunmuş &ldquo;Microsoft Imagine Cup 2016&rdquo; irimiqyaslı beynəlxalq texnologiya m&uuml;sabiqəsinin Milli Final mərhələsi ke&ccedil;irilib.</p>\r\n\r\n<p>Tədbirdə təhsil nazirinin m&uuml;avini Ceyhun Bayramov, rabitə və y&uuml;ksək texnologiyalar nazirinin m&uuml;avini Elmir Vəlizadə, &laquo;Microsoft Azərbaycan&raquo;ın baş direktoru Sərxan Həşimov, &ldquo;Nar Mobile&rdquo; şirkətinin baş icra&ccedil;ı direktoru Kent Maknili, Y&uuml;ksək Texnologiyalar Parkının Direktoru Seymur Ağayev, ali məktəb rektorları və tələbələr iştirak ediblər.</p>\r\n\r\n<p>Qeyd olunub ki, &ldquo;Microsoft Imagine Cup&rdquo; &ndash; innovasiya sahəsində gənclərin gələcək inkişafı, karyera y&uuml;ksəlişi və yeni perspektivlərə təkan verən bir m&uuml;sabiqədir. M&uuml;sabiqənin məqsədi Azərbaycan tələbələrinin istedadını &uuml;zə &ccedil;ıxarmaq və onların əmək bazarının tələblərinə hazırlıqlı m&uuml;təxəssis kimi yetişmələri &uuml;&ccedil;&uuml;n şərait yaratmaqdır.</p>\r\n\r\n<p>M&uuml;sabiqə &ccedil;ər&ccedil;ivəsində ali və ilk peşə-ixtisas təhsil m&uuml;əssisələrinin tələbə və şagirdlərindən ibarət komandalar 3 kateqoriya (&ldquo;İnnovasiya&rdquo;, &ldquo;Sosial layihələr&rdquo; və &ldquo;Oyunlar&rdquo;) &uuml;zrə iştirak ediblər. &ldquo;Sosial layihələr&rdquo; nominasiyasında SABAH qruplarının tələbələrindən ibarət &ldquo;TechSOS&rdquo; komandası qalib gəlib. Komandanın tərkibinə daxil olan Aytac Ağabəyli, G&uuml;nay Abdullayeva, Nailə İsmayılova və Sənan Quluzadə 3 hissədən ibarət olan (smartfonlar &uuml;&ccedil;&uuml;n tətbiq, bulud tətbiqi və avadanlıq) yıxılmanın m&uuml;əyyən edilməsi sistemini hazırlayıblar. Ki&ccedil;ik həcmli peycerə bənzər avadanlıq yaşlı insanın kəmərinə bərkidilir. Həmin ahıl insana nəzarət edən şəxsin Smartfonuna yıxılma baş verdiyi halda bulud tətbiqi vasitəsilə hadisə və hadisənin baş verdiyi yer haqda dərhal məlumat daxil olur. Bu, məlumatlandırma və ilkin yardım proseslərini s&uuml;rətləndirməyə yardım edir.&nbsp;</p>\r\n\r\n<p>&ldquo;İnnovasiya&rdquo; nominasiyasında &ldquo;JavaSet&rdquo; komandası qalib gəlib. Komandanın &uuml;zvləri Nicat Cavadov və Yesset Jusupov sifəti m&uuml;əyyənetmə funksiyası vasitəsilə emosiyaların identifikasiyası layihəsini təqdim ediblər. Bu məhsul m&uuml;əllimlərə dərslərin daha effektiv və keyfiyyətli təşkilində yardım edəcək. Belə ki, auditoriyanın g&ouml;r&uuml;nt&uuml;s&uuml;n&uuml; &ccedil;əkən bu məhsul məktəblilərin və ya tələbələrin sifətini, eləcə də emosiyalarını m&uuml;əyyən edir. Məhsulun şagird və tələbələrin gərginlik və ya narazılığını m&uuml;əyyən etməsi onların dərsi başa d&uuml;şməməsindən xəbər verir. Belə olduğu halda, m&uuml;əllim fənni təkrarən izah edə bilər.</p>\r\n\r\n<p>&ldquo;Oyunlar&rdquo; nominasiyasında &ldquo;ADA&rdquo; Universitetinin &ldquo;The Corp&rdquo; komandası qalib gəlib. Tələbələr &Uuml;lviyyə Məmmədzadə, Toğrul Rəhimli, Ramazan S&uuml;leymanlı və Əli Babayev hazırladıqları g&ouml;r&uuml;nt&uuml;s&uuml; olmayan səsli macəra oyununu təqdim ediblər. İnsan və tətbiq arasında aparılan dialoq vasitəsilə oyunun m&uuml;xtəlif mərhələlərini ke&ccedil;mək m&uuml;mk&uuml;nd&uuml;r. Bu məhsul məkan təfəkk&uuml;r&uuml; və məntiqin formalaşmasına yardım edir.&nbsp;</p>\r\n\r\n<p>&ldquo;Sosial layihələr&rdquo;, &ldquo;İnnovasiya&rdquo; və &ldquo;Oyunlar&rdquo; nominasiyaları &uuml;zrə ən yaxşı olan 3 komanda m&uuml;sabiqənin beynəlxalq yarımfinalında iştirak etmək imkanı qazanıb. Bu mərhələdə onlayn səsvermə təşkil olunacaq. Uğur qazanan komandalar Azərbaycanı 2016-cı ilin iyulunda m&uuml;sabiqənin beynəlxalq finalında təmsil edəcək və əsas m&uuml;kafat &ndash; 50 000 ABŞ dolları uğrunda m&uuml;barizə aparcaqlar.</p>\r\n\r\n<p>Sonra tədbir iştirak&ccedil;ıları qaliblərin qrup təqdimatlarını izləyiblər.</p>\r\n\r\n<p>Tədbirin sonunda &ldquo;Microsoft Imagine Cup 2016&rdquo; m&uuml;sabiqəsinin Milli Finalının qalibləri m&uuml;kafatlandırılıb.</p>'),
(278, 'news', 13, 'zh', 'is_published', '0'),
(279, 'news', 15, 'az', 'keywords', 'balkan, riyaziyyat, sinfinin, pilot, eksperimental, liseyin, şagirdi, 33-cü, beynəlxalq, olimpiadada, şagirdin, qazaxıstan, medalla, başlayıblar, qatıldığı, olimpiadalarında, ingiltərə, 2016-cı, səudiyyə, ərəbistanı'),
(280, 'news', 15, 'az', 'title', 'Məktəblilərimiz 33-cü Balkan Riyaziyyat Olimpiadasından medalla qayıdıblar'),
(281, 'news', 15, 'az', 'short', ''),
(282, 'news', 15, 'az', 'full', '<p>5-10 may 2016-cı il tarixlərində Albaniyanın Tirana şəhərində 33-c&uuml; Beynəlxalq Balkan Riyaziyyat Olimpiadası ke&ccedil;irilib.</p>\r\n\r\n<p>Serbiya, Rumıniya, Makedoniya, Bolqarıstan, T&uuml;rkiyə kimi Balkan &ouml;lkələrinin, həm&ccedil;inin İtaliya, Fransa, İngiltərə, Qazaxıstan, Səudiyyə Ərəbistanı da daxil olmaqla, &uuml;mumilikdə 18 &ouml;lkədən 100-dən &ccedil;ox şagirdin qatıldığı olimpiadada Azərbaycan məktəbliləri uğurla &ccedil;ıxış ediblər.</p>\r\n\r\n<p>Olimpiadada &ouml;lkəmizi təmsil edən Gəncə şəhəri 26 n&ouml;mrəli fizika-riyaziyyat təmay&uuml;ll&uuml; liseyin eksperimental pilot&nbsp; sinfinin şagirdi Anar H&uuml;seynov g&uuml;m&uuml;ş və Bakı şəhəri akademik Zərifə Əliyeva adına liseyin eksperimental pilot&nbsp; sinfinin şagirdi Məhəmməd Şirinov b&uuml;r&uuml;nc medal qazanıb.</p>\r\n\r\n<p>Qeyd edək ki, hazırda komanda rəhbərləri və şagirdlər riyaziyyat, fizika, kimya, biologiya və informatika fənləri &uuml;zrə iyul ayında m&uuml;xtəlif &ouml;lkələrdə ke&ccedil;iriləcək beynəlxalq fənn olimpiadalarında daha yaxşı nəticələrin əldə olunması məqsədilə effektli hazırlıq prosesinə başlayıblar.</p>\r\n\r\n<p>&nbsp;</p>'),
(283, 'news', 15, 'az', 'is_published', '1'),
(284, 'news', 15, 'ru', 'keywords', ''),
(285, 'news', 15, 'ru', 'title', ''),
(286, 'news', 15, 'ru', 'short', ''),
(287, 'news', 15, 'ru', 'full', ''),
(288, 'news', 15, 'ru', 'is_published', '0'),
(289, 'news', 15, 'zh', 'keywords', ''),
(290, 'news', 15, 'zh', 'title', ''),
(291, 'news', 15, 'zh', 'short', ''),
(292, 'news', 15, 'zh', 'full', ''),
(293, 'news', 15, 'zh', 'is_published', '0'),
(297, 'news', 16, 'az', 'short', 'Mayın 17-də Təhsil Nazirliyi, Rabitə və Yüksək Texnologiyalar Nazirliyi, Yüksək Texnologiyalar Parkının dəstəyi, «Microsoft Azərbaycan» və “Nar Mobile” tərəfindən təşkil olunmuş “Microsoft Imagine Cup 2016” irimiqyaslı beynəlxalq texnologiya müsabiqəsinin Milli Final mərhələsi keçirilib.'),
(298, 'news', 16, 'az', 'is_published', '1'),
(299, 'news', 16, 'ru', 'keywords', ''),
(300, 'news', 16, 'ru', 'title', ''),
(301, 'news', 16, 'ru', 'full', ''),
(302, 'news', 16, 'ru', 'short', ''),
(303, 'news', 16, 'ru', 'is_published', '0'),
(304, 'news', 16, 'zh', 'keywords', ''),
(305, 'news', 16, 'zh', 'title', ''),
(306, 'news', 16, 'zh', 'full', ''),
(307, 'news', 16, 'zh', 'short', ''),
(308, 'news', 16, 'zh', 'is_published', '0'),
(312, 'menu', 27, 'az', 'name', 'Privacy policy'),
(313, 'menu', 27, 'az', 'is_published_lang', '1'),
(314, 'menu', 27, 'ru', 'name', ''),
(315, 'menu', 27, 'ru', 'is_published_lang', '0'),
(316, 'menu', 27, 'zh', 'name', ''),
(317, 'menu', 27, 'zh', 'is_published_lang', '0'),
(318, 'menu', 28, 'az', 'name', 'İstifadə qaydaları'),
(319, 'menu', 28, 'az', 'is_published_lang', '1'),
(320, 'menu', 28, 'ru', 'name', ''),
(321, 'menu', 28, 'ru', 'is_published_lang', '0'),
(322, 'menu', 28, 'zh', 'name', ''),
(323, 'menu', 28, 'zh', 'is_published_lang', '0'),
(324, 'news', 17, 'az', 'keywords', 'the, bar, and, sunny, that, for, sultan, had, classic, was, his, sign, lost, time, magnificent, lining, tim, saw, among, man'),
(325, 'news', 17, 'az', 'title', 'Sunny\'s Nights'),
(326, 'news', 17, 'az', 'full', '<p><strong>Imagine that Alice had walked into a bar instead of falling down the rabbit hole. In the tradition of J. R. Moehringer&rsquo;s <em>The Tender Bar</em> and the classic reportage of Joseph Mitchell, here is an indelible portrait of what is quite possibly the greatest bar in the world&mdash;and the mercurial, magnificent man behind it.</strong><br />\r\n<br />\r\nThe first time he saw Sunny&rsquo;s Bar, in 1995, Tim Sultan was lost, thirsty for a drink, and intrigued by the single bar sign among the forlorn warehouses lining the Brooklyn waterfront. Inside, he found a dimly lit room crammed with maritime artifacts, a dozen well-seasoned drinkers, and, strangely, a projector playing a classic Martha Graham dance performance. Sultan knew he had stumbled upon someplace special. What he didn&rsquo;t know was that he had just found his new home.<br />\r\n<br />\r\nSoon enough, Sultan has quit his office job to bartend full-time for Sunny Balzano, the bar&rsquo;s owner. A wild-haired Tony Bennett lookalike with a fondness for quoting Shakespeare and Samuel Beckett, Sunny is truly one of a kind. Born next to the saloon that...</p>'),
(327, 'news', 17, 'az', 'short', 'Imagine that Alice had walked into a bar instead of falling down the rabbit hole. In the tradition of J. R. Moehringer’s The Tender Bar and the classic reportage of Joseph Mitchell, here is an indelible portrait of what is quite possibly the greatest bar in the world—and the mercurial, magnificent man behind it.'),
(328, 'news', 17, 'az', 'is_published', '1'),
(329, 'news', 17, 'ru', 'keywords', ''),
(330, 'news', 17, 'ru', 'title', ''),
(331, 'news', 17, 'ru', 'full', ''),
(332, 'news', 17, 'ru', 'short', ''),
(333, 'news', 17, 'ru', 'is_published', '0'),
(334, 'news', 17, 'zh', 'keywords', ''),
(335, 'news', 17, 'zh', 'title', ''),
(336, 'news', 17, 'zh', 'full', ''),
(337, 'news', 17, 'zh', 'short', ''),
(338, 'news', 17, 'zh', 'is_published', '0'),
(339, 'news', 18, 'az', 'keywords', 'elmi, təhsil, ali, gənc, müavini, doktorantların, bayramov, tərəfindən, konfrans, gənclərin, prezidenti, çıxış, nazirliyi, həm, yüksək, yaradılıb, elm, nazirinin, yeni, tədqiqatçıların'),
(340, 'news', 18, 'az', 'title', 'Doktorantların və gənc tədqiqatçıların Respublika elmi konfransı'),
(341, 'news', 18, 'az', 'full', '<p>Mayın 24-də Təhsil Nazirliyinin təşkilat&ccedil;ılığı ilə doktorantların və gənc tədqiqat&ccedil;ıların XX Respublika elmi konfransının a&ccedil;ılış mərasimi ke&ccedil;irilib.</p>\r\n\r\n<p>Mərasimdə təhsil nazirinin m&uuml;avini Ceyhun Bayramov, akademiklər, ali təhsil m&uuml;əssisələrinin rəhbərləri, tanınmış ziyalılar, doktorantlar və gənc tədqiqat&ccedil;ılar iştirak ediblər.</p>\r\n\r\n<p>Hər il ənənəvi olaraq təşkil edilən konfrans bu dəfə Azərbaycanda &ldquo;Multikulturalizm ili&rdquo;nə həsr olunub.</p>\r\n\r\n<p>Tədbirdə &ccedil;ıxış edən təhsil nazirinin m&uuml;avini Ceyhun Bayramov bildirib ki, builki konfrans &ldquo;Multikulturalizm ili&rdquo; &ccedil;ər&ccedil;ivəsində və &uuml;mummilli lider Heydər Əliyevin anadan olmasının 93-c&uuml; ild&ouml;n&uuml;m&uuml;nə həsr olunmuş tədbirlər sırasında &ouml;z&uuml;nəməxsus yer tutur. Konfrans gənclərə imkan verir ki, Azərbaycanın davamlı inkişafinı və &ccedil;i&ccedil;əklənməsini təmin edən elmi baxışlarını, yaratdıqları yeni nəzəriyyə və texnologiyalar haqqında fikirlərini b&ouml;l&uuml;şs&uuml;nlər, elmi biliklərini daha da zənginləşdirsinlər.</p>\r\n\r\n<p>M&uuml;asir cəmiyyətdə siyasi, iqtisadi və informasiya sahələrində rəqabətin g&uuml;cləndiyini nəzərə &ccedil;atdıran nazir m&uuml;avini təbii resursların kəskin azaldığı və ekoloji balansın pozulduğu bir d&ouml;vrdə elm və təhsilin rolunun s&uuml;rətlə artdığını s&ouml;yləyib. &Ouml;z&uuml;nun inkişaf strategiyasını insan kapitalının və intellektual resursların &uuml;zərində quran &ouml;lkəmiz Azərbaycan Respublikasının Prezidenti cənab İlham Əliyevin dediyi kimi, neft kapitalının insan kapitalına &ccedil;evrilməsi prinsipinə sadiqdir.</p>\r\n\r\n<p>C.Bayramov qeyd edib ki, təhsil sahəsində aparılan islahatlar yeni d&uuml;ş&uuml;ncəli və geniş d&uuml;nyag&ouml;r&uuml;şl&uuml; gənclərin hazırlanması məqsədlərinə y&ouml;nəlib. Təhsilalanların tədqiqat aparması, yeni informasiya texnologiyalarından istifadə etməsi və xarici dilləri &ouml;yrənməsi &uuml;&ccedil;&uuml;n geniş imkanlar yaradılıb.</p>\r\n\r\n<p>Elm və təhsilin səmərəli əlaqələrinin genişləndirilməsinin əhəmiyyətinə toxunan nazir m&uuml;avini &ldquo;Azərbaycan Respublikasında təhsilin inkişafı &uuml;zrə D&ouml;vlət Strategiyası&rdquo;nın qarşıya qoyduğu strateji istiqamət və hədəflərin Azərbaycan təhsilinin XXI əsrin &ccedil;ağırışlarına uyğun inkişaf meyillərini m&uuml;əyyənləşdirdiyini bildirib. Ali təhsil m&uuml;əssisələrində &ccedil;alışan elmi-pedaqoji kadrların orta yaş g&ouml;stəricilərinin y&uuml;ksək olması gənc elmi kadrların hazırlanmasını qarşıda duran əsas vəzifələrdən biri kimi aktuallaşdırır.</p>\r\n\r\n<p>C.Bayramov Təhsil Nazirliyi tərəfindən elm və təhsilin gələcək inkişafı &uuml;&ccedil;&uuml;n nəzərdə tutulmuş vacib tədbirləri diqqətə &ccedil;atdırıb, gənclərin potensialının tam realizə edilməsinə imkan verən təhsil m&uuml;hitinin yaradılmasının zəruriliyini vurğulayıb. Bu baxımdan gənclərimizin y&uuml;ksək intellektə malik hissəsi x&uuml;susi qayğı ilə əhatə olunur və onların &ouml;zlərini təsdiq etməsi &uuml;&ccedil;&uuml;n d&ouml;vlətimiz tərəfindən hər c&uuml;r şərait yaradılır. İntellektual potensialın qorunması məqsədi ilə y&uuml;ksək ixtisaslı kadrların fasiləsiz hazırlanması prosesi həm respublikamızın, həm də xarici &ouml;lkələrin ən n&uuml;fuzlu universitetlərində həyata ke&ccedil;irilir.</p>\r\n\r\n<p>Nazir m&uuml;avini bildirib ki, &ldquo;Thomson Reuters&rdquo; Agentliyinin bazasına daxil olan jurnalların elmi ictimaiyyət arasındakı n&uuml;fuzunu nəzərə alaraq, eləcə də Azərbaycan alimləri və doktorantları &uuml;&ccedil;&uuml;n bu bazadan istifadə etmək imkanını yaratmaq və alimlərimizin elmi fəaliyyətinə dair elmimetrik g&ouml;stəriciləri əldə etmək məqsədilə Təhsil Nazirliyi &ldquo;Thomson Reuters&rdquo; Agentliyi ilə əməkdaşlıq haqqında m&uuml;qavilə imzalayıb. M&uuml;qaviləyə əsasən, &ouml;lkəmizin 40 ali təhsil m&uuml;əssisəsinə abunə vasitəsilə bu Agentliyin məhsul və xidmətlərinə, eləcə də &ldquo;Web of Science&rdquo; platformasının bazasına &ccedil;ıxış imkanı yaradılıb. Azərbaycanın elmi nailiyyətlərinin beynəlxalq miqyasda tanınması, ali təhsil m&uuml;əssisələrinin elmi-pedaqoji əməkdaşlarının elmi fəaliyyətinin və nəşr aktivliyinin daha da y&uuml;ksəldilməsi məqsədilə Təhsil Nazirliyi &ldquo;Thomson Reuters&rdquo;in bazasına daxil olan jurnallarda &ccedil;ap edilmiş elmi əsərlərə g&ouml;rə hər ilin sonunda m&uuml;əlliflərin m&uuml;kafatlandırması &uuml;&ccedil;&uuml;n m&uuml;sabiqə ke&ccedil;irməyi nəzərdə tutur. M&uuml;stəqil Azərbaycanımızın xoşbəxt gələcəyi məhz gənclərin intellektual səviyyəsindən, milli və &uuml;mumbəşəri dəyərlərə dərindən yiyələnməsindən asılıdır. Bu m&uuml;h&uuml;m məsələlərin həlli yolunda sizin hər birinizə m&uuml;vəffəqiyyətlər, konfransın işinə isə uğurlar diləyirəm.</p>\r\n\r\n<p>Sonra &ccedil;ıxış edənlər gənclərin elmi tədqiqatlara cəlb olunmasının vacibliyini s&ouml;yləyib, son illərdə bu istiqamətdə atılan addımların təqdirəlayiq olduğunu bildiriblər.&nbsp;</p>\r\n\r\n<p>İki g&uuml;n davam edəcək kоnfransa 20 ali təhsil m&uuml;əssisəsindən və AMEA-dan 650 tezis təqdim olunub. Doktorantların və gənc tədqiqat&ccedil;ıların məruzələrinin dinlənilməsi və m&uuml;zakirəsi &uuml;&ccedil;&uuml;n tanınmış alimlərin rəhbərliyi ilə 17 b&ouml;lmə, o c&uuml;mlədən multikulturalizm b&ouml;lməsi yaradılıb.&nbsp;</p>\r\n\r\n<p>Konfransın materialları Azərbaycan D&ouml;vlət Neft və Sənaye Universiteti tərəfindən nəşr olunaraq iştirak&ccedil;ıların istifadəsinə veriləcək.</p>\r\n\r\n<p>Doktorantların və gənc tədqiqat&ccedil;ıların Respublika elmi konfransının materialları Azərbaycan Respublikası Prezidenti yanında Ali Attestasiya Komissiyası tərəfindən dissertasiyaların əsas elmi nəticələrinin dərc olunması t&ouml;vsiyə edilən elmi nəşrlər siyahısına daxildir.</p>\r\n\r\n<p>Plenar iclasdan sonra konfrans &ouml;z işini b&ouml;lmələrdə davam etdirib.</p>'),
(342, 'news', 18, 'az', 'short', 'Mayın 24-də Təhsil Nazirliyinin təşkilatçılığı ilə doktorantların və gənc tədqiqatçıların XX Respublika elmi konfransının açılış mərasimi keçirilib.'),
(343, 'news', 18, 'az', 'is_published_lang', '1'),
(344, 'news', 18, 'ru', 'keywords', ''),
(345, 'news', 18, 'ru', 'title', ''),
(346, 'news', 18, 'ru', 'full', ''),
(347, 'news', 18, 'ru', 'short', ''),
(348, 'news', 18, 'ru', 'is_published_lang', '0'),
(349, 'news', 18, 'zh', 'keywords', ''),
(350, 'news', 18, 'zh', 'title', ''),
(351, 'news', 18, 'zh', 'full', ''),
(352, 'news', 18, 'zh', 'short', ''),
(353, 'news', 18, 'zh', 'is_published_lang', '0'),
(354, 'menu', 17, 'zh', 'name', ''),
(355, 'menu', 17, 'zh', 'is_published_lang', '0'),
(356, 'menu', 19, 'zh', 'name', ''),
(357, 'menu', 19, 'zh', 'is_published_lang', '0'),
(358, 'menu', 26, 'zh', 'name', ''),
(359, 'menu', 26, 'zh', 'is_published_lang', '0'),
(360, 'menu', 29, 'az', 'name', 'VII bölmə - Əmək kitabçalarının doldurulması, düzəlişlər edilməsi və uçotu ilə bağlı məsələlər, nümunələr və normativ baza'),
(361, 'menu', 29, 'az', 'is_published_lang', '1'),
(362, 'menu', 29, 'ru', 'name', 'Новости'),
(363, 'menu', 29, 'ru', 'is_published_lang', '1'),
(364, 'menu', 29, 'zh', 'name', ''),
(365, 'menu', 29, 'zh', 'is_published_lang', '0'),
(366, 'news', 19, 'az', 'keywords', 'bakı, tam, orta, məktəbin, kitab, müəllimi, təhsil, məktəb, community, müsabiqəsinin, edilən, valideynlərin, məqsədi, kvest-i, vətənim-azərbaycan, şagirdlərin, həvəskarı, ədəbiyyata, müəllimlərin, asc'),
(367, 'news', 19, 'az', 'title', 'Community.az portalı onlayn müsabiqələrin qaliblərini təltif edib'),
(368, 'news', 19, 'az', 'full', '<p>Məktəb icmaları &uuml;&ccedil;&uuml;n &ldquo;Kitab Kvest-i&rdquo; və &ldquo;Mənim vətənim-Azərbaycan&rdquo; m&uuml;sabiqələrinə yekun vurulub.</p>\r\n\r\n<p>Bu məqsədlə mayın 25-də Bakı şəhərindəki 18 n&ouml;mrəli tam orta məktəbdə hər iki m&uuml;sabiqə qaliblərinin m&uuml;kafatlandırılması mərasimi ke&ccedil;irilib. Tədbirdə Təhsil Nazirliyinin və Bakı Şəhəri &uuml;zrə Təhsil İdarəsinin əməkdaşları, təhsil ekspertləri, KİV n&uuml;mayəndələri iştirak ediblər.</p>\r\n\r\n<p><a href=\"http://www.community.az/\" target=\"_blank\">Community.az</a>&nbsp;portalı tərəfindən təşkil edilən &ldquo;Kitab Kvest-i&rdquo; m&uuml;sabiqəsinin məqsədi şagirdlərin, m&uuml;əllimlərin və valideynlərin ədəbiyyata olan marağını artırmaqdır. &ldquo;Mənim vətənim&ndash;Azərbaycan&rdquo; m&uuml;sabiqəsi isə iştirak&ccedil;ılara &ouml;zlərini əsl foto həvəskarı kimi g&ouml;stərməyə imkan yaradıb.</p>\r\n\r\n<p>Tədbirdə bildirilib ki, m&uuml;sabiqələrə <a href=\"http://www.community.az\" target=\"_blank\">community.az</a>&nbsp; portalında qeydiyyatdan ke&ccedil;ən 500-dən &ccedil;ox&nbsp; şagird, onların valideynləri və m&uuml;əllimləri qoşulub.</p>\r\n\r\n<p>&ldquo;Kitab Kvesti&rdquo; m&uuml;sabiqəsinin qalibləri Bakı şəhəri 169 n&ouml;mrəli tam orta məktəbin m&uuml;əllimi Albina Əbubəkirova, Sumqayıt şəhəri 23 n&ouml;mrəli tam orta məktəbin m&uuml;əllimi Eleonora Kairova və Bakı şəhəri 158 n&ouml;mrəli tam orta məktəbin məktəb icmasının &uuml;zv&uuml; Nailə Buxlova olub.</p>\r\n\r\n<p>&ldquo;Mənim vətənim-Azərbaycan&rdquo; m&uuml;sabiqəsinin qalibi adına isə Bakı şəhəri 46 saylı tam orta məktəbin m&uuml;əllimi G&uuml;ll&uuml; Əhmədova layiq g&ouml;r&uuml;l&uuml;b.</p>\r\n\r\n<p>Qaliblərə Fəxri Fərman və&nbsp; m&uuml;xtəlif qiymətli hədiyyələr təqdim olunub.</p>\r\n\r\n<p>M&uuml;sabiqəyə &ldquo;Access Bank&rdquo; ASC, &ldquo;Sağlam Ailə&rdquo; MMC, &ldquo;Standard Insurance&rdquo; ASC və &ldquo;Allianz Consult&rdquo; şirkətləri tərəfindən dəstək verilib.</p>\r\n\r\n<p>Qeyd edək ki, m&uuml;sabiqələrin ke&ccedil;irilməsində əsas məqsəd məktəb icmalarının fəaliyyətini stimullaşdırmaq, icma &uuml;zvlərini həvəsləndirmək, m&uuml;əllim, şagird və valideynlərə icma yaratmağı təşviq etməkdən ibarətdir.</p>'),
(369, 'news', 19, 'az', 'short', 'Məktəb icmaları üçün “Kitab Kvest-i” və “Mənim vətənim-Azərbaycan” müsabiqələrinə yekun vurulub.'),
(370, 'news', 19, 'az', 'is_published_lang', '1'),
(371, 'news', 19, 'ru', 'keywords', ''),
(372, 'news', 19, 'ru', 'title', ''),
(373, 'news', 19, 'ru', 'full', ''),
(374, 'news', 19, 'ru', 'short', ''),
(375, 'news', 19, 'ru', 'is_published_lang', '0'),
(376, 'news', 19, 'zh', 'keywords', ''),
(377, 'news', 19, 'zh', 'title', ''),
(378, 'news', 19, 'zh', 'full', ''),
(379, 'news', 19, 'zh', 'short', ''),
(380, 'news', 19, 'zh', 'is_published_lang', '0'),
(381, 'galleries', 10, 'az', 'name', 'Logging test'),
(382, 'galleries', 10, 'az', 'is_published_lang', '1'),
(383, 'galleries', 10, 'ru', 'name', ''),
(384, 'galleries', 10, 'ru', 'is_published_lang', '0'),
(385, 'galleries', 10, 'zh', 'name', ''),
(386, 'galleries', 10, 'zh', 'is_published_lang', '0'),
(387, 'news', 20, 'az', 'keywords', 'təhsil, masallı, rayon, müavini, ümumi, cəlilabad, yardımlı, qurbanov, sahəsində, nazir, rayonlarının, əsas, onları, nazirinin, firudin, görüşdə, hüseynov, işləri, tərbiyə, şöbəsinin'),
(388, 'news', 20, 'az', 'title', 'Masallı, Cəlilabad və Yardımlı rayonlarının təhsil işçiləri ilə görüş'),
(389, 'news', 20, 'az', 'full', '<p>Mayın 25-də Masallı Rayon Mədəniyyət Mərkəzində təhsil nazirinin m&uuml;avini Firudin Qurbanov və Təhsil Nazirliyinin məsul əməkdaşları Masallı, Cəlilabad, Yardımlı rayonlarının təhsil iş&ccedil;iləri ilə g&ouml;r&uuml;ş&uuml;b.</p>\r\n\r\n<p>Tədbirin ke&ccedil;irilməsində məqsəd respublikanın şəhər və rayonlarında &ccedil;alışan təhsil iş&ccedil;iləri ilə sıx əlaqə yaratmaq, onların təklif, rəy və təşəbb&uuml;slərindən həyata ke&ccedil;irilən islahatlar prosesində istifadə etmək, təhsil m&uuml;əssisələrində tərbiyə işinin m&ouml;vcud vəziyyəti və g&uuml;cləndirilməsinin əsas istəqamətləri barədə t&ouml;vsiyələr verməkdən ibarətdir.</p>\r\n\r\n<p>&Ouml;ncə tədbir iştirak&ccedil;ıları &uuml;mummilli lider Heydər Əliyevin abidəsi &ouml;n&uuml;nə g&uuml;l dəstələri d&uuml;zərək, xatirəsini ehtiramla yad ediblər. Sonra Mədəniyyət Mərkəzinin foyesində rayon məktəblilərinin əl işləri və idman sahəsində qazandığı uğurları əks etdirən sərgiyə baxış ke&ccedil;irilib.</p>\r\n\r\n<p>G&ouml;r&uuml;şdə Masallı, Yardımlı və Cəlilabad rayon təhsil ş&ouml;bələrinin m&uuml;dirləri və əməkdaşları, &uuml;mumi və məktəbdənkənar təhsil m&uuml;əssisələrinin direktorları, direktor m&uuml;avinləri, psixoloqlar iştirak ediblər.</p>\r\n\r\n<p>Təhsil nazirinin m&uuml;avini Firudin Qurbanov tədbir iştirak&ccedil;ılarını salamlayıb, onları qarşıdan gələn Respublika G&uuml;n&uuml; m&uuml;nasibətilə təbrik edib. Nazir m&uuml;avini son 25 il ərzində &ouml;lkə həyatının b&uuml;t&uuml;n sahələrində qazanılan uğurlardan, regionlarda, o c&uuml;mlədən Masallı rayonunda həyata ke&ccedil;irilən irimiqyaslı layihələrdən danışıb.</p>\r\n\r\n<p>Təhsil sahəsində aparılan islahatlardan bəhs edən F.Qurbanov son illərdə bir sıra vacib h&uuml;quqi-normativ sənədlərin qəbul olunduğunu diqqətə &ccedil;atdırıb. Təhsilin keyfiyyətinin yaxşılaşdırılması istiqamətində yeni proqramların və dərsliklərin hazırlanması işləri davam etdirilir, 12 illik &uuml;mumi təhsilə ke&ccedil;idlə bağlı m&uuml;zakirələr aparılır. Son 10 ildə &ouml;lkəmizdə 3 mindən &ccedil;ox yeni məktəbin tikildiyini və əsaslı təmir edildiyini s&ouml;yləyən nazir m&uuml;avini Təhsil Strategiyasına əsasən, 2020-ci ilə qədər &uuml;mumi təhsil məktəblərində təhsil alan b&uuml;t&uuml;n şagirdlərin planşetlərlə təmin olunacağını bildirib.</p>\r\n\r\n<p>F.Qurbanov &ccedil;ıxışında təhsil sistemində tədrislə yanaşı, əsas diqqətin təlim-tərbiyə məsələlərinə, m&uuml;əllim-sağird m&uuml;nasibətlərinə y&ouml;nəldiyini və bu işlərin yerinə yetirilməsində m&uuml;əllimlərin &uuml;zərinə b&ouml;y&uuml;k vəzifələr d&uuml;şd&uuml;y&uuml;n&uuml; deyib. M&uuml;asir d&ouml;vrdə &ouml;lkənin təhsil sisteminin ali məqsədi XXI əsrin tələblərinə cavab verən, milli ruhlu, vətənpərvər, bilikli, bacarıqlı, kamil vətəndaşlar yetişdirməkdir. Tərbiyənin strateji istiqamətlərindən bəhs edən nazir m&uuml;avini bu baxımdan məktəbdənkənar təhsilin &uuml;zərinə d&uuml;şən vəzifələr haqqında fikirlərini bildirib.</p>\r\n\r\n<p>Masallı Rayon İcra Hakimiyyətinin baş&ccedil;ısı Rafil H&uuml;seynov b&ouml;lgədə&nbsp;belə bir tədbirin ke&ccedil;irilməsinin&nbsp;təqdirəlayiq hal olduğunu s&ouml;yləyib. R.H&uuml;seynov uşaqların, gənclərin tərbiyəsinə, vətənpərvərlik hisslərinin aşılanmasına x&uuml;susi diqqət yetirdiyinə g&ouml;rə Təhsil Nazirliyinə &ouml;z təşəkk&uuml;r&uuml;n&uuml; bildirib və rayon təhsil iş&ccedil;ilərinə yaradılmış bu imkandan yararlanmağı t&ouml;vsiyə edib.</p>\r\n\r\n<p>G&ouml;r&uuml;şdə &ccedil;ıxış edən Masallı Rayon Təhsil Ş&ouml;bəsinin m&uuml;diri Astan İbişov, Cəlilabad Rayon Təhsil Ş&ouml;bəsinin m&uuml;diri Elminaz Nadirova, Yardımlı Rayon Təhsil Ş&ouml;bəsinin m&uuml;diri Manaf Səmədzadə, Masallı şəhərindəki &ldquo;Dəfinə&rdquo; məktəb-liseyin direktoru Taleh Əkbərov və başqaları &uuml;mumi təhsil məktəblərində tədris, təlim və tərbiyə sahəsində g&ouml;r&uuml;lm&uuml;ş işlərdən s&ouml;hbət a&ccedil;ıb, m&ouml;vcud problemlərin həlli ilə bağlı təkliflərini bildiriblər.</p>\r\n\r\n<p>Sonda təhsil iş&ccedil;ilərinin fikirləri dinlənilib və onları maraqlandıran suallar cavablandırılıb.</p>'),
(390, 'news', 20, 'az', 'short', 'Mayın 25-də Masallı Rayon Mədəniyyət Mərkəzində təhsil nazirinin müavini Firudin Qurbanov və Təhsil Nazirliyinin məsul əməkdaşları Masallı, Cəlilabad, Yardımlı rayonlarının təhsil işçiləri ilə görüşüb.'),
(391, 'news', 20, 'az', 'is_published_lang', '1'),
(392, 'news', 20, 'ru', 'keywords', ''),
(393, 'news', 20, 'ru', 'title', ''),
(394, 'news', 20, 'ru', 'full', ''),
(395, 'news', 20, 'ru', 'short', ''),
(396, 'news', 20, 'ru', 'is_published_lang', '0'),
(397, 'news', 20, 'zh', 'keywords', ''),
(398, 'news', 20, 'zh', 'title', ''),
(399, 'news', 20, 'zh', 'full', ''),
(400, 'news', 20, 'zh', 'short', ''),
(401, 'news', 20, 'zh', 'is_published_lang', '0'),
(402, 'menu', 30, 'az', 'name', 't8'),
(403, 'menu', 30, 'az', 'is_published_lang', '1'),
(404, 'menu', 30, 'ru', 'name', ''),
(405, 'menu', 30, 'ru', 'is_published_lang', '0'),
(406, 'menu', 30, 'ge', 'name', ''),
(407, 'menu', 30, 'ge', 'is_published_lang', '0'),
(408, 'menu', 29, 'ge', 'name', ''),
(409, 'menu', 29, 'ge', 'is_published_lang', '0'),
(469, 'news', 22, 'ge', 'title', ''),
(470, 'news', 22, 'ge', 'full', ''),
(471, 'news', 22, 'ge', 'short', ''),
(472, 'news', 22, 'ge', 'is_published_lang', '0'),
(466, 'news', 22, 'ru', 'short', ''),
(467, 'news', 22, 'ru', 'is_published_lang', '0'),
(468, 'news', 22, 'ge', 'keywords', ''),
(461, 'news', 22, 'az', 'short', 'Azərbaycan nümayəndə heyəti Koreyada səfərdədir'),
(462, 'news', 22, 'az', 'is_published_lang', '1'),
(463, 'news', 22, 'ru', 'keywords', ''),
(464, 'news', 22, 'ru', 'title', ''),
(465, 'news', 22, 'ru', 'full', '');
INSERT INTO `translates` (`id`, `ref_table`, `ref_id`, `lang`, `fieldname`, `text`) VALUES
(460, 'news', 22, 'az', 'full', '<div class=\"news_desc_text\">\r\n<div class=\"news-archive\">\r\n<p style=\"text-align:justify;text-indent:35.4pt;\"><span style=\"font-size:12px;\"><span style=\"font-family:arial,helvetica,sans-serif;\">İyunun 14-də Koreyanın paytaxtı Seul şəhərində Azərbaycan Respublikası H&ouml;kuməti və Koreya Respublikası H&ouml;kuməti arasında iqtisadi əməkdaşlıq &uuml;zrə Birgə Komissiyanın ilk iclası ke&ccedil;irilib.</span></span></p>\r\n\r\n<p style=\"text-align:justify;text-indent:35.4pt;\"><span style=\"font-size:12px;\"><span style=\"font-family:arial,helvetica,sans-serif;\">İclasda &ouml;lkəmiz Azərbaycan Respublikası Prezidentinin sərəncamı ilə m&uuml;əyyən edilmiş, Azərbaycan Respublikasının rabitə və y&uuml;ksək texnologiyalar nazirinin m&uuml;avini İltimas Məmmədovun rəhbərlik etdiyi n&uuml;mayəndə heyəti ilə təmsil olunub.</span></span></p>\r\n\r\n<p style=\"text-align:justify;text-indent:35.4pt;\"><span style=\"font-size:12px;\"><span style=\"font-family:arial,helvetica,sans-serif;\">Təhsil nazirinin m&uuml;avini Firudin Qurbanov sessiyanın iclasında &ccedil;ıxış edərək, &ouml;lkələrimiz və xalqlarımız arasındakı &uuml;mumi oxşarlığın əlaqələrimizin inkişafında m&uuml;h&uuml;m rol oynadığını bildirib. F.Qurbanov qeyd edib ki, digər istiqamətlərlə yanaşı, təhsil sahəsində də əlaqələrimiz inkişaf yolundadır: &ldquo;Azərbaycan və Koreya dilləri &ouml;lkələrimizin n&uuml;fuzlu universitetlərində qarşılıqlı şəkildə tədris olunur, iki d&ouml;vlətin təhsil m&uuml;əssisələri arasında əməkdaşlıq genişlənir. &ldquo;Azərbaycan Respublikası Təhsil Nazirliyi və Koreya Respublikası Təhsil və İnsan Resurslarının İnkişafı Nazirliyi arasında təhsil sahəsində əməkdaşlığa dair Anlaşma Memorandumu&rdquo; &ouml;lkələrimizin qarşılıqlı təhsil əlaqələrinin h&uuml;quqi bazasını təşkil edir&rdquo;.</span></span></p>\r\n\r\n<p style=\"text-align:justify;text-indent:35.4pt;\"><span style=\"font-size:12px;\"><span style=\"font-family:arial,helvetica,sans-serif;\">İclasdan sonra nazir m&uuml;avini Koreyada fəaliyyət g&ouml;stərən &ldquo;Posco Daewoo Corporation&rdquo;un meneceri Lee Jong Moo ilə g&ouml;r&uuml;ş&uuml;b. G&ouml;r&uuml;ş zamanı L.J.Moo bildirib ki, Bakıda peşə təlim-tədris mərkəzinin yaradılması ilə maraqlanırlar.</span></span></p>\r\n\r\n<p style=\"text-align:justify;text-indent:35.4pt;\"><span style=\"font-size:12px;\"><span style=\"font-family:arial,helvetica,sans-serif;\">F.Qurbanovun n&ouml;vbəti g&ouml;r&uuml;ş&uuml; Peşə Təhsili və Təlimi &uuml;zrə Koreya Tədqiqat İnstitutunun (KRIVET) n&uuml;mayəndələri ilə olub. Koreya Respublikası Təhsil və İnsan Resurslarının İnkişafı Nazirliyinin departament m&uuml;diri Kim &Ccedil;ohonqun da iştirak etdiyi g&ouml;r&uuml;şdə KRIVET-lə bağlı əməkdaşlığa dair fikir m&uuml;badiləsi aparılıb.</span></span></p>\r\n\r\n<p style=\"text-align:justify;text-indent:35.4pt;\"><span style=\"font-size:12px;\"><span style=\"font-family:arial,helvetica,sans-serif;\">F.Qurbanov səfər &ccedil;ər&ccedil;ivəsində həm&ccedil;inin, Koreyada təhsil alan azərbaycanlı tələbələrlə g&ouml;r&uuml;ş&uuml;b və onları maraqlandıran sualları cavablandırıb.</span></span></p>\r\n</div>\r\n</div>\r\n\r\n<h2 class=\"news_desc_title\">&nbsp;</h2>'),
(458, 'news', 22, 'az', 'keywords', 'nümayəndə, heyəti, koreyada, səfərdədir'),
(459, 'news', 22, 'az', 'title', 'Azərbaycan nümayəndə heyəti Koreyada səfərdədir'),
(437, 'news', 14, 'az', 'keywords', ''),
(438, 'news', 14, 'ru', 'keywords', ''),
(439, 'news', 14, 'ge', 'keywords', ''),
(440, 'news', 14, 'ge', 'title', ''),
(441, 'news', 14, 'ge', 'short', ''),
(442, 'news', 14, 'ge', 'full', ''),
(443, 'news', 21, 'az', 'keywords', '104, fax, 886-2-28856168, tel, 886-2-28862382, ıe10, safari, chrome, firefox'),
(444, 'news', 21, 'az', 'title', '版權所有© 財團法人中央廣播電臺 | 臺北市104中山區北安路55號 | TEL:886-2-28856168 FAX:886-2-28862382 | 建議最佳瀏覽器 IE10以上、Firefox、Chrome、Safari 隱私權聲明'),
(445, 'news', 21, 'az', 'full', '<p>版權所有&copy; 財團法人中央廣播電臺 | 臺北市104中山區北安路55號 | TEL:886-2-28856168 FAX:886-2-28862382 | 建議最佳瀏覽器 IE10以上、Firefox、Chrome、Safari<br />\r\n<a data-func=\"pop_privacy\" href=\";\">隱私權聲明</a> 版權所有&copy; 財團法人中央廣播電臺 | 臺北市104中山區北安路55號 | TEL:886-2-28856168 FAX:886-2-28862382 | 建議最佳瀏覽器 IE10以上、Firefox、Chrome、Safari<br />\r\n<a data-func=\"pop_privacy\" href=\";\">隱私權聲明</a> 版權所有&copy; 財團法人中央廣播電臺 | 臺北市104中山區北安路55號 | TEL:886-2-28856168 FAX:886-2-28862382 | 建議最佳瀏覽器 IE10以上、Firefox、Chrome、Safari<br />\r\n<a data-func=\"pop_privacy\" href=\";\">隱私權聲明</a></p>'),
(446, 'news', 21, 'az', 'short', '版權所有© 財團法人中央廣播電臺 | 臺北市104中山區北安路55號 | TEL:886-2-28856168 FAX:886-2-28862382 | 建議最佳瀏覽器 IE10以上、Firefox、Chrome、Safari'),
(447, 'news', 21, 'az', 'is_published_lang', '1'),
(448, 'news', 21, 'ru', 'keywords', ''),
(449, 'news', 21, 'ru', 'title', ''),
(450, 'news', 21, 'ru', 'full', ''),
(451, 'news', 21, 'ru', 'short', ''),
(452, 'news', 21, 'ru', 'is_published_lang', '0'),
(453, 'news', 21, 'ge', 'keywords', ''),
(454, 'news', 21, 'ge', 'title', ''),
(455, 'news', 21, 'ge', 'full', ''),
(456, 'news', 21, 'ge', 'short', ''),
(457, 'news', 21, 'ge', 'is_published_lang', '0'),
(473, 'news', 23, 'az', 'keywords', 'təhsil, xaricdə, akademik, dövlət, proqramı, universitetlərin, neft, ali, almış, əsas, rektoru, gənclərinin, 2007-2015-ci, məzunların, təhsili, təmin, əlizadə, hafiz, məzunlar, akif'),
(474, 'news', 23, 'az', 'title', 'Məzunlar akademik fəaliyyətdə'),
(475, 'news', 23, 'az', 'full', '<p>Dekabrın 17-də <a href=\"http://ada.edu.az\" target=\"_blank\">&ldquo;ADA&rdquo; Universiteti</a>ndə &ldquo;<a href=\"http://xaricdetehsil.edu.gov.az\" target=\"_blank\">2007-2015-ci illərdə Azərbaycan gənclərinin xaricdə təhsili &uuml;zrə D&ouml;vlət Proqramı&rdquo;</a> məzunlarının akademik fəaliyyətə cəlb olunması ilə bağlı işg&uuml;zar panel ke&ccedil;irilib.&nbsp;</p>\r\n\r\n<p>Tədbirdə təhsil naziri Mikayıl Cabbarov, <a href=\"http://oilfund.az\" target=\"_blank\">D&ouml;vlət Neft Fondu</a>nun icra&ccedil;ı direktoru &nbsp;Şahmar M&ouml;vs&uuml;mov, <a href=\"http://www.science.gov.az\" target=\"_blank\">AMEA</a>-nın prezidenti Akif Əlizadə, ADA universitetinin rektoru Hafiz Paşayev, eləcə də digər ali təhsil m&uuml;əssisələrinin rəhbərləri, xaricdə təhsil almış magistr və doktorant məzunlar iştirak edib.&nbsp;</p>\r\n\r\n<p>Panelin &nbsp;əsas məqsədi xaricdə təhsil almış gənclərin universitetlərin akademik və idarəetmə fəaliyyətində iştirakının təmin olunmasıdır.&nbsp;</p>\r\n\r\n<p>Təhsil naziri Mikayıl Cabbarov giriş s&ouml;z&uuml;ndə qeyd edib ki, &ldquo;2007-2015-ci illərdə Azərbaycan gənclərinin xaricdə təhsili &uuml;zrə D&ouml;vlət Proqramı&rdquo;nın əsas fəlsəfəsi &nbsp;&ouml;lkəmizin &nbsp;rəqabətəqabil &nbsp;kadrlara tələbatı ilə bağlı olub. Bu məqsədlə &ouml;tən illər ərzində 3500-dən &ccedil;ox tələbə d&ouml;vlətimizin verdiyi təqa&uuml;d imkanları ilə d&uuml;nyanın aparıcı universitetlərində təhsil almaq h&uuml;ququ qazanıb.</p>\r\n\r\n<p>AMEA-nın prezidenti Akif Əlizadə &nbsp;bildirib ki, &ldquo;Elm haqqında&rdquo; qanuna əsasən tədqiqat universitetləri fəaliyyətə başlayacaq. Bu universitetlərin uğurlu fəaliyyəti həm də gənc elm adamlarının t&ouml;hfələrindən asılı olacaq.</p>\r\n\r\n<p>ADA Universitetinin rektoru Hafiz Paşayev universitetlərin hər zaman hazırlıqlı m&uuml;əllimlərə ehtiyacı olduğunu vurğulayıb və rəhbərlik etdiyi ali təhsil m&uuml;əssisəsinin təcr&uuml;bəsindən danışıb.</p>\r\n\r\n<p>D&ouml;vlət Neft Fondunun icra&ccedil;ı direktoru &nbsp;Şahmar M&ouml;vs&uuml;mov qeyd edib ki, əsas ideyası &ldquo;neft kapitalından insan kapitalına&quot; olan &quot;2007-2015-ci illərdə Azərbaycan gənclərinin xaricdə təhsili &uuml;zrə D&ouml;vlət Proqramı&quot; artıq &ouml;z&uuml;n&uuml; doğruldub. Bu g&uuml;n həmin resurs universitetlərimizin auditoriyalarında məzunların akademik fəaliyyəti ilə əlavə dəyər yaratmalıdır.</p>\r\n\r\n<p><a href=\"http://sabah.edu.az\" target=\"_blank\">SABAH qrupları</a>nın təqdimatında universitetlərdə məzunların akademik fəaliyyəti &uuml;&ccedil;&uuml;n yaradılan imkanlardan bəhs edilib.&nbsp;</p>\r\n\r\n<p>Sonra məzunlar a&ccedil;ıq fikir m&uuml;badiləsinə qoşularaq akademik sahədə daha fəal iştirakı təmin edəcək n&uuml;anslar barədə rəy və şərhlərini s&ouml;yləyiblər.&nbsp;</p>\r\n\r\n<p>Paneldən sonra xaricdə təhsil almış məzunlarla ali təhsil m&uuml;əssisələrinin rəhbər şəxsləri arasında işg&uuml;zar &nbsp;g&ouml;r&uuml;şlər təşkil olunub.&nbsp;</p>'),
(476, 'news', 23, 'az', 'short', 'Dekabrın 17-də “ADA” Universitetində “2007-2015-ci illərdə Azərbaycan gənclərinin xaricdə təhsili üzrə Dövlət Proqramı” məzunlarının akademik fəaliyyətə cəlb olunması ilə bağlı işgüzar panel keçirilib. '),
(477, 'news', 23, 'az', 'is_published_lang', '1'),
(478, 'news', 23, 'ru', 'keywords', ''),
(479, 'news', 23, 'ru', 'title', ''),
(480, 'news', 23, 'ru', 'full', ''),
(481, 'news', 23, 'ru', 'short', ''),
(482, 'news', 23, 'ru', 'is_published_lang', '0'),
(483, 'news', 24, 'az', 'keywords', 'tərtibatı, sarayında, keçirilib, şənlik, qar, mədəniyyət, yeni, adlı, qızın, nağılı, təhsil, təlim, dekabrın, mərdəkan, keçirilir, tələbələrin, yanvarın, bakı, ixtisasında, alan'),
(484, 'news', 24, 'az', 'title', '“Qar qızın nağılı” adlı yeni il şənliyi keçirilir'),
(485, 'news', 24, 'az', 'full', '<p>Dekabrın 29-da Mərdəkan Mədəniyyət Sarayında &ldquo;Qar qızın nağılı&rdquo; adlı yeni il şənliyi ke&ccedil;irilib.</p>\r\n\r\n<p>Şənlik 5 n&ouml;mrəli Bakı Peşə Məktəbinin tədbir və mərasimlərin təşkilat&ccedil;ısı ixtisasında təhsil alan tələbələrin təşkilat&ccedil;ılığı ilə ke&ccedil;irilib.</p>\r\n\r\n<p>Şənlik 2017-ci il yanvarın 3-dək qeyd olunan mədəniyyət sarayında davam edəcək. Tamaşanın səhnə tərtibatı, dekorasiya işi, personajların kostyumları, qrim, səsyazma, bilet tərtibatı, &ccedil;apı və s. məktəbin təlim emalatxanalarında istehsalat təlimi ustalarının rəhbərliyi ilə şagirdlər tərəfindən hazırlanıb.</p>'),
(486, 'news', 24, 'az', 'short', 'Dekabrın 29-da Mərdəkan Mədəniyyət Sarayında “Qar qızın nağılı” adlı yeni il şənliyi keçirilib.'),
(487, 'news', 24, 'az', 'is_published_lang', '1'),
(488, 'news', 24, 'ru', 'keywords', ''),
(489, 'news', 24, 'ru', 'title', ''),
(490, 'news', 24, 'ru', 'full', ''),
(491, 'news', 24, 'ru', 'short', ''),
(492, 'news', 24, 'ru', 'is_published_lang', '0'),
(493, 'news', 25, 'az', 'keywords', 'təhsil, daha, kompüter, tələbə, stenford, şəxsi, məktəbində, ilk, uğur, iki, sərbəstlik, beynəlxalq, elmləri, olub, məktəbdə, xaricdə, idarə, formulu, nəyisə, əsas'),
(494, 'news', 25, 'az', 'title', 'Stenfordda təhsil alan tələbəmiz: “Karyeramın izi ilə istənilən yerə gedəcəyəm” – “Uğur formulu”'),
(495, 'news', 25, 'az', 'full', '<p><a href=\"http://edu.gov.az\" target=\"_blank\">Təhsil Nazirliyi</a> və <a href=\"http://1news.az\" target=\"_blank\">1news.az</a> İnformasiya Agentliyinin &ldquo;Uğur formulu&rdquo; layihəsi davam edir.</p>\r\n\r\n<p>&ldquo;Uğur formulu&rdquo; layihəsinin budəfəki qonağı Sona Allahverdiyevadır.</p>\r\n\r\n<p>Sona 1997-ci ildə Bakıda anadan olub. İlk &uuml;&ccedil; il D&uuml;nya Xəzər Məktəbində, daha sonra iki il Bakı Oksford Məktəbində, 7 il isə Azərbaycan Beynəlxalq Məktəbində təhsil alıb. Burada Beynəlxalq bakalavr diplomu əldə edib. Sona hazırda d&uuml;nyanın n&uuml;fuzlu Stenford Universitetində komp&uuml;ter elmləri və sahibkarlıq &uuml;zrə təhsilini davam etdirir.</p>\r\n\r\n<p><strong>- Xaricdə&nbsp; təhsil sizə nə verir? &Uuml;midlərinizi doğruldurmu?</strong></p>\r\n\r\n<p>- Əlbəttə. Stenford Universiteti məni oxuduğum b&uuml;t&uuml;n fənlər &uuml;zrə g&uuml;cl&uuml; nəzəriyyə, həm&ccedil;inin b&uuml;t&uuml;n sahələrdə praktiki biliklə təmin edir. Tədrisin &ccedil;ox hissəsi auditoriyada baş tutsa da, mən bir &ccedil;ox məlumatları yaşıdlarımdan &ouml;yrənirəm. &Ouml;z şirkətlərini yaradıb-yaratmamaları, səhm bazarında milyonlar qazanıb-qazanmamalarından və ya elmi tədqiqat sahəsinə nailiyyətlər əldə edib-etməmələrindən asılı olmayaraq Stenforddakı hər bir tələbə yoldaşımdan nə isə &ouml;yrənirəm.</p>\r\n\r\n<p><strong>- Niyə məhz bu ixtisası se&ccedil;diniz?</strong></p>\r\n\r\n<p>- Stenforddakı ilk r&uuml;b ərzində komp&uuml;ter elmlərini &ccedil;ox bəyəndim. Komp&uuml;ter elmləri məni he&ccedil; bir fənnin edə bilmədiyi qədər təşviq və cəlb edir. Məncə, komp&uuml;ter elmləri yaradıcılıq və hesablamanın vəhdətidir, kəsişmə n&ouml;qtəsində isə texnologiya vasitəsilə nəyisə heyrətamiz etmək durur. Komp&uuml;ter elmlərini oxuyarkən mənə elə gəlir ki, mən m&uuml;mk&uuml;nl&uuml;y&uuml;n sərhədini ke&ccedil;ərək qeyri-m&uuml;mk&uuml;nl&uuml;yə addım atıram.</p>\r\n\r\n<p>D&uuml;zd&uuml;r, bu &ccedil;ətin, bəzən isə qeyri-m&uuml;mk&uuml;n g&ouml;r&uuml;nə bilər, amma nəticə etibarı ilə hansısa məhsulu &ndash; tətbiqi, saytı, alqoritmi və s. g&ouml;stərib fəxrlə deyə bilərəm: &ldquo;Bunu mən etmişəm&rdquo;. Məsələn, sonuncu layihələrimdən biri komp&uuml;ter yaddaş sistemi yaratmaq idi. Bu yaxınlarda isə Silikon vadisində fəaliyyət g&ouml;stərən filantropik şirkət &uuml;&ccedil;&uuml;n mobil tətbiqin dizaynı &uuml;zərində işləyəcəyəm.</p>\r\n\r\n<p><strong>- Fərqli &ouml;lkə və təhsil m&uuml;hitini g&ouml;rd&uuml;kdən sonra əvvəl oxuduğunuz ali məktəbdə nəyin dəyişməsini arzulayardınız?</strong></p>\r\n\r\n<p>Azərbaycan Beynəlxalq Məktəbində və oxuduğum digər m&uuml;əssisələrdəki təhsildən razı qalsam da, inanıram ki, təhsil sistemini təkmilləşdirmək &uuml;&ccedil;&uuml;n qarşımızda uzun bir yol var. D&uuml;ş&uuml;n&uuml;rəm ki, bizim təhsil sistemində ən əsas iki dəyişikliyi etmək lazımdır. Birincisi, təlimə nəzəri deyil, praktiki &uuml;sulla yanaşmaq vacibdir.</p>\r\n\r\n<p>M&uuml;şahidə etmişəm ki, faktları əzbərləməkdənsə, layihələr, təcr&uuml;bə proqramları və yarım g&uuml;n işlər sayəsində daha &ccedil;ox bilik qazanıram.</p>\r\n\r\n<p>İkinci m&uuml;h&uuml;m dəyişiklik isə tələbələrdə daha g&uuml;cl&uuml; sərbəstlik hissi yaratmaqdır. İnanıram ki, sərbəstlik tələbələri işi tapşırıldığı &uuml;&ccedil;&uuml;n deyil, bu işi g&ouml;rməyə onlarda həvəs olduğu &uuml;&ccedil;&uuml;n etməyə s&ouml;vq edəcək. Sərbəstlik mənim uğur qazanmaq &uuml;&ccedil;&uuml;n şəxsi potensialımı reallaşdırmağımda əsas rol oynadı.</p>\r\n\r\n<p><strong>- Təhsil aldığınız &ouml;lkədə Azərbaycanla bağlı nələri tanıtmısınız?</strong></p>\r\n\r\n<p>- Universitetin əksər tələbələri Azərbaycanı yaxından tanısalar da, mən hər zaman həmkarlarımı və qrup yoldaşlarımı &ouml;lkəmiz haqqında daha &ccedil;ox məlumatlandırmağa &ccedil;alışıram. Bir &ccedil;ox dostum muğamın g&ouml;zəlliyinə heyrandır və mənim onlara bəhs etdiyim m&ouml;htəşəm memarlığı &ouml;z g&ouml;zləri ilə g&ouml;rmək &uuml;&ccedil;&uuml;n Bakıya səfər etməyə can atırlar.</p>\r\n\r\n<p><strong>-&nbsp; Oxuduğunuz ali məktəbdə m&uuml;əllim-tələbə m&uuml;nasibəti necədir?</strong></p>\r\n\r\n<p>- M&uuml;əllimlərim mənim məsləhət&ccedil;ilərim və dostlarımdır. M&uuml;əllimlərimdən biri ilə onun bir ne&ccedil;ə məzunla birgə idarə etdiyi &ldquo;Siyasi psixologiya araşdırma qrupu&rdquo; adlı tədqiqat laboratoriyasında &ccedil;alışmışam. M&uuml;əllimlərimlə ən bəyəndiyim qarşılıqlı m&uuml;nasibət dərsdən sonra sevdiyimiz m&ouml;vzu, istəklərimiz və &uuml;mumi maraqlarımızla bağlı m&uuml;zakirələr aparmaq &uuml;&ccedil;&uuml;n onlarla yemək yemək və ya qəhvə i&ccedil;məkdir.</p>\r\n\r\n<p><strong>- Daha &ccedil;ox hansı &ccedil;ətinlikləriniz olub?</strong></p>\r\n\r\n<p>- Burada qarşılaşdığım ən b&ouml;y&uuml;k &ccedil;ətinlik hər işi g&ouml;rməyə &ccedil;alışmağım və &ouml;z&uuml;m&uuml; məhdudlaşdıra bilməməyim idi. İlk ilimin sonunda artıq 7 klubun &uuml;zv&uuml; idim, tamaşa səhnələşdirirdim və gərəyindən daha &ccedil;ox dərs alırdım. Bu il vaxtımı daha yaxşı planlaşdırmağı və vəzifələrimin &ouml;hdəsindən gəlməyi &ouml;yrənmişəm.</p>\r\n\r\n<p><strong>- Oxuduğunuz m&uuml;ddətdə qarşılaşdığınız maraqlı hadisə hansı olub?</strong></p>\r\n\r\n<p>- Yalnız birini se&ccedil;mək &ccedil;ətin olsa da, ilk komp&uuml;ter proqramımı yaratmağım maraqlı olmuşdu. İki yuxusuz g&uuml;ndən sonra səhər saat 6-da proqram nəhayət ki, n&ouml;qsansız &ccedil;alışmışdı.</p>\r\n\r\n<p>Bu yaxınlarda isə mənim şəxsi saytım (<a href=\"http://www.5ona.com\" target=\"_blank\">www.5ona.com</a>) istifadəyə verildi.</p>\r\n\r\n<p><strong>- Universitetdə əcnəbi tələbələrə m&uuml;nasibətdən razısınızmı?</strong></p>\r\n\r\n<p>- Adətən məni amerikalı zənn etsələr də, əcnəbi tələbə olmağım xoş bir s&uuml;rpriz kimi qarşılanır. Mənə tez-tez doğulduğum şəhər, mədəniyyətlər arasındakı fərqlər, siyasi d&uuml;ş&uuml;ncələrim və sair, həm&ccedil;inin Azərbaycana səfər barədə suallar verirlər.</p>\r\n\r\n<p><strong>-&nbsp; Asudə vaxtınızda nə ilə məşğul olursunuz?</strong></p>\r\n\r\n<p>- Braziliya teatrı (Məzlumların Teatrı) &uuml;slubunda olan &ldquo;ACT!&rdquo; adlı &ouml;z tamaşamı səhnələşdirirəm. Həm&ccedil;inin universitetdəki b&uuml;t&uuml;n tələbə qruplarının maliyyə məsələlərini idarə edən Stenford Tələbə Təşkilatının İnkişaf &uuml;zrə direktoruyam. Eyni zamanda Stenford UNİCEF və d&uuml;nyaya sosial rifah gətirmək &uuml;&ccedil;&uuml;n texnologiyadan istifadəyə həsr olunmuş &lsquo;CS + Social Good&rsquo; tələbə birliklərinin də idarə heyətinin &uuml;zv&uuml;yəm.</p>\r\n\r\n<p><strong>- Təhsilinizi başa vurduqdan sonra harada &ccedil;alışmaq istəyərdiniz? Gələcək planlarınız necədir ?</strong></p>\r\n\r\n<p>- Mən gələcəyim haqqında coğrafi planlar qurmamağa &uuml;st&uuml;nl&uuml;k verirəm. Karyeramın və şəxsi məqsədlərimin izi ilə və ən yaxşı imkanların arxasınca istənilən yerə gedəcəyəm.</p>\r\n\r\n<p><strong>- Siz xaricdə təhsil almağa başladıqdan sonra &ouml;z&uuml;n&uuml;zdə nələri dəyişmisiniz ?</strong></p>\r\n\r\n<p>- Şəxsi və akademik potensialıma nail olmağa yaxınlaşsam da fundamental dəyərlərimi və keyfiyyətlərimi dəyişməmişəm.</p>\r\n\r\n<p><strong>- &Ouml;lkəmizdəki dostlarınıza, həmyaşıdlarınıza nə demək istərdiniz?</strong></p>\r\n\r\n<p>- B&ouml;y&uuml;k d&uuml;ş&uuml;n&uuml;n, daha b&ouml;y&uuml;y&uuml;n&uuml; xəyal edin və hər zaman xəyallarınızın arxasınca gedin. Və he&ccedil; kəsə sizə nəyisə bacarmayacağınızı deməyə icazə verməyin.</p>'),
(496, 'news', 25, 'az', 'short', 'Təhsil Nazirliyi və 1news.az İnformasiya Agentliyinin “Uğur formulu” layihəsi davam edir.'),
(497, 'news', 25, 'az', 'is_published_lang', '1'),
(498, 'news', 25, 'ru', 'keywords', ''),
(499, 'news', 25, 'ru', 'title', ''),
(500, 'news', 25, 'ru', 'full', ''),
(501, 'news', 25, 'ru', 'short', ''),
(502, 'news', 25, 'ru', 'is_published_lang', '0'),
(503, 'news', 26, 'az', 'keywords', 'təhsil, daha, kompüter, tələbə, stenford, şəxsi, məktəbində, ilk, uğur, iki, formulu, məni, işi, sona, sizə, idarə, öyrənirəm, məktəbdə, nəyisə, əsas'),
(504, 'news', 26, 'az', 'title', 'Stenfordda təhsil alan tələbəmiz: “Karyeramın izi ilə istənilən yerə gedəcəyəm” – “Uğur formulu”'),
(505, 'news', 26, 'az', 'full', '<p><a href=\"http://edu.gov.az\" target=\"_blank\">Təhsil Nazirliyi</a> və <a href=\"http://1news.az\" target=\"_blank\">1news.az</a> İnformasiya Agentliyinin &ldquo;Uğur formulu&rdquo; layihəsi davam edir.</p>\r\n\r\n<p>&ldquo;Uğur formulu&rdquo; layihəsinin budəfəki qonağı Sona Allahverdiyevadır.</p>\r\n\r\n<p>Sona 1997-ci ildə Bakıda anadan olub. İlk &uuml;&ccedil; il D&uuml;nya Xəzər Məktəbində, daha sonra iki il Bakı Oksford Məktəbində, 7 il isə Azərbaycan Beynəlxalq Məktəbində təhsil alıb. Burada Beynəlxalq bakalavr diplomu əldə edib. Sona hazırda d&uuml;nyanın n&uuml;fuzlu Stenford Universitetində komp&uuml;ter elmləri və sahibkarlıq &uuml;zrə təhsilini davam etdirir.</p>\r\n\r\n<p><strong>- Xaricdə&nbsp; təhsil sizə nə verir? &Uuml;midlərinizi doğruldurmu?</strong></p>\r\n\r\n<p>- Əlbəttə. Stenford Universiteti məni oxuduğum b&uuml;t&uuml;n fənlər &uuml;zrə g&uuml;cl&uuml; nəzəriyyə, həm&ccedil;inin b&uuml;t&uuml;n sahələrdə praktiki biliklə təmin edir. Tədrisin &ccedil;ox hissəsi auditoriyada baş tutsa da, mən bir &ccedil;ox məlumatları yaşıdlarımdan &ouml;yrənirəm. &Ouml;z şirkətlərini yaradıb-yaratmamaları, səhm bazarında milyonlar qazanıb-qazanmamalarından və ya elmi tədqiqat sahəsinə nailiyyətlər əldə edib-etməmələrindən asılı olmayaraq Stenforddakı hər bir tələbə yoldaşımdan nə isə &ouml;yrənirəm.</p>\r\n\r\n<p><strong>- Niyə məhz bu ixtisası se&ccedil;diniz?</strong></p>\r\n\r\n<p>- Stenforddakı ilk r&uuml;b ərzində komp&uuml;ter elmlərini &ccedil;ox bəyəndim. Komp&uuml;ter elmləri məni he&ccedil; bir fənnin edə bilmədiyi qədər təşviq və cəlb edir. Məncə, komp&uuml;ter elmləri yaradıcılıq və hesablamanın vəhdətidir, kəsişmə n&ouml;qtəsində isə texnologiya vasitəsilə nəyisə heyrətamiz etmək durur. Komp&uuml;ter elmlərini oxuyarkən mənə elə gəlir ki, mən m&uuml;mk&uuml;nl&uuml;y&uuml;n sərhədini ke&ccedil;ərək qeyri-m&uuml;mk&uuml;nl&uuml;yə addım atıram.</p>\r\n\r\n<p>D&uuml;zd&uuml;r, bu &ccedil;ətin, bəzən isə qeyri-m&uuml;mk&uuml;n g&ouml;r&uuml;nə bilər, amma nəticə etibarı ilə hansısa məhsulu &ndash; tətbiqi, saytı, alqoritmi və s. g&ouml;stərib fəxrlə deyə bilərəm: &ldquo;Bunu mən etmişəm&rdquo;. Məsələn, sonuncu layihələrimdən biri komp&uuml;ter yaddaş sistemi yaratmaq idi. Bu yaxınlarda isə Silikon vadisində fəaliyyət g&ouml;stərən filantropik şirkət &uuml;&ccedil;&uuml;n mobil tətbiqin dizaynı &uuml;zərində işləyəcəyəm.</p>\r\n\r\n<p><strong>- Fərqli &ouml;lkə və təhsil m&uuml;hitini g&ouml;rd&uuml;kdən sonra əvvəl oxuduğunuz ali məktəbdə nəyin dəyişməsini arzulayardınız?</strong></p>\r\n\r\n<p>Azərbaycan Beynəlxalq Məktəbində və oxuduğum digər m&uuml;əssisələrdəki təhsildən razı qalsam da, inanıram ki, təhsil sistemini təkmilləşdirmək &uuml;&ccedil;&uuml;n qarşımızda uzun bir yol var. D&uuml;ş&uuml;n&uuml;rəm ki, bizim təhsil sistemində ən əsas iki dəyişikliyi etmək lazımdır. Birincisi, təlimə nəzəri deyil, praktiki &uuml;sulla yanaşmaq vacibdir.</p>\r\n\r\n<p>M&uuml;şahidə etmişəm ki, faktları əzbərləməkdənsə, layihələr, təcr&uuml;bə proqramları və yarım g&uuml;n işlər sayəsində daha &ccedil;ox bilik qazanıram.</p>\r\n\r\n<p>İkinci m&uuml;h&uuml;m dəyişiklik isə tələbələrdə daha g&uuml;cl&uuml; sərbəstlik hissi yaratmaqdır. İnanıram ki, sərbəstlik tələbələri işi tapşırıldığı &uuml;&ccedil;&uuml;n deyil, bu işi g&ouml;rməyə onlarda həvəs olduğu &uuml;&ccedil;&uuml;n etməyə s&ouml;vq edəcək. Sərbəstlik mənim uğur qazanmaq &uuml;&ccedil;&uuml;n şəxsi potensialımı reallaşdırmağımda əsas rol oynadı.</p>\r\n\r\n<p><strong>- Təhsil aldığınız &ouml;lkədə Azərbaycanla bağlı nələri tanıtmısınız?</strong></p>\r\n\r\n<p>- Universitetin əksər tələbələri Azərbaycanı yaxından tanısalar da, mən hər zaman həmkarlarımı və qrup yoldaşlarımı &ouml;lkəmiz haqqında daha &ccedil;ox məlumatlandırmağa &ccedil;alışıram. Bir &ccedil;ox dostum muğamın g&ouml;zəlliyinə heyrandır və mənim onlara bəhs etdiyim m&ouml;htəşəm memarlığı &ouml;z g&ouml;zləri ilə g&ouml;rmək &uuml;&ccedil;&uuml;n Bakıya səfər etməyə can atırlar.</p>\r\n\r\n<p><strong>-&nbsp; Oxuduğunuz ali məktəbdə m&uuml;əllim-tələbə m&uuml;nasibəti necədir?</strong></p>\r\n\r\n<p>- M&uuml;əllimlərim mənim məsləhət&ccedil;ilərim və dostlarımdır. M&uuml;əllimlərimdən biri ilə onun bir ne&ccedil;ə məzunla birgə idarə etdiyi &ldquo;Siyasi psixologiya araşdırma qrupu&rdquo; adlı tədqiqat laboratoriyasında &ccedil;alışmışam. M&uuml;əllimlərimlə ən bəyəndiyim qarşılıqlı m&uuml;nasibət dərsdən sonra sevdiyimiz m&ouml;vzu, istəklərimiz və &uuml;mumi maraqlarımızla bağlı m&uuml;zakirələr aparmaq &uuml;&ccedil;&uuml;n onlarla yemək yemək və ya qəhvə i&ccedil;məkdir.</p>\r\n\r\n<p><strong>- Daha &ccedil;ox hansı &ccedil;ətinlikləriniz olub?</strong></p>\r\n\r\n<p>- Burada qarşılaşdığım ən b&ouml;y&uuml;k &ccedil;ətinlik hər işi g&ouml;rməyə &ccedil;alışmağım və &ouml;z&uuml;m&uuml; məhdudlaşdıra bilməməyim idi. İlk ilimin sonunda artıq 7 klubun &uuml;zv&uuml; idim, tamaşa səhnələşdirirdim və gərəyindən daha &ccedil;ox dərs alırdım. Bu il vaxtımı daha yaxşı planlaşdırmağı və vəzifələrimin &ouml;hdəsindən gəlməyi &ouml;yrənmişəm.</p>\r\n\r\n<p><strong>- Oxuduğunuz m&uuml;ddətdə qarşılaşdığınız maraqlı hadisə hansı olub?</strong></p>\r\n\r\n<p>- Yalnız birini se&ccedil;mək &ccedil;ətin olsa da, ilk komp&uuml;ter proqramımı yaratmağım maraqlı olmuşdu. İki yuxusuz g&uuml;ndən sonra səhər saat 6-da proqram nəhayət ki, n&ouml;qsansız &ccedil;alışmışdı.</p>\r\n\r\n<p>Bu yaxınlarda isə mənim şəxsi saytım (<a href=\"http://www.5ona.com\" target=\"_blank\">www.5ona.com</a>) istifadəyə verildi.</p>\r\n\r\n<p><strong>- Universitetdə əcnəbi tələbələrə m&uuml;nasibətdən razısınızmı?</strong></p>\r\n\r\n<p>- Adətən məni amerikalı zənn etsələr də, əcnəbi tələbə olmağım xoş bir s&uuml;rpriz kimi qarşılanır. Mənə tez-tez doğulduğum şəhər, mədəniyyətlər arasındakı fərqlər, siyasi d&uuml;ş&uuml;ncələrim və sair, həm&ccedil;inin Azərbaycana səfər barədə suallar verirlər.</p>\r\n\r\n<p><strong>-&nbsp; Asudə vaxtınızda nə ilə məşğul olursunuz?</strong></p>\r\n\r\n<p>- Braziliya teatrı (Məzlumların Teatrı) &uuml;slubunda olan &ldquo;ACT!&rdquo; adlı &ouml;z tamaşamı səhnələşdirirəm. Həm&ccedil;inin universitetdəki b&uuml;t&uuml;n tələbə qruplarının maliyyə məsələlərini idarə edən Stenford Tələbə Təşkilatının İnkişaf &uuml;zrə direktoruyam. Eyni zamanda Stenford UNİCEF və d&uuml;nyaya sosial rifah gətirmək &uuml;&ccedil;&uuml;n texnologiyadan istifadəyə həsr olunmuş &lsquo;CS + Social Good&rsquo; tələbə birliklərinin də idarə heyətinin &uuml;zv&uuml;yəm.</p>\r\n\r\n<p><strong>- Təhsilinizi başa vurduqdan sonra harada &ccedil;alışmaq istəyərdiniz? Gələcək planlarınız necədir ?</strong></p>\r\n\r\n<p>- Mən gələcəyim haqqında coğrafi planlar qurmamağa &uuml;st&uuml;nl&uuml;k verirəm. Karyeramın və şəxsi məqsədlərimin izi ilə və ən yaxşı imkanların arxasınca istənilən yerə gedəcəyəm.</p>\r\n\r\n<p><strong>- Siz xaricdə təhsil almağa başladıqdan sonra &ouml;z&uuml;n&uuml;zdə nələri dəyişmisiniz ?</strong></p>\r\n\r\n<p>- Şəxsi və akademik potensialıma nail olmağa yaxınlaşsam da fundamental dəyərlərimi və keyfiyyətlərimi dəyişməmişəm.</p>\r\n\r\n<p><strong>- &Ouml;lkəmizdəki dostlarınıza, həmyaşıdlarınıza nə demək istərdiniz?</strong></p>\r\n\r\n<p>- B&ouml;y&uuml;k d&uuml;ş&uuml;n&uuml;n, daha b&ouml;y&uuml;y&uuml;n&uuml; xəyal edin və hər zaman xəyallarınızın arxasınca gedin. Və he&ccedil; kəsə sizə nəyisə bacarmayacağınızı deməyə icazə verməyin.</p>'),
(506, 'news', 26, 'az', 'short', 'Təhsil Nazirliyi və 1news.az İnformasiya Agentliyinin “Uğur formulu” layihəsi davam edir.'),
(507, 'news', 26, 'az', 'is_published_lang', '1'),
(508, 'news', 26, 'ru', 'keywords', ''),
(509, 'news', 26, 'ru', 'title', ''),
(510, 'news', 26, 'ru', 'full', ''),
(511, 'news', 26, 'ru', 'short', ''),
(512, 'news', 26, 'ru', 'is_published_lang', '0'),
(513, 'news', 27, 'az', 'keywords', 'təhsil, daha, kompüter, tələbə, stenford, şəxsi, məktəbində, ilk, uğur, iki, xaricdə, işi, nəyisə, bütün, formulu, əsas, məktəbdə, beynəlxalq, idarə, heç'),
(514, 'news', 27, 'az', 'title', 'Stenfordda təhsil alan tələbəmiz: “Karyeramın izi ilə istənilən yerə gedəcəyəm” – “Uğur formulu”'),
(515, 'news', 27, 'az', 'full', '<p><a href=\"http://edu.gov.az\" target=\"_blank\">Təhsil Nazirliyi</a> <strong>və</strong> <a href=\"http://1news.az\" target=\"_blank\">1news.az</a> İnformasiya Agentliyinin &ldquo;Uğur formulu&rdquo; layihəsi davam edir.</p>\r\n\r\n<p>&ldquo;Uğur formulu&rdquo; layihəsinin budəfəki qonağı Sona Allahverdiyevadır.</p>\r\n\r\n<p>Sona 1997-ci ildə Bakıda anadan olub. İlk &uuml;&ccedil; il D&uuml;nya Xəzər Məktəbində, daha sonra iki il Bakı Oksford Məktəbində, 7 il isə Azərbaycan Beynəlxalq Məktəbində təhsil alıb. Burada Beynəlxalq bakalavr diplomu əldə edib. Sona hazırda d&uuml;nyanın n&uuml;fuzlu Stenford Universitetində komp&uuml;ter elmləri və sahibkarlıq &uuml;zrə təhsilini davam etdirir.</p>\r\n\r\n<p><strong>- Xaricdə&nbsp; təhsil sizə nə verir? &Uuml;midlərinizi doğruldurmu?</strong></p>\r\n\r\n<p>- Əlbəttə. Stenford Universiteti məni oxuduğum b&uuml;t&uuml;n fənlər &uuml;zrə g&uuml;cl&uuml; nəzəriyyə, həm&ccedil;inin b&uuml;t&uuml;n sahələrdə praktiki biliklə təmin edir. Tədrisin &ccedil;ox hissəsi auditoriyada baş tutsa da, mən bir &ccedil;ox məlumatları yaşıdlarımdan &ouml;yrənirəm. &Ouml;z şirkətlərini yaradıb-yaratmamaları, səhm bazarında milyonlar qazanıb-qazanmamalarından və ya elmi tədqiqat sahəsinə nailiyyətlər əldə edib-etməmələrindən asılı olmayaraq Stenforddakı hər bir tələbə yoldaşımdan nə isə &ouml;yrənirəm.</p>\r\n\r\n<p><strong>- Niyə məhz bu ixtisası se&ccedil;diniz?</strong></p>\r\n\r\n<p>- Stenforddakı ilk r&uuml;b ərzində komp&uuml;ter elmlərini &ccedil;ox bəyəndim. Komp&uuml;ter elmləri məni he&ccedil; bir fənnin edə bilmədiyi qədər təşviq və cəlb edir. Məncə, komp&uuml;ter elmləri yaradıcılıq və hesablamanın vəhdətidir, kəsişmə n&ouml;qtəsində isə texnologiya vasitəsilə nəyisə heyrətamiz etmək durur. Komp&uuml;ter elmlərini oxuyarkən mənə elə gəlir ki, mən m&uuml;mk&uuml;nl&uuml;y&uuml;n sərhədini ke&ccedil;ərək qeyri-m&uuml;mk&uuml;nl&uuml;yə addım atıram.</p>\r\n\r\n<p>D&uuml;zd&uuml;r, bu &ccedil;ətin, bəzən isə qeyri-m&uuml;mk&uuml;n g&ouml;r&uuml;nə bilər, amma nəticə etibarı ilə hansısa məhsulu &ndash; tətbiqi, saytı, alqoritmi və s. g&ouml;stərib fəxrlə deyə bilərəm: &ldquo;Bunu mən etmişəm&rdquo;. Məsələn, sonuncu layihələrimdən biri komp&uuml;ter yaddaş sistemi yaratmaq idi. Bu yaxınlarda isə Silikon vadisində fəaliyyət g&ouml;stərən filantropik şirkət &uuml;&ccedil;&uuml;n mobil tətbiqin dizaynı &uuml;zərində işləyəcəyəm.</p>\r\n\r\n<p><strong>- Fərqli &ouml;lkə və təhsil m&uuml;hitini g&ouml;rd&uuml;kdən sonra əvvəl oxuduğunuz ali məktəbdə nəyin dəyişməsini arzulayardınız?</strong></p>\r\n\r\n<p>Azərbaycan Beynəlxalq Məktəbində və oxuduğum digər m&uuml;əssisələrdəki təhsildən razı qalsam da, inanıram ki, təhsil sistemini təkmilləşdirmək &uuml;&ccedil;&uuml;n qarşımızda uzun bir yol var. D&uuml;ş&uuml;n&uuml;rəm ki, bizim təhsil sistemində ən əsas iki dəyişikliyi etmək lazımdır. Birincisi, təlimə nəzəri deyil, praktiki &uuml;sulla yanaşmaq vacibdir.</p>\r\n\r\n<p>M&uuml;şahidə etmişəm ki, faktları əzbərləməkdənsə, layihələr, təcr&uuml;bə proqramları və yarım g&uuml;n işlər sayəsində daha &ccedil;ox bilik qazanıram.</p>\r\n\r\n<p>İkinci m&uuml;h&uuml;m dəyişiklik isə tələbələrdə daha g&uuml;cl&uuml; sərbəstlik hissi yaratmaqdır. İnanıram ki, sərbəstlik tələbələri işi tapşırıldığı &uuml;&ccedil;&uuml;n deyil, bu işi g&ouml;rməyə onlarda həvəs olduğu &uuml;&ccedil;&uuml;n etməyə s&ouml;vq edəcək. Sərbəstlik mənim uğur qazanmaq &uuml;&ccedil;&uuml;n şəxsi potensialımı reallaşdırmağımda əsas rol oynadı.</p>\r\n\r\n<p><strong>- Təhsil aldığınız &ouml;lkədə Azərbaycanla bağlı nələri tanıtmısınız?</strong></p>\r\n\r\n<p>- Universitetin əksər tələbələri Azərbaycanı yaxından tanısalar da, mən hər zaman həmkarlarımı və qrup yoldaşlarımı &ouml;lkəmiz haqqında daha &ccedil;ox məlumatlandırmağa &ccedil;alışıram. Bir &ccedil;ox dostum muğamın g&ouml;zəlliyinə heyrandır və mənim onlara bəhs etdiyim m&ouml;htəşəm memarlığı &ouml;z g&ouml;zləri ilə g&ouml;rmək &uuml;&ccedil;&uuml;n Bakıya səfər etməyə can atırlar.</p>\r\n\r\n<p><strong>-&nbsp; Oxuduğunuz ali məktəbdə m&uuml;əllim-tələbə m&uuml;nasibəti necədir?</strong></p>\r\n\r\n<p>- M&uuml;əllimlərim mənim məsləhət&ccedil;ilərim və dostlarımdır. M&uuml;əllimlərimdən biri ilə onun bir ne&ccedil;ə məzunla birgə idarə etdiyi &ldquo;Siyasi psixologiya araşdırma qrupu&rdquo; adlı tədqiqat laboratoriyasında &ccedil;alışmışam. M&uuml;əllimlərimlə ən bəyəndiyim qarşılıqlı m&uuml;nasibət dərsdən sonra sevdiyimiz m&ouml;vzu, istəklərimiz və &uuml;mumi maraqlarımızla bağlı m&uuml;zakirələr aparmaq &uuml;&ccedil;&uuml;n onlarla yemək yemək və ya qəhvə i&ccedil;məkdir.</p>\r\n\r\n<p><strong>- Daha &ccedil;ox hansı &ccedil;ətinlikləriniz olub?</strong></p>\r\n\r\n<p>- Burada qarşılaşdığım ən b&ouml;y&uuml;k &ccedil;ətinlik hər işi g&ouml;rməyə &ccedil;alışmağım və &ouml;z&uuml;m&uuml; məhdudlaşdıra bilməməyim idi. İlk ilimin sonunda artıq 7 klubun &uuml;zv&uuml; idim, tamaşa səhnələşdirirdim və gərəyindən daha &ccedil;ox dərs alırdım. Bu il vaxtımı daha yaxşı planlaşdırmağı və vəzifələrimin &ouml;hdəsindən gəlməyi &ouml;yrənmişəm.</p>\r\n\r\n<p><strong>- Oxuduğunuz m&uuml;ddətdə qarşılaşdığınız maraqlı hadisə hansı olub?</strong></p>\r\n\r\n<p>- Yalnız birini se&ccedil;mək &ccedil;ətin olsa da, ilk komp&uuml;ter proqramımı yaratmağım maraqlı olmuşdu. İki yuxusuz g&uuml;ndən sonra səhər saat 6-da proqram nəhayət ki, n&ouml;qsansız &ccedil;alışmışdı.</p>\r\n\r\n<p>Bu yaxınlarda isə mənim şəxsi saytım (<a href=\"http://www.5ona.com\" target=\"_blank\">www.5ona.com</a>) istifadəyə verildi.</p>\r\n\r\n<p><strong>- Universitetdə əcnəbi tələbələrə m&uuml;nasibətdən razısınızmı?</strong></p>\r\n\r\n<p>- Adətən məni amerikalı zənn etsələr də, əcnəbi tələbə olmağım xoş bir s&uuml;rpriz kimi qarşılanır. Mənə tez-tez doğulduğum şəhər, mədəniyyətlər arasındakı fərqlər, siyasi d&uuml;ş&uuml;ncələrim və sair, həm&ccedil;inin Azərbaycana səfər barədə suallar verirlər.</p>\r\n\r\n<p><strong>-&nbsp; Asudə vaxtınızda nə ilə məşğul olursunuz?</strong></p>\r\n\r\n<p>- Braziliya teatrı (Məzlumların Teatrı) &uuml;slubunda olan &ldquo;ACT!&rdquo; adlı &ouml;z tamaşamı səhnələşdirirəm. Həm&ccedil;inin universitetdəki b&uuml;t&uuml;n tələbə qruplarının maliyyə məsələlərini idarə edən Stenford Tələbə Təşkilatının İnkişaf &uuml;zrə direktoruyam. Eyni zamanda Stenford UNİCEF və d&uuml;nyaya sosial rifah gətirmək &uuml;&ccedil;&uuml;n texnologiyadan istifadəyə həsr olunmuş &lsquo;CS + Social Good&rsquo; tələbə birliklərinin də idarə heyətinin &uuml;zv&uuml;yəm.</p>\r\n\r\n<p><strong>- Təhsilinizi başa vurduqdan sonra harada &ccedil;alışmaq istəyərdiniz? Gələcək planlarınız necədir ?</strong></p>\r\n\r\n<p>- Mən gələcəyim haqqında coğrafi planlar qurmamağa &uuml;st&uuml;nl&uuml;k verirəm. Karyeramın və şəxsi məqsədlərimin izi ilə və ən yaxşı imkanların arxasınca istənilən yerə gedəcəyəm.</p>\r\n\r\n<p><strong>- Siz xaricdə təhsil almağa başladıqdan sonra &ouml;z&uuml;n&uuml;zdə nələri dəyişmisiniz ?</strong></p>\r\n\r\n<p>- Şəxsi və akademik potensialıma nail olmağa yaxınlaşsam da fundamental dəyərlərimi və keyfiyyətlərimi dəyişməmişəm.</p>\r\n\r\n<p><strong>- &Ouml;lkəmizdəki dostlarınıza, həmyaşıdlarınıza nə demək istərdiniz?</strong></p>\r\n\r\n<p>- B&ouml;y&uuml;k d&uuml;ş&uuml;n&uuml;n, daha b&ouml;y&uuml;y&uuml;n&uuml; xəyal edin və hər zaman xəyallarınızın arxasınca gedin. Və he&ccedil; kəsə sizə nəyisə bacarmayacağınızı deməyə icazə verməyin.</p>'),
(516, 'news', 27, 'az', 'short', 'Təhsil Nazirliyi və 1news.az İnformasiya Agentliyinin “Uğur formulu” layihəsi davam edir.Test'),
(517, 'news', 27, 'az', 'is_published_lang', '1'),
(518, 'news', 27, 'ru', 'keywords', ''),
(519, 'news', 27, 'ru', 'title', ''),
(520, 'news', 27, 'ru', 'full', ''),
(521, 'news', 27, 'ru', 'short', ''),
(522, 'news', 27, 'ru', 'is_published_lang', '0'),
(523, 'menu', 31, 'az', 'name', 'Test'),
(524, 'menu', 31, 'az', 'is_published_lang', '1'),
(525, 'menu', 31, 'ru', 'name', 'Тестовый'),
(526, 'menu', 31, 'ru', 'is_published_lang', '0'),
(527, 'menu', 32, 'az', 'name', 'Əsas sahifə'),
(528, 'menu', 32, 'az', 'is_published_lang', '1'),
(529, 'menu', 32, 'ru', 'name', 'Главная страница'),
(530, 'menu', 32, 'ru', 'is_published_lang', '0'),
(531, 'menu', 33, 'az', 'name', 'Новый Тест'),
(532, 'menu', 33, 'az', 'is_published_lang', '1'),
(533, 'menu', 33, 'ru', 'name', 'Testing'),
(534, 'menu', 33, 'ru', 'is_published_lang', '0'),
(535, 'menu', 34, 'az', 'name', 'gozasht'),
(536, 'menu', 34, 'az', 'is_published_lang', '1'),
(537, 'menu', 34, 'ru', 'name', 'gozasht'),
(538, 'menu', 34, 'ru', 'is_published_lang', '0'),
(539, 'menu', 35, 'az', 'name', 'testing'),
(540, 'menu', 35, 'az', 'is_published_lang', '1'),
(541, 'menu', 35, 'ru', 'name', 'testing'),
(542, 'menu', 35, 'ru', 'is_published_lang', '0'),
(543, 'menu', 36, 'az', 'name', 'gozashtang'),
(544, 'menu', 36, 'az', 'is_published_lang', '1'),
(545, 'menu', 36, 'ru', 'name', 'gozashtang'),
(546, 'menu', 36, 'ru', 'is_published_lang', '0'),
(547, 'menu', 37, 'az', 'name', 'navtest'),
(548, 'menu', 37, 'az', 'is_published_lang', '1'),
(549, 'menu', 37, 'ru', 'name', 'navtest'),
(550, 'menu', 37, 'ru', 'is_published_lang', '0'),
(551, 'menu', 38, 'az', 'name', 'shodesataxo'),
(552, 'menu', 38, 'az', 'is_published_lang', '1'),
(553, 'menu', 38, 'ru', 'name', ''),
(554, 'menu', 38, 'ru', 'is_published_lang', '0'),
(555, 'menu', 39, 'az', 'name', 'shodesataxod'),
(556, 'menu', 39, 'az', 'is_published_lang', '1'),
(557, 'menu', 39, 'ru', 'name', 'shodesataxod'),
(558, 'menu', 39, 'ru', 'is_published_lang', '0'),
(559, 'menu', 40, 'az', 'name', 'rootebargard'),
(560, 'menu', 40, 'az', 'is_published_lang', '1'),
(561, 'menu', 40, 'ru', 'name', 'rootebargard'),
(562, 'menu', 40, 'ru', 'is_published_lang', '0'),
(563, 'menu', 41, 'az', 'name', 'dalilivase'),
(564, 'menu', 41, 'az', 'is_published_lang', '1'),
(565, 'menu', 41, 'ru', 'name', 'dalilivase'),
(566, 'menu', 41, 'ru', 'is_published_lang', '0'),
(567, 'menu', 42, 'az', 'name', 'newr'),
(568, 'menu', 42, 'az', 'is_published_lang', '1'),
(569, 'menu', 42, 'ru', 'name', 'newr'),
(570, 'menu', 42, 'ru', 'is_published_lang', '0'),
(571, 'menu', 43, 'az', 'name', 'kashmidune'),
(572, 'menu', 43, 'az', 'is_published_lang', '1'),
(573, 'menu', 43, 'ru', 'name', 'kashmidune'),
(574, 'menu', 43, 'ru', 'is_published_lang', '0'),
(575, 'menu', 44, 'az', 'name', 'toye'),
(576, 'menu', 44, 'az', 'is_published_lang', '1'),
(577, 'menu', 44, 'ru', 'name', 'toye'),
(578, 'menu', 44, 'ru', 'is_published_lang', '0'),
(579, 'menu', 45, 'az', 'name', 'asemoon'),
(580, 'menu', 45, 'az', 'is_published_lang', '1'),
(581, 'menu', 45, 'ru', 'name', 'asemoon'),
(582, 'menu', 45, 'ru', 'is_published_lang', '0'),
(583, 'menu', 46, 'az', 'name', 'abri nist'),
(584, 'menu', 46, 'az', 'is_published_lang', '1'),
(585, 'menu', 46, 'ru', 'name', ''),
(586, 'menu', 46, 'ru', 'is_published_lang', '0'),
(587, 'menu', 47, 'az', 'name', 'menuitem'),
(588, 'menu', 47, 'az', 'is_published_lang', '1'),
(589, 'menu', 47, 'ru', 'name', 'menuitem'),
(590, 'menu', 47, 'ru', 'is_published_lang', '0'),
(591, 'menu', 48, 'az', 'name', 'nemidune'),
(592, 'menu', 48, 'az', 'is_published_lang', '1'),
(593, 'menu', 48, 'ru', 'name', 'nemidune'),
(594, 'menu', 48, 'ru', 'is_published_lang', '0'),
(596, 'news', 28, 'az', 'keywords', 'keywordarticletest'),
(598, 'news', 28, 'az', 'title', 'keywordarticletest'),
(600, 'news', 28, 'az', 'full', '<p><strong>keywordarticletest</strong></p>'),
(602, 'news', 28, 'az', 'short', 'keywordarticletest'),
(604, 'news', 28, 'az', 'is_published_lang', '1'),
(606, 'news', 28, 'ru', 'keywords', ''),
(608, 'news', 28, 'ru', 'title', ''),
(610, 'news', 28, 'ru', 'full', ''),
(612, 'news', 28, 'ru', 'short', ''),
(614, 'news', 28, 'ru', 'is_published_lang', '0'),
(616, 'news', 30, 'az', 'keywords', 'keywordarticletest'),
(618, 'news', 30, 'az', 'title', 'keywordarticletest'),
(620, 'news', 30, 'az', 'full', '<p><strong>keywordarticletest</strong></p>'),
(622, 'news', 30, 'az', 'short', 'keywordarticletest'),
(624, 'news', 30, 'az', 'is_published_lang', '1'),
(626, 'news', 30, 'ru', 'keywords', ''),
(628, 'news', 30, 'ru', 'title', ''),
(630, 'news', 30, 'ru', 'full', ''),
(632, 'news', 30, 'ru', 'short', ''),
(634, 'news', 30, 'ru', 'is_published_lang', '0'),
(636, 'news', 32, 'az', 'keywords', 'mytestarticle'),
(638, 'news', 32, 'az', 'title', 'mytestarticle'),
(640, 'news', 32, 'az', 'full', '<p>mytestarticle</p>'),
(642, 'news', 32, 'az', 'short', 'mytestarticle'),
(644, 'news', 32, 'az', 'is_published_lang', '1'),
(646, 'news', 32, 'ru', 'keywords', ''),
(648, 'news', 32, 'ru', 'title', ''),
(650, 'news', 32, 'ru', 'full', ''),
(652, 'news', 32, 'ru', 'short', ''),
(654, 'news', 32, 'ru', 'is_published_lang', '0'),
(656, 'news', 34, 'az', 'keywords', 'test, for, document, types'),
(658, 'news', 34, 'az', 'title', 'Test for Document Types'),
(660, 'news', 34, 'az', 'full', '<p>Test for Document Types&nbsp;</p>'),
(662, 'news', 34, 'az', 'short', 'Test for Document Types '),
(664, 'news', 34, 'az', 'is_published_lang', '1'),
(666, 'news', 34, 'ru', 'keywords', ''),
(668, 'news', 34, 'ru', 'title', ''),
(670, 'news', 34, 'ru', 'full', ''),
(672, 'news', 34, 'ru', 'short', ''),
(674, 'news', 34, 'ru', 'is_published_lang', '0'),
(676, 'news', 36, 'az', 'keywords', 'test, for, document, types'),
(678, 'news', 36, 'az', 'title', 'Test for Document Types'),
(680, 'news', 36, 'az', 'full', '<p>Test for Document Types&nbsp;</p>'),
(682, 'news', 36, 'az', 'short', 'Test for Document Types '),
(684, 'news', 36, 'az', 'is_published_lang', '1'),
(686, 'news', 36, 'ru', 'keywords', ''),
(688, 'news', 36, 'ru', 'title', ''),
(690, 'news', 36, 'ru', 'full', ''),
(692, 'news', 36, 'ru', 'short', ''),
(694, 'news', 36, 'ru', 'is_published_lang', '0'),
(696, 'news', 38, 'az', 'keywords', 'kash, feredun'),
(698, 'news', 38, 'az', 'title', 'Kash feredun'),
(700, 'news', 38, 'az', 'full', '<p>Kash feredun</p>'),
(702, 'news', 38, 'az', 'short', 'Kash feredun'),
(704, 'news', 38, 'az', 'is_published_lang', '1'),
(706, 'news', 38, 'ru', 'keywords', ''),
(708, 'news', 38, 'ru', 'title', ''),
(710, 'news', 38, 'ru', 'full', ''),
(712, 'news', 38, 'ru', 'short', ''),
(714, 'news', 38, 'ru', 'is_published_lang', '0'),
(716, 'news', 40, 'az', 'keywords', 'dsdsdsdsdsd, sdsdsdsd'),
(718, 'news', 40, 'az', 'title', 'dsdsdsdsdsd'),
(720, 'news', 40, 'az', 'full', '<p>sdsdsdsd</p>'),
(722, 'news', 40, 'az', 'short', 'sdsdsdsd'),
(724, 'news', 40, 'az', 'is_published_lang', '1'),
(726, 'news', 40, 'ru', 'keywords', ''),
(728, 'news', 40, 'ru', 'title', ''),
(730, 'news', 40, 'ru', 'full', ''),
(732, 'news', 40, 'ru', 'short', ''),
(734, 'news', 40, 'ru', 'is_published_lang', '0'),
(736, 'news', 42, 'az', 'keywords', 'dsdsdsdsdsd, sdsdsdsd'),
(738, 'news', 42, 'az', 'title', 'dsdsdsdsdsd'),
(740, 'news', 42, 'az', 'full', '<p>sdsdsdsd</p>'),
(742, 'news', 42, 'az', 'short', 'sdsdsdsd'),
(744, 'news', 42, 'az', 'is_published_lang', '1'),
(746, 'news', 42, 'ru', 'keywords', ''),
(748, 'news', 42, 'ru', 'title', ''),
(750, 'news', 42, 'ru', 'full', ''),
(752, 'news', 42, 'ru', 'short', ''),
(754, 'news', 42, 'ru', 'is_published_lang', '0'),
(756, 'news', 44, 'az', 'keywords', 'xabar'),
(758, 'news', 44, 'az', 'title', 'Xabar az'),
(760, 'news', 44, 'az', 'full', '<p>Xabar az</p>'),
(762, 'news', 44, 'az', 'short', 'Xabar az'),
(764, 'news', 44, 'az', 'is_published_lang', '1'),
(766, 'news', 44, 'ru', 'keywords', ''),
(768, 'news', 44, 'ru', 'title', ''),
(770, 'news', 44, 'ru', 'full', ''),
(772, 'news', 44, 'ru', 'short', ''),
(774, 'news', 44, 'ru', 'is_published_lang', '0'),
(776, 'news', 46, 'az', 'keywords', 'dsqqq, qwdsfsd'),
(778, 'news', 46, 'az', 'title', 'dsqqq'),
(780, 'news', 46, 'az', 'full', '<p>qwdsfsd</p>'),
(782, 'news', 46, 'az', 'short', 'qwdsfsd'),
(784, 'news', 46, 'az', 'is_published_lang', '1'),
(786, 'news', 46, 'ru', 'keywords', ''),
(788, 'news', 46, 'ru', 'title', ''),
(790, 'news', 46, 'ru', 'full', ''),
(792, 'news', 46, 'ru', 'short', ''),
(794, 'news', 46, 'ru', 'is_published_lang', '0'),
(796, 'news', 48, 'az', 'keywords', 'qqqqq'),
(798, 'news', 48, 'az', 'title', 'qqqqq'),
(800, 'news', 48, 'az', 'full', '<p>qqqqq</p>'),
(802, 'news', 48, 'az', 'short', 'qqqqq'),
(804, 'news', 48, 'az', 'is_published_lang', '1'),
(806, 'news', 48, 'ru', 'keywords', ''),
(808, 'news', 48, 'ru', 'title', ''),
(810, 'news', 48, 'ru', 'full', ''),
(812, 'news', 48, 'ru', 'short', ''),
(814, 'news', 48, 'ru', 'is_published_lang', '0'),
(816, 'menu', 1, 'az', 'is_published_lang', '1'),
(818, 'menu', 1, 'ru', 'is_published_lang', '0'),
(820, 'news', 50, 'az', 'keywords', 'testgfggfgf'),
(822, 'news', 50, 'az', 'title', 'testgfggfgf'),
(824, 'news', 50, 'az', 'full', '<p>testgfggfgf</p>'),
(826, 'news', 50, 'az', 'short', 'testgfggfgf'),
(828, 'news', 50, 'az', 'is_published_lang', '1'),
(830, 'news', 50, 'ru', 'keywords', ''),
(832, 'news', 50, 'ru', 'title', ''),
(834, 'news', 50, 'ru', 'full', ''),
(836, 'news', 50, 'ru', 'short', ''),
(838, 'news', 50, 'ru', 'is_published_lang', '0'),
(840, 'news', 52, 'az', 'keywords', 'yrtewgfdgsdfhdf'),
(842, 'news', 52, 'az', 'title', 'yrtewgfdgsdfhdf'),
(844, 'news', 52, 'az', 'full', '<p>yrtewgfdgsdfhdf</p>'),
(846, 'news', 52, 'az', 'short', 'yrtewgfdgsdfhdf'),
(848, 'news', 52, 'az', 'is_published_lang', '1'),
(850, 'news', 52, 'ru', 'keywords', ''),
(852, 'news', 52, 'ru', 'title', ''),
(854, 'news', 52, 'ru', 'full', ''),
(856, 'news', 52, 'ru', 'short', ''),
(858, 'news', 52, 'ru', 'is_published_lang', '0'),
(860, 'news', 54, 'az', 'keywords', 'testdelete'),
(862, 'news', 54, 'az', 'title', 'testdelete'),
(864, 'news', 54, 'az', 'full', '<p>testdelete</p>'),
(866, 'news', 54, 'az', 'short', 'testdelete'),
(868, 'news', 54, 'az', 'is_published_lang', '1'),
(870, 'news', 54, 'ru', 'keywords', ''),
(872, 'news', 54, 'ru', 'title', ''),
(874, 'news', 54, 'ru', 'full', ''),
(876, 'news', 54, 'ru', 'short', ''),
(878, 'news', 54, 'ru', 'is_published_lang', '0'),
(880, 'news', 56, 'az', 'keywords', 'testdelete'),
(882, 'news', 56, 'az', 'title', 'testdelete'),
(884, 'news', 56, 'az', 'full', '<p>testdelete</p>'),
(886, 'news', 56, 'az', 'short', 'testdelete'),
(888, 'news', 56, 'az', 'is_published_lang', '1'),
(890, 'news', 56, 'ru', 'keywords', ''),
(892, 'news', 56, 'ru', 'title', ''),
(894, 'news', 56, 'ru', 'full', ''),
(896, 'news', 56, 'ru', 'short', ''),
(898, 'news', 56, 'ru', 'is_published_lang', '0'),
(900, 'news', 58, 'az', 'keywords', 'testdelete0'),
(902, 'news', 58, 'az', 'title', 'testdelete0'),
(904, 'news', 58, 'az', 'full', '<p>testdelete0</p>'),
(906, 'news', 58, 'az', 'short', 'testdelete0'),
(908, 'news', 58, 'az', 'is_published_lang', '1'),
(910, 'news', 58, 'ru', 'keywords', ''),
(912, 'news', 58, 'ru', 'title', ''),
(914, 'news', 58, 'ru', 'full', ''),
(916, 'news', 58, 'ru', 'short', ''),
(918, 'news', 58, 'ru', 'is_published_lang', '0'),
(920, 'news', 60, 'az', 'keywords', 'testdelete1'),
(922, 'news', 60, 'az', 'title', 'testdelete1'),
(924, 'news', 60, 'az', 'full', '<p>testdelete1</p>'),
(926, 'news', 60, 'az', 'short', 'testdelete1'),
(928, 'news', 60, 'az', 'is_published_lang', '1'),
(930, 'news', 60, 'ru', 'keywords', ''),
(932, 'news', 60, 'ru', 'title', ''),
(934, 'news', 60, 'ru', 'full', ''),
(936, 'news', 60, 'ru', 'short', ''),
(938, 'news', 60, 'ru', 'is_published_lang', '0'),
(940, 'news', 62, 'az', 'keywords', 'testdelete3'),
(942, 'news', 62, 'az', 'title', 'testdelete3'),
(944, 'news', 62, 'az', 'full', '<p>testdelete3</p>'),
(946, 'news', 62, 'az', 'short', 'testdelete3'),
(948, 'news', 62, 'az', 'is_published_lang', '1'),
(950, 'news', 62, 'ru', 'keywords', ''),
(952, 'news', 62, 'ru', 'title', ''),
(954, 'news', 62, 'ru', 'full', ''),
(956, 'news', 62, 'ru', 'short', ''),
(958, 'news', 62, 'ru', 'is_published_lang', '0'),
(960, 'news', 64, 'az', 'keywords', 'testdelete4'),
(962, 'news', 64, 'az', 'title', 'testdelete4'),
(964, 'news', 64, 'az', 'full', '<p>testdelete4</p>'),
(966, 'news', 64, 'az', 'short', 'testdelete4'),
(968, 'news', 64, 'az', 'is_published_lang', '1'),
(970, 'news', 64, 'ru', 'keywords', ''),
(972, 'news', 64, 'ru', 'title', ''),
(974, 'news', 64, 'ru', 'full', ''),
(976, 'news', 64, 'ru', 'short', ''),
(978, 'news', 64, 'ru', 'is_published_lang', '0'),
(979, 'menu', 49, 'az', 'name', 'Təhsil (ümumi və məktəbdənkənar) müəssisələrinə işçilərin işə qəbulu aşağıdakı qaydada tənzimlənir'),
(980, 'menu', 49, 'az', 'is_published_lang', '1'),
(981, 'menu', 49, 'ru', 'name', ''),
(982, 'menu', 49, 'ru', 'is_published_lang', '0'),
(983, 'menu', 50, 'az', 'name', 'Qeyd'),
(984, 'menu', 50, 'az', 'is_published_lang', '1'),
(985, 'menu', 50, 'ru', 'name', ''),
(986, 'menu', 50, 'ru', 'is_published_lang', '0'),
(987, 'univers', 1, 'en', 'name', 'Azerbaijan Technical University'),
(988, 'univers', 1, 'ru', 'name', 'Азербайджанский технический университет'),
(989, 'univers', 1, 'az', 'name', 'Azərbaycan Texniki Universiteti'),
(990, 'univers', 1, 'en', 'content', 'History Being one of the biggest higher educational institutions in the Southern Caucasus, Azerbaijan State University of Economics (UNEC) was founded in 1930 and it is the only fully economic-profiled university in Azerbaijan. The University holds higher education in four languages: Azerbaijani, Turkish, English, and Russian. According to Web metrics ranking - 2015 the University of Economics holds the first place among Azerbaijan universities. \r\nLInk History Being one of the biggest higher educational institutions in the Southern Caucasus, Azerbaijan State University of Economics (UNEC) was founded in 1930 and it is the only fully economic-profiled university in Azerbaijan. The University holds higher education in four languages: Azerbaijani, Turkish, English, and Russian. According to Web metrics ranking - 2015 the University of Economics holds the first place among Azerbaijan universities. \r\nHistory Being one of the biggest higher educational institutions in the Southern Caucasus, Azerbaijan State University of Economics (UNEC) was founded in 1930 and it is the only fully economic-profiled university in Azerbaijan. The University holds higher education in four languages: Azerbaijani, Turkish, English, and Russian. According to Web metrics ranking - 2015 the University of Economics holds the first place among Azerbaijan universities. \r\nHistory Being one of the biggest higher educational institutions in the Southern Caucasus, Azerbaijan State University of Economics (UNEC) was founded in 1930 and it is the only fully economic-profiled university in Azerbaijan. The University holds higher education in four languages: Azerbaijani, Turkish, English, and Russian. According to Web metrics ranking - 2015 the University of Economics holds the first place among Azerbaijan universities. \r\nHistory Being one of the biggest higher educational institutions in the Southern Caucasus, Azerbaijan State University of Economics (UNEC) was founded in 1930 and it is the only fully economic-profiled university in Azerbaijan. The University holds higher education in four languages: Azerbaijani, Turkish, English, and Russian. According to Web metrics ranking - 2015 the University of Economics holds the first place among Azerbaijan universities.');
INSERT INTO `translates` (`id`, `ref_table`, `ref_id`, `lang`, `fieldname`, `text`) VALUES
(991, 'univers', 1, 'ru', 'content', 'История Будучи одним из крупнейших высших учебных заведений на Южном Кавказе, Азербайджанский Государственный Экономический Университет (UNEC) был основан в 1930 году и является единственным полностью экономически профилированным университетом в Азербайджане. Университет имеет высшее образование на четырех языках: азербайджанском, турецком, английском и русском. Согласно рейтингу веб-метрики - 2015, Университет экономики занимает первое место среди азербайджанских университетов.\r\nИстория LInk Будучи одним из крупнейших высших учебных заведений на Южном Кавказе, Азербайджанский Государственный Экономический Университет (UNEC) был основан в 1930 году и является единственным полностью экономически профилированным университетом в Азербайджане. Университет имеет высшее образование на четырех языках: азербайджанском, турецком, английском и русском. Согласно рейтингу веб-метрики - 2015, Университет экономики занимает первое место среди азербайджанских университетов.\r\nИстория Будучи одним из крупнейших высших учебных заведений на Южном Кавказе, Азербайджанский Государственный Экономический Университет (UNEC) был основан в 1930 году и является единственным полностью экономически профилированным университетом в Азербайджане. Университет имеет высшее образование на четырех языках: азербайджанском, турецком, английском и русском. Согласно рейтингу веб-метрики - 2015, Университет экономики занимает первое место среди азербайджанских университетов.\r\nИстория Будучи одним из крупнейших высших учебных заведений на Южном Кавказе, Азербайджанский Государственный Экономический Университет (UNEC) был основан в 1930 году и является единственным полностью экономически профилированным университетом в Азербайджане. Университет имеет высшее образование на четырех языках: азербайджанском, турецком, английском и русском. Согласно рейтингу веб-метрики - 2015, Университет экономики занимает первое место среди азербайджанских университетов.\r\nИстория Будучи одним из крупнейших высших учебных заведений на Южном Кавказе, Азербайджанский Государственный Экономический Университет (UNEC) был основан в 1930 году и является единственным полностью экономически профилированным университетом в Азербайджане. Университет имеет высшее образование на четырех языках: азербайджанском, турецком, английском и русском. Согласно рейтингу веб-метрики - 2015, Университет экономики занимает первое место среди азербайджанских университетов.'),
(992, 'univers', 1, 'az', 'content', 'Tarix Cənubi Qafqazda ən böyük ali təhsil müəssisələrindən biri olan Azərbaycan Dövlət İqtisad Universiteti (UNEC) 1930-cu ildə yaradılıb və bu, Azərbaycanda tam iqtisadi cəhətdən təsvir edilmiş yeganə universitetdir. Universitet dörd dildə yüksək təhsil alır: azərbaycan, türk, ingilis və rus. Web ölçütlərinin sıralamasına görə - 2015 İqtisad Universiteti Azərbaycan universitetləri arasında birinci yeri tutur.\r\nCənubi Qafqazda ən böyük ali təhsil müəssisələrindən biri olmaqla, Azərbaycan Dövlət İqtisad Universiteti (UNEC) 1930-cu ildə yaradılıb və bu, Azərbaycanda tam iqtisadi cəhətdən təsvir edilmiş yeganə universitetdir. Universitet dörd dildə yüksək təhsil alır: azərbaycan, türk, ingilis və rus. Web ölçütlərinin sıralamasına görə - 2015 İqtisad Universiteti Azərbaycan universitetləri arasında birinci yeri tutur.\r\nTarix Cənubi Qafqazda ən böyük ali təhsil müəssisələrindən biri olan Azərbaycan Dövlət İqtisad Universiteti (UNEC) 1930-cu ildə yaradılıb və bu, Azərbaycanda tam iqtisadi cəhətdən təsvir edilmiş yeganə universitetdir. Universitet dörd dildə yüksək təhsil alır: azərbaycan, türk, ingilis və rus. Web ölçütlərinin sıralamasına görə - 2015 İqtisad Universiteti Azərbaycan universitetləri arasında birinci yeri tutur.\r\nTarix Cənubi Qafqazda ən böyük ali təhsil müəssisələrindən biri olan Azərbaycan Dövlət İqtisad Universiteti (UNEC) 1930-cu ildə yaradılıb və bu, Azərbaycanda tam iqtisadi cəhətdən təsvir edilmiş yeganə universitetdir. Universitet dörd dildə yüksək təhsil alır: azərbaycan, türk, ingilis və rus. Web ölçütlərinin sıralamasına görə - 2015 İqtisad Universiteti Azərbaycan universitetləri arasında birinci yeri tutur.\r\nTarix Cənubi Qafqazda ən böyük ali təhsil müəssisələrindən biri olan Azərbaycan Dövlət İqtisad Universiteti (UNEC) 1930-cu ildə yaradılıb və bu, Azərbaycanda tam iqtisadi cəhətdən təsvir edilmiş yeganə universitetdir. Universitet dörd dildə yüksək təhsil alır: azərbaycan, türk, ingilis və rus. Web ölçütlərinin sıralamasına görə - 2015 İqtisad Universiteti Azərbaycan universitetləri arasında birinci yeri tutur.'),
(993, 'univers', 1, 'en', 'address', '25 H.Cavid Avenue, Baku, Azerbaijan AZ1073\r\nAzerbaijan Technical University.'),
(994, 'univers', 1, 'ru', 'address', 'Джавид проспект 25, Баку AZ1073\r\nАзербайджанский Технический Университет.'),
(995, 'univers', 1, 'az', 'address', 'H.Cavid prospekti 25, Bakı, Azərbaycan AZ1073\r\nAzərbaycan Texniki Universiteti'),
(996, 'univers', 2, 'en', 'name', 'Baku Higher Oil School'),
(997, 'univers', 2, 'ru', 'name', 'Бакинская высшая нефтяная школа'),
(998, 'univers', 2, 'az', 'name', 'Bakı Ali Neft Məktəbi'),
(999, 'univers', 2, 'en', 'content', 'History Being one of the biggest higher educational institutions in the Southern Caucasus, Azerbaijan State University of Economics (UNEC) was founded in 1930 and it is the only fully economic-profiled university in Azerbaijan. The University holds higher education in four languages: Azerbaijani, Turkish, English, and Russian. According to Web metrics ranking - 2015 the University of Economics holds the first place among Azerbaijan universities. \r\nLInk History Being one of the biggest higher educational institutions in the Southern Caucasus, Azerbaijan State University of Economics (UNEC) was founded in 1930 and it is the only fully economic-profiled university in Azerbaijan. The University holds higher education in four languages: Azerbaijani, Turkish, English, and Russian. According to Web metrics ranking - 2015 the University of Economics holds the first place among Azerbaijan universities. \r\nHistory Being one of the biggest higher educational institutions in the Southern Caucasus, Azerbaijan State University of Economics (UNEC) was founded in 1930 and it is the only fully economic-profiled university in Azerbaijan. The University holds higher education in four languages: Azerbaijani, Turkish, English, and Russian. According to Web metrics ranking - 2015 the University of Economics holds the first place among Azerbaijan universities. \r\nHistory Being one of the biggest higher educational institutions in the Southern Caucasus, Azerbaijan State University of Economics (UNEC) was founded in 1930 and it is the only fully economic-profiled university in Azerbaijan. The University holds higher education in four languages: Azerbaijani, Turkish, English, and Russian. According to Web metrics ranking - 2015 the University of Economics holds the first place among Azerbaijan universities. \r\nHistory Being one of the biggest higher educational institutions in the Southern Caucasus, Azerbaijan State University of Economics (UNEC) was founded in 1930 and it is the only fully economic-profiled university in Azerbaijan. The University holds higher education in four languages: Azerbaijani, Turkish, English, and Russian. According to Web metrics ranking - 2015 the University of Economics holds the first place among Azerbaijan universities.'),
(1000, 'univers', 2, 'ru', 'content', 'История Будучи одним из крупнейших высших учебных заведений на Южном Кавказе, Азербайджанский Государственный Экономический Университет (UNEC) был основан в 1930 году и является единственным полностью экономически профилированным университетом в Азербайджане. Университет имеет высшее образование на четырех языках: азербайджанском, турецком, английском и русском. Согласно рейтингу веб-метрики - 2015, Университет экономики занимает первое место среди азербайджанских университетов.\r\nИстория LInk Будучи одним из крупнейших высших учебных заведений на Южном Кавказе, Азербайджанский Государственный Экономический Университет (UNEC) был основан в 1930 году и является единственным полностью экономически профилированным университетом в Азербайджане. Университет имеет высшее образование на четырех языках: азербайджанском, турецком, английском и русском. Согласно рейтингу веб-метрики - 2015, Университет экономики занимает первое место среди азербайджанских университетов.\r\nИстория Будучи одним из крупнейших высших учебных заведений на Южном Кавказе, Азербайджанский Государственный Экономический Университет (UNEC) был основан в 1930 году и является единственным полностью экономически профилированным университетом в Азербайджане. Университет имеет высшее образование на четырех языках: азербайджанском, турецком, английском и русском. Согласно рейтингу веб-метрики - 2015, Университет экономики занимает первое место среди азербайджанских университетов.\r\nИстория Будучи одним из крупнейших высших учебных заведений на Южном Кавказе, Азербайджанский Государственный Экономический Университет (UNEC) был основан в 1930 году и является единственным полностью экономически профилированным университетом в Азербайджане. Университет имеет высшее образование на четырех языках: азербайджанском, турецком, английском и русском. Согласно рейтингу веб-метрики - 2015, Университет экономики занимает первое место среди азербайджанских университетов.\r\nИстория Будучи одним из крупнейших высших учебных заведений на Южном Кавказе, Азербайджанский Государственный Экономический Университет (UNEC) был основан в 1930 году и является единственным полностью экономически профилированным университетом в Азербайджане. Университет имеет высшее образование на четырех языках: азербайджанском, турецком, английском и русском. Согласно рейтингу веб-метрики - 2015, Университет экономики занимает первое место среди азербайджанских университетов.'),
(1001, 'univers', 2, 'az', 'content', 'Tarix Cənubi Qafqazda ən böyük ali təhsil müəssisələrindən biri olan Azərbaycan Dövlət İqtisad Universiteti (UNEC) 1930-cu ildə yaradılıb və bu, Azərbaycanda tam iqtisadi cəhətdən təsvir edilmiş yeganə universitetdir. Universitet dörd dildə yüksək təhsil alır: azərbaycan, türk, ingilis və rus. Web ölçütlərinin sıralamasına görə - 2015 İqtisad Universiteti Azərbaycan universitetləri arasında birinci yeri tutur.\r\nCənubi Qafqazda ən böyük ali təhsil müəssisələrindən biri olmaqla, Azərbaycan Dövlət İqtisad Universiteti (UNEC) 1930-cu ildə yaradılıb və bu, Azərbaycanda tam iqtisadi cəhətdən təsvir edilmiş yeganə universitetdir. Universitet dörd dildə yüksək təhsil alır: azərbaycan, türk, ingilis və rus. Web ölçütlərinin sıralamasına görə - 2015 İqtisad Universiteti Azərbaycan universitetləri arasında birinci yeri tutur.\r\nTarix Cənubi Qafqazda ən böyük ali təhsil müəssisələrindən biri olan Azərbaycan Dövlət İqtisad Universiteti (UNEC) 1930-cu ildə yaradılıb və bu, Azərbaycanda tam iqtisadi cəhətdən təsvir edilmiş yeganə universitetdir. Universitet dörd dildə yüksək təhsil alır: azərbaycan, türk, ingilis və rus. Web ölçütlərinin sıralamasına görə - 2015 İqtisad Universiteti Azərbaycan universitetləri arasında birinci yeri tutur.\r\nTarix Cənubi Qafqazda ən böyük ali təhsil müəssisələrindən biri olan Azərbaycan Dövlət İqtisad Universiteti (UNEC) 1930-cu ildə yaradılıb və bu, Azərbaycanda tam iqtisadi cəhətdən təsvir edilmiş yeganə universitetdir. Universitet dörd dildə yüksək təhsil alır: azərbaycan, türk, ingilis və rus. Web ölçütlərinin sıralamasına görə - 2015 İqtisad Universiteti Azərbaycan universitetləri arasında birinci yeri tutur.\r\nTarix Cənubi Qafqazda ən böyük ali təhsil müəssisələrindən biri olan Azərbaycan Dövlət İqtisad Universiteti (UNEC) 1930-cu ildə yaradılıb və bu, Azərbaycanda tam iqtisadi cəhətdən təsvir edilmiş yeganə universitetdir. Universitet dörd dildə yüksək təhsil alır: azərbaycan, türk, ingilis və rus. Web ölçütlərinin sıralamasına görə - 2015 İqtisad Universiteti Azərbaycan universitetləri arasında birinci yeri tutur.'),
(1002, 'univers', 2, 'en', 'address', '30 H.Cavid Avenue, Baku, Azerbaijan AZ1073\r\nAzerbaijan Technical University.'),
(1003, 'univers', 2, 'ru', 'address', 'Джавид проспект 30, Баку AZ1073'),
(1004, 'univers', 2, 'az', 'address', 'H.Cavid prospekti 30, Bakı, Azərbaycan AZ1073'),
(1005, 'instruction_languages', 1, 'en', 'name', 'Azerbaijani'),
(1006, 'instruction_languages', 1, 'ru', 'name', 'Азербайджанский'),
(1007, 'instruction_languages', 1, 'az', 'name', 'Azərbaycan'),
(1008, 'instruction_languages', 2, 'en', 'name', 'Persian'),
(1009, 'instruction_languages', 2, 'ru', 'name', 'Фарси'),
(1010, 'instruction_languages', 2, 'az', 'name', 'Fars'),
(1011, 'instruction_languages', 3, 'en', 'name', 'Russian'),
(1012, 'instruction_languages', 3, 'ru', 'name', 'Русский'),
(1013, 'instruction_languages', 3, 'az', 'name', 'Rus'),
(1014, 'degrees', 1, 'en', 'name', 'BA'),
(1015, 'degrees', 1, 'ru', 'name', 'BA'),
(1016, 'degrees', 1, 'az', 'name', 'BA'),
(1020, 'degrees', 2, 'en', 'name', 'МA'),
(1021, 'degrees', 2, 'ru', 'name', 'МA'),
(1022, 'degrees', 2, 'az', 'name', 'МA'),
(1023, 'menu', 51, 'az', 'name', 'Baş səhifə'),
(1024, 'menu', 51, 'az', 'is_published_lang', '0'),
(1025, 'menu', 51, 'ru', 'name', 'Главная'),
(1026, 'menu', 51, 'ru', 'is_published_lang', '0'),
(1027, 'menu', 51, 'en', 'name', 'Home'),
(1028, 'menu', 51, 'en', 'is_published_lang', '1'),
(1029, 'menu', 52, 'az', 'name', 'Borçalı'),
(1030, 'menu', 52, 'az', 'is_published_lang', '1'),
(1031, 'menu', 52, 'ru', 'name', 'Borçalı'),
(1032, 'menu', 52, 'ru', 'is_published_lang', '0'),
(1033, 'menu', 52, 'en', 'name', 'Borçalı'),
(1034, 'menu', 52, 'en', 'is_published_lang', '0'),
(1035, 'menu', 53, 'az', 'name', 'Saraclı'),
(1036, 'menu', 53, 'az', 'is_published_lang', '1'),
(1037, 'menu', 53, 'ru', 'name', 'Saraclı'),
(1038, 'menu', 53, 'ru', 'is_published_lang', '0'),
(1039, 'menu', 53, 'en', 'name', 'Saraclı'),
(1040, 'menu', 53, 'en', 'is_published_lang', '0'),
(1041, 'menu', 54, 'az', 'name', 'Qalereya'),
(1042, 'menu', 54, 'az', 'is_published_lang', '1'),
(1043, 'menu', 54, 'ru', 'name', 'Qalereya'),
(1044, 'menu', 54, 'ru', 'is_published_lang', '0'),
(1045, 'menu', 54, 'en', 'name', 'Qalereya'),
(1046, 'menu', 54, 'en', 'is_published_lang', '0'),
(1047, 'menu', 55, 'az', 'name', 'Əlaqə'),
(1048, 'menu', 55, 'az', 'is_published_lang', '1'),
(1049, 'menu', 55, 'ru', 'name', 'Əlaqə'),
(1050, 'menu', 55, 'ru', 'is_published_lang', '0'),
(1051, 'menu', 55, 'en', 'name', 'Əlaqə'),
(1052, 'menu', 55, 'en', 'is_published_lang', '0'),
(1053, 'menu', 56, 'az', 'name', 'E-Application'),
(1054, 'menu', 56, 'az', 'is_published_lang', '0'),
(1055, 'menu', 56, 'ru', 'name', 'E-Application'),
(1056, 'menu', 56, 'ru', 'is_published_lang', '0'),
(1057, 'menu', 56, 'en', 'name', 'E-Application'),
(1058, 'menu', 56, 'en', 'is_published_lang', '1'),
(1059, 'menu', 57, 'az', 'name', 'Study-Checklist'),
(1060, 'menu', 57, 'az', 'is_published_lang', '0'),
(1061, 'menu', 57, 'ru', 'name', 'Study-Checklist'),
(1062, 'menu', 57, 'ru', 'is_published_lang', '0'),
(1063, 'menu', 57, 'en', 'name', 'Study-Checklist'),
(1064, 'menu', 57, 'en', 'is_published_lang', '1'),
(1065, 'menu', 58, 'az', 'name', 'Visas & Migration'),
(1066, 'menu', 58, 'az', 'is_published_lang', '0'),
(1067, 'menu', 58, 'ru', 'name', 'Visas & Migration'),
(1068, 'menu', 58, 'ru', 'is_published_lang', '0'),
(1069, 'menu', 58, 'en', 'name', 'Visas & Migration'),
(1070, 'menu', 58, 'en', 'is_published_lang', '1'),
(1071, 'menu', 59, 'az', 'name', 'Financial Suport'),
(1072, 'menu', 59, 'az', 'is_published_lang', '0'),
(1073, 'menu', 59, 'ru', 'name', 'Financial Suport'),
(1074, 'menu', 59, 'ru', 'is_published_lang', '0'),
(1075, 'menu', 59, 'en', 'name', 'Financial Suport'),
(1076, 'menu', 59, 'en', 'is_published_lang', '1'),
(1077, 'menu', 60, 'az', 'name', 'Local Scholarships'),
(1078, 'menu', 60, 'az', 'is_published_lang', '0'),
(1079, 'menu', 60, 'ru', 'name', 'Local Scholarships'),
(1080, 'menu', 60, 'ru', 'is_published_lang', '0'),
(1081, 'menu', 60, 'en', 'name', 'Local Scholarships'),
(1082, 'menu', 60, 'en', 'is_published_lang', '1'),
(1083, 'menu', 61, 'az', 'name', 'International Exhange Programmes'),
(1084, 'menu', 61, 'az', 'is_published_lang', '0'),
(1085, 'menu', 61, 'ru', 'name', 'International Exhange Programmes'),
(1086, 'menu', 61, 'ru', 'is_published_lang', '0'),
(1087, 'menu', 61, 'en', 'name', 'International Exhange Programmes'),
(1088, 'menu', 61, 'en', 'is_published_lang', '1'),
(1089, 'menu', 62, 'az', 'name', 'Bilateral Agreements between Countries'),
(1090, 'menu', 62, 'az', 'is_published_lang', '0'),
(1091, 'menu', 62, 'ru', 'name', 'Bilateral Agreements between Countries'),
(1092, 'menu', 62, 'ru', 'is_published_lang', '0'),
(1093, 'menu', 62, 'en', 'name', 'Bilateral Agreements between Countries'),
(1094, 'menu', 62, 'en', 'is_published_lang', '1'),
(1095, 'menu', 63, 'az', 'name', 'University Exchange'),
(1096, 'menu', 63, 'az', 'is_published_lang', '0'),
(1097, 'menu', 63, 'ru', 'name', 'University Exchange'),
(1098, 'menu', 63, 'ru', 'is_published_lang', '0'),
(1099, 'menu', 63, 'en', 'name', 'University Exchange'),
(1100, 'menu', 63, 'en', 'is_published_lang', '1'),
(1101, 'programs', 1, 'az', 'name', 'Kompyuter Mühəndisliyi'),
(1102, 'programs', 1, 'ru', 'name', 'Компьютерная Инженерия'),
(1103, 'programs', 1, 'en', 'name', 'Computer engineering'),
(1104, 'programs', 2, 'az', 'name', 'Kimya Mühəndisliyi'),
(1105, 'programs', 2, 'ru', 'name', 'Химическая Инженерия'),
(1106, 'programs', 2, 'en', 'name', 'Chemical Engineering'),
(1107, 'programs', 3, 'ru', 'name', 'Учитель Боилогии'),
(1108, 'programs', 3, 'en', 'name', 'Biology teaching'),
(1109, 'programs', 3, 'az', 'name', 'Bioloqiya Müəllimliyi'),
(1110, 'news', 65, 'az', 'keywords', 'you, have, support, studies, your, begin, yourself, will, before, money, enough, prove, that'),
(1111, 'news', 65, 'az', 'title', 'Before you begin your studies you will have to prove that you have enough money to support yourself az'),
(1112, 'news', 65, 'az', 'full', '<p><strong>Before you begin your studies you will have to prove that you have enough money to support yourself az</strong></p>'),
(1113, 'news', 65, 'az', 'short', 'Before you begin your studies you will have to prove that you have enough money to support yourself az'),
(1114, 'news', 65, 'az', 'is_published_lang', '0'),
(1115, 'news', 65, 'ru', 'keywords', 'you, have, support, studies, your, begin, yourself, will, before, money, that, enough, prove'),
(1116, 'news', 65, 'ru', 'title', 'Before you begin your studies you will have to prove that you have enough money to support yourself ru'),
(1117, 'news', 65, 'ru', 'full', '<p><strong>Before you begin your studies you will have to prove that you have enough money to support yourself ru</strong></p>'),
(1118, 'news', 65, 'ru', 'short', 'Before you begin your studies you will have to prove that you have enough money to support yourself ru'),
(1119, 'news', 65, 'ru', 'is_published_lang', '0'),
(1120, 'news', 65, 'en', 'keywords', 'you, have, support, studies, your, begin, yourself, will, before, money, that, prove, enough'),
(1121, 'news', 65, 'en', 'title', 'Before you begin your studies you will have to prove that you have enough money to support yourself en'),
(1122, 'news', 65, 'en', 'full', '<p><strong>Before you begin your studies you will have to prove that you have enough money to support yourself</strong></p>'),
(1123, 'news', 65, 'en', 'short', 'Before you begin your studies you will have to prove that you have enough money to support yourself'),
(1124, 'news', 65, 'en', 'is_published_lang', '1'),
(1125, 'news', 66, 'az', 'keywords', 'you, have, support, studies, your, begin, yourself, will, before, money, that, enough, prove'),
(1126, 'news', 66, 'az', 'title', 'Before you begin your studies you will have to prove that you have enough money to support yourself 2 az'),
(1127, 'news', 66, 'az', 'full', '<p><strong>Before you begin your studies you will have to prove that you have enough money to support yourself 2 az</strong></p>'),
(1128, 'news', 66, 'az', 'short', 'Before you begin your studies you will have to prove that you have enough money to support yourself 2 az'),
(1129, 'news', 66, 'az', 'is_published_lang', '0'),
(1130, 'news', 66, 'ru', 'keywords', 'you, have, support, studies, your, begin, yourself, will, before, money, enough, that, prove'),
(1131, 'news', 66, 'ru', 'title', 'Before you begin your studies you will have to prove that you have enough money to support yourself 2 ru'),
(1132, 'news', 66, 'ru', 'full', '<p><strong>Before you begin your studies you will have to prove that you have enough money to support yourself 2 ru</strong></p>'),
(1133, 'news', 66, 'ru', 'short', 'Before you begin your studies you will have to prove that you have enough money to support yourself 2 ru'),
(1134, 'news', 66, 'ru', 'is_published_lang', '0'),
(1135, 'news', 66, 'en', 'keywords', 'you, have, support, studies, your, begin, yourself, will, before, money, prove, that, enough'),
(1136, 'news', 66, 'en', 'title', 'Before you begin your studies you will have to prove that you have enough money to support yourself 2 en'),
(1137, 'news', 66, 'en', 'full', '<p><strong>Before you begin your studies you will have to prove that you have enough money to support yourself 2 en</strong></p>'),
(1138, 'news', 66, 'en', 'short', 'Before you begin your studies you will have to prove that you have enough money to support yourself 2 en'),
(1139, 'news', 66, 'en', 'is_published_lang', '1'),
(1140, 'news', 67, 'az', 'keywords', 'you, have, support, studies, your, begin, yourself, will, before, money, that, enough, prove'),
(1141, 'news', 67, 'az', 'title', 'Before you begin your studies you will have to prove that you have enough money to support yourself 3 az'),
(1142, 'news', 67, 'az', 'full', '<p><strong>Before you begin your studies you will have to prove that you have enough money to support yourself 3 az</strong></p>'),
(1143, 'news', 67, 'az', 'short', 'Before you begin your studies you will have to prove that you have enough money to support yourself 3 az'),
(1144, 'news', 67, 'az', 'is_published_lang', '0'),
(1145, 'news', 67, 'ru', 'keywords', 'you, have, support, studies, your, begin, yourself, will, before, money, that, prove, enough'),
(1146, 'news', 67, 'ru', 'title', 'Before you begin your studies you will have to prove that you have enough money to support yourself 3 ru'),
(1147, 'news', 67, 'ru', 'full', '<p><strong>Before you begin your studies you will have to prove that you have enough money to support yourself 3 ru</strong></p>'),
(1148, 'news', 67, 'ru', 'short', 'Before you begin your studies you will have to prove that you have enough money to support yourself 3 ru'),
(1149, 'news', 67, 'ru', 'is_published_lang', '0'),
(1150, 'news', 67, 'en', 'keywords', 'you, have, support, studies, your, begin, yourself, will, before, money, enough, that, prove'),
(1151, 'news', 67, 'en', 'title', 'Before you begin your studies you will have to prove that you have enough money to support yourself 3 en'),
(1152, 'news', 67, 'en', 'full', '<p><strong>Before you begin your studies you will have to prove that you have enough money to support yourself 3 en</strong></p>'),
(1153, 'news', 67, 'en', 'short', 'Before you begin your studies you will have to prove that you have enough money to support yourself 3 en'),
(1154, 'news', 67, 'en', 'is_published_lang', '1'),
(1155, 'news', 68, 'az', 'keywords', 'you, have, support, studies, your, begin, yourself, will, before, money, that, enough, prove'),
(1156, 'news', 68, 'az', 'title', 'Before you begin your studies you will have to prove that you have enough money to support yourself 4 az'),
(1157, 'news', 68, 'az', 'full', '<p><strong>Before you begin your studies you will have to prove that you have enough money to support yourself 4 az</strong></p>'),
(1158, 'news', 68, 'az', 'short', 'Before you begin your studies you will have to prove that you have enough money to support yourself 4 az'),
(1159, 'news', 68, 'az', 'is_published_lang', '0'),
(1160, 'news', 68, 'ru', 'keywords', 'you, have, support, studies, your, begin, yourself, will, before, money, prove, enough, that'),
(1161, 'news', 68, 'ru', 'title', 'Before you begin your studies you will have to prove that you have enough money to support yourself 4 ru'),
(1162, 'news', 68, 'ru', 'full', '<p><strong>Before you begin your studies you will have to prove that you have enough money to support yourself 4 ru</strong></p>'),
(1163, 'news', 68, 'ru', 'short', 'Before you begin your studies you will have to prove that you have enough money to support yourself 4 ru'),
(1164, 'news', 68, 'ru', 'is_published_lang', '0'),
(1165, 'news', 68, 'en', 'keywords', 'you, have, support, studies, your, begin, yourself, will, before, money, prove, that, enough'),
(1166, 'news', 68, 'en', 'title', 'Before you begin your studies you will have to prove that you have enough money to support yourself 4 en'),
(1167, 'news', 68, 'en', 'full', '<p><strong>Before you begin your studies you will have to prove that you have enough money to support yourself 4 en</strong></p>'),
(1168, 'news', 68, 'en', 'short', 'Before you begin your studies you will have to prove that you have enough money to support yourself 4 en'),
(1169, 'news', 68, 'en', 'is_published_lang', '1'),
(1170, 'galleries', 11, 'az', 'name', 'Xəbər Albomu'),
(1171, 'galleries', 11, 'az', 'is_published_lang', '0'),
(1172, 'galleries', 11, 'ru', 'name', 'Альбом Новостей'),
(1173, 'galleries', 11, 'ru', 'is_published_lang', '0'),
(1174, 'galleries', 11, 'en', 'name', 'News Album'),
(1175, 'galleries', 11, 'en', 'is_published_lang', '1'),
(1176, 'galleries', 14, 'az', 'name', 'Yeni Albomik'),
(1177, 'galleries', 14, 'az', 'is_published_lang', '0'),
(1178, 'galleries', 14, 'ru', 'name', 'Новый Албомик'),
(1179, 'galleries', 14, 'ru', 'is_published_lang', '0'),
(1180, 'galleries', 14, 'en', 'name', 'New Albomik'),
(1181, 'galleries', 14, 'en', 'is_published_lang', '1'),
(1182, 'galleries', 15, 'az', 'name', 'Yeni Albom'),
(1183, 'galleries', 15, 'az', 'is_published_lang', '0'),
(1184, 'galleries', 15, 'ru', 'name', 'Новый Альбом'),
(1185, 'galleries', 15, 'ru', 'is_published_lang', '0'),
(1186, 'galleries', 15, 'en', 'name', 'New Album'),
(1187, 'galleries', 15, 'en', 'is_published_lang', '1'),
(1188, 'news', 69, 'az', 'keywords', ''),
(1189, 'news', 69, 'az', 'title', ''),
(1190, 'news', 69, 'az', 'full', ''),
(1191, 'news', 69, 'az', 'short', ''),
(1192, 'news', 69, 'az', 'is_published_lang', '0'),
(1193, 'news', 69, 'ru', 'keywords', ''),
(1194, 'news', 69, 'ru', 'title', ''),
(1195, 'news', 69, 'ru', 'full', ''),
(1196, 'news', 69, 'ru', 'short', ''),
(1197, 'news', 69, 'ru', 'is_published_lang', '0'),
(1198, 'news', 69, 'en', 'keywords', 'sddsdsd, sdadas'),
(1199, 'news', 69, 'en', 'title', 'sddsdsd'),
(1200, 'news', 69, 'en', 'full', '<p>sdadas</p>'),
(1201, 'news', 69, 'en', 'short', 'sdadas'),
(1202, 'news', 69, 'en', 'is_published_lang', '1'),
(1203, 'articles', 33, 'az', 'keywords', ''),
(1204, 'articles', 33, 'az', 'title', ''),
(1205, 'articles', 33, 'az', 'full', ''),
(1206, 'articles', 33, 'az', 'short', ''),
(1207, 'articles', 33, 'az', 'is_published_lang', '0'),
(1208, 'articles', 33, 'ru', 'keywords', ''),
(1209, 'articles', 33, 'ru', 'title', ''),
(1210, 'articles', 33, 'ru', 'full', ''),
(1211, 'articles', 33, 'ru', 'short', ''),
(1212, 'articles', 33, 'ru', 'is_published_lang', '0'),
(1213, 'articles', 33, 'en', 'keywords', 'newmeqale'),
(1214, 'articles', 33, 'en', 'title', 'newmeqale'),
(1215, 'articles', 33, 'en', 'full', '<p>newmeqale</p>'),
(1216, 'articles', 33, 'en', 'short', 'newmeqale'),
(1217, 'articles', 33, 'en', 'is_published_lang', '0'),
(1218, 'articles', 34, 'az', 'keywords', ''),
(1219, 'articles', 34, 'az', 'title', 'new meqale'),
(1220, 'articles', 34, 'az', 'full', ''),
(1221, 'articles', 34, 'az', 'short', ''),
(1222, 'articles', 34, 'az', 'is_published_lang', '0'),
(1223, 'articles', 34, 'ru', 'keywords', ''),
(1224, 'articles', 34, 'ru', 'title', 'new meqale'),
(1225, 'articles', 34, 'ru', 'full', ''),
(1226, 'articles', 34, 'ru', 'short', ''),
(1227, 'articles', 34, 'ru', 'is_published_lang', '0'),
(1228, 'articles', 34, 'en', 'keywords', ''),
(1229, 'articles', 34, 'en', 'title', 'new meqale'),
(1230, 'articles', 34, 'en', 'full', '<p>new meqale</p>'),
(1231, 'articles', 34, 'en', 'short', ''),
(1232, 'articles', 34, 'en', 'is_published_lang', '0'),
(1233, 'articles', 27, 'az', 'keywords', ''),
(1234, 'articles', 27, 'az', 'title', 'Borçalı'),
(1235, 'articles', 27, 'az', 'short', ''),
(1236, 'articles', 27, 'az', 'full', '<p>Bor&ccedil;alı - tarixi mahal. G&uuml;rc&uuml;stanın cənub-şərq və Ermənistanın şimal-qərbində yerləşən Bor&ccedil;alı mahalının ərazisi, əsasən, dağlıq, &uuml;&ccedil;də biri isə d&uuml;zənlikdir. Bor&ccedil;alıda ən əski &ccedil;ağlardan bəri T&uuml;rk boyları yaşamış, bu torpaqların yiyəsi olmuşlar.</p>\r\n\r\n<p>Geniş yay və qış otlaqları olan Bor&ccedil;alıda maldarlıq, taxıl&ccedil;ılıq, bostan&ccedil;ılıq, bağ&ccedil;ılıq, ipək&ccedil;ilik inkişaf etmişdir. T&uuml;rk&uuml;n g&uuml;cdən d&uuml;şd&uuml;y&uuml;n&uuml; d&uuml;ş&uuml;nən yağılar Bor&ccedil;alıya zaman-zaman h&uuml;cum &ccedil;əksələr də Bor&ccedil;alı Azərbaycanın bir hissəsi olmuşdur. XVIII y&uuml;zilin başlarında Bor&ccedil;alı Gəncə bəylərbəyliyinin tərkibində idi. Bəylərbəyi Ziyadoğlu 1736-cı ildə Muğanda Nadirqulu xanın şah elan olunmasına qarşı &ccedil;ıxdığı &uuml;&ccedil;&uuml;n Nadir şah kimi tanındıqdan sonra Ziyadoğluları cəzalandırmaqdan &ouml;tr&uuml; Bor&ccedil;alını Gəncə bəylərbəylərindən alaraq g&uuml;rc&uuml; Kartli-Kaxeti &ccedil;arına hədiyyə edib. XVIII y&uuml;zilin ortalarında Azərbaycan xanlıqlara, sultanlıqlara b&ouml;l&uuml;nd&uuml;y&uuml; vaxt Bor&ccedil;alıda da sultanlıq elan olundu. XIX y&uuml;zilin ortalarında Bor&ccedil;alı mahalı qəzaya &ccedil;evrildi. Azərbaycanda 1918-ci ildə Xalq C&uuml;mhuriyyəti yaradıldıqdan sonra Bor&ccedil;alı G&uuml;rc&uuml;stanla Azərbaycan arasında m&uuml;bahisəli əraziyə &ccedil;evrildi. Rus-Sovet işğalından sonra da ədalət bərpa edilmədi və Bor&ccedil;alı G&uuml;rc&uuml;stana qatıldı. 1929 - cu ildə qəza ləğv edilərək 3 yerə b&ouml;l&uuml;nd&uuml;: Bor&ccedil;alı, L&uuml;ksemburq (Bolnisi), Başke&ccedil;id (Dmanisi).</p>\r\n\r\n<p>Bor&ccedil;alı G&uuml;ney Qafqazda ən qədim insan məskənlərindən biridir. Bu torpağın ilk sakinləri bizim ulu dədələrimiz olub. Bu ulu dədələrimizin m&uuml;barək ismi bu m&uuml;barək torpağın adında yaşayır. &quot;Bor&ccedil;alı&quot; s&ouml;z&uuml; bir &ccedil;oxlarının ehtimal etdikləri kimi &quot;B&ouml;r&uuml;&ccedil;ala&quot; , &quot;Bor&ccedil;ala&quot;, &quot;Boş&ccedil;ala&quot; kəlmələrindən yox, bu torpağın ilk sahibləri Barsillər-Boro&ccedil;oğluları qaparaq t&uuml;rklərin adından g&ouml;t&uuml;r&uuml;lm&uuml;şd&uuml;r. Bu o qarapapaqlardır ki, miladdan &ouml;ncə bu torpaqlara həyat gətirmiş, tarixdə oğuz, qıpcaq, tərəkəmə, y&ouml;ruq adlarıyla Doğu Anadolunun da ilk sahibləri olaraq tanınmışlar. Sonralar orta y&uuml;zillərdə Malazgirt qəhrəmanı uku &ouml;ndər Alp Arslanın komandanlığı ilə bu yerlərə y&uuml;r&uuml;ş edən səlcuqlar &ouml;zləri ilə eyni dildə danışan yerli xalqa - Borocoğlularıyla qaynayıb qarışsa da, torpaq əski sahiblərinn şərəfinə &ouml;z adını qoruyub saxlamışdır. Bu tarixi həqiqəti g&ouml;z &ouml;n&uuml;də tutmayan və ya qəsdli olaraq tutmaq istəməyən tarix&ccedil;ilər ağına-bozuna baxmadan bizim bu torpaqlarda məskunlaşma tariximizi X-XI, ya da XVII y&uuml;zildən hesablayırlar. Hələ biz onu demirik ki, yenə bu torpaqlarda Borocoğlularıyla yan-yana buğa t&uuml;rklər, bun t&uuml;rklər, g&ouml;gərlər (g&uuml;rc&uuml;lər qoqari, ermənilər quqark deyirlər) yaşamışlar və bunların hamısı bug&uuml;nk&uuml; Azərbaycan t&uuml;rklərinin soyk&ouml;k&uuml;ndə (etnokenezində) &ouml;zlərinə m&ouml;hkəm yer tutublar.</p>\r\n\r\n<p>Bor&ccedil;alı G&uuml;ney Qafqazda ən qədim insan məskənlərindən biridir. Bu torpağın ilk sakinləri bizim ulu dədələrimiz olub. Bu ulu dədələrimizin m&uuml;barək ismi bu m&uuml;barək torpağın adında yaşayır. &quot;Bor&ccedil;alı&quot; s&ouml;z&uuml; bir &ccedil;oxlarının ehtimal etdikləri kimi &quot;B&ouml;r&uuml;&ccedil;ala&quot; , &quot;Bor&ccedil;ala&quot;, &quot;Boş&ccedil;ala&quot; kəlmələrindən yox, bu torpağın ilk sahibləri Barsillər-Boro&ccedil;oğluları qaparaq t&uuml;rklərin adından g&ouml;t&uuml;r&uuml;lm&uuml;şd&uuml;r. Bu o qarapapaqlardır ki, miladdan &ouml;ncə bu torpaqlara həyat gətirmiş, tarixdə oğuz, qıpcaq, tərəkəmə, y&ouml;ruq adlarıyla Doğu Anadolunun da ilk sahibləri olaraq tanınmışlar. Sonralar orta y&uuml;zillərdə Malazgirt qəhrəmanı uku &ouml;ndər Alp Arslanın komandanlığı ilə bu yerlərə y&uuml;r&uuml;ş edən səlcuqlar &ouml;zləri ilə eyni dildə danışan yerli xalqa - Borocoğlularıyla qaynayıb qarışsa da, torpaq əski sahiblərinn şərəfinə &ouml;z adını qoruyub saxlamışdır. Bu tarixi həqiqəti g&ouml;z &ouml;n&uuml;də tutmayan və ya qəsdli olaraq tutmaq istəməyən tarix&ccedil;ilər ağına-bozuna baxmadan bizim bu torpaqlarda məskunlaşma tariximizi X-XI, ya da XVII y&uuml;zildən hesablayırlar. Hələ biz onu demirik ki, yenə bu torpaqlarda Borocoğlularıyla yan-yana buğa t&uuml;rklər, bun t&uuml;rklər, g&ouml;gərlər (g&uuml;rc&uuml;lər qoqari, ermənilər quqark deyirlər) yaşamışlar və bunların hamısı bug&uuml;nk&uuml; Azərbaycan t&uuml;rklərinin soyk&ouml;k&uuml;ndə (etnokenezində) &ouml;zlərinə m&ouml;hkəm yer tutublar.</p>\r\n\r\n<p>Bor&ccedil;alı Oğuz t&uuml;rklərinin &ccedil;ox qədimdən məskən saldığı bir b&ouml;lgədir. Əsrlər boyu g&uuml;rc&uuml;lər və azərilər bu g&ouml;zəl diyarda mehriban qonşuluq, dostluq şəritində yaşayıblar. M&uuml;xtəlif ictimayi quruluşlarda Bor&ccedil;alı yadelli işğal&ccedil;ıların, qəsbkar şahların ardı-arası kəsilməyən h&uuml;cumlarına məruz qalıb. Zəngin mədəniyyəti, d&ouml;y&uuml;şkən ruhu olan bor&ccedil;alılar qanlı d&ouml;y&uuml;şlərdə &ccedil;ox vaxt qalib gəlmiş, məğlub olanda belə torpağı, vətəni qoyub başqa b&ouml;lgəyə k&ouml;&ccedil;məmişlər. Bu g&uuml;n Bor&ccedil;alının m&uuml;xtəlif yerlərində tarixin yaddaşını qoruyub saxlayan b&ouml;y&uuml;k tarixi dəyərə malik olan qalalar m&ouml;vcuddur. Arxeoloji araşdırmalar nəticəsində alimlər m&uuml;əyyən ediblər ki, Bor&ccedil;alıdakı qalaların bəziləri &quot;Kitabi Dədə-Qorqud&quot; dastanlarındakı qalalardır. Bor&ccedil;alının coğrafi m&ouml;vqeyinin əhəmiyyəti bir də onunla şərtlənir ki, burdan birbaşa T&uuml;rkiyəyə &ccedil;ıxış yolu- ke&ccedil;id var. Bor&ccedil;alının ən ucqar dağ rayonu Başke&ccedil;iddir. Başke&ccedil;id T&uuml;rkiyəyə kedən yolun başke&ccedil;ididir. Tarix boyu bu ke&ccedil;iddən həm osmanlı, həm də azəri t&uuml;rkləri istifadə edib. &Ccedil;ar h&ouml;kumətinin təzyiqlərinə məruz qalan, arxalı erməni quldurlarının aramsız h&uuml;cumları nəticəsində &ouml;z dədə-baba torpağından məcburi şəkildə &ccedil;ıxarılan qarabağlıların b&ouml;y&uuml;k bir hissəsi də yaxınlığında T&uuml;rkiyə d&ouml;vləti yerləşən Bor&ccedil;alıya k&ouml;&ccedil;məyə məcbur olublar. Ona g&ouml;rə də, bu g&uuml;n Bor&ccedil;alının hər bir kəndində qarbağlılar nəsli yaşayır.</p>\r\n\r\n<p>Bor&ccedil;alı həm də Qarbağdır, Nax&ccedil;ıvandır, Şirvandır, Gəncəbasardır, İrəvan xanlığıdır. &Ccedil;&uuml;nki bu b&ouml;lgələrin hamısının Bor&ccedil;alıda n&uuml;mayəndələri yaşayır. Uzun əsrlərin sınağından həmişə &uuml;z&uuml;ağ, alnıa&ccedil;ıq &ccedil;ıxan bor&ccedil;alılar sovet hakimiyyəti dağılandan sonra &ccedil;ətin g&uuml;nlərini yaşamağa başladılar. Millət&ccedil;i Qamsaxurdiya hakimiyyəti yarım milyondan &ccedil;ox azərbaycanlıları kompakt şəkildə yaşadıqları dədə-baba torpağından məcburi qaydada &ccedil;ıxarmağa başladı.</p>\r\n\r\n<p>Təbii fəlakətdən zərər &ccedil;əkən svanları k&uuml;tləvi şəkildə həmin b&ouml;lgəyə k&ouml;&ccedil;&uuml;rd&uuml;lər. Onlar &uuml;&ccedil;&uuml;n Bor&ccedil;alının azərbaycanlılar yaşayan rayonlarında yeni qəsəbələr saldılar, pulsuz ev və torpaq sahəsi verdilər. &Ouml;zlərini də avtomatla silahlandıraraq azərilərin &uuml;st&uuml;nə saldılar. Ne&ccedil;ə-ne&ccedil;ə soydaşımız svanların h&uuml;cumuna məruz qalaraq &ouml;ld&uuml;r&uuml;ld&uuml;. Qatillər isə cəzasız qalaraq &ouml;z əməllərini davam etdirirdilər.</p>\r\n\r\n<p>Daha Bor&ccedil;alıda yaşamağın m&uuml;mk&uuml;n olmadığını g&ouml;rən yerli əhali k&uuml;tləvi şəkildə Azərbaycana və Rusiyaya k&ouml;&ccedil; etdilər. Beləliklə qısa m&uuml;ddət ərzində on minlərlə azərbaycanlı Bor&ccedil;alını tərk etdi. Bu g&uuml;n tam qətiyyətlə demək olar ki, Bor&ccedil;alı azərilərini tam şəkildə deportasiyadan &uuml;mummillli liderimiz Heydər Əliyev xilas etdi. O yenidən hakimiyyətə gələndən sonra G&uuml;rc&uuml;stan prezidenti E. Şeverdnadze ilə k&ouml;hnə dostluğundan istifadə edərək Azərbaycan və G&uuml;rc&uuml;stan d&ouml;vlətləri arasında yeni dostluq m&uuml;nasibətləri yaratdı və bu əlaqələri sivil m&uuml;stəviyə ke&ccedil;irdi.</p>\r\n\r\n<p>Lakin bu g&uuml;n &uuml;&ccedil;&uuml;n Bor&ccedil;alı azərbaycanlılarının problemsiz yaşayışı haqqında danışmaq m&uuml;mk&uuml;n deyil. Kənd təsərr&uuml;fatının &uuml;st&uuml;nl&uuml;k təşkil etdiyi bu b&ouml;lgədə soydaşlarımızın torpaq və bir &ccedil;ox problemləri m&ouml;vcuddur. Bu səbəbdən də bu g&uuml;n&uuml;m&uuml;zdə Bor&ccedil;alı eli k&uuml;tləvi şəkildə k&ouml;&ccedil; edir.</p>'),
(1237, 'articles', 27, 'az', 'is_published_lang', '0'),
(1238, 'articles', 27, 'ru', 'keywords', ''),
(1239, 'articles', 27, 'ru', 'title', 'Borçalı'),
(1240, 'articles', 27, 'ru', 'short', ''),
(1241, 'articles', 27, 'ru', 'full', '<p><strong>stenfordda tehsil alan telebemiz karyeramin izi ile istenilen yere gedeceyem ugu</strong></p>'),
(1242, 'articles', 27, 'ru', 'is_published_lang', '0'),
(1243, 'articles', 27, 'en', 'keywords', ''),
(1244, 'articles', 27, 'en', 'title', 'Borçalı'),
(1245, 'articles', 27, 'en', 'short', ''),
(1246, 'articles', 27, 'en', 'full', '<p><strong>stenfordda tehsil alan telebemiz karyeramin izi ile istenilen yere gedeceyem ugu</strong></p>'),
(1247, 'articles', 27, 'en', 'is_published_lang', '0'),
(1248, 'articles', 24, 'az', 'keywords', ''),
(1249, 'articles', 24, 'az', 'title', 'qar qizin nagili adli yeni il shenliyi kechirilir'),
(1250, 'articles', 24, 'az', 'short', ''),
(1251, 'articles', 24, 'az', 'full', '<p><strong>qar qizin nagili adli yeni il shenliyi kechirilir</strong></p>'),
(1252, 'articles', 24, 'az', 'is_published_lang', '0'),
(1253, 'articles', 24, 'ru', 'keywords', ''),
(1254, 'articles', 24, 'ru', 'title', 'qar qizin nagili adli yeni il shenliyi kechirilir'),
(1255, 'articles', 24, 'ru', 'short', ''),
(1256, 'articles', 24, 'ru', 'full', '<p><strong>qar qizin nagili adli yeni il shenliyi kechirilir</strong></p>'),
(1257, 'articles', 24, 'ru', 'is_published_lang', '0'),
(1258, 'articles', 24, 'en', 'keywords', ''),
(1259, 'articles', 24, 'en', 'title', 'qar qizin nagili adli yeni il shenliyi kechirilir'),
(1260, 'articles', 24, 'en', 'short', ''),
(1261, 'articles', 24, 'en', 'full', '<p><strong>qar qizin nagili adli yeni il shenliyi kechirilir</strong></p>'),
(1262, 'articles', 24, 'en', 'is_published_lang', '0'),
(1263, 'articles', 23, 'az', 'keywords', ''),
(1264, 'articles', 23, 'az', 'title', 'mezunlar akademik fealiyyetde'),
(1265, 'articles', 23, 'az', 'short', ''),
(1266, 'articles', 23, 'az', 'full', '<p><strong>mezunlar akademik fealiyyetde</strong></p>'),
(1267, 'articles', 23, 'az', 'is_published_lang', '0'),
(1268, 'articles', 23, 'ru', 'keywords', ''),
(1269, 'articles', 23, 'ru', 'title', 'mezunlar akademik fealiyyetde'),
(1270, 'articles', 23, 'ru', 'short', ''),
(1271, 'articles', 23, 'ru', 'full', '<p><strong>mezunlar akademik fealiyyetde</strong></p>'),
(1272, 'articles', 23, 'ru', 'is_published_lang', '0'),
(1273, 'articles', 23, 'en', 'keywords', ''),
(1274, 'articles', 23, 'en', 'title', 'mezunlar akademik fealiyyetde'),
(1275, 'articles', 23, 'en', 'short', ''),
(1276, 'articles', 23, 'en', 'full', '<p><strong>mezunlar akademik fealiyyetde</strong></p>'),
(1277, 'articles', 23, 'en', 'is_published_lang', '0'),
(1278, 'news', 70, 'az', 'keywords', ''),
(1279, 'news', 70, 'az', 'title', ''),
(1280, 'news', 70, 'az', 'full', ''),
(1281, 'news', 70, 'az', 'short', ''),
(1282, 'news', 70, 'az', 'is_published_lang', '0'),
(1283, 'news', 70, 'ru', 'keywords', ''),
(1284, 'news', 70, 'ru', 'title', ''),
(1285, 'news', 70, 'ru', 'full', ''),
(1286, 'news', 70, 'ru', 'short', ''),
(1287, 'news', 70, 'ru', 'is_published_lang', '0'),
(1288, 'news', 70, 'en', 'keywords', 'tesing, testing'),
(1289, 'news', 70, 'en', 'title', 'tesing Testing'),
(1290, 'news', 70, 'en', 'full', '<p>tesing Testing</p>'),
(1291, 'news', 70, 'en', 'short', 'tesing Testing'),
(1292, 'news', 70, 'en', 'is_published_lang', '1'),
(1293, 'news', 71, 'az', 'keywords', ''),
(1294, 'news', 71, 'az', 'title', ''),
(1295, 'news', 71, 'az', 'full', ''),
(1296, 'news', 71, 'az', 'short', ''),
(1297, 'news', 71, 'az', 'is_published_lang', '0'),
(1298, 'news', 71, 'ru', 'keywords', ''),
(1299, 'news', 71, 'ru', 'title', ''),
(1300, 'news', 71, 'ru', 'full', ''),
(1301, 'news', 71, 'ru', 'short', ''),
(1302, 'news', 71, 'ru', 'is_published_lang', '0'),
(1303, 'news', 71, 'en', 'keywords', 'testing'),
(1304, 'news', 71, 'en', 'title', 'testing Testing'),
(1305, 'news', 71, 'en', 'full', '<p>testing Testing</p>'),
(1306, 'news', 71, 'en', 'short', 'testing Testing'),
(1307, 'news', 71, 'en', 'is_published_lang', '1'),
(1308, 'news', 72, 'az', 'keywords', ''),
(1309, 'news', 72, 'az', 'title', ''),
(1310, 'news', 72, 'az', 'full', ''),
(1311, 'news', 72, 'az', 'short', ''),
(1312, 'news', 72, 'az', 'is_published_lang', '0'),
(1313, 'news', 72, 'ru', 'keywords', ''),
(1314, 'news', 72, 'ru', 'title', ''),
(1315, 'news', 72, 'ru', 'full', ''),
(1316, 'news', 72, 'ru', 'short', ''),
(1317, 'news', 72, 'ru', 'is_published_lang', '0'),
(1318, 'news', 72, 'en', 'keywords', 'title, tiedsd'),
(1319, 'news', 72, 'en', 'title', 'title Title'),
(1320, 'news', 72, 'en', 'full', '<p>tiedsd</p>'),
(1321, 'news', 72, 'en', 'short', 'tiedsd'),
(1322, 'news', 72, 'en', 'is_published_lang', '1'),
(1323, 'news', 73, 'az', 'keywords', ''),
(1324, 'news', 73, 'az', 'title', ''),
(1325, 'news', 73, 'az', 'full', ''),
(1326, 'news', 73, 'az', 'short', ''),
(1327, 'news', 73, 'az', 'is_published_lang', '0'),
(1328, 'news', 73, 'ru', 'keywords', ''),
(1329, 'news', 73, 'ru', 'title', ''),
(1330, 'news', 73, 'ru', 'full', ''),
(1331, 'news', 73, 'ru', 'short', ''),
(1332, 'news', 73, 'ru', 'is_published_lang', '0'),
(1333, 'news', 73, 'en', 'keywords', 'title, mitle'),
(1334, 'news', 73, 'en', 'title', 'title mitle'),
(1335, 'news', 73, 'en', 'full', '<p>title Title</p>'),
(1336, 'news', 73, 'en', 'short', 'title Title'),
(1337, 'news', 73, 'en', 'is_published_lang', '1'),
(1338, 'news', 74, 'az', 'keywords', ''),
(1339, 'news', 74, 'az', 'title', ''),
(1340, 'news', 74, 'az', 'full', ''),
(1341, 'news', 74, 'az', 'short', ''),
(1342, 'news', 74, 'az', 'is_published_lang', '0'),
(1343, 'news', 74, 'ru', 'keywords', ''),
(1344, 'news', 74, 'ru', 'title', ''),
(1345, 'news', 74, 'ru', 'full', ''),
(1346, 'news', 74, 'ru', 'short', ''),
(1347, 'news', 74, 'ru', 'is_published_lang', '0'),
(1348, 'news', 74, 'en', 'keywords', 'tittle, fitle'),
(1349, 'news', 74, 'en', 'title', 'tittle fitle'),
(1350, 'news', 74, 'en', 'full', '<p>tittle fitle</p>'),
(1351, 'news', 74, 'en', 'short', 'tittle fitle'),
(1352, 'news', 74, 'en', 'is_published_lang', '1'),
(1353, 'menu', 64, 'az', 'name', 'E-application'),
(1354, 'menu', 64, 'az', 'is_published_lang', '0'),
(1355, 'menu', 64, 'ru', 'name', 'E-application'),
(1356, 'menu', 64, 'ru', 'is_published_lang', '0'),
(1357, 'menu', 64, 'en', 'name', 'E-application'),
(1358, 'menu', 64, 'en', 'is_published_lang', '1'),
(1359, 'menu', 65, 'az', 'name', 'Language of Instruction'),
(1360, 'menu', 65, 'az', 'is_published_lang', '0'),
(1361, 'menu', 65, 'ru', 'name', 'Language of Instruction'),
(1362, 'menu', 65, 'ru', 'is_published_lang', '0'),
(1363, 'menu', 65, 'en', 'name', 'Language of Instruction'),
(1364, 'menu', 65, 'en', 'is_published_lang', '1'),
(1365, 'menu', 66, 'az', 'name', 'Foundation'),
(1366, 'menu', 66, 'az', 'is_published_lang', '0'),
(1367, 'menu', 66, 'ru', 'name', 'Foundation'),
(1368, 'menu', 66, 'ru', 'is_published_lang', '0'),
(1369, 'menu', 66, 'en', 'name', 'Foundation'),
(1370, 'menu', 66, 'en', 'is_published_lang', '1'),
(1371, 'menu', 67, 'az', 'name', 'Learn Azerbaijani, Russian & English'),
(1372, 'menu', 67, 'az', 'is_published_lang', '0'),
(1373, 'menu', 67, 'ru', 'name', 'Learn Azerbaijani, Russian & English'),
(1374, 'menu', 67, 'ru', 'is_published_lang', '0'),
(1375, 'menu', 67, 'en', 'name', 'Learn Azerbaijani, Russian & English'),
(1376, 'menu', 67, 'en', 'is_published_lang', '1'),
(1377, 'menu', 68, 'az', 'name', 'Kənd haqqında'),
(1378, 'menu', 68, 'az', 'is_published_lang', '1'),
(1379, 'menu', 68, 'ru', 'name', 'Kənd haqqında'),
(1380, 'menu', 68, 'ru', 'is_published_lang', '0'),
(1381, 'menu', 68, 'en', 'name', 'Kənd haqqında'),
(1382, 'menu', 68, 'en', 'is_published_lang', '0'),
(1383, 'menu', 69, 'az', 'name', 'Fiziki-coğrafi mövqeyi'),
(1384, 'menu', 69, 'az', 'is_published_lang', '1'),
(1385, 'menu', 69, 'ru', 'name', 'Fiziki-coğrafi mövqeyi'),
(1386, 'menu', 69, 'ru', 'is_published_lang', '0'),
(1387, 'menu', 69, 'en', 'name', 'Fiziki-coğrafi mövqeyi'),
(1388, 'menu', 69, 'en', 'is_published_lang', '0'),
(1389, 'menu', 70, 'az', 'name', 'Telefon kitabçası'),
(1390, 'menu', 70, 'az', 'is_published_lang', '1'),
(1391, 'menu', 70, 'ru', 'name', 'Telefon kitabçası'),
(1392, 'menu', 70, 'ru', 'is_published_lang', '0'),
(1393, 'menu', 70, 'en', 'name', 'Telefon kitabçası'),
(1394, 'menu', 70, 'en', 'is_published_lang', '0'),
(1395, 'menu', 71, 'az', 'name', 'Görkəmli şəxsiyyətləri'),
(1396, 'menu', 71, 'az', 'is_published_lang', '1'),
(1397, 'menu', 71, 'ru', 'name', 'Görkəmli şəxsiyyətləri'),
(1398, 'menu', 71, 'ru', 'is_published_lang', '0'),
(1399, 'menu', 71, 'en', 'name', 'Görkəmli şəxsiyyətləri'),
(1400, 'menu', 71, 'en', 'is_published_lang', '0'),
(1401, 'menu', 72, 'az', 'name', 'Aşıq havaları'),
(1402, 'menu', 72, 'az', 'is_published_lang', '1'),
(1403, 'menu', 72, 'ru', 'name', 'Aşıq havaları'),
(1404, 'menu', 72, 'ru', 'is_published_lang', '0'),
(1405, 'menu', 72, 'en', 'name', 'Aşıq havaları'),
(1406, 'menu', 72, 'en', 'is_published_lang', '0'),
(1407, 'menu', 73, 'az', 'name', 'Video görüntülər'),
(1408, 'menu', 73, 'az', 'is_published_lang', '1'),
(1409, 'menu', 73, 'ru', 'name', 'Video görüntülər'),
(1410, 'menu', 73, 'ru', 'is_published_lang', '0'),
(1411, 'menu', 73, 'en', 'name', 'Video görüntülər'),
(1412, 'menu', 73, 'en', 'is_published_lang', '0'),
(1413, 'menu', 74, 'az', 'name', 'Məzəli əhvalatlar'),
(1414, 'menu', 74, 'az', 'is_published_lang', '1'),
(1415, 'menu', 74, 'ru', 'name', 'Məzəli əhvalatlar'),
(1416, 'menu', 74, 'ru', 'is_published_lang', '0'),
(1417, 'menu', 74, 'en', 'name', 'Məzəli əhvalatlar'),
(1418, 'menu', 74, 'en', 'is_published_lang', '0'),
(1419, 'menu', 75, 'az', 'name', 'Tarixi və əhalisi'),
(1420, 'menu', 75, 'az', 'is_published_lang', '1'),
(1421, 'menu', 75, 'ru', 'name', 'Tarixi və əhalisi'),
(1422, 'menu', 75, 'ru', 'is_published_lang', '0'),
(1423, 'menu', 75, 'en', 'name', 'Tarixi və əhalisi'),
(1424, 'menu', 75, 'en', 'is_published_lang', '0'),
(1425, 'menu', 76, 'az', 'name', 'Kənd haqqında şeirlər və rəvayətlər'),
(1426, 'menu', 76, 'az', 'is_published_lang', '1'),
(1427, 'menu', 76, 'ru', 'name', 'Kənd haqqında şeirlər və rəvayətlər'),
(1428, 'menu', 76, 'ru', 'is_published_lang', '0'),
(1429, 'menu', 76, 'en', 'name', 'Kənd haqqında şeirlər və rəvayətlər'),
(1430, 'menu', 76, 'en', 'is_published_lang', '0'),
(1431, 'galleries', 16, 'az', 'name', 'Yeni Albom'),
(1432, 'galleries', 16, 'az', 'is_published_lang', '1'),
(1433, 'galleries', 16, 'ru', 'name', 'Yeni Albom'),
(1434, 'galleries', 16, 'ru', 'is_published_lang', '0'),
(1435, 'galleries', 16, 'en', 'name', 'Yeni Albom'),
(1436, 'galleries', 16, 'en', 'is_published_lang', '0'),
(1437, 'galleries', 17, 'az', 'name', 'Yeni Album'),
(1438, 'galleries', 17, 'az', 'is_published_lang', '1'),
(1439, 'galleries', 17, 'ru', 'name', 'Yeni Album'),
(1440, 'galleries', 17, 'ru', 'is_published_lang', '0'),
(1441, 'galleries', 17, 'en', 'name', 'Yeni Album'),
(1442, 'galleries', 17, 'en', 'is_published_lang', '0'),
(1443, 'galleries', 18, 'az', 'name', 'tesrt'),
(1444, 'galleries', 18, 'az', 'is_published_lang', '1'),
(1445, 'galleries', 18, 'ru', 'name', 'tesrt'),
(1446, 'galleries', 18, 'ru', 'is_published_lang', '0'),
(1447, 'galleries', 18, 'en', 'name', 'tesrt'),
(1448, 'galleries', 18, 'en', 'is_published_lang', '0'),
(1449, 'galleries', 23, 'az', 'name', 'rerer'),
(1450, 'galleries', 23, 'ru', 'name', 'rerer'),
(1451, 'galleries', 23, 'en', 'name', 'rerer'),
(1452, 'galleries', 24, 'az', 'name', 'Yeni Album'),
(1453, 'galleries', 24, 'ru', 'name', 'Yeni Album'),
(1454, 'galleries', 24, 'en', 'name', 'Yeni Album'),
(1455, 'galleries', 25, 'az', 'name', 'sfdgdf'),
(1456, 'galleries', 25, 'ru', 'name', 'sfdgdf'),
(1457, 'galleries', 25, 'en', 'name', 'sfdgdf'),
(1458, 'galleries', 27, 'az', 'name', 'Yeni Album'),
(1459, 'galleries', 27, 'ru', 'name', 'Yeni Album'),
(1460, 'galleries', 27, 'en', 'name', 'Yeni Album');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `actual_links`
--
ALTER TABLE `actual_links`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_id` (`gallery_id`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `sef` (`sef`),
  ADD KEY `add_by` (`add_by`),
  ADD KEY `mod_by` (`mod_by`);

--
-- Индексы таблицы `articles_cats_rel`
--
ALTER TABLE `articles_cats_rel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `article_id` (`article_id`,`category_id`);

--
-- Индексы таблицы `articles_keywords`
--
ALTER TABLE `articles_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keyword_id` (`keyword_id`),
  ADD KEY `article_id` (`article_id`);

--
-- Индексы таблицы `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_languages`
--
ALTER TABLE `cms_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `language_dir` (`language_dir`);

--
-- Индексы таблицы `cms_log`
--
ALTER TABLE `cms_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subj_table` (`subj_table`,`subj_id`),
  ADD KEY `action` (`action`),
  ADD KEY `cms_user_id` (`cms_user_id`);

--
-- Индексы таблицы `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `reg_by` (`reg_by`);

--
-- Индексы таблицы `cms_users_actions`
--
ALTER TABLE `cms_users_actions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_user_id_2` (`cms_user_id`,`controller`,`action`),
  ADD KEY `cms_user_id` (`cms_user_id`);

--
-- Индексы таблицы `cms_users_menu_sections_rel`
--
ALTER TABLE `cms_users_menu_sections_rel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_user_id` (`cms_user_id`,`menu_section_id`),
  ADD KEY `cms_user_id_2` (`cms_user_id`),
  ADD KEY `menu_section_id` (`menu_section_id`);

--
-- Индексы таблицы `cms_users_roles_actions`
--
ALTER TABLE `cms_users_roles_actions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role` (`role`,`controller`,`action`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ref_table` (`ref_table`,`ref_id`),
  ADD KEY `answered_comment_id` (`answered_comment_id`);

--
-- Индексы таблицы `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Индексы таблицы `content_registry`
--
ALTER TABLE `content_registry`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref_table` (`ref_table`);

--
-- Индексы таблицы `documents_documents_type`
--
ALTER TABLE `documents_documents_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_id` (`document_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Индексы таблицы `documents_keywords`
--
ALTER TABLE `documents_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keyword_id` (`keyword_id`),
  ADD KEY `document_id` (`document_id`);

--
-- Индексы таблицы `documents_type`
--
ALTER TABLE `documents_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `add_by` (`add_by`),
  ADD KEY `mod_by` (`mod_by`);

--
-- Индексы таблицы `gallery_photos`
--
ALTER TABLE `gallery_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_id` (`gallery_id`),
  ADD KEY `mod_by` (`mod_by`),
  ADD KEY `add_by` (`add_by`);

--
-- Индексы таблицы `instruction_languages`
--
ALTER TABLE `instruction_languages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sef` (`sef`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `ref_table` (`ref_table`,`ref_id`),
  ADD KEY `add_by` (`add_by`),
  ADD KEY `mod_by` (`mod_by`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `menu_navpos_rel`
--
ALTER TABLE `menu_navpos_rel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_id` (`item_id`,`navpos_id`);

--
-- Индексы таблицы `nav_positions`
--
ALTER TABLE `nav_positions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sef` (`sef`),
  ADD KEY `gallery_id` (`gallery_id`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `add_by` (`add_by`),
  ADD KEY `mod_by` (`mod_by`);

--
-- Индексы таблицы `news_cats_rel`
--
ALTER TABLE `news_cats_rel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `document_id` (`news_id`,`category_id`);

--
-- Индексы таблицы `personalities`
--
ALTER TABLE `personalities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `phonebook`
--
ALTER TABLE `phonebook`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `site_languages`
--
ALTER TABLE `site_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `language_dir` (`language_dir`);

--
-- Индексы таблицы `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option` (`option`);

--
-- Индексы таблицы `site_users`
--
ALTER TABLE `site_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`uid`,`provider`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `site_users_events`
--
ALTER TABLE `site_users_events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_2` (`user_id`,`ref_table`,`ref_id`,`event_type`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ref_table` (`ref_table`,`ref_id`);

--
-- Индексы таблицы `translates`
--
ALTER TABLE `translates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref_table_2` (`ref_table`,`ref_id`,`lang`,`fieldname`),
  ADD KEY `ref_table` (`ref_table`,`ref_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `actual_links`
--
ALTER TABLE `actual_links`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT для таблицы `articles_cats_rel`
--
ALTER TABLE `articles_cats_rel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `articles_keywords`
--
ALTER TABLE `articles_keywords`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT для таблицы `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `cms_languages`
--
ALTER TABLE `cms_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `cms_log`
--
ALTER TABLE `cms_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1285;
--
-- AUTO_INCREMENT для таблицы `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `cms_users_actions`
--
ALTER TABLE `cms_users_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `cms_users_menu_sections_rel`
--
ALTER TABLE `cms_users_menu_sections_rel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `cms_users_roles_actions`
--
ALTER TABLE `cms_users_roles_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `content_registry`
--
ALTER TABLE `content_registry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `documents_documents_type`
--
ALTER TABLE `documents_documents_type`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT для таблицы `documents_keywords`
--
ALTER TABLE `documents_keywords`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT для таблицы `documents_type`
--
ALTER TABLE `documents_type`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT для таблицы `gallery_photos`
--
ALTER TABLE `gallery_photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT для таблицы `instruction_languages`
--
ALTER TABLE `instruction_languages`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT для таблицы `menu_navpos_rel`
--
ALTER TABLE `menu_navpos_rel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT для таблицы `nav_positions`
--
ALTER TABLE `nav_positions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT для таблицы `news_cats_rel`
--
ALTER TABLE `news_cats_rel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT для таблицы `personalities`
--
ALTER TABLE `personalities`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `phonebook`
--
ALTER TABLE `phonebook`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `site_languages`
--
ALTER TABLE `site_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `site_users`
--
ALTER TABLE `site_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `site_users_events`
--
ALTER TABLE `site_users_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `translates`
--
ALTER TABLE `translates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1461;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
