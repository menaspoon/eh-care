-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2023 at 10:47 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `absence`
--

CREATE TABLE `absence` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `departure` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `overtime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `vacation` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `month` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `attendance_time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time_departure` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absence`
--

INSERT INTO `absence` (`id`, `user`, `status`, `departure`, `overtime`, `vacation`, `month`, `date`, `attendance_time`, `time_departure`, `updated_at`) VALUES
(34, 6, 'vacation', NULL, NULL, NULL, NULL, '2023-05-27', NULL, NULL, NULL),
(35, 6, 'vacation', NULL, NULL, NULL, NULL, '2023-05-27', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `analytics`
--

CREATE TABLE `analytics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `service_provider` int(11) DEFAULT NULL,
  `insurance_company` int(11) DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `analytics`
--

INSERT INTO `analytics` (`id`, `name`, `price`, `category`, `service_provider`, `insurance_company`, `updated_at`, `created_at`) VALUES
(24, 'تحليل بول', 40, 1, 1, NULL, NULL, NULL),
(25, 'تحليل دم', 40, 1, 1, NULL, NULL, NULL),
(26, 'تحليل املاح', 40, 1, 1, NULL, NULL, NULL),
(27, 'تحليل جلد', 40, 1, 1, NULL, NULL, NULL),
(28, 'Black Jacquard Taffeta Abaya', 90, 1, 3, 1, NULL, NULL),
(29, 'اسم الفحص', 0, 1, 3, 1, '2023-07-27 19:50:58', '2023-07-27 19:50:58'),
(30, 'تحليل دم', 20, 1, 3, 1, '2023-07-27 19:50:58', '2023-07-27 19:50:58'),
(31, 'تحليل بول', 10, 1, 3, 1, '2023-07-27 19:50:58', '2023-07-27 19:50:58'),
(32, 'Mena Saleep', 100, 1, NULL, 1, NULL, NULL),
(33, 'Mena Saleep', 100, 1, NULL, 1, NULL, NULL),
(34, 'Black Jacquard Taffeta Abaya', 4000, 1, 3, 1, NULL, NULL),
(35, 'Mena Saleep', 100, 1, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `analytics_approve_company`
--

CREATE TABLE `analytics_approve_company` (
  `id` int(11) NOT NULL,
  `item` int(11) DEFAULT NULL,
  `precent` int(11) DEFAULT 100,
  `company` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `analytics_approve_company`
--

INSERT INTO `analytics_approve_company` (`id`, `item`, `precent`, `company`, `hospital`, `updated_at`) VALUES
(5, 21, 100, 1, 1, NULL),
(6, 22, 10, 1, 1, NULL),
(7, 24, 100, 1, 1, NULL),
(8, 25, 100, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `analytics_booking`
--

CREATE TABLE `analytics_booking` (
  `id` int(11) NOT NULL,
  `medical_examination` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `name` int(11) DEFAULT NULL,
  `doctor` int(11) DEFAULT 0,
  `created` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `analytics_booking`
--

INSERT INTO `analytics_booking` (`id`, `medical_examination`, `price`, `name`, `doctor`, `created`, `time`, `hospital`, `status`, `updated_at`) VALUES
(57, 24, 40, 390, 1, '2023-05-23', NULL, 1, 'ok', '2023-05-23 10:32:24'),
(58, 25, 40, 390, 1, '2023-05-23', NULL, 1, 'ok', '2023-05-23 10:32:24'),
(59, 26, 40, 390, 5, '2023-05-23', NULL, 1, 'not', '2023-05-23 10:32:24'),
(60, 24, 40, 391, 1, '2023-05-23', NULL, 1, 'ok', '2023-05-23 10:33:17'),
(61, 25, 40, 391, 1, '2023-05-23', NULL, 1, 'not', '2023-05-23 10:33:17'),
(62, 26, 40, 391, 5, '2023-05-23', NULL, 1, 'ok', '2023-05-23 10:33:17'),
(63, 25, 40, 405, 6, '2023-05-29', NULL, 1, 'ok', '2023-05-29 05:16:47'),
(64, 24, 40, 406, 5, '2023-05-29', NULL, 1, 'ok', '2023-05-29 06:16:23'),
(65, 24, 40, 407, 5, '2023-05-29', NULL, 1, 'ok', '2023-05-29 06:35:09'),
(66, 24, 40, 408, 6, '2023-05-29', NULL, 1, 'ok', '2023-05-29 07:10:57'),
(67, 24, 40, 409, 6, '2023-05-29', NULL, 1, 'ok', '2023-05-29 07:16:33'),
(68, 24, 40, 410, 6, '2023-05-29', NULL, 1, 'ok', '2023-05-29 07:19:11'),
(69, 24, 40, 411, 6, '2023-05-29', NULL, 1, 'ok', '2023-05-29 07:19:52'),
(70, 24, 40, 412, 12, '2023-05-29', NULL, 1, 'ok', '2023-05-29 07:31:10'),
(71, 24, 40, 413, 5, '2023-05-29', NULL, 1, 'ok', '2023-05-29 07:35:16'),
(72, 24, 40, 414, 6, '2023-05-29', NULL, 1, 'ok', '2023-05-29 07:55:22'),
(73, 24, 40, 415, 5, '2023-05-29', NULL, 1, 'ok', '2023-05-29 08:03:14'),
(74, 24, 40, 416, 5, '2023-05-29', NULL, 1, 'ok', '2023-05-29 08:11:48'),
(75, 24, 40, 417, 5, '2023-05-29', NULL, 1, 'ok', '2023-05-29 08:42:52'),
(76, 24, 40, 418, 5, '2023-05-29', NULL, 1, 'ok', '2023-05-29 08:43:29'),
(77, 24, 40, 420, 12, '2023-05-29', NULL, 1, 'ok', '2023-05-29 18:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `analytics_company`
--

CREATE TABLE `analytics_company` (
  `id` int(11) NOT NULL,
  `item` int(11) DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `analytics_department`
--

CREATE TABLE `analytics_department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `analytics_department`
--

INSERT INTO `analytics_department` (`id`, `name`, `hospital`, `updated_at`) VALUES
(1, 'Mena Saleep fffffffffff', 1, '2023-03-03 03:22:12'),
(2, 'Italian lining with beige lining', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `approve`
--

CREATE TABLE `approve` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `bool` int(11) DEFAULT NULL,
  `service_provider` int(11) DEFAULT NULL,
  `member` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `total_price` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `spent_balance` int(11) DEFAULT 0,
  `discount_percentage` varchar(255) DEFAULT NULL,
  `discount_amount` int(11) DEFAULT NULL,
  `total_before_discount` int(255) DEFAULT NULL,
  `diagnosing` text CHARACTER SET utf8 DEFAULT NULL,
  `note` text CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `insurance_company` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `approve`
--

INSERT INTO `approve` (`id`, `user`, `bool`, `service_provider`, `member`, `type`, `total_price`, `discount`, `spent_balance`, `discount_percentage`, `discount_amount`, `total_before_discount`, `diagnosing`, `note`, `date`, `company`, `insurance_company`) VALUES
(70, NULL, NULL, NULL, NULL, 'emergency', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-08-12', 10, 1),
(71, NULL, NULL, NULL, NULL, 'emergency', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-08-12', 10, 1),
(72, NULL, NULL, 4, 55555553, 'analytics', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-08-12', 10, 1),
(73, NULL, NULL, 4, 5555555, 'intensive_care', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-08-12', 10, 1),
(74, NULL, NULL, 4, 55555553, 'ray', '30.00', NULL, 0, '%10', 3, 27, 'تشخيص', 'ملاح', '2023-08-13', 10, 1),
(75, NULL, NULL, 4, 55555553, 'ray', NULL, NULL, 0, '%10', NULL, 0, NULL, NULL, '2023-08-13', 10, 1),
(76, NULL, NULL, 4, 55555553, 'ray', '30.00', NULL, 0, '%10', 3, 27, 'تشخيص', 'ملاحظات', '2023-08-13', 10, 1),
(77, NULL, NULL, 5, 55555553, 'analytics', '4100.00', NULL, 0, '%10', 410, 3690, NULL, NULL, '2023-08-13', 10, 1),
(78, NULL, NULL, 4, 55555553, 'surgery', '20.00', NULL, 0, '%10', 2, 18, NULL, NULL, '2023-08-13', 10, 1),
(79, NULL, NULL, 4, 55555553, 'emergency', '21.00', NULL, 0, '%10', 2, 19, 'GG', 'G', '2023-08-13', 10, 1),
(80, NULL, NULL, 4, 55555553, 'intensive_care', '91.00', NULL, 0, '%10', 9, 82, 'SS', 'SS', '2023-08-13', 10, 1),
(81, NULL, NULL, 4, 55555553, 'physical_therapy', '20.00', NULL, 0, '%10', 2, 18, 'WW', 'WW', '2023-08-13', 10, 1),
(82, NULL, NULL, 4, 55555553, 'quartering', '100.00', NULL, 0, '%10', 10, 90, NULL, NULL, '2023-08-13', 10, 1),
(83, NULL, NULL, 4, 55555553, 'analytics', NULL, NULL, 0, '%10', NULL, 0, NULL, NULL, '2023-08-13', 10, 1),
(84, NULL, NULL, 4, 55555553, 'ray', '20.00', NULL, 0, '%10', 2, 18, '11', '11', '2023-08-16', 10, 1),
(85, NULL, NULL, 4, 55555553, 'analytics', '10.00', NULL, 0, '%10', 1, 9, NULL, NULL, '2023-08-16', 10, 1),
(86, NULL, NULL, 3, 55555553, 'analytics', '4000.00', NULL, 0, '%10', 400, 3600, NULL, NULL, '2023-08-17', 10, 1),
(87, NULL, NULL, 3, 55555553, 'analytics', '4000.00', NULL, 0, '%10', 400, 3600, NULL, NULL, '2023-08-17', 10, 1),
(88, NULL, NULL, 3, 55555553, 'analytics', '20.00', NULL, 0, '%10', 2, 18, NULL, NULL, '2023-08-17', 10, 1),
(89, NULL, NULL, 4, 55555553, 'analytics', '4000.00', NULL, 0, '%10', 400, 3600, NULL, NULL, '2023-08-17', 10, 1),
(90, NULL, NULL, 3, 55555553, 'analytics', '4090.00', NULL, 0, '%10', 409, 4000, NULL, NULL, '2023-08-18', 10, 1),
(91, NULL, NULL, 6, 55555553, 'analytics', '4000.00', NULL, 0, '%10', 400, 3600, NULL, NULL, '2023-08-18', 10, 1),
(92, NULL, NULL, 5, 55555553, 'analytics', '4000.00', NULL, 0, '%10', 400, 3600, NULL, NULL, '2023-08-18', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `approve_public`
--

CREATE TABLE `approve_public` (
  `id` int(11) NOT NULL,
  `member` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `service_provider` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `item` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `diagnosing` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `file_number` int(11) DEFAULT NULL,
  `insurance_company` int(11) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `approve_public`
--

INSERT INTO `approve_public` (`id`, `member`, `service_provider`, `type`, `item`, `note`, `diagnosing`, `file_number`, `insurance_company`, `updated_at`, `created_at`) VALUES
(319, 'محمد احمد السيد', 'مستشفي الراعي', 'analytics', NULL, 'متعب', 'بدون', 22, 1, '2023-07-26 14:45:25', '2023-07-26 14:45:25'),
(320, 'بركات', 'مستشفي الراعي', 'intensive_care', NULL, 'متعب', 'بدون', 22, 1, '2023-07-26 14:45:25', '2023-07-26 14:45:25'),
(330, 'محمد احمد السيد', 'مستشفي الراعي', 'analytics', NULL, 'متعب', 'بدون', 22, NULL, '2023-07-26 14:46:09', '2023-07-26 14:46:09'),
(331, 'بركات', 'مستشفي الراعي', 'intensive_care', NULL, 'متعب', 'بدون', 22, NULL, '2023-07-26 14:46:09', '2023-07-26 14:46:09'),
(341, 'محمد احمد السيد', 'مستشفي الراعي', 'analytics', NULL, 'متعب', 'بدون', 23, NULL, '2023-07-26 14:58:39', '2023-07-26 14:58:39'),
(342, 'بركات', 'مستشفي الراعي', 'intensive_care', NULL, 'متعب', 'بدون', 23, NULL, '2023-07-26 14:58:39', '2023-07-26 14:58:39');

-- --------------------------------------------------------

--
-- Table structure for table `approve_service_details`
--

CREATE TABLE `approve_service_details` (
  `id` int(11) NOT NULL,
  `service` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `approve_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `approve_service_details`
--

INSERT INTO `approve_service_details` (`id`, `service`, `price`, `type`, `approve_id`) VALUES
(39, 24, 231, 'ray', 34),
(40, 24, 230, 'ray', 35),
(41, 25, 200, 'ray', 35),
(42, 5, 2000, 'surgery', 36),
(43, 2, 100, 'surgery', 36),
(44, 24, 41, 'intensive_care', 37),
(45, 11, 41, 'medical_examination', 38),
(46, 6, 33, 'medical_examination', 38),
(47, 15, 41, 'medical_examination', 39),
(48, 17, 40, 'medical_examination', 39),
(49, 24, 41, 'physical_therapy', 40),
(50, 26, 201, 'physical_therapy', 40),
(51, NULL, 0, 'surgery', 42),
(52, 24, 41, 'analytics', 43),
(53, 26, 41, 'analytics', 44),
(54, 25, 41, 'analytics', 45),
(55, NULL, 0, 'analytics', 45),
(56, 25, 40, 'analytics', 46),
(57, 25, 40, 'analytics', 47),
(58, 25, 40, 'analytics', 48),
(59, 25, 40, 'analytics', 49),
(60, 25, 40, 'analytics', 50),
(61, 25, 40, 'analytics', 51),
(62, 25, 40, 'analytics', 52),
(63, 25, 40, 'analytics', 53),
(64, 25, 40, 'analytics', 54),
(65, 25, 40, 'analytics', 55),
(66, 29, 20, 'ray', 74),
(67, 30, 10, 'ray', 74),
(68, NULL, 0, 'ray', 75),
(69, 29, 20, 'ray', 76),
(70, 30, 10, 'ray', 76),
(71, 32, 100, 'analytics', 77),
(72, 34, 4000, 'analytics', 77),
(73, 40, 10, 'surgery', 78),
(74, 46, 10, 'surgery', 78),
(75, 41, 21, 'emergency', 79),
(76, 33, 91, 'intensive_care', 80),
(77, 46, 20, 'physical_therapy', 81),
(78, 26, 100, 'quartering', 82),
(79, 30, 20, 'analytics', 83),
(80, 29, 20, 'ray', 84),
(81, 31, 10, 'analytics', 85),
(82, 34, 4000, 'analytics', 87),
(83, 30, 20, 'analytics', 88),
(84, 34, 4000, 'analytics', 89),
(85, 28, 90, 'analytics', 90),
(86, 34, 4000, 'analytics', 90),
(87, 34, 4000, 'analytics', 91),
(88, 34, 4000, 'analytics', 92);

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `name`, `balance`, `hospital`, `updated_at`) VALUES
(1, 'بنك مصر', 10000, 1, NULL),
(3, 'خزينة الصيدلية', 10000, 1, NULL),
(4, 'خزينة المستشفي 2', 10000, 1, '2022-11-28 08:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `hospital`) VALUES
(1, 'باطنـــــــة', 1),
(2, 'جـــــــــراحة', 1),
(3, 'امراض النساء', 1),
(4, 'امراض الاطفال', 1),
(5, 'امراض العيون', 1),
(6, 'امراض الجلدية', 1),
(7, 'امراض المسالك', 1),
(8, 'امراض الانف والاذن والحنجرة', 1),
(9, 'امراض العقم والمساعدة علي الانجاب', 1),
(11, 'امراض النفسية والعقلية', 1),
(12, 'امراض العظام', NULL),
(13, 'سسس', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `insurance_company` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `insurance_company`) VALUES
(1, 'A+', 1),
(2, 'A', 1),
(3, 'B+', 1),
(4, 'B', 1);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `part` int(11) DEFAULT 0,
  `start` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `end` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `balance` int(11) DEFAULT 0,
  `spent_balance` int(11) DEFAULT 0,
  `year` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `discount_percentage` int(11) DEFAULT NULL,
  `commercial_register` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tax_card` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `issuer` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `contracting_officer` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `contracting_officer_phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `insurance_company` int(11) DEFAULT NULL,
  `created` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `phone`, `address`, `count`, `part`, `start`, `end`, `total`, `balance`, `spent_balance`, `year`, `logo`, `discount_percentage`, `commercial_register`, `tax_card`, `issuer`, `contracting_officer`, `contracting_officer_phone`, `hospital`, `insurance_company`, `created`, `updated_at`) VALUES
(10, 'شركة النصر', 'naser@gmail.com', '⁦505580553⁩', '4545', 0, 0, '2023-06-02', '2024-06-02', 0, 11000, 23018, NULL, NULL, NULL, '4444444', NULL, 'مصر', 'مينا', '11111111', NULL, 1, '9, 6, 2023', '2023-08-18 16:44:07'),
(18, 'Mena Saleep', 'menaspoon73@gmail.com', '⁦505580553⁩', 'alex', 0, 0, NULL, NULL, 0, 14000, 0, NULL, NULL, NULL, '4444444', '4444444', 'مصر', 'ميت', '11111111', NULL, 1, '25, 7, 2023', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `id` int(11) NOT NULL,
  `start_date` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `end_date` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `annual_ceiling` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `number_of_subscribers` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `singles_premium` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `class` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `annual_capita` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `degree_of_residence` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_collection_rate` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `medical_network` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `administrative_expenses` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `issuance_expenses` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `network_coverage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `medical_examinations_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `medical_examinations_count` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `medical_examinations_coverage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `medical_examinations_discount` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `medical_examinations_collection` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `analysis_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `analysis_count` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `analysis_coverage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `analysis_discount` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `analysis_collection` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ray_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ray_count` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ray_coverage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ray_discount` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ray_collection` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `surgery_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `surgery_count` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `surgery_coverage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `surgery_discount` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `surgery_collection` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `physical_therapy_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `physical_therapy_count` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `physical_therapy_coverage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `physical_therapy_discount` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `physical_therapy_collection` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `emergency_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `emergency_count` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `emergency_coverage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `emergency_discount` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `emergency_collection` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `intensive_are_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `intensive_are_count` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `intensive_are_discount` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `intensive_are_coverage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `intensive_are_collection` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `quartering_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `quartering_count` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `quartering_coverage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `quartering_discount` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `quartering_collection` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pharmacy_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pharmacy_discount` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pharmacy_coverage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pharmacy_collection` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pharmacy_chronic_treatment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `insurance_company` int(11) NOT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`id`, `start_date`, `end_date`, `annual_ceiling`, `number_of_subscribers`, `singles_premium`, `class`, `annual_capita`, `degree_of_residence`, `hospital_collection_rate`, `medical_network`, `administrative_expenses`, `issuance_expenses`, `network_coverage`, `medical_examinations_type`, `medical_examinations_count`, `medical_examinations_coverage`, `medical_examinations_discount`, `medical_examinations_collection`, `analysis_type`, `analysis_count`, `analysis_coverage`, `analysis_discount`, `analysis_collection`, `ray_type`, `ray_count`, `ray_coverage`, `ray_discount`, `ray_collection`, `surgery_type`, `surgery_count`, `surgery_coverage`, `surgery_discount`, `surgery_collection`, `physical_therapy_type`, `physical_therapy_count`, `physical_therapy_coverage`, `physical_therapy_discount`, `physical_therapy_collection`, `emergency_type`, `emergency_count`, `emergency_coverage`, `emergency_discount`, `emergency_collection`, `intensive_are_type`, `intensive_are_count`, `intensive_are_discount`, `intensive_are_coverage`, `intensive_are_collection`, `quartering_type`, `quartering_count`, `quartering_coverage`, `quartering_discount`, `quartering_collection`, `pharmacy_type`, `pharmacy_discount`, `pharmacy_coverage`, `pharmacy_collection`, `pharmacy_chronic_treatment`, `company`, `insurance_company`, `updated_at`) VALUES
(2, '2023-06-01', '2023-06-30', NULL, '100', '11', 'A+', '10000', NULL, NULL, 'A', NULL, NULL, NULL, NULL, '20', NULL, '10', '11', 'directly', '10', 'not_coverage', '100', '11', 'directly', '4', 'not_coverage', '10', '33', 'not_directly', '23', 'coverage', '12', '30', 'directly', '100', 'not_coverage', '40', '11', 'directly', '100', 'not_coverage', '23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 1, '2023-06-13 15:39:16'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 1, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 1, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `corporate_premiums`
--

CREATE TABLE `corporate_premiums` (
  `id` int(11) NOT NULL,
  `company` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `agent` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `corporate_premiums`
--

INSERT INTO `corporate_premiums` (`id`, `company`, `hospital`, `money`, `agent`, `created`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, NULL, 10000, 'احمد', '2022-11-23', NULL),
(3, 1, NULL, 1000, 'احمد السيد', '2022-11-23', NULL),
(4, 1, NULL, 1000, 'احمد السيد', '2022-11-23', NULL),
(5, 1, NULL, 200, 'احمد السيد', '2022-11-23', NULL),
(6, 10, NULL, 100, 'احمد السيد', '2023-07-18', NULL),
(7, 10, NULL, 100, 'احمد السيد', '2023-07-18', NULL),
(8, 10, NULL, 50, 'احمد', '2023-07-18', NULL),
(9, 10, NULL, 1000, 'احمد السيد', '2023-08-16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `degree_of_residence`
--

CREATE TABLE `degree_of_residence` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `insurance_company` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `degree_of_residence`
--

INSERT INTO `degree_of_residence` (`id`, `name`, `insurance_company`) VALUES
(1, 'جناح', 1),
(2, 'جناح للمرافق', 1);

-- --------------------------------------------------------

--
-- Table structure for table `emergency`
--

CREATE TABLE `emergency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `service_provider` int(11) DEFAULT NULL,
  `insurance_company` int(11) DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emergency`
--

INSERT INTO `emergency` (`id`, `name`, `price`, `category`, `service_provider`, `insurance_company`, `updated_at`, `created_at`) VALUES
(34, 'طوارئ 1', 0, 1, NULL, 1, '2023-07-27 17:51:52', '2023-07-27 17:51:52'),
(35, 'طوارئ \r\n 2', 20, 1, NULL, 1, '2023-07-27 17:51:52', '2023-07-27 17:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_approve_company`
--

CREATE TABLE `emergency_approve_company` (
  `id` int(11) NOT NULL,
  `item` int(11) DEFAULT NULL,
  `precent` int(11) NOT NULL DEFAULT 100,
  `category` int(11) DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emergency_approve_company`
--

INSERT INTO `emergency_approve_company` (`id`, `item`, `precent`, `category`, `company`, `hospital`) VALUES
(1, 25, 100, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `emergency_booking`
--

CREATE TABLE `emergency_booking` (
  `id` int(11) NOT NULL,
  `medical_examination` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `name` int(11) DEFAULT NULL,
  `doctor` int(11) NOT NULL DEFAULT 0,
  `created` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emergency_booking`
--

INSERT INTO `emergency_booking` (`id`, `medical_examination`, `price`, `name`, `doctor`, `created`, `time`, `hospital`, `status`, `updated_at`) VALUES
(24, 25, NULL, 348, 0, '2023-05-22', NULL, 1, 'ok', NULL),
(25, 25, NULL, 349, 5, '2023-05-22', NULL, 1, 'ok', '2023-05-22 06:01:20'),
(26, 25, NULL, 395, 1, '2023-05-25', NULL, 1, 'ok', '2023-05-25 19:05:56'),
(27, 25, 300, 403, 1, '2023-05-29', NULL, 1, 'ok', '2023-05-29 05:06:13'),
(28, 25, 300, 406, 12, '2023-05-29', NULL, 1, 'ok', '2023-05-29 06:16:23'),
(29, 25, 300, 413, 5, '2023-05-29', NULL, 1, 'ok', '2023-05-29 07:35:16'),
(30, 25, 300, 414, 6, '2023-05-29', NULL, 1, 'ok', '2023-05-29 07:55:22'),
(31, 25, 300, 415, 14, '2023-05-29', NULL, 1, 'ok', '2023-05-29 08:03:14'),
(32, 25, 300, 416, 17, '2023-05-29', NULL, 1, 'ok', '2023-05-29 08:11:48'),
(33, 25, 300, 417, 17, '2023-05-29', NULL, 1, 'ok', '2023-05-29 08:42:52'),
(34, 25, 300, 418, 17, '2023-05-29', NULL, 1, 'ok', '2023-05-29 08:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_department`
--

CREATE TABLE `emergency_department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emergency_department`
--

INSERT INTO `emergency_department` (`id`, `name`, `hospital`, `updated_at`) VALUES
(1, 'طوارئ الاطفال', 1, '2023-05-07 08:41:29'),
(5, 'طوارئ الولادة', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `nationality` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `blood_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `card_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `relative_relation` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_of_birth` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `insurance_number` int(11) DEFAULT 0,
  `balance` int(11) NOT NULL DEFAULT 0,
  `remaining_amount` int(11) DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `insurance_company` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `created` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `phone`, `email`, `address`, `sex`, `nationality`, `blood_type`, `card_id`, `relative_relation`, `date_of_birth`, `picture`, `insurance_number`, `balance`, `remaining_amount`, `company`, `insurance_company`, `hospital`, `created`, `updated_at`, `created_at`) VALUES
(4, 'محمد احمد السيد', '22', 'menaspoon73@gmail.com', 'alex', 'انثي', 'ليبي', 'A-', '44444444444444444', 'wife', '2022-11-04', NULL, 55555553, 4770, -21488, 10, 1, 1, NULL, '2023-08-18 16:44:07', NULL),
(5, 'بركات', '2233445544', 'menaspoon73@gmail.com', 'alex', 'انثي', 'مصري', 'AB+', 'dddddddddddddddd', 'girl', '2022-11-25', NULL, 5555555, 1000, 1000, 10, 1, 1, NULL, '2023-05-29 18:46:48', NULL);

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
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `subscription` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `notifications` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `discount_percentage` int(11) DEFAULT NULL,
  `start` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `end` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `neighborhood` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `medical_examinations_type` int(255) DEFAULT NULL,
  `medical_examinations_discount` int(255) DEFAULT NULL,
  `medical_examinations_count` int(255) DEFAULT NULL,
  `medical_examinations_coverage` int(255) DEFAULT NULL,
  `medical_examinations_collection` int(255) DEFAULT NULL,
  `analysis_type` int(255) DEFAULT NULL,
  `analysis_discount` int(255) DEFAULT NULL,
  `analysis_count` int(255) DEFAULT NULL,
  `analysis_collection` int(255) DEFAULT NULL,
  `ray_type` int(255) DEFAULT NULL,
  `ray_discount` int(255) DEFAULT NULL,
  `ray_count` int(255) DEFAULT NULL,
  `ray_collection` int(255) DEFAULT NULL,
  `physical_therapy_type` int(255) DEFAULT NULL,
  `physical_therapy_discount` int(255) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `created` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `name`, `email`, `phone`, `logo`, `subscription`, `notifications`, `discount_percentage`, `start`, `end`, `city`, `neighborhood`, `address`, `medical_examinations_type`, `medical_examinations_discount`, `medical_examinations_count`, `medical_examinations_coverage`, `medical_examinations_collection`, `analysis_type`, `analysis_discount`, `analysis_count`, `analysis_collection`, `ray_type`, `ray_discount`, `ray_count`, `ray_collection`, `physical_therapy_type`, `physical_therapy_discount`, `hospital`, `created`, `updated_at`) VALUES
(1, 'مستشفي الحياة', 'menaspooggn73@gmail.com', '0100000000', '1691934551.png', 'false', '2022-11-09', NULL, '2022-11-08', '2022-11-10', 'alex', '11', 'ليبيا - طرابلس', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3-4-2022', '2023-08-13 13:49:11'),
(3, 'مستشفي السلام', 'menaspoon73@gmail.com', '⁦505580553⁩', NULL, NULL, NULL, NULL, NULL, NULL, 'alex', NULL, 'alex', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-05 09:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `intensive_care`
--

CREATE TABLE `intensive_care` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `insurance_company` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `service_provider` int(11) DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `intensive_care`
--

INSERT INTO `intensive_care` (`id`, `name`, `price`, `category`, `insurance_company`, `service_provider`, `updated_at`, `created_at`) VALUES
(24, 'عناية', 40, 1, '1', 1, NULL, NULL),
(25, 'عناية مركزة', 100, 1, '1', NULL, '2023-07-28 05:39:58', '2023-07-28 05:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `intensive_care_approve_company`
--

CREATE TABLE `intensive_care_approve_company` (
  `id` int(11) NOT NULL,
  `item` int(11) DEFAULT NULL,
  `precent` int(11) DEFAULT 100,
  `company` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `intensive_care_approve_company`
--

INSERT INTO `intensive_care_approve_company` (`id`, `item`, `precent`, `company`, `hospital`, `updated_at`) VALUES
(5, 24, 100, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `intensive_care_booking`
--

CREATE TABLE `intensive_care_booking` (
  `id` int(11) NOT NULL,
  `medical_examination` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `name` int(11) DEFAULT NULL,
  `doctor` int(11) DEFAULT 0,
  `created` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `intensive_care_booking`
--

INSERT INTO `intensive_care_booking` (`id`, `medical_examination`, `price`, `name`, `doctor`, `created`, `time`, `hospital`, `status`, `updated_at`) VALUES
(29, 24, 40, 398, 5, '2023-05-25', NULL, 1, 'ok', '2023-05-25 20:18:53'),
(30, 24, 40, 399, 5, '2023-05-25', NULL, 1, 'ok', '2023-05-25 20:37:37'),
(31, 24, 40, 400, 5, '2023-05-25', NULL, 1, 'ok', '2023-05-25 20:44:16'),
(32, 24, 40, 406, 14, '2023-05-29', NULL, 1, 'ok', '2023-05-29 06:16:23'),
(33, 24, 40, 414, 5, '2023-05-29', NULL, 1, 'ok', '2023-05-29 07:55:22'),
(34, 24, 40, 415, 18, '2023-05-29', NULL, 1, 'ok', '2023-05-29 08:03:14'),
(35, 24, 40, 416, 16, '2023-05-29', NULL, 1, 'ok', '2023-05-29 08:11:48'),
(36, 24, 40, 417, 16, '2023-05-29', NULL, 1, 'ok', '2023-05-29 08:42:52'),
(37, 24, 40, 418, 16, '2023-05-29', NULL, 1, 'ok', '2023-05-29 08:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `intensive_care_department`
--

CREATE TABLE `intensive_care_department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `intensive_care_department`
--

INSERT INTO `intensive_care_department` (`id`, `name`, `hospital`, `updated_at`) VALUES
(1, 'Mena Saleep', 1, '2023-05-08 05:05:49'),
(3, 'مينا', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_buying_medicines`
--

CREATE TABLE `invoice_buying_medicines` (
  `id` int(11) NOT NULL,
  `invoice_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `operation_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `supplier` int(255) DEFAULT NULL,
  `discount` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `paid_up` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `total_due` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created` varchar(255) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_buying_medicines`
--

INSERT INTO `invoice_buying_medicines` (`id`, `invoice_type`, `operation_type`, `supplier`, `discount`, `paid_up`, `total_due`, `created`, `hospital`, `user_id`, `updated_at`) VALUES
(15, 'purchases', 'مدفوع', NULL, NULL, NULL, '1050.00', '22-2-2015', 1, '1', NULL),
(16, 'purchases', 'مدفوع', NULL, NULL, NULL, '1050.00', NULL, 1, '1', NULL),
(17, 'purchases', 'مدفوع', NULL, NULL, NULL, '1050.00', NULL, 1, '1', NULL),
(18, 'purchases', 'مدفوع', NULL, NULL, NULL, '1050.00', NULL, 1, '1', NULL),
(19, 'purchases', 'مدفوع', NULL, NULL, NULL, '1050.00', NULL, 1, '1', NULL),
(20, 'purchases', 'اجل', NULL, NULL, NULL, '127.05', NULL, 1, '1', NULL),
(21, 'purchases', 'اجل', NULL, NULL, NULL, '127.05', NULL, 1, '1', NULL),
(22, 'purchases', 'اجل', NULL, NULL, NULL, '127.05', NULL, 1, '1', NULL),
(23, 'purchases', '0', NULL, NULL, NULL, '10500.00', NULL, 1, '1', NULL),
(24, 'purchases', 'اجل', NULL, NULL, NULL, '127.05', NULL, 1, '1', NULL),
(25, 'purchases', 'اجل', NULL, NULL, NULL, '127.05', NULL, 1, '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detales_buying_medicines`
--

CREATE TABLE `invoice_detales_buying_medicines` (
  `id` int(11) NOT NULL,
  `product` varchar(255) DEFAULT NULL,
  `count` varchar(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_detales_buying_medicines`
--

INSERT INTO `invoice_detales_buying_medicines` (`id`, `product`, `count`, `price`, `invoice_id`, `hospital`) VALUES
(1, '2', '10', 10, 5, 1),
(2, '2', '10', 10, 6, 1),
(3, '2', '10', 10, 7, 1),
(4, '2', '10', 10, 8, 1),
(5, '2', '10', 10, 9, 1),
(6, '2', '10', 10, 10, 1),
(7, '2', '10', 10, 11, 1),
(8, '2', '10', 10, 12, 1),
(9, '2', '10', 10, 13, 1),
(10, '2', '10', 10, 14, 1),
(11, '3', '10', 10, 15, 1),
(12, '4', '10', 90, 15, 1),
(13, '3', '10', 10, 16, 1),
(14, '4', '10', 90, 16, 1),
(15, '3', '10', 10, 17, 1),
(16, '4', '10', 90, 17, 1),
(17, '3', '10', 10, 18, 1),
(18, '4', '10', 90, 18, 1),
(19, '3', '10', 10, 19, 1),
(20, '4', '10', 90, 19, 1),
(21, '2', '11', 11, 20, 1),
(22, '2', '11', 11, 21, 1),
(23, '2', '11', 11, 22, 1),
(24, '2', '1000', 10, 23, 1),
(25, '2', '11', 11, 24, 1),
(26, '2', '11', 11, 25, 1),
(27, '2', '11', 11, 26, 1),
(28, '2', '11', 11, 27, 1),
(29, '2', '11', 11, 28, 1);

-- --------------------------------------------------------

--
-- Table structure for table `medical_examination`
--

CREATE TABLE `medical_examination` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `insurance_company` int(11) DEFAULT NULL,
  `service_provider` int(11) DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medical_examination`
--

INSERT INTO `medical_examination` (`id`, `name`, `price`, `category`, `insurance_company`, `service_provider`, `updated_at`, `created_at`) VALUES
(1, 'امراض السكر', 40, 1, 0, 1, '2022-11-04 19:44:24', NULL),
(2, 'امراض ضغط الدم', 40, 1, 0, 1, NULL, NULL),
(3, 'امراض القلب والشرايين', 40, 1, 0, 1, NULL, NULL),
(4, 'امراض السرطان والاورام بانواعها', 40, 1, 0, 1, NULL, NULL),
(5, 'امراض الجهاز التناسلي', 40, 1, 0, 1, NULL, NULL),
(6, 'امراض الكلي', 40, 1, 0, 1, '2022-11-04 19:44:56', NULL),
(7, 'مرض الوباء الكبدي', 200, 1, 0, 1, NULL, NULL),
(8, 'اصابات العمل الخطيرة', 40, 2, 0, 1, NULL, NULL),
(9, 'الحوادث الخطيرة', 40, 2, 0, 1, NULL, NULL),
(10, 'حالات الاغماء لاي سبب', 40, 2, 0, 1, NULL, NULL),
(11, 'حالات العناية بالمواليد', 40, 2, 0, 1, NULL, NULL),
(12, 'امراض النساء', 40, 3, 0, 1, NULL, NULL),
(13, 'امراض الاطفال', 40, 4, 0, 1, NULL, NULL),
(14, 'عمليات الليزك مغطاة حتي 80%', 40, 5, 0, 1, NULL, NULL),
(15, 'امراض الجلدية', 40, 6, 0, 1, NULL, NULL),
(16, 'امراض المسالك', 40, 7, 0, 1, NULL, NULL),
(17, 'امراض الانف والاذن والحنجرة', 40, 8, 0, 1, NULL, NULL),
(18, 'امراض العقم والمساعدة علي الانجاب', 40, 9, 0, 1, NULL, NULL),
(19, 'امراض النفسية والعقلية', 40, 11, 0, 1, NULL, NULL),
(20, 'امراض العظام', 40, 12, 0, 1, NULL, NULL),
(21, 'Black Jacquard Taffeta Abaya', 90, 1, 1, NULL, NULL, NULL),
(22, 'مينا', 100, 1, 1, 3, NULL, NULL),
(23, 'اسم الفحص', 0, 1, 1, 3, '2023-07-29 07:41:44', '2023-07-29 07:41:44'),
(24, 'تحليل دم', 20, 1, 1, 3, '2023-07-29 07:41:44', '2023-07-29 07:41:44'),
(25, 'تحليل بول', 10, 1, 1, 3, '2023-07-29 07:41:44', '2023-07-29 07:41:44'),
(26, 'اسم الفحص', 0, 1, 1, 3, '2023-07-29 07:42:06', '2023-07-29 07:42:06'),
(27, 'تحليل دم', 20, 1, 1, 3, '2023-07-29 07:42:06', '2023-07-29 07:42:06'),
(28, 'تحليل بول', 10, 1, 1, 3, '2023-07-29 07:42:06', '2023-07-29 07:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `medical_examination_approve_company`
--

CREATE TABLE `medical_examination_approve_company` (
  `id` int(11) NOT NULL,
  `item` int(11) DEFAULT NULL,
  `precent` int(11) DEFAULT 100,
  `company` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medical_examination_approve_company`
--

INSERT INTO `medical_examination_approve_company` (`id`, `item`, `precent`, `company`, `hospital`, `updated_at`) VALUES
(6, 2, 100, 1, 1, NULL),
(7, 7, 90, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medical_examination_booking`
--

CREATE TABLE `medical_examination_booking` (
  `id` int(11) NOT NULL,
  `name` int(11) DEFAULT NULL,
  `medical_examination` int(11) DEFAULT NULL,
  `doctor` int(11) DEFAULT 0,
  `price` int(11) DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `key` int(11) DEFAULT NULL,
  `created` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medical_examination_booking`
--

INSERT INTO `medical_examination_booking` (`id`, `name`, `medical_examination`, `doctor`, `price`, `status`, `hospital`, `key`, `created`, `updated_at`) VALUES
(396, 387, 1, 1, 40, 'not', 1, NULL, '2023-05-23', '2023-05-23 09:23:03'),
(397, 388, 1, 0, 40, 'not', 1, NULL, '2023-05-23', '2023-05-23 09:23:43'),
(398, 394, 2, 1, 40, 'ok', 1, NULL, '2023-05-25', '2023-05-25 17:37:58'),
(399, 406, 1, 1, 40, 'not', 1, NULL, '2023-05-29', '2023-05-29 06:16:23'),
(400, 407, 2, 1, 40, 'ok', 1, NULL, '2023-05-29', '2023-05-29 06:35:09'),
(401, 408, 1, 1, 40, 'not', 1, NULL, '2023-05-29', '2023-05-29 07:10:57'),
(402, 409, 1, 1, 40, 'not', 1, NULL, '2023-05-29', '2023-05-29 07:16:33'),
(403, 410, 1, 1, 40, 'not', 1, NULL, '2023-05-29', '2023-05-29 07:19:11'),
(404, 411, 1, 1, 40, 'not', 1, NULL, '2023-05-29', '2023-05-29 07:19:52'),
(405, 412, 2, 1, 40, 'ok', 1, NULL, '2023-05-29', '2023-05-29 07:31:10'),
(406, 413, 1, 1, 40, 'not', 1, NULL, '2023-05-29', '2023-05-29 07:35:16'),
(407, 414, 3, 12, 40, 'not', 1, NULL, '2023-05-29', '2023-05-29 07:55:22'),
(408, 414, 2, 5, 40, 'ok', 1, NULL, '2023-05-29', '2023-05-29 07:55:22'),
(409, 415, 2, 5, 40, 'ok', 1, NULL, '2023-05-29', '2023-05-29 08:03:14'),
(410, 416, 2, 1, 40, 'ok', 1, NULL, '2023-05-29', '2023-05-29 08:11:48'),
(411, 417, 2, 1, 40, 'ok', 1, NULL, '2023-05-29', '2023-05-29 08:42:52'),
(412, 418, 2, 1, 40, 'ok', 1, NULL, '2023-05-29', '2023-05-29 08:43:29'),
(413, 420, 2, 5, 40, 'ok', 1, NULL, '2023-05-29', '2023-05-29 18:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `medical_network`
--

CREATE TABLE `medical_network` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `insurance_company` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medical_network`
--

INSERT INTO `medical_network` (`id`, `name`, `insurance_company`) VALUES
(1, 'A+', 1),
(2, 'A', 1),
(3, 'B', 1),
(4, 'C', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messenger`
--

CREATE TABLE `messenger` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_view` int(11) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `created` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `sender` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `message` text CHARACTER SET utf8 NOT NULL,
  `user_view` int(255) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `created` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `sender`, `user`, `view`, `message`, `user_view`, `hospital`, `company`, `created`, `updated_at`) VALUES
(1, NULL, 1, 1, 'تم حجز كشف Admin للمريض  في توقيت 16-11-2022, 3:41 pm', NULL, NULL, NULL, '16, 11, 2022', '2022-11-16 16:14:23'),
(2, NULL, 1, 1, 'تم حجز كشف Black Jacquard Taffeta Abaya rrrr للمريض  في توقيت 16-11-2022, 3:44 pm', NULL, NULL, NULL, '16, 11, 2022', '2022-11-16 16:22:03'),
(3, NULL, 1, 1, 'تم حجز كشف Black Jacquard Taffeta Abaya للمريض  في توقيت 16-11-2022, 3:56 pm', NULL, NULL, NULL, '16, 11, 2022', '2022-11-16 16:22:03'),
(4, NULL, 8, 0, 'تم حجز كشف امراض ضغط الدم للمريض  في توقيت 18-11-2022, 6:57 pm', NULL, NULL, NULL, '18, 11, 2022', NULL),
(5, NULL, 8, 0, 'تم حجز كشف امراض القلب والشرايين للمريض  في توقيت 18-11-2022, 7:03 pm', NULL, NULL, NULL, '18, 11, 2022', NULL),
(6, NULL, 8, 0, 'تم حجز كشف امراض ضغط الدم للمريض  في توقيت 18-11-2022, 7:04 pm', NULL, NULL, NULL, '18, 11, 2022', NULL),
(7, NULL, 8, 0, 'تم حجز كشف مرض الوباء الكبدي للمريض  في توقيت 18-11-2022, 7:11 pm', NULL, NULL, NULL, '18, 11, 2022', NULL),
(8, NULL, 8, 0, 'تم حجز كشف امراض القلب والشرايين للمريض  في توقيت 18-11-2022, 7:20 pm', NULL, NULL, NULL, '18, 11, 2022', NULL),
(9, NULL, 8, 0, 'تم حجز كشف امراض السكر للمريض  في توقيت 19-11-2022, 6:56 am', NULL, NULL, NULL, '19, 11, 2022', NULL),
(10, NULL, 8, 0, 'تم حجز كشف امراض ضغط الدم للمريض  في توقيت 19-11-2022, 6:57 am', NULL, NULL, NULL, '19, 11, 2022', NULL),
(11, NULL, 8, 0, 'تم حجز كشف امراض السرطان والاورام بانواعها للمريض  في توقيت 19-11-2022, 6:59 am', NULL, NULL, NULL, '19, 11, 2022', NULL),
(12, NULL, 8, 0, 'تم حجز كشف امراض ضغط الدم للمريض  في توقيت 19-11-2022, 7:06 am', NULL, NULL, NULL, '19, 11, 2022', NULL),
(13, NULL, 8, 0, 'تم حجز كشف امراض السرطان والاورام بانواعها للمريض  في توقيت 19-11-2022, 7:06 am', NULL, NULL, NULL, '19, 11, 2022', NULL),
(14, NULL, 8, 0, 'تم حجز كشف امراض القلب والشرايين للمريض  في توقيت 19-11-2022, 7:08 am', NULL, NULL, NULL, '19, 11, 2022', NULL),
(15, NULL, 8, 0, 'تم حجز كشف حالات العناية بالمواليد للمريض  في توقيت 19-11-2022, 7:11 am', NULL, NULL, NULL, '19, 11, 2022', NULL),
(16, NULL, 8, 0, 'تم حجز كشف امراض السرطان والاورام بانواعها للمريض  في توقيت 19-11-2022, 6:28 pm', NULL, NULL, NULL, '19, 11, 2022', NULL),
(17, NULL, 8, 0, 'تم حجز كشف امراض ضغط الدم للمريض  في توقيت 20-11-2022, 8:37 am', NULL, NULL, NULL, '20, 11, 2022', NULL),
(18, NULL, 8, 0, 'تم حجز كشف امراض ضغط الدم للمريض  في توقيت 20-11-2022, 4:30 pm', NULL, NULL, NULL, '20, 11, 2022', NULL),
(19, NULL, 8, 0, 'تم حجز كشف امراض ضغط الدم للمريض  في توقيت 21-11-2022, 7:19 am', NULL, NULL, NULL, '21, 11, 2022', NULL),
(20, NULL, 8, 0, 'تم حجز كشف امراض ضغط الدم للمريض  في توقيت 21-11-2022, 7:19 am', NULL, NULL, NULL, '21, 11, 2022', NULL),
(21, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '21-11-2022, 9:41 am', NULL),
(22, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '21-11-2022, 9:41 am', NULL),
(23, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 9:02 am', NULL),
(24, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 9:03 am', NULL),
(25, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 9:04 am', NULL),
(26, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 9:04 am', NULL),
(27, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 9:05 am', NULL),
(28, NULL, 8, 0, '', NULL, NULL, NULL, '22, 11, 2022', NULL),
(29, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 9:17 am', NULL),
(30, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 9:18 am', NULL),
(31, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 9:19 am', NULL),
(32, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 9:19 am', NULL),
(33, NULL, 8, 0, '', NULL, NULL, NULL, '22, 11, 2022', NULL),
(34, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 9:19 am', NULL),
(35, NULL, 8, 0, '', NULL, NULL, NULL, '22, 11, 2022', NULL),
(36, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 9:20 am', NULL),
(37, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 1:36 pm', NULL),
(38, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 3:15 pm', NULL),
(39, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 3:16 pm', NULL),
(40, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 3:17 pm', NULL),
(41, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 3:34 pm', NULL),
(42, NULL, 8, 0, '', NULL, NULL, NULL, '22, 11, 2022', NULL),
(43, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 3:34 pm', NULL),
(44, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 3:35 pm', NULL),
(45, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 3:35 pm', NULL),
(46, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 3:37 pm', NULL),
(47, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 3:37 pm', NULL),
(48, NULL, 8, 0, '', NULL, NULL, NULL, '22, 11, 2022', NULL),
(49, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 3:37 pm', NULL),
(50, NULL, 8, 0, '', NULL, NULL, NULL, '22, 11, 2022', NULL),
(51, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 3:38 pm', NULL),
(52, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 3:39 pm', NULL),
(53, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 5:26 pm', NULL),
(54, NULL, 8, 0, '', NULL, NULL, NULL, '22, 11, 2022', NULL),
(55, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 5:27 pm', NULL),
(56, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 5:28 pm', NULL),
(57, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 5:28 pm', NULL),
(58, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 5:29 pm', NULL),
(59, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 5:29 pm', NULL),
(60, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '22-11-2022, 5:30 pm', NULL),
(61, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:31 pm', NULL),
(62, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:35 pm', NULL),
(63, NULL, 8, 0, '', NULL, NULL, NULL, '23, 11, 2022', NULL),
(64, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:36 pm', NULL),
(65, NULL, 8, 0, '', NULL, NULL, NULL, '23, 11, 2022', NULL),
(66, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:37 pm', NULL),
(67, NULL, 8, 0, '', NULL, NULL, NULL, '23, 11, 2022', NULL),
(68, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:37 pm', NULL),
(69, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:39 pm', NULL),
(70, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:41 pm', NULL),
(71, NULL, 8, 0, '', NULL, NULL, NULL, '23, 11, 2022', NULL),
(72, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:41 pm', NULL),
(73, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:42 pm', NULL),
(74, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:42 pm', NULL),
(75, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:43 pm', NULL),
(76, NULL, 8, 0, '', NULL, NULL, NULL, '23, 11, 2022', NULL),
(77, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:43 pm', NULL),
(78, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:44 pm', NULL),
(79, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:44 pm', NULL),
(80, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:48 pm', NULL),
(81, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:48 pm', NULL),
(82, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:49 pm', NULL),
(83, NULL, 8, 0, '', NULL, NULL, NULL, '23, 11, 2022', NULL),
(84, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:49 pm', NULL),
(85, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:50 pm', NULL),
(86, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:50 pm', NULL),
(87, NULL, 8, 0, '', NULL, NULL, NULL, '23, 11, 2022', NULL),
(88, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:51 pm', NULL),
(89, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:51 pm', NULL),
(90, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 2:54 pm', NULL),
(91, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 4:24 pm', NULL),
(92, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '23-11-2022, 5:39 pm', NULL),
(93, NULL, 8, 0, '', NULL, NULL, NULL, '23, 11, 2022', NULL),
(94, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>960</strong>', NULL, 1, NULL, '23-11-2022, 5:39 pm', NULL),
(95, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>960</strong>', NULL, 1, NULL, '23-11-2022, 5:54 pm', NULL),
(96, NULL, 8, 0, '', NULL, NULL, NULL, '23, 11, 2022', NULL),
(97, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>920</strong>', NULL, 1, NULL, '23-11-2022, 5:57 pm', NULL),
(98, NULL, 8, 0, '', NULL, NULL, NULL, '23, 11, 2022', NULL),
(99, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>880</strong>', NULL, 1, NULL, '23-11-2022, 5:57 pm', NULL),
(100, NULL, 8, 0, '', NULL, NULL, NULL, '23, 11, 2022', NULL),
(101, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>840</strong>', NULL, 1, NULL, '23-11-2022, 5:58 pm', NULL),
(102, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>840</strong>', NULL, 1, NULL, '23-11-2022, 5:59 pm', NULL),
(103, NULL, 8, 0, '', NULL, NULL, NULL, '23, 11, 2022', NULL),
(104, NULL, 8, 0, '', NULL, NULL, NULL, '23, 11, 2022', NULL),
(105, NULL, 8, 0, '', NULL, NULL, NULL, '23, 11, 2022', NULL),
(106, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>720</strong>', NULL, 1, NULL, '24-11-2022, 2:39 pm', NULL),
(107, NULL, 8, 0, '', NULL, NULL, NULL, '24, 11, 2022', NULL),
(108, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>680</strong>', NULL, 1, NULL, '24-11-2022, 2:40 pm', NULL),
(109, NULL, 8, 0, '', NULL, NULL, NULL, '24, 11, 2022', NULL),
(110, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>640</strong>', NULL, 1, NULL, '24-11-2022, 2:40 pm', NULL),
(111, NULL, 8, 0, '', NULL, NULL, NULL, '24, 11, 2022', NULL),
(112, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>600</strong>', NULL, 1, NULL, '24-11-2022, 2:42 pm', NULL),
(113, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>600</strong>', NULL, 1, NULL, '25-11-2022, 7:07 am', NULL),
(114, NULL, 8, 0, '', NULL, NULL, NULL, '25, 11, 2022', NULL),
(115, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>560</strong>', NULL, 1, NULL, '25-11-2022, 7:07 am', NULL),
(116, NULL, 8, 0, '', NULL, NULL, NULL, '25, 11, 2022', NULL),
(117, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>520</strong>', NULL, 1, NULL, '25-11-2022, 7:08 am', NULL),
(118, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>520</strong>', NULL, 1, NULL, '25-11-2022, 7:17 am', NULL),
(119, NULL, 8, 0, '', NULL, NULL, NULL, '25, 11, 2022', NULL),
(120, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>480</strong>', NULL, 1, NULL, '25-11-2022, 7:20 am', NULL),
(121, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>480</strong>', NULL, 1, NULL, '25-11-2022, 7:39 am', NULL),
(122, NULL, 8, 0, '', NULL, NULL, NULL, '25, 11, 2022', NULL),
(123, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>400</strong>', NULL, 1, NULL, '25-11-2022, 7:40 am', NULL),
(124, NULL, 8, 0, '', NULL, NULL, NULL, '25, 11, 2022', NULL),
(125, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>360</strong>', NULL, 1, NULL, '25-11-2022, 7:40 am', NULL),
(126, NULL, 8, 0, '', NULL, NULL, NULL, '25, 11, 2022', NULL),
(127, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>320</strong>', NULL, 1, NULL, '25-11-2022, 8:59 am', NULL),
(128, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>320</strong>', NULL, 1, NULL, '25-11-2022, 9:00 am', NULL),
(129, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>320</strong>', NULL, 1, NULL, '26-11-2022, 9:30 am', NULL),
(130, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>320</strong>', NULL, 1, NULL, '26-11-2022, 9:35 am', NULL),
(131, NULL, 8, 0, '', NULL, NULL, NULL, '26, 11, 2022', NULL),
(132, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>280</strong>', NULL, 1, NULL, '26-11-2022, 9:35 am', NULL),
(133, NULL, 8, 0, '', NULL, NULL, NULL, '26, 11, 2022', NULL),
(134, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>240</strong>', NULL, 1, NULL, '26-11-2022, 9:36 am', NULL),
(135, NULL, 8, 0, '', NULL, NULL, NULL, '26, 11, 2022', NULL),
(136, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>200</strong>', NULL, 1, NULL, '26-11-2022, 9:39 am', NULL),
(137, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>200</strong>', NULL, 1, NULL, '27-11-2022, 6:06 am', NULL),
(138, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>200</strong>', NULL, 1, NULL, '27-11-2022, 9:19 am', NULL),
(139, NULL, 8, 0, '', NULL, NULL, NULL, '27, 11, 2022', NULL),
(140, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>160</strong>', NULL, 1, NULL, '27-11-2022, 9:20 am', NULL),
(141, NULL, 8, 0, '', NULL, NULL, NULL, '27, 11, 2022', NULL),
(142, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>120</strong>', NULL, 1, NULL, '27-11-2022, 9:20 am', NULL),
(143, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>120</strong>', NULL, 1, NULL, '27-11-2022, 10:00 am', NULL),
(144, NULL, 8, 0, '', NULL, NULL, NULL, '27, 11, 2022', NULL),
(145, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>80</strong>', NULL, 1, NULL, '27-11-2022, 10:00 am', NULL),
(146, NULL, 8, 0, '', NULL, NULL, NULL, '27, 11, 2022', NULL),
(147, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>40</strong>', NULL, 1, NULL, '27-11-2022, 10:01 am', NULL),
(148, NULL, 8, 0, '', NULL, NULL, NULL, '27, 11, 2022', NULL),
(149, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>0</strong>', NULL, 1, NULL, '27-11-2022, 10:02 am', NULL),
(150, NULL, 8, 0, '', NULL, NULL, NULL, '27, 11, 2022', NULL),
(151, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-40</strong>', NULL, 1, NULL, '27-11-2022, 10:03 am', NULL),
(152, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-40</strong>', NULL, 1, NULL, '28-11-2022, 5:46 am', NULL),
(153, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-40</strong>', NULL, 1, NULL, '28-11-2022, 5:48 am', NULL),
(154, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-40</strong>', NULL, 1, NULL, '28-11-2022, 5:53 am', NULL),
(155, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-40</strong>', NULL, 1, NULL, '28-11-2022, 3:10 pm', NULL),
(156, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-40</strong>', NULL, 1, NULL, '29-11-2022, 5:16 am', NULL),
(157, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-40</strong>', NULL, 1, NULL, '29-11-2022, 5:17 am', NULL),
(158, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-40</strong>', NULL, 1, NULL, '29-11-2022, 5:19 am', NULL),
(159, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-40</strong>', NULL, 1, NULL, '29-11-2022, 11:48 am', NULL),
(160, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-40</strong>', NULL, 1, NULL, '3-12-2022, 1:39 pm', NULL),
(161, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-40</strong>', NULL, 1, NULL, '5-12-2022, 7:01 pm', NULL),
(162, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-40</strong>', NULL, 1, NULL, '5-12-2022, 7:08 pm', NULL),
(163, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-40</strong>', NULL, 1, NULL, '23-2-2023, 5:58 am', NULL),
(164, NULL, 8, 0, '', NULL, NULL, NULL, '23, 2, 2023', NULL),
(165, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-80</strong>', NULL, 1, NULL, '23-2-2023, 5:59 am', NULL),
(166, NULL, 8, 0, '', NULL, NULL, NULL, '23, 2, 2023', NULL),
(167, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '23-2-2023, 5:59 am', NULL),
(168, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '3-3-2023, 3:26 am', NULL),
(169, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '3-3-2023, 4:37 am', NULL),
(170, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '3-3-2023, 4:38 am', NULL),
(171, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '3-3-2023, 4:41 am', NULL),
(172, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '3-3-2023, 4:42 am', NULL),
(173, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '3-3-2023, 4:43 am', NULL),
(174, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '3-3-2023, 4:43 am', NULL),
(175, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '3-3-2023, 4:44 am', NULL),
(176, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '3-3-2023, 4:46 am', NULL),
(177, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '3-3-2023, 5:35 am', NULL),
(178, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '10-3-2023, 10:20 pm', NULL),
(179, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '11-3-2023, 6:16 pm', NULL),
(180, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '11-3-2023, 6:39 pm', NULL),
(181, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '11-3-2023, 6:40 pm', NULL),
(182, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '11-3-2023, 6:40 pm', NULL),
(183, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '11-3-2023, 6:57 pm', NULL),
(184, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '11-3-2023, 7:05 pm', NULL),
(185, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '11-3-2023, 7:15 pm', NULL),
(186, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '11-3-2023, 7:16 pm', NULL),
(187, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '11-3-2023, 7:16 pm', NULL),
(188, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '11-3-2023, 7:16 pm', NULL),
(189, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '11-3-2023, 7:22 pm', NULL),
(190, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-120</strong>', NULL, 1, NULL, '11-3-2023, 7:23 pm', NULL),
(191, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-400</strong>', NULL, 1, NULL, '16-3-2023, 7:21 pm', NULL),
(192, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-400</strong>', NULL, 1, NULL, '16-3-2023, 7:22 pm', NULL),
(193, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-400</strong>', NULL, 1, NULL, '18-3-2023, 6:44 am', NULL),
(194, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-400</strong>', NULL, 1, NULL, '18-3-2023, 6:44 am', NULL),
(195, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-400</strong>', NULL, 1, NULL, '18-3-2023, 7:04 am', NULL),
(196, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-440</strong>', NULL, 1, NULL, '4-5-2023, 2:25 pm', NULL),
(197, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-440</strong>', NULL, 1, NULL, '4-5-2023, 2:26 pm', NULL),
(198, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-440</strong>', NULL, 1, NULL, '4-5-2023, 2:30 pm', NULL),
(199, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-440</strong>', NULL, 1, NULL, '4-5-2023, 2:30 pm', NULL),
(200, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-440</strong>', NULL, 1, NULL, '4-5-2023, 2:30 pm', NULL),
(201, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-440</strong>', NULL, 1, NULL, '4-5-2023, 2:31 pm', NULL),
(202, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-440</strong>', NULL, 1, NULL, '5-5-2023, 5:31 am', NULL),
(203, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-440</strong>', NULL, 1, NULL, '5-5-2023, 5:36 am', NULL),
(204, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-480</strong>', NULL, 1, NULL, '5-5-2023, 6:00 am', NULL),
(205, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-560</strong>', NULL, 1, NULL, '5-5-2023, 6:06 am', NULL),
(206, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-600</strong>', NULL, 1, NULL, '5-5-2023, 6:08 am', NULL),
(207, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-600</strong>', NULL, 1, NULL, '5-5-2023, 6:27 am', NULL),
(208, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-600</strong>', NULL, 1, NULL, '5-5-2023, 6:27 am', NULL),
(209, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-600</strong>', NULL, 1, NULL, '5-5-2023, 6:28 am', NULL),
(210, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-600</strong>', NULL, 1, NULL, '5-5-2023, 6:28 am', NULL),
(211, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-600</strong>', NULL, 1, NULL, '5-5-2023, 7:01 am', NULL),
(212, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-600</strong>', NULL, 1, NULL, '5-5-2023, 7:02 am', NULL),
(213, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-600</strong>', NULL, 1, NULL, '5-5-2023, 7:02 am', NULL),
(214, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-600</strong>', NULL, 1, NULL, '5-5-2023, 7:04 am', NULL),
(215, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-600</strong>', NULL, 1, NULL, '5-5-2023, 7:08 am', NULL),
(216, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-600</strong>', NULL, 1, NULL, '5-5-2023, 7:08 am', NULL),
(217, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-600</strong>', NULL, 1, NULL, '5-5-2023, 7:09 am', NULL),
(218, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-600</strong>', NULL, 1, NULL, '5-5-2023, 7:10 am', NULL),
(219, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-640</strong>', NULL, 1, NULL, '5-5-2023, 7:10 am', NULL),
(220, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-640</strong>', NULL, 1, NULL, '5-5-2023, 7:11 am', NULL),
(221, NULL, 8, 0, '', NULL, NULL, NULL, '5, 5, 2023', NULL),
(222, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 7:16 am', NULL),
(223, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 7:22 am', NULL),
(224, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 7:22 am', NULL),
(225, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 7:23 am', NULL),
(226, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 7:26 am', NULL),
(227, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 7:28 am', NULL),
(228, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 7:29 am', NULL),
(229, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 7:29 am', NULL),
(230, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 7:30 am', NULL),
(231, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 7:41 am', NULL),
(232, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 7:42 am', NULL),
(233, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 7:44 am', NULL),
(234, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 7:44 am', NULL),
(235, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 7:46 am', NULL),
(236, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 7:48 am', NULL),
(237, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:17 am', NULL),
(238, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:20 am', NULL),
(239, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:22 am', NULL),
(240, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:25 am', NULL),
(241, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:25 am', NULL),
(242, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:28 am', NULL),
(243, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:28 am', NULL),
(244, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:30 am', NULL),
(245, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:30 am', NULL),
(246, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:30 am', NULL),
(247, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:31 am', NULL),
(248, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:32 am', NULL),
(249, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:32 am', NULL),
(250, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:35 am', NULL),
(251, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:36 am', NULL),
(252, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:36 am', NULL),
(253, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:45 am', NULL),
(254, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:45 am', NULL),
(255, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:45 am', NULL),
(256, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:47 am', NULL),
(257, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:47 am', NULL),
(258, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:48 am', NULL),
(259, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:48 am', NULL),
(260, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 8:49 am', NULL),
(261, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 9:16 am', NULL),
(262, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 9:19 am', NULL),
(263, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 9:20 am', NULL),
(264, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-840</strong>', NULL, 1, NULL, '5-5-2023, 9:20 am', NULL),
(265, NULL, 8, 0, '', NULL, NULL, NULL, '5, 5, 2023', NULL),
(266, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1040</strong>', NULL, 1, NULL, '5-5-2023, 9:24 am', NULL),
(267, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1040</strong>', NULL, 1, NULL, '6-5-2023, 1:33 pm', NULL),
(268, NULL, 8, 0, '', NULL, NULL, NULL, '6, 5, 2023', NULL),
(269, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1080</strong>', NULL, 1, NULL, '6-5-2023, 1:33 pm', NULL),
(270, NULL, 8, 0, '', NULL, NULL, NULL, '6, 5, 2023', NULL),
(271, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1120</strong>', NULL, 1, NULL, '6-5-2023, 1:36 pm', NULL),
(272, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1120</strong>', NULL, 1, NULL, '6-5-2023, 1:55 pm', NULL),
(273, NULL, 8, 0, '', NULL, NULL, NULL, '6, 5, 2023', NULL),
(274, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1160</strong>', NULL, 1, NULL, '6-5-2023, 2:25 pm', NULL),
(275, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1160</strong>', NULL, 1, NULL, '6-5-2023, 3:09 pm', NULL),
(276, NULL, 8, 0, '', NULL, NULL, NULL, '6, 5, 2023', NULL),
(277, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1280</strong>', NULL, 1, NULL, '6-5-2023, 3:11 pm', NULL),
(278, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1280</strong>', NULL, 1, NULL, '6-5-2023, 3:13 pm', NULL),
(279, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1280</strong>', NULL, 1, NULL, '6-5-2023, 4:52 pm', NULL),
(280, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1280</strong>', NULL, 1, NULL, '6-5-2023, 6:47 pm', NULL),
(281, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1280</strong>', NULL, 1, NULL, '7-5-2023, 6:42 am', NULL),
(282, NULL, 8, 0, '', NULL, NULL, NULL, '7, 5, 2023', NULL),
(283, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1320</strong>', NULL, 1, NULL, '7-5-2023, 6:42 am', NULL),
(284, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1320</strong>', NULL, 1, NULL, '7-5-2023, 6:44 am', NULL),
(285, NULL, 8, 0, '', NULL, NULL, NULL, '7, 5, 2023', NULL),
(286, NULL, 8, 0, '', NULL, NULL, NULL, '7, 5, 2023', NULL),
(287, NULL, 8, 0, '', NULL, NULL, NULL, '7, 5, 2023', NULL),
(288, NULL, 8, 0, '', NULL, NULL, NULL, '7, 5, 2023', NULL),
(289, NULL, 8, 0, '', NULL, NULL, NULL, '7, 5, 2023', NULL),
(290, NULL, 8, 0, '', NULL, NULL, NULL, '7, 5, 2023', NULL),
(291, NULL, 8, 0, '', NULL, NULL, NULL, '7, 5, 2023', NULL),
(292, NULL, 8, 0, '', NULL, NULL, NULL, '7, 5, 2023', NULL),
(293, NULL, 8, 0, '', NULL, NULL, NULL, '7, 5, 2023', NULL),
(294, NULL, 8, 0, '', NULL, NULL, NULL, '7, 5, 2023', NULL),
(295, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1760</strong>', NULL, 1, NULL, '7-5-2023, 7:01 am', NULL),
(296, NULL, 8, 0, '', NULL, NULL, NULL, '7, 5, 2023', NULL),
(297, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '7-5-2023, 7:04 am', NULL),
(298, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:03 pm', NULL),
(299, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:08 pm', NULL),
(300, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:08 pm', NULL),
(301, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:10 pm', NULL),
(302, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:10 pm', NULL),
(303, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:10 pm', NULL),
(304, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:11 pm', NULL);
INSERT INTO `notifications` (`id`, `sender`, `user`, `view`, `message`, `user_view`, `hospital`, `company`, `created`, `updated_at`) VALUES
(305, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:11 pm', NULL),
(306, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:11 pm', NULL),
(307, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:12 pm', NULL),
(308, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:12 pm', NULL),
(309, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:14 pm', NULL),
(310, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:15 pm', NULL),
(311, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:16 pm', NULL),
(312, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:16 pm', NULL),
(313, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:17 pm', NULL),
(314, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:18 pm', NULL),
(315, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:19 pm', NULL),
(316, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:19 pm', NULL),
(317, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:21 pm', NULL),
(318, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:22 pm', NULL),
(319, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:23 pm', NULL),
(320, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:23 pm', NULL),
(321, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '9-5-2023, 7:24 pm', NULL),
(322, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 4:50 am', NULL),
(323, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 4:57 am', NULL),
(324, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 4:59 am', NULL),
(325, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 4:59 am', NULL),
(326, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 4:59 am', NULL),
(327, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 5:02 am', NULL),
(328, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 6:43 am', NULL),
(329, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 6:45 am', NULL),
(330, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 6:45 am', NULL),
(331, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 6:46 am', NULL),
(332, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 6:48 am', NULL),
(333, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 6:49 am', NULL),
(334, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 6:56 am', NULL),
(335, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 6:57 am', NULL),
(336, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 6:57 am', NULL),
(337, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 6:58 am', NULL),
(338, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 6:59 am', NULL),
(339, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 7:00 am', NULL),
(340, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 7:03 am', NULL),
(341, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 7:04 am', NULL),
(342, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 7:20 am', NULL),
(343, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 7:26 am', NULL),
(344, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(345, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 7:27 am', NULL),
(346, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(347, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1800</strong>', NULL, 1, NULL, '10-5-2023, 7:27 am', NULL),
(348, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(349, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1840</strong>', NULL, 1, NULL, '10-5-2023, 7:32 am', NULL),
(350, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1840</strong>', NULL, 1, NULL, '10-5-2023, 7:32 am', NULL),
(351, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(352, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1880</strong>', NULL, 1, NULL, '10-5-2023, 7:32 am', NULL),
(353, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1880</strong>', NULL, 1, NULL, '10-5-2023, 7:39 am', NULL),
(354, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1880</strong>', NULL, 1, NULL, '10-5-2023, 7:39 am', NULL),
(355, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(356, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1920</strong>', NULL, 1, NULL, '10-5-2023, 7:40 am', NULL),
(357, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(358, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-1960</strong>', NULL, 1, NULL, '10-5-2023, 7:41 am', NULL),
(359, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(360, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-2000</strong>', NULL, 1, NULL, '10-5-2023, 7:42 am', NULL),
(361, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(362, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-2040</strong>', NULL, 1, NULL, '10-5-2023, 7:44 am', NULL),
(363, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(364, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(365, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(366, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(367, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(368, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(369, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(370, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-2320</strong>', NULL, 1, NULL, '10-5-2023, 8:17 am', NULL),
(371, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(372, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(373, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(374, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(375, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(376, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(377, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(378, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(379, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(380, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(381, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(382, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(383, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(384, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(385, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(386, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(387, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(388, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(389, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(390, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(391, NULL, 8, 0, '', NULL, NULL, NULL, '10, 5, 2023', NULL),
(392, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '10-5-2023, 8:47 am', NULL),
(393, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '10-5-2023, 8:48 am', NULL),
(394, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '10-5-2023, 12:40 pm', NULL),
(395, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '10-5-2023, 12:42 pm', NULL),
(396, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '10-5-2023, 12:44 pm', NULL),
(397, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '10-5-2023, 12:45 pm', NULL),
(398, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '10-5-2023, 12:46 pm', NULL),
(399, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '10-5-2023, 1:00 pm', NULL),
(400, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '10-5-2023, 1:00 pm', NULL),
(401, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '10-5-2023, 1:01 pm', NULL),
(402, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '10-5-2023, 1:01 pm', NULL),
(403, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '10-5-2023, 1:05 pm', NULL),
(404, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '10-5-2023, 1:05 pm', NULL),
(405, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '10-5-2023, 1:11 pm', NULL),
(406, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '10-5-2023, 1:56 pm', NULL),
(407, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '10-5-2023, 1:56 pm', NULL),
(408, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '10-5-2023, 2:11 pm', NULL),
(409, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '10-5-2023, 2:11 pm', NULL),
(410, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '10-5-2023, 2:12 pm', NULL),
(411, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '11-5-2023, 3:18 pm', NULL),
(412, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '11-5-2023, 3:18 pm', NULL),
(413, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '11-5-2023, 3:19 pm', NULL),
(414, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '11-5-2023, 4:51 pm', NULL),
(415, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '11-5-2023, 5:16 pm', NULL),
(416, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '11-5-2023, 6:40 pm', NULL),
(417, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3160</strong>', NULL, 1, NULL, '12-5-2023, 5:21 pm', NULL),
(418, NULL, 8, 0, '', NULL, NULL, NULL, '12, 5, 2023', NULL),
(419, NULL, 8, 0, '', NULL, NULL, NULL, '12, 5, 2023', NULL),
(420, NULL, 8, 0, '', NULL, NULL, NULL, '12, 5, 2023', NULL),
(421, NULL, 8, 0, '', NULL, NULL, NULL, '12, 5, 2023', NULL),
(422, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3320</strong>', NULL, 1, NULL, '12-5-2023, 5:30 pm', NULL),
(423, NULL, 8, 0, '', NULL, NULL, NULL, '12, 5, 2023', NULL),
(424, NULL, 8, 0, '', NULL, NULL, NULL, '12, 5, 2023', NULL),
(425, NULL, 8, 0, '', NULL, NULL, NULL, '12, 5, 2023', NULL),
(426, NULL, 8, 0, '', NULL, NULL, NULL, '12, 5, 2023', NULL),
(427, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3480</strong>', NULL, 1, NULL, '12-5-2023, 5:42 pm', NULL),
(428, NULL, 8, 0, '', NULL, NULL, NULL, '12, 5, 2023', NULL),
(429, NULL, 8, 0, '', NULL, NULL, NULL, '12, 5, 2023', NULL),
(430, NULL, 8, 0, '', NULL, NULL, NULL, '12, 5, 2023', NULL),
(431, NULL, 8, 0, '', NULL, NULL, NULL, '12, 5, 2023', NULL),
(432, NULL, 8, 0, '', NULL, NULL, NULL, '12, 5, 2023', NULL),
(433, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-3680</strong>', NULL, 1, NULL, '13-5-2023, 2:07 pm', NULL),
(434, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(435, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(436, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(437, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(438, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(439, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(440, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(441, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(442, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(443, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(444, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(445, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-4280</strong>', NULL, 1, NULL, '13-5-2023, 6:53 pm', NULL),
(446, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(447, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(448, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(449, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(450, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(451, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(452, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(453, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(454, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(455, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(456, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(457, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(458, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(459, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(460, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-4960</strong>', NULL, 1, NULL, '13-5-2023, 7:38 pm', NULL),
(461, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(462, NULL, 8, 0, '', NULL, NULL, NULL, '13, 5, 2023', NULL),
(463, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-5040</strong>', NULL, 1, NULL, '18-5-2023, 6:54 pm', NULL),
(464, NULL, 8, 0, '', NULL, NULL, NULL, '18, 5, 2023', NULL),
(465, NULL, 8, 0, '', NULL, NULL, NULL, '18, 5, 2023', NULL),
(466, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-5120</strong>', NULL, 1, NULL, '19-5-2023, 5:22 pm', NULL),
(467, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-5120</strong>', NULL, 1, NULL, '20-5-2023, 5:42 am', NULL),
(468, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-5120</strong>', NULL, 1, NULL, '20-5-2023, 5:43 am', NULL),
(469, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-5120</strong>', NULL, 1, NULL, '20-5-2023, 5:44 am', NULL),
(470, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-5120</strong>', NULL, 1, NULL, '21-5-2023, 8:27 am', NULL),
(471, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-5120</strong>', NULL, 1, NULL, '21-5-2023, 8:28 am', NULL),
(472, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-5120</strong>', NULL, 1, NULL, '21-5-2023, 10:40 am', NULL),
(473, NULL, 8, 0, '', NULL, NULL, NULL, '21, 5, 2023', NULL),
(474, NULL, 8, 0, '', NULL, NULL, NULL, '21, 5, 2023', NULL),
(475, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-5200</strong>', NULL, 1, NULL, '21-5-2023, 10:52 am', NULL),
(476, NULL, 8, 0, '', NULL, NULL, NULL, '21, 5, 2023', NULL),
(477, NULL, 8, 0, '', NULL, NULL, NULL, '21, 5, 2023', NULL),
(478, NULL, 8, 0, '', NULL, NULL, NULL, '21, 5, 2023', NULL),
(479, NULL, 8, 0, '', NULL, NULL, NULL, '21, 5, 2023', NULL),
(480, NULL, 8, 0, '', NULL, NULL, NULL, '21, 5, 2023', NULL),
(481, NULL, 8, 0, '', NULL, NULL, NULL, '21, 5, 2023', NULL),
(482, NULL, 8, 0, '', NULL, NULL, NULL, '21, 5, 2023', NULL),
(483, NULL, 8, 0, '', NULL, NULL, NULL, '21, 5, 2023', NULL),
(484, NULL, 8, 0, '', NULL, NULL, NULL, '21, 5, 2023', NULL),
(485, NULL, 8, 0, '', NULL, NULL, NULL, '21, 5, 2023', NULL),
(486, NULL, 8, 0, '', NULL, NULL, NULL, '21, 5, 2023', NULL),
(487, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-6440</strong>', NULL, 1, NULL, '21-5-2023, 11:34 am', NULL),
(488, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-6440</strong>', NULL, 1, NULL, '21-5-2023, 11:35 am', NULL),
(489, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-6780</strong>', NULL, 1, NULL, '21-5-2023, 12:04 pm', NULL),
(490, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-6780</strong>', NULL, 1, NULL, '21-5-2023, 12:05 pm', NULL),
(491, NULL, 8, 0, '', NULL, NULL, NULL, '21, 5, 2023', NULL),
(492, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-7180</strong>', NULL, 1, NULL, '21-5-2023, 12:14 pm', NULL),
(493, NULL, 8, 0, '', NULL, NULL, NULL, '21, 5, 2023', NULL),
(494, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-7250</strong>', NULL, 1, NULL, '21-5-2023, 12:20 pm', NULL),
(495, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-7250</strong>', NULL, 1, NULL, '21-5-2023, 12:20 pm', NULL),
(496, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-7250</strong>', NULL, 1, NULL, '21-5-2023, 1:58 pm', NULL),
(497, NULL, 8, 0, '', NULL, NULL, NULL, '21, 5, 2023', NULL),
(498, NULL, 8, 0, '', NULL, NULL, NULL, '21, 5, 2023', NULL),
(499, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-7390</strong>', NULL, 1, NULL, '21-5-2023, 2:20 pm', NULL),
(500, NULL, 8, 0, '', NULL, NULL, NULL, '21, 5, 2023', NULL),
(501, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-7490</strong>', NULL, 1, NULL, '21-5-2023, 4:25 pm', NULL),
(502, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-7490</strong>', NULL, 1, NULL, '21-5-2023, 4:26 pm', NULL),
(503, NULL, 8, 0, '', NULL, NULL, NULL, '21, 5, 2023', NULL),
(504, NULL, 8, 0, '', NULL, NULL, NULL, '21, 5, 2023', NULL),
(505, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-8910</strong>', NULL, 1, NULL, '22-5-2023, 5:56 am', NULL),
(506, NULL, 8, 0, '', NULL, NULL, NULL, '22, 5, 2023', NULL),
(507, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-9140</strong>', NULL, 1, NULL, '22-5-2023, 6:37 am', NULL),
(508, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-9140</strong>', NULL, 1, NULL, '22-5-2023, 6:37 am', NULL),
(509, NULL, 8, 0, '', NULL, NULL, NULL, '22, 5, 2023', NULL),
(510, NULL, 8, 0, '', NULL, NULL, NULL, '22, 5, 2023', NULL),
(511, NULL, 8, 0, '', NULL, NULL, NULL, '22, 5, 2023', NULL),
(512, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-9260</strong>', NULL, 1, NULL, '22-5-2023, 7:09 am', NULL),
(513, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-9260</strong>', NULL, 1, NULL, '22-5-2023, 7:13 am', NULL),
(514, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-9260</strong>', NULL, 1, NULL, '22-5-2023, 7:15 am', NULL),
(515, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-9460</strong>', NULL, 1, NULL, '22-5-2023, 7:20 am', NULL),
(516, NULL, 8, 0, '', NULL, NULL, NULL, '22, 5, 2023', NULL),
(517, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10060</strong>', NULL, 1, NULL, '22-5-2023, 7:28 am', NULL),
(518, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10060</strong>', NULL, 1, NULL, '22-5-2023, 7:31 am', NULL),
(519, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10060</strong>', NULL, 1, NULL, '22-5-2023, 7:31 am', NULL),
(520, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10060</strong>', NULL, 1, NULL, '22-5-2023, 7:31 am', NULL),
(521, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10060</strong>', NULL, 1, NULL, '22-5-2023, 7:32 am', NULL),
(522, NULL, 8, 0, '', NULL, NULL, NULL, '22, 5, 2023', NULL),
(523, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10240</strong>', NULL, 1, NULL, '23-5-2023, 8:34 am', NULL),
(524, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10240</strong>', NULL, 1, NULL, '23-5-2023, 8:44 am', NULL),
(525, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10240</strong>', NULL, 1, NULL, '23-5-2023, 8:44 am', NULL),
(526, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10240</strong>', NULL, 1, NULL, '23-5-2023, 8:45 am', NULL),
(527, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10240</strong>', NULL, 1, NULL, '23-5-2023, 8:47 am', NULL),
(528, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10240</strong>', NULL, 1, NULL, '23-5-2023, 8:52 am', NULL),
(529, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10240</strong>', NULL, 1, NULL, '23-5-2023, 8:52 am', NULL),
(530, NULL, 8, 0, '', NULL, NULL, NULL, '23, 5, 2023', NULL),
(531, NULL, 8, 0, '', NULL, NULL, NULL, '23, 5, 2023', NULL),
(532, NULL, 8, 0, '', NULL, NULL, NULL, '23, 5, 2023', NULL),
(533, NULL, 8, 0, '', NULL, NULL, NULL, '23, 5, 2023', NULL),
(534, NULL, 8, 0, '', NULL, NULL, NULL, '23, 5, 2023', NULL),
(535, NULL, 8, 0, '', NULL, NULL, NULL, '23, 5, 2023', NULL),
(536, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10280</strong>', NULL, 1, NULL, '23-5-2023, 9:23 am', NULL),
(537, NULL, 8, 0, '', NULL, NULL, NULL, '23, 5, 2023', NULL),
(538, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>Mena Saleep se<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10320</strong>', NULL, 1, NULL, '23-5-2023, 10:31 am', NULL),
(539, NULL, 8, 0, '', NULL, NULL, NULL, '23, 5, 2023', NULL),
(540, NULL, 8, 0, '', NULL, NULL, NULL, '23, 5, 2023', NULL),
(541, NULL, 8, 0, '', NULL, NULL, NULL, '23, 5, 2023', NULL),
(542, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10440</strong>', NULL, 1, NULL, '23-5-2023, 1:06 pm', NULL),
(543, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10440</strong>', NULL, 1, NULL, '23-5-2023, 1:07 pm', NULL),
(544, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10440</strong>', NULL, 1, NULL, '25-5-2023, 4:02 pm', NULL),
(545, NULL, 8, 0, '', NULL, NULL, NULL, '25, 5, 2023', NULL),
(546, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10640</strong>', NULL, 1, NULL, '25-5-2023, 4:09 pm', NULL),
(547, NULL, 8, 0, '', NULL, NULL, NULL, '25, 5, 2023', NULL),
(548, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10640</strong>', NULL, 1, NULL, '25-5-2023, 5:36 pm', NULL),
(549, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10640</strong>', NULL, 1, NULL, '25-5-2023, 5:37 pm', NULL),
(550, NULL, 8, 0, '', NULL, NULL, NULL, '25, 5, 2023', NULL),
(551, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10680</strong>', NULL, 1, NULL, '25-5-2023, 7:05 pm', NULL),
(552, NULL, 8, 0, '', NULL, NULL, NULL, '25, 5, 2023', NULL),
(553, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10680</strong>', NULL, 1, NULL, '25-5-2023, 7:54 pm', NULL),
(554, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10720</strong>', NULL, 1, NULL, '25-5-2023, 7:55 pm', NULL),
(555, NULL, 8, 0, '', NULL, NULL, NULL, '25, 5, 2023', NULL),
(556, NULL, 8, 0, '', NULL, NULL, NULL, '25, 5, 2023', NULL),
(557, NULL, 8, 0, '', NULL, NULL, NULL, '25, 5, 2023', NULL),
(558, NULL, 8, 0, '', NULL, NULL, NULL, '25, 5, 2023', NULL),
(559, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-10880</strong>', NULL, 1, NULL, '26-5-2023, 5:39 am', NULL),
(560, NULL, 8, 0, '', NULL, NULL, NULL, '26, 5, 2023', NULL),
(561, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-11080</strong>', NULL, 1, NULL, '29-5-2023, 5:03 am', NULL),
(562, NULL, 8, 0, '', NULL, NULL, NULL, '29, 5, 2023', NULL),
(563, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-11310</strong>', NULL, 1, NULL, '29-5-2023, 5:04 am', NULL),
(564, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-11310</strong>', NULL, 1, NULL, '29-5-2023, 5:06 am', NULL),
(565, NULL, 8, 0, '', NULL, NULL, NULL, '29, 5, 2023', NULL),
(566, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-11610</strong>', NULL, 1, NULL, '29-5-2023, 5:06 am', NULL),
(567, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-11610</strong>', NULL, 1, NULL, '29-5-2023, 5:14 am', NULL),
(568, NULL, 8, 0, '', NULL, NULL, NULL, '29, 5, 2023', NULL),
(569, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-11840</strong>', NULL, 1, NULL, '29-5-2023, 5:14 am', NULL),
(570, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-11840</strong>', NULL, 1, NULL, '29-5-2023, 5:16 am', NULL),
(571, NULL, 8, 0, '', NULL, NULL, NULL, '29, 5, 2023', NULL),
(572, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-11880</strong>', NULL, 1, NULL, '29-5-2023, 5:16 am', NULL),
(573, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-11880</strong>', NULL, 1, NULL, '29-5-2023, 6:15 am', NULL),
(574, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-11920</strong>', NULL, 1, NULL, '29-5-2023, 6:18 am', NULL),
(575, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-11920</strong>', NULL, 1, NULL, '29-5-2023, 6:19 am', NULL),
(576, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-11920</strong>', NULL, 1, NULL, '29-5-2023, 6:32 am', NULL),
(577, NULL, 8, 0, '', NULL, NULL, NULL, '29, 5, 2023', NULL),
(578, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-12150</strong>', NULL, 1, NULL, '29-5-2023, 6:35 am', NULL),
(579, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-12150</strong>', NULL, 1, NULL, '29-5-2023, 6:38 am', NULL),
(580, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-12150</strong>', NULL, 1, NULL, '29-5-2023, 6:40 am', NULL),
(581, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-12150</strong>', NULL, 1, NULL, '29-5-2023, 7:06 am', NULL),
(582, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-12150</strong>', NULL, 1, NULL, '29-5-2023, 7:10 am', NULL),
(583, NULL, 8, 0, '', NULL, NULL, NULL, '29, 5, 2023', NULL),
(584, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-14270</strong>', NULL, 1, NULL, '29-5-2023, 7:19 am', NULL),
(585, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-14270</strong>', NULL, 1, NULL, '29-5-2023, 7:28 am', NULL),
(586, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-14270</strong>', NULL, 1, NULL, '29-5-2023, 7:29 am', NULL),
(587, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-14270</strong>', NULL, 1, NULL, '29-5-2023, 7:30 am', NULL),
(588, NULL, 8, 0, '', NULL, NULL, NULL, '29, 5, 2023', NULL),
(589, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-16270</strong>', NULL, 1, NULL, '29-5-2023, 7:31 am', NULL),
(590, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-16270</strong>', NULL, 1, NULL, '29-5-2023, 7:34 am', NULL),
(591, NULL, 8, 0, '', NULL, NULL, NULL, '29, 5, 2023', NULL),
(592, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-16570</strong>', NULL, 1, NULL, '29-5-2023, 7:35 am', NULL),
(593, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-16570</strong>', NULL, 1, NULL, '29-5-2023, 7:52 am', NULL),
(594, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-16570</strong>', NULL, 1, NULL, '29-5-2023, 7:54 am', NULL),
(595, NULL, 8, 0, '', NULL, NULL, NULL, '29, 5, 2023', NULL),
(596, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-16610</strong>', NULL, 1, NULL, '29-5-2023, 7:55 am', NULL),
(597, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-16610</strong>', NULL, 1, NULL, '29-5-2023, 8:01 am', NULL),
(598, NULL, 8, 0, '', NULL, NULL, NULL, '29, 5, 2023', NULL),
(599, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-16700</strong>', NULL, 1, NULL, '29-5-2023, 8:03 am', NULL),
(600, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-16700</strong>', NULL, 1, NULL, '29-5-2023, 8:10 am', NULL),
(601, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-16820</strong>', NULL, 1, NULL, '29-5-2023, 8:43 am', NULL),
(602, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-16820</strong>', NULL, 1, NULL, '29-5-2023, 8:47 am', NULL),
(603, NULL, 8, 0, '', NULL, NULL, NULL, '29, 5, 2023', NULL),
(604, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-16920</strong>', NULL, 1, NULL, '29-5-2023, 8:47 am', NULL),
(605, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-16920</strong>', NULL, 1, NULL, '29-5-2023, 6:46 pm', NULL),
(606, NULL, 8, 0, '', NULL, NULL, NULL, '29, 5, 2023', NULL),
(607, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '29-5-2023, 6:46 pm', NULL),
(608, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '29-5-2023, 6:52 pm', NULL),
(609, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '29-5-2023, 6:54 pm', NULL),
(610, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '29-5-2023, 6:56 pm', NULL),
(611, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '29-5-2023, 6:58 pm', NULL),
(612, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '29-5-2023, 6:58 pm', NULL),
(613, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '29-5-2023, 6:59 pm', NULL),
(614, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '29-5-2023, 6:59 pm', NULL),
(615, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '29-5-2023, 6:59 pm', NULL),
(616, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '29-5-2023, 7:00 pm', NULL),
(617, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '29-5-2023, 7:00 pm', NULL),
(618, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '29-5-2023, 7:01 pm', NULL),
(619, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '29-5-2023, 7:01 pm', NULL),
(620, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '29-5-2023, 7:01 pm', NULL),
(621, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '29-5-2023, 7:14 pm', NULL),
(622, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '29-5-2023, 7:16 pm', NULL),
(623, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '8-6-2023, 4:09 pm', NULL),
(624, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '8-6-2023, 5:06 pm', NULL),
(625, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '8-6-2023, 5:06 pm', NULL),
(626, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '8-6-2023, 5:07 pm', NULL),
(627, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '8-6-2023, 5:08 pm', NULL),
(628, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '8-6-2023, 5:11 pm', NULL),
(629, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '8-6-2023, 5:11 pm', NULL),
(630, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '8-6-2023, 5:13 pm', NULL),
(631, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '8-6-2023, 5:14 pm', NULL),
(632, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '8-6-2023, 5:14 pm', NULL),
(633, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '9-6-2023, 6:54 am', NULL),
(634, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '13-6-2023, 8:32 am', NULL),
(635, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '13-6-2023, 8:35 am', NULL),
(636, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '13-6-2023, 3:22 pm', NULL),
(637, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '13-6-2023, 5:10 pm', NULL),
(638, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '14-6-2023, 2:31 pm', NULL),
(639, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '14-6-2023, 2:31 pm', NULL),
(640, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>-17020</strong>', NULL, 1, NULL, '14-6-2023, 5:02 pm', NULL),
(641, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '10-8-2023, 6:57 am', NULL),
(642, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '27-9-2023, 7:23 am', NULL),
(643, NULL, 8, 0, '<h4>رسالة تحذيرية</h4><p> رصيد</p>بركات<p> قارب علي الانتهاء الرصيد المتبقي </p><strong style=\'color:red\'>1000</strong>', NULL, 1, NULL, '28-9-2023, 6:06 am', NULL);

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
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `how_to_use` text CHARACTER SET utf8 DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `expiration_date` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `storage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tablet` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `strip` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `qty` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `meas` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `small_price` int(11) DEFAULT NULL,
  `large_price` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `insurance_company` int(11) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`id`, `name`, `how_to_use`, `count`, `category`, `price`, `expiration_date`, `storage`, `type`, `tablet`, `strip`, `volume`, `unit`, `qty`, `meas`, `small_price`, `large_price`, `hospital`, `insurance_company`, `updated_at`) VALUES
(10, 'احمد علاء', NULL, NULL, 1, NULL, NULL, NULL, 'TM', '3', '10', 50, NULL, NULL, NULL, 11, 12, NULL, 1, '2023-07-20 07:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_department`
--

CREATE TABLE `pharmacy_department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pharmacy_department`
--

INSERT INTO `pharmacy_department` (`id`, `name`, `hospital`, `updated_at`) VALUES
(1, 'Mena Saleep fffffffffff', 1, '2023-03-03 03:22:12'),
(2, 'Italian lining with beige lining', 1, NULL),
(3, 'مينا1111', 1, '2023-05-27 18:41:45'),
(4, 'احمد علاء', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `physical_therapy`
--

CREATE TABLE `physical_therapy` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `insurance_company` int(11) DEFAULT NULL,
  `service_provider` int(11) DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `physical_therapy`
--

INSERT INTO `physical_therapy` (`id`, `name`, `price`, `category`, `insurance_company`, `service_provider`, `updated_at`, `created_at`) VALUES
(45, 'جلسة كهرباء لليد', 200, 4, 1, 3, '2023-07-28 16:55:51', '2023-07-28 16:55:51'),
(46, 'جلسه كهررباء للضهر', 20, 4, 1, 3, '2023-07-28 16:55:51', '2023-07-28 16:55:51'),
(47, 'جلسة كهرباء', 10, 4, 1, 3, '2023-07-28 16:55:51', '2023-07-28 16:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `physical_therapy_approve_company`
--

CREATE TABLE `physical_therapy_approve_company` (
  `id` int(11) NOT NULL,
  `item` int(11) DEFAULT NULL,
  `precent` int(11) DEFAULT 100,
  `company` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `physical_therapy_approve_company`
--

INSERT INTO `physical_therapy_approve_company` (`id`, `item`, `precent`, `company`, `hospital`, `updated_at`) VALUES
(4, 24, 100, 1, 1, NULL),
(5, 24, 100, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `physical_therapy_booking`
--

CREATE TABLE `physical_therapy_booking` (
  `id` int(11) NOT NULL,
  `medical_examination` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `name` int(11) DEFAULT NULL,
  `doctor` int(11) DEFAULT 0,
  `created` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `physical_therapy_booking`
--

INSERT INTO `physical_therapy_booking` (`id`, `medical_examination`, `price`, `name`, `doctor`, `created`, `time`, `hospital`, `status`, `updated_at`) VALUES
(31, 25, 100, 419, 1, '2023-05-29', NULL, 1, 'not', '2023-05-29 08:47:19'),
(32, 25, 100, 420, 5, '2023-05-29', NULL, 1, 'not', '2023-05-29 18:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `physical_therapy_department`
--

CREATE TABLE `physical_therapy_department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `physical_therapy_department`
--

INSERT INTO `physical_therapy_department` (`id`, `name`, `hospital`, `updated_at`) VALUES
(4, 'احمد علاء', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pool`
--

CREATE TABLE `pool` (
  `id` int(11) NOT NULL,
  `plan` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pool` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `money` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `percentage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `number_of_subscribers` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `insurance_company` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pool`
--

INSERT INTO `pool` (`id`, `plan`, `pool`, `money`, `percentage`, `number_of_subscribers`, `company`, `insurance_company`) VALUES
(1, '1', '1', '10000', NULL, '5', '10', NULL),
(2, '2', NULL, '5000', '10', '5', NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '4', NULL, '100', '1', '5', NULL, NULL),
(5, '4', '1', '100', '10', '4', NULL, NULL),
(6, '4', '1', '100', '2', '43', '10', NULL),
(7, NULL, '2', '1000', NULL, '19', '10', NULL),
(8, '1', '2', '100', '11', '11', '10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pool_plan`
--

CREATE TABLE `pool_plan` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `insurance_company` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pool_plan`
--

INSERT INTO `pool_plan` (`id`, `name`, `company`, `insurance_company`) VALUES
(1, 'منفعة مجمعة لكل المشتركين', 0, 1),
(2, 'نسبة لكل المشتركين حتي الحد الاقصي', NULL, 1),
(3, 'نسبة لكل المشتركين بمبلغ المعين', NULL, 1),
(4, 'مبلغ لكل فرد من المشتركين', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pool_service`
--

CREATE TABLE `pool_service` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `insurance_company` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pool_service`
--

INSERT INTO `pool_service` (`id`, `name`, `company`, `insurance_company`) VALUES
(1, 'موزمـــــن', NULL, 1),
(2, 'علاج طبيعــــــي', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` int(11) DEFAULT 0,
  `count_stock` int(11) DEFAULT 0,
  `count_hospital` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `count_stock`, `count_hospital`, `hospital`, `updated_at`) VALUES
(1, 'مينا1111', 0, 0, 0, 1, '2023-05-24 13:09:38'),
(2, 'انبوب اكسوجين', 0, 0, 0, 1, NULL),
(3, 'بالطو', 0, 0, 0, 1, NULL),
(4, 'خيط', 0, 0, 0, 1, NULL),
(5, 'مقص', 0, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_receive`
--

CREATE TABLE `product_receive` (
  `id` int(11) NOT NULL,
  `product` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `recipient` int(11) DEFAULT NULL,
  `date_filter` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `created` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_receive`
--

INSERT INTO `product_receive` (`id`, `product`, `count`, `sender`, `recipient`, `date_filter`, `hospital`, `created`) VALUES
(1, 3, 3, 1, 9, '2023-05-24', 1, 'May 24, 2023, 2:50 pm');

-- --------------------------------------------------------

--
-- Table structure for table `quartering`
--

CREATE TABLE `quartering` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `insurance_company` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `service_provider` int(11) DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quartering`
--

INSERT INTO `quartering` (`id`, `name`, `price`, `category`, `insurance_company`, `service_provider`, `updated_at`, `created_at`) VALUES
(25, 'ايواء', 90, 1, '1', 1, NULL, NULL),
(26, 'ايواء 2', 90, 1, '1', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quartering_approve_company`
--

CREATE TABLE `quartering_approve_company` (
  `id` int(11) NOT NULL,
  `item` int(11) DEFAULT NULL,
  `precent` int(11) DEFAULT 100,
  `company` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quartering_approve_company`
--

INSERT INTO `quartering_approve_company` (`id`, `item`, `precent`, `company`, `hospital`, `updated_at`) VALUES
(1, 21, 100, NULL, 1, NULL),
(2, 21, 100, 1, 1, NULL),
(3, 21, 100, 1, 1, NULL),
(4, 24, 100, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quartering_booking`
--

CREATE TABLE `quartering_booking` (
  `id` int(11) NOT NULL,
  `medical_examination` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `name` int(11) DEFAULT NULL,
  `doctor` int(11) NOT NULL DEFAULT 0,
  `created` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quartering_booking`
--

INSERT INTO `quartering_booking` (`id`, `medical_examination`, `price`, `name`, `doctor`, `created`, `time`, `hospital`, `status`, `updated_at`) VALUES
(24, 25, 90, 366, 0, '2023-05-22', NULL, 1, 'not', NULL),
(25, 25, 90, 367, 1, '2023-05-22', NULL, 1, 'not', '2023-05-22 07:33:45'),
(26, 25, 90, 415, 6, '2023-05-29', NULL, 1, 'not', '2023-05-29 08:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `quartering_department`
--

CREATE TABLE `quartering_department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quartering_department`
--

INSERT INTO `quartering_department` (`id`, `name`, `hospital`, `updated_at`) VALUES
(1, 'Mena Saleep fffffffffff', 1, '2023-03-03 03:22:12'),
(3, 'احمد علاء', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ray`
--

CREATE TABLE `ray` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `service_provider` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `insurance_company` int(11) DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ray`
--

INSERT INTO `ray` (`id`, `name`, `price`, `category`, `service_provider`, `hospital`, `insurance_company`, `updated_at`, `created_at`) VALUES
(29, 'اشعة رانين', 20, 3, 3, NULL, 1, '2023-07-28 12:12:33', '2023-07-28 12:12:33'),
(30, 'اشعة مغنطيس', 10, 3, 3, NULL, 1, '2023-07-28 12:12:33', '2023-07-28 12:12:33');

-- --------------------------------------------------------

--
-- Table structure for table `ray_approve_company`
--

CREATE TABLE `ray_approve_company` (
  `id` int(11) NOT NULL,
  `item` int(11) DEFAULT NULL,
  `precent` int(11) DEFAULT 100,
  `doctor` int(11) DEFAULT 0,
  `company` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ray_approve_company`
--

INSERT INTO `ray_approve_company` (`id`, `item`, `precent`, `doctor`, `company`, `hospital`, `updated_at`) VALUES
(4, 24, 100, 0, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ray_booking`
--

CREATE TABLE `ray_booking` (
  `id` int(11) NOT NULL,
  `medical_examination` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `name` int(11) DEFAULT NULL,
  `doctor` int(11) NOT NULL DEFAULT 0,
  `created` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ray_booking`
--

INSERT INTO `ray_booking` (`id`, `medical_examination`, `price`, `name`, `doctor`, `created`, `time`, `hospital`, `status`, `updated_at`) VALUES
(24, 24, 230, 341, 0, '2023-05-21', NULL, 1, 'ok', NULL),
(25, 25, 200, 341, 0, '2023-05-21', NULL, 1, 'not', NULL),
(26, 24, 230, 342, 0, '2023-05-21', NULL, 1, 'ok', NULL),
(27, 25, 200, 342, 0, '2023-05-21', NULL, 1, 'not', NULL),
(28, 24, 230, 343, 0, '2023-05-21', NULL, 1, 'ok', NULL),
(29, 25, 200, 343, 0, '2023-05-21', NULL, 1, 'not', NULL),
(30, 24, 230, 344, 5, '2023-05-21', NULL, 1, 'ok', '2023-05-21 16:32:00'),
(31, 25, 200, 344, 6, '2023-05-21', NULL, 1, 'not', '2023-05-21 16:32:00'),
(32, 24, 230, 345, 5, '2023-05-21', NULL, 1, 'ok', '2023-05-21 16:44:49'),
(33, 25, 200, 345, 6, '2023-05-21', NULL, 1, 'not', '2023-05-21 16:44:49'),
(34, 24, 230, 346, 5, '2023-05-21', NULL, 1, 'ok', '2023-05-21 16:45:09'),
(35, 25, 200, 346, 6, '2023-05-21', NULL, 1, 'not', '2023-05-21 16:45:09'),
(36, 24, 230, 347, 5, '2023-05-22', NULL, 1, 'ok', '2023-05-22 06:00:21'),
(37, 24, 230, 348, 5, '2023-05-22', NULL, 1, 'ok', '2023-05-22 06:00:58'),
(38, 24, 230, 349, 5, '2023-05-22', NULL, 1, 'ok', '2023-05-22 06:01:20'),
(39, 24, 230, 392, 5, '2023-05-25', NULL, 1, 'ok', '2023-05-25 16:05:45'),
(40, 25, 200, 392, 6, '2023-05-25', NULL, 1, 'not', '2023-05-25 16:05:45'),
(41, 24, 230, 393, 1, '2023-05-25', NULL, 1, 'ok', '2023-05-25 16:10:24'),
(42, 24, 230, 402, 5, '2023-05-29', NULL, 1, 'ok', '2023-05-29 05:04:13'),
(43, 24, 230, 404, 1, '2023-05-29', NULL, 1, 'ok', '2023-05-29 05:14:31'),
(44, 24, 230, 406, 10, '2023-05-29', NULL, 1, 'ok', '2023-05-29 06:16:23'),
(45, 24, 230, 407, 14, '2023-05-29', NULL, 1, 'ok', '2023-05-29 06:35:09'),
(46, 24, 230, 412, 6, '2023-05-29', NULL, 1, 'ok', '2023-05-29 07:31:10'),
(47, 24, 230, 413, 6, '2023-05-29', NULL, 1, 'ok', '2023-05-29 07:35:16'),
(48, 24, 230, 414, 12, '2023-05-29', NULL, 1, 'ok', '2023-05-29 07:55:22'),
(49, 24, 230, 415, 6, '2023-05-29', NULL, 1, 'ok', '2023-05-29 08:03:14'),
(50, 24, 230, 416, 6, '2023-05-29', NULL, 1, 'ok', '2023-05-29 08:11:48'),
(51, 24, 230, 417, 6, '2023-05-29', NULL, 1, 'ok', '2023-05-29 08:42:52'),
(52, 24, 230, 418, 6, '2023-05-29', NULL, 1, 'ok', '2023-05-29 08:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `ray_department`
--

CREATE TABLE `ray_department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ray_department`
--

INSERT INTO `ray_department` (`id`, `name`, `hospital`, `updated_at`) VALUES
(3, 'مينا1111', 1, '2023-05-18 16:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `recepion`
--

CREATE TABLE `recepion` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `insurance_number` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `total_due` int(11) DEFAULT NULL,
  `medical_examination` int(11) DEFAULT NULL,
  `receptionist` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `time_filter` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ranking_number` int(11) DEFAULT 0,
  `author` int(11) DEFAULT NULL,
  `type` varchar(22) CHARACTER SET utf8 DEFAULT NULL,
  `online` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `created` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recepion`
--

INSERT INTO `recepion` (`id`, `username`, `phone`, `insurance_number`, `category`, `total_due`, `medical_examination`, `receptionist`, `hospital`, `time_filter`, `ranking_number`, `author`, `type`, `online`, `company`, `created`, `updated_at`) VALUES
(420, NULL, NULL, '5555555', NULL, 180, NULL, NULL, 1, '2023-05-29', 0, 1, 'insurance', NULL, 1, '29-5-2023, 6:46 pm', '2023-05-29 18:46:48'),
(421, NULL, NULL, '5555555', NULL, NULL, NULL, NULL, 1, '2023-05-29', 0, 1, 'insurance', NULL, 1, '29-5-2023, 6:55 pm', NULL),
(422, NULL, NULL, '5555555', NULL, NULL, NULL, NULL, 1, '2023-05-29', 0, 1, 'insurance', NULL, 1, '29-5-2023, 7:00 pm', NULL),
(423, NULL, NULL, '5555555', NULL, NULL, NULL, NULL, 1, '2023-05-29', 0, 1, 'insurance', NULL, 1, '29-5-2023, 7:01 pm', NULL),
(424, NULL, NULL, '5555555', NULL, NULL, NULL, NULL, 1, '2023-05-29', 0, 1, 'insurance', NULL, 1, '29-5-2023, 7:01 pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `hospital` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service_provider`
--

CREATE TABLE `service_provider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `branch` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `class` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tax_record` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tax_registration_number` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `issuer` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `start` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `end` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `insurance_officer` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `insurance_officer_phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type_contract` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `discount` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `consultation_period` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `administrative_expenses` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `repayment_period` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bank_acount_number` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `insurance` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `balances` int(11) DEFAULT 0,
  `spent_balance` int(11) NOT NULL DEFAULT 0,
  `company` int(11) DEFAULT NULL,
  `insurance_company` int(11) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_provider`
--

INSERT INTO `service_provider` (`id`, `name`, `branch`, `class`, `tel`, `phone`, `email`, `fax`, `tax_record`, `tax_registration_number`, `issuer`, `city`, `address`, `start`, `end`, `insurance_officer`, `insurance_officer_phone`, `type_contract`, `discount`, `balance`, `consultation_period`, `administrative_expenses`, `repayment_period`, `bank`, `bank_acount_number`, `insurance`, `status`, `balances`, `spent_balance`, `company`, `insurance_company`, `updated_at`) VALUES
(3, 'مستشفي السلام', 'ايو المطامير', NULL, 'fffdddddd', '⁦505580553⁩', 'menaspoon73@gmail.com', 'fff', 'ef', 'df', 'df', 'alex', 'alex', '2023-06-02', '2024-06-02', 'qqqq', '7777777', 'فثف', '7', 1218, 'ييي', 'ييي', '57', 'بنك مصر', '66', '66', '66', 1000, 4100, 1, 1, '2023-08-18 16:42:35'),
(4, 'مستشفي الراعي', 'ايو المطامير', NULL, 'fff', '⁦505580553⁩', 'menaspoon73@gmail.com', 'fff', 'ef', 'df', 'df', 'alex', 'alex', '2023-06-02', NULL, 'qqqq', '7777777', NULL, NULL, 3700, NULL, NULL, '55', 'بنك مصر', '66', '66', '66', 0, 0, 1, 1, '2023-08-17 08:31:25'),
(5, 'معمل الامانة', 'ايو المطامير', NULL, 'fff', '⁦505580553⁩', 'menaspoon73@gmail.com', 'fff', 'ef', 'df', 'df', 'alex', 'alex', '2023-06-02', NULL, 'qqqq', '7777777', NULL, NULL, 3600, NULL, NULL, '55', 'بنك مصر', '66', '66', '66', 0, 600, 1, 1, '2023-08-18 16:44:31'),
(6, 'مستوصف الدوار', 'ايو المطامير', NULL, 'fff', '⁦505580553⁩', 'menaspoon73@gmail.com', 'fff', 'ef', 'df', 'df', 'alex', 'alex', '2023-06-02', NULL, 'qqqq', '7777777', NULL, NULL, 0, NULL, NULL, '55', 'بنك مصر', '66', '66', '66', 0, 3600, 1, 1, '2023-08-18 16:43:20');

-- --------------------------------------------------------

--
-- Table structure for table `service_provider_installments`
--

CREATE TABLE `service_provider_installments` (
  `id` int(11) NOT NULL,
  `provider` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `insurance_company` int(11) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `created` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_provider_installments`
--

INSERT INTO `service_provider_installments` (`id`, `provider`, `balance`, `hospital`, `insurance_company`, `agent`, `created`) VALUES
(9, 3, 1000, NULL, 1, 'احمد السيد', '2023-08-18'),
(10, 3, 100, NULL, 1, 'احمد السيد', '2023-08-18'),
(11, 3, 100, NULL, 1, 'احمد السيد', '2023-08-18'),
(12, 5, 600, NULL, 1, 'احمد السيد', '2023-08-19');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `hospital` int(11) DEFAULT NULL,
  `service_cost` int(11) DEFAULT NULL,
  `discount_percentage` int(11) DEFAULT NULL,
  `taxes` int(11) DEFAULT NULL,
  `receive_payments` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `notification_balance` int(11) DEFAULT 1000,
  `notification_count_pharmacy` int(11) DEFAULT 100,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `hospital`, `service_cost`, `discount_percentage`, `taxes`, `receive_payments`, `notification_balance`, `notification_count_pharmacy`, `updated_at`) VALUES
(1, 1, 10, 3, 1, 'booking', 2000, NULL, '2022-11-20 19:39:29');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `balance` int(11) DEFAULT 0,
  `discount_percentage` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `email`, `phone`, `address`, `balance`, `discount_percentage`, `hospital`, `updated_at`) VALUES
(1, 'Mena Saleep', 'menaspoon73@gmail.com', '2233445544', 'alexffffff', 11, 1, 1, '2022-11-28 07:33:30'),
(2, 'شركة ميديا تك للمستلزمات الطبية', 'mena@gmail.com', '2233445544', 'alex', 0, 1, 1, '2022-11-29 09:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `surgery`
--

CREATE TABLE `surgery` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `service_provider` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `insurance_company` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surgery`
--

INSERT INTO `surgery` (`id`, `name`, `category`, `service_provider`, `price`, `insurance_company`, `hospital`, `updated_at`, `created_at`) VALUES
(35, 'عملية قلب مفتوح', NULL, NULL, 200, 1, NULL, '2023-07-27 07:42:46', '2023-07-27 07:42:46'),
(36, 'عملية بواسير', NULL, NULL, 20, 1, NULL, '2023-07-27 07:42:46', '2023-07-27 07:42:46'),
(37, 'عملية استخراج خوراج', NULL, NULL, 10, 1, NULL, '2023-07-27 07:42:46', '2023-07-27 07:42:46');

-- --------------------------------------------------------

--
-- Table structure for table `surgery_approve_company`
--

CREATE TABLE `surgery_approve_company` (
  `id` int(11) NOT NULL,
  `item` int(11) DEFAULT NULL,
  `precent` int(11) DEFAULT 100,
  `company` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surgery_approve_company`
--

INSERT INTO `surgery_approve_company` (`id`, `item`, `precent`, `company`, `hospital`, `updated_at`) VALUES
(6, 3, 100, 1, 1, NULL),
(7, 5, 100, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `surgery_booking`
--

CREATE TABLE `surgery_booking` (
  `id` int(11) NOT NULL,
  `medical_examination` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `name` int(11) DEFAULT NULL,
  `doctor` int(11) NOT NULL DEFAULT 0,
  `created` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surgery_booking`
--

INSERT INTO `surgery_booking` (`id`, `medical_examination`, `price`, `name`, `doctor`, `created`, `time`, `hospital`, `status`, `updated_at`) VALUES
(8, 3, 4000999, 164, 0, '2023-05-6', NULL, 1, 'ok', NULL),
(9, 2, 100, 165, 0, '2023-05-7', NULL, 1, 'ok', NULL),
(10, 2, 100, 166, 0, '2023-05-7', NULL, 1, 'ok', NULL),
(11, 3, 4000999, 167, 0, '2023-05-7', NULL, 1, 'ok', NULL),
(12, 3, 4000999, 168, 0, '2023-05-7', NULL, 1, 'ok', NULL),
(13, 3, 4000999, 169, 0, '2023-05-7', NULL, 1, 'ok', NULL),
(14, 3, 4000999, 170, 0, '2023-05-7', NULL, 1, 'ok', NULL),
(15, 3, 4000999, 171, 0, '2023-05-7', NULL, 1, 'ok', NULL),
(16, 3, 4000999, 172, 0, '2023-05-7', NULL, 1, 'ok', NULL),
(17, 3, 4000999, 173, 0, '2023-05-7', NULL, 1, 'ok', NULL),
(18, 3, 4000999, 174, 0, '2023-05-7', NULL, 1, 'ok', NULL),
(19, 3, 4000999, 175, 0, '2023-05-7', NULL, 1, 'ok', NULL),
(20, 3, 4000999, 176, 0, '2023-05-7', NULL, 1, 'ok', NULL),
(21, 2, 100, 177, 5, '2023-05-7', NULL, 1, 'ok', '2023-05-29 06:16:23'),
(22, 5, 2000, 411, 5, '2023-05-29', NULL, 1, 'ok', '2023-05-29 07:19:52'),
(23, 5, 2000, 412, 5, '2023-05-29', NULL, 1, 'ok', '2023-05-29 07:31:10'),
(24, 5, 2000, 413, 19, '2023-05-29', NULL, 1, 'ok', '2023-05-29 07:35:16'),
(25, 5, 2000, 414, 5, '2023-05-29', NULL, 1, 'ok', '2023-05-29 07:55:22'),
(26, 5, 2000, 415, 5, '2023-05-29', NULL, 1, 'ok', '2023-05-29 08:03:14'),
(27, 5, 2000, 416, 12, '2023-05-29', NULL, 1, 'ok', '2023-05-29 08:11:48'),
(28, 5, 2000, 417, 12, '2023-05-29', NULL, 1, 'ok', '2023-05-29 08:42:52'),
(29, 5, 2000, 418, 12, '2023-05-29', NULL, 1, 'ok', '2023-05-29 08:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `surgery_department`
--

CREATE TABLE `surgery_department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surgery_department`
--

INSERT INTO `surgery_department` (`id`, `name`, `hospital`, `updated_at`) VALUES
(1, 'قسم عمليات الطوارئ', 1, '2023-05-29 06:31:49'),
(4, 'احمد علاء', 1, NULL),
(5, 'test', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

CREATE TABLE `tools` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tools`
--

INSERT INTO `tools` (`id`, `name`, `count`, `price`, `hospital`, `updated_at`) VALUES
(1, 'Mena Saleep fffffffffff', 66, NULL, 1, '2023-02-26 23:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `tools_purchases`
--

CREATE TABLE `tools_purchases` (
  `id` int(11) NOT NULL,
  `invoice_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `operation_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `supplier` int(255) DEFAULT NULL,
  `discount` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `paid_up` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `total_due` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created` varchar(255) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tools_purchases`
--

INSERT INTO `tools_purchases` (`id`, `invoice_type`, `operation_type`, `supplier`, `discount`, `paid_up`, `total_due`, `created`, `hospital`, `user_id`, `updated_at`) VALUES
(35, 'purchases', '0', 1, NULL, NULL, NULL, NULL, 1, '1', NULL),
(36, 'purchases', '0', 1, NULL, NULL, NULL, NULL, 1, '1', NULL),
(37, 'purchases', '0', 1, NULL, NULL, NULL, NULL, 1, '1', NULL),
(38, 'purchases', '0', 1, NULL, NULL, NULL, NULL, 1, '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tools_purchases_details`
--

CREATE TABLE `tools_purchases_details` (
  `id` int(11) NOT NULL,
  `product` varchar(255) DEFAULT NULL,
  `count` varchar(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tools_purchases_details`
--

INSERT INTO `tools_purchases_details` (`id`, `product`, `count`, `price`, `invoice_id`, `hospital`, `user_id`) VALUES
(1, '2', '10', 10, 5, 1, NULL),
(2, '2', '10', 10, 6, 1, NULL),
(3, '2', '10', 10, 7, 1, NULL),
(4, '2', '10', 10, 8, 1, NULL),
(5, '2', '10', 10, 9, 1, NULL),
(6, '2', '10', 10, 10, 1, NULL),
(7, '2', '10', 10, 11, 1, NULL),
(8, '2', '10', 10, 12, 1, NULL),
(9, '2', '10', 10, 13, 1, NULL),
(10, '2', '10', 10, 14, 1, NULL),
(11, '3', '10', 10, 15, 1, NULL),
(12, '4', '10', 90, 15, 1, NULL),
(13, '3', '10', 10, 16, 1, NULL),
(14, '4', '10', 90, 16, 1, NULL),
(15, '3', '10', 10, 17, 1, NULL),
(16, '4', '10', 90, 17, 1, NULL),
(17, '3', '10', 10, 18, 1, NULL),
(18, '4', '10', 90, 18, 1, NULL),
(19, '3', '10', 10, 19, 1, NULL),
(20, '4', '10', 90, 19, 1, NULL),
(21, '2', '11', 11, 20, 1, NULL),
(22, '2', '11', 11, 21, 1, NULL),
(23, '2', '11', 11, 22, 1, NULL),
(24, '2', '1000', 10, 23, 1, NULL),
(25, '2', '11', 11, 24, 1, NULL),
(26, '2', '11', 11, 25, 1, NULL),
(27, '2', '11', 11, 26, 1, NULL),
(28, '2', '11', 11, 27, 1, NULL),
(29, '2', '11', 11, 28, 1, NULL),
(30, '1', '11', 11, 38, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `insurance_company` int(11) DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `acount` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `text_password`, `hospital`, `insurance_company`, `picture`, `acount`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mena Saleep', 'menaspoon73@gmail.com', '01000000000008888', NULL, '$2y$10$kAdfwjETIlCCEsu696hLwuOAx1QiwHYIIEOUrh/jgbv6HsQVq/ul6', '12345678', 1, 1, '1668581687.jpg', 'doctor', NULL, '2022-11-04 14:47:05', '2023-07-24 13:24:37'),
(5, 'محمد ونيس', 'wanies@gmail.com', '2233445544', NULL, '$2y$10$OCSClyR3i/CDm7XhcYJazuCXK8q.EENhSlWmOlnVc4CU09lNfYS7W', '12345678', 1, NULL, NULL, 'doctor', NULL, NULL, NULL),
(6, 'الجندي اسامة بركات', 'osama@gmail.com', '0100000000', NULL, '$2y$10$/Y/cs9KwLk41HsWXaaGWdeL.dFG4FJJvnB9bDphP1YZO5XrD5fn7q', '12345678', 1, NULL, NULL, 'doctor', NULL, NULL, NULL),
(8, 'محمد الشامي', 'menaspoon373@gmail.com', '2233445544', NULL, '$2y$10$tFE2YkzU3k17zQfbv7/g0.M1T6PGtk3KTHrTvPBKOCcIIMpk9ojlO', '12345678', 1, 1, '1668614442.webp', 'credit_officer', NULL, NULL, '2022-11-16 14:00:42'),
(9, 'موظف', 'mail@gmail.com', '454456', NULL, '', NULL, 1, NULL, NULL, 'employee', NULL, NULL, NULL),
(10, 'Mena Saleep', 'ahmed@gmail.com', '0100000000', NULL, '$2y$10$/khQ8CU.BSgBHV8MQnfG1eVCPwIaQ42VU5uyiQh48ReFflhKluIdO', '12345678', 1, NULL, NULL, 'doctor', NULL, NULL, NULL),
(12, 'Mena Saleep', 'ahmed@ddddgmail.com', '2233445544', NULL, '$2y$10$aisXiQxtBXtlM9iyQgZWGupNCI/7cdVAjlUqIveVCV1gnxfQ5qEeC', '12345678', 1, NULL, NULL, 'doctor', NULL, NULL, NULL),
(14, 'Mena Saleep', 'ahmed@gmhhail.com', '0100000000', NULL, '$2y$10$HYYMBOMCrHDeTGE/CiDsQezzTTYzGJY8dlQ5v3PWV2eAddfU3.aSe', '12345678', 1, NULL, NULL, 'doctor', NULL, NULL, NULL),
(16, 'Mena Saleep', 'ahmeddd@gmail.com', '0100000000', NULL, '$2y$10$h8rOLAHz7myqhuXehSqIkepMCKisRbOnQWcozwxSBAW9T3j9zL9Da', '12345678', 1, NULL, NULL, 'doctor', NULL, NULL, NULL),
(17, 'Mena Saleep', 'ghghahmed@gmail.com', '0100000000', NULL, '$2y$10$93hlFLvRMaZkbHsUfOpbAeYFQFrL26B31Kkcs5kvjcnW/NGfzRtoO', '12345678', 1, NULL, NULL, 'doctor', NULL, NULL, NULL),
(18, 'Mena Saleep', 'ahhhmed@gmail.com', '0100000000', NULL, '$2y$10$flphu8KSo2kzG4t6.5i9audtvvXsSToCBTzHFBXmSTvzDtdI/oKh6', '12345678', 1, NULL, NULL, 'doctor', NULL, NULL, NULL),
(19, 'Mena Saleepf', 'ffahmed@gmail.com', '0100000000', NULL, '$2y$10$0Ab4NZU7xq4GbGeq3f9Sjea7jYuJzzIKC8yJb6Md7gw6pE5LMxdwS', '12345678', 1, NULL, NULL, 'doctor', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vacation`
--

CREATE TABLE `vacation` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `start` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `end` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `reason` text CHARACTER SET utf8 DEFAULT NULL,
  `note` text CHARACTER SET utf8 DEFAULT NULL,
  `note_admin` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hospital` int(11) DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vacation`
--

INSERT INTO `vacation` (`id`, `user`, `start`, `end`, `reason`, `note`, `note_admin`, `status`, `created`, `date`, `hospital`, `updated_at`) VALUES
(1, 1, '2023-03-17', '2023-03-23', 'fffffffffff', 'ccccccccccccc', 'ff', 'done', 'March 17, 2023, 12:07 am', '17-3-2023', 1, '2023-03-17 01:20:30'),
(2, 1, '2023-03-02', '2023-03-23', 'ي', 'يي', NULL, 'wating', 'March 17, 2023, 1:17 am', '17-3-2023', 1, NULL),
(3, 1, '2023-03-10', '2023-03-31', 'متعب', 'متعب جدا', 'بب', 'suspension', 'March 17, 2023, 1:25 am', '17-3-2023', 1, '2023-03-17 01:25:24'),
(4, 1, '2023-03-18', '2023-03-30', 'اجازة', 'اجازة', 'قفق', 'rejected', 'March 17, 2023, 1:30 am', '17-3-2023', 1, '2023-03-17 01:30:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absence`
--
ALTER TABLE `absence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `analytics`
--
ALTER TABLE `analytics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `analytics_approve_company`
--
ALTER TABLE `analytics_approve_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `analytics_booking`
--
ALTER TABLE `analytics_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `analytics_company`
--
ALTER TABLE `analytics_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `analytics_department`
--
ALTER TABLE `analytics_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approve`
--
ALTER TABLE `approve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approve_public`
--
ALTER TABLE `approve_public`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approve_service_details`
--
ALTER TABLE `approve_service_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `corporate_premiums`
--
ALTER TABLE `corporate_premiums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degree_of_residence`
--
ALTER TABLE `degree_of_residence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency`
--
ALTER TABLE `emergency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_approve_company`
--
ALTER TABLE `emergency_approve_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_booking`
--
ALTER TABLE `emergency_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_department`
--
ALTER TABLE `emergency_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intensive_care`
--
ALTER TABLE `intensive_care`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intensive_care_approve_company`
--
ALTER TABLE `intensive_care_approve_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intensive_care_booking`
--
ALTER TABLE `intensive_care_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intensive_care_department`
--
ALTER TABLE `intensive_care_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_buying_medicines`
--
ALTER TABLE `invoice_buying_medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_detales_buying_medicines`
--
ALTER TABLE `invoice_detales_buying_medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_examination`
--
ALTER TABLE `medical_examination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_examination_approve_company`
--
ALTER TABLE `medical_examination_approve_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_examination_booking`
--
ALTER TABLE `medical_examination_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_network`
--
ALTER TABLE `medical_network`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger`
--
ALTER TABLE `messenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
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
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_department`
--
ALTER TABLE `pharmacy_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `physical_therapy`
--
ALTER TABLE `physical_therapy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `physical_therapy_approve_company`
--
ALTER TABLE `physical_therapy_approve_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `physical_therapy_booking`
--
ALTER TABLE `physical_therapy_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `physical_therapy_department`
--
ALTER TABLE `physical_therapy_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pool`
--
ALTER TABLE `pool`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pool_plan`
--
ALTER TABLE `pool_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pool_service`
--
ALTER TABLE `pool_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_receive`
--
ALTER TABLE `product_receive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quartering`
--
ALTER TABLE `quartering`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quartering_approve_company`
--
ALTER TABLE `quartering_approve_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quartering_booking`
--
ALTER TABLE `quartering_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quartering_department`
--
ALTER TABLE `quartering_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ray`
--
ALTER TABLE `ray`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ray_approve_company`
--
ALTER TABLE `ray_approve_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ray_booking`
--
ALTER TABLE `ray_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ray_department`
--
ALTER TABLE `ray_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recepion`
--
ALTER TABLE `recepion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_provider`
--
ALTER TABLE `service_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_provider_installments`
--
ALTER TABLE `service_provider_installments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surgery`
--
ALTER TABLE `surgery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surgery_approve_company`
--
ALTER TABLE `surgery_approve_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surgery_booking`
--
ALTER TABLE `surgery_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surgery_department`
--
ALTER TABLE `surgery_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tools_purchases`
--
ALTER TABLE `tools_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tools_purchases_details`
--
ALTER TABLE `tools_purchases_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vacation`
--
ALTER TABLE `vacation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absence`
--
ALTER TABLE `absence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `analytics`
--
ALTER TABLE `analytics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `analytics_approve_company`
--
ALTER TABLE `analytics_approve_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `analytics_booking`
--
ALTER TABLE `analytics_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `analytics_company`
--
ALTER TABLE `analytics_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `analytics_department`
--
ALTER TABLE `analytics_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `approve`
--
ALTER TABLE `approve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `approve_public`
--
ALTER TABLE `approve_public`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT for table `approve_service_details`
--
ALTER TABLE `approve_service_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `corporate_premiums`
--
ALTER TABLE `corporate_premiums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `degree_of_residence`
--
ALTER TABLE `degree_of_residence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `emergency`
--
ALTER TABLE `emergency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `emergency_approve_company`
--
ALTER TABLE `emergency_approve_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `emergency_booking`
--
ALTER TABLE `emergency_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `emergency_department`
--
ALTER TABLE `emergency_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `intensive_care`
--
ALTER TABLE `intensive_care`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `intensive_care_approve_company`
--
ALTER TABLE `intensive_care_approve_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `intensive_care_booking`
--
ALTER TABLE `intensive_care_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `intensive_care_department`
--
ALTER TABLE `intensive_care_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice_buying_medicines`
--
ALTER TABLE `invoice_buying_medicines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `invoice_detales_buying_medicines`
--
ALTER TABLE `invoice_detales_buying_medicines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `medical_examination`
--
ALTER TABLE `medical_examination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `medical_examination_approve_company`
--
ALTER TABLE `medical_examination_approve_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `medical_examination_booking`
--
ALTER TABLE `medical_examination_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=414;

--
-- AUTO_INCREMENT for table `medical_network`
--
ALTER TABLE `medical_network`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messenger`
--
ALTER TABLE `messenger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=644;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacy`
--
ALTER TABLE `pharmacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pharmacy_department`
--
ALTER TABLE `pharmacy_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `physical_therapy`
--
ALTER TABLE `physical_therapy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `physical_therapy_approve_company`
--
ALTER TABLE `physical_therapy_approve_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `physical_therapy_booking`
--
ALTER TABLE `physical_therapy_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `physical_therapy_department`
--
ALTER TABLE `physical_therapy_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pool`
--
ALTER TABLE `pool`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pool_plan`
--
ALTER TABLE `pool_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pool_service`
--
ALTER TABLE `pool_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_receive`
--
ALTER TABLE `product_receive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quartering`
--
ALTER TABLE `quartering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `quartering_approve_company`
--
ALTER TABLE `quartering_approve_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quartering_booking`
--
ALTER TABLE `quartering_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `quartering_department`
--
ALTER TABLE `quartering_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ray`
--
ALTER TABLE `ray`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ray_approve_company`
--
ALTER TABLE `ray_approve_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ray_booking`
--
ALTER TABLE `ray_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `ray_department`
--
ALTER TABLE `ray_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `recepion`
--
ALTER TABLE `recepion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_provider`
--
ALTER TABLE `service_provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `service_provider_installments`
--
ALTER TABLE `service_provider_installments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `surgery`
--
ALTER TABLE `surgery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `surgery_approve_company`
--
ALTER TABLE `surgery_approve_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `surgery_booking`
--
ALTER TABLE `surgery_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `surgery_department`
--
ALTER TABLE `surgery_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tools`
--
ALTER TABLE `tools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tools_purchases`
--
ALTER TABLE `tools_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tools_purchases_details`
--
ALTER TABLE `tools_purchases_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `vacation`
--
ALTER TABLE `vacation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
