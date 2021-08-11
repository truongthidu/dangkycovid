-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2021 at 09:04 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dangkycovid`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
(3, 2, 3, 'Nhân viên', 'fa-users', 'auth/users', NULL, NULL, '2021-08-10 23:51:57'),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 0, 'Người dùng', 'fa-bars', 'users', NULL, '2021-08-10 23:51:03', '2021-08-10 23:51:03'),
(9, 0, 0, 'Nơi tiêm', 'fa-bars', 'noi-tiems', NULL, '2021-08-10 23:51:15', '2021-08-10 23:51:15'),
(10, 0, 0, 'Ngày tiêm', 'fa-bars', 'ngay-tiems', NULL, '2021-08-10 23:51:25', '2021-08-10 23:51:25'),
(11, 0, 0, 'Đối tượng', 'fa-bars', 'doituongs', NULL, '2021-08-10 23:51:33', '2021-08-10 23:53:35'),
(12, 0, 0, 'Lịch tiêm', 'fa-bars', 'lich-tiems', NULL, '2021-08-10 23:51:45', '2021-08-10 23:51:45');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '::1', '[]', '2021-08-10 23:50:35', '2021-08-10 23:50:35'),
(2, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:50:38', '2021-08-10 23:50:38'),
(3, 1, 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:50:42', '2021-08-10 23:50:42'),
(4, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:50:44', '2021-08-10 23:50:44'),
(5, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:50:48', '2021-08-10 23:50:48'),
(6, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"Ng\\u01b0\\u1eddi d\\u00f9ng\",\"icon\":\"fa-bars\",\"uri\":\"users\",\"roles\":[null],\"permission\":null,\"_token\":\"EE8EbaDTz6fsWHNLA4oFkL4mnUMruAo5JtiSaTLT\"}', '2021-08-10 23:51:03', '2021-08-10 23:51:03'),
(7, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2021-08-10 23:51:03', '2021-08-10 23:51:03'),
(8, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"N\\u01a1i ti\\u00eam\",\"icon\":\"fa-bars\",\"uri\":\"noi-tiems\",\"roles\":[null],\"permission\":null,\"_token\":\"EE8EbaDTz6fsWHNLA4oFkL4mnUMruAo5JtiSaTLT\"}', '2021-08-10 23:51:15', '2021-08-10 23:51:15'),
(9, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2021-08-10 23:51:15', '2021-08-10 23:51:15'),
(10, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"Ng\\u00e0y ti\\u00eam\",\"icon\":\"fa-bars\",\"uri\":\"ngay-tiems\",\"roles\":[null],\"permission\":null,\"_token\":\"EE8EbaDTz6fsWHNLA4oFkL4mnUMruAo5JtiSaTLT\"}', '2021-08-10 23:51:25', '2021-08-10 23:51:25'),
(11, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2021-08-10 23:51:26', '2021-08-10 23:51:26'),
(12, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u0110\\u1ed1i t\\u01b0\\u1ee3ng\",\"icon\":\"fa-bars\",\"uri\":\"doi-tuongs\",\"roles\":[null],\"permission\":null,\"_token\":\"EE8EbaDTz6fsWHNLA4oFkL4mnUMruAo5JtiSaTLT\"}', '2021-08-10 23:51:33', '2021-08-10 23:51:33'),
(13, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2021-08-10 23:51:33', '2021-08-10 23:51:33'),
(14, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"L\\u1ecbch ti\\u00eam\",\"icon\":\"fa-bars\",\"uri\":\"lich-tiems\",\"roles\":[null],\"permission\":null,\"_token\":\"EE8EbaDTz6fsWHNLA4oFkL4mnUMruAo5JtiSaTLT\"}', '2021-08-10 23:51:45', '2021-08-10 23:51:45'),
(15, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2021-08-10 23:51:45', '2021-08-10 23:51:45'),
(16, 1, 'admin/auth/menu/3/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:51:52', '2021-08-10 23:51:52'),
(17, 1, 'admin/auth/menu/3', 'PUT', '::1', '{\"parent_id\":\"2\",\"title\":\"Nh\\u00e2n vi\\u00ean\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"EE8EbaDTz6fsWHNLA4oFkL4mnUMruAo5JtiSaTLT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/dangkycovid\\/public\\/admin\\/auth\\/menu\"}', '2021-08-10 23:51:57', '2021-08-10 23:51:57'),
(18, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2021-08-10 23:51:57', '2021-08-10 23:51:57'),
(19, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2021-08-10 23:51:59', '2021-08-10 23:51:59'),
(20, 1, 'admin/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:52:01', '2021-08-10 23:52:01'),
(21, 1, 'admin/noi-tiems', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:52:02', '2021-08-10 23:52:02'),
(22, 1, 'admin/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:52:03', '2021-08-10 23:52:03'),
(23, 1, 'admin/ngay-tiems', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:52:04', '2021-08-10 23:52:04'),
(24, 1, 'admin/noi-tiems', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:52:04', '2021-08-10 23:52:04'),
(25, 1, 'admin/ngay-tiems', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:52:06', '2021-08-10 23:52:06'),
(26, 1, 'admin/ngay-tiems/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:52:07', '2021-08-10 23:52:07'),
(27, 1, 'admin/ngay-tiems/create', 'GET', '::1', '[]', '2021-08-10 23:52:37', '2021-08-10 23:52:37'),
(28, 1, 'admin/ngay-tiems', 'POST', '::1', '{\"date\":\"2021-08-26\",\"_token\":\"EE8EbaDTz6fsWHNLA4oFkL4mnUMruAo5JtiSaTLT\"}', '2021-08-10 23:52:40', '2021-08-10 23:52:40'),
(29, 1, 'admin/ngay-tiems', 'GET', '::1', '[]', '2021-08-10 23:52:40', '2021-08-10 23:52:40'),
(30, 1, 'admin/ngay-tiems/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:52:43', '2021-08-10 23:52:43'),
(31, 1, 'admin/ngay-tiems', 'POST', '::1', '{\"date\":\"2021-08-26\",\"_token\":\"EE8EbaDTz6fsWHNLA4oFkL4mnUMruAo5JtiSaTLT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/dangkycovid\\/public\\/admin\\/ngay-tiems\"}', '2021-08-10 23:52:46', '2021-08-10 23:52:46'),
(32, 1, 'admin/ngay-tiems', 'GET', '::1', '[]', '2021-08-10 23:52:46', '2021-08-10 23:52:46'),
(33, 1, 'admin/ngay-tiems', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:52:48', '2021-08-10 23:52:48'),
(34, 1, 'admin/ngay-tiems', 'GET', '::1', '[]', '2021-08-10 23:52:59', '2021-08-10 23:52:59'),
(35, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:53:02', '2021-08-10 23:53:02'),
(36, 1, 'admin/auth/menu/11/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:53:04', '2021-08-10 23:53:04'),
(37, 1, 'admin/auth/menu/11', 'PUT', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u0110\\u1ed1i t\\u01b0\\u1ee3ng\",\"icon\":\"fa-bars\",\"uri\":\"doituongs\",\"roles\":[null],\"permission\":null,\"_token\":\"EE8EbaDTz6fsWHNLA4oFkL4mnUMruAo5JtiSaTLT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/dangkycovid\\/public\\/admin\\/auth\\/menu\"}', '2021-08-10 23:53:35', '2021-08-10 23:53:35'),
(38, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2021-08-10 23:53:35', '2021-08-10 23:53:35'),
(39, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2021-08-10 23:53:40', '2021-08-10 23:53:40'),
(40, 1, 'admin/doituongs', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:53:42', '2021-08-10 23:53:42'),
(41, 1, 'admin/doituongs/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:53:44', '2021-08-10 23:53:44'),
(42, 1, 'admin/doituongs', 'POST', '::1', '{\"name\":\"A\",\"_token\":\"EE8EbaDTz6fsWHNLA4oFkL4mnUMruAo5JtiSaTLT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/dangkycovid\\/public\\/admin\\/doituongs\"}', '2021-08-10 23:53:49', '2021-08-10 23:53:49'),
(43, 1, 'admin/doituongs', 'GET', '::1', '[]', '2021-08-10 23:53:50', '2021-08-10 23:53:50'),
(44, 1, 'admin/doituongs/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:53:51', '2021-08-10 23:53:51'),
(45, 1, 'admin/doituongs', 'POST', '::1', '{\"name\":\"B\",\"_token\":\"EE8EbaDTz6fsWHNLA4oFkL4mnUMruAo5JtiSaTLT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/dangkycovid\\/public\\/admin\\/doituongs\"}', '2021-08-10 23:53:53', '2021-08-10 23:53:53'),
(46, 1, 'admin/doituongs', 'GET', '::1', '[]', '2021-08-10 23:53:53', '2021-08-10 23:53:53'),
(47, 1, 'admin/noi-tiems', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:53:56', '2021-08-10 23:53:56'),
(48, 1, 'admin/noi-tiems/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:53:57', '2021-08-10 23:53:57'),
(49, 1, 'admin/noi-tiems', 'POST', '::1', '{\"name\":\"H\\u00e0 N\\u1ed9i\",\"_token\":\"EE8EbaDTz6fsWHNLA4oFkL4mnUMruAo5JtiSaTLT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/dangkycovid\\/public\\/admin\\/noi-tiems\"}', '2021-08-10 23:54:05', '2021-08-10 23:54:05'),
(50, 1, 'admin/noi-tiems', 'GET', '::1', '[]', '2021-08-10 23:54:05', '2021-08-10 23:54:05'),
(51, 1, 'admin/noi-tiems/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-10 23:54:07', '2021-08-10 23:54:07'),
(52, 1, 'admin/noi-tiems', 'POST', '::1', '{\"name\":\"H\\u1ed3 Ch\\u00ed Minh\",\"_token\":\"EE8EbaDTz6fsWHNLA4oFkL4mnUMruAo5JtiSaTLT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/dangkycovid\\/public\\/admin\\/noi-tiems\"}', '2021-08-10 23:54:10', '2021-08-10 23:54:10'),
(53, 1, 'admin/noi-tiems', 'GET', '::1', '[]', '2021-08-10 23:54:11', '2021-08-10 23:54:11'),
(54, 1, 'admin/lich-tiems', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-11 00:03:29', '2021-08-11 00:03:29'),
(55, 1, 'admin/lich-tiems', 'GET', '::1', '[]', '2021-08-11 00:03:35', '2021-08-11 00:03:35'),
(56, 1, 'admin/_handle_action_', 'POST', '::1', '{\"_key\":\"1\",\"_model\":\"App_Models_Lichtiem\",\"_token\":\"S0tQtnxccd59cEEj83iARMV79A3MqEbLCHi4IJP6\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2021-08-11 00:03:38', '2021-08-11 00:03:38'),
(57, 1, 'admin/lich-tiems', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-11 00:03:38', '2021-08-11 00:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2021-08-10 23:50:30', '2021-08-10 23:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$HtlJJnBeb3BEvjo3QpHNl.o83.mZb5lQzf1SE5.RDf2S9Kon9jQlG', 'Administrator', NULL, 'orjkgKz1i0CEumhQNVfWqDFzciohRAMfFXxYv42xCyyRyLLESLYgiT4QOYiV', '2021-08-10 23:50:30', '2021-08-10 23:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doituonguutien`
--

CREATE TABLE `doituonguutien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doituonguutien`
--

INSERT INTO `doituonguutien` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'A', '2021-08-10 23:53:49', '2021-08-10 23:53:49'),
(2, 'B', '2021-08-10 23:53:53', '2021-08-10 23:53:53');

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
-- Table structure for table `lichtiem`
--

CREATE TABLE `lichtiem` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `noitiemid` int(11) NOT NULL,
  `doituonguutienid` int(11) NOT NULL,
  `ngaytiemid` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lichtiem`
--

INSERT INTO `lichtiem` (`id`, `userid`, `noitiemid`, `doituonguutienid`, `ngaytiemid`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 1, 1, '2021-08-11 00:03:45', '2021-08-11 00:03:45');

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
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ngaytiem`
--

CREATE TABLE `ngaytiem` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ngaytiem`
--

INSERT INTO `ngaytiem` (`id`, `date`, `created_at`, `updated_at`) VALUES
(1, '2021-08-26', '2021-08-10 23:52:40', '2021-08-10 23:52:40'),
(2, '2021-08-26', '2021-08-10 23:52:46', '2021-08-10 23:52:46');

-- --------------------------------------------------------

--
-- Table structure for table `noitiem`
--

CREATE TABLE `noitiem` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noitiem`
--

INSERT INTO `noitiem` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hà Nội', '2021-08-10 23:54:05', '2021-08-10 23:54:05'),
(2, 'Hồ Chí Minh', '2021-08-10 23:54:10', '2021-08-10 23:54:10');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Xuan Tung', 'tungcan2000@gmail.com', NULL, '$2y$10$sv4mEqtkC6YghTWflRuIX.Ao3RuyUtoR2IzQN4wyQp2LThihWIPb6', 'EUr6Lk3yptDNCVXxCjMSjscD3GP9f2Fl7dzRJI5MBMfoVzpuVTFvIwXQFNfY', '2021-08-10 23:23:06', '2021-08-10 23:23:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `doituonguutien`
--
ALTER TABLE `doituonguutien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `lichtiem`
--
ALTER TABLE `lichtiem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngaytiem`
--
ALTER TABLE `ngaytiem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noitiem`
--
ALTER TABLE `noitiem`
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
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doituonguutien`
--
ALTER TABLE `doituonguutien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lichtiem`
--
ALTER TABLE `lichtiem`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ngaytiem`
--
ALTER TABLE `ngaytiem`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `noitiem`
--
ALTER TABLE `noitiem`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
