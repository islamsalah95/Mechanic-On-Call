-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2023 at 04:41 AM
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
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$8do9.weooiH6czOy2Mv9Ju1aaKYZ2m8j6IFqtOLh2hzUwjG6XVXky', NULL, NULL, '2023-02-20 20:35:58', '2023-02-26 14:32:18', 'admin'),
(4, 'islamAdmin', 'islamAdmin@gmail.com', '2023-02-20 05:37:54', '$2y$10$8do9.weooiH6czOy2Mv9Ju1aaKYZ2m8j6IFqtOLh2hzUwjG6XVXky', NULL, NULL, '2023-03-10 15:48:19', '2023-03-10 15:48:19', 'admin');

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
(17, 'mansoa', '2023-03-08 18:38:53', '2023-03-08 18:38:53'),
(27, 'monofia', '2023-03-12 06:34:25', '2023-03-12 06:34:25'),
(28, 'newService', '2023-03-13 01:20:47', '2023-03-13 01:20:47');

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
(14, 'ahmed', 1112345678, 'good', '2023-03-08 02:04:08', '2023-03-08 02:04:08'),
(15, 'ali', 1112345678, 'thanks', '2023-03-08 02:04:08', '2023-03-08 02:04:08'),
(16, 'mahmud', 1112345678, 'bad ', '2023-03-08 02:05:25', '2023-03-08 02:05:25'),
(17, 'mohamed', 1112345678, 'excellent', '2023-03-08 18:09:05', '2023-03-08 18:09:05'),
(18, 'islam', 1112345678, 'thanks', '2023-03-08 18:32:13', '2023-03-08 18:32:13'),
(19, 'Entsar', 1112345678, 'thanks', '2023-03-09 17:56:41', '2023-03-09 17:56:41'),
(20, 'alaa', 1112345678, 'thanks', '2023-03-09 19:16:00', '2023-03-09 19:16:00'),
(21, 'nader', 1272570173, 'thanks', '2023-03-10 13:52:48', '2023-03-10 13:52:48'),
(22, 'gana', 1272570173, 'thanks', '2023-03-10 13:52:48', '2023-03-10 13:52:48'),
(23, 'ahmed', 1112345678, 'thanks', '2023-03-11 08:01:31', '2023-03-11 08:01:31'),
(24, 'islam', 1112345678, 'thanks', '2023-03-11 08:01:31', '2023-03-11 08:01:31'),
(25, 'islam', 1112345678, 'thanks', '2023-03-11 08:01:58', '2023-03-11 08:01:58'),
(26, 'islam', 1112345678, 'thanks', '2023-03-11 08:01:58', '2023-03-11 08:01:58'),
(27, 'Nawal', 1112345678, 'great', '2023-03-11 15:11:11', '2023-03-11 15:11:11'),
(29, 'Nawal', 1112345678, 'good', '2023-03-11 15:13:16', '2023-03-11 15:13:16'),
(30, 'Nawal', 1112345678, 'good', '2023-03-11 15:13:16', '2023-03-11 15:13:16'),
(31, 'Islam', 1112345678, 'good', '2023-03-11 15:15:53', '2023-03-11 15:15:53'),
(32, 'Islam', 1112345678, 'good', '2023-03-11 15:15:54', '2023-03-11 15:15:54'),
(33, 'Islam', 1112345678, 'ggg', '2023-03-11 15:16:09', '2023-03-11 15:16:09'),
(35, 'nader', 1112345678, 'good', '2023-03-11 16:37:35', '2023-03-11 16:37:35'),
(36, 'nader', 1112345678, 'good', '2023-03-11 16:37:35', '2023-03-11 16:37:35'),
(37, 'nader', 1112345678, 'good', '2023-03-11 17:22:26', '2023-03-11 17:22:26'),
(38, 'nader', 1112345678, 'good', '2023-03-11 17:22:26', '2023-03-11 17:22:26'),
(39, 'Nader', 1112345678, 'good', '2023-03-11 17:40:07', '2023-03-11 17:40:07'),
(40, 'Nader', 1112345678, 'good', '2023-03-11 17:40:07', '2023-03-11 17:40:07'),
(41, 'islam', 1112345678, 'bad', '2023-03-12 03:51:22', '2023-03-12 03:51:22'),
(42, 'ahmed', 1112345678, 'ecellent', '2023-03-12 03:53:17', '2023-03-12 03:53:17'),
(43, 'Nawal', 1112345678, 'go on', '2023-03-12 04:21:11', '2023-03-12 04:21:11'),
(44, 'Nader', 1112345678, 'great', '2023-03-12 06:11:25', '2023-03-12 06:11:25'),
(45, 'Nawal', 1112345678, 'graet', '2023-03-13 01:17:40', '2023-03-13 01:17:40');

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
(14, 'NMicanic', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'NMicanic@gmail.com', '2023-02-08 20:35:57', '$2y$10$sawjeGJXxtxQFgiI1D1n5OkGG0lRvgZ/lVe8gQiqJ6WfnVNf5PpOq', 73227, 'accept', 1, NULL, '2023-02-28 18:34:36', '2023-03-13 01:30:34', 'micanic', 'Avilable'),
(16, 'ahmed', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'NMicanic2@gmail.com', '2023-02-08 20:35:57', '$2y$10$sawjeGJXxtxQFgiI1D1n5OkGG0lRvgZ/lVe8gQiqJ6WfnVNf5PpOq', 73227, 'accept', 2, NULL, '2023-02-28 18:34:36', '2023-03-05 13:25:05', 'micanic', 'Avilable'),
(24, 'islam', 'http://127.0.0.1:8000/assets/imagesHow to Take Screenshots on Windows 10 and Windows 11 - Google Chrome 2_24_2023 1_19_13 AM.png', 'http://127.0.0.1:8000/assets/imagesيسيسي.PNG', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'adminstrations@gmail.com', NULL, '$2y$10$3Wms2b2YMckf1fTNzUgEnucjjbsuMuBI6DdvMyynaNMA0XOr4w8mS', 39680, 'accept', 4, NULL, '2023-03-03 21:57:32', '2023-03-03 22:16:25', 'micanic', 'Avilable'),
(25, 'alaa', 'http://127.0.0.1:8000/assets/imagesHow to Take Screenshots on Windows 10 and Windows 11 - Google Chrome 2_24_2023 1_19_13 AM.png', 'http://127.0.0.1:8000/assets/imagesيسيسي.PNG', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'adminstrations@gmail.com', NULL, '$2y$10$S1mOwkLIdNqX6p4YqXHGcuTRmq/v8efq6m17p8LuZxwBclvm2Y4d.', 44960, 'accept', 4, NULL, '2023-03-03 21:57:39', '2023-03-06 03:17:58', 'micanic', 'Avilable'),
(26, 'nader', 'http://127.0.0.1:8000/assets/imageskate-skumen-PJRabkuH3_Q-unsplash.jpg', 'http://127.0.0.1:8000/assets/imagesomar-lopez-9w20MZ0lsK8-unsplash.jpg', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'TestMicanic8889@gmail.com', NULL, '$2y$10$ko0lxznR13gQ7W6CyZC2Luy8R05eHiSYXXJ3SAM47GqKLa/kQrMXm', 43081, 'accept', 1, NULL, '2023-03-03 21:58:36', '2023-03-13 01:24:19', 'micanic', 'Busy'),
(27, 'gana', 'http://127.0.0.1:8000/assets/imageskate-skumen-PJRabkuH3_Q-unsplash.jpg', 'http://127.0.0.1:8000/assets/imagesomar-lopez-9w20MZ0lsK8-unsplash.jpg', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'TestMicanic8889@gmail.com', NULL, '$2y$10$f42kyPofhbc4AmkRQM67J.vzjXLk6rKhmVZLrLumbuXWwADSYW/6C', 79849, 'block', 1, NULL, '2023-03-03 21:58:43', '2023-03-13 01:20:28', 'micanic', 'Avilable'),
(28, 'ahmed', 'http://127.0.0.1:8000/assets/imageskate-skumen-PJRabkuH3_Q-unsplash.jpg', 'http://127.0.0.1:8000/assets/imagesomar-lopez-9w20MZ0lsK8-unsplash.jpg', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'TestMicanic8889@gmail.com', NULL, '$2y$10$Yv25R1oMPhPd6k70zLz6gOFW2./1.5LIN01v4J/fguyPhaA1Sy0P.', 93558, 'accept', 1, NULL, '2023-03-03 21:59:28', '2023-03-10 04:35:22', 'micanic', 'Busy'),
(29, 'mohamed', 'http://127.0.0.1:8000/assets/imageskate-skumen-PJRabkuH3_Q-unsplash.jpg', 'http://127.0.0.1:8000/assets/imagesomar-lopez-9w20MZ0lsK8-unsplash.jpg', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'TestMicanic8889@gmail.com', NULL, '$2y$10$lK.smP1AsPSY.Nv.DoAvHOog518cZLdOOXyJNsH75L/zPcPeMC9gq', 48826, 'accept', 1, NULL, '2023-03-03 21:59:52', '2023-03-06 03:17:53', 'micanic', 'Avilable'),
(30, 'rana', 'http://127.0.0.1:8000/assets/imageskate-skumen-PJRabkuH3_Q-unsplash.jpg', 'http://127.0.0.1:8000/assets/imagesomar-lopez-9w20MZ0lsK8-unsplash.jpg', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'TestMicanic8889@gmail.com', NULL, '$2y$10$b6.9dbgofIbcZstc3vJmFOqzNLj9G.5tHq00lGWuG2EehtysTX9YS', 32272, 'accept', 1, NULL, '2023-03-03 22:03:32', '2023-03-06 02:57:55', 'micanic', 'Avilable'),
(31, 'ali', 'http://127.0.0.1:8000/assets/imageskate-skumen-PJRabkuH3_Q-unsplash.jpg', 'http://127.0.0.1:8000/assets/imagesomar-lopez-9w20MZ0lsK8-unsplash.jpg', 'http://127.0.0.1:8000/frontend/website/img/team-1.jpg', 'TestMicanic8889@gmail.com', NULL, '$2y$10$XS7AtnNKsCBg5zaDR3ZsrOjNGeCySseQazKxxEQ7CLdC/ZT2A84tm', 12087, 'block', 1, NULL, '2023-03-03 22:06:27', '2023-03-12 04:17:02', 'micanic', 'Avilable'),
(77, 'Ensar', 'http://127.0.0.1:8000/assets/images/nationalid.PNG', NULL, 'http://127.0.0.1:8000/assets/images/team-2.jpg', 'Ensar@gmail.com', '2023-03-12 06:13:53', '$2y$10$sxTDoibASisnpsFxnG3RuuvVh3S8wq.yR.4H4SCG3jcd3CRoT8dbW', NULL, 'accept', 1, NULL, '2023-03-12 06:13:39', '2023-03-13 01:20:22', 'micanic', 'Avilable'),
(78, 'islamMichanic', 'http://127.0.0.1:8000/assets/images/nationalid.PNG', NULL, 'http://127.0.0.1:8000/assets/images/team-4.jpg', 'islamMichanic@gmail.com', '2023-03-12 06:21:36', '$2y$10$e3gk1w9s/YRtrdv5u7Dj6Ot6n7i0A8aaIBiWTQon2tD5Y6Ngsr0N2', NULL, 'block', 17, NULL, '2023-03-12 06:21:22', '2023-03-12 06:35:52', 'micanic', 'Avilable'),
(79, 'Micanc3939', 'http://127.0.0.1:8000/assets/images/nationalid.PNG', NULL, 'http://127.0.0.1:8000/assets/images/team-3.jpg', 'Micanc3939@gmail.com', '2023-03-13 01:19:06', '$2y$10$AYASoIyZ2y1d.ZL0InhpR.3BcmI7LMGPGM922WB4MgOQQYsY.3vuG', NULL, 'accept', 1, NULL, '2023-03-13 01:18:49', '2023-03-13 01:20:14', 'micanic', 'Avilable');

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
(203, 14, 1, 'close', 29.331356438509, 31.201257787917, '2023-03-06 08:45:54', '2023-03-06 08:47:53'),
(212, 14, 1, 'close', 29.331408183042, 31.201277549477, '2023-03-09 18:20:49', '2023-03-09 18:31:15'),
(224, 14, 28, 'close', 29.3314134, 31.2019535, '2023-03-12 04:01:06', '2023-03-12 04:01:58'),
(226, 14, 31, 'close', 29.3313841, 31.2019286, '2023-03-12 05:09:01', '2023-03-12 05:23:42'),
(227, 78, 32, 'close', 29.33135975, 31.201233, '2023-03-12 06:25:26', '2023-03-12 06:32:13'),
(229, 14, 1, 'close', 29.3313798, 31.2019315, '2023-03-13 01:29:36', '2023-03-13 01:30:34');

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
(308, 189, 1, '2023-03-05 22:53:32', '2023-03-05 22:53:32'),
(309, 189, 3, '2023-03-05 22:53:32', '2023-03-05 22:53:32'),
(310, 189, 2, '2023-03-05 22:53:32', '2023-03-05 22:53:32'),
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
(334, 199, 1, '2023-03-06 05:20:29', '2023-03-06 05:20:29'),
(335, 199, 2, '2023-03-06 05:20:29', '2023-03-06 05:20:29'),
(336, 200, 1, '2023-03-06 05:38:26', '2023-03-06 05:38:26'),
(337, 200, 2, '2023-03-06 05:38:26', '2023-03-06 05:38:26'),
(338, 201, 1, '2023-03-06 05:40:51', '2023-03-06 05:40:51'),
(339, 201, 2, '2023-03-06 05:40:51', '2023-03-06 05:40:51'),
(340, 202, 1, '2023-03-06 05:43:30', '2023-03-06 05:43:30'),
(341, 203, 1, '2023-03-06 10:45:54', '2023-03-06 10:45:54'),
(342, 203, 2, '2023-03-06 10:45:54', '2023-03-06 10:45:54'),
(343, 203, 3, '2023-03-06 10:45:54', '2023-03-06 10:45:54'),
(359, 212, 1, '2023-03-09 20:20:49', '2023-03-09 20:20:49'),
(380, 224, 1, '2023-03-12 06:01:06', '2023-03-12 06:01:06'),
(381, 224, 2, '2023-03-12 06:01:06', '2023-03-12 06:01:06'),
(386, 226, 1, '2023-03-12 07:09:01', '2023-03-12 07:09:01'),
(387, 226, 2, '2023-03-12 07:09:01', '2023-03-12 07:09:01'),
(388, 227, 1, '2023-03-12 08:25:26', '2023-03-12 08:25:26'),
(389, 227, 2, '2023-03-12 08:25:26', '2023-03-12 08:25:26'),
(396, 229, 1, '2023-03-13 03:29:36', '2023-03-13 03:29:36'),
(397, 229, 2, '2023-03-13 03:29:36', '2023-03-13 03:29:36');

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
(68, 600.00, 203, '2023-03-06 08:46:01', '2023-03-06 08:46:01'),
(72, 100.00, 212, '2023-03-09 18:21:15', '2023-03-09 18:21:15'),
(82, 300.00, 224, '2023-03-12 04:01:12', '2023-03-12 04:01:12'),
(84, 300.00, 226, '2023-03-12 05:09:23', '2023-03-12 05:09:23'),
(85, 300.00, 227, '2023-03-12 06:27:44', '2023-03-12 06:27:44'),
(87, 300.00, 229, '2023-03-13 01:29:50', '2023-03-13 01:29:50');

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
(617, 'App\\Models\\Micanic', 43, 'Android', '2eb1c7502907c9bbd825f8bfe4152af0854d60a671d66b590adc10b8f96ebd65', '[\"*\"]', NULL, '2023-03-09 20:25:48', '2023-03-09 20:25:48'),
(622, 'App\\Models\\User', 15, 'Android', '3a16338b0e140b5b3433364f13766cd331c14cf4bf16ace7637e9fda647a60a2', '[\"*\"]', NULL, '2023-03-10 02:39:50', '2023-03-10 02:39:50'),
(623, 'App\\Models\\User', 16, 'Android', '67625fc593b0d0b27c82aebdfad71c921e3dc1de5ec6658522c748e207c6fdce', '[\"*\"]', NULL, '2023-03-10 02:47:05', '2023-03-10 02:47:05'),
(624, 'App\\Models\\Micanic', 44, 'Android', 'cafba45dd215c170208645fe45f8a66a671fb3c6e28c552c98e684df2424e52c', '[\"*\"]', NULL, '2023-03-10 03:14:02', '2023-03-10 03:14:02'),
(625, 'App\\Models\\Micanic', 45, 'Android', '9d71576e7579d32049352976cbedfde1227c55da8503bbd4cdb91283e781f73b', '[\"*\"]', NULL, '2023-03-10 03:14:05', '2023-03-10 03:14:05'),
(626, 'App\\Models\\Micanic', 46, 'Android', 'e7d16a7b6d6f01915b0d6ee2cceaaec1e4fb051d1bf6062d635d9da94a50053f', '[\"*\"]', NULL, '2023-03-10 03:38:59', '2023-03-10 03:38:59'),
(627, 'App\\Models\\Micanic', 47, 'Android', 'ac7749e0cdbc3e229c652f403344346793064bc75a8d7e24088b1f639a1c186e', '[\"*\"]', NULL, '2023-03-10 03:39:02', '2023-03-10 03:39:02'),
(628, 'App\\Models\\Micanic', 48, 'Android', '336a59af83167221a4fdc9c34267717459bbaa3c2958b19f5e40acf7bca4ec63', '[\"*\"]', NULL, '2023-03-10 03:45:00', '2023-03-10 03:45:00'),
(629, 'App\\Models\\Micanic', 49, 'Android', 'ef75d6f6b3856bda51831b3b295e8c70668b8f0f413af6e37c4aced6b9ce2008', '[\"*\"]', NULL, '2023-03-10 03:45:03', '2023-03-10 03:45:03'),
(630, 'App\\Models\\Micanic', 50, 'Android', '9bf2d2b38729ea92726aa447b759292d50ee72d7dc4cb03de9b23b779d439951', '[\"*\"]', NULL, '2023-03-10 03:46:39', '2023-03-10 03:46:39'),
(631, 'App\\Models\\Micanic', 51, 'Android', '7fe6ee1dce59cb20c9afa64325be4ae37108e3ad8d9e5f2cc44108ad21f00ad8', '[\"*\"]', NULL, '2023-03-10 03:46:42', '2023-03-10 03:46:42'),
(632, 'App\\Models\\Micanic', 52, 'Android', 'f10cf36042eddc6d5cb88465018f7970b342cf7aab15cd1b06a8dc45f25bbb9d', '[\"*\"]', NULL, '2023-03-10 03:50:29', '2023-03-10 03:50:29'),
(633, 'App\\Models\\Micanic', 53, 'Android', 'd37856fd0d6207537daeda841cda3d09e1a682bdaf8e650ae19bc92b9c3cf6dd', '[\"*\"]', NULL, '2023-03-10 03:50:32', '2023-03-10 03:50:32'),
(634, 'App\\Models\\Micanic', 54, 'Android', '0270a5205412ffb1dbdce5e610a0932787784a36e91c8a843f7552804dadbf32', '[\"*\"]', NULL, '2023-03-10 03:54:02', '2023-03-10 03:54:02'),
(635, 'App\\Models\\Micanic', 55, 'Android', 'b1b8d3fe197ecd7b0240a0906281510608077705a5352a290b61d52cb8961c43', '[\"*\"]', NULL, '2023-03-10 03:54:05', '2023-03-10 03:54:05'),
(636, 'App\\Models\\Micanic', 56, 'Android', '16767cc1292892d197d2cf33209b7c91d4f2a100cc43d61020a64e4e8df91a34', '[\"*\"]', NULL, '2023-03-10 03:55:49', '2023-03-10 03:55:49'),
(637, 'App\\Models\\Micanic', 57, 'Android', '04cbc62b47a7b70a2442f0cd8924dfe8f3ab1fa2d1abad331fd2704ac7a91032', '[\"*\"]', NULL, '2023-03-10 03:55:55', '2023-03-10 03:55:55'),
(638, 'App\\Models\\User', 17, 'Android', '8150fab688a7316523b3cbdee4268603cbcceecb84495b04fc09c97d51b5f698', '[\"*\"]', NULL, '2023-03-10 03:56:14', '2023-03-10 03:56:14'),
(639, 'App\\Models\\User', 18, 'Android', '1c2518c06753eed9af7f78d8d27cd46d47c03e27190241515c9406fa2192fb88', '[\"*\"]', NULL, '2023-03-10 03:57:32', '2023-03-10 03:57:32'),
(640, 'App\\Models\\User', 19, 'Android', '095293c0a35d6158b3d78b0993ddb0ce424b1ca16aa6bbc76afb012f0b9305bb', '[\"*\"]', NULL, '2023-03-10 03:58:49', '2023-03-10 03:58:49'),
(641, 'App\\Models\\User', 20, 'Android', '2d09fec3df6880fe66aeaef7ad8399a1d9006160bf5981c1afa17be1d6ce086e', '[\"*\"]', NULL, '2023-03-10 03:59:44', '2023-03-10 03:59:44'),
(643, 'App\\Models\\User', 21, 'Android', '106b93f1868884f4e4ec1d56831e04933932b88e475ce29db4cb7e0c7558442e', '[\"*\"]', NULL, '2023-03-10 04:36:30', '2023-03-10 04:36:30'),
(644, 'App\\Models\\Micanic', 58, 'Android', '064c328089eb9d28b9654a4801b75f68a6b4db7620e3c2d7cec1f86783b72e2d', '[\"*\"]', NULL, '2023-03-10 04:37:56', '2023-03-10 04:37:56'),
(645, 'App\\Models\\Micanic', 59, 'Android', 'f1278c2917bc4f23beea0daced0cff6a8558379797b0cf7f042f515020642058', '[\"*\"]', NULL, '2023-03-10 04:37:59', '2023-03-10 04:37:59'),
(718, 'App\\Models\\User', 24, 'Android', '6a4fa765a10c589234ab4a8e30cfe14837a925b8c63f738225c9fedf24c6aacb', '[\"*\"]', '2023-03-11 09:16:04', '2023-03-11 09:07:27', '2023-03-11 09:16:04'),
(728, 'App\\Models\\Micanic', 61, 'Android', '09ff66a11124f60572aece8c7878a17d2b1f7172661785595bb1c0dff8c4bf3f', '[\"*\"]', NULL, '2023-03-11 16:41:10', '2023-03-11 16:41:10'),
(732, 'App\\Models\\Micanic', 63, 'Android', 'ba1ad2e27e1991d9e744e8abb2e3cd028b40b04ec9a2949218f925de2eedaf14', '[\"*\"]', NULL, '2023-03-11 16:43:51', '2023-03-11 16:43:51'),
(740, 'App\\Models\\Micanic', 63, 'Android', '045ce7348e119f66425b6e2452be7a175dadc8779ff98ff92f4e5895a82edb94', '[\"*\"]', NULL, '2023-03-11 16:48:52', '2023-03-11 16:48:52'),
(741, 'App\\Models\\Micanic', 63, 'Android', '65b5ca441e49ca4ea1affac205f2c30cdb12802603f019bc2be6db16c8a1f776', '[\"*\"]', NULL, '2023-03-11 16:49:15', '2023-03-11 16:49:15'),
(744, 'App\\Models\\Micanic', 65, 'Android', '9e17ea1781dbae06aebf497fe106a2548f697fc23b45a7ceaa6dd158412f98ef', '[\"*\"]', NULL, '2023-03-11 17:01:44', '2023-03-11 17:01:44'),
(745, 'App\\Models\\Micanic', 66, 'Android', 'd05ee8293d21365e576be1ff4d28a981f209a5edfcedd1576fcf1277f088a3b1', '[\"*\"]', NULL, '2023-03-11 17:01:47', '2023-03-11 17:01:47'),
(746, 'App\\Models\\Micanic', 66, 'Android', 'e052f7ae06516e1b7cf5246e60edbf0af9a11fd2fb780374c0a7575514dca20c', '[\"*\"]', '2023-03-11 17:02:02', '2023-03-11 17:02:01', '2023-03-11 17:02:02'),
(747, 'App\\Models\\Micanic', 67, 'Android', 'f9c62a5e7bac9ccc268cb15397da6025550da639a831b96b0f0917feee13556e', '[\"*\"]', NULL, '2023-03-11 17:07:26', '2023-03-11 17:07:26'),
(748, 'App\\Models\\Micanic', 68, 'Android', '71683da6b9909c65aa93ff37d93638c32586bf8039b95edac04bfaed77fdc375', '[\"*\"]', NULL, '2023-03-11 17:07:32', '2023-03-11 17:07:32'),
(770, 'App\\Models\\Micanic', 72, 'Android', 'e01b7d8ab272d6ab706ca1a240dbcc3586628e871e45606faab39c73da1947ef', '[\"*\"]', NULL, '2023-03-11 19:26:24', '2023-03-11 19:26:24'),
(792, 'App\\Models\\Micanic', 74, 'Android', '3c1bf0315d1bc40564d944583572688adccabd15f9e82537bb5ab0abce710fcd', '[\"*\"]', NULL, '2023-03-12 04:08:55', '2023-03-12 04:08:55'),
(833, 'App\\Models\\Micanic', 14, 'Android', '2d1e236132d9c0ac33e4af0eef254b349ecd591ed96dae4497d2595f198437c6', '[\"*\"]', '2023-03-13 01:30:48', '2023-03-13 01:25:22', '2023-03-13 01:30:48'),
(835, 'App\\Models\\User', 1, 'Android', 'ebfb1c677a7e26cf522583e398f0021ca4e56b9f364054a3bc783206932f2f3d', '[\"*\"]', '2023-03-13 01:31:57', '2023-03-13 01:27:28', '2023-03-13 01:31:57');

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
(22, 1, 'use1', 14, 199, '4', 'good', '2023-03-06 03:25:23', '2023-03-06 03:25:23'),
(23, 1, 'use2', 14, 199, '4', 'bad', '2023-03-06 03:25:23', '2023-03-06 03:25:23'),
(25, 31, 'Hamdy', 14, 226, '1', 'great', '2023-03-12 05:54:56', '2023-03-12 05:54:56'),
(26, 1, 'user', 14, 229, '3', 'good', '2023-03-13 01:31:55', '2023-03-13 01:31:55');

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
(16, 'washing', 300, '2023-03-11 17:55:28', '2023-03-11 17:55:28'),
(19, 'washNew', 900, '2023-03-12 06:34:45', '2023-03-12 06:34:45'),
(20, 'new', 500, '2023-03-13 01:21:05', '2023-03-13 01:21:05');

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
(2, 'user2', 'user1@gmail.com', '2023-02-20 20:45:46', '$2y$10$2.uqd9Q6ZgTQhfKWUId4Y.lT15SoNU..Bug8x9iEO69dvfvJvvGbm', NULL, NULL, '2023-02-20 20:35:58', '2023-02-20 20:45:46', 'user'),
(3, 'user', 'user2@gmail.com', NULL, '$2y$10$j8QZQ2jhPlQMP3fd3RbgU.VsVsQdaT2DQ3311ptcqJaeGY5zzdGvy', NULL, NULL, '2023-02-26 01:14:06', '2023-02-26 01:14:06', 'user'),
(4, 'islam', 'user3@gmail.com', NULL, '$2y$10$7OEDt96ze8WUyV39Of2s9uAlvyE6yC0PWxiDRkSbQd0wCl3ZZbfA2', NULL, NULL, '2023-02-26 01:15:56', '2023-02-26 01:15:56', 'user'),
(7, 'user', 'user4@gmail.com', '2023-02-20 20:45:46', '$2y$10$8do9.weooiH6czOy2Mv9Ju1aaKYZ2m8j6IFqtOLh2hzUwjG6XVXky', NULL, NULL, '2023-02-20 20:35:58', '2023-02-26 14:32:18', 'user'),
(8, 'user', 'user5@gmail.com', '2023-02-20 20:45:46', '$2y$10$8do9.weooiH6czOy2Mv9Ju1aaKYZ2m8j6IFqtOLh2hzUwjG6XVXky', NULL, NULL, '2023-02-20 20:35:58', '2023-02-26 14:32:18', 'user'),
(9, 'islam9999', 'user6@gmail.com', '2023-02-28 23:53:12', '$2y$10$T8XQaijiyZbZg/DsOepXF.06BGgM7dClizQkl5Ryg3UGOZmsA9oVi', NULL, NULL, '2023-03-06 21:51:37', '2023-03-06 21:51:37', 'user'),
(10, 'user123', 'user7@gmail.com', NULL, '$2y$10$O4b5FChbE0Mcp2yyCQeq4Oq.KFUGsgTL.FOsRkihBKyQg8OStZ/qu', NULL, NULL, '2023-03-06 22:27:31', '2023-03-06 22:27:31', 'user'),
(11, 'islam999', 'user8@gmail.com', '2023-03-06 22:52:33', '$2y$10$68kUU.e.HQ9b9cem0X8ZbegK3ygHUBoS2ZFN6fiqgZ7r4.WRRcJWa', NULL, NULL, '2023-03-06 22:51:45', '2023-03-06 22:52:33', 'user'),
(26, 'islam', 'user96969@gmail.com', '2023-03-11 16:47:49', '$2y$10$.Bz4Wcv2OtGWc.aojnEV0u4XiBdLP519biPjz0PUf1mbvmSDQ0uzW', NULL, NULL, '2023-03-11 16:47:34', '2023-03-11 16:47:49', 'user'),
(27, 'islam', 'islam@gmail.com', '2023-03-11 17:47:49', '$2y$10$JEEMTQ2DZEIZdZwr5fRLuuTF9pksBAq8hWvucN5oE//L8ogArfPRW', NULL, NULL, '2023-03-11 17:47:33', '2023-03-11 17:47:49', 'user'),
(28, 'islam salah', 'islamSalah@gmail.com', '2023-03-12 04:00:57', '$2y$10$6JKVymxINFfmhWih9dfYwO1/cWpawoPLjHy3cc1TGnsc/4EbnOmGO', NULL, NULL, '2023-03-12 04:00:27', '2023-03-12 04:00:57', 'user'),
(31, 'Hamdy', 'Hamdy@gmail.com', '2023-03-12 05:08:51', '$2y$10$kmw1AbLOzGvIIJ6x0x7WY.OS6lkwAQLAlapbISEPOwcdSpaR5KB.2', NULL, NULL, '2023-03-12 05:08:38', '2023-03-12 05:08:51', 'user'),
(32, 'islamUser', 'islamUser@gmail.com', '2023-03-12 06:18:14', '$2y$10$avbrLlm5KJLtIe3CLfyH7OPcCYToJs6IY85huDhYDTHT6NYPyaCWW', NULL, NULL, '2023-03-12 06:17:57', '2023-03-12 06:18:14', 'user'),
(33, 'userIslam', 'userIslam@gmail.com', '2023-03-13 01:22:26', '$2y$10$3C.R4LFKMNFjE3B52XUGy.9YlamU7WRhO74S8zSG6EWT8Iwnq/.rK', NULL, NULL, '2023-03-13 01:22:10', '2023-03-13 01:22:26', 'user');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `micanics`
--
ALTER TABLE `micanics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `order_services`
--
ALTER TABLE `order_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=836;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
