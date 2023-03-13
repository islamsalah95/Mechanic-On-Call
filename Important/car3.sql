-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2023 at 03:53 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car3`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminstrations`
--

CREATE TABLE `adminstrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `code` smallint(6) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `type` varchar(5) NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adminstrations`
--

INSERT INTO `adminstrations` (`id`, `name`, `email`, `email_verified_at`, `password`, `code`, `remember_token`, `created_at`, `updated_at`, `type`) VALUES
(2, 'admin', 'admin@gmail.com', '2023-02-20 20:45:46', '$2y$10$8do9.weooiH6czOy2Mv9Ju1aaKYZ2m8j6IFqtOLh2hzUwjG6XVXky', NULL, NULL, '2023-02-20 20:35:58', '2023-02-26 14:32:18', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `created_at`, `updated_at`) VALUES
(1, 'giza', '2023-02-20 00:46:45', '2023-02-20 00:46:45'),
(2, 'fayoum', '2023-02-21 21:01:24', '2023-02-21 21:01:24'),
(3, 'minia', '2023-02-21 21:01:24', '2023-02-21 21:01:24'),
(4, 'assuit', '2023-02-22 10:31:32', '2023-02-22 10:31:32'),
(5, 'sohag', '2023-03-01 22:30:42', '2023-03-01 22:30:42'),
(11, 'domiat', '2023-03-02 15:47:12', '2023-03-02 15:47:12'),
(12, 'cxcxc', '2023-03-02 18:03:23', '2023-03-02 18:03:23'),
(13, 'tttttt', '2023-03-06 03:26:41', '2023-03-06 03:26:41'),
(14, 'dssd', '2023-03-06 03:33:09', '2023-03-06 03:33:09'),
(15, 'ddd', '2023-03-06 08:48:51', '2023-03-06 08:48:51'),
(16, 'mansoara', '2023-03-06 14:58:56', '2023-03-06 14:58:56'),
(17, 'mansoa', '2023-03-08 18:38:53', '2023-03-08 18:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `mobile`, `message`, `created_at`, `updated_at`) VALUES
(14, 'vcv', 1112345678, 'vcv', '2023-03-08 02:04:08', '2023-03-08 02:04:08'),
(15, 'vcv', 1112345678, 'vcv', '2023-03-08 02:04:08', '2023-03-08 02:04:08'),
(16, 'df', 1112345678, 'fdf', '2023-03-08 02:05:25', '2023-03-08 02:05:25'),
(17, 'cxxcc', 1112345678, 'cxxc', '2023-03-08 18:09:05', '2023-03-08 18:09:05'),
(18, 'cv', 1112345678, 'fdfdf', '2023-03-08 18:32:13', '2023-03-08 18:32:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `micanics`
--

CREATE TABLE `micanics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `nid_img` varchar(255) NOT NULL,
  `cert_img` varchar(255) DEFAULT NULL,
  `personal_img` varchar(250) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `code` int(5) DEFAULT NULL,
  `status_working` enum('accept','underInvestigation','block') NOT NULL DEFAULT 'underInvestigation',
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(7) NOT NULL DEFAULT 'micanic',
  `status` enum('Busy','Avilable') NOT NULL DEFAULT 'Avilable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `micanics`
--

INSERT INTO `micanics` (`id`, `name`, `nid_img`, `cert_img`, `personal_img`, `email`, `email_verified_at`, `password`, `code`, `status_working`, `city_id`, `remember_token`, `created_at`, `updated_at`, `type`, `status`) VALUES
(14, 'NMicanic', 'http://127.0.0.1:8000/assets/images/omar-lopez-9w20MZ0lsK8-unsplash.jpg', 'http://127.0.0.1:8000/assets/images/kate-skumen-PJRabkuH3_Q-unsplash.jpg', 'http://127.0.0.1:8000/assets/images/Capture3.PNG', 'NMicanic@gmail.com', '2023-02-08 20:35:57', '$2y$10$sawjeGJXxtxQFgiI1D1n5OkGG0lRvgZ/lVe8gQiqJ6WfnVNf5PpOq', 73227, 'accept', 1, NULL, '2023-02-28 18:34:36', '2023-03-08 18:57:01', 'micanic', 'Avilable'),
(16, 'micanic2', 'NMicanic', 'NMicanic', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'NMicanic2@gmail.com', '2023-02-08 20:35:57', '$2y$10$sawjeGJXxtxQFgiI1D1n5OkGG0lRvgZ/lVe8gQiqJ6WfnVNf5PpOq', 73227, 'accept', 2, NULL, '2023-02-28 18:34:36', '2023-03-05 13:25:05', 'micanic', 'Avilable'),
(24, 'xzx', 'http://127.0.0.1:8000/assets/imagesHow to Take Screenshots on Windows 10 and Windows 11 - Google Chrome 2_24_2023 1_19_13 AM.png', 'http://127.0.0.1:8000/assets/imagesيسيسي.PNG', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'adminstrations@gmail.com', NULL, '$2y$10$3Wms2b2YMckf1fTNzUgEnucjjbsuMuBI6DdvMyynaNMA0XOr4w8mS', 39680, 'accept', 4, NULL, '2023-03-03 21:57:32', '2023-03-03 22:16:25', 'micanic', 'Avilable'),
(25, 'xzx', 'http://127.0.0.1:8000/assets/imagesHow to Take Screenshots on Windows 10 and Windows 11 - Google Chrome 2_24_2023 1_19_13 AM.png', 'http://127.0.0.1:8000/assets/imagesيسيسي.PNG', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'adminstrations@gmail.com', NULL, '$2y$10$S1mOwkLIdNqX6p4YqXHGcuTRmq/v8efq6m17p8LuZxwBclvm2Y4d.', 44960, 'accept', 4, NULL, '2023-03-03 21:57:39', '2023-03-06 03:17:58', 'micanic', 'Avilable'),
(26, 'Micanic', 'http://127.0.0.1:8000/assets/imageskate-skumen-PJRabkuH3_Q-unsplash.jpg', 'http://127.0.0.1:8000/assets/imagesomar-lopez-9w20MZ0lsK8-unsplash.jpg', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'TestMicanic8889@gmail.com', NULL, '$2y$10$ko0lxznR13gQ7W6CyZC2Luy8R05eHiSYXXJ3SAM47GqKLa/kQrMXm', 43081, 'accept', 1, NULL, '2023-03-03 21:58:36', '2023-03-03 22:16:32', 'micanic', 'Avilable'),
(27, 'Micanic', 'http://127.0.0.1:8000/assets/imageskate-skumen-PJRabkuH3_Q-unsplash.jpg', 'http://127.0.0.1:8000/assets/imagesomar-lopez-9w20MZ0lsK8-unsplash.jpg', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'TestMicanic8889@gmail.com', NULL, '$2y$10$f42kyPofhbc4AmkRQM67J.vzjXLk6rKhmVZLrLumbuXWwADSYW/6C', 79849, 'accept', 1, NULL, '2023-03-03 21:58:43', '2023-03-05 13:00:29', 'micanic', 'Avilable'),
(28, 'Micanic', 'http://127.0.0.1:8000/assets/imageskate-skumen-PJRabkuH3_Q-unsplash.jpg', 'http://127.0.0.1:8000/assets/imagesomar-lopez-9w20MZ0lsK8-unsplash.jpg', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'TestMicanic8889@gmail.com', NULL, '$2y$10$Yv25R1oMPhPd6k70zLz6gOFW2./1.5LIN01v4J/fguyPhaA1Sy0P.', 93558, 'accept', 1, NULL, '2023-03-03 21:59:28', '2023-03-03 22:16:37', 'micanic', 'Avilable'),
(29, 'Micanic', 'http://127.0.0.1:8000/assets/imageskate-skumen-PJRabkuH3_Q-unsplash.jpg', 'http://127.0.0.1:8000/assets/imagesomar-lopez-9w20MZ0lsK8-unsplash.jpg', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'TestMicanic8889@gmail.com', NULL, '$2y$10$lK.smP1AsPSY.Nv.DoAvHOog518cZLdOOXyJNsH75L/zPcPeMC9gq', 48826, 'accept', 1, NULL, '2023-03-03 21:59:52', '2023-03-06 03:17:53', 'micanic', 'Avilable'),
(30, 'Micanic', 'http://127.0.0.1:8000/assets/imageskate-skumen-PJRabkuH3_Q-unsplash.jpg', 'http://127.0.0.1:8000/assets/imagesomar-lopez-9w20MZ0lsK8-unsplash.jpg', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'TestMicanic8889@gmail.com', NULL, '$2y$10$b6.9dbgofIbcZstc3vJmFOqzNLj9G.5tHq00lGWuG2EehtysTX9YS', 32272, 'accept', 1, NULL, '2023-03-03 22:03:32', '2023-03-06 02:57:55', 'micanic', 'Avilable'),
(31, 'Micanic', 'http://127.0.0.1:8000/assets/imageskate-skumen-PJRabkuH3_Q-unsplash.jpg', 'http://127.0.0.1:8000/assets/imagesomar-lopez-9w20MZ0lsK8-unsplash.jpg', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'TestMicanic8889@gmail.com', NULL, '$2y$10$XS7AtnNKsCBg5zaDR3ZsrOjNGeCySseQazKxxEQ7CLdC/ZT2A84tm', 12087, 'accept', 1, NULL, '2023-03-03 22:06:27', '2023-03-03 22:16:43', 'micanic', 'Avilable'),
(32, 'cvcvcv', 'http://127.0.0.1:8000/assets/imagesيسيسي.PNG', 'http://127.0.0.1:8000/assets/imagesomar-lopez-9w20MZ0lsK8-unsplash.jpg', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'adminstrations@gmail.com', NULL, '$2y$10$SnV07nCocHTwLT/86ySEIOy3.rmfAG.NX0breYGhoy0EAPwHvk6vG', 27454, 'accept', 1, NULL, '2023-03-03 22:08:16', '2023-03-05 13:01:43', 'micanic', 'Avilable'),
(33, 'Micancs9999', 'http://127.0.0.1:8000/assets/imagesdownload.jpg', 'http://127.0.0.1:8000/assets/imagesomar-lopez-9w20MZ0lsK8-unsplash.jpg', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'Micancs9999@gmail.com', '2023-02-28 23:56:30', '$2y$10$g//48K4WZO1q2qHZ7C.1juzAZfQsWOsAnAb/wlfGIE0136IY2nm/y', 82692, 'accept', 16, NULL, '2023-03-06 21:55:11', '2023-03-06 21:57:08', 'micanic', 'Avilable'),
(34, 'Micanc123', 'http://127.0.0.1:8000/assets/imagesdownload.jpg', 'http://127.0.0.1:8000/assets/imagesomar-lopez-9w20MZ0lsK8-unsplash.jpg', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'Micanc123@gmail.com', '2023-03-06 22:44:15', '$2y$10$0thX3zx0xKPPteoLF.8z5eBUj69/2EALWkHTQTHm3TysfUCV75HB2', NULL, 'accept', 4, NULL, '2023-03-06 22:29:54', '2023-03-08 18:53:59', 'micanic', 'Avilable'),
(35, 'Micanc999', 'http://127.0.0.1:8000/assets/imagesimages.jpg', 'http://127.0.0.1:8000/assets/imagesomar-lopez-9w20MZ0lsK8-unsplash.jpg', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'Micanc999@gmail.com', '2023-03-06 22:53:57', '$2y$10$wlXUYwNivalgne4yzuJPEu7xyLsMuUQ6JeMaGRLw9tf6n58VggbJ6', NULL, 'accept', 1, NULL, '2023-03-06 22:53:34', '2023-03-08 18:53:55', 'micanic', 'Avilable');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000020_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_19_052648_create_adminstrations_table', 1),
(6, '2023_02_19_052657_create_cities_table', 1),
(7, '2023_02_19_052710_create_micanics_table', 1),
(8, '2023_02_19_052721_create_services_table', 1),
(9, '2023_02_19_052757_create_orders_table', 1),
(10, '2023_02_19_052859_create_ratings_table', 1),
(11, '2023_02_19_090630_create_payments_table', 1),
(13, '2023_02_22_150748_create_notifications_table', 3),
(14, '2023_02_21_211318_create_order_services_table', 4),
(15, '2023_03_08_013432_create_contacts_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('088a5b95-9e96-4c52-a79d-54da2ecc302c', 'App\\Notifications\\MicanicNotification', 'App\\Models\\Micanic', 14, '{\"Latitude\":\"123456\",\"longitude\":\"654321\",\"servicesName\":[{\"id\":1,\"name\":\"entires\",\"price\":100},{\"id\":2,\"name\":\"engine\",\"price\":200},{\"id\":3,\"name\":\"fuel\",\"price\":300}]}', NULL, '2023-03-02 13:48:31', '2023-03-02 13:48:31'),
('0b104029-6656-46ad-b072-05cf872910c8', 'App\\Notifications\\MicanicNotification', 'App\\Models\\Micanic', 14, '{\"Latitude\":\"123456\",\"longitude\":\"654321\",\"servicesName\":[{\"id\":1,\"name\":\"entires\",\"price\":100},{\"id\":2,\"name\":\"engine\",\"price\":200},{\"id\":3,\"name\":\"fuel\",\"price\":300}]}', NULL, '2023-03-02 13:52:50', '2023-03-02 13:52:50'),
('3edfced0-82b0-485f-8bcd-432bfb295866', 'App\\Notifications\\MicanicNotification', 'App\\Models\\Micanic', 14, '{\"Latitude\":29.331426875,\"longitude\":31.20127375,\"servicesName\":[{\"id\":1,\"name\":\"entires\",\"price\":100}]}', NULL, '2023-03-02 13:07:47', '2023-03-02 13:07:47'),
('474ac684-f3e3-4f8c-9288-606c1de54b2c', 'App\\Notifications\\MicanicNotification', 'App\\Models\\Micanic', 14, '{\"Latitude\":29.33143886993318,\"longitude\":31.201319234850946,\"servicesName\":[{\"id\":1,\"name\":\"entires\",\"price\":100}]}', NULL, '2023-03-02 13:24:52', '2023-03-02 13:24:52'),
('539de8fa-35fc-4537-803c-79c46ddb4498', 'App\\Notifications\\MicanicNotification', 'App\\Models\\Micanic', 14, '{\"Latitude\":\"123456\",\"longitude\":\"654321\",\"servicesName\":[{\"id\":1,\"name\":\"entires\",\"price\":100},{\"id\":2,\"name\":\"engine\",\"price\":200},{\"id\":3,\"name\":\"fuel\",\"price\":300}]}', NULL, '2023-03-02 13:49:57', '2023-03-02 13:49:57'),
('581d2d18-0b1f-4d0d-8507-c20a80e1320e', 'App\\Notifications\\MicanicNotification', 'App\\Models\\Micanic', 14, '{\"Latitude\":\"123456\",\"longitude\":\"654321\",\"servicesName\":[{\"id\":1,\"name\":\"entires\",\"price\":100},{\"id\":2,\"name\":\"engine\",\"price\":200},{\"id\":3,\"name\":\"fuel\",\"price\":300}]}', NULL, '2023-03-02 12:59:28', '2023-03-02 12:59:28'),
('71b14592-01f6-400c-b85e-9cb6277bab2c', 'App\\Notifications\\MicanicNotification', 'App\\Models\\Micanic', 14, '{\"Latitude\":\"123456\",\"longitude\":\"654321\",\"servicesName\":[{\"id\":1,\"name\":\"entires\",\"price\":100},{\"id\":2,\"name\":\"engine\",\"price\":200},{\"id\":3,\"name\":\"fuel\",\"price\":300}]}', NULL, '2023-03-02 12:39:19', '2023-03-02 12:39:19'),
('7617cb2b-c82a-4011-bde6-62cc824e28f7', 'App\\Notifications\\MicanicNotification', 'App\\Models\\Micanic', 14, '{\"Latitude\":\"123456\",\"longitude\":\"654321\",\"servicesName\":[{\"id\":1,\"name\":\"entires\",\"price\":100},{\"id\":2,\"name\":\"engine\",\"price\":200},{\"id\":3,\"name\":\"fuel\",\"price\":300}]}', NULL, '2023-03-02 13:12:12', '2023-03-02 13:12:12'),
('869c7c4c-a22f-4293-aec8-8b8d5691522a', 'App\\Notifications\\MicanicNotification', 'App\\Models\\Micanic', 14, '{\"Latitude\":\"123456\",\"longitude\":\"654321\",\"servicesName\":[{\"id\":1,\"name\":\"entires\",\"price\":100},{\"id\":2,\"name\":\"engine\",\"price\":200},{\"id\":3,\"name\":\"fuel\",\"price\":300}]}', NULL, '2023-03-02 13:39:47', '2023-03-02 13:39:47'),
('8e462397-f04b-47a9-9b06-215053a01210', 'App\\Notifications\\MicanicNotification', 'App\\Models\\Micanic', 14, '{\"Latitude\":29.3313093,\"longitude\":31.2020156,\"servicesName\":[{\"id\":1,\"name\":\"entires\",\"price\":100},{\"id\":2,\"name\":\"engine\",\"price\":200},{\"id\":3,\"name\":\"fuel\",\"price\":300},{\"id\":4,\"name\":\"fix\",\"price\":9000}]}', NULL, '2023-03-02 12:28:06', '2023-03-02 12:28:06'),
('9575fd87-c5b3-4508-b32b-5a76c418bdb5', 'App\\Notifications\\MicanicNotification', 'App\\Models\\Micanic', 14, '{\"Latitude\":\"123456\",\"longitude\":\"654321\",\"servicesName\":[{\"id\":1,\"name\":\"entires\",\"price\":100},{\"id\":2,\"name\":\"engine\",\"price\":200},{\"id\":3,\"name\":\"fuel\",\"price\":300}]}', NULL, '2023-03-02 13:35:53', '2023-03-02 13:35:53'),
('a211b5f3-d16e-400d-8a7a-209c0824b383', 'App\\Notifications\\MicanicNotification', 'App\\Models\\Micanic', 14, '{\"Latitude\":\"123456\",\"longitude\":\"654321\",\"servicesName\":[{\"id\":1,\"name\":\"entires\",\"price\":100},{\"id\":2,\"name\":\"engine\",\"price\":200},{\"id\":3,\"name\":\"fuel\",\"price\":300}]}', NULL, '2023-03-02 13:49:19', '2023-03-02 13:49:19'),
('b06dd8dd-3b4c-447b-944e-d151cc3b733d', 'App\\Notifications\\MicanicNotification', 'App\\Models\\Micanic', 14, '{\"Latitude\":\"123456\",\"longitude\":\"654321\",\"servicesName\":[{\"id\":1,\"name\":\"entires\",\"price\":100},{\"id\":2,\"name\":\"engine\",\"price\":200},{\"id\":3,\"name\":\"fuel\",\"price\":300}]}', NULL, '2023-03-02 13:28:39', '2023-03-02 13:28:39'),
('efa8dc41-17d1-4495-ba6d-a66124e75688', 'App\\Notifications\\MicanicNotification', 'App\\Models\\Micanic', 14, '{\"Latitude\":\"123456\",\"longitude\":\"654321\",\"servicesName\":[{\"id\":1,\"name\":\"entires\",\"price\":100},{\"id\":2,\"name\":\"engine\",\"price\":200},{\"id\":3,\"name\":\"fuel\",\"price\":300}]}', NULL, '2023-03-02 13:12:55', '2023-03-02 13:12:55'),
('f1952837-3d6c-4bf1-90b6-317ea3e451da', 'App\\Notifications\\MicanicNotification', 'App\\Models\\Micanic', 14, '{\"Latitude\":29.331357999999998,\"longitude\":31.201253666666663,\"servicesName\":[{\"id\":1,\"name\":\"entires\",\"price\":100}]}', NULL, '2023-03-02 13:02:26', '2023-03-02 13:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `micanic_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('open','close') NOT NULL DEFAULT 'open',
  `Latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `micanic_id`, `user_id`, `status`, `Latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(184, 14, 1, 'close', 29.3313962, 31.2019231, '2023-03-05 20:02:53', '2023-03-05 20:03:35'),
(185, 14, 1, 'close', 29.331444761851, 31.201282083267, '2023-03-05 20:15:51', '2023-03-05 20:16:31'),
(186, 14, 1, 'close', 29.331362101724, 31.20126815639, '2023-03-05 20:19:22', '2023-03-05 20:45:03'),
(187, 14, 1, 'close', 29.33135, 31.201246, '2023-03-05 20:45:37', '2023-03-05 20:46:47'),
(188, 14, 1, 'close', 29.331356438509, 31.201257787917, '2023-03-05 20:52:00', '2023-03-05 20:53:11'),
(189, 14, 1, 'close', 29.33135, 31.201246, '2023-03-05 20:53:32', '2023-03-05 21:46:26'),
(194, 14, 1, 'close', 29.331356438509, 31.201257787917, '2023-03-05 21:55:32', '2023-03-06 01:53:49'),
(195, 14, 1, 'close', 29.3314445, 31.201275333333, '2023-03-06 01:54:31', '2023-03-06 01:59:39'),
(196, 14, 1, 'close', 29.3314445, 31.201275333333, '2023-03-06 02:00:05', '2023-03-06 02:02:43'),
(197, 14, 1, 'close', 29.3313671, 31.2019705, '2023-03-06 02:31:26', '2023-03-06 02:33:22'),
(198, 14, 1, 'close', 29.331356438509, 31.201257787917, '2023-03-06 03:19:10', '2023-03-06 03:20:04'),
(199, 14, 1, 'close', 29.331444761851, 31.201282083267, '2023-03-06 03:20:29', '2023-03-06 03:20:46'),
(200, 14, 1, 'close', 29.331489107328, 31.201298969067, '2023-03-06 03:38:26', '2023-03-06 03:38:50'),
(201, 14, 1, 'close', 29.331489107328, 31.201298969067, '2023-03-06 03:40:51', '2023-03-06 03:42:03'),
(202, 14, 1, 'close', 29.331444761851, 31.201282083267, '2023-03-06 03:43:30', '2023-03-06 03:43:55'),
(203, 14, 1, 'close', 29.331356438509, 31.201257787917, '2023-03-06 08:45:54', '2023-03-06 08:47:53');

-- --------------------------------------------------------

--
-- Table structure for table `order_services`
--

CREATE TABLE `order_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_services`
--

INSERT INTO `order_services` (`id`, `order_id`, `service_id`, `created_at`, `updated_at`) VALUES
(297, 184, 1, '2023-03-05 22:02:53', '2023-03-05 22:02:53'),
(298, 184, 2, '2023-03-05 22:02:53', '2023-03-05 22:02:53'),
(299, 185, 1, '2023-03-05 22:15:51', '2023-03-05 22:15:51'),
(300, 186, 1, '2023-03-05 22:19:22', '2023-03-05 22:19:22'),
(301, 187, 1, '2023-03-05 22:45:37', '2023-03-05 22:45:37'),
(302, 187, 2, '2023-03-05 22:45:37', '2023-03-05 22:45:37'),
(303, 188, 1, '2023-03-05 22:52:00', '2023-03-05 22:52:00'),
(304, 188, 2, '2023-03-05 22:52:00', '2023-03-05 22:52:00'),
(305, 188, 3, '2023-03-05 22:52:00', '2023-03-05 22:52:00'),
(306, 188, 4, '2023-03-05 22:52:00', '2023-03-05 22:52:00'),
(307, 188, 7, '2023-03-05 22:52:00', '2023-03-05 22:52:00'),
(308, 189, 1, '2023-03-05 22:53:32', '2023-03-05 22:53:32'),
(309, 189, 3, '2023-03-05 22:53:32', '2023-03-05 22:53:32'),
(310, 189, 2, '2023-03-05 22:53:32', '2023-03-05 22:53:32'),
(311, 189, 4, '2023-03-05 22:53:32', '2023-03-05 22:53:32'),
(312, 189, 7, '2023-03-05 22:53:32', '2023-03-05 22:53:32'),
(321, 194, 1, '2023-03-05 23:55:32', '2023-03-05 23:55:32'),
(322, 194, 2, '2023-03-05 23:55:32', '2023-03-05 23:55:32'),
(323, 195, 1, '2023-03-06 03:54:31', '2023-03-06 03:54:31'),
(324, 195, 2, '2023-03-06 03:54:31', '2023-03-06 03:54:31'),
(325, 196, 1, '2023-03-06 04:00:05', '2023-03-06 04:00:05'),
(326, 196, 2, '2023-03-06 04:00:05', '2023-03-06 04:00:05'),
(327, 197, 1, '2023-03-06 04:31:26', '2023-03-06 04:31:26'),
(328, 197, 2, '2023-03-06 04:31:26', '2023-03-06 04:31:26'),
(329, 198, 1, '2023-03-06 05:19:10', '2023-03-06 05:19:10'),
(330, 198, 2, '2023-03-06 05:19:10', '2023-03-06 05:19:10'),
(331, 198, 3, '2023-03-06 05:19:10', '2023-03-06 05:19:10'),
(332, 198, 4, '2023-03-06 05:19:10', '2023-03-06 05:19:10'),
(333, 198, 7, '2023-03-06 05:19:10', '2023-03-06 05:19:10'),
(334, 199, 1, '2023-03-06 05:20:29', '2023-03-06 05:20:29'),
(335, 199, 2, '2023-03-06 05:20:29', '2023-03-06 05:20:29'),
(336, 200, 1, '2023-03-06 05:38:26', '2023-03-06 05:38:26'),
(337, 200, 2, '2023-03-06 05:38:26', '2023-03-06 05:38:26'),
(338, 201, 1, '2023-03-06 05:40:51', '2023-03-06 05:40:51'),
(339, 201, 2, '2023-03-06 05:40:51', '2023-03-06 05:40:51'),
(340, 202, 1, '2023-03-06 05:43:30', '2023-03-06 05:43:30'),
(341, 203, 1, '2023-03-06 10:45:54', '2023-03-06 10:45:54'),
(342, 203, 2, '2023-03-06 10:45:54', '2023-03-06 10:45:54'),
(343, 203, 3, '2023-03-06 10:45:54', '2023-03-06 10:45:54');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total_price` double(8,2) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `total_price`, `order_id`, `created_at`, `updated_at`) VALUES
(51, 300.00, 184, '2023-03-05 20:03:06', '2023-03-05 20:03:06'),
(52, 100.00, 185, '2023-03-05 20:16:06', '2023-03-05 20:16:06'),
(53, 100.00, 186, '2023-03-05 20:35:53', '2023-03-05 20:35:53'),
(54, 300.00, 187, '2023-03-05 20:45:57', '2023-03-05 20:45:57'),
(55, 97184.00, 188, '2023-03-05 20:52:49', '2023-03-05 20:52:49'),
(56, 97184.00, 189, '2023-03-05 21:32:52', '2023-03-05 21:32:52'),
(57, 300.00, 194, '2023-03-05 22:06:17', '2023-03-05 22:06:17'),
(58, 300.00, 194, '2023-03-06 01:40:18', '2023-03-06 01:40:18'),
(59, 300.00, 194, '2023-03-06 01:41:06', '2023-03-06 01:41:06'),
(60, 300.00, 195, '2023-03-06 01:54:45', '2023-03-06 01:54:45'),
(61, 300.00, 196, '2023-03-06 02:00:14', '2023-03-06 02:00:14'),
(62, 300.00, 197, '2023-03-06 02:32:40', '2023-03-06 02:32:40'),
(63, 97184.00, 198, '2023-03-06 03:19:18', '2023-03-06 03:19:18'),
(64, 300.00, 199, '2023-03-06 03:20:37', '2023-03-06 03:20:37'),
(65, 300.00, 200, '2023-03-06 03:38:33', '2023-03-06 03:38:33'),
(66, 300.00, 201, '2023-03-06 03:40:58', '2023-03-06 03:40:58'),
(67, 100.00, 202, '2023-03-06 03:43:35', '2023-03-06 03:43:35'),
(68, 600.00, 203, '2023-03-06 08:46:01', '2023-03-06 08:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(93, 'App\\Models\\User', 3, 'Android', 'f32f1fee73cc4a4b19a03565231e68179ddb33d2f41d96cd96ace10d9c7b8d4f', '[\"*\"]', NULL, '2023-02-26 01:14:06', '2023-02-26 01:14:06'),
(94, 'App\\Models\\User', 4, 'Android', 'fcad20d83fd692e5573f72a36cc8d012c58556dc3cd4d86097cf7b9752ae1c47', '[\"*\"]', '2023-02-26 13:11:24', '2023-02-26 01:15:56', '2023-02-26 13:11:24'),
(139, 'App\\Models\\Micanic', 11, 'Android', 'f03d3de60304c0b9e03367787380097018b5c53f7b0ccf1c6bbbeaf176b4b17c', '[\"*\"]', NULL, '2023-02-28 18:18:22', '2023-02-28 18:18:22'),
(140, 'App\\Models\\Micanic', 11, 'Android', 'fb506542fc594b4d48b60d036eb31e14124ad78311ee575547d7e22af62049ca', '[\"*\"]', NULL, '2023-02-28 18:18:22', '2023-02-28 18:18:22'),
(141, 'App\\Models\\Micanic', 11, 'Android', 'a4d67566276bbf4352eea637ac4748eec6d89560f345b15b6d3a5a2261a601b2', '[\"*\"]', NULL, '2023-02-28 18:18:57', '2023-02-28 18:18:57'),
(142, 'App\\Models\\Micanic', 11, 'Android', '1a58c9ccfea536271c2b3e6849da9e264e2388e4a7a985a9e6cc59d581a812af', '[\"*\"]', NULL, '2023-02-28 18:18:57', '2023-02-28 18:18:57'),
(143, 'App\\Models\\Micanic', 11, 'Android', '58265c065e5c6271eee806eb88521bf38b1002f5d25d8d2ae84106be2ed050f6', '[\"*\"]', NULL, '2023-02-28 18:19:26', '2023-02-28 18:19:26'),
(144, 'App\\Models\\Micanic', 11, 'Android', 'e08ac32e55a4bb8ddbf5594e8e6e173e40c39fe364d42e1e1119a67aa3a7161b', '[\"*\"]', NULL, '2023-02-28 18:19:53', '2023-02-28 18:19:53'),
(145, 'App\\Models\\Micanic', 11, 'Android', 'c2d7f96edb0882d0c5326502fbb7eba7e92eb334c2bf0387a1cd466fd4582493', '[\"*\"]', NULL, '2023-02-28 18:19:53', '2023-02-28 18:19:53'),
(146, 'App\\Models\\Micanic', 11, 'Android', 'e5b1370989cfc0965d1d9a6d712fc5d3b3cb8e89eaf4feacf529e16ac191a45a', '[\"*\"]', NULL, '2023-02-28 18:20:46', '2023-02-28 18:20:46'),
(147, 'App\\Models\\Micanic', 11, 'Android', 'a03d48e90b35e563471acf79a72eb6550a35246f6a6b61bbd4222c8a6d0236b0', '[\"*\"]', NULL, '2023-02-28 18:20:46', '2023-02-28 18:20:46'),
(148, 'App\\Models\\Micanic', 11, 'Android', 'b37132c823c1b644ca473b099c5173d9e656dc72295b8bad324945346c592ad8', '[\"*\"]', NULL, '2023-02-28 18:20:59', '2023-02-28 18:20:59'),
(149, 'App\\Models\\Micanic', 11, 'Android', '662751da79bcf9348777e96db4e33810b5b2a88fc6634acddd06aa96aba7312e', '[\"*\"]', NULL, '2023-02-28 18:20:59', '2023-02-28 18:20:59'),
(150, 'App\\Models\\Micanic', 11, 'Android', '9a153c41844df407926df8bdf0bcecb868178f2d07b8f33a8b8a8f88a064eeb4', '[\"*\"]', NULL, '2023-02-28 18:21:00', '2023-02-28 18:21:00'),
(151, 'App\\Models\\Micanic', 11, 'Android', '44060401dd6e0f2599f2bb0ef32058e1820c67a7b9ffa3ef9a29cd3d2f733c77', '[\"*\"]', NULL, '2023-02-28 18:21:00', '2023-02-28 18:21:00'),
(154, 'App\\Models\\Micanic', 11, 'Android', 'ea89b5a0cc325df08a7c2ed8064ad2f939ba04943da9bd38e73599fc61e4b6ec', '[\"*\"]', NULL, '2023-02-28 18:21:51', '2023-02-28 18:21:51'),
(155, 'App\\Models\\Micanic', 11, 'Android', '56240f7bed1b1c6014a0e9539f653de044fd41c3eddd303238f3ebbd5a947888', '[\"*\"]', NULL, '2023-02-28 18:21:52', '2023-02-28 18:21:52'),
(156, 'App\\Models\\Micanic', 11, 'Android', '840bd57faa9968ffd2d2b5674d54bbb243436ca9e15d2948f1260a9b1663d255', '[\"*\"]', NULL, '2023-02-28 18:22:20', '2023-02-28 18:22:20'),
(157, 'App\\Models\\Micanic', 11, 'Android', 'c3c4eddf22131e238db0c1c6d9999836ab6c99c68ebaadc97b850c724c80265e', '[\"*\"]', NULL, '2023-02-28 18:22:20', '2023-02-28 18:22:20'),
(158, 'App\\Models\\Micanic', 11, 'Android', '9cdce082c908b6393db89d4634bec805b175b0f9e4fed7a78259d5772ca8c700', '[\"*\"]', NULL, '2023-02-28 18:22:30', '2023-02-28 18:22:30'),
(159, 'App\\Models\\Micanic', 11, 'Android', '1bbd202211d1d55d53c3ae4d1d90cf6dd71f1388d8d8eaba16ca765d31d31bb3', '[\"*\"]', NULL, '2023-02-28 18:22:38', '2023-02-28 18:22:38'),
(160, 'App\\Models\\Micanic', 11, 'Android', '16f1aef526866f7cbe55bf479a22114949a76f18266fc7e18df44d46961a5702', '[\"*\"]', NULL, '2023-02-28 18:26:26', '2023-02-28 18:26:26'),
(161, 'App\\Models\\Micanic', 11, 'Android', 'faac561917eb7b6ff0fe705b74afa3d04c49c884f02b8f151713ee448ee1c230', '[\"*\"]', NULL, '2023-02-28 18:26:27', '2023-02-28 18:26:27'),
(162, 'App\\Models\\Micanic', 11, 'Android', 'e08119c16963be3c8c0502ce0a4b3513e954dc36a0a908c46af959d176d572d4', '[\"*\"]', NULL, '2023-02-28 18:26:31', '2023-02-28 18:26:31'),
(163, 'App\\Models\\Micanic', 11, 'Android', 'f2fd37e734cd1269da327d73b641e0e050ed11b1fb9d2fbd17a942ef095073d1', '[\"*\"]', NULL, '2023-02-28 18:26:31', '2023-02-28 18:26:31'),
(164, 'App\\Models\\Micanic', 11, 'Android', '2b6486160ac93618b108c1b9a2a981cf6b89d9dcbff9e5d38e246535c2753fa4', '[\"*\"]', NULL, '2023-02-28 18:26:32', '2023-02-28 18:26:32'),
(165, 'App\\Models\\Micanic', 11, 'Android', '7272137524a36f661f0d0bd6d21b973debbab3d9a28d0f7fcc462af931cda713', '[\"*\"]', NULL, '2023-02-28 18:26:32', '2023-02-28 18:26:32'),
(166, 'App\\Models\\Micanic', 11, 'Android', 'd727cf63ec5b88b301610f0d99da302b719d6efd81aae1061cbb2d73441d961f', '[\"*\"]', NULL, '2023-02-28 18:28:34', '2023-02-28 18:28:34'),
(167, 'App\\Models\\Micanic', 11, 'Android', 'c3dfdeb4085afd886795d9ebe66339f895a1cb75117e1a6b60917ad09e6e3176', '[\"*\"]', NULL, '2023-02-28 18:28:43', '2023-02-28 18:28:43'),
(168, 'App\\Models\\Micanic', 11, 'Android', '87eba919b85dc89fdcddaed39878a808bcf2d728724486399ebe7214bc92fcac', '[\"*\"]', NULL, '2023-02-28 18:28:44', '2023-02-28 18:28:44'),
(172, 'App\\Models\\Micanic', 11, 'Android', 'b6803ecef167d5e8356ff88776724ba475baca7f69e819be64cbeb6a32373e6b', '[\"*\"]', NULL, '2023-02-28 18:31:07', '2023-02-28 18:31:07'),
(173, 'App\\Models\\Micanic', 11, 'Android', '62e44732f1cacef5bd741e798e4f31d991d227151e362e3a7cad432162cc30aa', '[\"*\"]', NULL, '2023-02-28 18:31:12', '2023-02-28 18:31:12'),
(174, 'App\\Models\\Micanic', 11, 'Android', 'acdc5e600a651a965f8b6fcb010a746dc22f903d2da4a45a85706a89a990ead7', '[\"*\"]', NULL, '2023-02-28 18:31:13', '2023-02-28 18:31:13'),
(175, 'App\\Models\\Micanic', 11, 'Android', 'de9745eaa22c75f58b3d6bf1edfb73d387f1d0f23615dca81f542accc1240672', '[\"*\"]', NULL, '2023-02-28 18:31:25', '2023-02-28 18:31:25'),
(176, 'App\\Models\\Micanic', 11, 'Android', '9dc39134dad4c062d6f4a00a3b435a0af8f0b121d363d8865d4d2fbd01f6f4f1', '[\"*\"]', NULL, '2023-02-28 18:31:25', '2023-02-28 18:31:25'),
(177, 'App\\Models\\Micanic', 13, 'Android', '21d843f7b891fe85bd653559a164cf49117234b68e8710dcf16d89d227a01bf0', '[\"*\"]', NULL, '2023-02-28 18:33:54', '2023-02-28 18:33:54'),
(178, 'App\\Models\\Micanic', 13, 'Android', 'ca7734592e73546973e9e048b568a5baa1d4cc24a4db8b0757e18089302f6562', '[\"*\"]', NULL, '2023-02-28 18:33:54', '2023-02-28 18:33:54'),
(342, 'App\\Models\\Micanic', 17, 'Android', 'b0dce38720703f59b28b58adf9541a2bd6d68c391e9568884abd2488b947bfeb', '[\"*\"]', NULL, '2023-03-03 19:45:57', '2023-03-03 19:45:57'),
(343, 'App\\Models\\Micanic', 18, 'Android', 'a807be9c3ae1134e4b7abf7c45e63a491e97972bc248346a37bdbac2017ebe92', '[\"*\"]', NULL, '2023-03-03 19:51:05', '2023-03-03 19:51:05'),
(344, 'App\\Models\\Micanic', 19, 'Android', '6b3ce7701b41152fd21c4d32e85f8ff7362a4b76a7de0960f5ae82620c7678cc', '[\"*\"]', NULL, '2023-03-03 20:00:19', '2023-03-03 20:00:19'),
(345, 'App\\Models\\Micanic', 20, 'Android', '1f77b4950a58cd05c00564c3609b8234cba17b92fd49972daa021049f7d5ebff', '[\"*\"]', NULL, '2023-03-03 21:39:31', '2023-03-03 21:39:31'),
(346, 'App\\Models\\Micanic', 21, 'Android', '91e107b7ce1f848c4e5c576d0aec39710c3e17d8a34959f7df56cda2cc238780', '[\"*\"]', NULL, '2023-03-03 21:39:38', '2023-03-03 21:39:38'),
(347, 'App\\Models\\Micanic', 22, 'Android', 'e7c241c72bc9d7f3fb535f433ef04665b90365c99d3e9a40841402adfc2ee07e', '[\"*\"]', NULL, '2023-03-03 21:55:29', '2023-03-03 21:55:29'),
(348, 'App\\Models\\Micanic', 23, 'Android', '0f42709bbd92392dd57d33287edde83b9b37a02481e7732b009bbf2c1326e8c3', '[\"*\"]', NULL, '2023-03-03 21:55:37', '2023-03-03 21:55:37'),
(349, 'App\\Models\\Micanic', 24, 'Android', '094a22992423f8f9a1e60ef3ee72681e7c028b79b148d6b94d0f34468c310bb4', '[\"*\"]', NULL, '2023-03-03 21:57:32', '2023-03-03 21:57:32'),
(350, 'App\\Models\\Micanic', 25, 'Android', 'd65e993ab9ec8373372a7850088ca42c15b2bb21cac99faa1788ba1e82e8c177', '[\"*\"]', NULL, '2023-03-03 21:57:39', '2023-03-03 21:57:39'),
(351, 'App\\Models\\Micanic', 26, 'Android', '88fbd934b1c66231a8df36868d7cc335001e7ba8ae4e33b63333810b6c24efec', '[\"*\"]', NULL, '2023-03-03 21:58:36', '2023-03-03 21:58:36'),
(352, 'App\\Models\\Micanic', 27, 'Android', 'cefca428f405ef7f47325fe026fa0f249c1235e75162c2ef83ad481853117f64', '[\"*\"]', NULL, '2023-03-03 21:58:43', '2023-03-03 21:58:43'),
(353, 'App\\Models\\Micanic', 28, 'Android', 'c8a6bddaa14d3d4e7fa14adc7c6a1cf2212e14d3fc22189e1f15d1803657abe1', '[\"*\"]', NULL, '2023-03-03 21:59:28', '2023-03-03 21:59:28'),
(354, 'App\\Models\\Micanic', 29, 'Android', '023c6bc219580b5c7cd42e0104575a77340dc9469e3b2bec81baec757312db6a', '[\"*\"]', NULL, '2023-03-03 21:59:52', '2023-03-03 21:59:52'),
(355, 'App\\Models\\Micanic', 30, 'Android', '052c9f60be7ab33018700831d244082aedb9da86a1bf7c77e7bd428aac0de494', '[\"*\"]', NULL, '2023-03-03 22:03:32', '2023-03-03 22:03:32'),
(356, 'App\\Models\\Micanic', 31, 'Android', '7bd29fdc672e70c628280049e4d6c4ce07f36cb4987b198dcc13922a9118f6e4', '[\"*\"]', NULL, '2023-03-03 22:06:27', '2023-03-03 22:06:27'),
(357, 'App\\Models\\Micanic', 32, 'Android', 'f1915539b5155beb9b376924325e29ea73750db4868afd855a5c2eab12eaed6c', '[\"*\"]', NULL, '2023-03-03 22:08:16', '2023-03-03 22:08:16'),
(538, 'App\\Models\\User', 10, 'Android', '74e873e6e0e8d11e08c94222ac2d8fafd451879a041d238835baddda336cb650', '[\"*\"]', NULL, '2023-03-06 22:27:31', '2023-03-06 22:27:31'),
(552, 'App\\Models\\Micanic', 36, 'Android', 'be868155b83e9ac5bbfe93d8fb9b7f295c1fa9e6d148f38f941f347410720596', '[\"*\"]', NULL, '2023-03-08 16:06:01', '2023-03-08 16:06:01'),
(577, 'App\\Models\\User', 1, 'Android', '2fa5df4ac1643524cd381e5041241d83bd124b0411d6595f4d3c97f7efef0942', '[\"*\"]', NULL, '2023-03-08 18:56:31', '2023-03-08 18:56:31'),
(578, 'App\\Models\\User', 1, 'Android', 'a22c7d46445272f4a95d089f532b342023790284929324e80cc4e2ed84a87a20', '[\"*\"]', '2023-03-08 18:56:57', '2023-03-08 18:56:32', '2023-03-08 18:56:57');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `micanic_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `rate` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `user_name`, `micanic_id`, `order_id`, `rate`, `comment`, `created_at`, `updated_at`) VALUES
(22, 1, 'use1', 14, 199, '4', 'fdfdfdfdfdfdfdf', '2023-03-06 03:25:23', '2023-03-06 03:25:23'),
(23, 1, 'use2', 14, 199, '4', 'new rate', '2023-03-06 03:25:23', '2023-03-06 03:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'entires', 100, '2023-02-20 23:27:46', '2023-02-20 23:27:46'),
(2, 'engine', 200, '2023-02-20 23:27:46', '2023-02-20 23:27:46'),
(3, 'fuel', 300, '2023-02-20 23:27:57', '2023-02-20 23:27:57'),
(4, 'fix', 9000, '2023-02-22 10:23:12', '2023-02-22 10:23:12'),
(7, 'gfg', 87584, '2023-03-02 18:03:15', '2023-03-02 18:03:15'),
(8, 'dsd', 698, '2023-03-06 03:29:49', '2023-03-06 03:29:49'),
(9, 'dxsd', 9865, '2023-03-06 03:33:18', '2023-03-06 03:33:18'),
(10, 'ddd', 600, '2023-03-06 08:49:09', '2023-03-06 08:49:09'),
(11, 'cvv', 666, '2023-03-08 18:39:15', '2023-03-08 18:39:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `code` int(20) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `type` varchar(4) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `code`, `remember_token`, `created_at`, `updated_at`, `type`) VALUES
(1, 'user', 'user@gmail.com', '2023-02-20 20:45:46', '$2y$10$8do9.weooiH6czOy2Mv9Ju1aaKYZ2m8j6IFqtOLh2hzUwjG6XVXky', NULL, NULL, '2023-02-20 20:35:58', '2023-02-26 14:32:18', 'user'),
(2, 'user2', 'user2@gmail.com', '2023-02-20 20:45:46', '$2y$10$2.uqd9Q6ZgTQhfKWUId4Y.lT15SoNU..Bug8x9iEO69dvfvJvvGbm', NULL, NULL, '2023-02-20 20:35:58', '2023-02-20 20:45:46', 'user'),
(3, 'user', 'user666@gmail.com', NULL, '$2y$10$j8QZQ2jhPlQMP3fd3RbgU.VsVsQdaT2DQ3311ptcqJaeGY5zzdGvy', NULL, NULL, '2023-02-26 01:14:06', '2023-02-26 01:14:06', 'user'),
(4, 'islam', 'user98798@gmail.com', NULL, '$2y$10$7OEDt96ze8WUyV39Of2s9uAlvyE6yC0PWxiDRkSbQd0wCl3ZZbfA2', NULL, NULL, '2023-02-26 01:15:56', '2023-02-26 01:15:56', 'user'),
(7, 'user', 'user299@gmail.com', '2023-02-20 20:45:46', '$2y$10$8do9.weooiH6czOy2Mv9Ju1aaKYZ2m8j6IFqtOLh2hzUwjG6XVXky', NULL, NULL, '2023-02-20 20:35:58', '2023-02-26 14:32:18', 'user'),
(8, 'user', 'user222@gmail.com', '2023-02-20 20:45:46', '$2y$10$8do9.weooiH6czOy2Mv9Ju1aaKYZ2m8j6IFqtOLh2hzUwjG6XVXky', NULL, NULL, '2023-02-20 20:35:58', '2023-02-26 14:32:18', 'user'),
(9, 'islam9999', 'islam9999@gmail.com', '2023-02-28 23:53:12', '$2y$10$T8XQaijiyZbZg/DsOepXF.06BGgM7dClizQkl5Ryg3UGOZmsA9oVi', NULL, NULL, '2023-03-06 21:51:37', '2023-03-06 21:51:37', 'user'),
(10, 'user123', 'user123@gmail.com', NULL, '$2y$10$O4b5FChbE0Mcp2yyCQeq4Oq.KFUGsgTL.FOsRkihBKyQg8OStZ/qu', NULL, NULL, '2023-03-06 22:27:31', '2023-03-06 22:27:31', 'user'),
(11, 'islam999', 'islam999@gmail.com', '2023-03-06 22:52:33', '$2y$10$68kUU.e.HQ9b9cem0X8ZbegK3ygHUBoS2ZFN6fiqgZ7r4.WRRcJWa', NULL, NULL, '2023-03-06 22:51:45', '2023-03-06 22:52:33', 'user'),
(12, 'islam666', 'islam666@gmail.com', '2023-03-08 18:44:59', '$2y$10$nt/NTj1Vpmq.LQVHkUZCP.cEkR5K6ovWGFxucka4nZIljinwmrD..', NULL, NULL, '2023-03-08 18:44:43', '2023-03-08 18:44:59', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminstrations`
--
ALTER TABLE `adminstrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `adminstrations_email_unique` (`email`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `micanics`
--
ALTER TABLE `micanics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `micanics_city_id_foreign` (`city_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_micanic_id_foreign` (`micanic_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_services`
--
ALTER TABLE `order_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_services_order_id_foreign` (`order_id`),
  ADD KEY `order_services_service_id_foreign` (`service_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_micanic_id_foreign` (`micanic_id`),
  ADD KEY `ratings_user_id_foreign` (`user_id`),
  ADD KEY `ratings_order_id_foreign` (`order_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `adminstrations`
--
ALTER TABLE `adminstrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `micanics`
--
ALTER TABLE `micanics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `order_services`
--
ALTER TABLE `order_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=581;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `micanics`
--
ALTER TABLE `micanics`
  ADD CONSTRAINT `micanics_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_micanic_id_foreign` FOREIGN KEY (`micanic_id`) REFERENCES `micanics` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_services`
--
ALTER TABLE `order_services`
  ADD CONSTRAINT `order_services_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_micanic_id_foreign` FOREIGN KEY (`micanic_id`) REFERENCES `micanics` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
