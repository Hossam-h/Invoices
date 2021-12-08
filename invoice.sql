-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2021 at 05:22 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoice`
--

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
-- Table structure for table `invoce_details`
--

CREATE TABLE `invoce_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_status` int(11) NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_date` date DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoce_details`
--

INSERT INTO `invoce_details` (`id`, `invoice_id`, `invoice_number`, `product`, `section`, `value_status`, `status`, `payment_date`, `note`, `user`, `created_at`, `updated_at`) VALUES
(4, 3, '456-45', 'بطاقات عقاريه', '1', 2, 'غير مدفوعة', NULL, 'تنمتبنمشسي نميستنملسي منكنملحخىسيل نيمستلنمسي', 'Hossam', '2021-10-12 11:45:38', '2021-10-12 11:45:38'),
(5, 4, '543-345', 'بطاقات عقاريه', '1', 2, 'غير مدفوعة', NULL, 'sdafhjkd jkdshfjksd jkdshfjks', 'Hossam', '2021-10-12 14:28:04', '2021-10-12 14:28:04'),
(7, 6, '234-34', 'بطاقات عقاريه', '1', 2, 'غير مدفوعة', NULL, 'نحب البنك نحب البنك نحب البنك نحب البنك نحب   نحب البنك نحب البنك نحب البنك نحب البنك نحب البنكنحب البنك نحب البنك نحب البنك نحب البنك نحب البنكنحب البنك نحب البنك نحب البنك نحب البنك نحب البنك', 'Hossam', '2021-10-13 04:33:36', '2021-10-13 04:33:36'),
(8, 7, '234-34', 'بطاقات عقاريه', '1', 2, 'غير مدفوعة', NULL, 'نحب البنك نحب البنك نحب البنك نحب البنك نحب   نحب البنك نحب البنك نحب البنك نحب البنك نحب البنكنحب البنك نحب البنك نحب البنك نحب البنك نحب البنكنحب البنك نحب البنك نحب البنك نحب البنك نحب البنك', 'Hossam', '2021-10-13 04:33:39', '2021-10-13 04:33:39'),
(9, 8, '435-435', 'كروت دفع', '2', 2, 'غير مدفوعة', NULL, 'نحب البنك نحب البنكنحب البنكنحب البنكنحب البنكنحب البنك نحب البنكنحب البنك نحب البنك نحب البنك', 'Hossam', '2021-10-13 04:38:46', '2021-10-13 04:38:46'),
(10, 9, '435-345', 'بطاقات ائتمان', '3', 2, 'غير مدفوعة', NULL, 'نحب البنك نحب البنك نحب البنك نحب البنك نحب البنك نحب البنك نحب البنك نحب البنك  نحب البنك نحب البنك نحب البنك', 'Hossam', '2021-10-13 04:39:41', '2021-10-13 04:39:41'),
(11, 8, '435-435', 'كروت دفع', '2', 1, 'مدفوعة', '2021-10-03', 'نحب البنك نحب البنكنحب البنكنحب البنكنحب البنكنحب البنك نحب البنكنحب البنك نحب البنك نحب البنك', 'Hossam', '2021-10-13 04:40:09', '2021-10-13 04:40:09'),
(12, 7, '234-34', 'بطاقات عقاريه', '1', 3, 'مدفوعة جزئيا', '2021-10-03', 'نحب البنك نحب البنك نحب البنك نحب البنك نحب   نحب البنك نحب البنك نحب البنك نحب البنك نحب البنكنحب البنك نحب البنك نحب البنك نحب البنك نحب البنكنحب البنك نحب البنك نحب البنك نحب البنك نحب البنك', 'Hossam', '2021-10-13 04:40:40', '2021-10-13 04:40:40'),
(13, 3, '456-45', 'بطاقات عقاريه', '1', 1, 'مدفوعة', '2021-10-04', 'تنمتبنمشسي نميستنملسي منكنملحخىسيل نيمستلنمسي', 'Hossam', '2021-10-13 04:52:20', '2021-10-13 04:52:20'),
(14, 4, '543-345', 'بطاقات عقاريه', '1', 1, 'مدفوعة', '2021-10-03', 'sdafhjkd jkdshfjksd jkdshfjks', 'Hossam', '2021-10-13 05:06:03', '2021-10-13 05:06:03'),
(15, 10, '234-324', 'بطاقات ائتمان', '3', 2, 'غير مدفوعة', NULL, 'تنمل نمتالبي   نميبتم منليبس منسيتلمتسيق سيهتلمنسيتلم', 'Hossam', '2021-10-13 11:52:49', '2021-10-13 11:52:49'),
(16, 10, '234-324', 'بطاقات ائتمان', '3', 3, 'مدفوعة جزئيا', '2021-10-03', 'تنمل نمتالبي   نميبتم منليبس منسيتلمتسيق سيهتلمنسيتلم', 'Hossam', '2021-10-13 11:53:32', '2021-10-13 11:53:32'),
(17, 8, '435-435', 'كروت دفع', '2', 1, 'مدفوعة', '2021-10-05', 'نحب البنك نحب البنكنحب البنكنحب البنكنحب البنكنحب البنك نحب البنكنحب البنك نحب البنك نحب البنك', 'Hossam', '2021-10-13 11:56:26', '2021-10-13 11:56:26'),
(25, 18, '456', 'بطاقات عقاريه', '1', 2, 'غير مدفوعة', NULL, 'tytrytrytryrrrty', 'Hossam', '2021-10-14 09:55:21', '2021-10-14 09:55:21'),
(26, 19, '43534-436', 'بطاقات عقاريه', '1', 2, 'غير مدفوعة', NULL, 'dsjg jklsdgnsdg kjdshgjksd kljhsdg', 'Hossam', '2021-10-14 09:59:19', '2021-10-14 09:59:19'),
(27, 20, '4534-65', 'بطاقات ائتمان', '3', 2, 'غير مدفوعة', NULL, 'jkhg jkghjksdf jkhsdg', 'Hossam', '2021-10-14 10:01:19', '2021-10-14 10:01:19'),
(28, 21, '345-435', 'كروت دفع', '2', 2, 'غير مدفوعة', NULL, 'نتنسيل نملتنميبتلنم نمتيسل نميبل', 'Hossam', '2021-10-14 10:07:32', '2021-10-14 10:07:32'),
(29, 22, '435346-56', 'بطاقات عقاريه', '1', 2, 'غير مدفوعة', NULL, 'سيشباتن تنسيابتنسي تناسيب تنسيابتن تنيباتن', 'Hossam', '2021-10-14 10:09:28', '2021-10-14 10:09:28'),
(30, 23, '2353-435', 'بطاقات عقاريه', '1', 2, 'غير مدفوعة', NULL, 'cvjhfjkdg jkgsdf jkdghjkdfs jkhdfgb', 'أحمد', '2021-10-14 11:32:48', '2021-10-14 11:32:48'),
(31, 24, '432-34', 'بطاقات عقاريه', '1', 2, 'غير مدفوعة', NULL, 'lkdjfs lksdjfklsdf klsdjfklklsdjfg', 'أحمد', '2021-10-14 11:40:51', '2021-10-14 11:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_Date` date DEFAULT NULL,
  `Due_date` date DEFAULT NULL,
  `product` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `Amount_collection` decimal(8,2) DEFAULT NULL,
  `Amount_Commission` decimal(8,2) NOT NULL,
  `Discount` decimal(8,2) NOT NULL,
  `Value_VAT` decimal(8,2) NOT NULL,
  `Rate_VAT` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Total` decimal(8,2) NOT NULL,
  `Status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value_Status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Payment_Date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_number`, `invoice_Date`, `Due_date`, `product`, `section_id`, `Amount_collection`, `Amount_Commission`, `Discount`, `Value_VAT`, `Rate_VAT`, `Total`, `Status`, `Value_Status`, `note`, `Payment_Date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, '456-45', '2021-10-12', '2021-10-11', 'بطاقات عقاريه', 1, '4534.00', '454.00', '45.00', '20.45', '5%', '429.45', 'مدفوعة', 1, 'تنمتبنمشسي نميستنملسي منكنملحخىسيل نيمستلنمسي', '2021-10-04', NULL, '2021-10-12 11:45:38', '2021-10-13 04:52:20'),
(4, '543-345', '2021-10-12', '2021-10-13', 'بطاقات عقاريه', 1, '43543.00', '435.00', '45.00', '19.50', '5%', '409.50', 'مدفوعة', 1, 'sdafhjkd jkdshfjksd jkdshfjks', '2021-10-03', NULL, '2021-10-12 14:28:04', '2021-10-13 05:06:03'),
(6, '234-34', '2021-10-13', '2021-10-11', 'بطاقات عقاريه', 1, '74855.00', '454.00', '45.00', '20.45', '5%', '429.45', 'غير مدفوعة', 2, 'نحب البنك نحب البنك نحب البنك نحب البنك نحب   نحب البنك نحب البنك نحب البنك نحب البنك نحب البنكنحب البنك نحب البنك نحب البنك نحب البنك نحب البنكنحب البنك نحب البنك نحب البنك نحب البنك نحب البنك', NULL, NULL, '2021-10-13 04:33:36', '2021-10-13 04:33:36'),
(7, '234-34', '2021-10-13', '2021-10-11', 'بطاقات عقاريه', 1, '74855.00', '454.00', '45.00', '20.45', '5%', '429.45', 'مدفوعة جزئيا', 3, 'نحب البنك نحب البنك نحب البنك نحب البنك نحب   نحب البنك نحب البنك نحب البنك نحب البنك نحب البنكنحب البنك نحب البنك نحب البنك نحب البنك نحب البنكنحب البنك نحب البنك نحب البنك نحب البنك نحب البنك', '2021-10-03', NULL, '2021-10-13 04:33:39', '2021-10-13 04:40:40'),
(8, '435-435', '2021-10-13', '2021-10-11', 'كروت دفع', 2, '3454.00', '454.00', '98.00', '17.80', '5%', '373.80', 'مدفوعة', 1, 'نحب البنك نحب البنكنحب البنكنحب البنكنحب البنكنحب البنك نحب البنكنحب البنك نحب البنك نحب البنك', '2021-10-05', NULL, '2021-10-13 04:38:46', '2021-10-13 11:56:26'),
(9, '435-345', '2021-10-13', '2021-10-18', 'بطاقات ائتمان', 3, '3454.00', '454.00', '45.00', '40.90', '10%', '449.90', 'غير مدفوعة', 2, 'نحب البنك نحب البنك نحب البنك نحب البنك نحب البنك نحب البنك نحب البنك نحب البنك  نحب البنك نحب البنك نحب البنك', NULL, NULL, '2021-10-13 04:39:41', '2021-10-13 04:39:41'),
(10, '234-324', '2021-10-13', '2021-10-12', 'بطاقات ائتمان', 3, '3434.00', '344.00', '34.00', '15.50', '5%', '325.50', 'مدفوعة جزئيا', 3, 'تنمل نمتالبي   نميبتم منليبس منسيتلمتسيق سيهتلمنسيتلم', '2021-10-03', NULL, '2021-10-13 11:52:49', '2021-10-13 11:53:32'),
(18, '456', '2021-10-14', '2021-10-03', 'بطاقات عقاريه', 1, '5465.00', '565.00', '56.00', '25.45', '5%', '534.45', 'غير مدفوعة', 2, 'tytrytrytryrrrty', NULL, NULL, '2021-10-14 09:55:21', '2021-10-14 09:55:21'),
(19, '43534-436', '2021-10-14', '2021-10-04', 'بطاقات عقاريه', 1, '46644.00', '4363.00', '56.00', '215.35', '5%', '4522.35', 'غير مدفوعة', 2, 'dsjg jklsdgnsdg kjdshgjksd kljhsdg', NULL, NULL, '2021-10-14 09:59:19', '2021-10-14 09:59:19'),
(20, '4534-65', '2021-10-14', '2021-10-18', 'بطاقات ائتمان', 3, '5435.00', '565.00', '56.00', '25.45', '5%', '534.45', 'غير مدفوعة', 2, 'jkhg jkghjksdf jkhsdg', NULL, NULL, '2021-10-14 10:01:19', '2021-10-14 10:01:19'),
(21, '345-435', '2021-10-14', '2021-10-03', 'كروت دفع', 2, '4354.00', '455.00', '45.00', '20.50', '5%', '430.50', 'غير مدفوعة', 2, 'نتنسيل نملتنميبتلنم نمتيسل نميبل', NULL, NULL, '2021-10-14 10:07:32', '2021-10-14 10:07:32'),
(22, '435346-56', '2021-10-14', '2021-10-25', 'بطاقات عقاريه', 1, '34564.00', '565.00', '56.00', '25.45', '5%', '534.45', 'غير مدفوعة', 2, 'سيشباتن تنسيابتنسي تناسيب تنسيابتن تنيباتن', NULL, NULL, '2021-10-14 10:09:28', '2021-10-14 10:09:28'),
(23, '2353-435', '2021-10-14', '2021-10-18', 'بطاقات عقاريه', 1, '43545.00', '454.00', '45.00', '20.45', '5%', '429.45', 'غير مدفوعة', 2, 'cvjhfjkdg jkgsdf jkdghjkdfs jkhdfgb', NULL, NULL, '2021-10-14 11:32:48', '2021-10-14 11:32:48'),
(24, '432-34', '2021-10-14', '2021-10-18', 'بطاقات عقاريه', 1, '4324.00', '344.00', '34.00', '15.50', '5%', '325.50', 'غير مدفوعة', 2, 'lkdjfs lksdjfklsdf klsdjfklklsdjfg', NULL, NULL, '2021-10-14 11:40:51', '2021-10-14 11:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_attachments`
--

CREATE TABLE `invoice_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Created_by` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_attachments`
--

INSERT INTO `invoice_attachments` (`id`, `file_name`, `invoice_number`, `Created_by`, `invoice_id`, `created_at`, `updated_at`) VALUES
(2, 'Hossam-ibrahimCV.pdf', '435-435', 'Hossam', 8, '2021-10-13 04:38:46', '2021-10-13 04:38:46');

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
(4, '2020_09_23_123252_create_sections_table', 1),
(5, '2021_09_21_113841_create_invoices_table', 1),
(6, '2021_09_29_145027_create_products_table', 1),
(7, '2021_09_30_142905_create_invoce_details_table', 1),
(8, '2021_09_30_144740_create_invoice_attachments_table', 1),
(9, '2021_10_07_224742_create_permission_tables', 1),
(10, '2021_10_14_093347_create_notifications_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(2, 'App\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('1324f77a-724c-4a92-9944-ee7132f573ac', 'App\\Notifications\\Addinvoice', 'App\\User', 1, '{\"id\":22,\"tittel\":\"\\u062a\\u0645 \\u062a\\u0636\\u062a\\u0641\\u0629 \\u0635\\u0648\\u0631\\u0629\",\"user\":\"Hossam\"}', NULL, '2021-10-14 10:09:28', '2021-10-14 10:09:28'),
('24fd6e47-84cd-4367-84f9-718098f523f7', 'App\\Notifications\\Addinvoice', 'App\\User', 1, '{\"id\":24,\"tittel\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\",\"user\":\"\\u0623\\u062d\\u0645\\u062f\"}', '2021-10-12 13:43:35', '2021-10-14 11:40:51', '2021-10-14 11:40:51'),
('6baa1dbe-bb78-4805-9207-56054f80ed24', 'App\\Notifications\\Addinvoice', 'App\\User', 1, '{\"id\":23,\"tittel\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\",\"user\":\"\\u0623\\u062d\\u0645\\u062f\"}', NULL, '2021-10-14 11:32:48', '2021-10-14 11:32:48'),
('ddafbff4-56f2-4cb3-b01b-560adfd2a317', 'App\\Notifications\\Addinvoice', 'App\\User', 3, '{\"id\":24,\"tittel\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\",\"user\":\"\\u0623\\u062d\\u0645\\u062f\"}', '2021-10-13 13:42:56', '2021-10-14 11:40:51', '2021-10-14 11:40:51'),
('e5308d67-9ad9-4692-bb28-7d37e885cacd', 'App\\Notifications\\Addinvoice', 'App\\User', 2, '{\"id\":24,\"tittel\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\",\"user\":\"\\u0623\\u062d\\u0645\\u062f\"}', '2021-10-20 13:43:17', '2021-10-14 11:40:51', '2021-10-14 11:40:51');

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'الفواتير', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(2, 'قائمة الفواتير', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(3, 'الفواتير المدفوعة', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(4, 'الفواتير المدفوعة جزئيا', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(5, 'الفواتير الغير مدفوعة', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(6, 'ارشيف الفواتير', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(7, 'التقارير', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(8, 'تقرير الفواتير', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(9, 'تقرير العملاء', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(10, 'المستخدمين', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(11, 'قائمة المستخدمين', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(12, 'صلاحيات المستخدمين', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(13, 'الاعدادات', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(14, 'المنتجات', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(15, 'الاقسام', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(16, 'اضافة فاتورة', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(17, 'حذف الفاتورة', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(18, 'تصدير EXCEL', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(19, 'تغير حالة الدفع', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(20, 'تعديل الفاتورة', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(21, 'ارشفة الفاتورة', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(22, 'طباعةالفاتورة', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(23, 'اضافة مرفق', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(24, 'حذف المرفق', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(25, 'اضافة مستخدم', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(26, 'تعديل مستخدم', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(27, 'حذف مستخدم', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(28, 'عرض صلاحية', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(29, 'اضافة صلاحية', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(30, 'تعديل صلاحية', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(31, 'حذف صلاحية', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(32, 'اضافة منتج', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(33, 'تعديل منتج', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(34, 'حذف منتج', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(35, 'اضافة قسم', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(36, 'تعديل قسم', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(37, 'حذف قسم', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11'),
(38, 'الاشعارات', 'web', '2021-10-11 01:25:11', '2021-10-11 01:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `description`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 'بطاقات عقاريه', 'بطاقات عقارية للشراء', 1, '2021-10-11 01:27:31', '2021-10-11 01:27:31'),
(2, 'كروت دفع', 'نحب الاهلي', 2, '2021-10-13 04:35:20', '2021-10-13 04:35:20'),
(3, 'بطاقات ائتمان', 'بنك دولي', 3, '2021-10-13 04:36:04', '2021-10-13 04:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2021-10-11 01:25:19', '2021-10-11 01:25:19'),
(2, 'User', 'web', '2021-10-11 01:31:02', '2021-10-11 01:31:02');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 2),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_by` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section_name`, `description`, `Created_by`, `created_at`, `updated_at`) VALUES
(1, 'بنك الرياض', 'نحب بنك الرياض', 'Hossam', '2021-10-11 01:26:38', '2021-10-11 01:26:38'),
(2, 'الاهلي', 'نحب الاهلي', 'Hossam', '2021-10-13 04:34:07', '2021-10-13 04:34:07'),
(3, 'CIB', 'نحب CIB', 'Hossam', '2021-10-13 04:34:28', '2021-10-13 04:34:28');

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
  `roles_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `roles_name`, `Status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hossam', 'hossam@gmail.com', NULL, '$2y$10$aZzuJAS0R7qrVvMRs.6SpObBanKtSgKh0ncsuTXofqrQycBkBQhyK', '[\"owner\"]', 'مفعل', NULL, '2021-10-11 01:25:19', '2021-10-11 01:25:19'),
(2, 'أحمد', 'ahmed@gmail.com', NULL, '$2y$10$mpflro917oViYhnUg4VAN.9ov6dtAzZlJCM.5jAgK8SPCAtUVogVK', '[\"User\"]', 'مفعل', NULL, '2021-10-11 01:31:44', '2021-10-11 05:41:25'),
(3, 'مصطفي', 'mosta@gmail.com', NULL, '$2y$10$uS148pTS27HM3Dlcy0JgTunYU313/3bk7cTS.ch9BY4IUKv7i6qYa', '[\"User\"]', 'مفعل', NULL, '2021-10-14 07:18:58', '2021-10-14 07:19:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoce_details`
--
ALTER TABLE `invoce_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoce_details_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_section_id_foreign` (`section_id`);

--
-- Indexes for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_attachments_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_section_id_foreign` (`section_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoce_details`
--
ALTER TABLE `invoce_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoce_details`
--
ALTER TABLE `invoce_details`
  ADD CONSTRAINT `invoce_details_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  ADD CONSTRAINT `invoice_attachments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
