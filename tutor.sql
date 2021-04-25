-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2021 at 07:24 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutor`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tutor_id` bigint(20) UNSIGNED NOT NULL,
  `account_holder_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift_code` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_datetime` datetime NOT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cannonical_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => InActive, 1 => Published, 2 => Draft, 3 => Scheduled',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `publish_datetime`, `featured_image`, `content`, `meta_title`, `cannonical_link`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'debitis omnis eos', '1986-08-23 19:11:00', NULL, '<p>Architecto cupiditate enim ipsam voluptatem pariatur minima iure. Est aut nihil illum minima. Quas architecto quod quibusdam veritatis similique quo provident.</p>', 'minima distinctio quae', 'http://www.mayert.info/', 'debitis-omnis-eos', '<p>Magnam dolorem sit assumenda adipisci at. Ab vel doloremque numquam accusantium quia porro. Mollitia minima odit veritatis necessitatibus qui.</p>', 'consequuntur', 2, 5, 1, '2021-04-02 09:22:15', '2021-04-16 07:36:56', NULL),
(2, 'eveniet ut consequuntur', '1976-12-20 14:16:25', NULL, 'Veritatis et in sequi molestiae minus. Minus pariatur nesciunt deleniti distinctio quis. In et iusto sunt a autem quo voluptas.', 'consequatur et eum', 'http://www.schowalter.com/quas-a-et-amet-qui-repellat-qui-omnis', 'omnis-omnis-voluptas-dolorem-quo-impedit-laudantium-tempore-ratione', 'Voluptatem et quidem omnis officiis voluptas qui. Nihil sed ea corporis enim quia qui laudantium porro. Eum qui incidunt veritatis neque pariatur labore illo. Autem quia velit possimus aut ut.', 'deserunt', 2, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(3, 'dolorem qui et', '2001-12-17 00:24:36', NULL, 'Commodi earum reiciendis autem et. Laudantium neque similique at et molestias. Natus culpa perferendis enim molestiae.', 'aspernatur voluptatem laudantium', 'http://www.kshlerin.com/autem-expedita-sint-vel-ut-dignissimos-unde', 'sint-cum-earum-unde-ut-voluptatum', 'Repudiandae accusamus omnis voluptatem veritatis minus voluptates. Repellendus et ex dolor iusto. Nulla sed rerum molestiae commodi. Dignissimos consequatur nam incidunt.', 'quo', 0, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(4, 'magni magni nostrum', '1992-09-16 22:40:52', NULL, 'Voluptatem sed recusandae vel repellat aut cupiditate voluptatibus. Omnis amet cumque earum quas. Totam quasi quia et dolores et tempore. Saepe id amet quidem optio nesciunt odit impedit odio.', 'et vitae aut', 'http://ankunding.info/maxime-quam-provident-dignissimos-deserunt-ipsum-voluptatibus.html', 'quo-sed-mollitia-autem-perspiciatis-possimus', 'Ratione itaque laborum aspernatur repudiandae nihil sequi repellat qui. Unde quas dignissimos enim sint. Reprehenderit ipsa repellat ut.', 'vel', 1, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(5, 'quo ea quo', '1993-08-09 07:41:12', NULL, 'Nostrum perspiciatis consequatur perferendis aspernatur voluptas. Labore sit eos provident placeat possimus sed. Quia quam nostrum tempora animi nostrum recusandae voluptatem. Et fugiat et ut omnis quod accusamus quia et.', 'ipsa quo vero', 'http://stokes.info/eos-nulla-sunt-repellat-occaecati-enim-quam-omnis.html', 'voluptas-dolores-voluptates-reprehenderit-vitae', 'Libero porro magnam architecto sit ut repudiandae voluptatem culpa. Aperiam vero ullam voluptate ut ea et at. Esse architecto sit nihil id. Nemo dolor et excepturi rem.', 'non', 3, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(6, 'qui autem sint', '1974-02-15 15:43:06', NULL, 'Et veritatis neque tenetur cumque ducimus. Molestiae culpa est impedit perferendis. Laboriosam voluptas explicabo voluptatibus maiores repellendus consectetur quo qui. Id ad praesentium veritatis dolorem natus.', 'rerum tempore ducimus', 'https://www.rodriguez.com/quo-accusamus-enim-enim-asperiores', 'nam-quia-aut-expedita-placeat', 'Ipsam doloribus quis ea ipsam assumenda tempore. Non molestiae illo qui qui qui assumenda. Iste laboriosam rem iure mollitia mollitia.', 'perspiciatis', 2, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(7, 'sed rem inventore', '2004-07-20 04:38:03', NULL, 'Eos consectetur occaecati qui tempore modi dicta iste. Voluptatem minus pariatur corrupti voluptatum. Consectetur debitis aspernatur sit enim consectetur. Voluptas consequuntur suscipit qui.', 'quas facere officiis', 'http://bruen.com/mollitia-sed-nulla-ut-sed', 'corrupti-aut-et-quae', 'Consectetur numquam repellendus beatae dolorum. Accusamus fugit similique quia quae. Voluptatem expedita rerum et fugiat sed. Quidem excepturi velit numquam corporis quos necessitatibus.', 'alias', 1, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(8, 'quia sapiente accusamus', '2018-11-24 23:39:50', NULL, 'Quod nostrum velit voluptatum nihil ut voluptatem. In nemo numquam occaecati. Dolores rem consequuntur ratione nihil. Dolores et voluptas rem quaerat dolor nesciunt.', 'culpa libero autem', 'https://torphy.org/sint-dignissimos-eaque-voluptatibus-quo.html', 'vero-eaque-nesciunt-et-hic', 'Sit quis debitis rerum autem quibusdam aliquid neque. Iste consequuntur occaecati quis qui. Aut veritatis in libero dignissimos necessitatibus cum dolor expedita.', 'ad', 0, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(9, 'ipsam qui ullam', '2002-10-15 11:58:12', NULL, 'Non ullam deserunt tempora nisi sed. Delectus explicabo error optio iure quas voluptas. Eveniet repellat quia suscipit qui exercitationem molestiae et. Rerum ipsa asperiores necessitatibus nemo consequatur qui.', 'aut vitae velit', 'http://www.wiza.info/veniam-deleniti-ratione-distinctio-occaecati-enim.html', 'qui-voluptas-rerum-et-repudiandae-atque', 'Rerum corrupti commodi numquam quae ipsa sequi. Assumenda occaecati incidunt perferendis ex id qui nesciunt eum. Totam ut quisquam laudantium ratione aut reprehenderit.', 'doloremque', 1, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(10, 'iure veniam atque', '1994-01-27 08:30:04', NULL, 'Et atque dolore architecto qui. Facere dolor facilis laudantium fuga aut distinctio repellat.', 'eos sed eligendi', 'http://prosacco.biz/laborum-ut-animi-enim-quia-a-sint-maiores-omnis', 'non-ipsa-et-aliquam-magnam-et-velit-eos-nam', 'Reprehenderit omnis quia et est nihil consequuntur est sint. Neque deleniti quia accusamus eligendi voluptas laboriosam ad. Tenetur labore quos ea quia aut nisi. Vitae et ut sunt quae amet laboriosam omnis est.', 'perferendis', 3, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sint laborum quis', 1, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(2, 'culpa et molestias', 0, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(3, 'deserunt sint dolorem', 0, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(4, 'exercitationem illo fuga', 0, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(5, 'qui voluptas voluptate', 0, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(6, 'maiores praesentium omnis', 0, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(7, 'odio debitis aut', 1, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(8, 'impedit aliquam est', 0, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(9, 'ipsum voluptatem perspiciatis', 1, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(10, 'reiciendis veritatis eligendi', 1, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_map_categories`
--

CREATE TABLE `blog_map_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_map_categories`
--

INSERT INTO `blog_map_categories` (`id`, `blog_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `blog_map_tags`
--

CREATE TABLE `blog_map_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_map_tags`
--

INSERT INTO `blog_map_tags` (`id`, `blog_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_tags`
--

INSERT INTO `blog_tags` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'numquam', 0, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(2, 'pariatur', 1, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(3, 'et', 1, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(4, 'error', 1, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(5, 'qui', 0, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(6, 'ab', 1, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(7, 'nostrum', 0, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(8, 'exercitationem', 0, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(9, 'explicabo', 0, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(10, 'inventore', 1, 5, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `title`, `slug`, `content`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sit natus optio temporibus iure.', 'sit-natus-optio-temporibus-iure', 'Ut qui minima aliquam earum sequi deserunt sint. Eos minus qui veniam dolores voluptas debitis ipsum in. Perspiciatis consequuntur adipisci in tempore fugit. Cupiditate iusto est dicta nobis quae unde ea.', 0, 1, NULL, '2021-03-31 14:32:36', NULL, NULL),
(2, 'Dicta consequatur nesciunt dolorem.', 'dicta-consequatur-nesciunt-dolorem', 'Quisquam et voluptatem non natus repellat. Adipisci laborum aut illum necessitatibus. Quia fugiat eaque ex atque facilis voluptas alias. Doloribus deleniti est maiores eaque minus ex sint.', 1, 1, NULL, '2021-03-28 21:37:35', NULL, NULL),
(3, 'Provident harum alias doloremque.', 'provident-harum-alias-doloremque', 'Id exercitationem quia nihil. Nesciunt aspernatur sint commodi optio. Minus minima sequi tempore.', 1, 1, NULL, '2021-03-28 11:06:20', NULL, NULL),
(4, 'Maxime exercitationem sint vitae voluptatem est.', 'maxime-exercitationem-sint-vitae-voluptatem-est', 'Nobis tempore numquam consequatur est doloremque tempora ut voluptatem. Assumenda eum reiciendis consequatur et laudantium. Et magnam ea assumenda dicta veniam quisquam provident quia. Error voluptas est eum enim veniam est recusandae dolorum.', 0, 1, NULL, '2021-04-01 07:14:07', NULL, NULL),
(5, 'Omnis est eos hic iusto aut.', 'omnis-est-eos-hic-iusto-aut', 'Accusamus tenetur et dolores fugit eligendi at. Et quidem voluptates minus ad consequatur nam est. Ducimus ut alias repudiandae sapiente quia qui impedit.', 1, 1, NULL, '2021-03-30 19:08:37', NULL, NULL),
(6, 'Veritatis saepe dolorem est.', 'veritatis-saepe-dolorem-est', 'Impedit qui sed praesentium tempore et recusandae. Optio repudiandae aut est consectetur omnis amet modi sit. Sit voluptatem enim id. Delectus id illum sunt voluptatem omnis.', 0, 2, NULL, '2021-03-27 21:12:53', NULL, NULL),
(7, 'Ullam ad in.', 'ullam-ad-in', 'Occaecati inventore suscipit ut deserunt esse. Deleniti accusamus modi et quae assumenda.', 1, 1, NULL, '2021-03-31 14:33:19', NULL, NULL),
(8, 'Ea aut alias ut a deserunt.', 'ea-aut-alias-ut-a-deserunt', 'Non dicta non voluptas fugit sed. Quia voluptate cumque maiores corrupti in. Natus tenetur odit amet exercitationem eveniet adipisci.', 0, 1, NULL, '2021-03-31 10:56:27', NULL, NULL),
(9, 'Ut rerum consequuntur deleniti similique nihil.', 'ut-rerum-consequuntur-deleniti-similique-nihil', 'Iste qui molestiae dolore mollitia asperiores vel. Tenetur eos quia voluptate commodi. Ipsam velit consequuntur voluptatem ad sit. Qui totam ea a ut quisquam perferendis modi.', 0, 2, NULL, '2021-03-26 14:12:58', NULL, NULL),
(10, 'Officiis neque excepturi.', 'officiis-neque-excepturi', 'Animi aperiam vero voluptatem sunt. A eos a aperiam. Deleniti voluptatem amet nostrum numquam qui velit fugiat. Consequatur fuga voluptas eveniet commodi quis suscipit.', 1, 1, NULL, '2021-03-29 02:45:02', NULL, NULL),
(11, 'Accusantium officiis quos iste optio et.', 'accusantium-officiis-quos-iste-optio-et', 'Et quam deleniti et ut. Et sit molestias praesentium perspiciatis dolorum vel sit. Modi dolores non sed est. Qui aliquam a voluptatem nostrum.', 1, 1, NULL, '2021-03-30 04:48:02', NULL, NULL),
(12, 'Vel maiores voluptatem accusantium vitae.', 'vel-maiores-voluptatem-accusantium-vitae', 'Sed dolor fugiat esse quaerat id deserunt. Quasi fugit sunt praesentium. Nesciunt qui facilis repellendus ex id autem vero. Recusandae fugit quae ut natus ut.', 1, 2, NULL, '2021-03-24 16:05:01', NULL, NULL),
(13, 'Doloremque occaecati ut qui odit.', 'doloremque-occaecati-ut-qui-odit', 'Hic nisi accusamus voluptatem architecto tempora voluptatibus repudiandae. Quis nulla beatae impedit dolores. Omnis nihil facere repellat tempora inventore quasi.', 1, 1, NULL, '2021-03-27 21:21:03', NULL, NULL),
(14, 'Eum id molestias assumenda.', 'eum-id-molestias-assumenda', 'Voluptatem architecto non animi et. Dolorem id neque sit tenetur autem corrupti. Doloremque et itaque quis qui repudiandae ut aut quae. Ea ut voluptatibus voluptas dicta ipsum incidunt adipisci.', 0, 2, NULL, '2021-03-31 19:16:30', NULL, NULL),
(15, 'Sapiente consequuntur nostrum animi.', 'sapiente-consequuntur-nostrum-animi', 'Velit itaque delectus vero aut. Ab at quidem earum eius sed alias porro. Sint soluta sint reprehenderit dolor dolore tenetur quis numquam.', 0, 2, NULL, '2021-03-27 13:46:39', NULL, NULL),
(16, 'Voluptatem et soluta.', 'voluptatem-et-soluta', 'Facilis repellat deleniti impedit neque. Rerum odio quia autem aperiam. Totam dolorum iure ad ullam.', 1, 1, NULL, '2021-04-01 01:06:00', NULL, NULL),
(17, 'Eligendi aut dicta.', 'eligendi-aut-dicta', 'Ad consequatur qui maxime vel omnis ex. Voluptas aut aliquam tempora praesentium. Sapiente quasi et unde cupiditate deserunt ipsa dignissimos.', 1, 2, NULL, '2021-03-27 06:00:22', NULL, NULL),
(18, 'Ea dolore pariatur repellendus.', 'ea-dolore-pariatur-repellendus', 'Reprehenderit incidunt natus quia. Ea fugit odio illo voluptate deleniti id. Voluptatem ut ea assumenda.', 0, 2, NULL, '2021-04-01 13:02:22', NULL, NULL),
(19, 'Quo veritatis quisquam cum vel.', 'quo-veritatis-quisquam-cum-vel', 'Totam esse sequi et est sint maxime. Excepturi vitae et ex ab temporibus. Quia sint neque tempore id. Perferendis ut nesciunt tempore perferendis repellendus dolor quidem.', 1, 1, NULL, '2021-03-29 18:31:01', NULL, NULL),
(20, 'Ut ut ea aperiam.', 'ut-ut-ea-aperiam', 'Laudantium corrupti consequatur odit sit expedita dolores. Placeat tempora delectus modi accusamus maiores eos quis et. Quis ut asperiores molestiae ad.', 1, 2, NULL, '2021-03-26 11:16:38', NULL, NULL),
(21, 'Labore adipisci corrupti eaque quaerat.', 'labore-adipisci-corrupti-eaque-quaerat', 'Ducimus quis officia voluptas sit. Ut ipsum ut incidunt odio. Dignissimos qui et vel. Et cumque est odit quisquam.', 0, 2, NULL, '2021-03-31 16:58:17', NULL, NULL),
(22, 'Tempore tempore eius vero numquam.', 'tempore-tempore-eius-vero-numquam', 'Amet et explicabo nobis odio. Qui sed non cum amet. Mollitia quis rerum sunt hic qui.', 1, 2, NULL, '2021-03-31 00:44:05', NULL, NULL),
(23, 'Eum deleniti similique hic dolorem ipsum.', 'eum-deleniti-similique-hic-dolorem-ipsum', 'Quas sit vitae ab rerum. Quo dolor animi et sint sunt et maiores. Aut aut doloremque aut animi earum.', 1, 2, NULL, '2021-03-25 16:54:12', NULL, NULL),
(24, 'Ipsam veritatis sunt corporis dolor corporis.', 'ipsam-veritatis-sunt-corporis-dolor-corporis', 'Dignissimos doloremque occaecati qui omnis laborum. Rem rerum nam doloribus nostrum expedita. Mollitia velit qui consectetur et.', 1, 1, NULL, '2021-03-26 23:47:15', NULL, NULL),
(25, 'Quae eum quibusdam animi velit.', 'quae-eum-quibusdam-animi-velit', 'Aperiam totam eligendi aut itaque et. Ea molestiae sequi ut enim dolor. Porro et aut blanditiis dolorum veritatis.', 0, 1, NULL, '2021-03-26 14:50:42', NULL, NULL),
(26, 'Doloremque explicabo qui ex.', 'doloremque-explicabo-qui-ex', 'Molestiae eum et nostrum libero at ut consequatur inventore. Est ullam qui reiciendis. Id tempore enim enim omnis tempore rerum est. Qui est quod sed ut sint dicta quia.', 0, 2, NULL, '2021-03-31 19:23:18', NULL, NULL),
(27, 'Beatae vitae et quia rerum dolores.', 'beatae-vitae-et-quia-rerum-dolores', 'Qui minus quasi porro aut quia. Maiores exercitationem autem veniam adipisci modi velit. Culpa earum in sed recusandae.', 1, 2, NULL, '2021-04-02 04:43:14', NULL, NULL),
(28, 'Et debitis consequatur tempore.', 'et-debitis-consequatur-tempore', 'Quia temporibus magnam est laborum quae ipsa. Eligendi fugit nesciunt nisi alias harum optio. Tenetur repellendus animi veniam expedita magnam fuga.', 0, 2, NULL, '2021-03-27 16:02:19', NULL, NULL),
(29, 'Vel provident cumque incidunt.', 'vel-provident-cumque-incidunt', 'Ipsum et iure consectetur omnis sequi. Voluptatem eos perspiciatis rerum voluptas quia distinctio id. Magni aut eius dolorum tempora.', 0, 2, NULL, '2021-03-29 11:19:24', NULL, NULL),
(30, 'Magni veniam sunt quo.', 'magni-veniam-sunt-quo', 'Est animi dolorem dolor. Fugiat voluptatem et sapiente id expedita id qui voluptates. Nisi consequuntur et nesciunt enim.', 0, 1, NULL, '2021-03-26 12:43:22', NULL, NULL),
(31, 'Corrupti enim quod qui.', 'corrupti-enim-quod-qui', 'Laboriosam dolore molestias eius omnis. Voluptas asperiores sit reiciendis eaque et et. Nulla vel quod laborum nam quia libero eos.', 0, 2, NULL, '2021-03-26 21:10:03', NULL, NULL),
(32, 'Velit quam ratione et nihil.', 'velit-quam-ratione-et-nihil', 'Odit delectus ut consequatur ut ea ratione dolore et. Similique mollitia placeat debitis deserunt rerum. Repudiandae mollitia quia numquam eos et non. Ut rem dolorum ut non est minima.', 1, 2, NULL, '2021-03-26 01:42:35', NULL, NULL),
(33, 'Est quia excepturi impedit.', 'est-quia-excepturi-impedit', 'In et id delectus est. Ea laborum cupiditate et sit laboriosam et.', 0, 2, NULL, '2021-03-26 05:11:39', NULL, NULL),
(34, 'Molestias id similique numquam repudiandae qui.', 'molestias-id-similique-numquam-repudiandae-qui', 'Dicta sed asperiores recusandae eligendi pariatur. Sequi iste dolor qui aut. Expedita nemo eos est vel soluta ut doloremque.', 0, 2, NULL, '2021-03-25 19:40:40', NULL, NULL),
(35, 'Est praesentium nulla corrupti.', 'est-praesentium-nulla-corrupti', 'Laboriosam magnam laboriosam velit omnis inventore. Qui laborum expedita unde sequi laboriosam laudantium ullam.', 0, 2, NULL, '2021-03-28 03:43:42', NULL, NULL),
(36, 'Qui ex nisi reprehenderit voluptatem.', 'qui-ex-nisi-reprehenderit-voluptatem', 'Accusamus aspernatur voluptatum assumenda omnis commodi laborum culpa. Numquam rerum fugiat accusantium vero est praesentium aliquam officiis. Dolores et eligendi ut dolores modi.', 1, 1, NULL, '2021-03-30 06:03:27', NULL, NULL),
(37, 'Suscipit expedita omnis.', 'suscipit-expedita-omnis', 'Maiores quod sint commodi. Id velit perspiciatis cumque cum tempore perferendis fugiat illo. Itaque quia nulla saepe facere magnam. Eum est ad dolores.', 1, 2, NULL, '2021-04-01 08:01:41', NULL, NULL),
(38, 'Corporis tempora saepe et est.', 'corporis-tempora-saepe-et-est', 'Ut occaecati dolor quam vel et mollitia. Provident quis tempora exercitationem ullam voluptate est ut. Qui doloribus provident sapiente soluta eos eum voluptas.', 0, 1, NULL, '2021-03-28 19:07:18', NULL, NULL),
(39, 'Repellat quia eveniet dolorem maiores dicta.', 'repellat-quia-eveniet-dolorem-maiores-dicta', 'Et esse sunt id numquam provident quia eaque. Accusamus omnis qui corporis. Facere omnis molestias mollitia fugit. Id omnis qui perferendis quis ut voluptas ea. Dolores odit voluptatem ipsa amet placeat quae facere.', 1, 2, NULL, '2021-03-28 03:01:58', NULL, NULL),
(40, 'Consequatur cum ut.', 'consequatur-cum-ut', 'Nihil sint dolorum aperiam omnis. Maiores sit voluptas eligendi commodi exercitationem veritatis ut. Eligendi quibusdam ipsam et reprehenderit.', 1, 2, NULL, '2021-03-24 01:41:26', NULL, NULL),
(41, 'Fuga voluptates rerum aut modi.', 'fuga-voluptates-rerum-aut-modi', 'Rem omnis sint natus ullam dolores odio saepe. Molestias beatae aut earum voluptas. Impedit est distinctio laboriosam voluptas. Voluptatem minima molestiae ad quod et maiores.', 0, 2, NULL, '2021-03-26 13:46:47', NULL, NULL),
(42, 'Eos vel doloremque.', 'eos-vel-doloremque', 'Molestiae ipsum quas doloremque iusto. Voluptas quia ullam consectetur occaecati. Beatae enim eveniet magnam voluptatem sint sit necessitatibus. Exercitationem modi explicabo perferendis autem.', 0, 2, NULL, '2021-03-27 08:25:53', NULL, NULL),
(43, 'Voluptatem corporis recusandae.', 'voluptatem-corporis-recusandae', 'Quis beatae tempore error nihil. Ut sint sunt et sunt aspernatur inventore magnam. Iure sit officiis nam vero. Voluptatem et doloremque et totam.', 1, 1, NULL, '2021-03-30 04:54:42', NULL, NULL),
(44, 'Totam dolor voluptas assumenda modi velit.', 'totam-dolor-voluptas-assumenda-modi-velit', 'Voluptas non assumenda excepturi voluptates. Nihil voluptates delectus debitis et.', 1, 2, NULL, '2021-03-31 19:18:22', NULL, NULL),
(45, 'Modi expedita eos.', 'modi-expedita-eos', 'Ad molestiae tempore voluptates doloremque magni illum. Doloremque sit saepe ex et nemo. Omnis in et sint nemo neque. Numquam ullam vel reprehenderit quis modi dolore qui rerum. Unde aspernatur non et et accusamus aut iusto.', 1, 1, NULL, '2021-03-25 23:03:41', NULL, NULL),
(46, 'Maxime ducimus dolorem placeat.', 'maxime-ducimus-dolorem-placeat', 'Corporis ipsam voluptate dicta et mollitia. Dicta consequatur fuga id est tenetur. Dolores nihil repudiandae reiciendis maiores consequatur voluptatem.', 0, 1, NULL, '2021-03-29 16:16:45', NULL, NULL),
(47, 'Aspernatur vel atque totam aut.', 'aspernatur-vel-atque-totam-aut', 'Aliquam odio nesciunt culpa dolor. Tempore laudantium amet fugiat molestiae suscipit maiores.', 0, 1, NULL, '2021-03-26 23:46:30', NULL, NULL),
(48, 'Repellat accusantium harum velit voluptates.', 'repellat-accusantium-harum-velit-voluptates', 'Odit aut rerum aspernatur ut aut. Quae libero quia aspernatur sit ut minus voluptas et. Quisquam omnis autem voluptatem sequi labore iusto. Aliquam facere velit eius ut ratione.', 1, 1, NULL, '2021-03-31 11:48:44', NULL, NULL),
(49, 'Deserunt praesentium est consequatur vero.', 'deserunt-praesentium-est-consequatur-vero', 'Accusantium modi et porro id quas commodi cupiditate dolore. Accusamus blanditiis iure rem impedit inventore. Temporibus iure dolores praesentium necessitatibus. Dolores amet et consequatur.', 1, 1, NULL, '2021-03-27 15:30:15', NULL, NULL),
(50, 'Sunt sint quod ipsum neque.', 'sunt-sint-quod-ipsum-neque', 'Soluta cum officiis dolor ab error. Unde ratione odio voluptas placeat modi. Dolor debitis beatae cupiditate illum nostrum.', 0, 1, NULL, '2021-03-31 01:57:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nisi maiores tempora beatae non autem harum quia.', 'Quod inventore aut asperiores iure quos voluptatem laboriosam. Aut quia dicta vel aut eum doloribus. Quia exercitationem odio inventore culpa. Incidunt tempora molestias dolorum ipsa esse alias.', 1, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(2, 'Maxime odit laboriosam fuga eum eum quia expedita et.', 'Cumque nostrum sit voluptatibus. Minima voluptas quae laudantium sint. Nesciunt quasi incidunt qui. Molestiae aut et recusandae et error.', 0, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(3, 'Reprehenderit esse qui incidunt nobis.', 'Voluptatum eaque error dolor asperiores pariatur sequi. Dolorem recusandae omnis quia molestias esse. Dicta atque molestiae dignissimos. Provident magni eius a.', 0, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(4, 'Perspiciatis vel et omnis qui illo nihil.', 'Maiores rem debitis praesentium sit accusantium. Cumque consequatur id in accusamus aut. Qui velit dolorem soluta repellat cum. Omnis velit culpa reprehenderit recusandae corrupti fugiat.', 0, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(5, 'Et quo omnis enim vel id explicabo enim.', 'Iusto et saepe ut a corporis. Iste facilis facilis officia omnis quibusdam quo. Id tenetur est quidem fugit nesciunt.', 0, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(6, 'Aut id soluta dolor non illo cupiditate.', 'Sequi et et sit magni. Ad iusto et laudantium maxime et vel. Earum velit impedit est dolorem omnis nihil occaecati. Impedit maxime voluptatem non laudantium nisi.', 1, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(7, 'Doloribus rem beatae qui pariatur dolore id corrupti.', 'Quod fugit et ut cum nihil. Sed fuga est tempore aliquid. Ut laudantium et quam est eum voluptatum quam. Sint ullam porro repudiandae ut. Non voluptas veritatis quidem a.', 1, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(8, 'Maxime ut vero officia voluptate.', 'Quo iusto et qui tenetur. Et quia praesentium voluptatibus molestiae. Inventore et qui perspiciatis atque quas. Illum voluptas qui nobis dolorem.', 1, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(9, 'Aliquam recusandae iusto expedita.', 'Adipisci quia tempora id minus qui ut fugit. Et perspiciatis aut cupiditate mollitia omnis impedit. Corrupti aut quaerat aut vero est illum.', 1, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(10, 'Iusto nam voluptatem atque maiores.', 'Sed sed maiores et nam delectus soluta sunt. In nisi vitae voluptates id architecto ut laboriosam. Sunt ut corrupti id natus quas.', 1, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'dsfsd', '2021-04-16 04:28:34', '2021-04-15 20:52:40', '2021-04-16 04:28:34'),
(2, 'Test 1', NULL, '2021-04-16 04:28:51', '2021-04-16 04:28:51'),
(3, 'Test 2', NULL, '2021-04-16 04:29:09', '2021-04-16 04:29:09'),
(4, 'Test 3', NULL, '2021-04-16 04:29:25', '2021-04-16 04:29:25'),
(5, 'Test 4', NULL, '2021-04-16 04:29:34', '2021-04-16 04:29:34'),
(6, 'Test 5', NULL, '2021-04-16 04:29:44', '2021-04-16 04:29:44'),
(7, 'Test 6', NULL, '2021-04-16 04:33:44', '2021-04-16 04:33:44'),
(8, 'Test 7', NULL, '2021-04-16 04:33:56', '2021-04-16 04:33:56'),
(9, 'Test 8', NULL, '2021-04-16 04:34:03', '2021-04-16 04:34:03'),
(10, 'Test 9', NULL, '2021-04-16 04:34:18', '2021-04-16 04:34:18'),
(11, 'Test 101', NULL, '2021-04-16 04:34:50', '2021-04-16 04:40:24'),
(12, 'Test 11', NULL, '2021-04-16 04:35:14', '2021-04-16 04:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ledgers`
--

CREATE TABLE `ledgers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `recordable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recordable_id` bigint(20) UNSIGNED NOT NULL,
  `context` tinyint(3) UNSIGNED NOT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pivot` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ledgers`
--

INSERT INTO `ledgers` (`id`, `user_type`, `user_id`, `recordable_type`, `recordable_id`, `context`, `event`, `properties`, `modified`, `pivot`, `extra`, `url`, `ip_address`, `user_agent`, `signature`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"9b087533-5368-4536-a1fc-6170d84d4c85\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$ZBbWPajQfKuIaRRsocEhYekJFzU0f1lexCe8Vfsom.nj5DOaa9cQq\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"624e307ff5006894e3454e4c9a37ce61\",\"confirmed\":1,\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null,\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"kVspTAAOOteMyLNikvcdZlFi87NXM0KkYnBU5hbLejeBbwkmJA467fEWTDHz\",\"created_at\":\"2021-04-02 14:52:32\",\"updated_at\":\"2021-04-02 14:52:32\",\"deleted_at\":null}', '[\"remember_token\"]', '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'ee61577b074f95a7601fc765572b5d5919269eb616ff7d32afcffcdaed648eee4b89d4a4a49522c97601cf24e289283cce021061f2a420d7e03adeb2c347b165', '2021-04-03 05:13:08', '2021-04-03 05:13:08'),
(2, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"9b087533-5368-4536-a1fc-6170d84d4c85\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$ZBbWPajQfKuIaRRsocEhYekJFzU0f1lexCe8Vfsom.nj5DOaa9cQq\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"624e307ff5006894e3454e4c9a37ce61\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-04-03 10:43:08\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"kVspTAAOOteMyLNikvcdZlFi87NXM0KkYnBU5hbLejeBbwkmJA467fEWTDHz\",\"created_at\":\"2021-04-02 14:52:32\",\"updated_at\":\"2021-04-03 10:43:09\",\"deleted_at\":null}', '[\"timezone\",\"last_login_at\",\"last_login_ip\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'e8166af8430d09ef1f2890a5f15933c075c2d3b5c77c3393500460823446ce7d25698f4b475671ce773d136bea8836f715adadb84e0c63b62692dcfea27f217d', '2021-04-03 05:13:09', '2021-04-03 05:13:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(27, '2014_10_12_000000_create_users_table', 1),
(28, '2014_10_12_100000_create_password_resets_table', 1),
(29, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(30, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(31, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(32, '2016_06_01_000004_create_oauth_clients_table', 1),
(33, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(34, '2017_09_03_144628_create_permission_tables', 1),
(35, '2017_09_11_174816_create_social_accounts_table', 1),
(36, '2017_09_26_140332_create_cache_table', 1),
(37, '2017_09_26_140528_create_sessions_table', 1),
(38, '2017_09_26_140609_create_jobs_table', 1),
(39, '2017_11_02_060149_create_blog_categories_table', 1),
(40, '2017_11_02_060149_create_blog_map_categories_table', 1),
(41, '2017_11_02_060149_create_blog_map_tags_table', 1),
(42, '2017_11_02_060149_create_blog_tags_table', 1),
(43, '2017_11_02_060149_create_blogs_table', 1),
(44, '2017_11_02_060149_create_faqs_table', 1),
(45, '2017_11_02_060149_create_pages_table', 1),
(46, '2018_04_08_033256_create_password_histories_table', 1),
(47, '2018_11_21_000001_create_ledgers_table', 1),
(48, '2019_08_19_000000_create_failed_jobs_table', 1),
(49, '2020_06_11_080530_create_email_templates_table', 1),
(50, '2020_06_18_060624_add_foreign_key_constraints_to_acl_tables', 1),
(71, '2021_04_02_143732_create_students_table', 2),
(72, '2021_04_02_151700_create_tutors_table', 2),
(73, '2021_04_02_155446_create_bank_details_table', 2),
(74, '2021_04_16_004033_add_student_id_and_tutor_id_to_users_table', 2),
(75, '2021_04_16_012320_create_grades_table', 2),
(76, '2021_04_16_103036_create_subject_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Starter Personal Access Client', 'yOFovVqRORMfA84o7X2xMep04ltRZFT7CchNHFxP', NULL, 'http://localhost', 1, 0, 0, '2021-04-02 09:21:56', '2021-04-02 09:21:56'),
(2, NULL, 'Laravel Starter Password Grant Client', 'LYfkYJEoRjHiW1ETQ5tR7usu4gsUA17E3IEtsLyg', 'users', 'http://localhost', 0, 1, 0, '2021-04-02 09:21:56', '2021-04-02 09:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-04-02 09:21:56', '2021-04-02 09:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cannonical_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `page_slug`, `description`, `cannonical_link`, `seo_title`, `seo_keyword`, `seo_description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'odio sed expedita cupiditate', 'sapiente-consectetur-autem-fuga-voluptatibus', 'Et dolor inventore sed velit eos. Cupiditate eaque qui nostrum sit officiis voluptatum non a. Modi totam consequuntur dolorum enim. Magni atque ut iure nobis sapiente provident nesciunt. Mollitia incidunt aut placeat.', 'https://www.koepp.com/quae-illo-aspernatur-similique-qui-animi-autem-libero', 'accusantium', 'quo', 'Possimus odio magni corporis exercitationem ut. Cupiditate dolorem quis sequi optio beatae ipsam. Dolorum nobis rerum ipsam nihil autem ea. Qui soluta nesciunt inventore qui.', 0, 4, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(2, 'est quasi et maiores', 'aut-mollitia-voluptatem-commodi-qui-omnis-eaque-tempore', 'Molestiae sequi cupiditate optio reprehenderit eaque occaecati vel. Corrupti sunt ducimus earum optio iste quam. Et quisquam ab voluptate ducimus sint. Repudiandae veniam illo porro eaque.', 'http://nicolas.com/eos-consequuntur-provident-nihil-occaecati-atque-cum-quibusdam.html', 'maiores', 'exercitationem', 'Ex veritatis debitis adipisci placeat fugiat et. Veritatis quo laudantium quod maxime sit rerum tempore commodi. Debitis amet aut voluptas eveniet error. Temporibus at placeat ex voluptas quis id ab in. Unde laboriosam sunt veritatis accusantium et asperiores.', 1, 4, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(3, 'inventore fugit et cupiditate', 'a-ut-iste-expedita', 'Ullam dolor in nemo sed. Debitis perferendis et nesciunt. Tenetur labore nisi incidunt mollitia. Vero delectus ad error nemo.', 'http://www.zieme.info/dolores-at-cupiditate-a-non-qui-asperiores-sunt-labore', 'pariatur', 'excepturi', 'Aperiam deserunt dolorum sunt est dolorum rerum aliquid. Repellat nam officia neque sint accusantium est sint quia. Doloribus deserunt dolores quia. Aut et aut et quibusdam et commodi.', 1, 4, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(4, 'soluta nisi ut culpa', 'ducimus-tempora-quibusdam-et-est', 'Ipsa nulla est repellat dignissimos quidem laboriosam quam. Repudiandae vel enim reprehenderit rerum asperiores. Autem nam qui eveniet commodi ratione cupiditate magnam. Qui minima adipisci autem adipisci natus consequuntur occaecati.', 'http://turcotte.com/', 'doloremque', 'accusantium', 'Tenetur sequi et molestiae distinctio non. Soluta facilis expedita et nulla maiores voluptas beatae. Sapiente eos labore et non.', 1, 4, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(5, 'rerum beatae sit occaecati', 'facere-aliquam-tenetur-at-repellat-omnis-inventore-libero', 'Quibusdam ipsam quia saepe aliquid reiciendis fugit. Cupiditate vel deleniti doloribus nobis enim id assumenda quo. Voluptatum fuga aut eaque tempore.', 'http://www.heidenreich.com/repellat-similique-saepe-laboriosam-aut-est-quia-id-at.html', 'voluptatem', 'alias', 'Occaecati tenetur voluptatem nobis culpa fugiat nam minus ut. Nihil et natus ut similique quo. Modi velit quisquam nihil aut soluta.', 0, 4, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(6, 'molestiae ipsum sed deleniti', 'a-aut-laboriosam-provident-neque-cum-sit', 'Necessitatibus doloribus eos cumque reiciendis facilis. Voluptatem eligendi aspernatur voluptas quia rem cupiditate ipsam velit. Aut porro tempore eaque sed.', 'https://www.parisian.info/rerum-unde-dicta-est-reprehenderit-delectus-corrupti-rerum', 'dolor', 'vel', 'Molestiae autem perferendis ad voluptas numquam id. Minus in est sapiente aperiam. Deleniti distinctio est corporis repudiandae.', 0, 4, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(7, 'ut harum repudiandae cum', 'porro-aut-distinctio-omnis-quibusdam-dolorum-ratione', 'Iusto id eius nihil et rerum quisquam excepturi. Debitis ut officiis ut dolores autem quia.', 'http://www.hand.biz/impedit-at-ducimus-amet-ipsa', 'id', 'saepe', 'Nulla impedit odit optio ut aut. Et quia iure sunt reiciendis.', 0, 4, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(8, 'reprehenderit quasi et sed', 'repudiandae-qui-quia-sint-vitae-ex-et-quia-neque', 'Expedita cum ut totam autem consequatur. Natus et atque in. Animi voluptas aut eos error rerum libero ut excepturi.', 'http://grimes.com/quisquam-laudantium-quis-quia-quibusdam-cum-praesentium-ratione.html', 'atque', 'sequi', 'Suscipit vero vitae soluta hic iste. Qui corporis non recusandae et.', 1, 4, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL),
(9, 'aliquid voluptatum odio vel', 'aliquid-voluptatum-odio-vel', '<p>Praesentium perferendis delectus dolorem nisi. Dignissimos voluptatibus aut quos. Eius quae enim exercitationem explicabo ea.</p>', 'http://www.armstrong.com/et-nam-rerum-nesciunt', 'eligendi', 'omnis', '<p>Qui consequatur quae voluptate nobis excepturi voluptatem quisquam voluptatem. Voluptas necessitatibus minus autem inventore nemo nesciunt. Praesentium molestiae laboriosam sed rerum mollitia. Eligendi nihil ea eos nesciunt ea.</p>', 0, 4, 1, '2021-04-02 09:22:15', '2021-04-16 04:31:59', '2021-04-16 04:31:59'),
(10, 'qui nam veritatis aperiam', 'voluptates-sunt-iure-praesentium-cupiditate-minus-autem', 'Non rerum qui laboriosam alias. Et velit sit rerum provident. Exercitationem unde sed autem ut odit. Dolorem nulla occaecati qui enim libero voluptas.', 'http://stoltenberg.com/illo-blanditiis-quidem-fuga-sunt-ad-facere', 'ratione', 'ut', 'Quasi dolore voluptatibus sit laudantium explicabo quos. Accusamus sed delectus voluptatem reprehenderit ut. Quam esse ad provident aperiam sunt reprehenderit.', 1, 4, NULL, '2021-04-02 09:22:15', '2021-04-02 09:22:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_histories`
--

CREATE TABLE `password_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_histories`
--

INSERT INTO `password_histories` (`id`, `user_id`, `password`, `created_at`, `updated_at`) VALUES
(1, 4, '$2y$10$0p2CodVuRilMYLcQDRRCgeEaUCcuaBQ7kfvjmgV1/e0STJ9LXNNZ6', '2021-04-02 09:22:15', '2021-04-02 09:22:15'),
(2, 5, '$2y$10$G7nVDykxRbi.Fzgj6nFBJeHuM4UMP3th124nZZhllx7kIlosT4VKu', '2021-04-02 09:22:15', '2021-04-02 09:22:15');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'view-backend', 'View Backend', 1, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(2, 'view-frontend', 'View Frontend', 2, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(3, 'view-access-management', 'View Access Management', 3, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(4, 'view-user-management', 'View User Management', 4, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(5, 'view-active-user', 'View Active User', 5, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(6, 'view-deactive-user', 'View Deactive User', 6, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(7, 'view-deleted-user', 'View Deleted User', 7, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(8, 'show-user', 'Show User Details', 8, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(9, 'create-user', 'Create User', 9, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(10, 'edit-user', 'Edit User', 9, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(11, 'delete-user', 'Delete User', 10, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(12, 'activate-user', 'Activate User', 11, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(13, 'deactivate-user', 'Deactivate User', 12, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(14, 'login-as-user', 'Login As User', 13, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(15, 'clear-user-session', 'Clear User Session', 14, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(16, 'view-role-management', 'View Role Management', 15, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(17, 'create-role', 'Create Role', 16, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(18, 'edit-role', 'Edit Role', 17, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(19, 'delete-role', 'Delete Role', 18, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(20, 'view-permission-management', 'View Permission Management', 19, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(21, 'create-permission', 'Create Permission', 20, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(22, 'edit-permission', 'Edit Permission', 21, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(23, 'delete-permission', 'Delete Permission', 22, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(24, 'view-page', 'View Page', 23, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(25, 'create-page', 'Create Page', 24, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(26, 'edit-page', 'Edit Page', 25, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(27, 'delete-page', 'Delete Page', 26, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(28, 'view-email-template', 'View Email Templates', 27, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(29, 'create-email-template', 'Create Email Templates', 28, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(30, 'edit-email-template', 'Edit Email Templates', 29, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(31, 'delete-email-template', 'Delete Email Templates', 30, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(32, 'edit-settings', 'Edit Settings', 31, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(33, 'view-blog-category', 'View Blog Categories Management', 32, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(34, 'create-blog-category', 'Create Blog Category', 33, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(35, 'edit-blog-category', 'Edit Blog Category', 34, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(36, 'delete-blog-category', 'Delete Blog Category', 35, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(37, 'view-blog-tag', 'View Blog Tags Management', 36, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(38, 'create-blog-tag', 'Create Blog Tag', 37, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(39, 'edit-blog-tag', 'Edit Blog Tag', 38, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(40, 'delete-blog-tag', 'Delete Blog Tag', 39, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(41, 'view-blog', 'View Blogs Management', 40, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(42, 'create-blog', 'Create Blog', 41, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(43, 'edit-blog', 'Edit Blog', 42, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(44, 'delete-blog', 'Delete Blog', 43, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(45, 'view-faq', 'View FAQ Management', 44, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(46, 'create-faq', 'Create FAQ', 45, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(47, 'edit-faq', 'Edit FAQ', 46, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(48, 'delete-faq', 'Delete FAQ', 47, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 2),
(2, 3, 2),
(3, 4, 2),
(4, 5, 2),
(5, 6, 2),
(6, 7, 2),
(7, 8, 2),
(8, 16, 2),
(9, 20, 2),
(10, 24, 2),
(11, 25, 2),
(12, 26, 2),
(13, 27, 2),
(14, 28, 2),
(15, 29, 2),
(16, 30, 2),
(17, 31, 2),
(18, 33, 2),
(19, 34, 2),
(20, 35, 2),
(21, 36, 2),
(22, 37, 2),
(23, 38, 2),
(24, 39, 2),
(25, 40, 2),
(26, 41, 2),
(27, 42, 2),
(28, 43, 2),
(29, 44, 2),
(30, 45, 2),
(31, 46, 2),
(32, 47, 2),
(33, 48, 2),
(34, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`id`, `permission_id`, `user_id`) VALUES
(1, 42, 2),
(2, 34, 2),
(3, 38, 2),
(4, 29, 2),
(5, 46, 2),
(6, 25, 2),
(7, 44, 2),
(8, 36, 2),
(9, 40, 2),
(10, 31, 2),
(11, 48, 2),
(12, 27, 2),
(13, 43, 2),
(14, 35, 2),
(15, 39, 2),
(16, 30, 2),
(17, 47, 2),
(18, 26, 2),
(19, 8, 2),
(20, 3, 2),
(21, 5, 2),
(22, 1, 2),
(23, 33, 2),
(24, 37, 2),
(25, 41, 2),
(26, 6, 2),
(27, 7, 2),
(28, 28, 2),
(29, 45, 2),
(30, 24, 2),
(31, 20, 2),
(32, 16, 2),
(33, 4, 2),
(34, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `all` tinyint(1) NOT NULL DEFAULT 0,
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `all`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Administrator', 1, 1, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(2, 'Executive', 0, 2, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL),
(3, 'User', 0, 3, 1, 1, NULL, '2021-04-02 09:22:14', '2021-04-02 09:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade_id` int(10) UNSIGNED DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SubJect 2', '2021-04-16 06:05:04', '2021-04-16 06:03:02', '2021-04-16 06:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fees` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'gravatar',
  `avatar_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_changed_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `confirmation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_be_logged_out` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `is_term_accept` tinyint(1) NOT NULL DEFAULT 0 COMMENT ' 0 = not accepted,1 = accepted',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `tutor_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `first_name`, `last_name`, `email`, `avatar_type`, `avatar_location`, `password`, `password_changed_at`, `active`, `confirmation_code`, `confirmed`, `timezone`, `last_login_at`, `last_login_ip`, `to_be_logged_out`, `status`, `created_by`, `updated_by`, `is_term_accept`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `student_id`, `tutor_id`) VALUES
(1, '9b087533-5368-4536-a1fc-6170d84d4c85', 'Alan', 'Whitmore', 'admin@admin.com', 'gravatar', NULL, '$2y$10$ZBbWPajQfKuIaRRsocEhYekJFzU0f1lexCe8Vfsom.nj5DOaa9cQq', NULL, 1, '624e307ff5006894e3454e4c9a37ce61', 1, 'America/New_York', '2021-04-03 05:13:08', '127.0.0.1', 0, 1, 1, NULL, 0, 'kVspTAAOOteMyLNikvcdZlFi87NXM0KkYnBU5hbLejeBbwkmJA467fEWTDHz', '2021-04-02 09:22:32', '2021-04-03 05:13:09', NULL, NULL, NULL),
(2, '79717b7d-5187-4e12-9754-8a863b09bb47', 'Justin', 'Bevan', 'executive@executive.com', 'gravatar', NULL, '$2y$10$LXYCIzom0yA6XxiZpTRwROLjeG9hXjRjMG2KSdtZsFA2f1Ik2ri/W', NULL, 1, '3981af934af9df59402ebcb95b96683d', 1, NULL, NULL, NULL, 0, 1, 1, NULL, 0, NULL, '2021-04-02 09:22:32', '2021-04-02 09:22:32', NULL, NULL, NULL),
(3, 'a2b1a9aa-6fdd-4baf-82b6-11dd96e5f2fc', 'User', 'Test', 'user@user.com', 'gravatar', NULL, '$2y$10$7niBAz9a/KDKhfbYMPnfj.vz6LpBAmQSYamcceNuQVVueLbj4/t/G', NULL, 1, '7918e463720b771c3ccf66b63b7e7007', 1, NULL, NULL, NULL, 0, 1, 1, NULL, 0, NULL, '2021-04-02 09:22:32', '2021-04-02 09:22:32', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_map_categories`
--
ALTER TABLE `blog_map_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_map_categories_blog_id_index` (`blog_id`),
  ADD KEY `blog_map_categories_category_id_index` (`category_id`);

--
-- Indexes for table `blog_map_tags`
--
ALTER TABLE `blog_map_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_map_tags_blog_id_index` (`blog_id`),
  ADD KEY `blog_map_tags_tag_id_index` (`tag_id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `ledgers`
--
ALTER TABLE `ledgers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ledgers_recordable_type_recordable_id_index` (`recordable_type`,`recordable_id`),
  ADD KEY `ledgers_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_page_slug_unique` (`page_slug`);

--
-- Indexes for table `password_histories`
--
ALTER TABLE `password_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_mobile_no_unique` (`mobile_no`),
  ADD UNIQUE KEY `students_email_id_unique` (`email_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tutors_mobile_no_unique` (`mobile_no`),
  ADD UNIQUE KEY `tutors_email_id_unique` (`email_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blog_map_categories`
--
ALTER TABLE `blog_map_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blog_map_tags`
--
ALTER TABLE `blog_map_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ledgers`
--
ALTER TABLE `ledgers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `password_histories`
--
ALTER TABLE `password_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tutors`
--
ALTER TABLE `tutors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `password_histories`
--
ALTER TABLE `password_histories`
  ADD CONSTRAINT `password_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
