-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2023 at 08:47 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `excel`
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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `filename`, `created_at`, `updated_at`) VALUES
(1, '[\"1083297.jpg\",\"56236.jpg\"]', '2022-09-13 10:21:09', '2022-09-13 10:21:09'),
(2, '[\"FreeFire_02_14_2021 08_16_55.png\",\"FreeFire_06_18_2021 00_51_13.png\"]', '2022-09-13 10:25:34', '2022-09-13 10:25:34'),
(3, '[\"tmp-906029496540700673-2nQr2U.jpg\",\"tmp-906029496540700673-7hLPIh.jpg\"]', '2022-09-13 10:58:56', '2022-09-13 10:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `image_models`
--

CREATE TABLE `image_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_models`
--

INSERT INTO `image_models` (`id`, `filename`, `created_at`, `updated_at`) VALUES
(1, '16630842711083297.jpg', '2022-09-13 09:51:11', '2022-09-13 09:51:11'),
(2, '1663084307169139.jpg', '2022-09-13 09:51:47', '2022-09-13 09:51:47');

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
(5, '2022_09_13_153327_create_image_models_table', 2),
(6, '2022_09_13_160540_create_forms_table', 3);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Miss Aletha Heidenreich', 'auer.hope@example.org', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'l6oBI5fBM8', '2022-09-13 08:27:01', '2022-09-13 08:27:01'),
(2, 'Prof. Bell Erdman', 'cummings.magali@example.org', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QCinYDHONG', '2022-09-13 08:27:02', '2022-09-13 08:27:02'),
(3, 'Ms. Daphnee Breitenberg', 'rahsaan62@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9GNNosI0KM', '2022-09-13 08:27:02', '2022-09-13 08:27:02'),
(4, 'Ms. Clemmie McGlynn Jr.', 'tvolkman@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7hkVk0OQlh', '2022-09-13 08:27:02', '2022-09-13 08:27:02'),
(5, 'Jacquelyn Howell', 'shannon95@example.org', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bRWmFpzpE0', '2022-09-13 08:27:02', '2022-09-13 08:27:02'),
(6, 'Hector Aufderhar', 'margot76@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VeYqMl7IaV', '2022-09-13 08:27:02', '2022-09-13 08:27:02'),
(7, 'Ivory Spencer', 'helene.pfannerstill@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vwekPvZ95o', '2022-09-13 08:27:02', '2022-09-13 08:27:02'),
(8, 'Ms. Leonor Simonis', 'ucollier@example.net', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FOjMH3PMGh', '2022-09-13 08:27:03', '2022-09-13 08:27:03'),
(9, 'Dr. Hadley Huel', 'frankie95@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yiDSDVDzPU', '2022-09-13 08:27:03', '2022-09-13 08:27:03'),
(10, 'Duncan Friesen', 'vmarquardt@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5OTRSvSjXq', '2022-09-13 08:27:03', '2022-09-13 08:27:03'),
(11, 'Kayleigh Prohaska V', 'rosie.senger@example.net', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vPBRdLBvtI', '2022-09-13 08:27:03', '2022-09-13 08:27:03'),
(12, 'Marco Hauck', 'jeffry.steuber@example.net', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c2ihCUVfIF', '2022-09-13 08:27:03', '2022-09-13 08:27:03'),
(13, 'Theodora DuBuque', 'pruecker@example.org', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uCocZSLcmL', '2022-09-13 08:27:03', '2022-09-13 08:27:03'),
(14, 'Gaston Leannon', 'pagac.melyssa@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '51DlxxyQXN', '2022-09-13 08:27:03', '2022-09-13 08:27:03'),
(15, 'Prof. Hobart Sipes', 'mayert.nathanial@example.net', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zVhbgOMVTO', '2022-09-13 08:27:03', '2022-09-13 08:27:03'),
(16, 'Prof. Arturo Breitenberg III', 'santos85@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vLBkjhB9Xb', '2022-09-13 08:27:03', '2022-09-13 08:27:03'),
(17, 'Dr. Clemmie Ritchie', 'arnulfo.aufderhar@example.org', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rPl9itM4pp', '2022-09-13 08:27:03', '2022-09-13 08:27:03'),
(18, 'Dr. Giovani Maggio', 'reymundo77@example.net', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'K99CTuNX4Z', '2022-09-13 08:27:03', '2022-09-13 08:27:03'),
(19, 'Rosa Heller', 'ayla.rath@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Uhibp6YQhk', '2022-09-13 08:27:03', '2022-09-13 08:27:03'),
(20, 'Dr. Celine Heller II', 'jo.welch@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VpN22mhZam', '2022-09-13 08:27:04', '2022-09-13 08:27:04'),
(21, 'Kitty Fisher I', 'whuel@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0MKuhKFyKE', '2022-09-13 08:27:04', '2022-09-13 08:27:04'),
(22, 'Prof. Blair Lowe II', 'chet.langworth@example.org', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ayxrm9iMFe', '2022-09-13 08:27:04', '2022-09-13 08:27:04'),
(23, 'Prof. Teresa Carter', 'amelia72@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4RfJthHYSz', '2022-09-13 08:27:04', '2022-09-13 08:27:04'),
(24, 'Prof. Alford Glover', 'noelia.kub@example.net', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bg0lHtiwH6', '2022-09-13 08:27:04', '2022-09-13 08:27:04'),
(25, 'Zelma Howell', 'goyette.jerrold@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DaEY85UZZm', '2022-09-13 08:27:04', '2022-09-13 08:27:04'),
(26, 'Enola Gleason', 'destin.gerlach@example.net', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ykBRnZE42s', '2022-09-13 08:27:04', '2022-09-13 08:27:04'),
(27, 'Henderson Bogan', 'nicola.harvey@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BlkhF1Us6R', '2022-09-13 08:27:04', '2022-09-13 08:27:04'),
(28, 'Reese Cronin', 'flueilwitz@example.org', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rtgiy0v6gU', '2022-09-13 08:27:04', '2022-09-13 08:27:04'),
(29, 'Orrin Marquardt I', 'buck19@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TA7trp6Ewc', '2022-09-13 08:27:04', '2022-09-13 08:27:04'),
(30, 'Elmira Becker', 'jerrell55@example.net', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6OyZHcTyFe', '2022-09-13 08:27:04', '2022-09-13 08:27:04'),
(31, 'Dr. Lea Blick III', 'fahey.gregoria@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oKLM3hs7ma', '2022-09-13 08:27:05', '2022-09-13 08:27:05'),
(32, 'Dulce Hettinger', 'eric82@example.org', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RFrMU7LlAr', '2022-09-13 08:27:05', '2022-09-13 08:27:05'),
(33, 'Macie Kohler', 'claudia77@example.net', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'maXfSNCLJa', '2022-09-13 08:27:05', '2022-09-13 08:27:05'),
(34, 'Modesto Wunsch', 'jjerde@example.net', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5MEpUVypAe', '2022-09-13 08:27:05', '2022-09-13 08:27:05'),
(35, 'Adella Adams', 'stevie33@example.org', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2qMEvZvfNm', '2022-09-13 08:27:05', '2022-09-13 08:27:05'),
(36, 'Allie Heller PhD', 'mckenna.cruickshank@example.org', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1GHr0ABQxV', '2022-09-13 08:27:05', '2022-09-13 08:27:05'),
(37, 'Shanel Ebert V', 'rosie.franecki@example.org', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tM3Wqjx3Ie', '2022-09-13 08:27:05', '2022-09-13 08:27:05'),
(38, 'Mr. Jerome Hammes DDS', 'rigoberto98@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AVFMC8hsBZ', '2022-09-13 08:27:05', '2022-09-13 08:27:05'),
(39, 'Jayne Vandervort', 'davis.alexandria@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pgViWP5KU2', '2022-09-13 08:27:05', '2022-09-13 08:27:05'),
(40, 'Miss Brionna Leuschke DDS', 'skiles.adrianna@example.net', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'U99ZYHFz40', '2022-09-13 08:27:05', '2022-09-13 08:27:05'),
(41, 'Diego Johns', 'zackery.bernhard@example.net', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vMgIdeMhPs', '2022-09-13 08:27:05', '2022-09-13 08:27:05'),
(42, 'Scot Kertzmann', 'bbayer@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CLziD4UUlL', '2022-09-13 08:27:05', '2022-09-13 08:27:05'),
(43, 'Dr. Daron Volkman IV', 'merle33@example.org', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Pe51azPavw', '2022-09-13 08:27:06', '2022-09-13 08:27:06'),
(44, 'Jay Boyer', 'vmckenzie@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lbPMCvI7SR', '2022-09-13 08:27:06', '2022-09-13 08:27:06'),
(45, 'Johnathan Morar', 'vzieme@example.org', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dCUzBSn7bD', '2022-09-13 08:27:06', '2022-09-13 08:27:06'),
(46, 'Lourdes Berge', 'magali98@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DpxNx55WO2', '2022-09-13 08:27:06', '2022-09-13 08:27:06'),
(47, 'Teresa Hoppe', 'lowe.mittie@example.com', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jI3UvadE5L', '2022-09-13 08:27:06', '2022-09-13 08:27:06'),
(48, 'Prof. Ashleigh Conn', 'cormier.fae@example.net', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dqX0MHoB4j', '2022-09-13 08:27:06', '2022-09-13 08:27:06'),
(49, 'Braxton Kemmer V', 'vivianne.barrows@example.org', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wi9iS1mukw', '2022-09-13 08:27:06', '2022-09-13 08:27:06'),
(50, 'Felicita Koepp', 'friesen.cleve@example.net', '2022-09-13 08:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YaBMl6LKiC', '2022-09-13 08:27:06', '2022-09-13 08:27:06');

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
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_models`
--
ALTER TABLE `image_models`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `image_models`
--
ALTER TABLE `image_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
