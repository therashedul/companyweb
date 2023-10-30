-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 29, 2023 at 12:25 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carbonassetdevelopers`
--

-- --------------------------------------------------------

--
-- Table structure for table `blacklists`
--

CREATE TABLE `blacklists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blacklists`
--

INSERT INTO `blacklists` (`id`, `user_id`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, '::2', '2023-04-10 02:58:53', '2023-04-10 02:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `category_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `privatecat` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title_en`, `name_en`, `slug_en`, `title_bn`, `name_bn`, `slug_bn`, `link`, `parent_id`, `category_img`, `status`, `privatecat`, `created_at`, `updated_at`) VALUES
(1, 'Education', 'Education', 'Education', 'Everment_bn', 'Everment_bn', 'Everment_bn', NULL, 0, NULL, 1, 0, '2023-04-02 00:46:05', '2023-04-02 00:49:24'),
(2, 'men', 'men', 'men', 'মরক্কো যোগ্যতা', 'মরক্কো যোগ্যতা', 'মরক্কো_যোগ্যতা', NULL, 0, NULL, 1, 1, '2023-04-02 00:58:38', '2023-04-27 00:15:10'),
(4, 'Gallery', 'Gallery', 'Gallery', 'Gallery', 'Gallery', 'Gallery', NULL, 0, NULL, 1, 1, '2023-04-16 00:08:51', '2023-04-16 00:08:51'),
(5, 'Video', 'Video', 'Video', 'Video', 'Video', 'Video', NULL, 0, NULL, 1, 1, '2023-04-16 00:10:33', '2023-04-16 00:10:33'),
(6, 'partners', 'partners', 'partners', 'partners', 'partners', 'partners', NULL, 0, NULL, 1, 1, '2023-04-25 22:16:02', '2023-04-25 22:16:02');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `comment_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentemail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `hitlogs`
--

CREATE TABLE `hitlogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spent_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hitlogs`
--

INSERT INTO `hitlogs` (`id`, `ip`, `view`, `browser`, `link`, `spent_time`, `created_at`, `updated_at`) VALUES
(65, '127.0.0.1', 'generated::Zoq8Gavc5vbjg4nH', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-15 23:39:47', '2023-04-15 23:39:47'),
(66, '127.0.0.1', 'generated::Zoq8Gavc5vbjg4nH', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-15 23:49:53', '2023-04-15 23:49:53'),
(67, '127.0.0.1', 'generated::Zoq8Gavc5vbjg4nH', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-15 23:50:38', '2023-04-15 23:50:38'),
(68, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 02:42:49', '2023-04-16 02:42:49'),
(69, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 02:43:12', '2023-04-16 02:43:12'),
(70, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 02:43:16', '2023-04-16 02:43:16'),
(71, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:07:28', '2023-04-16 03:07:28'),
(72, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:08:30', '2023-04-16 03:08:30'),
(73, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:22:41', '2023-04-16 03:22:41'),
(74, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:22:49', '2023-04-16 03:22:49'),
(75, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:25:18', '2023-04-16 03:25:18'),
(76, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:25:21', '2023-04-16 03:25:21'),
(77, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:31:23', '2023-04-16 03:31:23'),
(78, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:33:26', '2023-04-16 03:33:26'),
(79, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:34:09', '2023-04-16 03:34:09'),
(80, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:35:46', '2023-04-16 03:35:46'),
(81, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:36:44', '2023-04-16 03:36:44'),
(82, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:36:56', '2023-04-16 03:36:56'),
(83, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:36:58', '2023-04-16 03:36:58'),
(84, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:42:23', '2023-04-16 03:42:23'),
(85, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:44:02', '2023-04-16 03:44:02'),
(86, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:44:16', '2023-04-16 03:44:16'),
(87, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:45:36', '2023-04-16 03:45:36'),
(88, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:45:56', '2023-04-16 03:45:56'),
(89, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:48:53', '2023-04-16 03:48:53'),
(90, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:51:11', '2023-04-16 03:51:11'),
(91, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:51:30', '2023-04-16 03:51:30'),
(92, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:52:48', '2023-04-16 03:52:48'),
(93, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:54:17', '2023-04-16 03:54:17'),
(94, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-16 03:54:54', '2023-04-16 03:54:54'),
(95, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 03:57:45', '2023-04-16 03:57:45'),
(96, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-16 03:57:56', '2023-04-16 03:57:56'),
(97, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-16 03:58:01', '2023-04-16 03:58:01'),
(98, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 03:58:05', '2023-04-16 03:58:05'),
(99, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 03:58:54', '2023-04-16 03:58:54'),
(100, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 03:59:10', '2023-04-16 03:59:10'),
(101, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 21:57:57', '2023-04-16 21:57:57'),
(102, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 21:58:58', '2023-04-16 21:58:58'),
(103, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-16 21:59:36', '2023-04-16 21:59:36'),
(104, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 21:59:39', '2023-04-16 21:59:39'),
(105, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 22:00:03', '2023-04-16 22:00:03'),
(106, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 22:01:13', '2023-04-16 22:01:13'),
(107, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 22:01:18', '2023-04-16 22:01:18'),
(108, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 22:01:28', '2023-04-16 22:01:28'),
(109, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 22:01:41', '2023-04-16 22:01:41'),
(110, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 22:01:41', '2023-04-16 22:01:41'),
(111, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 22:01:49', '2023-04-16 22:01:49'),
(112, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 22:01:59', '2023-04-16 22:01:59'),
(113, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 22:12:32', '2023-04-16 22:12:32'),
(114, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 22:14:04', '2023-04-16 22:14:04'),
(115, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 22:14:58', '2023-04-16 22:14:58'),
(116, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 22:16:24', '2023-04-16 22:16:24'),
(117, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 22:20:30', '2023-04-16 22:20:30'),
(118, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 22:21:37', '2023-04-16 22:21:37'),
(119, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 22:27:42', '2023-04-16 22:27:42'),
(120, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 22:28:14', '2023-04-16 22:28:14'),
(121, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 22:28:59', '2023-04-16 22:28:59'),
(122, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 22:33:37', '2023-04-16 22:33:37'),
(123, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 22:35:47', '2023-04-16 22:35:47'),
(124, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 22:48:50', '2023-04-16 22:48:50'),
(125, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 23:09:56', '2023-04-16 23:09:56'),
(126, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 23:10:42', '2023-04-16 23:10:42'),
(127, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 23:14:01', '2023-04-16 23:14:01'),
(128, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 23:15:40', '2023-04-16 23:15:40'),
(129, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 23:16:40', '2023-04-16 23:16:40'),
(130, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-16 23:17:29', '2023-04-16 23:17:29'),
(131, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:36:13', '2023-04-17 00:36:13'),
(132, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:38:33', '2023-04-17 00:38:33'),
(133, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:39:10', '2023-04-17 00:39:10'),
(134, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:39:53', '2023-04-17 00:39:53'),
(135, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:42:05', '2023-04-17 00:42:05'),
(136, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:42:16', '2023-04-17 00:42:16'),
(137, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:42:31', '2023-04-17 00:42:31'),
(138, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:43:25', '2023-04-17 00:43:25'),
(139, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:46:43', '2023-04-17 00:46:43'),
(140, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:47:38', '2023-04-17 00:47:38'),
(141, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:48:02', '2023-04-17 00:48:02'),
(142, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:48:16', '2023-04-17 00:48:16'),
(143, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:50:17', '2023-04-17 00:50:17'),
(144, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:50:27', '2023-04-17 00:50:27'),
(145, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:50:37', '2023-04-17 00:50:37'),
(146, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:50:47', '2023-04-17 00:50:47'),
(147, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:51:14', '2023-04-17 00:51:14'),
(148, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:51:27', '2023-04-17 00:51:27'),
(149, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:52:42', '2023-04-17 00:52:42'),
(150, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:55:20', '2023-04-17 00:55:20'),
(151, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:56:18', '2023-04-17 00:56:18'),
(152, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:56:43', '2023-04-17 00:56:43'),
(153, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:57:34', '2023-04-17 00:57:34'),
(154, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:58:03', '2023-04-17 00:58:03'),
(155, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:58:17', '2023-04-17 00:58:17'),
(156, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 00:59:29', '2023-04-17 00:59:29'),
(157, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 01:38:58', '2023-04-17 01:38:58'),
(158, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 01:39:55', '2023-04-17 01:39:55'),
(159, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 01:43:08', '2023-04-17 01:43:08'),
(160, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 01:44:08', '2023-04-17 01:44:08'),
(161, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 01:44:24', '2023-04-17 01:44:24'),
(162, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 01:44:26', '2023-04-17 01:44:26'),
(163, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 01:44:35', '2023-04-17 01:44:35'),
(164, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 01:44:55', '2023-04-17 01:44:55'),
(165, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 01:48:18', '2023-04-17 01:48:18'),
(166, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 01:48:36', '2023-04-17 01:48:36'),
(167, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 01:48:49', '2023-04-17 01:48:49'),
(168, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 01:49:21', '2023-04-17 01:49:21'),
(169, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 01:49:58', '2023-04-17 01:49:58'),
(170, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 01:50:56', '2023-04-17 01:50:56'),
(171, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 01:51:49', '2023-04-17 01:51:49'),
(172, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 01:52:19', '2023-04-17 01:52:19'),
(173, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 01:53:21', '2023-04-17 01:53:21'),
(174, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 01:56:32', '2023-04-17 01:56:32'),
(175, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 02:02:07', '2023-04-17 02:02:07'),
(176, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 02:02:31', '2023-04-17 02:02:31'),
(177, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 02:03:56', '2023-04-17 02:03:56'),
(178, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 02:30:21', '2023-04-17 02:30:21'),
(179, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-17 03:49:42', '2023-04-17 03:49:42'),
(180, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 22:37:07', '2023-04-17 22:37:07'),
(181, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 22:38:05', '2023-04-17 22:38:05'),
(182, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:03:11', '2023-04-17 23:03:11'),
(183, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:03:29', '2023-04-17 23:03:29'),
(184, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:03:50', '2023-04-17 23:03:50'),
(185, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:04:49', '2023-04-17 23:04:49'),
(186, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:04:59', '2023-04-17 23:04:59'),
(187, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:28:24', '2023-04-17 23:28:24'),
(188, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:41:09', '2023-04-17 23:41:09'),
(189, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:41:32', '2023-04-17 23:41:32'),
(190, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:42:12', '2023-04-17 23:42:12'),
(191, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:42:22', '2023-04-17 23:42:22'),
(192, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:42:31', '2023-04-17 23:42:31'),
(193, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:43:05', '2023-04-17 23:43:05'),
(194, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:43:14', '2023-04-17 23:43:14'),
(195, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:43:23', '2023-04-17 23:43:23'),
(196, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:43:52', '2023-04-17 23:43:52'),
(197, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:45:49', '2023-04-17 23:45:49'),
(198, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:46:54', '2023-04-17 23:46:54'),
(199, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:47:48', '2023-04-17 23:47:48'),
(200, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:48:26', '2023-04-17 23:48:26'),
(201, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:49:33', '2023-04-17 23:49:33'),
(202, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:49:38', '2023-04-17 23:49:38'),
(203, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:49:55', '2023-04-17 23:49:55'),
(204, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:50:35', '2023-04-17 23:50:35'),
(205, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:54:09', '2023-04-17 23:54:09'),
(206, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:55:45', '2023-04-17 23:55:45'),
(207, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:56:07', '2023-04-17 23:56:07'),
(208, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-17 23:57:34', '2023-04-17 23:57:34'),
(209, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:00:57', '2023-04-18 00:00:57'),
(210, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:01:57', '2023-04-18 00:01:57'),
(211, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:08:21', '2023-04-18 00:08:21'),
(212, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:13:35', '2023-04-18 00:13:35'),
(213, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:15:08', '2023-04-18 00:15:08'),
(214, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:17:20', '2023-04-18 00:17:20'),
(215, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:18:04', '2023-04-18 00:18:04'),
(216, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:18:06', '2023-04-18 00:18:06'),
(217, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:18:22', '2023-04-18 00:18:22'),
(218, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:20:40', '2023-04-18 00:20:40'),
(219, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:21:59', '2023-04-18 00:21:59'),
(220, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:23:36', '2023-04-18 00:23:36'),
(221, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:24:36', '2023-04-18 00:24:36'),
(222, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:25:25', '2023-04-18 00:25:25'),
(223, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:26:38', '2023-04-18 00:26:38'),
(224, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:28:09', '2023-04-18 00:28:09'),
(225, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:30:11', '2023-04-18 00:30:11'),
(226, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:31:54', '2023-04-18 00:31:54'),
(227, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:36:35', '2023-04-18 00:36:35'),
(228, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:39:46', '2023-04-18 00:39:46'),
(229, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:40:43', '2023-04-18 00:40:43'),
(230, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:47:18', '2023-04-18 00:47:18'),
(231, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:48:36', '2023-04-18 00:48:36'),
(232, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 00:49:40', '2023-04-18 00:49:40'),
(233, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 01:29:23', '2023-04-18 01:29:23'),
(234, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-18 01:30:43', '2023-04-18 01:30:43'),
(235, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-18 01:31:34', '2023-04-18 01:31:34'),
(236, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 01:31:41', '2023-04-18 01:31:41'),
(237, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-18 01:32:44', '2023-04-18 01:32:44'),
(238, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-18 01:33:50', '2023-04-18 01:33:50'),
(239, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-18 01:35:06', '2023-04-18 01:35:06'),
(240, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-18 01:35:27', '2023-04-18 01:35:27'),
(241, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 01:35:36', '2023-04-18 01:35:36'),
(242, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 01:38:53', '2023-04-18 01:38:53'),
(243, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 01:40:52', '2023-04-18 01:40:52'),
(244, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-18 02:01:38', '2023-04-18 02:01:38'),
(245, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 02:01:54', '2023-04-18 02:01:54'),
(246, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 02:41:53', '2023-04-18 02:41:53'),
(247, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 02:45:59', '2023-04-18 02:45:59'),
(248, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 02:47:56', '2023-04-18 02:47:56'),
(249, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-18 02:48:32', '2023-04-18 02:48:32'),
(250, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-25 00:36:16', '2023-04-25 00:36:16'),
(251, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-25 00:54:02', '2023-04-25 00:54:02'),
(252, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-25 22:07:13', '2023-04-25 22:07:13'),
(253, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-25 22:49:34', '2023-04-25 22:49:34'),
(254, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-25 22:52:43', '2023-04-25 22:52:43'),
(255, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-25 22:52:48', '2023-04-25 22:52:48'),
(256, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-25 22:53:00', '2023-04-25 22:53:00'),
(257, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-25 22:53:03', '2023-04-25 22:53:03'),
(258, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-25 22:53:51', '2023-04-25 22:53:51'),
(259, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-25 23:01:40', '2023-04-25 23:01:40'),
(260, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-25 23:40:50', '2023-04-25 23:40:50'),
(261, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-25 23:46:37', '2023-04-25 23:46:37'),
(262, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:19:45', '2023-04-26 00:19:45'),
(263, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:21:47', '2023-04-26 00:21:47'),
(264, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:21:49', '2023-04-26 00:21:49'),
(265, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:22:05', '2023-04-26 00:22:05'),
(266, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:22:38', '2023-04-26 00:22:38'),
(267, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:29:30', '2023-04-26 00:29:30'),
(268, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:30:13', '2023-04-26 00:30:13'),
(269, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:30:19', '2023-04-26 00:30:19'),
(270, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:30:56', '2023-04-26 00:30:56'),
(271, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:31:41', '2023-04-26 00:31:41'),
(272, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:32:43', '2023-04-26 00:32:43'),
(273, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:33:36', '2023-04-26 00:33:36'),
(274, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:33:41', '2023-04-26 00:33:41'),
(275, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:34:44', '2023-04-26 00:34:44'),
(276, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:35:29', '2023-04-26 00:35:29'),
(277, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:36:50', '2023-04-26 00:36:50'),
(278, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:37:20', '2023-04-26 00:37:20'),
(279, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:37:44', '2023-04-26 00:37:44'),
(280, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:38:23', '2023-04-26 00:38:23'),
(281, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:38:44', '2023-04-26 00:38:44'),
(282, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:40:42', '2023-04-26 00:40:42'),
(283, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:42:19', '2023-04-26 00:42:19'),
(284, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:42:22', '2023-04-26 00:42:22'),
(285, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-26 00:42:35', '2023-04-26 00:42:35'),
(286, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 00:42:40', '2023-04-26 00:42:40'),
(287, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 01:07:28', '2023-04-26 01:07:28'),
(288, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 01:12:07', '2023-04-26 01:12:07'),
(289, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 01:15:16', '2023-04-26 01:15:16'),
(290, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 01:16:36', '2023-04-26 01:16:36'),
(291, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 01:16:42', '2023-04-26 01:16:42'),
(292, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 01:17:33', '2023-04-26 01:17:33'),
(293, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 01:18:01', '2023-04-26 01:18:01'),
(294, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 01:19:38', '2023-04-26 01:19:38'),
(295, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 01:20:19', '2023-04-26 01:20:19'),
(296, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 01:20:39', '2023-04-26 01:20:39'),
(297, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 01:20:55', '2023-04-26 01:20:55'),
(298, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 01:22:22', '2023-04-26 01:22:22'),
(299, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 02:00:17', '2023-04-26 02:00:17'),
(300, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 02:04:13', '2023-04-26 02:04:13'),
(301, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 02:06:22', '2023-04-26 02:06:22'),
(302, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 02:09:13', '2023-04-26 02:09:13'),
(303, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 02:18:22', '2023-04-26 02:18:22'),
(304, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 02:19:11', '2023-04-26 02:19:11'),
(305, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 02:19:33', '2023-04-26 02:19:33'),
(306, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 02:19:57', '2023-04-26 02:19:57'),
(307, '127.0.0.1', 'generated::OpvPNRNEJXIZms4K', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 02:21:02', '2023-04-26 02:21:02'),
(308, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 03:09:52', '2023-04-26 03:09:52'),
(309, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 03:09:54', '2023-04-26 03:09:54'),
(310, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 03:10:53', '2023-04-26 03:10:53'),
(311, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 03:11:44', '2023-04-26 03:11:44'),
(312, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 03:12:23', '2023-04-26 03:12:23'),
(313, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 03:12:45', '2023-04-26 03:12:45'),
(314, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 03:13:54', '2023-04-26 03:13:54'),
(315, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 03:14:09', '2023-04-26 03:14:09'),
(316, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 03:14:27', '2023-04-26 03:14:27'),
(317, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 03:14:43', '2023-04-26 03:14:43'),
(318, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 03:19:01', '2023-04-26 03:19:01'),
(319, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 03:23:27', '2023-04-26 03:23:27'),
(320, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 03:23:51', '2023-04-26 03:23:51'),
(321, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 03:24:26', '2023-04-26 03:24:26'),
(322, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:07:25', '2023-04-26 22:07:25'),
(323, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:08:54', '2023-04-26 22:08:54'),
(324, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:09:10', '2023-04-26 22:09:10'),
(325, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:10:45', '2023-04-26 22:10:45'),
(326, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:11:49', '2023-04-26 22:11:49'),
(327, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:13:31', '2023-04-26 22:13:31'),
(328, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:13:47', '2023-04-26 22:13:47'),
(329, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:14:28', '2023-04-26 22:14:28'),
(330, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:16:02', '2023-04-26 22:16:02'),
(331, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:17:16', '2023-04-26 22:17:16'),
(332, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:18:01', '2023-04-26 22:18:01'),
(333, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:18:29', '2023-04-26 22:18:29'),
(334, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:18:56', '2023-04-26 22:18:56'),
(335, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:19:50', '2023-04-26 22:19:50'),
(336, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:20:21', '2023-04-26 22:20:21'),
(337, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:20:50', '2023-04-26 22:20:50'),
(338, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:21:05', '2023-04-26 22:21:05'),
(339, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:21:37', '2023-04-26 22:21:37'),
(340, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:22:12', '2023-04-26 22:22:12'),
(341, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:23:02', '2023-04-26 22:23:02'),
(342, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:24:11', '2023-04-26 22:24:11'),
(343, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:25:12', '2023-04-26 22:25:12'),
(344, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:27:38', '2023-04-26 22:27:38'),
(345, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:32:58', '2023-04-26 22:32:58'),
(346, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:33:56', '2023-04-26 22:33:56'),
(347, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:36:52', '2023-04-26 22:36:52'),
(348, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:38:23', '2023-04-26 22:38:23'),
(349, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:40:36', '2023-04-26 22:40:36'),
(350, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:40:59', '2023-04-26 22:40:59'),
(351, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:41:34', '2023-04-26 22:41:34'),
(352, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:43:47', '2023-04-26 22:43:47'),
(353, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/%E0%A6%AE%E0%A6%B0%E0%A6%95%E0%A7%8D%E0%A6%95%E0%A7%8B_%E0%A6%AF%E0%A7%8B%E0%A6%97%E0%A7%8D%E0%A6%AF%E0%A6%A4%E0%A6%BE', NULL, '2023-04-26 22:44:01', '2023-04-26 22:44:01'),
(354, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/%E0%A6%AE%E0%A6%B0%E0%A6%95%E0%A7%8D%E0%A6%95%E0%A7%8B_%E0%A6%AF%E0%A7%8B%E0%A6%97%E0%A7%8D%E0%A6%AF%E0%A6%A4%E0%A6%BE', NULL, '2023-04-26 22:44:21', '2023-04-26 22:44:21'),
(355, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/%E0%A6%AE%E0%A6%B0%E0%A6%95%E0%A7%8D%E0%A6%95%E0%A7%8B_%E0%A6%AF%E0%A7%8B%E0%A6%97%E0%A7%8D%E0%A6%AF%E0%A6%A4%E0%A6%BE', NULL, '2023-04-26 22:44:35', '2023-04-26 22:44:35'),
(356, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/%E0%A6%AE%E0%A6%B0%E0%A6%95%E0%A7%8D%E0%A6%95%E0%A7%8B_%E0%A6%AF%E0%A7%8B%E0%A6%97%E0%A7%8D%E0%A6%AF%E0%A6%A4%E0%A6%BE', NULL, '2023-04-26 22:44:43', '2023-04-26 22:44:43'),
(357, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:44:47', '2023-04-26 22:44:47'),
(358, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/men', NULL, '2023-04-26 22:44:50', '2023-04-26 22:44:50'),
(359, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-26 22:45:01', '2023-04-26 22:45:01'),
(360, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-26 22:45:52', '2023-04-26 22:45:52'),
(361, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-26 22:45:54', '2023-04-26 22:45:54'),
(362, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-26 22:47:00', '2023-04-26 22:47:00'),
(363, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:47:05', '2023-04-26 22:47:05'),
(364, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-26 22:47:18', '2023-04-26 22:47:18'),
(365, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:47:35', '2023-04-26 22:47:35'),
(366, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-26 22:47:38', '2023-04-26 22:47:38'),
(367, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-26 22:47:42', '2023-04-26 22:47:42'),
(368, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-26 22:47:46', '2023-04-26 22:47:46'),
(369, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:48:22', '2023-04-26 22:48:22'),
(370, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-26 22:48:29', '2023-04-26 22:48:29'),
(371, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/blog-single.html', NULL, '2023-04-26 22:48:34', '2023-04-26 22:48:34'),
(372, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 22:48:45', '2023-04-26 22:48:45'),
(373, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-26 22:48:48', '2023-04-26 22:48:48'),
(374, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/men', NULL, '2023-04-26 22:49:16', '2023-04-26 22:49:16'),
(375, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-26 22:51:22', '2023-04-26 22:51:22'),
(376, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-26 22:52:37', '2023-04-26 22:52:37'),
(377, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/men', NULL, '2023-04-26 22:56:16', '2023-04-26 22:56:16'),
(378, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/men', NULL, '2023-04-26 22:57:22', '2023-04-26 22:57:22'),
(379, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/men', NULL, '2023-04-26 23:23:23', '2023-04-26 23:23:23'),
(380, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:23:40', '2023-04-26 23:23:40'),
(381, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:25:11', '2023-04-26 23:25:11'),
(382, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:26:25', '2023-04-26 23:26:25'),
(383, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:27:54', '2023-04-26 23:27:54'),
(384, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:28:38', '2023-04-26 23:28:38'),
(385, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:32:28', '2023-04-26 23:32:28'),
(386, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:32:54', '2023-04-26 23:32:54'),
(387, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-26 23:32:59', '2023-04-26 23:32:59'),
(388, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:34:20', '2023-04-26 23:34:20'),
(389, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-26 23:34:56', '2023-04-26 23:34:56'),
(390, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:36:02', '2023-04-26 23:36:02');
INSERT INTO `hitlogs` (`id`, `ip`, `view`, `browser`, `link`, `spent_time`, `created_at`, `updated_at`) VALUES
(391, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:36:15', '2023-04-26 23:36:15'),
(392, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:37:25', '2023-04-26 23:37:25'),
(393, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:38:03', '2023-04-26 23:38:03'),
(394, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-26 23:42:32', '2023-04-26 23:42:32'),
(395, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:42:38', '2023-04-26 23:42:38'),
(396, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:43:37', '2023-04-26 23:43:37'),
(397, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:44:15', '2023-04-26 23:44:15'),
(398, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:45:03', '2023-04-26 23:45:03'),
(399, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:45:25', '2023-04-26 23:45:25'),
(400, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:45:57', '2023-04-26 23:45:57'),
(401, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:46:36', '2023-04-26 23:46:36'),
(402, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:46:58', '2023-04-26 23:46:58'),
(403, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:47:42', '2023-04-26 23:47:42'),
(404, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/men', NULL, '2023-04-26 23:48:09', '2023-04-26 23:48:09'),
(405, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-26 23:48:58', '2023-04-26 23:48:58'),
(406, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:49:06', '2023-04-26 23:49:06'),
(407, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:49:55', '2023-04-26 23:49:55'),
(408, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/men', NULL, '2023-04-26 23:50:07', '2023-04-26 23:50:07'),
(409, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-26 23:50:21', '2023-04-26 23:50:21'),
(410, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-26 23:50:26', '2023-04-26 23:50:26'),
(411, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:50:30', '2023-04-26 23:50:30'),
(412, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:53:39', '2023-04-26 23:53:39'),
(413, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:54:43', '2023-04-26 23:54:43'),
(414, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:56:53', '2023-04-26 23:56:53'),
(415, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:57:13', '2023-04-26 23:57:13'),
(416, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:58:01', '2023-04-26 23:58:01'),
(417, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Gallery/2', NULL, '2023-04-26 23:58:21', '2023-04-26 23:58:21'),
(418, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-26 23:58:26', '2023-04-26 23:58:26'),
(419, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:00:35', '2023-04-27 00:00:35'),
(420, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:00:40', '2023-04-27 00:00:40'),
(421, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:01:09', '2023-04-27 00:01:09'),
(422, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:02:19', '2023-04-27 00:02:19'),
(423, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:04:38', '2023-04-27 00:04:38'),
(424, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:04:53', '2023-04-27 00:04:53'),
(425, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:05:10', '2023-04-27 00:05:10'),
(426, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:05:39', '2023-04-27 00:05:39'),
(427, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:06:09', '2023-04-27 00:06:09'),
(428, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/men', NULL, '2023-04-27 00:06:19', '2023-04-27 00:06:19'),
(429, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:06:25', '2023-04-27 00:06:25'),
(430, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:07:18', '2023-04-27 00:07:18'),
(431, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:07:40', '2023-04-27 00:07:40'),
(432, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:08:10', '2023-04-27 00:08:10'),
(433, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:08:40', '2023-04-27 00:08:40'),
(434, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:09:21', '2023-04-27 00:09:21'),
(435, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:09:38', '2023-04-27 00:09:38'),
(436, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:09:59', '2023-04-27 00:09:59'),
(437, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:10:12', '2023-04-27 00:10:12'),
(438, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:10:37', '2023-04-27 00:10:37'),
(439, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:11:32', '2023-04-27 00:11:32'),
(440, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:11:52', '2023-04-27 00:11:52'),
(441, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:13:45', '2023-04-27 00:13:45'),
(442, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:13:57', '2023-04-27 00:13:57'),
(443, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:14:47', '2023-04-27 00:14:47'),
(444, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/men', NULL, '2023-04-27 00:14:51', '2023-04-27 00:14:51'),
(445, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:14:55', '2023-04-27 00:14:55'),
(446, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:15:22', '2023-04-27 00:15:22'),
(447, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:16:48', '2023-04-27 00:16:48'),
(448, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:17:56', '2023-04-27 00:17:56'),
(449, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 00:18:33', '2023-04-27 00:18:33'),
(450, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 00:19:52', '2023-04-27 00:19:52'),
(451, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 00:27:45', '2023-04-27 00:27:45'),
(452, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 00:27:48', '2023-04-27 00:27:48'),
(453, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 00:28:28', '2023-04-27 00:28:28'),
(454, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 00:28:32', '2023-04-27 00:28:32'),
(455, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 00:29:35', '2023-04-27 00:29:35'),
(456, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:31:45', '2023-04-27 00:31:45'),
(457, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 00:31:52', '2023-04-27 00:31:52'),
(458, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 00:39:11', '2023-04-27 00:39:11'),
(459, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 00:40:39', '2023-04-27 00:40:39'),
(460, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 00:41:13', '2023-04-27 00:41:13'),
(461, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 00:41:55', '2023-04-27 00:41:55'),
(462, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 00:44:15', '2023-04-27 00:44:15'),
(463, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 00:46:41', '2023-04-27 00:46:41'),
(464, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 00:48:23', '2023-04-27 00:48:23'),
(465, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 00:48:43', '2023-04-27 00:48:43'),
(466, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 00:49:26', '2023-04-27 00:49:26'),
(467, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 00:49:48', '2023-04-27 00:49:48'),
(468, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 00:50:02', '2023-04-27 00:50:02'),
(469, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 00:52:39', '2023-04-27 00:52:39'),
(470, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-27 00:52:48', '2023-04-27 00:52:48'),
(471, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Video/3', NULL, '2023-04-27 00:53:26', '2023-04-27 00:53:26'),
(472, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 01:02:27', '2023-04-27 01:02:27'),
(473, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-27 01:02:32', '2023-04-27 01:02:32'),
(474, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-27 01:03:40', '2023-04-27 01:03:40'),
(475, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 01:04:01', '2023-04-27 01:04:01'),
(476, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-27 01:04:12', '2023-04-27 01:04:12'),
(477, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-27 01:04:16', '2023-04-27 01:04:16'),
(478, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-27 01:06:02', '2023-04-27 01:06:02'),
(479, '127.0.0.1', 'contact-form', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/contact-form', NULL, '2023-04-27 01:06:32', '2023-04-27 01:06:32'),
(480, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-27 01:19:45', '2023-04-27 01:19:45'),
(481, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 01:19:50', '2023-04-27 01:19:50'),
(482, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 01:50:20', '2023-04-27 01:50:20'),
(483, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 01:57:06', '2023-04-27 01:57:06'),
(484, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 01:57:27', '2023-04-27 01:57:27'),
(485, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 01:58:20', '2023-04-27 01:58:20'),
(486, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 02:10:08', '2023-04-27 02:10:08'),
(487, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 02:10:33', '2023-04-27 02:10:33'),
(488, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 02:10:47', '2023-04-27 02:10:47'),
(489, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 02:11:02', '2023-04-27 02:11:02'),
(490, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 02:11:25', '2023-04-27 02:11:25'),
(491, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 02:12:21', '2023-04-27 02:12:21'),
(492, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 02:16:14', '2023-04-27 02:16:14'),
(493, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 02:18:10', '2023-04-27 02:18:10'),
(494, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 02:18:34', '2023-04-27 02:18:34'),
(495, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 02:19:03', '2023-04-27 02:19:03'),
(496, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 02:19:30', '2023-04-27 02:19:30'),
(497, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 02:19:42', '2023-04-27 02:19:42'),
(498, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 02:21:09', '2023-04-27 02:21:09'),
(499, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 02:22:27', '2023-04-27 02:22:27'),
(500, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 02:23:41', '2023-04-27 02:23:41'),
(501, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 02:24:48', '2023-04-27 02:24:48'),
(502, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/Contact_Us/4', NULL, '2023-04-27 02:25:22', '2023-04-27 02:25:22'),
(503, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-27 02:25:33', '2023-04-27 02:25:33'),
(504, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 02:25:39', '2023-04-27 02:25:39'),
(505, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-27 02:25:42', '2023-04-27 02:25:42'),
(506, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 02:25:45', '2023-04-27 02:25:45'),
(507, '127.0.0.1', 'post.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-04-27 02:25:48', '2023-04-27 02:25:48'),
(508, '127.0.0.1', 'category.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-04-27 02:25:56', '2023-04-27 02:25:56'),
(509, '127.0.0.1', 'page.single', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-04-27 02:26:07', '2023-04-27 02:26:07'),
(510, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-27 02:40:05', '2023-04-27 02:40:05'),
(511, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-27 02:42:21', '2023-04-27 02:42:21'),
(512, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-27 02:42:40', '2023-04-27 02:42:40'),
(513, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-27 02:43:40', '2023-04-27 02:43:40'),
(514, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-27 02:43:47', '2023-04-27 02:43:47'),
(515, '127.0.0.1', 'sitemap.xml', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000/sitemap.xml', NULL, '2023-04-27 02:46:25', '2023-04-27 02:46:25'),
(516, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-27 02:51:36', '2023-04-27 02:51:36'),
(517, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-27 02:55:13', '2023-04-27 02:55:13'),
(518, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome112.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-04-29 22:46:07', '2023-04-29 22:46:07'),
(519, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome117.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-10-08 21:25:42', '2023-10-08 21:25:42'),
(520, '127.0.0.1', 'page.single', 'Google Chrome117.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-10-08 21:26:31', '2023-10-08 21:26:31'),
(521, '127.0.0.1', 'page.single', 'Google Chrome117.0.0.0', 'http://127.0.0.1:8000/page/About_page/1', NULL, '2023-10-08 21:26:39', '2023-10-08 21:26:39'),
(522, '127.0.0.1', 'category.single', 'Google Chrome117.0.0.0', 'http://127.0.0.1:8000/category/men', NULL, '2023-10-08 21:26:41', '2023-10-08 21:26:41'),
(523, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome117.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-10-08 21:26:44', '2023-10-08 21:26:44'),
(524, '127.0.0.1', 'category.single', 'Google Chrome117.0.0.0', 'http://127.0.0.1:8000/category/Education', NULL, '2023-10-08 21:26:46', '2023-10-08 21:26:46'),
(525, '127.0.0.1', 'post.single', 'Google Chrome117.0.0.0', 'http://127.0.0.1:8000/post/post_en/1', NULL, '2023-10-08 21:26:49', '2023-10-08 21:26:49'),
(526, '127.0.0.1', 'generated::rGQKjFBlRBQqL4iu', 'Google Chrome118.0.0.0', 'http://127.0.0.1:8000', NULL, '2023-10-29 05:18:13', '2023-10-29 05:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `image_galleries`
--

CREATE TABLE `image_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imagename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagecaption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partnar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_galleries`
--

INSERT INTO `image_galleries` (`id`, `imagename`, `imagecaption`, `category_id`, `partnar`, `popup`, `status`, `created_at`, `updated_at`) VALUES
(1, '8_1680496265.jpg', 'image cationasdadf', '4', NULL, NULL, 1, '2023-04-13 03:08:37', '2023-04-13 03:38:30'),
(2, '1_1681377027.jpg', 'image cation', '4', NULL, 0, 1, '2023-04-13 03:10:38', '2023-04-26 03:24:21'),
(3, 'local-goverment_1682483804.png', NULL, '6', NULL, NULL, 1, '2023-04-25 22:36:53', '2023-04-25 22:36:53'),
(4, 'industries_1682483825.jpg', NULL, '6', '0', 0, 1, '2023-04-25 22:37:09', '2023-04-26 03:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `image_uploads`
--

CREATE TABLE `image_uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extention` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_uploads`
--

INSERT INTO `image_uploads` (`id`, `name`, `title`, `alt`, `caption`, `description`, `slug`, `path`, `status`, `username`, `extention`, `created_at`, `updated_at`) VALUES
(1, '8_1680496265.jpg', '8', '8', NULL, NULL, '8_1680496265.jpg', '8_1680496265.jpg', '1', 'superAdmin', '.jpg', '2023-04-02 22:31:08', '2023-04-02 22:31:08'),
(2, '1_1681377027.jpg', '1', '1', NULL, NULL, '1_1681377027.jpg', '1_1681377027.jpg', '1', 'superAdmin', '.jpg', '2023-04-13 03:10:29', '2023-04-13 03:10:29'),
(3, 'local-goverment_1682483804.png', 'local-goverment', 'local-goverment', NULL, NULL, 'local-goverment_1682483804.png', 'local-goverment_1682483804.png', '1', 'superAdmin', '.png', '2023-04-25 22:36:46', '2023-04-25 22:36:46'),
(4, 'industries_1682483825.jpg', 'industries', 'industries', NULL, NULL, 'industries_1682483825.jpg', 'industries_1682483825.jpg', '1', 'superAdmin', '.jpg', '2023-04-25 22:37:06', '2023-04-25 22:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `lang_changes`
--

CREATE TABLE `lang_changes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deshboard_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popular_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trending_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latest_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reletive_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `more_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `download_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscriber_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deshboard_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popular_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trending_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latest_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reletive_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `more_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `download_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscriber_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loginhistories`
--

CREATE TABLE `loginhistories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menuitems`
--

CREATE TABLE `menuitems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menuitems`
--

INSERT INTO `menuitems` (`id`, `title_en`, `name_en`, `slug_en`, `title_bn`, `name_bn`, `slug_bn`, `type`, `target`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 'Education', 'Education', 'Education', 'Everment_bn', 'Everment_bn', 'Everment_bn', 'category', NULL, 1, '2023-04-05 22:47:45', NULL),
(2, 'men', 'men', 'men', 'মরক্কো যোগ্যতা', 'মরক্কো যোগ্যতা', 'মরক্কো_যোগ্যতা', 'category', NULL, 1, '2023-04-05 22:47:45', NULL),
(3, 'About page', 'About page', 'About_page', 'About page', 'About page', 'About_page', 'page', NULL, 1, '2023-04-10 02:14:46', NULL),
(4, 'post_en', 'post_en', 'post_en', 'post bn', 'post bn', 'post_bn', 'post', NULL, 1, '2023-04-10 02:14:50', NULL),
(5, 'Gallery', 'Gallery', 'Gallery', 'Gallery', 'Gallery', 'Gallery', 'page', NULL, 1, '2023-04-16 03:57:24', NULL),
(6, 'Video', 'Video', 'Video', 'Video', 'Video', 'Video', 'page', NULL, 1, '2023-04-16 03:57:24', NULL),
(7, 'Contact Us', 'Contact Us', 'Contact_Us', 'মরক্কো যোগ্যতা asdf', 'মরক্কো যোগ্যতা asdf', 'মরক্কো_যোগ্যতা_asdf', 'page', NULL, 1, '2023-04-27 01:19:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `location`, `content`, `created_at`, `updated_at`) VALUES
(1, 'header menu', '1', '[[{\"id\":\"1\"},{\"id\":\"2\"},{\"id\":\"3\"},{\"id\":\"4\"},{\"id\":\"5\"},{\"id\":\"6\"},{\"id\":\"7\"}]]', '2023-04-05 22:47:36', '2023-04-27 01:19:38');

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
(57, '2014_10_12_000000_create_users_table', 1),
(58, '2014_10_12_100000_create_password_resets_table', 1),
(59, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(60, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(61, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(62, '2016_06_01_000004_create_oauth_clients_table', 1),
(63, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(64, '2019_08_19_000000_create_failed_jobs_table', 1),
(65, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(66, '2022_09_21_105619_create_sessions_table', 1),
(67, '2022_09_21_115841_create_roles_table', 1),
(68, '2022_09_21_115947_create_permissions_table', 1),
(69, '2022_09_21_120008_create_role_has_permissions_table', 1),
(70, '2022_09_28_114555_create_hitlogs_table', 1),
(71, '2022_09_28_114858_create_blacklists_table', 1),
(72, '2022_09_28_114942_create_whitelists_table', 1),
(73, '2022_09_28_115028_create_loginhistories_table', 1),
(74, '2022_09_28_121516_create_user_verifies_table', 1),
(75, '2022_10_03_111056_create_image_uploads_table', 1),
(76, '2022_10_06_155813_create_menus_table', 1),
(77, '2022_10_06_160153_create_menuitems_table', 1),
(78, '2022_10_06_162204_create_categories_table', 1),
(79, '2022_10_06_162304_create_posts_table', 1),
(80, '2022_10_06_162320_create_postmetas_table', 1),
(81, '2022_10_06_162334_create_pages_table', 1),
(82, '2022_10_31_144501_create_comments_table', 1),
(83, '2022_12_20_112205_create_sliders_table', 1),
(84, '2023_01_04_102551_create_lang_changes_table', 1),
(85, '2023_04_12_054121_create_videos_table', 2),
(86, '2023_04_13_081715_create_image_galleries_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
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
('00aa3c353793d480fa040c6be9b46f876c4fa79d5a77302e0b3695b57e9e62330fc6a00f0fca09a8', 3, '98d51cff-f050-46d6-a151-f28c99be729f', 'user@gmail.com', '[]', 0, '2023-04-01 23:07:50', '2023-04-01 23:07:50', '2024-04-02 05:07:50'),
('096312a773621f847924d0df6d2a2bc0184dbfcfee8f5dece1a15262d361bff4a9f73619798b0aaf', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 02:20:50', '2023-04-09 02:20:50', '2024-04-09 08:20:50'),
('0d79477ad7c332605b39012c65596e30b47776ca9697fc3bae3a28760b4b855d17a2732171f20fb2', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-01 22:58:34', '2023-04-01 22:58:34', '2024-04-02 04:58:34'),
('10527769120aa4bedc937bcc67854152e384e86c5a8a5a39b3f8f85524d50812e47dcfc6976d105a', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-08 23:05:23', '2023-04-08 23:05:23', '2024-04-09 05:05:23'),
('10d73799cb6057952dffa8f620d1757bb8328f235b4000b33aa83e76e8490536bef31b2b5d905ed3', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 22:34:01', '2023-04-09 22:34:01', '2024-04-10 04:34:01'),
('155cd9da146b082514667e8dc29ab6a12ab6a5ccb0099fdc73446b0ea74a1bb8230001748933928a', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-04 02:08:05', '2023-04-04 02:08:05', '2024-04-04 08:08:05'),
('1be19a3dfaa5cd6d217e862bbad46a814d99fbd156f7732bda4fd6791fc91ac280f364db6c794a52', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 00:31:11', '2023-04-09 00:31:11', '2024-04-09 06:31:11'),
('1cce5d407be2909e1a23b1fc2edd84b854566195f0e7b69caa93cec1471c4188b595b2f53185e400', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-04 23:09:25', '2023-04-04 23:09:25', '2024-04-05 05:09:25'),
('1d30eb1dc94d763040b86c84956215b32ce89129350bf5a58f706f3ea42395a23d1e4105d3843304', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-04 00:04:40', '2023-04-04 00:04:40', '2024-04-04 06:04:40'),
('1f4fe8ab5a19f0b3946e4db492aea4802e7897489fe9aa8333e103f9032dabb7a03823a78c4a7a6c', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 22:36:01', '2023-04-09 22:36:01', '2024-04-10 04:36:01'),
('2105060f2d011a83eb918964bc475729afd136f0e352362d4d7d50c6989e917d9981d752f9071c5a', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-11 02:02:36', '2023-04-11 02:02:36', '2024-04-11 08:02:36'),
('2545e00f9c524fbba62439530e6b35b9fea907cd81dc3540f51f5e8c6e03da247c094ac27d43c8fc', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-01 22:56:40', '2023-04-01 22:56:40', '2024-04-02 04:56:40'),
('2a2a4fd0a75158c2175e28fc86a902e150f7a3ced5c48d55053021c71340e28c14c61efc6265e80e', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-04 00:28:49', '2023-04-04 00:28:49', '2024-04-04 06:28:49'),
('2b73db69835ae22907f94906ceaa610e2f63c0570a96db4c57a835290c6aac5c17e04c14b5983edd', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-10 00:15:50', '2023-04-10 00:15:50', '2024-04-10 06:15:50'),
('2c2b5ba0ec713749a7aeba6a3a4e21de090a0ab4269e66643b8e5d4670c5b3dfc5491e3825b0ce85', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 03:34:05', '2023-04-09 03:34:05', '2024-04-09 09:34:05'),
('33f047c909f27265c6cc08347257fa7bf34bdd74f426d5d393fc37785b21ee86775cd6db481d16cf', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-12 22:11:06', '2023-04-12 22:11:06', '2024-04-13 04:11:06'),
('37dcfdd95d2aecb85f9751065c489558a12dda04461f309ab9e775db24adbc933d43cae21f0cc19d', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 03:35:10', '2023-04-09 03:35:10', '2024-04-09 09:35:10'),
('3abb608b90ad950c269a0026085827e4ea83a89f8db728521657f46fa743256ec2a68c87656ed9c3', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-02 21:46:22', '2023-04-02 21:46:22', '2024-04-03 03:46:22'),
('3ccb91fa96be53d6e3f2409d5e0a10f27c17d8716218b78f8672a1052f94621f0997c6955d521ad1', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 23:00:41', '2023-04-09 23:00:41', '2024-04-10 05:00:41'),
('3d75d6393892be01f6aa2576040d12aef0b38c5d5a23dfecb087baa20e34d48979e1011f2e5ad4bf', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-05 22:33:32', '2023-04-05 22:33:32', '2024-04-06 04:33:32'),
('3e81efca2ca968af6f046884aec24281ea6d83838a62dbba44c88a1a96e635076a19ec3f06b98152', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-08 23:05:46', '2023-04-08 23:05:46', '2024-04-09 05:05:46'),
('498b670601097009a467e02014d06b10b35530fe823bd0ecfb13a2657a6e82531bf29d9e5254ecba', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 02:10:44', '2023-04-09 02:10:44', '2024-04-09 08:10:44'),
('4ea506a283bbca4b496fc75a07b4078ad56ba057f9b57ba605ac2222a9e876194ec127f1eff572dd', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-08 23:18:39', '2023-04-08 23:18:39', '2024-04-09 05:18:39'),
('5267156f51711b985e1c53d3ebd66a212183ad4fa17669a59290d888ed7a36eff8cef94f6d2e39ad', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 22:22:10', '2023-04-09 22:22:10', '2024-04-10 04:22:10'),
('557c55218bcb228e9d893323a4e22ff0da5164f7526bfdf73f6e4ebb9a694882daaa9fb26f35a20a', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 03:13:52', '2023-04-09 03:13:52', '2024-04-09 09:13:52'),
('55fb50d24f5d2c78101c0f8e5dce42ff52729327c17cbe67c5b83d7230b9ea9445a4d5b1ed9e3d84', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-08 22:28:25', '2023-04-08 22:28:25', '2024-04-09 04:28:25'),
('5757bc1e19f1877edf6c88c268d6eb361b39d4e38464fbf37f6f9a213495e1cc83e6d4906ced99cc', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-05 22:44:47', '2023-04-05 22:44:47', '2024-04-06 04:44:47'),
('5ecea16e4055740091afd4e9f8cbf9eb7ba63a452228ceb31cdf42043d814b1eb5d5178b404ec01c', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-08 22:21:47', '2023-04-08 22:21:47', '2024-04-09 04:21:47'),
('63c8d5fb34a7170242e428f642f9856de4ba18ec6f7d10855d977cd5f993c0d10966ae25fea319b8', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-08 22:23:50', '2023-04-08 22:23:50', '2024-04-09 04:23:50'),
('672b70a87141665353b45f22457a494bd2bdd7e01e956fea3194d31a8e553e408db62dc4b6ae9451', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 03:40:20', '2023-04-09 03:40:20', '2024-04-09 09:40:20'),
('6a1d6f71d55bf95923c090f0f5cef3cbd521268a30597c69eb6c28f5e04c862e46e5b880ee140472', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-04 00:14:19', '2023-04-04 00:14:19', '2024-04-04 06:14:19'),
('6b13884a86b192cdc6805758853cc45dd8778ea43b7a0789290a04eedd69a17216e29d7765b7275a', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 22:24:39', '2023-04-09 22:24:39', '2024-04-10 04:24:39'),
('6f5802bd84bd3f345db75ce10ce8e94df8e6792f2e43eb6b30699a290a394a3b510e2ba863068fa1', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 03:51:22', '2023-04-09 03:51:22', '2024-04-09 09:51:22'),
('70184196ab2b86fc1981135e1d13a5621bcb43cb5a945ad4a7966806ba1a9178ace9e4cda1fcef86', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-08 23:30:03', '2023-04-08 23:30:03', '2024-04-09 05:30:03'),
('7056a9e106363ce78901f94c88d3397b8eead171b0b14178249ddf95f4fc097f708534884d2830fc', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-15 23:34:38', '2023-04-15 23:34:38', '2024-04-16 05:34:38'),
('7413582983c8af2f323a62937a407b133e8e33c1e5b2ae5bc6df91213e5b931c9441f686d5daaa9c', 2, '98d51cff-f050-46d6-a151-f28c99be729f', 'admin@gmail.com', '[]', 0, '2023-04-01 23:07:37', '2023-04-01 23:07:37', '2024-04-02 05:07:37'),
('791ea6e94d35987eef8bfb6ac7657a259fb403c89694ba30b7570fe713d7af15624151156772113a', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 22:25:06', '2023-04-09 22:25:06', '2024-04-10 04:25:06'),
('80ca3a8ff618dbc16623ca67cc323bf9fa578fa7b9b165494b402c2d96a6a28990ddb7acf3686cc2', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-08 23:30:43', '2023-04-08 23:30:43', '2024-04-09 05:30:43'),
('83d6008aa87fac59a9f432deede8df01f248449b4bcf1fe984f4879f5abf10ee8f41f8447019cdd6', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-01 23:42:41', '2023-04-01 23:42:41', '2024-04-02 05:42:41'),
('846c96a1ba825ecf0949b84945d9926e62b35ca1c1f6559d7547ccb8892420215b26eb62d95f8af4', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-08 23:39:24', '2023-04-08 23:39:24', '2024-04-09 05:39:24'),
('861a9ac8f170fa4f46c86063601ad85994cfe4ccb5b0504cf1587ab0ea9e233469ec5e66ca47a8f1', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-04 00:01:49', '2023-04-04 00:01:49', '2024-04-04 06:01:49'),
('8b8316c05873af2e154f37a6384f930c681467e9364174ac380a83f39c39a96b84dc0972a558163a', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-01 23:09:39', '2023-04-01 23:09:39', '2024-04-02 05:09:39'),
('8ce368f5450c27097867741b5fdd309dce80fa7312413e01de09802228ec8dedb1383207cbead695', 2, '98d51cff-f050-46d6-a151-f28c99be729f', 'admin@gmail.com', '[]', 0, '2023-04-09 02:12:50', '2023-04-09 02:12:50', '2024-04-09 08:12:50'),
('8d05f00e733fcdc7da819ed46e49a1ddc069e5fe5887ad2725a018f0cfcb821878e2b7b074fbe38c', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-01 23:35:54', '2023-04-01 23:35:54', '2024-04-02 05:35:54'),
('9237854c833694326477c73ca31a643b0b10d158faed32683e8f860d8fb670610f7c3af7f5965582', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 22:10:05', '2023-04-09 22:10:05', '2024-04-10 04:10:05'),
('951f6f41db0d6e0bfed40693c09a52c3ab2d2f0f71f17e507b6995292187a905d6f91498d309d804', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-01 23:36:30', '2023-04-01 23:36:30', '2024-04-02 05:36:30'),
('9986558381041cd41660e7cba08aaff15e6126b73033fe6685f3212c2b95287f281c5dd1914ef116', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 03:45:42', '2023-04-09 03:45:42', '2024-04-09 09:45:42'),
('9b2ceaab912611f207e61d9eb1ad2ad3eca0cef0229951c3851ebb5e7f60563e1d9330149721c557', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-01 23:39:13', '2023-04-01 23:39:13', '2024-04-02 05:39:13'),
('9bd854bf842a97841615dbfb5dcf3863e57e6cf89f04506f835e128c8b320ed239a60e0c7728425c', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 00:13:27', '2023-04-09 00:13:27', '2024-04-09 06:13:27'),
('9ca5beb7a6f9f4538c9d56670a1c1815bfb2d7603bfc52097d452c23cae633450774e1d937daf92d', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-08 22:20:51', '2023-04-08 22:20:51', '2024-04-09 04:20:51'),
('a0c11aa7be99261e4467665104e66d232f55e288fd51bcbf62d1a7bf333cda878adc7a3c62d2413b', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-08 23:36:14', '2023-04-08 23:36:14', '2024-04-09 05:36:14'),
('a32f4dfe44271920c422a017870c5a02aac682ce4e36aa7b785b362ed915cd873c52f578c3220bfa', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-08 22:44:24', '2023-04-08 22:44:24', '2024-04-09 04:44:24'),
('a4dc82c5a2037282e477a570e9a29abbb524d6222c1f53b23b0f8a67c01518d9458be031db9d3692', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 00:11:13', '2023-04-09 00:11:13', '2024-04-09 06:11:13'),
('ae211601fb2cd420d7eb0d96d187b4861c5bb625ee1999fb1a7934fa276139e7b122631e10de3e40', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-08 23:55:43', '2023-04-08 23:55:43', '2024-04-09 05:55:43'),
('b22742b476aae8cad3b26927c83268f362d0d0b18641edf595ccd36ffa22f2aa82a1e375a1dd11b6', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 22:40:43', '2023-04-09 22:40:43', '2024-04-10 04:40:43'),
('b4ed2851db22446bd7526c1191fcb93cd77e7e916d759750e841998e7b191e12cc59c5ce7a15f66f', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-08 23:37:40', '2023-04-08 23:37:40', '2024-04-09 05:37:40'),
('b83c217b90e5431c4fa4ae0db32db4053bbbec68b5019d4dc5a38d43f5d859d3b6d259c4a552f47a', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-01 22:54:47', '2023-04-01 22:54:47', '2024-04-02 04:54:47'),
('be749de9bda1b19838aa690dbf6a3995c55794687bf496b134b86953f6a4ddc9827569b021f71d0e', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 22:39:09', '2023-04-09 22:39:09', '2024-04-10 04:39:09'),
('bfd4015cad59141152ead47e223fa67f6b4279e39d18f57f6758d017e4632384c39d906307c8a21e', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 00:03:22', '2023-04-09 00:03:22', '2024-04-09 06:03:22'),
('bfd9c8fdc76404c28fa95e34e7e94ecc402fe13a55850c1472abe1adb59b729ffa722912ce155387', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-08 23:37:48', '2023-04-08 23:37:48', '2024-04-09 05:37:48'),
('c0af887a38807259c72133169519770b3901e3550c768a503860bd8fcb7848d6b3dc78a2872679fb', 2, '98d51cff-f050-46d6-a151-f28c99be729f', 'admin@gmail.com', '[]', 0, '2023-04-04 00:01:33', '2023-04-04 00:01:33', '2024-04-04 06:01:33'),
('c1bf27fd79a935f590b54e56b4a0a8ad4b34969df75976132a82ad534db3148a6a4c72ec90c3f5e3', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 22:12:58', '2023-04-09 22:12:58', '2024-04-10 04:12:58'),
('c3f66a143e75eda00f81694e62ce6f20199701832ac105652cbb0bf5a8d20cdc0f9b759198db0796', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-01 22:48:01', '2023-04-01 22:48:01', '2024-04-02 04:48:01'),
('c863472abc8101992c3adac851b816545413604bc26ad99e4effb38630266bab85639ff95b49d94c', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 22:47:47', '2023-04-09 22:47:47', '2024-04-10 04:47:47'),
('ca829e7ff40a629a416f3f3b89af271c1d38975401f802aff3595e105b87f5ba0eb98c83ec3fbf6d', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 03:09:47', '2023-04-09 03:09:47', '2024-04-09 09:09:47'),
('ccae3510e230be02adb9c353a514778660a1e0a84cf6db9e670fc7b3c5eae369763b0615538d2a52', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-08 23:14:04', '2023-04-08 23:14:04', '2024-04-09 05:14:04'),
('d31a230c3623f6f59a54fd0017ece2c159f686dbb0aa708d1738f6f31a5cdd4227ff9c3a70d6d0f2', 3, '98d51cff-f050-46d6-a151-f28c99be729f', 'user@gmail.com', '[]', 0, '2023-04-01 23:09:22', '2023-04-01 23:09:22', '2024-04-02 05:09:22'),
('d414c181fabe60df614024be2d6846ee6a127737ae7ed7aa014bf78c27765bd8bf3dcbfe03679a1b', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 03:29:25', '2023-04-09 03:29:25', '2024-04-09 09:29:25'),
('dd28678386f58bf6a3172affa0f429dcd80b76da60be4057f4863f22c7f14f91ca1a3bd0dca8366f', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-16 21:57:42', '2023-04-16 21:57:42', '2024-04-17 03:57:42'),
('e1f9a0627df0097e365410dfe513fcdf4ded9bb7a81f3739c4b0799e0db897d83ad7a36a3bab3fd0', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-01 23:31:21', '2023-04-01 23:31:21', '2024-04-02 05:31:21'),
('e28071922281fdaefb670fd16a380975127b4a41be7e51d68b994cc1c4fccecb83a3abc6d9ae0de9', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 22:18:41', '2023-04-09 22:18:41', '2024-04-10 04:18:41'),
('e6248889a5269639b1937ce6f1e0e5bea20e0818ca3146695ea947c1fd44257421e090f3524e0d08', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-27 02:43:04', '2023-04-27 02:43:04', '2024-04-27 08:43:04'),
('e73982da9a1ba2617a102f09841908a6e737dc268bdb3447e943f450765fd148b8e6ba483c748fe6', 2, '98d51cff-f050-46d6-a151-f28c99be729f', 'admin@gmail.com', '[]', 0, '2023-04-03 23:53:32', '2023-04-03 23:53:32', '2024-04-04 05:53:32'),
('ea9fc9948773fb9730424c5638e74ab8f7fe15a1149cac749c5dadd94f2ba7b957e5cec1b682f52d', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 02:13:08', '2023-04-09 02:13:08', '2024-04-09 08:13:08'),
('ec86b5dd42bc5d0dd097c749652dd6c0472c260efd4641413e8bf1e8dc8d249451a482c9b0dfdab8', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-08 23:17:01', '2023-04-08 23:17:01', '2024-04-09 05:17:01'),
('edd12a39cc16467a8f16e39bbc81e707d267f9e158e9c775b684af56f8e229a71169f7ef5a381815', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-01 23:26:05', '2023-04-01 23:26:05', '2024-04-02 05:26:05'),
('f09a4c34715cf7733028ee6793a181ad848d91ba6a06be738ae35cc600312be67fd9527348650aeb', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 03:39:10', '2023-04-09 03:39:10', '2024-04-09 09:39:10'),
('f322a3930b275848d790f56772c35a6c08bdbc5a15d44cf6d0b4d5f5b97af82208d0898941e0644f', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-08 22:16:14', '2023-04-08 22:16:14', '2024-04-09 04:16:14'),
('f41121dc6f6593061d2f471c39c1bb2c153eb9d765591ac1df9a322f3e8b2b0eadd88d770d1d41e4', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 22:23:17', '2023-04-09 22:23:17', '2024-04-10 04:23:17'),
('f5f6a9d26a694a2e410ef706a58af42da115dcbb645ebcd8bf0937dd59f76fe14d2e04331ec2606a', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 00:32:25', '2023-04-09 00:32:25', '2024-04-09 06:32:25'),
('f86fd92f249f28be2770eafaf138043b026e78ad30040afba9be7bc9d572a86a8d84841213cb1b01', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-11 23:27:53', '2023-04-11 23:27:53', '2024-04-12 05:27:53'),
('ffd551312a7a093972a3d4041e53b82dade89c9e619aad38b4f7e2b2dada2254c484223e6a6afe91', 1, '98d51cff-f050-46d6-a151-f28c99be729f', 'superAdmin@gmail.com', '[]', 0, '2023-04-09 02:15:05', '2023-04-09 02:15:05', '2024-04-09 08:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
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
('98d51cff-f050-46d6-a151-f28c99be729f', NULL, 'Laravel Personal Access Client', 'X7EJZ2XciflXo4HMLfP9WQuOUVgXQyAyy075ycy6', NULL, 'http://localhost', 1, 0, 0, '2023-04-01 22:47:00', '2023-04-01 22:47:00'),
('98d51d00-a32c-4b61-847a-33cc159f8f4e', NULL, 'Laravel Password Grant Client', 'WoI8WFFC7D3EQmTZWaho2QWcWwUcWzNf9yNkWCI1', 'users', 'http://localhost', 0, 1, 0, '2023-04-01 22:47:00', '2023-04-01 22:47:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '98d51cff-f050-46d6-a151-f28c99be729f', '2023-04-01 22:47:00', '2023-04-01 22:47:00');

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_bn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `privatepage` tinyint(1) NOT NULL DEFAULT 0,
  `publish_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title_en`, `name_en`, `slug_en`, `content_en`, `title_bn`, `name_bn`, `slug_bn`, `content_bn`, `link`, `parent_id`, `image`, `file`, `video`, `template`, `status`, `privatepage`, `publish_at`, `views`, `deleted_at`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'About page', 'About page', 'About_page', '<!--?php\r\necho \"hello\";\r\n?-->\r\n<p>Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n\r\n<p>&nbsp;</p>', 'About page', 'About page', 'About_page', '<p>Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', NULL, 0, '8_1680496265.jpg', NULL, NULL, '1', 1, 0, '2023-04-26 04:03', '66', NULL, 1, '2023-04-09 23:09:31', '2023-10-08 21:26:39'),
(2, 'Gallery', 'Gallery', 'Gallery', '<p>Gallery Content</p>', 'Gallery', 'Gallery', 'Gallery', '<p>Gallery Content</p>', NULL, 0, NULL, NULL, NULL, '3', 1, 0, '2023-04-17 03:59', '67', NULL, 1, '2023-04-16 02:58:50', '2023-04-26 23:58:21'),
(3, 'Video', 'Video', 'Video', '<p>Video content</p>', 'Video', 'Video', 'Video', '<p>Video content</p>', NULL, 0, NULL, NULL, NULL, '4', 1, 0, '2023-04-17 07:39', '95', NULL, 1, '2023-04-16 03:57:05', '2023-04-27 00:53:26'),
(4, 'Contact Us', 'Contact Us', 'Contact_Us', '<p><iframe allowfullscreen=\"true\" style=\"border:0; width: 100%; height: 350px;loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3649.734671197576!2d90.3614289752354!3d23.828032285791785!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c13a21730b43%3A0xb14a9c52d01c00d9!2sMirpur-12%20Bus%20Stand!5e0!3m2!1sen!2sbd!4v1682583638930!5m2!1sen!2sbd\" style=\"border:0;\"></iframe></p>', 'মরক্কো যোগ্যতা asdf', 'মরক্কো যোগ্যতা asdf', 'মরক্কো_যোগ্যতা_asdf', '<p><iframe allowfullscreen=\"true\" style=\"border:0; width: 100%; height: 350px;loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3649.734671197576!2d90.3614289752354!3d23.828032285791785!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c13a21730b43%3A0xb14a9c52d01c00d9!2sMirpur-12%20Bus%20Stand!5e0!3m2!1sen!2sbd!4v1682583638930!5m2!1sen!2sbd\" style=\"border:0;\"></iframe></p>', NULL, 0, NULL, NULL, NULL, '5', 1, 0, '2023-04-27 08:21', '22', NULL, 1, '2023-04-27 01:18:22', '2023-04-27 02:25:22');

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'menu-users', '2023-04-01 22:45:05', '2023-04-01 22:45:05'),
(2, 'menu-roles', '2023-04-01 22:45:05', '2023-04-01 22:45:05'),
(3, 'menu-permissions', '2023-04-01 22:45:05', '2023-04-01 22:45:05'),
(4, 'role-list', '2023-04-01 22:45:05', '2023-04-01 22:45:05'),
(5, 'role-create', '2023-04-01 22:45:05', '2023-04-01 22:45:05'),
(6, 'role-edit', '2023-04-01 22:45:05', '2023-04-01 22:45:05'),
(7, 'role-delete', '2023-04-01 22:45:05', '2023-04-01 22:45:05'),
(8, 'user-list', '2023-04-01 22:45:06', '2023-04-01 22:45:06'),
(9, 'user-create', '2023-04-01 22:45:06', '2023-04-01 22:45:06'),
(10, 'user-edit', '2023-04-01 22:45:06', '2023-04-01 22:45:06'),
(11, 'user-delete', '2023-04-01 22:45:06', '2023-04-01 22:45:06'),
(12, 'user-status', '2023-04-01 22:45:06', '2023-04-01 22:45:06'),
(13, 'permission-list', '2023-04-01 22:45:06', '2023-04-01 22:45:06'),
(14, 'permission-create', '2023-04-01 22:45:06', '2023-04-01 22:45:06'),
(15, 'permission-edit', '2023-04-01 22:45:06', '2023-04-01 22:45:06'),
(16, 'permission-delete', '2023-04-01 22:45:06', '2023-04-01 22:45:06'),
(17, 'menu-black', '2023-04-01 22:45:06', '2023-04-01 22:45:06'),
(18, 'menu-white', '2023-04-01 22:45:06', '2023-04-01 22:45:06'),
(19, 'menu-media', '2023-04-01 22:45:06', '2023-04-01 22:45:06'),
(20, 'menu-category', '2023-04-01 22:45:06', '2023-04-01 22:45:06'),
(21, 'menu-post', '2023-04-01 22:45:06', '2023-04-01 22:45:06'),
(22, 'menu-page', '2023-04-01 22:45:06', '2023-04-01 22:45:06'),
(23, 'menu-comments', '2023-04-01 22:45:07', '2023-04-01 22:45:07'),
(24, 'menu-menus', '2023-04-01 22:45:07', '2023-04-01 22:45:07'),
(25, 'menu-csv', '2023-04-01 22:45:07', '2023-04-01 22:45:07'),
(26, 'menu-slider', '2023-04-01 22:45:07', '2023-04-01 22:45:07'),
(27, 'menu-language', '2023-04-01 22:45:07', '2023-04-01 22:45:07'),
(28, 'menu-databasebackup', '2023-04-01 22:45:07', '2023-04-01 22:45:07'),
(29, 'menu-loginhistory', '2023-04-01 22:45:07', '2023-04-01 22:45:07'),
(30, 'sider-status', '2023-04-01 22:45:07', '2023-04-01 22:45:07'),
(31, 'category-status', '2023-04-01 22:45:07', '2023-04-01 22:45:07'),
(32, 'category-deleted', '2023-04-01 22:45:07', '2023-04-01 22:45:07'),
(33, 'category-edit', '2023-04-01 22:45:07', '2023-04-01 22:45:07'),
(34, 'category-create', '2023-04-01 22:45:07', '2023-04-01 22:45:07'),
(35, 'category-privatecat', '2023-04-01 22:45:07', '2023-04-01 22:45:07'),
(36, ' post-show', '2023-04-01 22:45:08', '2023-04-01 22:45:08'),
(37, 'post-status', '2023-04-01 22:45:08', '2023-04-01 22:45:08'),
(38, 'post-slider', '2023-04-01 22:45:08', '2023-04-01 22:45:08'),
(39, 'post-archive', '2023-04-01 22:45:08', '2023-04-01 22:45:08'),
(40, 'post-delete', '2023-04-01 22:45:08', '2023-04-01 22:45:08'),
(41, 'post-edit', '2023-04-01 22:45:08', '2023-04-01 22:45:08'),
(42, 'post-create', '2023-04-01 22:45:08', '2023-04-01 22:45:08'),
(43, 'post-search', '2023-04-01 22:45:08', '2023-04-01 22:45:08'),
(44, 'post-multipledelete', '2023-04-01 22:45:09', '2023-04-01 22:45:09'),
(45, 'post-privateshow', '2023-04-01 22:45:09', '2023-04-01 22:45:09'),
(46, 'page-archive', '2023-04-01 22:45:09', '2023-04-01 22:45:09'),
(47, 'page-status', '2023-04-01 22:45:09', '2023-04-01 22:45:09'),
(48, 'page-multipledelete', '2023-04-01 22:45:09', '2023-04-01 22:45:09'),
(49, 'page-search', '2023-04-01 22:45:10', '2023-04-01 22:45:10'),
(50, 'page-deleted', '2023-04-01 22:45:10', '2023-04-01 22:45:10'),
(51, 'page-edit', '2023-04-01 22:45:10', '2023-04-01 22:45:10'),
(52, 'page-create', '2023-04-01 22:45:10', '2023-04-01 22:45:10'),
(53, 'page-privatepage', '2023-04-01 22:45:10', '2023-04-01 22:45:10'),
(54, 'language-create', '2023-04-01 22:45:10', '2023-04-01 22:45:10'),
(55, 'language-edit', '2023-04-01 22:45:10', '2023-04-01 22:45:10'),
(56, 'menu-video', '2023-04-11 23:46:04', '2023-04-11 23:46:04'),
(57, 'menu-gallery', '2023-04-13 02:32:18', '2023-04-13 02:32:18');

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
-- Table structure for table `postmetas`
--

CREATE TABLE `postmetas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postmetas`
--

INSERT INTO `postmetas` (`id`, `post_id`, `cat_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(14, 1, 1, NULL, NULL, '2023-04-26 23:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt_bn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_bn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_bn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords_bn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `slider` tinyint(1) NOT NULL DEFAULT 0,
  `trending` tinyint(1) NOT NULL DEFAULT 1,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `privateshow` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title_en`, `name_en`, `slug_en`, `excerpt_en`, `content_en`, `meta_description_en`, `meta_keywords_en`, `title_bn`, `name_bn`, `slug_bn`, `excerpt_bn`, `content_bn`, `meta_description_bn`, `meta_keywords_bn`, `tag`, `image`, `file`, `video`, `link`, `status`, `slider`, `trending`, `template`, `publish_at`, `views`, `privateshow`, `deleted_at`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'post_en', 'post_en', 'post_en', NULL, '<p>post En content</p>\r\n\r\n<p>bangla Post content&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; Similique neque nam consequuntur ad non maxime aliquam quas. Quibusdam animi</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; praesentium.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Aliquam et laboriosam eius aut nostrum quidem aliquid dicta.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Et eveniet enim. Qui velit est ea dolorem doloremque deleniti aperiam unde soluta.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Est</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cum</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; et quod quos aut ut et sit sunt. Voluptate porro consequatur assumenda perferendis</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; dolore.</p>\r\n\r\n<p>bangla Post content&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; Similique neque nam consequuntur ad non maxime aliquam quas. Quibusdam animi</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; praesentium.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Aliquam et laboriosam eius aut nostrum quidem aliquid dicta.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Et eveniet enim. Qui velit est ea dolorem doloremque deleniti aperiam unde soluta.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Est</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cum</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; et quod quos aut ut et sit sunt. Voluptate porro consequatur assumenda perferendis</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; dolore.</p>', NULL, NULL, 'post bn', 'post bn', 'post_bn', NULL, '<p>bangla Post content&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; Similique neque nam consequuntur ad non maxime aliquam quas. Quibusdam animi</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; praesentium.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Aliquam et laboriosam eius aut nostrum quidem aliquid dicta.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Et eveniet enim. Qui velit est ea dolorem doloremque deleniti aperiam unde soluta.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Est</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cum</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; et quod quos aut ut et sit sunt. Voluptate porro consequatur assumenda perferendis</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; dolore.</p>\r\n\r\n<p>bangla Post content&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; Similique neque nam consequuntur ad non maxime aliquam quas. Quibusdam animi</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; praesentium.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Aliquam et laboriosam eius aut nostrum quidem aliquid dicta.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Et eveniet enim. Qui velit est ea dolorem doloremque deleniti aperiam unde soluta.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Est</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cum</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; et quod quos aut ut et sit sunt. Voluptate porro consequatur assumenda perferendis</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; dolore.</p>', NULL, NULL, 'post', '1_1681377027.jpg', NULL, NULL, NULL, 1, 0, 1, '1', NULL, 0, 0, NULL, NULL, '2023-04-02 00:46:03', '2023-04-26 23:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'superAdmin', 'superAdmin', NULL, NULL),
(2, 'admin', 'admin', NULL, NULL),
(3, 'user', 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `permission_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '2023-04-13 02:36:47'),
(2, 1, 2, NULL, '2023-04-13 02:36:47'),
(3, 1, 3, NULL, '2023-04-13 02:36:47'),
(4, 1, 4, NULL, '2023-04-13 02:36:48'),
(5, 1, 5, NULL, '2023-04-13 02:36:48'),
(6, 1, 6, NULL, '2023-04-13 02:36:48'),
(7, 1, 9, NULL, '2023-04-13 02:36:48'),
(8, 1, 10, NULL, '2023-04-13 02:36:48'),
(9, 1, 11, NULL, '2023-04-13 02:36:48'),
(10, 1, 13, NULL, '2023-04-13 02:36:48'),
(11, 1, 16, NULL, '2023-04-13 02:36:48'),
(12, 1, 17, NULL, '2023-04-13 02:36:48'),
(13, 1, 18, NULL, '2023-04-13 02:36:48'),
(14, 1, 19, NULL, '2023-04-13 02:36:48'),
(15, 1, 20, NULL, '2023-04-13 02:36:48'),
(16, 1, 21, NULL, '2023-04-13 02:36:48'),
(17, 1, 22, NULL, '2023-04-13 02:36:48'),
(18, 1, 23, NULL, '2023-04-13 02:36:48'),
(19, 1, 31, NULL, '2023-04-13 02:36:48'),
(20, 1, 32, NULL, '2023-04-13 02:36:48'),
(21, 1, 33, NULL, '2023-04-13 02:36:49'),
(22, 1, 34, NULL, '2023-04-13 02:36:49'),
(23, 1, 35, NULL, '2023-04-13 02:36:49'),
(24, 1, 37, NULL, '2023-04-13 02:36:49'),
(25, 1, 38, NULL, '2023-04-13 02:36:49'),
(26, 1, 39, NULL, '2023-04-13 02:36:49'),
(27, 1, 40, NULL, '2023-04-13 02:36:49'),
(28, 1, 41, NULL, '2023-04-13 02:36:49'),
(29, 1, 42, NULL, '2023-04-13 02:36:49'),
(30, 1, 43, NULL, '2023-04-13 02:36:49'),
(31, 1, 44, NULL, '2023-04-13 02:36:49'),
(32, 1, 45, NULL, '2023-04-13 02:36:47'),
(33, 1, 46, NULL, '2023-04-13 02:36:47'),
(34, 1, 47, NULL, '2023-04-13 02:36:47'),
(35, 1, 48, NULL, '2023-04-13 02:36:47'),
(36, 1, 49, NULL, '2023-04-13 02:36:47'),
(37, 1, 50, NULL, '2023-04-13 02:36:47'),
(38, 1, 51, NULL, '2023-04-13 02:36:47'),
(39, 1, 52, NULL, '2023-04-13 02:36:47'),
(40, 1, 53, NULL, '2023-04-13 02:36:47'),
(41, 1, 24, NULL, '2023-04-13 02:36:48'),
(42, 1, 25, NULL, '2023-04-13 02:36:48'),
(43, 1, 26, NULL, '2023-04-13 02:36:48'),
(44, 1, 27, NULL, '2023-04-13 02:36:48'),
(45, 1, 28, NULL, '2023-04-13 02:36:48'),
(46, 1, 29, NULL, '2023-04-13 02:36:48'),
(47, 1, 14, NULL, '2023-04-13 02:36:48'),
(48, 1, 56, NULL, '2023-04-13 02:36:48'),
(49, 1, 57, NULL, '2023-04-13 02:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('BDrYNrF3F1dHjeIyknpDz04tvCsrN4c0jeY1JGQM', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoienZ1OUtsUG91VGRNbFVQUVlvcmxDNk1abmg3VjhqR3puNnI5MzV4SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxMjoidXNlcl9zZXNzaW9uIjtzOjIwOiJzdXBlckFkbWluQGdtYWlsLmNvbSI7czoxMjoicGFzc19zZXNzaW9uIjtzOjk6IjEyMzQ1Njc4OSI7fQ==', 1682585714),
('lXXc4bYCOfXnIvfY8nJo6hf1Z9lnUtHReZMYw5pg', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiblhvR0VFOXpEZU5QdmsySVY4YTBKcWdGTmtWRW9Ga2M5eXlMTEJTZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1682829973),
('x4Mvr7NdBeAIViPyfywsI3QO4jVVvQ75ciNJQkla', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXNma1JFdGZnVW9MTHJ4ZWFnbFNwZk9JcmxrTm82VDlmYVg2dWx4biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698578296),
('xyGx4RQAgN7uIXwOMbWzntDUlec6xF9j4uBRKSGb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicG11YzRoenphNjJ0Z1BHY1B4Y1p4M01CMWV1d1psVlhTekR5aGZqZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wb3N0L3Bvc3RfZW4vMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1696822010);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagecaption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `imagename`, `imagecaption`, `status`, `created_at`, `updated_at`) VALUES
(1, '8_1680496265.jpg', NULL, NULL, 1, '2023-04-26 22:24:42', '2023-04-26 22:25:03'),
(2, '1_1681377027.jpg', NULL, NULL, 1, '2023-04-26 22:24:51', '2023-04-26 22:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_email_verified` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` tinyint(4) DEFAULT NULL,
  `status_id` tinyint(4) NOT NULL DEFAULT 0,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_email_verified`, `password`, `google_id`, `access_token`, `role_id`, `status_id`, `profile_image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'superAdmin', 'superadmin@gmail.com', NULL, '1', '$2y$10$rhtV8HNdY.G77sl8wFHNJeF56IykPhcpiMQWQDDd1XB4pvPkOnzxe', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5OGQ1MWNmZi1mMDUwLTQ2ZDYtYTE1MS1mMjhjOTliZTcyOWYiLCJqdGkiOiJlNjI0ODg4OWE1MjY5NjM5YjE5MzdjZTZmMWUwZTViZWEyMGUwODE4Y2EzMTQ2Njk1ZWE5NDdjMWZkNDQyNTc0MjFlMDkwZjM1MjRlMGQwOCIsImlhdCI6MTY4MjU4NDk4NS4zMTI1NCwibmJmIjoxNjgyNTg0OTg1LjMxMjU0NiwiZXhwIjoxNzE0MjA3Mzg0LjkzMzMyNCwic3ViIjoiMSIsInNjb3BlcyI6W119.SSQvlPscZvG4J-7x9V6YPyq6HpZ42-iCi2ywZOW0oEaaq_hD8eAw9T70jz0zmRm56EIM7a7sWTJp0v7wmWHRS9vUvAJfTyMTwCpfiPmbcz3ikxx44qiQTOccpfGRd8krDTsRjHttKhk7Nl07-4iNJn-C2f8G4Mg8Wyqse3H34_UnTe7iG5waa8fbvPAQ_uzZOeWTfjbRDffyXc4FRX7z25gNZfEcxDpCd0DDKvqJsUVP7gVS1pxgEUioFnv4TH0lFluTadAMe0rmsIdE_Ak0BdgOyTWvYekhDLLQsVonPhapO7Koli5MCZUwmRz-uIY6d_ApN6eGD8adJr0x6JxhSbNCRrC-9nru6uHWMr0lZPhT97y9V5S2hO6CBqnutmz8a78TooGt4FUyIlGl2wiGx1xpsl2Yhx135CChrJGCcqZcud-NKwP-arhVH3zB8LHzSp9S0PJHrcuD-36L_vexi_RfXTvUNxiwSOrY5YuNpFmwVnrI_GXTcf_ktNhnaPVy-UzCzbflg3Pujb1Opm6FJrUjYnQbmyukU7vqjlPa63KE06vqKsT-y382bg1doBG03GSbWknWyjjxJxljhppePm_N95GZYJ9O_GydSP-GwC9_gZrpQsMuo-ik1VAn6lWKiQNYZBdxfiheiP6i0_6J1PnNQvpJyV1MiRFx0gNRa6g', 1, 1, NULL, 'MPN5DYKub1RAggkl7QH5xLzbxI0LmyFjhGiBp8T0VdSC6k1oWm8gCQPtMS9L', NULL, '2023-04-27 02:43:05'),
(2, 'admin', 'admin@gmail.com', NULL, '1', '$2y$10$VOffhETAJcOaS72.TSke5.N46qOtr5CGsDF.s.IIgF1sF/n09PTmm', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5OGQ1MWNmZi1mMDUwLTQ2ZDYtYTE1MS1mMjhjOTliZTcyOWYiLCJqdGkiOiI4Y2UzNjhmNTQ1MGMyNzA5Nzg2Nzc0MWI1ZmRkMzA5ZGNlODBmYTczMTI0MTNlMDFkZTA5ODAyMjI4ZWM4ZGVkYjEzODMyMDdjYmVhZDY5NSIsImlhdCI6MTY4MTAyNzk3MC41MjcwODcsIm5iZiI6MTY4MTAyNzk3MC41MjcxMDcsImV4cCI6MTcxMjY1MDM3MC41MDY2NzcsInN1YiI6IjIiLCJzY29wZXMiOltdfQ.drONKDTr5PUj6XbUktoRMLJjyku3C0wvCNIGEuhCWsB9sdHmnvAueAmNRIApEBwoced6V4ryF0OXZiKR4PbOPrwYHmC3GG-mra40Ze65LClNtRGOvIdVg7qPCg8XZ1dWDRaCduUcKM2zKnMWyHrmwcmtpqjN5fR4RmaVQfKoh7uaLufFUPciXLhlYjrgGNRngIoHxRA0LAujtRYFoYqvoyeGVJ63IYSCAwIZz4I4KMaKQciN2-aFKE5fQZImPpivj2KTZNnJx4lgUFo6fHRWCIeqB3vmYUNeH8iXbYpne8as9GyiGlblKltjpPXdGhqixoGRC35rYg9x4tRua89GBQtPc7dntIOxsEI0Bo16z7wMHEIKwPuFGkq3X85-Uu2s8J2xgdt_UxD2koKYPUYwEkp8tC78msooICNWeNtM9odEDg3kWw4E2yrviTnl9XZIcujcg_ZAcO_3rAEIxRyb6J4-GvPOoxj5BzIg0ltlXkc_41ZoRfrb0jQZlPRJhvnE8tPSEx6EEzxFyBC-LM0n3abJnAYaUhVlS8_GN7_tSWExJ4mI8QeWnnnfAymysaole0VBkK30o23EM2sShgvpXkp1jKoLh3--yNm9cr6U_NJpSwJxcru7kpeTp249bPxFBLxRizASrMDbd-3m_UaUKuoHmW2CByIrYJdWDh9UBaw', 2, 1, NULL, 'N5o87RSoJaZepB9q13Nhy7IzFPZD6EoULwmnvcOu2viWMBTWc7JyfMzOVy1g', NULL, '2023-04-09 02:12:50'),
(3, 'user', 'user@gmail.com', NULL, '1', '$2y$10$zYaC90d0TlMqIAh9qWkPKuBKac8kUu7WgpdAeIqPMnm8e41LGIWoW', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5OGQ1MWNmZi1mMDUwLTQ2ZDYtYTE1MS1mMjhjOTliZTcyOWYiLCJqdGkiOiJkMzFhMjMwYzM2MjNmNmY1OWE1NGZkMDAxN2VjZTJjMTU5ZjY4NmRiYjBhYTcwOGQxNzM4ZjZmMzFhNWNkZDQyMjdmZjljM2E3MGQ2ZDBmMiIsImlhdCI6MTY4MDQxMjE2Mi42NTA0MjIsIm5iZiI6MTY4MDQxMjE2Mi42NTA0MjcsImV4cCI6MTcxMjAzNDU2Mi42MTU3ODIsInN1YiI6IjMiLCJzY29wZXMiOltdfQ.lpKccdUo3Oi3sQo54ClBDjBljqMmTRJSdctCwqIfQP4EPFkwD2QJcdudPVmz1dIAzj8nDQoRkAxV1CkyLk_9LjRpPb28pMUGPUZYV39It-mpQcD6J_HApWcYpGHGNC4_EZ1me3e2Y6Vv2PeKfo-8BsVkIHm6yyg6ZFu3uPmRhKksyZI1WeZvns4L8BQyBzcRFLTRmifsPaPwk1Bg-NA7ckOAX4g7CaidGnUrYHimOEI7NqQ7dHdjDCi1xIZ02X-xC_yw8BHPSEXcMTYG2et89c4Odr8FR-n92vAXTtiJcQY9twhgaWn6iYP5pom7JN52IJKG7kcpl3Lt_HD7xPCCisVlrfWHQzsFnQUiwvDCHo3QRjs-65Xw_m0-VlfZr0_5jtMW_oCikaD4iaoPYFa5Ecs9T3L0Rt4k7XKeVq6mrjDItVO-dwC1RL6reXGDdMHzpY2NbbvQ9f7CAnGyZlkhlncL8IglTVB3I35vo2KijveIJe5yivPCoKkqrycCuUZHG4OkAw5y54GiGOk2WE4UdIjAn9rKbQMHQFgu3wK86OCItANjj-60c7EOHxRUOe-Ud90f5QZ_mce548-j92brz5FE2bbC_AqTpspMVw3UbomolIdbIogZOpDZSOL8cTHbLIq4cGUgvEyOK8UpItegssskFN0iEXB7oExNGVazVQg', 3, 1, NULL, 'jWKdfu4yud6vMO3bnuNoPZ36XGIZbe8t41t1ODaJBn5silVSy2oNncD7pWpr', NULL, '2023-04-01 23:09:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_verifies`
--

CREATE TABLE `user_verifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videocaption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video`, `videocaption`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'mVVjJU05Mcw', 'new video1', '5', 1, '2023-04-12 00:29:49', '2023-04-13 02:00:39'),
(2, 'Pexels_1681281634.mp4', 'new video2', '5', 1, '2023-04-12 00:40:34', '2023-04-12 00:40:34'),
(3, 'mVVjJU05Mcw', 'asd', '5', 1, '2023-04-12 00:43:42', '2023-04-12 00:43:42'),
(4, 'Pexels_1681372855.mp4', 'mp4 video', '5', 1, '2023-04-12 01:02:16', '2023-04-13 02:00:55'),
(5, 'mVVjJU05Mcw', '232wer', '5', 1, '2023-04-12 01:02:27', '2023-04-12 23:56:00'),
(6, 'Pexels_1681371484.mp4', 'category', '5', 1, '2023-04-13 01:38:04', '2023-04-13 01:47:16'),
(7, 'Pexels_1681717853.mp4', 'new video', '5', 1, '2023-04-13 02:53:33', '2023-04-17 01:50:53');

-- --------------------------------------------------------

--
-- Table structure for table `whitelists`
--

CREATE TABLE `whitelists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blacklists`
--
ALTER TABLE `blacklists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_en_unique` (`slug_en`),
  ADD UNIQUE KEY `categories_slug_bn_unique` (`slug_bn`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hitlogs`
--
ALTER TABLE `hitlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_galleries`
--
ALTER TABLE `image_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_uploads`
--
ALTER TABLE `image_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lang_changes`
--
ALTER TABLE `lang_changes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loginhistories`
--
ALTER TABLE `loginhistories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menuitems`
--
ALTER TABLE `menuitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_en_unique` (`slug_en`),
  ADD UNIQUE KEY `pages_slug_bn_unique` (`slug_bn`),
  ADD UNIQUE KEY `pages_link_unique` (`link`),
  ADD KEY `pages_user_id_foreign` (`user_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `postmetas`
--
ALTER TABLE `postmetas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postmetas_cat_id_foreign` (`cat_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_en_unique` (`slug_en`),
  ADD UNIQUE KEY `posts_slug_bn_unique` (`slug_bn`),
  ADD UNIQUE KEY `posts_link_unique` (`link`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`),
  ADD KEY `role_has_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_verifies`
--
ALTER TABLE `user_verifies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whitelists`
--
ALTER TABLE `whitelists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `whitelists_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blacklists`
--
ALTER TABLE `blacklists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hitlogs`
--
ALTER TABLE `hitlogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=527;

--
-- AUTO_INCREMENT for table `image_galleries`
--
ALTER TABLE `image_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `image_uploads`
--
ALTER TABLE `image_uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lang_changes`
--
ALTER TABLE `lang_changes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loginhistories`
--
ALTER TABLE `loginhistories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menuitems`
--
ALTER TABLE `menuitems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postmetas`
--
ALTER TABLE `postmetas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_verifies`
--
ALTER TABLE `user_verifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `whitelists`
--
ALTER TABLE `whitelists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `postmetas`
--
ALTER TABLE `postmetas`
  ADD CONSTRAINT `postmetas_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `whitelists`
--
ALTER TABLE `whitelists`
  ADD CONSTRAINT `whitelists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
