-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 02, 2021 at 04:23 AM
-- Server version: 5.7.32-0ubuntu0.18.04.1
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maps_geocoding`
--

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE `maps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maps`
--

INSERT INTO `maps` (`id`, `title`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(2, 'test', 'test', 'test', NULL, NULL),
(3, 'test1', 'test1', 'test1', NULL, NULL),
(4, 'bangalore', '12.96991', '77.59796', '2021-02-01 15:54:10', '2021-02-01 15:54:10'),
(5, 'mysore', '12.30306', '76.64333', '2021-02-01 15:58:41', '2021-02-01 15:58:41'),
(6, 'hubli', '15.3602835', '75.08551', '2021-02-01 16:00:31', '2021-02-01 16:00:31'),
(7, 'chennai', '13.09', '80.27', '2021-02-01 16:02:43', '2021-02-01 16:02:43'),
(8, 'dubai', '25.2684', '55.2962', '2021-02-01 16:03:22', '2021-02-01 16:03:22'),
(9, 'singapore', '1.3516161224392', '103.80805258633', '2021-02-01 16:03:48', '2021-02-01 16:03:48'),
(10, 'salem', '44.9392', '-123.0331', '2021-02-01 16:07:37', '2021-02-01 16:07:37'),
(11, 'rameshwaram', '9.291234', '79.322452', '2021-02-01 16:08:54', '2021-02-01 16:08:54'),
(12, 'siliguri', '26.742624', '88.392302', '2021-02-01 16:09:41', '2021-02-01 16:09:41'),
(13, 'dombivili', '19.21843', '73.08672', '2021-02-01 16:10:01', '2021-02-01 16:10:01'),
(14, 'vizag', '17.743697', '83.314413', '2021-02-01 16:10:59', '2021-02-01 16:10:59'),
(15, 'tirupathi', '37.412875', '-121.903488', '2021-02-01 16:11:31', '2021-02-01 16:11:31'),
(16, 'gangavathi', '15.43', '76.53', '2021-02-01 16:15:37', '2021-02-01 16:15:37'),
(17, 'chalkere', '43.705747', '-79.442378', '2021-02-01 16:15:53', '2021-02-01 16:15:53'),
(18, 'lepakshi', '13.802602', '77.60945525', '2021-02-01 16:16:55', '2021-02-01 16:16:55'),
(19, 'trivandrum', '8.476694', '76.918944', '2021-02-01 16:17:32', '2021-02-01 16:17:32'),
(20, 'delhi', '28.66667', '77.21667', '2021-02-01 16:20:10', '2021-02-01 16:20:10'),
(21, 'goa', '15.32555604685', '74.054110820365', '2021-02-01 16:21:32', '2021-02-01 16:21:32'),
(22, 'panaji', '15.48', '73.83', '2021-02-01 16:23:54', '2021-02-01 16:23:54'),
(23, 'rangoon', '37.44505', '-122.163147', '2021-02-01 16:25:29', '2021-02-01 16:25:29'),
(24, 'savadatti', '15.756116', '75.139553', '2021-02-01 16:25:52', '2021-02-01 16:25:52'),
(25, 'shikaripura', '24.193994', '87.569769', '2021-02-01 16:26:02', '2021-02-01 16:26:02'),
(26, 'shivamogga', '13.9167', '75.5667', '2021-02-01 16:26:58', '2021-02-01 16:26:58'),
(27, 'sirsi', '14.6169', '74.8309', '2021-02-01 16:27:56', '2021-02-01 16:27:56'),
(28, 'channapatna', '12.659301', '77.2035105', '2021-02-01 16:28:20', '2021-02-01 16:28:20'),
(29, 'ramdurg', '15.95', '75.3', '2021-02-01 16:30:46', '2021-02-01 16:30:46'),
(30, 'rabkavi', '16.47567', '75.1106', '2021-02-01 16:31:09', '2021-02-01 16:31:09'),
(31, 'piriyapatna', '12.34', '76.1', '2021-02-01 16:31:23', '2021-02-01 16:31:23'),
(32, 'chicago', '41.8756', '-87.6244', '2021-02-01 16:31:43', '2021-02-01 16:31:43'),
(33, 'melbourne', '-37.8142', '144.9632', '2021-02-01 16:31:59', '2021-02-01 16:31:59'),
(34, 'mumbai', '18.96667', '72.83333', '2021-02-01 17:03:03', '2021-02-01 17:03:03'),
(35, 'pune', '18.52361', '73.84778', '2021-02-01 17:03:29', '2021-02-01 17:03:29'),
(36, 'hydera\'bad', '17.36667', '78.46667', '2021-02-01 17:03:39', '2021-02-01 17:03:39'),
(37, 'hyderabad', '17.36667', '78.46667', '2021-02-01 17:18:34', '2021-02-01 17:18:34');

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
(4, '2021_02_01_171252_create_maps_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `maps`
--
ALTER TABLE `maps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
