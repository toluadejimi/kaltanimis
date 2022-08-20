-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 21, 2022 at 01:13 AM
-- Server version: 10.5.16-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kaltanii_mis`
--

-- --------------------------------------------------------

--
-- Table structure for table `bailed_details`
--

CREATE TABLE `bailed_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Caps` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `Others` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `Trash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `Green_Colour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `Clean_Clear` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `location_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bailed_details`
--

INSERT INTO `bailed_details` (`id`, `Caps`, `Others`, `Trash`, `Green_Colour`, `Clean_Clear`, `location_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, '0', '0', '0', '0', '0', '2', '4', '2022-08-20 06:30:01', '2022-08-20 19:12:00'),
(3, '0', '0', '0', '3500', '8998', '22', '4', '2022-08-20 06:53:56', '2022-08-20 11:10:30'),
(4, '0', '0', '0', '0', '1000', '24', '4', '2022-08-20 09:06:12', '2022-08-20 11:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `bailed_totals`
--

CREATE TABLE `bailed_totals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bailings`
--

CREATE TABLE `bailings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Clean_Clear` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `Green_Colour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `Others` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `Trash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `location_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bailings`
--

INSERT INTO `bailings` (`id`, `item_id`, `Clean_Clear`, `Green_Colour`, `Others`, `Trash`, `location_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, '1', '9000', '5000', '0', '0', '2', '4', '2022-08-20 07:43:02', '2022-08-20 07:43:02'),
(4, '1', '1000', '0', '0', '0', '2', '4', '2022-08-20 09:05:38', '2022-08-20 09:05:38'),
(5, '1', '0', '1000', '0', '0', '2', '4', '2022-08-20 09:08:12', '2022-08-20 09:08:12'),
(6, '1', '0', '1000', '0', '0', '2', '18', '2022-08-20 11:10:13', '2022-08-20 11:10:13');

-- --------------------------------------------------------

--
-- Table structure for table `bailing_items`
--

CREATE TABLE `bailing_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bailing_items`
--

INSERT INTO `bailing_items` (`id`, `item`, `items_id`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 'Clean Clear', '1', '4', '2022-07-21 09:49:41', '2022-07-21 09:49:41'),
(11, 'Green Colour', '1', '4', '2022-07-21 09:52:45', '2022-07-21 09:52:45'),
(16, 'Trash', '1', '4', '2022-08-05 07:50:43', '2022-08-05 07:50:43'),
(17, 'Others', '1', '4', '2022-08-05 08:12:30', '2022-08-05 08:12:30'),
(18, 'Caps', '1', '4', '2022-08-11 12:21:37', '2022-08-11 12:21:37');

-- --------------------------------------------------------

--
-- Table structure for table `collected_details`
--

CREATE TABLE `collected_details` (
  `id` int(20) NOT NULL,
  `collected` varchar(255) DEFAULT '0',
  `location_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collected_details`
--

INSERT INTO `collected_details` (`id`, `collected`, `location_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '20000', '2', '4', '2022-08-20 06:12:28', '2022-08-20 19:04:56');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_per_kg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `transport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `loader` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `others` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `item_weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `item_id`, `price_per_kg`, `transport`, `loader`, `others`, `item_weight`, `location_id`, `amount`, `user_id`, `created_at`, `updated_at`) VALUES
(4, '1', '100', '100', '100', '100', '5000', '2', '500300', '4', '2022-08-20 07:24:28', '2022-08-20 07:24:28'),
(5, '1', '100', '100', '100', '100', '5000', '2', '500300', '4', '2022-08-20 07:35:04', '2022-08-20 07:35:04'),
(6, '1', '100', '100', '100', '100', '5000', '2', '500300', '4', '2022-08-20 07:38:14', '2022-08-20 07:38:14'),
(7, '1', '100', '200', '200', '500', '1000', '2', '100900', '4', '2022-08-20 09:05:10', '2022-08-20 09:05:10'),
(8, '1', '10', '100', '100', '100', '1000', '2', '10300', '18', '2022-08-20 11:09:30', '2022-08-20 11:09:30'),
(11, '1', '280', '249', '741', '110', '40000', '2', '5000', '4', '2022-08-20 18:33:18', '2022-08-20 18:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `factories`
--

CREATE TABLE `factories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `factories`
--

INSERT INTO `factories` (`id`, `name`, `address`, `city`, `state`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'ikeja', 'ikeja', 'lagos', 'lagos', '4', '2022-07-21 16:53:40', '2022-07-21 16:53:40'),
(2, 'Lekki factory', 'lekki', 'lagos', 'lagos', '4', '2022-07-23 20:50:26', '2022-07-23 20:50:26');

-- --------------------------------------------------------

--
-- Table structure for table `factory_totals`
--

CREATE TABLE `factory_totals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recycled` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `sales` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `location_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `factory_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `factory_totals`
--

INSERT INTO `factory_totals` (`id`, `recycled`, `sales`, `location_id`, `factory_id`, `created_at`, `updated_at`) VALUES
(1, '0', '80484', '22', NULL, '2022-08-20 09:20:37', '2022-08-20 09:26:12'),
(2, '0', '5000', '24', NULL, '2022-08-20 11:01:57', '2022-08-20 11:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Plastic', '4', '2022-07-14 04:55:24', '2022-07-15 12:19:48');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `address`, `city`, `state`, `type`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'lekki collection center', 'no 5 lekki avenu', 'lekki', 'lagos', 'c', '4', '2022-07-06 22:52:45', '2022-07-06 22:52:45'),
(21, 'Ikotun Collection center', 'Ikotun', 'Ikotub', 'Lagos', 'c', '4', '2022-07-18 11:12:30', '2022-07-18 11:12:30'),
(22, 'Ikeja Factory', 'Ikeja', 'Lagos', 'Lagos', 'f', '4', '2022-08-08 03:17:33', '2022-08-08 03:17:33'),
(23, 'Ibadan Collection Center', 'Eleyele, Ibadan', 'Ibadan', 'Oyo', 'c', '4', '2022-08-08 09:48:27', '2022-08-08 09:48:27'),
(24, 'Ikotun Factory', 'ikotun', 'lagos', 'lagos', 'f', '4', '2022-08-15 04:55:51', '2022-08-15 04:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_30_165653_create_collections_table', 2),
(6, '2022_07_01_225231_create_locations_table', 3),
(7, '2016_06_01_000001_create_oauth_auth_codes_table', 4),
(8, '2016_06_01_000002_create_oauth_access_tokens_table', 4),
(9, '2016_06_01_000003_create_oauth_refresh_tokens_table', 4),
(10, '2016_06_01_000004_create_oauth_clients_table', 4),
(11, '2016_06_01_000005_create_oauth_personal_access_clients_table', 4),
(12, '2022_07_06_233057_create_sortings_table', 5),
(13, '2022_07_07_064906_create_bailings_table', 6),
(14, '2022_07_07_223856_create_factories_table', 7),
(15, '2022_07_07_224013_create_transfers_table', 7),
(16, '2022_07_07_224028_create_sales_table', 7),
(17, '2022_07_07_225959_create_recycles_table', 7),
(18, '2022_07_12_220322_create_totals_table', 8),
(19, '2022_07_12_233849_create_histories_table', 9),
(20, '2022_07_14_052514_create_items_table', 10),
(21, '2022_07_14_062954_create_bailing_items_table', 11),
(22, '2022_07_19_105446_create_sort_details_table', 12),
(23, '2022_07_20_110838_create_sort_details_histories_table', 13),
(24, '2022_07_20_192029_create_bailed_details_table', 14),
(25, '2022_07_20_192115_create_bailed_details_histories_table', 14),
(26, '2022_07_21_111319_create_bailed_totals_table', 15),
(27, '2022_07_21_111351_create_sorted_totals_table', 15),
(28, '2022_07_21_173618_create_transfer_details_histories_table', 15),
(29, '2022_07_21_173722_create_transfer_details_table', 15),
(30, '2022_07_22_162852_create_factory_totals_table', 16),
(31, '2022_07_24_235310_create_roles_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('01dd53f26088239a15c74c025bb325dbf7da8b1c24cdc5e10085798880090377518c7adf7f66c45b', 16, 1, 'API Token', '[]', 0, '2022-08-14 17:31:38', '2022-08-14 17:31:38', '2023-08-14 19:31:38'),
('036e376f5e360810bb0db37dcfc4ef0b94e4cd6075fb1f5541b8219945cae3735f6795790106ec7f', 4, 1, 'API Token', '[]', 0, '2022-07-18 12:38:46', '2022-07-18 12:38:46', '2023-07-18 13:38:46'),
('05ab7906aea28f46283117052b626d9e93a89e54e43aeeeea4f0317146f42f72a8164d1648b003b4', 16, 1, 'API Token', '[]', 0, '2022-08-15 08:07:14', '2022-08-15 08:07:14', '2023-08-15 10:07:14'),
('07e3e474c2fe8c34c163cff8798437a0bbe5a4ff7f3808ab8ca1f5dce5a969943d574f3d6ee9bb63', 4, 1, 'API Token', '[]', 0, '2022-08-19 07:18:16', '2022-08-19 07:18:16', '2023-08-19 09:18:16'),
('0d408531776a4755afccb3e9edfe9d4d07b0ded5c343c314e7a88553828135512842abcbc3b0d5ce', 15, 1, 'API Token', '[]', 0, '2022-08-15 07:46:01', '2022-08-15 07:46:01', '2023-08-15 09:46:01'),
('0e5712fd3b8cf3994045f8cc331aa13da07ec7cfa2c5825b9849bf683dcae893a9fed74fd5aa7280', 4, 1, 'API Token', '[]', 0, '2022-07-25 05:25:45', '2022-07-25 05:25:45', '2023-07-25 07:25:45'),
('18e2adf867fb6580c6bd264348dbd79f2bb1f38a54983cad3e397cc3b6cc1d369cf4ec9927cdd1a3', 4, 1, 'API Token', '[]', 0, '2022-07-25 07:55:24', '2022-07-25 07:55:24', '2023-07-25 09:55:24'),
('1a34dc29aa07453521583ea157412f16f5a2f426cc7aad1a7aee5ed911fb248f31b80ef3d0abd02a', 4, 1, 'API Token', '[]', 0, '2022-08-19 10:34:01', '2022-08-19 10:34:01', '2023-08-19 12:34:01'),
('1a61c2ce78111bdfa690ad845612e901b17b28818b13d32aed0884e19bda40b9c2ceebb62055adc0', 4, 1, 'API Token', '[]', 0, '2022-08-08 08:46:45', '2022-08-08 08:46:45', '2023-08-08 10:46:45'),
('1ace9e81b0bf2fcce22c1d4a7c779fcc8098d9b19372946733faa817191f61c6c42f327d1a409d5e', 4, 1, 'API Token', '[]', 0, '2022-07-25 09:20:19', '2022-07-25 09:20:19', '2023-07-25 11:20:19'),
('1b159f814dcccee5a316ce3d842582231199e0e8bc11de674804451db1b4bb13592afe7a0c123019', 4, 1, 'API Token', '[]', 0, '2022-07-25 05:43:46', '2022-07-25 05:43:46', '2023-07-25 07:43:46'),
('1bfb2380412dd11ee630984be9d390ed35be01742bc87d9a0c97e2cd03bdd5b92f2fd86d9c0f3d82', 14, 1, 'API Token', '[]', 0, '2022-08-08 08:38:04', '2022-08-08 08:38:04', '2023-08-08 10:38:04'),
('1c0513f9e100feebb43a1f2551d8db1b4130894b8d614f9d8ea1fbe515ac8ec5771a7a71bbda8428', 13, 1, 'API Token', '[]', 0, '2022-08-14 21:36:24', '2022-08-14 21:36:24', '2023-08-14 23:36:24'),
('1cece798d288c3ed5ace542a2836b1cc72d90534da7bb6284e6a8795beed5ceeaed483b82d31092f', 4, 1, 'API Token', '[]', 0, '2022-07-25 07:55:35', '2022-07-25 07:55:35', '2023-07-25 09:55:35'),
('1e943731786c32d8d02d06a924c168cb1be79a2dbe404f2ff84c9523fb0cfb40f514c45f77f28b8a', 14, 1, 'API Token', '[]', 0, '2022-08-16 15:03:53', '2022-08-16 15:03:53', '2023-08-16 17:03:53'),
('22f48d35a70e95e2e01cd7c71fff1946544f0f5be91cc8f0111e3ff49daf69f858f01bb867885be4', 4, 1, 'API Token', '[]', 0, '2022-08-14 13:37:57', '2022-08-14 13:37:57', '2023-08-14 15:37:57'),
('23e432b03b77fe11b46d43b47dcb684a2182dda7c47db251b90b71368889d747cff9368487a93352', 15, 1, 'API Token', '[]', 0, '2022-08-15 07:48:54', '2022-08-15 07:48:54', '2023-08-15 09:48:54'),
('23fb666393e757f95eea57c4663334eb258e3048ca13cd2bfbb824b74353bc997ca4623b80fb0d77', 4, 1, 'API Token', '[]', 0, '2022-07-17 22:42:59', '2022-07-17 22:42:59', '2023-07-17 23:42:59'),
('24444909ad4494fd632c181e045fb450a062e2eb25e6f0efeaf9cad923b3e780225ff43fc7e06850', 4, 1, 'API Token', '[]', 0, '2022-08-14 13:35:19', '2022-08-14 13:35:19', '2023-08-14 15:35:19'),
('2457ae55ce9c1c331067ffad09e15b086cc565fd66bc78d895de67e4262786b191d265abaf6b0d1d', 13, 1, 'API Token', '[]', 0, '2022-08-08 09:05:51', '2022-08-08 09:05:51', '2023-08-08 11:05:51'),
('25859ad7a98d57d45b5290a85d8ede1bad198d6615d9cd4a12fe37af7fdfdd8f1085dceb0c6a223e', 4, 1, 'API Token', '[]', 0, '2022-07-18 12:39:08', '2022-07-18 12:39:08', '2023-07-18 13:39:08'),
('26683012c5c66ef3570683c57dd243d07c69d1bac7e5c3a0530357481fd03f52de14672cd810d350', 4, 1, 'API Token', '[]', 0, '2022-07-25 08:59:00', '2022-07-25 08:59:00', '2023-07-25 10:59:00'),
('274e6b34040c5880959e6f02b407a20b4eece9aa58e70e84696d92df9a0e3707ea2f36443b180fda', 4, 1, 'API Token', '[]', 0, '2022-08-08 09:16:39', '2022-08-08 09:16:39', '2023-08-08 11:16:39'),
('28029db7044b7860a48fd584fbc653d198ecb62ff93afaf25f00ff532ec18787eb9fa9ca3b1f050e', 14, 1, 'API Token', '[]', 0, '2022-08-14 12:58:49', '2022-08-14 12:58:49', '2023-08-14 14:58:49'),
('28d72aecca9bfff1c60cb2bc6492a8009d8139a1084e9619b0f05db9e1b5064e881bcdef3dca08b6', 4, 1, 'API Token', '[]', 0, '2022-08-12 01:25:31', '2022-08-12 01:25:31', '2023-08-12 03:25:31'),
('293b77e53fad744c5d76eb60cf1148794bb397bfab5b9bcfe2fa3737c12dd4105bd8d3a14ca3fc5b', 10, 1, 'API Token', '[]', 0, '2022-08-06 19:26:34', '2022-08-06 19:26:34', '2023-08-06 21:26:34'),
('29d8b0d5bd4b02eef2c9412054665b60c937a266f5e22a39bb774214279fbc1a06949d718f2e4aff', 4, 1, 'API Token', '[]', 0, '2022-07-25 05:21:42', '2022-07-25 05:21:42', '2023-07-25 07:21:42'),
('2a3459a063d8d4b991add10caf2d1a8dfd52448584439dd7118ac1a524bbb6033dfce2bb749d3057', 4, 1, 'API Token', '[]', 0, '2022-08-08 09:05:25', '2022-08-08 09:05:25', '2023-08-08 11:05:25'),
('2c560f3995b06e79219353ee5e91fe55e811e781a20014335751f4ee558a88319e550796b4b22575', 4, 1, 'API Token', '[]', 0, '2022-07-25 04:23:59', '2022-07-25 04:23:59', '2023-07-25 06:23:59'),
('3059c8510ab45bf19e470192d35bcc56025083994b01c8ea39cd7d0e77e3e511b08cf55343d57e03', 15, 1, 'API Token', '[]', 0, '2022-08-19 08:18:18', '2022-08-19 08:18:18', '2023-08-19 10:18:18'),
('341b2b7a3d2c01bc78b4033c1bdc62a131ddfb8284de4b486a16c1fc50190aad20492eb730012a52', 4, 1, 'API Token', '[]', 0, '2022-07-18 12:25:48', '2022-07-18 12:25:48', '2023-07-18 13:25:48'),
('3624d3ce26acf402c5471f20c7eee2af8ab7ea7b702d2dafe3918898501bf2c4205de16fb79383a2', 14, 1, 'API Token', '[]', 0, '2022-08-14 13:34:07', '2022-08-14 13:34:07', '2023-08-14 15:34:07'),
('373019204e3d277d5f983eebd007f52c8d69172d86c1319adf9334e89658759b273d9cb05e57618a', 14, 1, 'API Token', '[]', 0, '2022-08-14 19:53:30', '2022-08-14 19:53:30', '2023-08-14 21:53:30'),
('38d3aee1e48018bd90c141d831e5773d10d749e77500b952003f652afc172b1fbd2429084ff21069', 15, 1, 'API Token', '[]', 0, '2022-08-19 07:14:09', '2022-08-19 07:14:09', '2023-08-19 09:14:09'),
('3a476be3b593b0a8f24efe0bed0cbc49c94b63f07d22da9c273552cee617c81c10c4c5022452accf', 13, 1, 'API Token', '[]', 0, '2022-08-08 04:31:34', '2022-08-08 04:31:34', '2023-08-08 06:31:34'),
('3b00089f103189aed997162a9244afb46177c832308f5cd84c35d2e75750a2c19bf2d6c562930875', 4, 1, 'API Token', '[]', 0, '2022-08-14 13:02:17', '2022-08-14 13:02:17', '2023-08-14 15:02:17'),
('41fb60dd3749b4103dfdcdd174c41a0d754dc1785fc9049380342aa21bb9e048525ff530f4bd0eac', 4, 1, 'API Token', '[]', 0, '2022-07-25 09:34:44', '2022-07-25 09:34:44', '2023-07-25 11:34:44'),
('4241c3656086d13b8efc9c7dc747be463da2c53cd57e2889d5d38680dda474626eb91aedccdad11c', 4, 1, 'API Token', '[]', 0, '2022-07-25 05:19:46', '2022-07-25 05:19:46', '2023-07-25 07:19:46'),
('44b5cfd36a4c01af5333d5fce3f031d09146a41b824ae26d69182e1e7d9a0f0e437086c2b7a03b63', 4, 1, 'API Token', '[]', 0, '2022-08-08 09:00:47', '2022-08-08 09:00:47', '2023-08-08 11:00:47'),
('4509b12fc82c1288cf5597dab117e80f8a8e97b73dc62115eac81be71f1250cdc0c7a47a7e92132b', 13, 1, 'API Token', '[]', 0, '2022-08-08 09:27:15', '2022-08-08 09:27:15', '2023-08-08 11:27:15'),
('463812052adc5b02534a9e7c45fb4008ca02be3dfdbe05da6564f07849c0bdb1fb50883a12594f0a', 4, 1, 'API Token', '[]', 0, '2022-08-07 15:17:55', '2022-08-07 15:17:55', '2023-08-07 17:17:55'),
('4656c9887d835d3e81b7115483d5210f952df5c87de4c28e863a382ac1b4e80f7794028d4f528bfd', 15, 1, 'API Token', '[]', 0, '2022-08-08 10:01:22', '2022-08-08 10:01:22', '2023-08-08 12:01:22'),
('467fdcf920c18ab0ddaf29a13e3526e1364c421fb0194adf439b5f2829a8cc695bb5898b2f2293f9', 10, 1, 'API Token', '[]', 0, '2022-08-07 05:56:08', '2022-08-07 05:56:08', '2023-08-07 07:56:08'),
('47ae60a36bb617a6083d506adf4e1f75971fff0ebef23d1f42f214e37daa963f115e6b32eebdec6a', 4, 1, 'API Token', '[]', 0, '2022-08-14 13:09:58', '2022-08-14 13:09:58', '2023-08-14 15:09:58'),
('4925d11279d706489aaf065cf6bf2aa26a61e1f52aad3586f4d06e31c399d22d52f832c6549fe0e3', 4, 1, 'API Token', '[]', 0, '2022-08-07 21:19:01', '2022-08-07 21:19:01', '2023-08-07 23:19:01'),
('493ec5763a69ee666a81f6f6e67c0079ecec6fd716fa252ceeb52499f8c9f42652caa64867e11fe0', 4, 1, 'API Token', '[]', 0, '2022-08-09 11:21:34', '2022-08-09 11:21:34', '2023-08-09 13:21:34'),
('49a46378080d0000c50cc5cd94cf63804ba022383d8d21706ff9d1652f78b7c40e9395e2b4e1ad57', 14, 1, 'API Token', '[]', 0, '2022-08-08 08:37:46', '2022-08-08 08:37:46', '2023-08-08 10:37:46'),
('4a3e3b7487168f42c2712d35785c3b65e462ca6b2bbb44bc481e13530488fce14384f3509c0c355a', 4, 1, 'API Token', '[]', 0, '2022-07-21 13:30:16', '2022-07-21 13:30:16', '2023-07-21 14:30:16'),
('4ad24487b39863fc3ad2bbdf7064b57a97a4947c6474c0d86740aa9b44a6cee44c5a96382f4f67dc', 10, 1, 'API Token', '[]', 0, '2022-08-07 04:48:59', '2022-08-07 04:48:59', '2023-08-07 06:48:59'),
('4b3a70fcfdde7d81f717661c567df07b1007d75f5a01650f58db7d02706c4a83e4fc002065ffb65a', 4, 1, 'API Token', '[]', 0, '2022-08-08 09:05:46', '2022-08-08 09:05:46', '2023-08-08 11:05:46'),
('4cb1d085e02145609d09f3f4eb477e8d1ea8f6ef4e77a12954d814228672d3573d2b20734dc7268c', 4, 1, 'API Token', '[]', 0, '2022-07-23 21:15:18', '2022-07-23 21:15:18', '2023-07-23 22:15:18'),
('50988459dfa1cfb0b42775d59082345e1ac7818079f29451f5326a931d4bad6817deae7a7ea46b90', 4, 1, 'API Token', '[]', 0, '2022-08-19 10:01:02', '2022-08-19 10:01:02', '2023-08-19 12:01:02'),
('50d63cc0894bfcf5f9deedc357a1eae5540fc2d5415f48e5cc40d4769649f956d5d828e98b22baa5', 4, 1, 'API Token', '[]', 0, '2022-07-18 08:11:27', '2022-07-18 08:11:27', '2023-07-18 09:11:27'),
('537fd39b794563c69c195ffc4d563797917e3097f8bdc4983912976f7d0fde789d15a9ca47aa6359', 4, 1, 'API Token', '[]', 0, '2022-07-25 05:21:57', '2022-07-25 05:21:57', '2023-07-25 07:21:57'),
('54205a73c7eb2ec677d441cf1a084ae9a4dcf5c6ef34cceacb00d425b37c2735ec5a9383477f33dd', 4, 1, 'API Token', '[]', 0, '2022-08-06 01:03:15', '2022-08-06 01:03:15', '2023-08-06 02:03:15'),
('556ab5dcfb43601542256aadee273c95537737120a29da5a09407375fc5c267fd8b44a0475150534', 15, 1, 'API Token', '[]', 0, '2022-08-18 02:25:08', '2022-08-18 02:25:08', '2023-08-18 04:25:08'),
('56f3ca84d86bb77b672617f7e4945f58a81df2b3f78d3dda4cce0703cc7185efe0872594e40867e6', 4, 1, 'API Token', '[]', 0, '2022-08-08 09:06:04', '2022-08-08 09:06:04', '2023-08-08 11:06:04'),
('574853f1b4c0d21fbe4c63801f431fc07ddf2c1fab9ba5396ba40ef2ddb1daea9d993a535002de45', 4, 1, 'API Token', '[]', 0, '2022-08-15 07:45:27', '2022-08-15 07:45:27', '2023-08-15 09:45:27'),
('58b1e48af812b061ff76d7c2409aff09f5f6a8c6b6865f0ee9759da912f1dbfab793c5ed55dd322a', 17, 1, 'API Token', '[]', 0, '2022-08-14 20:12:14', '2022-08-14 20:12:14', '2023-08-14 22:12:14'),
('593119d2f0e21bea2e1d007d6f03e1c4e63991929f95c9a53397818f53af64f7c10e50b9d2246642', 13, 1, 'API Token', '[]', 0, '2022-08-08 02:17:18', '2022-08-08 02:17:18', '2023-08-08 04:17:18'),
('598f7af302d685ad0d26fc6e3f185967a0dc471e0b308903cc0d44e86fc52b39f1180c5bd11c6793', 4, 1, 'API Token', '[]', 0, '2022-08-07 14:35:26', '2022-08-07 14:35:26', '2023-08-07 16:35:26'),
('5b4a3e6b3d1884173fe6ed3fb2d7c76194c05d484b719d4f9f280ec9d1a8a9894000df99dbff8cc3', 13, 1, 'API Token', '[]', 0, '2022-08-08 09:28:16', '2022-08-08 09:28:16', '2023-08-08 11:28:16'),
('5db0c545fb8670505e78f943c55f6cc2269ef720fd3c658a512225e171c6b57e1c2a65d27166a9dc', 4, 1, 'API Token', '[]', 0, '2022-08-08 08:41:10', '2022-08-08 08:41:10', '2023-08-08 10:41:10'),
('5db75d16d0be3dd23eb7055e29e4a4616f542b0274495ab02c5abe63e9a162bd69466f0acfadc126', 14, 1, 'API Token', '[]', 0, '2022-08-08 10:15:21', '2022-08-08 10:15:21', '2023-08-08 12:15:21'),
('5df9097f634936fac5ad342fe8939c64e76e0e5cc3f80ea9adcedbb88765a0113deaac629abe0240', 13, 1, 'API Token', '[]', 0, '2022-08-08 04:28:18', '2022-08-08 04:28:18', '2023-08-08 06:28:18'),
('606f23e3ddc6ebd6276843c4cdf41b89ad950acd59e5422e41c1a5e04de3824aeebfd42d5d5891a3', 4, 1, 'API Token', '[]', 0, '2022-08-20 05:18:42', '2022-08-20 05:18:42', '2023-08-20 07:18:42'),
('61f20f1edb60f9e8a655626636a2162f5c2a8b200ae3a59119e939dcb26ecc744682c0a32def071f', 4, 1, 'API Token', '[]', 0, '2022-07-23 21:15:53', '2022-07-23 21:15:53', '2023-07-23 22:15:53'),
('64fa1edd63314da108a10cf9752074d40f6697a5201e084af9e0dcd33d3e59d880ed7821f409ad11', 10, 1, 'API Token', '[]', 0, '2022-08-06 20:04:11', '2022-08-06 20:04:11', '2023-08-06 22:04:11'),
('68b7d3bd148d9721bf6f41cb304a14087c51763e8fbfe929da98ee460ea9946d9a289ea2186fc475', 4, 1, 'API Token', '[]', 0, '2022-08-08 08:54:00', '2022-08-08 08:54:00', '2023-08-08 10:54:00'),
('6ad50d17de4f9b12b20512520d5d9783cfb42a2d8bab378f9f1c21d49914317eef9fc749cdd2afe2', 4, 1, 'API Token', '[]', 0, '2022-08-08 09:16:43', '2022-08-08 09:16:43', '2023-08-08 11:16:43'),
('6b2a81f1f35ab3ed539278e7ad8dd7f77f389fd7c80ecb787ff2581de101099ba6d07741ad3cb22f', 4, 1, 'API Token', '[]', 0, '2022-07-06 22:25:19', '2022-07-06 22:25:19', '2023-07-06 23:25:19'),
('6baa4310c8c954a74d66564476c0d05280a267732f51c3362d1ec3677b64e1fb97888e88c5c1f9aa', 4, 1, 'API Token', '[]', 0, '2022-07-20 18:18:11', '2022-07-20 18:18:11', '2023-07-20 19:18:11'),
('6be4efcf1592a9b6f6d16761f73cc30e625c29bfcbfb90d1ba8ae594d79bf9195adc0b9dd666895d', 17, 1, 'API Token', '[]', 0, '2022-08-14 22:09:21', '2022-08-14 22:09:21', '2023-08-15 00:09:21'),
('6d1b7c6bc7077c80afc462e591a11b37d58e2f3ecf0657d0da8c8b7b8c9c30d61807fc382dd46146', 4, 1, 'API Token', '[]', 0, '2022-07-17 14:42:07', '2022-07-17 14:42:07', '2023-07-17 15:42:07'),
('6dc43723ac6d43f53ac3a084389ca55e1d23b6fd4a6ec82cdb77d87dacdb155e820c60acac8c6216', 4, 1, 'API Token', '[]', 0, '2022-08-08 08:50:10', '2022-08-08 08:50:10', '2023-08-08 10:50:10'),
('6f16b803b66de4a38b4a86fef167c795c369efb67e7c33500539170c6f7cf859ff1dfac958066ce9', 4, 1, 'API Token', '[]', 0, '2022-08-19 07:37:10', '2022-08-19 07:37:10', '2023-08-19 09:37:10'),
('6f3065de2945c138c6b0e912d0b09a0a258faf806684d34cd22504beacf97aafcf0cde070f1a5a66', 4, 1, 'API Token', '[]', 0, '2022-08-14 16:30:29', '2022-08-14 16:30:29', '2023-08-14 18:30:29'),
('70fea6809a38b5e0cb428bb81efb13367d825efa0d2b90223b7acbb451c20b1d8c4373fbc37274cc', 4, 1, 'API Token', '[]', 0, '2022-08-14 19:47:38', '2022-08-14 19:47:38', '2023-08-14 21:47:38'),
('7137719ad772a0e8f424fd639141c9e4fff13873a469fd78f76264c6c4f0d1638ef9eff2e967636e', 4, 1, 'API Token', '[]', 0, '2022-08-07 05:35:37', '2022-08-07 05:35:37', '2023-08-07 07:35:37'),
('7307e5d21f8b7c9f14f9f6d831f9fa9fb86d4ac5019030bb32e5e95c2a9fb0f87f50725d5178b946', 4, 1, 'API Token', '[]', 0, '2022-08-12 04:56:15', '2022-08-12 04:56:15', '2023-08-12 06:56:15'),
('73e3a360e24c476ae527791b8ae1c2684c8210fffd8aae60471c9c819668c95636fdf41bd57c2571', 4, 1, 'API Token', '[]', 0, '2022-08-18 11:56:42', '2022-08-18 11:56:42', '2023-08-18 13:56:42'),
('74559277a66fc0a9b1e7b44e471cbee498f5ca5179c03aa1c9b5daa9d6eebbe976501210f21c66b2', 13, 1, 'API Token', '[]', 0, '2022-08-08 09:30:53', '2022-08-08 09:30:53', '2023-08-08 11:30:53'),
('756e7e84a11b71564afa6e32391edce7943198d8046efe992ea3fb9b1894dacd046b62a54faf3a71', 4, 1, 'API Token', '[]', 0, '2022-07-25 07:56:08', '2022-07-25 07:56:08', '2023-07-25 09:56:08'),
('772884af7b37198382b35e6ba53d9748e25db00fb9a3f8d6901bde793331e4b0f983ca9f86fc40f2', 14, 1, 'API Token', '[]', 0, '2022-08-17 13:21:50', '2022-08-17 13:21:50', '2023-08-17 15:21:50'),
('7be417b06d7822746e3878d56df7f8d8cc97d557f55798ec448040f75e1f58ac2dd14b30ea0b170e', 4, 1, 'API Token', '[]', 0, '2022-07-17 22:42:21', '2022-07-17 22:42:21', '2023-07-17 23:42:21'),
('7c1c6404f03f4db20b9bee70904c3c17e917f286cfe6f74e57dc106396fd5b43e46019c90be71661', 4, 1, 'API Token', '[]', 0, '2022-08-14 13:38:16', '2022-08-14 13:38:16', '2023-08-14 15:38:16'),
('7c81984c495b9beb30246f67a5d191e730b8befa5c44dbad1d3df35e0ab506bafa6f313755e153d4', 4, 1, 'API Token', '[]', 0, '2022-08-14 12:54:40', '2022-08-14 12:54:40', '2023-08-14 14:54:40'),
('8348d475ae08fc0e1ea6b0927f889838a713d47c21159ab6ef5d04195bcaee8b6d672045a07b7b5c', 15, 1, 'API Token', '[]', 0, '2022-08-12 10:04:08', '2022-08-12 10:04:08', '2023-08-12 12:04:08'),
('84aad7f2e0fe88911500af83339e016cb11f178d058ec900a9f48447c560458871e09cbbe3449f8e', 4, 1, 'API Token', '[]', 0, '2022-08-12 09:44:11', '2022-08-12 09:44:11', '2023-08-12 11:44:11'),
('85e6fbfb9dcac8e6e59d0c54e97b7a76391e2b695016f298270203b84033f5a97a4644e4ce98d446', 4, 1, 'API Token', '[]', 0, '2022-08-20 09:04:52', '2022-08-20 09:04:52', '2023-08-20 11:04:52'),
('885314ca06e0ebfadfaa3e020e02193581bbcc63800a45f8e574e108e301c9ed0a116d55c4a8e50a', 4, 1, 'API Token', '[]', 0, '2022-08-08 08:39:17', '2022-08-08 08:39:17', '2023-08-08 10:39:17'),
('88d74e30056ba86b2c68cc5223d31b25421f02e9355ca168ca49737b25c747f13047fd6fed63c479', 4, 1, 'API Token', '[]', 0, '2022-08-16 15:31:26', '2022-08-16 15:31:26', '2023-08-16 17:31:26'),
('89eaf6c793e69621c74f77828ad962e1130a0ffeab52eec0450cd7020d364608846f66537788db5d', 4, 1, 'API Token', '[]', 0, '2022-07-20 18:16:33', '2022-07-20 18:16:33', '2023-07-20 19:16:33'),
('8c26ad9cb881192541cbf82072147d2b615f4b0a10d38e603870d1ef32af99f7cb1eab538aef0e15', 4, 1, 'API Token', '[]', 0, '2022-08-06 13:21:08', '2022-08-06 13:21:08', '2023-08-06 15:21:08'),
('8dbb1ee43faf28fe3390c6cfc7803802d8ea292d4331261ce90c6a9007fbcfa0c30704477699417b', 17, 1, 'API Token', '[]', 0, '2022-08-14 21:13:33', '2022-08-14 21:13:33', '2023-08-14 23:13:33'),
('90288411b3094dfff025cd67b44fe6a7b37085656d946a7e66efb90bba360d2e66dfa1f0c837bd25', 4, 1, 'API Token', '[]', 0, '2022-07-25 09:12:50', '2022-07-25 09:12:50', '2023-07-25 11:12:50'),
('903420ec16f487f67edc059fbf3cb67eec545afc203deb5cf8af50f62fa84134b200e5dac5523799', 4, 1, 'API Token', '[]', 0, '2022-08-02 20:01:22', '2022-08-02 20:01:22', '2023-08-02 21:01:22'),
('946d9ba0575a198420de490abad2ff5c640572d6351f054359becbdfa8a852fd26c193e6537ddc9f', 4, 1, 'API Token', '[]', 0, '2022-07-25 07:55:29', '2022-07-25 07:55:29', '2023-07-25 09:55:29'),
('95d038da9236e21f0cc6ec74e938830ebfe802b75f2b11588fde22ced6f0fab11b207cf55b6de3e0', 4, 1, 'API Token', '[]', 0, '2022-07-18 12:16:44', '2022-07-18 12:16:44', '2023-07-18 13:16:44'),
('96059a61f0e2932f0f8cc841ee57abd72136f868391a9d73486b11dab3c9308218d729422535fe0e', 4, 1, 'API Token', '[]', 0, '2022-08-14 13:55:36', '2022-08-14 13:55:36', '2023-08-14 15:55:36'),
('96e21cb6e2fec2808371cf4e77a87614d3fd0e0e653f464987c6270e827bbcc4052d13769a251419', 4, 1, 'API Token', '[]', 0, '2022-07-25 05:14:22', '2022-07-25 05:14:22', '2023-07-25 07:14:22'),
('9a92d25b5324ac2253463abcda36733d9aec541d9be074456bcd6a47a83383b107eb30b53ba013bf', 10, 1, 'API Token', '[]', 0, '2022-08-06 20:03:19', '2022-08-06 20:03:19', '2023-08-06 22:03:19'),
('9aedf85e979da959a4fd6f0cc5a3d740493463fda2095bd64e7097d90bb771bc340694bd9783a11b', 4, 1, 'API Token', '[]', 0, '2022-07-23 19:20:36', '2022-07-23 19:20:36', '2023-07-23 20:20:36'),
('9bb2830e2ba93c27a1f58aa0304da1299b83eba64ac18cf8cbd1173c9400da9917e34d2de9aefffb', 4, 1, 'API Token', '[]', 0, '2022-07-25 04:26:05', '2022-07-25 04:26:05', '2023-07-25 06:26:05'),
('9bb48f2fd5fe1a780a23ac624d3ba9804e8a40a2e40d05e8c3cd5930e30c139f0fb8128a4b22d51a', 17, 1, 'API Token', '[]', 0, '2022-08-14 20:09:30', '2022-08-14 20:09:30', '2023-08-14 22:09:30'),
('9be3bc014597c1fb2631346775090277561d8a27109ead391966b7c68db9939b6fbce4b346e4ce15', 4, 1, 'API Token', '[]', 0, '2022-08-06 13:20:06', '2022-08-06 13:20:06', '2023-08-06 15:20:06'),
('9c0e5daf9a6b7b2c65e104a539f38b5cdccef46efa41b6940724d6289b806c2013fa5cf73a31ebf1', 4, 1, 'API Token', '[]', 0, '2022-08-11 20:10:30', '2022-08-11 20:10:30', '2023-08-11 22:10:30'),
('a235230b45fa4e5f07579d612f2d36909af2416f2e285958a3aaf0184ecff99c0ab3d877d07f8ba5', 4, 1, 'API Token', '[]', 0, '2022-07-25 05:39:14', '2022-07-25 05:39:14', '2023-07-25 07:39:14'),
('a5b612aa757cb44d624358d693efe9919661984755b7ad13440d4e272a1d700b95ca042b72f97ddf', 4, 1, 'API Token', '[]', 0, '2022-07-24 18:33:15', '2022-07-24 18:33:15', '2023-07-24 19:33:15'),
('a7c3421db68a2f5a50e62518c61eb7db41b6c312d4d2c8bc9a361d957fe86af9cfb30d346dc0412a', 4, 1, 'API Token', '[]', 0, '2022-08-08 08:45:11', '2022-08-08 08:45:11', '2023-08-08 10:45:11'),
('aa51d196cfe8dcb9debf58844d7766ed861e447a2789c3b2136b9848dc34b4b8a6e5e0ce938813b6', 15, 1, 'API Token', '[]', 0, '2022-08-12 10:05:07', '2022-08-12 10:05:07', '2023-08-12 12:05:07'),
('aa6a953b2174e5f060a408abd1414381a3ffd4ab0273a51b71b5f3a9743a9b238533a51e109545bd', 4, 1, 'API Token', '[]', 0, '2022-08-06 13:20:59', '2022-08-06 13:20:59', '2023-08-06 15:20:59'),
('abe35954f7e047a1f0f90de4ae17794db4c3bc45aa38621bf3f1801516eee8872299b7ca294f0b54', 14, 1, 'API Token', '[]', 0, '2022-08-14 13:00:00', '2022-08-14 13:00:00', '2023-08-14 15:00:00'),
('ac3e0a7b3b91c10a2e237af0d42d848912035c6634da88f5e5abe477a481e2256c4daa4c9ef44f5a', 4, 1, 'API Token', '[]', 0, '2022-07-18 12:28:06', '2022-07-18 12:28:06', '2023-07-18 13:28:06'),
('ac79a06a4241dfde0a654df1f20e18fc16f9f745f350fbca1e1025e2c97672bab29110ead55f8e36', 13, 1, 'API Token', '[]', 0, '2022-08-08 09:00:17', '2022-08-08 09:00:17', '2023-08-08 11:00:17'),
('acddfaad5dce4c3cfda850eb297b6803225cacd53b57cf0b30a45ff67a4f2e7b8cfbbb8660a76573', 10, 1, 'API Token', '[]', 0, '2022-08-07 09:48:52', '2022-08-07 09:48:52', '2023-08-07 11:48:52'),
('b0ffdc3535855b5754ca426ba23320f02ec3c7c86d4e8608c357ad7569d87976c58464c46a70905b', 16, 1, 'API Token', '[]', 0, '2022-08-19 10:25:22', '2022-08-19 10:25:22', '2023-08-19 12:25:22'),
('b5f3d7b609a1fb819fdabf07903cf8ee85a688cba72570820dc4a489e55f6979e0d29a1350b5ada9', 4, 1, 'API Token', '[]', 0, '2022-08-14 17:31:10', '2022-08-14 17:31:10', '2023-08-14 19:31:10'),
('bcb44ee57582d6ce999450bfa8d14442491cb18b9b5c9816e27373ee3526a25c1b7062b243f920f8', 15, 1, 'API Token', '[]', 0, '2022-08-08 09:39:36', '2022-08-08 09:39:36', '2023-08-08 11:39:36'),
('bfbff99c5df230c87d23c312696f8c14e087e2c5429f16737d8b6e2d8b60e16eca2cd54b36cfdceb', 4, 1, 'API Token', '[]', 0, '2022-08-14 12:55:42', '2022-08-14 12:55:42', '2023-08-14 14:55:42'),
('bfd999ab0abfea3320b512357895612af066a5d46eae3ab35f2831d9eed585bce8dac635d292adb8', 4, 1, 'API Token', '[]', 0, '2022-08-08 08:39:10', '2022-08-08 08:39:10', '2023-08-08 10:39:10'),
('c24e41911a0eeb238f66ede477c09e3d627816b4a9e876e282a3aa5a16c8fbe01f786dad2364648b', 14, 1, 'API Token', '[]', 0, '2022-08-08 09:26:23', '2022-08-08 09:26:23', '2023-08-08 11:26:23'),
('c2d751090b034bd2089a10540b748cfd020da77f2ca7a92e1d63c65c7f6030ce1b72868779146239', 4, 1, 'API Token', '[]', 0, '2022-08-07 06:19:28', '2022-08-07 06:19:28', '2023-08-07 08:19:28'),
('c450270018fabef7d6462ddff9756944b5f9918818e82057ec5f4ac16cf11ff9b63d3b6b5274ffea', 4, 1, 'API Token', '[]', 0, '2022-08-08 03:18:55', '2022-08-08 03:18:55', '2023-08-08 05:18:55'),
('c4dcedfa1c20ddae2306f1298d48dcea910f50f90294de5adb806b67623fc0fe394cab3026436b5d', 4, 1, 'API Token', '[]', 0, '2022-08-19 03:07:18', '2022-08-19 03:07:18', '2023-08-19 05:07:18'),
('c52794e684b2f0ba441d8c3c2f77e6eb8a1c11b97c7e6967b4150d89b5c978acc3726ec55de047bb', 4, 1, 'API Token', '[]', 0, '2022-07-18 12:47:37', '2022-07-18 12:47:37', '2023-07-18 13:47:37'),
('c542e865c3200fae5db29f8b1396e95801205f01057cdbaa3fa7dbb9102ada91671d0c225c398432', 4, 1, 'API Token', '[]', 0, '2022-08-12 05:02:12', '2022-08-12 05:02:12', '2023-08-12 07:02:12'),
('c67c574d7826687ef251f11271ebe6c7862404441179114bab816742527207e10c3f2001ae91cece', 4, 1, 'API Token', '[]', 0, '2022-07-25 07:51:45', '2022-07-25 07:51:45', '2023-07-25 09:51:45'),
('c6e0bfc9077a69aa12ecce598fd73bac9d419a4f52026522679b4ed3d74934567731e4756d782a30', 4, 1, 'API Token', '[]', 0, '2022-07-25 07:55:27', '2022-07-25 07:55:27', '2023-07-25 09:55:27'),
('c728284d58fb901e141a41ee1168a823a871c3f87bc084f7bde65eee6468bfbd8d312e5616a32f20', 4, 1, 'API Token', '[]', 0, '2022-08-19 07:59:59', '2022-08-19 07:59:59', '2023-08-19 09:59:59'),
('c77c5365dcb436fea4d4b58d59b58f895b8fd19c2a3aa33e452b83c7da568e0bf52773574a1f7ccd', 4, 1, 'API Token', '[]', 0, '2022-08-08 08:51:11', '2022-08-08 08:51:11', '2023-08-08 10:51:11'),
('ca06d0a8e02244aa087d0c5015312077ddfcdadfc05d73a1d0f58aced8236f4b7d76890c335cfac5', 18, 1, 'API Token', '[]', 0, '2022-08-20 11:08:50', '2022-08-20 11:08:50', '2023-08-20 13:08:50'),
('d1de7439984fcf7b1885990a7555b469fbe30ac2c4a6a82b76886520a456da7826d15964ae044e8f', 4, 1, 'API Token', '[]', 0, '2022-07-25 09:17:14', '2022-07-25 09:17:14', '2023-07-25 11:17:14'),
('d3f700bffad10a4a976bc72b89616054c28b0daf6eda1ee63748f7f8ddc53ad49a9a3ebf71cf15c4', 4, 1, 'API Token', '[]', 0, '2022-08-16 15:43:10', '2022-08-16 15:43:10', '2023-08-16 17:43:10'),
('d459e95fe22ab259ec88ad4cd56a94a5d43e782c92701f0fe64124a2a7d4e5f5782d59015eddcd9a', 17, 1, 'API Token', '[]', 0, '2022-08-19 08:01:37', '2022-08-19 08:01:37', '2023-08-19 10:01:37'),
('d4ecc8ce76d65338f95913492330cbdc6172a8e2c4e1f0a1b5d95d2fc6d7106097d93b0381c4c477', 4, 1, 'API Token', '[]', 0, '2022-07-06 22:25:30', '2022-07-06 22:25:30', '2023-07-06 23:25:30'),
('d9c68c725f377fafc0c7debf977d6b65823c4e0d5445ed5d74edc02561bb0af46dfdf8255afc5042', 14, 1, 'API Token', '[]', 0, '2022-08-14 13:02:54', '2022-08-14 13:02:54', '2023-08-14 15:02:54'),
('e11e02cc846c93bd220452cb860564c911cd0ae70e073620a0e260dd4583544763f74b6af30b4889', 10, 1, 'API Token', '[]', 0, '2022-08-06 19:49:23', '2022-08-06 19:49:23', '2023-08-06 21:49:23'),
('e178b481a10882495be2f633c40d5b03edee548d6f900608a2a69c9d37ba00e4b9b60275d4a815e1', 4, 1, 'API Token', '[]', 0, '2022-08-19 07:09:02', '2022-08-19 07:09:02', '2023-08-19 09:09:02'),
('e1ba2ddfa68fb86a3b71c1865190775a450f948542243b61fe74432cdfd9043fc1d2687e6c87cb2f', 4, 1, 'API Token', '[]', 0, '2022-07-25 07:55:04', '2022-07-25 07:55:04', '2023-07-25 09:55:04'),
('e3cbc4b87a271d98ecd81a668b22d151d14a96ca0ad48832e5068863ee826e929543c361782a1b9e', 4, 1, 'API Token', '[]', 0, '2022-08-14 13:08:47', '2022-08-14 13:08:47', '2023-08-14 15:08:47'),
('e4d0bd2af2bf1543edc7f7d39d3e1ba50dee653640a275975422a9887722a78e1df76ac540352544', 4, 1, 'API Token', '[]', 0, '2022-07-25 09:20:39', '2022-07-25 09:20:39', '2023-07-25 11:20:39'),
('e70e784733b6c3b48093d3390d77441324e454c78cc9b51071a7401a5b0c19f0201849b956083b50', 4, 1, 'API Token', '[]', 0, '2022-07-25 07:55:31', '2022-07-25 07:55:31', '2023-07-25 09:55:31'),
('ea36f48a7ced3c1e88eb5f7c9c63f246ea4ebeb815a68931750032bacbbf1f56bc223e6a3e1d018d', 4, 1, 'API Token', '[]', 0, '2022-08-08 09:40:08', '2022-08-08 09:40:08', '2023-08-08 11:40:08'),
('ee9da3b32238f98fbfeb7d3ee4c162cc566b41ff7985d8545663cb6e38d95606b6f58aeaf1672ab6', 4, 1, 'API Token', '[]', 0, '2022-08-14 12:30:32', '2022-08-14 12:30:32', '2023-08-14 14:30:32'),
('f36b657520768d247d8301de23cace2f76ba21ca62f1d76da5555b80eb55b100896752182c6e22f0', 14, 1, 'API Token', '[]', 0, '2022-08-14 13:00:30', '2022-08-14 13:00:30', '2023-08-14 15:00:30'),
('f5ae304e99aa6fa475d62316823e7b0067c3ea74b7441f8e85778476f73dcdac9336a63793832187', 14, 1, 'API Token', '[]', 0, '2022-08-17 08:09:26', '2022-08-17 08:09:26', '2023-08-17 10:09:26'),
('f779e1d290b4b47421cabbde285862c965681e6c957962e1410742ea5a8db2025cf7476f75cc14e6', 4, 1, 'API Token', '[]', 0, '2022-07-25 09:06:45', '2022-07-25 09:06:45', '2023-07-25 11:06:45'),
('f78ecdf7ff504feaadd13bfcabb49bc2836dabe1439bc3339d862349a58292b30dd9f9740749bf75', 4, 1, 'API Token', '[]', 0, '2022-07-25 05:11:47', '2022-07-25 05:11:47', '2023-07-25 07:11:47'),
('f82dff6d7426c1bfaeb1a3607411178b5d2c1071e08e068fe57a073cd5219a1a6192a589bd5aac76', 4, 1, 'API Token', '[]', 0, '2022-07-18 06:15:55', '2022-07-18 06:15:55', '2023-07-18 07:15:55'),
('fed21d545f1458202a26b60d6d1f17b0fed2a9d13ca6aa2f77b5ba13c0a9f8c6735bda727822051d', 17, 1, 'API Token', '[]', 0, '2022-08-19 08:02:16', '2022-08-19 08:02:16', '2023-08-19 10:02:16'),
('ff6d326e534fa626556543003bc2ef3ecd32bd6e78c2aae203bff7650186a967c1b2ff2f5eac5530', 4, 1, 'API Token', '[]', 0, '2022-07-18 12:42:28', '2022-07-18 12:42:28', '2023-07-18 13:42:28');

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, NULL, 'Laravel Personal Access Client', 'Y7xYDH2kX6RWVhGlhidFof1IuSeri7p0buNjNRpo', NULL, 'http://localhost', 1, 0, 0, '2022-07-06 22:25:14', '2022-07-06 22:25:14'),
(2, NULL, 'Laravel Password Grant Client', 'LhhAE2wbXiaXQUIaoHuLUR9qqXxJ3xHPB1bdAJn4', 'users', 'http://localhost', 0, 1, 0, '2022-07-06 22:25:14', '2022-07-06 22:25:14');

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
(1, 1, '2022-07-06 22:25:14', '2022-07-06 22:25:14');

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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recycles`
--

CREATE TABLE `recycles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_weight_input` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_weight_output` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `costic_soda` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `detergent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `factory_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price_per_ton` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `freight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `item_weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `customer_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_usd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `amount_ngn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `factory_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `id` int(20) NOT NULL,
  `price_per_ton` varchar(255) DEFAULT '0',
  `customer_name` varchar(255) DEFAULT NULL,
  `Clean_Clear` varchar(255) DEFAULT '0',
  `Green_Colour` varchar(255) DEFAULT '0',
  `Others` varchar(255) DEFAULT '0',
  `Trash` varchar(255) DEFAULT '0',
  `clean_clear_qty` varchar(255) DEFAULT '0',
  `green_color_qty` varchar(255) DEFAULT '0',
  `other_qty` varchar(255) DEFAULT '0',
  `trash_qty` varchar(255) DEFAULT '0',
  `freight` varchar(255) DEFAULT '0',
  `amount_ngn` varchar(255) DEFAULT '0',
  `amount_usd` varchar(255) DEFAULT '0',
  `location_id` varchar(255) DEFAULT NULL,
  `factory_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_details`
--

INSERT INTO `sales_details` (`id`, `price_per_ton`, `customer_name`, `Clean_Clear`, `Green_Colour`, `Others`, `Trash`, `clean_clear_qty`, `green_color_qty`, `other_qty`, `trash_qty`, `freight`, `amount_ngn`, `amount_usd`, `location_id`, `factory_id`, `user_id`, `currency`, `created_at`, `updated_at`) VALUES
(1, '0', 'Mr Peter', '0', '2000', '0', '0', '0', '1', '0', '0', '100', '70000', '0', '22', NULL, '4', 'NGN', '2022-08-20 09:18:26', '2022-08-20 09:18:26'),
(2, '0', 'Mr Peter', '2', '0', '0', '0', '2', '0', '0', '0', '22', '484', '0', '22', NULL, '16', 'NGN', '2022-08-20 09:19:30', '2022-08-20 09:19:30'),
(3, '0', 'Mr Peter', '0', '2000', '0', '0', '0', '1', '0', '0', '100', '80000', '0', '22', NULL, '4', 'NGN', '2022-08-20 09:20:37', '2022-08-20 09:20:37'),
(4, '0', 'Mr Peter', '2', '0', '0', '0', '2', '0', '0', '0', '22', '484', '0', '22', NULL, '16', 'NGN', '2022-08-20 09:26:12', '2022-08-20 09:26:12'),
(5, '0', 'jommy', '0', '1000', '0', '0', '0', '10', '0', '0', '500', '5000', '0', '24', NULL, '4', 'NGN', '2022-08-20 11:01:57', '2022-08-20 11:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `sorted_totals`
--

CREATE TABLE `sorted_totals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sorted_transfers`
--

CREATE TABLE `sorted_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `Clean_Clear` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `Green_Colour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `Others` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `Trash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `Caps` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `formLocation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `toLocation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `location_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sorted_transfers`
--

INSERT INTO `sorted_transfers` (`id`, `item_id`, `Clean_Clear`, `Green_Colour`, `Others`, `Trash`, `Caps`, `formLocation`, `toLocation`, `location_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1', '50', '50', '50', '50', '50', '2', '21', '2', '4', '2022-08-20 19:22:36', '2022-08-20 19:22:36');

-- --------------------------------------------------------

--
-- Table structure for table `sortings`
--

CREATE TABLE `sortings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Caps` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `Others` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `item_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Clean_Clear` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `Green_Colour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `Trash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `location_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sortings`
--

INSERT INTO `sortings` (`id`, `Caps`, `Others`, `item_id`, `Clean_Clear`, `Green_Colour`, `Trash`, `location_id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, '0', '0', '1', '5000', '0', '0', '2', '4', '2022-08-20 07:34:12', '2022-08-20 07:34:12'),
(6, '0', '0', '1', '0', '5000', '0', '2', '4', '2022-08-20 07:37:11', '2022-08-20 07:37:11'),
(7, '0', '0', '1', '4000', '0', '0', '2', '4', '2022-08-20 07:38:52', '2022-08-20 07:38:52'),
(8, '0', '0', '1', '1000', '0', '0', '2', '4', '2022-08-20 09:05:22', '2022-08-20 09:05:22'),
(9, '0', '0', '1', '0', '1000', '0', '2', '4', '2022-08-20 09:07:57', '2022-08-20 09:07:57'),
(10, '0', '0', '1', '0', '1000', '0', '2', '18', '2022-08-20 11:09:42', '2022-08-20 11:09:42'),
(17, '1000', '1000', '1', '1000', '1000', '1000', '2', '4', '2022-08-20 19:04:04', '2022-08-20 19:04:04'),
(18, '5000', '5000', '1', '5000', '5000', '5000', '2', '4', '2022-08-20 19:04:56', '2022-08-20 19:04:56');

-- --------------------------------------------------------

--
-- Table structure for table `sort_details`
--

CREATE TABLE `sort_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Caps` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `Others` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `Trash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `Green_Colour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `Clean_Clear` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `location_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sort_details`
--

INSERT INTO `sort_details` (`id`, `Caps`, `Others`, `Trash`, `Green_Colour`, `Clean_Clear`, `location_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, '5950', '6950', '6950', '6950', '6950', '2', NULL, '2022-08-20 06:25:17', '2022-08-20 19:22:36'),
(3, '50', '50', '50', '50', '50', '21', '4', '2022-08-20 19:22:36', '2022-08-20 19:22:36');

-- --------------------------------------------------------

--
-- Table structure for table `totals`
--

CREATE TABLE `totals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `collected` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sorted` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `bailed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `transfered` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `recycled` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sales` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `location_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `totals`
--

INSERT INTO `totals` (`id`, `collected`, `sorted`, `bailed`, `transfered`, `recycled`, `sales`, `location_id`, `created_at`, `updated_at`) VALUES
(1, '21000', '34000', '-5000', '0', '0', '0', '2', '2022-08-20 04:44:30', '2022-08-20 06:56:01');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Clean_Clear` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `clean_clear_qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `Green_Colour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `green_color_qty` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `Others` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `trash_qty` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `other_qty` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `Trash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `Caps` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `collection_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `factory_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rej_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `Clean_Clear`, `clean_clear_qty`, `Green_Colour`, `green_color_qty`, `Others`, `trash_qty`, `other_qty`, `Trash`, `Caps`, `collection_id`, `factory_id`, `location_id`, `status`, `rej_reason`, `user_id`, `created_at`, `updated_at`) VALUES
(5, '9000', '1', '5000', '1', '0', '0', '0', '0', '0', '2', '22', '2', '1', NULL, '4', '2022-08-20 07:44:54', '2022-08-20 08:17:25'),
(6, '1000', '10', '0', '0', '0', '0', '0', '0', '0', '2', '24', '2', '0', NULL, '4', '2022-08-20 09:06:12', '2022-08-20 09:06:12'),
(7, '0', '0', '1000', '10', '0', '0', '0', '0', '0', '2', '24', '2', '0', NULL, '4', '2022-08-20 09:08:41', '2022-08-20 09:08:41'),
(8, '0', '0', '500', '10', '0', '0', '0', '0', '0', '2', '22', '2', '0', NULL, '18', '2022-08-20 11:10:30', '2022-08-20 11:10:30'),
(9, '0', '0', '500', '0', '0', '0', '0', '0', '0', '2', '22', '2', '0', NULL, '4', '2022-08-20 19:12:00', '2022-08-20 19:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_details`
--

CREATE TABLE `transfer_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Caps` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `Others` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `Trash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `Clean_Clear` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `Green_Colour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `location_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfer_details`
--

INSERT INTO `transfer_details` (`id`, `Caps`, `Others`, `Trash`, `Clean_Clear`, `Green_Colour`, `location_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '0', '0', '0', '10000', '7000', '2', NULL, '2022-08-20 06:47:05', '2022-08-20 19:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `factory_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `location_id`, `email_verified_at`, `password`, `role_id`, `factory_id`, `device_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Admin', 'Admin', '123455678', 'admin@admin.com', '2', NULL, '$2y$10$UVB5AImMoNvI3dyAM4MZFuxvKvxGeAH1G1jKnDdP9NrED1h0aaLxW', '2', '1', 'faoewGHGTkuuqzLPDn937k:APA91bH2Ycj942aSHJZMvuhH6dz7zfbNsfROPdYNWX6ZngqCb_yx9uIT0rOhhu_e61KNiRxJnQUURkIivzBkZhCR7hmMz2Ag6pL4oDodm6MpKvhveidBjzVRlY8yPx3MkECyQPrCxOvQ', NULL, '2022-06-06 23:34:57', '2022-08-20 11:01:13'),
(13, 'Tolu', 'Adejimi', '+2348105059613', 'toluadejimi@gmail.com', '21', NULL, '$2y$10$Wr8UtTGK/bOnzaYMX4oy9e34IQtVk4cvAwFRXYKk6i3yZrvcgFCwu', '2', NULL, 'ehYuW_fCSVCJ9N6uv060JP:APA91bHiO9XyNvnKlh2MFzDsfjKv8DyKBo9bowmZ8AWbYDvOG5GJho4kbl1JUIuZB2pshzBV_yATls5lm9uRtXROhLvBUgcSuoXvPnfV5ZEAwOlgbIxeITelkjAGuvhbWpvh59Jdkgst', NULL, '2022-08-08 02:15:30', '2022-08-15 04:43:06'),
(14, 'Ebuka', 'Miracle', '08122727272', 'mimi@gmail.com', '22', NULL, '$2y$10$QJmBTA4HOz6gI8QWtjONMei7/k1JLXWCLdmwaMTZPthjXSh4IkmPG', '2', NULL, 'f6iyob9jT-elgrruL489Ud:APA91bHFSa1d4Yl5OaOHx1LMZjZ-ygw7QR1l4rJqinPbP9TkO6nE4QyCBTF8vSaNqVnhCN03-3jhy1KELSK5-ZqB2lgO6AjZaQEVhKT4i_QcGNjQDRFDhvpPftsVtkAlx2Pzm_-Mk3NN', NULL, '2022-08-08 04:29:50', '2022-08-14 12:58:02'),
(15, 'Rukevbe', 'Gharoro-Akpojotor', '123456789', 'finance@kaltani.com', '2', NULL, '$2y$10$wDx3PaP9BwDvwZMRrH6zxeKbXR7Y.O9wUTCca6QU1eX.2o9i0jsHi', '1', NULL, 'f7xBrRvCSJmIVaX3FoOkhj:APA91bFEBWmQP086qnONODTk-hRh4-Pg1G-36Y85SbHOSU9d--iqyLrmAnwvt7wjG3NRpkhs9inb6-8xB_B_rRCUBe2molUg49CEfFyeZ5B8CqqFdNewtil_Czvdu336hAukwM739x-1', NULL, '2022-08-08 09:39:16', '2022-08-19 11:08:28'),
(16, 'Ginger', 'Jacob', '09034996898', 'tat@mail.com', '2', NULL, '$2y$10$1CFBXSACqpRkK8IUJWUUfuV/vIgNqdRV.xIR4D5vU6ywUR4cHrPOS', '1', NULL, '', NULL, '2022-08-14 17:30:23', '2022-08-14 17:30:23'),
(17, 'Test', 'test', '08105059716', 'test@mail.com', '23', NULL, '$2y$10$xpwEf8xZhkFSWvXyQvjI8OBb051yYpCB.loXVFU3d3owhloACcHJe', '2', NULL, 'faoewGHGTkuuqzLPDn937k:APA91bH2Ycj942aSHJZMvuhH6dz7zfbNsfROPdYNWX6ZngqCb_yx9uIT0rOhhu_e61KNiRxJnQUURkIivzBkZhCR7hmMz2Ag6pL4oDodm6MpKvhveidBjzVRlY8yPx3MkECyQPrCxOvQ', NULL, '2022-08-14 20:08:55', '2022-08-19 08:18:56'),
(18, 'john', 'Dowel', '6758764567', 'test2@gmail.com', '2', NULL, '$2y$10$jByz6LVrMC7CaQ8WwwlNUOXOFEjAtbnU4798EW5sNJ1DLXmA.Lhma', '2', NULL, 'faoewGHGTkuuqzLPDn937k:APA91bH2Ycj942aSHJZMvuhH6dz7zfbNsfROPdYNWX6ZngqCb_yx9uIT0rOhhu_e61KNiRxJnQUURkIivzBkZhCR7hmMz2Ag6pL4oDodm6MpKvhveidBjzVRlY8yPx3MkECyQPrCxOvQ', NULL, '2022-08-20 11:08:05', '2022-08-20 19:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '4', '2022-07-24 23:11:44', '2022-07-24 23:15:20'),
(2, 'Operator', '4', '2022-07-24 23:34:17', '2022-07-24 23:34:17'),
(3, 'Agent', '4', '2022-08-08 09:51:57', '2022-08-08 09:51:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bailed_details`
--
ALTER TABLE `bailed_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bailed_totals`
--
ALTER TABLE `bailed_totals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bailings`
--
ALTER TABLE `bailings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bailing_items`
--
ALTER TABLE `bailing_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collected_details`
--
ALTER TABLE `collected_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factories`
--
ALTER TABLE `factories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factory_totals`
--
ALTER TABLE `factory_totals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `recycles`
--
ALTER TABLE `recycles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sorted_totals`
--
ALTER TABLE `sorted_totals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sorted_transfers`
--
ALTER TABLE `sorted_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sortings`
--
ALTER TABLE `sortings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sort_details`
--
ALTER TABLE `sort_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `totals`
--
ALTER TABLE `totals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_details`
--
ALTER TABLE `transfer_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bailed_details`
--
ALTER TABLE `bailed_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bailed_totals`
--
ALTER TABLE `bailed_totals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bailings`
--
ALTER TABLE `bailings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bailing_items`
--
ALTER TABLE `bailing_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `collected_details`
--
ALTER TABLE `collected_details`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `factories`
--
ALTER TABLE `factories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `factory_totals`
--
ALTER TABLE `factory_totals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recycles`
--
ALTER TABLE `recycles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sorted_totals`
--
ALTER TABLE `sorted_totals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sorted_transfers`
--
ALTER TABLE `sorted_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sortings`
--
ALTER TABLE `sortings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sort_details`
--
ALTER TABLE `sort_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `totals`
--
ALTER TABLE `totals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transfer_details`
--
ALTER TABLE `transfer_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
