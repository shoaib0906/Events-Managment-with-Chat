-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2020 at 07:50 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventschat`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Regular Seating', '2020-09-01 09:08:30', '2020-09-01 09:08:30', NULL),
(2, 'Coffee Break', '2020-09-01 09:08:30', '2020-09-01 09:08:30', NULL),
(3, 'Custom Badge', '2020-09-01 09:08:30', '2020-09-01 09:08:30', NULL),
(4, 'Community Access', '2020-09-01 09:08:30', '2020-09-01 09:08:30', NULL),
(5, 'Workshop Access', '2020-09-01 09:08:30', '2020-09-01 09:08:30', NULL),
(6, 'After Party', '2020-09-01 09:08:30', '2020-09-01 09:08:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `amenity_price`
--

CREATE TABLE `amenity_price` (
  `price_id` int(10) UNSIGNED NOT NULL,
  `amenity_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenity_price`
--

INSERT INTO `amenity_price` (`price_id`, `amenity_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tempore sed culpa vitae ab.', 'Repudiandae ut minus fugit quis tempora id. A blanditiis ut voluptate ut veniam. Accusamus nihil necessitatibus quos quia. Et occaecati voluptatum explicabo eos.', '2020-09-01 09:08:29', '2020-09-01 09:08:29', NULL),
(2, 'Accusantium quia nisi rerum ab ad placeat itaque.', 'Laudantium dicta qui nesciunt ratione architecto qui. Ut placeat hic voluptas. Laborum est ipsum dolores earum consequatur. Illo impedit libero repudiandae delectus cum velit eum.', '2020-09-01 09:08:30', '2020-09-01 09:08:30', NULL),
(3, 'Voluptatum sapiente consequuntur perferendis delectus officiis sed.', 'Nihil corporis dolores nostrum nam voluptatum iusto dignissimos. Ut veritatis iste consequuntur laudantium iste quaerat voluptatibus. Autem et ut quia eius voluptatem ratione quia. Beatae harum ipsum consequatur quae commodi numquam.', '2020-09-01 09:08:30', '2020-09-01 09:08:30', NULL),
(4, 'Impedit nihil cupiditate maxime inventore maiores.', 'Ut placeat magnam perferendis pariatur aliquid adipisci reiciendis. Modi eligendi doloribus omnis id. Animi earum porro reiciendis totam quis sapiente. Blanditiis voluptas ut sunt qui a provident perferendis.', '2020-09-01 09:08:30', '2020-09-01 09:08:30', NULL),
(5, 'Numquam qui officia autem delectus est velit officia.', 'Tenetur odit dolores minus debitis nostrum. Qui earum vitae aperiam illo et magni atque. Amet vero repudiandae quidem fugiat non omnis molestias. Totam rerum modi laborum ut.', '2020-09-01 09:08:30', '2020-09-01 09:08:30', NULL),
(6, 'Rerum sit nesciunt et voluptate labore.', 'Pariatur et aut commodi reiciendis. Modi voluptatem et voluptatem quia fugit eum. Dolorum illo qui dolorum suscipit voluptatem ea.', '2020-09-01 09:08:30', '2020-09-01 09:08:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Event', '2020-09-01 09:08:21', '2020-09-01 09:08:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `address`, `description`, `rating`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hotel 1', NULL, '0.4 Mile from the Venue', 5, '2020-09-01 09:08:19', '2020-09-01 09:08:19', NULL),
(2, 'Hotel 2', NULL, '0.5 Mile from the Venue', 4, '2020-09-01 09:08:19', '2020-09-01 09:08:19', NULL),
(3, 'Hotel 3', NULL, '0.6 Mile from the Venue', 3, '2020-09-01 09:08:20', '2020-09-01 09:08:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Speaker', 1, 'photo', '1', '1.jpg', 'image/jpeg', 'public', 44376, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 1, '2020-09-01 09:08:10', '2020-09-01 09:08:10'),
(2, 'App\\Speaker', 2, 'photo', '2', '2.jpg', 'image/jpeg', 'public', 49380, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 2, '2020-09-01 09:08:11', '2020-09-01 09:08:11'),
(3, 'App\\Speaker', 3, 'photo', '3', '3.jpg', 'image/jpeg', 'public', 14278, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 3, '2020-09-01 09:08:11', '2020-09-01 09:08:12'),
(4, 'App\\Speaker', 4, 'photo', '4', '4.jpg', 'image/jpeg', 'public', 53251, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 4, '2020-09-01 09:08:12', '2020-09-01 09:08:12'),
(5, 'App\\Speaker', 5, 'photo', '5', '5.jpg', 'image/jpeg', 'public', 30301, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 5, '2020-09-01 09:08:12', '2020-09-01 09:08:13'),
(6, 'App\\Speaker', 6, 'photo', '6', '6.jpg', 'image/jpeg', 'public', 16133, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 6, '2020-09-01 09:08:13', '2020-09-01 09:08:13'),
(7, 'App\\Venue', 1, 'photos', '1', '1.jpg', 'image/jpeg', 'public', 124351, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 7, '2020-09-01 09:08:14', '2020-09-01 09:08:15'),
(8, 'App\\Venue', 1, 'photos', '2', '2.jpg', 'image/jpeg', 'public', 47098, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 8, '2020-09-01 09:08:15', '2020-09-01 09:08:15'),
(9, 'App\\Venue', 1, 'photos', '3', '3.jpg', 'image/jpeg', 'public', 157926, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 9, '2020-09-01 09:08:16', '2020-09-01 09:08:16'),
(10, 'App\\Venue', 1, 'photos', '4', '4.jpg', 'image/jpeg', 'public', 101273, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 10, '2020-09-01 09:08:16', '2020-09-01 09:08:17'),
(11, 'App\\Venue', 1, 'photos', '5', '5.jpg', 'image/jpeg', 'public', 152944, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 11, '2020-09-01 09:08:17', '2020-09-01 09:08:17'),
(12, 'App\\Venue', 1, 'photos', '6', '6.jpg', 'image/jpeg', 'public', 134709, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 12, '2020-09-01 09:08:17', '2020-09-01 09:08:18'),
(13, 'App\\Venue', 1, 'photos', '7', '7.jpg', 'image/jpeg', 'public', 109640, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 13, '2020-09-01 09:08:18', '2020-09-01 09:08:18'),
(14, 'App\\Venue', 1, 'photos', '8', '8.jpg', 'image/jpeg', 'public', 57275, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 14, '2020-09-01 09:08:18', '2020-09-01 09:08:19'),
(15, 'App\\Hotel', 1, 'photo', '1', '1.jpg', 'image/jpeg', 'public', 176612, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 15, '2020-09-01 09:08:19', '2020-09-01 09:08:19'),
(16, 'App\\Hotel', 2, 'photo', '2', '2.jpg', 'image/jpeg', 'public', 207771, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 16, '2020-09-01 09:08:20', '2020-09-01 09:08:20'),
(17, 'App\\Hotel', 3, 'photo', '3', '3.jpg', 'image/jpeg', 'public', 164509, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 17, '2020-09-01 09:08:20', '2020-09-01 09:08:21'),
(18, 'App\\Gallery', 1, 'photos', '1', '1.jpg', 'image/jpeg', 'public', 85253, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 18, '2020-09-01 09:08:21', '2020-09-01 09:08:21'),
(19, 'App\\Gallery', 1, 'photos', '2', '2.jpg', 'image/jpeg', 'public', 107817, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 19, '2020-09-01 09:08:22', '2020-09-01 09:08:22'),
(20, 'App\\Gallery', 1, 'photos', '3', '3.jpg', 'image/jpeg', 'public', 182158, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 20, '2020-09-01 09:08:22', '2020-09-01 09:08:23'),
(21, 'App\\Gallery', 1, 'photos', '4', '4.jpg', 'image/jpeg', 'public', 112256, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 21, '2020-09-01 09:08:23', '2020-09-01 09:08:23'),
(22, 'App\\Gallery', 1, 'photos', '5', '5.jpg', 'image/jpeg', 'public', 127200, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 22, '2020-09-01 09:08:23', '2020-09-01 09:08:24'),
(23, 'App\\Gallery', 1, 'photos', '6', '6.jpg', 'image/jpeg', 'public', 57440, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 23, '2020-09-01 09:08:24', '2020-09-01 09:08:24'),
(24, 'App\\Gallery', 1, 'photos', '7', '7.jpg', 'image/jpeg', 'public', 64459, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 24, '2020-09-01 09:08:24', '2020-09-01 09:08:25'),
(25, 'App\\Gallery', 1, 'photos', '8', '8.jpg', 'image/jpeg', 'public', 88287, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 25, '2020-09-01 09:08:25', '2020-09-01 09:08:25'),
(26, 'App\\Sponsor', 1, 'logo', '1', '1.png', 'image/png', 'public', 3994, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 26, '2020-09-01 09:08:25', '2020-09-01 09:08:26'),
(27, 'App\\Sponsor', 2, 'logo', '2', '2.png', 'image/png', 'public', 2749, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 27, '2020-09-01 09:08:26', '2020-09-01 09:08:26'),
(28, 'App\\Sponsor', 3, 'logo', '3', '3.png', 'image/png', 'public', 3281, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 28, '2020-09-01 09:08:27', '2020-09-01 09:08:27'),
(29, 'App\\Sponsor', 4, 'logo', '4', '4.png', 'image/png', 'public', 2201, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 29, '2020-09-01 09:08:27', '2020-09-01 09:08:27'),
(30, 'App\\Sponsor', 5, 'logo', '5', '5.png', 'image/png', 'public', 3748, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 30, '2020-09-01 09:08:27', '2020-09-01 09:08:28'),
(31, 'App\\Sponsor', 6, 'logo', '6', '6.png', 'image/png', 'public', 2150, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 31, '2020-09-01 09:08:28', '2020-09-01 09:08:28'),
(32, 'App\\Sponsor', 7, 'logo', '7', '7.png', 'image/png', 'public', 2195, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 32, '2020-09-01 09:08:29', '2020-09-01 09:08:29'),
(33, 'App\\Sponsor', 8, 'logo', '8', '8.png', 'image/png', 'public', 1984, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 33, '2020-09-01 09:08:29', '2020-09-01 09:08:29');

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_09_24_000000_create_media_table', 1),
(8, '2019_09_24_000001_create_permissions_table', 1),
(9, '2019_09_24_000002_create_faqs_table', 1),
(10, '2019_09_24_000003_create_prices_table', 1),
(11, '2019_09_24_000004_create_users_table', 1),
(12, '2019_09_24_000005_create_amenities_table', 1),
(13, '2019_09_24_000006_create_settings_table', 1),
(14, '2019_09_24_000007_create_speakers_table', 1),
(15, '2019_09_24_000008_create_schedules_table', 1),
(16, '2019_09_24_000009_create_roles_table', 1),
(17, '2019_09_24_000010_create_venues_table', 1),
(18, '2019_09_24_000011_create_hotels_table', 1),
(19, '2019_09_24_000012_create_galleries_table', 1),
(20, '2019_09_24_000013_create_sponsors_table', 1),
(21, '2019_09_24_000014_create_amenity_price_pivot_table', 1),
(22, '2019_09_24_000015_create_role_user_pivot_table', 1),
(23, '2019_09_24_000016_create_permission_role_pivot_table', 1),
(24, '2019_09_24_000017_add_relationship_fields_to_schedules_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(2, 'permission_create', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(3, 'permission_edit', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(4, 'permission_show', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(5, 'permission_delete', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(6, 'permission_access', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(7, 'role_create', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(8, 'role_edit', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(9, 'role_show', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(10, 'role_delete', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(11, 'role_access', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(12, 'user_create', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(13, 'user_edit', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(14, 'user_show', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(15, 'user_delete', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(16, 'user_access', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(17, 'setting_create', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(18, 'setting_edit', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(19, 'setting_show', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(20, 'setting_delete', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(21, 'setting_access', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(22, 'speaker_create', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(23, 'speaker_edit', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(24, 'speaker_show', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(25, 'speaker_delete', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(26, 'speaker_access', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(27, 'schedule_create', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(28, 'schedule_edit', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(29, 'schedule_show', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(30, 'schedule_delete', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(31, 'schedule_access', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(32, 'venue_create', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(33, 'venue_edit', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(34, 'venue_show', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(35, 'venue_delete', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(36, 'venue_access', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(37, 'hotel_create', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(38, 'hotel_edit', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(39, 'hotel_show', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(40, 'hotel_delete', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(41, 'hotel_access', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(42, 'gallery_create', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(43, 'gallery_edit', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(44, 'gallery_show', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(45, 'gallery_delete', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(46, 'gallery_access', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(47, 'sponsor_create', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(48, 'sponsor_edit', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(49, 'sponsor_show', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(50, 'sponsor_delete', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(51, 'sponsor_access', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(52, 'faq_create', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(53, 'faq_edit', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(54, 'faq_show', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(55, 'faq_delete', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(56, 'faq_access', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(57, 'amenity_create', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(58, 'amenity_edit', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(59, 'amenity_show', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(60, 'amenity_delete', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(61, 'amenity_access', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(62, 'price_create', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(63, 'price_edit', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(64, 'price_show', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(65, 'price_delete', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(66, 'price_access', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 46),
(2, 47),
(2, 48),
(2, 49),
(2, 50),
(2, 51),
(2, 52),
(2, 53),
(2, 54),
(2, 55),
(2, 56),
(2, 57),
(2, 58),
(2, 59),
(2, 60),
(2, 61),
(2, 62),
(2, 63),
(2, 64),
(2, 65),
(2, 66);

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `name`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Standard Access', '150.00', '2020-09-01 09:08:30', '2020-09-01 09:08:30', NULL),
(2, 'Pro Access', '250.00', '2020-09-01 09:08:30', '2020-09-01 09:08:30', NULL),
(3, 'Premium Access', '350.00', '2020-09-01 09:08:30', '2020-09-01 09:08:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL),
(2, 'User', '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `day_number` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `speaker_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `day_number`, `start_time`, `title`, `subtitle`, `created_at`, `updated_at`, `deleted_at`, `speaker_id`) VALUES
(1, 1, '09:30:00', 'Registration', 'Fugit voluptas iusto maiores temporibus autem numquam magnam.', '2020-09-01 09:08:13', '2020-09-01 09:08:13', NULL, NULL),
(2, 1, '10:00:00', 'Keynote', 'Facere provident incidunt quos voluptas.', '2020-09-01 09:08:13', '2020-09-01 09:08:13', NULL, 1),
(3, 1, '11:00:00', 'Et voluptatem iusto dicta nobis.', 'Maiores dignissimos neque qui cum accusantium ut sit sint inventore.', '2020-09-01 09:08:13', '2020-09-01 09:08:13', NULL, 2),
(4, 1, '12:00:00', 'Explicabo et rerum quis et ut ea.', 'Veniam accusantium laborum nihil eos eaque accusantium aspernatur.', '2020-09-01 09:08:13', '2020-09-01 09:08:13', NULL, 3),
(5, 1, '14:00:00', 'Qui non qui vel amet culpa sequi.', 'Nam ex distinctio voluptatem doloremque suscipit iusto.', '2020-09-01 09:08:13', '2020-09-01 09:08:13', NULL, 4),
(6, 1, '15:00:00', 'Quos ratione neque expedita asperiores.', 'Eligendi quo eveniet est nobis et ad temporibus odio quo.', '2020-09-01 09:08:14', '2020-09-01 09:08:14', NULL, 5),
(7, 1, '16:00:00', 'Quo qui praesentium nesciunt', 'Voluptatem et alias dolorum est aut sit enim neque veritatis.', '2020-09-01 09:08:14', '2020-09-01 09:08:14', NULL, 6),
(8, 2, '10:00:00', 'Libero corrupti explicabo itaque.', 'Facere provident incidunt quos voluptas.', '2020-09-01 09:08:14', '2020-09-01 09:08:14', NULL, 1),
(9, 2, '11:00:00', 'Et voluptatem iusto dicta nobis.', 'Maiores dignissimos neque qui cum accusantium ut sit sint inventore.', '2020-09-01 09:08:14', '2020-09-01 09:08:14', NULL, 2),
(10, 2, '12:00:00', 'Explicabo et rerum quis et ut ea.', 'Veniam accusantium laborum nihil eos eaque accusantium aspernatur.', '2020-09-01 09:08:14', '2020-09-01 09:08:14', NULL, 3),
(11, 2, '14:00:00', 'Qui non qui vel amet culpa sequi.', 'Nam ex distinctio voluptatem doloremque suscipit iusto.', '2020-09-01 09:08:14', '2020-09-01 09:08:14', NULL, 4),
(12, 2, '15:00:00', 'Quos ratione neque expedita asperiores.', 'Eligendi quo eveniet est nobis et ad temporibus odio quo.', '2020-09-01 09:08:14', '2020-09-01 09:08:14', NULL, 5),
(13, 2, '16:00:00', 'Quo qui praesentium nesciunt', 'Voluptatem et alias dolorum est aut sit enim neque veritatis.', '2020-09-01 09:08:14', '2020-09-01 09:08:14', NULL, 6),
(14, 3, '10:00:00', 'Et voluptatem iusto dicta nobis.', 'Maiores dignissimos neque qui cum accusantium ut sit sint inventore.', '2020-09-01 09:08:14', '2020-09-01 09:08:14', NULL, 2),
(15, 3, '11:00:00', 'Explicabo et rerum quis et ut ea.', 'Veniam accusantium laborum nihil eos eaque accusantium aspernatur.', '2020-09-01 09:08:14', '2020-09-01 09:08:14', NULL, 3),
(16, 3, '12:00:00', 'Libero corrupti explicabo itaque.', 'Facere provident incidunt quos voluptas.', '2020-09-01 09:08:14', '2020-09-01 09:08:14', NULL, 1),
(17, 3, '14:00:00', 'Qui non qui vel amet culpa sequi.', 'Nam ex distinctio voluptatem doloremque suscipit iusto.', '2020-09-01 09:08:14', '2020-09-01 09:08:14', NULL, 4),
(18, 3, '15:00:00', 'Quos ratione neque expedita asperiores.', 'Eligendi quo eveniet est nobis et ad temporibus odio quo.', '2020-09-01 09:08:14', '2020-09-01 09:08:14', NULL, 5),
(19, 3, '16:00:00', 'Quo qui praesentium nesciunt', 'Voluptatem et alias dolorum est aut sit enim neque veritatis.', '2020-09-01 09:08:14', '2020-09-01 09:08:14', NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'title', 'The Annual<br><span>Marketing</span> Conference', '2020-09-01 09:08:08', '2020-09-01 09:08:08', NULL),
(2, 'subtitle', '10-12 December, Downtown Conference Center, New York', '2020-09-01 09:08:09', '2020-09-01 09:08:09', NULL),
(3, 'youtube_link', 'https://www.youtube.com/watch?v=jDDaplaOz7Q', '2020-09-01 09:08:09', '2020-09-01 09:08:09', NULL),
(4, 'about_description', 'Sed nam ut dolor qui repellendus iusto odit. Possimus inventore eveniet accusamus error amet eius aut accusantium et. Non odit consequatur repudiandae sequi ea odio molestiae. Enim possimus sunt inventore in est ut optio sequi unde.', '2020-09-01 09:08:09', '2020-09-01 09:08:09', NULL),
(5, 'about_where', 'Downtown Conference Center, New York', '2020-09-01 09:08:09', '2020-09-01 09:08:09', NULL),
(6, 'about_when', 'Monday to Wednesday<br>10-12 December', '2020-09-01 09:08:09', '2020-09-01 09:08:09', NULL),
(7, 'contact_address', 'A108 Adam Street, NY 535022, USA', '2020-09-01 09:08:09', '2020-09-01 09:08:09', NULL),
(8, 'contact_phone', '+1 5589 55488 55', '2020-09-01 09:08:09', '2020-09-01 09:08:09', NULL),
(9, 'contact_email', 'info@example.com', '2020-09-01 09:08:09', '2020-09-01 09:08:09', NULL),
(10, 'footer_description', 'In alias aperiam. Placeat tempore facere. Officiis voluptate ipsam vel eveniet est dolor et totam porro. Perspiciatis ad omnis fugit molestiae recusandae possimus. Aut consectetur id quis. In inventore consequatur ad voluptate cupiditate debitis accusamus repellat cumque.', '2020-09-01 09:08:09', '2020-09-01 09:08:09', NULL),
(11, 'footer_address', 'A108 Adam Street <br> New York, NY 535022<br> United States ', '2020-09-01 09:08:09', '2020-09-01 09:08:09', NULL),
(12, 'footer_twitter', '#', '2020-09-01 09:08:09', '2020-09-01 09:08:09', NULL),
(13, 'footer_facebook', '#', '2020-09-01 09:08:09', '2020-09-01 09:08:09', NULL),
(14, 'footer_instagram', '#', '2020-09-01 09:08:09', '2020-09-01 09:08:09', NULL),
(15, 'footer_googleplus', '#', '2020-09-01 09:08:09', '2020-09-01 09:08:09', NULL),
(16, 'footer_linkedin', '#', '2020-09-01 09:08:09', '2020-09-01 09:08:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `speakers`
--

CREATE TABLE `speakers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `speakers`
--

INSERT INTO `speakers` (`id`, `name`, `description`, `twitter`, `facebook`, `linkedin`, `full_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Brenden Legros', 'Quas alias incidunt', '#', '#', '#', 'Voluptas maxime et vel officiis dolorem est quaerat. Deleniti autem aut sunt voluptas. Quia earum deserunt dicta quia eveniet. Voluptatem debitis unde aut molestias maiores rem ea.', '2020-09-01 09:08:09', '2020-09-01 09:08:09', NULL),
(2, 'Hubert Hirthe', 'Consequuntur odio aut', '#', '#', '#', 'Eum sunt tempora cumque et et ut sit. Aliquam quo voluptatem qui distinctio cum dignissimos dolorem consequuntur. Aut est officia quod odio nobis ut.', '2020-09-01 09:08:10', '2020-09-01 09:08:10', NULL),
(3, 'Cole Emmerich', 'Fugiat laborum et', '#', '#', '#', 'Sed architecto accusantium sint sint assumenda dolor natus. Ipsam magni hic placeat dolor inventore et ut. Ab rem id ratione accusantium. Eaque magni minima ut quae error quod distinctio.', '2020-09-01 09:08:11', '2020-09-01 09:08:11', NULL),
(4, 'Jack Christiansen', 'Debitis iure vero', '#', '#', '#', 'Autem exercitationem ipsam voluptas perspiciatis eligendi ut delectus. Fugit itaque qui sit distinctio ratione iure fugit. Rerum et magni alias veniam corrupti veniam et.', '2020-09-01 09:08:12', '2020-09-01 09:08:12', NULL),
(5, 'Alejandrin Littel', 'Qui molestiae natus', '#', '#', '#', 'Autem molestiae voluptatum corporis. Saepe numquam molestiae eaque aliquam libero eveniet reprehenderit ut. Recusandae similique sunt voluptatibus. Hic voluptatum deserunt quia non. Asperiores aut provident similique inventore consectetur officia.', '2020-09-01 09:08:12', '2020-09-01 09:08:12', NULL),
(6, 'Willow Trantow', 'Non autem dicta', '#', '#', '#', 'Non est veniam consequatur. Praesentium quam praesentium magnam doloribus culpa velit reprehenderit. Aut ipsam nemo optio soluta. Distinctio earum officiis et optio quasi ut.', '2020-09-01 09:08:13', '2020-09-01 09:08:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`id`, `name`, `link`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Strider', '#', '2020-09-01 09:08:25', '2020-09-01 09:08:25', NULL),
(2, 'Runtastic', '#', '2020-09-01 09:08:26', '2020-09-01 09:08:26', NULL),
(3, 'EditShare', '#', '2020-09-01 09:08:26', '2020-09-01 09:08:26', NULL),
(4, 'InFocus', '#', '2020-09-01 09:08:27', '2020-09-01 09:08:27', NULL),
(5, 'gategroup', '#', '2020-09-01 09:08:27', '2020-09-01 09:08:27', NULL),
(6, 'Cadent', '#', '2020-09-01 09:08:28', '2020-09-01 09:08:28', NULL),
(7, 'Ceph', '#', '2020-09-01 09:08:28', '2020-09-01 09:08:28', NULL),
(8, 'Alitalia', '#', '2020-09-01 09:08:29', '2020-09-01 09:08:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$7Xn/8bPJ89ypj0cIxwoH9OOXnbK/.9xrLfFh2G4LUSRkw6j7Agn0K', NULL, '2019-09-24 13:16:02', '2019-09-24 13:16:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `name`, `address`, `latitude`, `longitude`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Downtown Conference Center, New York', '157 William St, New York, NY 10038', '40.7101282', '-74.0062269', 'Iste nobis eum sapiente sunt enim dolores labore accusantium autem. Cumque beatae ipsam. Est quae sit qui voluptatem corporis velit. Qui maxime accusamus possimus. Consequatur sequi et ea suscipit enim nesciunt quia velit.', '2020-09-01 09:08:14', '2020-09-01 09:08:14', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenity_price`
--
ALTER TABLE `amenity_price`
  ADD KEY `price_id_fk_384063` (`price_id`),
  ADD KEY `amenity_id_fk_384063` (`amenity_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_383833` (`role_id`),
  ADD KEY `permission_id_fk_383833` (`permission_id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_383842` (`user_id`),
  ADD KEY `role_id_fk_383842` (`role_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `speaker_fk_383954` (`speaker_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speakers`
--
ALTER TABLE `speakers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `speakers`
--
ALTER TABLE `speakers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `amenity_price`
--
ALTER TABLE `amenity_price`
  ADD CONSTRAINT `amenity_id_fk_384063` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `price_id_fk_384063` FOREIGN KEY (`price_id`) REFERENCES `prices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_383833` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_383833` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_383842` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_383842` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `speaker_fk_383954` FOREIGN KEY (`speaker_id`) REFERENCES `speakers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
