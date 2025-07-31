-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 31, 2025 at 07:40 AM
-- Server version: 8.0.30
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `booking_date` date NOT NULL,
  `status` enum('pending','confirmed','cancelled','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `service_id`, `booking_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-08-01', 'pending', '2025-07-29 07:55:25', '2025-07-29 07:55:25'),
(2, 1, 1, '2025-08-01', 'pending', '2025-07-29 07:55:41', '2025-07-29 07:55:41'),
(3, 1, 1, '2025-08-01', 'pending', '2025-07-29 07:55:46', '2025-07-29 07:55:46'),
(6, 3, 3, '2025-08-01', 'pending', '2025-07-31 00:37:21', '2025-07-31 00:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_07_28_143127_create_services_table', 1),
(5, '2025_07_28_143423_create_bookings_table', 1),
(6, '2025_07_28_193820_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'api_token', '701140ac5a9c76e476ea6a5212f01430caca42cd6f2ef2e319c787dbdefa637a', '[\"*\"]', NULL, NULL, '2025-07-28 14:56:10', '2025-07-28 14:56:10'),
(2, 'App\\Models\\User', 2, 'api_token', 'f6c3ca0149cfb770d82a47567e0f7c69dfe44252b7d43c25b6105324c984409a', '[\"*\"]', NULL, NULL, '2025-07-28 14:56:37', '2025-07-28 14:56:37'),
(3, 'App\\Models\\User', 2, 'api_token', '8d995fc59f77511ce1f1344070bf806fa87413a43f101cd6262272592ee1dfbf', '[\"*\"]', '2025-07-29 05:57:27', NULL, '2025-07-29 04:55:28', '2025-07-29 05:57:27'),
(4, 'App\\Models\\User', 1, 'api_token', 'db536355eeb7e2ea4e34cddb891dbd36668e795e464bdf6aebb087e9fdcc8e81', '[\"*\"]', NULL, NULL, '2025-07-29 04:55:50', '2025-07-29 04:55:50'),
(5, 'App\\Models\\User', 3, 'api_token', '5d3a9da45a299190596fee82666210350ab73db893f40d9f5dd5619ed9593af2', '[\"*\"]', NULL, NULL, '2025-07-29 04:56:12', '2025-07-29 04:56:12'),
(6, 'App\\Models\\User', 1, 'api_token', 'a34ddaa5188caa8cf65dd39b337ed2a41f470abc1b764bdca7a611eb3ceb0719', '[\"*\"]', '2025-07-29 05:43:10', NULL, '2025-07-29 05:41:22', '2025-07-29 05:43:10'),
(7, 'App\\Models\\User', 1, 'api_token', 'c8e482ca6a3c7969112ea4d29c2edaa21670ed156333af34605c6d453a75ee7c', '[\"*\"]', '2025-07-29 05:57:12', NULL, '2025-07-29 05:57:09', '2025-07-29 05:57:12'),
(8, 'App\\Models\\User', 1, 'api_token', '4d1e7f3656db743f65717eaddcddc008b06c914361acdd9606ed03e4e80bdd0b', '[\"*\"]', '2025-07-29 05:58:00', NULL, '2025-07-29 05:57:57', '2025-07-29 05:58:00'),
(9, 'App\\Models\\User', 1, 'api_token', '863bffee44392d76b3488c72d3a0cf9977c98ab39b7a85b9040230dab2ab1405', '[\"*\"]', '2025-07-29 06:06:19', NULL, '2025-07-29 06:02:22', '2025-07-29 06:06:19'),
(10, 'App\\Models\\User', 1, 'api_token', 'd02baa87a082d12c5dbde8846bbdf54c05c7489156f1a78adf309e6b40c5236c', '[\"*\"]', '2025-07-29 06:06:39', NULL, '2025-07-29 06:06:36', '2025-07-29 06:06:39'),
(11, 'App\\Models\\User', 1, 'api_token', '74d1e23156872d6d81211049fc8eda5b9df8e3cb97f67356dd77872645a6b820', '[\"*\"]', NULL, NULL, '2025-07-29 06:17:50', '2025-07-29 06:17:50'),
(12, 'App\\Models\\User', 1, 'api_token', '6d12eb4f7e57cb72bf26fe57cc9303a97d8588251e035ab9f892a3f2c961cf53', '[\"*\"]', NULL, NULL, '2025-07-29 06:18:17', '2025-07-29 06:18:17'),
(13, 'App\\Models\\User', 1, 'api_token', '14dc7cd81a18eee6abb31b90899e5f557cbc7995ceb363feb99914200a3872c9', '[\"*\"]', NULL, NULL, '2025-07-29 06:21:23', '2025-07-29 06:21:23'),
(14, 'App\\Models\\User', 1, 'api_token', 'db41b0f168f9b3912b50509689ba82464cd98b7aa18de6f2c1ad4e76019247dd', '[\"*\"]', '2025-07-29 06:25:36', NULL, '2025-07-29 06:25:28', '2025-07-29 06:25:36'),
(15, 'App\\Models\\User', 1, 'api_token', '66343ae103439bfec8cbeab39bbc3ffe9be65640773eeaa7f5dd66470e77cedc', '[\"*\"]', '2025-07-29 08:03:47', NULL, '2025-07-29 06:26:08', '2025-07-29 08:03:47'),
(16, 'App\\Models\\User', 3, 'api_token', '23f0e84bf6f529b81e09e6b06bccfcef2102eaced6c0def88b7105a735418dfd', '[\"*\"]', '2025-07-31 00:08:13', NULL, '2025-07-29 08:04:16', '2025-07-31 00:08:13'),
(17, 'App\\Models\\User', 2, 'api_token', 'd28a653c582918c06e76834b699cc54dbb1db0b89009c3bba2d8357103d5596f', '[\"*\"]', NULL, NULL, '2025-07-30 22:50:09', '2025-07-30 22:50:09'),
(18, 'App\\Models\\User', 2, 'api_token', '63b74d3e63865fa08dc21c313a3a1e9e45885957eeedcdd21ec3d05cb7cfc810', '[\"*\"]', NULL, NULL, '2025-07-30 22:51:17', '2025-07-30 22:51:17'),
(19, 'App\\Models\\User', 2, 'api_token', '0e980165a2004d02620c13de4c13d8bd1b980f7bac661c5e879234f33dd085e5', '[\"*\"]', NULL, NULL, '2025-07-30 22:51:21', '2025-07-30 22:51:21'),
(20, 'App\\Models\\User', 2, 'api_token', '5b1ba63b3390916278286101bf4781b01360cddd169ff54195a0190e33f38341', '[\"*\"]', '2025-07-31 00:07:56', NULL, '2025-07-30 22:54:57', '2025-07-31 00:07:56'),
(21, 'App\\Models\\User', 2, 'api_token', '4699f16cad38d305f117d4a749811e894b84533947fa8d1fd0aca72abcd69dfb', '[\"*\"]', '2025-07-31 00:17:39', NULL, '2025-07-31 00:07:59', '2025-07-31 00:17:39'),
(22, 'App\\Models\\User', 4, 'api_token', '86886b6dc688c120ab6218bf2462dd662cbc600ebdb79379d43cf3e8a561f756', '[\"*\"]', NULL, NULL, '2025-07-31 00:33:17', '2025-07-31 00:33:17'),
(23, 'App\\Models\\User', 3, 'api_token', 'd542e46bc5d3cb436e60fd3dceaad64bfe81842ea9a7681290308c5e582523ca', '[\"*\"]', '2025-07-31 00:38:42', NULL, '2025-07-31 00:33:48', '2025-07-31 00:38:42'),
(24, 'App\\Models\\User', 2, 'api_token', 'c949d74f002843229481055e405fcb0224d5d8d4e80b236cea6d0676e1894779', '[\"*\"]', '2025-07-31 00:58:16', NULL, '2025-07-31 00:38:02', '2025-07-31 00:58:16'),
(25, 'App\\Models\\User', 1, 'api_token', '6e1b828a4711a7555867bf7bc556e8a3f27f4a54080dff2d67d9bc160a298ffc', '[\"*\"]', NULL, NULL, '2025-07-31 00:40:31', '2025-07-31 00:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,2) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Haircut', 'Professional men’s and women’s haircut service.', '15.00', 'active', '2025-07-28 14:59:40', '2025-07-28 14:59:40'),
(3, 'Manicure', 'Complete hand and nail care service.', '20.00', 'inactive', '2025-07-28 14:59:40', '2025-07-28 14:59:40'),
(4, 'Premium Cleaning Service', 'Deep cleaning for residential properties', '1500.00', 'active', '2025-07-30 22:55:29', '2025-07-30 22:55:29'),
(7, 'Premium Cleaning Service', 'Deep cleaning for residential properties', '500.00', 'active', '2025-07-30 23:21:28', '2025-07-30 23:21:28'),
(9, 'update this field', 'Deep cleaning for residential properties', '500.00', 'active', '2025-07-31 00:38:28', '2025-07-31 00:39:07');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('BpbZtFHJoFmi9cYVa9NnbbCDISx2TgjyaNEbUhKG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYU5OMjZQM0RwbHM4akxzTERqVWhhbFdHYUZHTXBKV0RtWUZSc2psNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753797386),
('LvfJ8WicgtLnReVO2T7c9tsRjhKlXvYS2HiPIZE9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnB4dGdvWUxheFNmZGFOcE9kQm9VcnFvekg3MlJtREM3NEZ6RzByUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753786476),
('pEsAgXQWk7a1GLbg0pppnLOPbglhVJRCjna8pKxr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZW9mdWg2QVlOSVUyeGZxRnFkeG5xc091Z2VkRVdLNG01dkl0anF6TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753937399);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john@example.com', NULL, '$2y$12$VqY/WcmcdMSmsVoMvsXoWuVz9CZnl6NvwRhzAq.Dk5gfqYgcYT5mK', 0, NULL, '2025-07-28 14:56:10', '2025-07-28 14:56:10'),
(2, 'Admin', 'admin@example.com', '2025-07-28 14:59:40', '$2y$12$LUv/hTo1KnEQnjS.U07n8uz25YZeLJsyeh/6INAi/RQA2b2q7hnVO', 1, NULL, '2025-07-28 14:56:33', '2025-07-28 14:59:40'),
(3, 'John Doe', 'apel@example.com', NULL, '$2y$12$M5JCy0hlUR3K9WaYAF8mh.QJEw/6Sl39ypdH//m9B3sBAS2NYW5uC', 0, NULL, '2025-07-29 04:56:12', '2025-07-29 04:56:12'),
(4, 'John Doe', 'apelsarkar@example.com', NULL, '$2y$12$nZnvOUNaASnvI.rECxuga.eqcD6XlWIy4T8/kanuxuc05j2PWGu3C', 0, NULL, '2025-07-31 00:33:17', '2025-07-31 00:33:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`),
  ADD KEY `bookings_service_id_foreign` (`service_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
