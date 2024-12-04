-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2024 at 05:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payroll`
--

-- --------------------------------------------------------

--
-- Table structure for table `allowances`
--

CREATE TABLE `allowances` (
  `id` int(30) NOT NULL,
  `allowance` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allowances`
--

INSERT INTO `allowances` (`id`, `allowance`, `description`) VALUES
(3, 'Rice', 'Rice Allowance'),
(5, 'Clothing Allowance', 'Clothing Allowance'),
(6, 'PERA', 'PERA'),
(7, 'RATA', 'RATA'),
(8, 'Christmas Bonus', 'Christmas Bonus');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `employee_id` int(20) NOT NULL,
  `log_type` tinyint(1) NOT NULL COMMENT '1 = AM IN,2 = AM out, 3= PM IN, 4= PM out\r\n',
  `datetime_log` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `employee_id`, `log_type`, `datetime_log`, `date_updated`) VALUES
(155, 72, 2, '2023-09-03 08:06:30', '0000-00-00 00:00:00'),
(158, 72, 2, '2023-09-03 08:22:47', '0000-00-00 00:00:00'),
(160, 72, 2, '2023-09-03 10:39:55', '0000-00-00 00:00:00'),
(162, 72, 2, '2023-09-03 11:03:38', '0000-00-00 00:00:00'),
(166, 72, 4, '2023-09-03 13:07:22', '0000-00-00 00:00:00'),
(168, 72, 4, '2023-09-03 13:12:15', '0000-00-00 00:00:00'),
(170, 570, 4, '2023-09-03 13:30:37', '0000-00-00 00:00:00'),
(171, 570, 4, '2023-09-03 13:48:51', '0000-00-00 00:00:00'),
(173, 570, 4, '2023-09-03 14:50:52', '0000-00-00 00:00:00'),
(175, 72, 4, '2023-09-03 19:14:55', '0000-00-00 00:00:00'),
(177, 570, 4, '2023-09-03 19:27:01', '0000-00-00 00:00:00'),
(178, 72, 4, '2023-09-03 20:03:05', '0000-00-00 00:00:00'),
(180, 581, 4, '2023-09-03 21:44:30', '0000-00-00 00:00:00'),
(181, 581, 1, '2023-09-04 05:44:04', '0000-00-00 00:00:00'),
(182, 742, 2, '2023-09-04 07:28:20', '0000-00-00 00:00:00'),
(183, 570, 2, '2023-09-04 07:32:49', '0000-00-00 00:00:00'),
(184, 581, 2, '2023-09-04 07:36:00', '0000-00-00 00:00:00'),
(185, 742, 2, '2023-09-04 07:39:30', '0000-00-00 00:00:00'),
(186, 742, 2, '2023-09-04 09:29:53', '0000-00-00 00:00:00'),
(187, 742, 2, '2023-09-04 09:30:05', '0000-00-00 00:00:00'),
(188, 581, 3, '2023-09-04 13:09:32', '0000-00-00 00:00:00'),
(189, 742, 4, '2023-09-04 16:29:28', '0000-00-00 00:00:00'),
(190, 742, 4, '2023-09-04 17:45:04', '0000-00-00 00:00:00'),
(191, 126, 1, '2023-12-01 08:00:00', '2023-12-05 10:57:15'),
(192, 126, 2, '2023-12-01 12:00:00', '2023-12-05 10:57:15'),
(193, 126, 3, '2023-12-01 13:00:00', '2023-12-05 10:57:15'),
(194, 126, 4, '2023-12-01 17:00:00', '2023-12-05 10:57:15'),
(195, 990, 1, '2023-12-01 08:00:00', '2023-12-05 10:58:26'),
(196, 990, 2, '2023-12-01 12:00:00', '2023-12-05 10:58:26'),
(197, 990, 3, '2023-12-01 13:00:00', '2023-12-05 10:58:26'),
(198, 990, 4, '2023-12-01 18:00:00', '2023-12-05 10:58:26'),
(205, 126, 1, '2023-12-08 08:00:00', '2023-12-12 20:10:44'),
(206, 126, 2, '2023-12-08 12:00:00', '2023-12-12 20:10:44'),
(207, 126, 3, '2023-12-08 13:00:00', '2023-12-12 20:10:44'),
(209, 126, 4, '2023-12-08 21:00:00', '2023-12-15 23:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `id` int(30) NOT NULL,
  `deduction` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deductions`
--

INSERT INTO `deductions` (`id`, `deduction`, `description`) VALUES
(1, 'SSS Contribution', 'SSS Contribution'),
(2, 'HDMF Contribution', 'Home Development Mutual Fund Contribution'),
(3, 'Philhealth Contribution', 'Philhealth Contrubution');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`) VALUES
(1, 'IT'),
(2, 'Finance'),
(3, 'Sales'),
(4, 'Accounting'),
(5, 'Human Resources'),
(6, 'Engineering'),
(7, 'Marketing');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `employee_no` text NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `sex` text NOT NULL,
  `civil_status` text NOT NULL,
  `birth_date` date NOT NULL,
  `phone` int(11) NOT NULL,
  `employee_image` text DEFAULT NULL,
  `id_type` text DEFAULT NULL,
  `id_number` text DEFAULT NULL,
  `id_card_image` text DEFAULT NULL,
  `position_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `salary` double DEFAULT NULL,
  `salary_type` text DEFAULT NULL,
  `residence_address` text DEFAULT NULL,
  `residence_location` text DEFAULT NULL,
  `residence_direction` text DEFAULT NULL,
  `residence_gps` text DEFAULT NULL,
  `next_of_kin` text DEFAULT NULL,
  `relationship` text DEFAULT NULL,
  `phone_of_kin` text DEFAULT NULL,
  `kin_residence` text DEFAULT NULL,
  `kin_residence_direction` text DEFAULT NULL,
  `date_employed` date NOT NULL,
  `pay_type` text DEFAULT NULL,
  `status` text NOT NULL,
  `tin` text DEFAULT NULL,
  `sss_no` text DEFAULT NULL,
  `hdmf_no` text DEFAULT NULL,
  `philhealth_no` text DEFAULT NULL,
  `bank_acct_no` text DEFAULT NULL,
  `tax_exempt` text DEFAULT NULL,
  `biometric_id` text DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `employee_no`, `firstname`, `middlename`, `lastname`, `sex`, `civil_status`, `birth_date`, `phone`, `employee_image`, `id_type`, `id_number`, `id_card_image`, `position_id`, `department_id`, `salary`, `salary_type`, `residence_address`, `residence_location`, `residence_direction`, `residence_gps`, `next_of_kin`, `relationship`, `phone_of_kin`, `kin_residence`, `kin_residence_direction`, `date_employed`, `pay_type`, `status`, `tin`, `sss_no`, `hdmf_no`, `philhealth_no`, `bank_acct_no`, `tax_exempt`, `biometric_id`, `shift_id`) VALUES
(126, 'E00013', 'Elena', '', 'Vang', 'Female', '', '1975-04-11', 0, '', '', '', '', 8, 7, 27930, 'monthly', '', '', '', '', '', '', '', '', '', '2019-02-19', '', 'contractual', '000-472-642-502', '21-13541187-3', '520279272431', '13-106716784-9', '', '', '69174', 2),
(990, 'E00005', 'Riley', '', 'Washington', 'Female', 'Married', '1987-03-13', 0, '', '', '', '', 9, 6, 85744, 'monthly', '', '', '', '', 'Robert', '', '', '', '', '2007-04-29', '', 'contractual', '000-866-431-494', '89-70062669-5', '442871682371', '28-311515057-9', '1223456', '', '53749', 2),
(1002, '12345', 'Noli', '', 'Bohol', 'Male', 'Married', '2024-01-18', 2147483647, '', '', '', '', 19, 6, 70000, 'monthly', '', '', '', '', '', '', '', '', '', '2024-01-05', '', 'permanent', '', '', '', '', '', NULL, '', 2),
(1003, '2024-1185', 'Rufel', '', 'Aganan', 'Male', 'Married', '2024-01-19', 2147483647, '', '', '', '', 4, 1, 70000, 'monthly', '', '', '', '', '', '', '', '', '', '2024-01-17', '', 'permanent', '', '', '', '', '', NULL, '', 2),
(1004, '2024-6251', 'Robert', '', 'Dusit', 'Male', 'Married', '2024-01-18', 345234523, '', '', '', '', 26, 6, 60000, 'monthly', '', '', '', '', '', '', '', '', '', '2024-01-12', '', 'casual', '', '', '', '', '', NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee_allowances`
--

CREATE TABLE `employee_allowances` (
  `id` int(30) NOT NULL,
  `employee_id` int(30) NOT NULL,
  `allowance_id` int(30) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1 = Monthly, 2= Semi-Montly, 3 = once',
  `amount` float NOT NULL,
  `effective_date` date NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_allowances`
--

INSERT INTO `employee_allowances` (`id`, `employee_id`, `allowance_id`, `type`, `amount`, `effective_date`, `date_created`) VALUES
(1, 1, 4, 1, 1000, '0000-00-00', '2020-09-29 11:20:04'),
(3, 1, 3, 2, 300, '0000-00-00', '2020-09-29 11:37:31'),
(5, 1, 1, 3, 1000, '2020-09-16', '2020-09-29 11:38:31'),
(6, 1, 5, 3, 15000, '2024-01-01', '2023-09-19 10:54:44'),
(7, 1002, 3, 1, 500, '0000-00-00', '2024-01-03 22:58:31'),
(8, 1002, 8, 3, 30000, '2023-12-16', '2024-01-13 23:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `employee_deductions`
--

CREATE TABLE `employee_deductions` (
  `id` int(30) NOT NULL,
  `employee_id` int(30) NOT NULL,
  `deduction_id` int(30) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1 = Monthly, 2= Semi-Montly, 3 = once',
  `effective_date` date NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `employee_amount` float DEFAULT NULL,
  `employer_amount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_deductions`
--

INSERT INTO `employee_deductions` (`id`, `employee_id`, `deduction_id`, `type`, `effective_date`, `date_created`, `employee_amount`, `employer_amount`) VALUES
(12, 1, 1, 2, '0000-00-00', '2023-10-17 09:03:03', 200, 300),
(13, 1, 2, 2, '0000-00-00', '2023-10-17 09:27:12', 120, 200),
(22, 126, 1, 1, '0000-00-00', '2024-01-02 20:58:09', 1260, 2690),
(25, 990, 2, 1, '0000-00-00', '2024-01-02 21:00:10', 1714.88, 1714.88),
(26, 126, 2, 1, '0000-00-00', '2024-01-02 21:00:33', 558.6, 558.6),
(27, 126, 3, 1, '0000-00-00', '2024-01-02 21:00:44', 1256.85, 1256.85),
(38, 1003, 2, 2, '0000-00-00', '2024-01-13 22:40:54', 1400, 1400),
(39, 1002, 1, 2, '0000-00-00', '2024-01-13 22:58:54', 675, 1440),
(40, 1002, 3, 2, '0000-00-00', '2024-01-13 23:41:20', 1575, 1575),
(41, 1002, 2, 2, '0000-00-00', '2024-01-13 23:41:20', 700, 700);

-- --------------------------------------------------------

--
-- Table structure for table `employee_meta`
--

CREATE TABLE `employee_meta` (
  `user_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_meta`
--

INSERT INTO `employee_meta` (`user_id`, `meta_field`, `meta_value`, `date_created`) VALUES
(1, 'employee_id', '2023-3869', '2021-08-21 14:48:00'),
(1, 'approver', 'on', '2021-08-21 14:48:00'),
(1, 'leave_type_ids', '3,2,1', '2021-08-21 14:48:06'),
(1, 'leave_type_credits', '{\"3\":\"365\",\"2\":\"5\",\"1\":\"10\"}', '2021-08-21 14:48:06');

-- --------------------------------------------------------

--
-- Table structure for table `hdmf_table_list`
--

CREATE TABLE `hdmf_table_list` (
  `Id` int(11) NOT NULL,
  `range_from` double DEFAULT NULL,
  `range_to` double DEFAULT NULL,
  `employee_percent` float DEFAULT NULL,
  `employer_percent` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hdmf_table_list`
--

INSERT INTO `hdmf_table_list` (`Id`, `range_from`, `range_to`, `employee_percent`, `employer_percent`) VALUES
(2, 1000, 1500, 2, 1),
(3, 1500.01, 999999, 2, 2),
(7, 0, 1000, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(11) NOT NULL,
  `holiday_date` date DEFAULT NULL,
  `holiday_name` text DEFAULT NULL,
  `type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `holiday_date`, `holiday_name`, `type`) VALUES
(1, '2023-01-01', 'New Years Day', 1),
(2, '2023-04-06', 'Maundy Thursay', 1),
(3, '2023-04-07', 'Good Friday', 1),
(4, '2023-04-10', 'Araw ng Kagitingan', 1),
(5, '2023-04-21', 'Feast of Ramadan', 1),
(6, '2023-05-01', 'Labor Day', 1),
(7, '2023-06-12', 'Independence Day', 1),
(8, '2023-06-28', 'Feast of Sacrifice', 1),
(9, '2023-08-28', 'National Heroes Day', 1),
(10, '2023-11-27', 'Bonifacio Day', 1),
(11, '2023-12-25', 'Christmas Day', 1),
(12, '2023-12-30', 'Rizal Day', 1),
(13, '2023-02-24', 'EDSA People Power Revolution Anniversary', 2),
(14, '2023-04-08', 'Black Saturday', 2),
(15, '2023-08-21', 'Ninoy Aquino Day ', 2),
(16, '2023-11-01', 'All Saints Day', 2),
(17, '2023-12-08', 'Feast of Immaculate Conception', 2),
(18, '2023-12-31', 'Last Day of the Year', 2),
(19, '2023-10-30', 'Barangay SK Elections', 2),
(20, '2023-11-02', 'All Souls Day', 2),
(21, '2024-01-09', 'Black Nazareth Parade', 2);

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `leave_type_id` int(30) DEFAULT NULL,
  `reason` text NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `type` tinyint(1) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending,1=approved, 2=denied,3=cancelled',
  `approved_by` int(30) DEFAULT NULL,
  `leave_days` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leave_applications`
--

INSERT INTO `leave_applications` (`id`, `user_id`, `leave_type_id`, `reason`, `date_start`, `date_end`, `type`, `status`, `approved_by`, `leave_days`, `date_created`, `date_updated`) VALUES
(5, 1, 3, 'test', '2023-10-11 00:00:00', '2023-10-11 00:00:00', 1, 0, NULL, 1, '2023-10-11 23:36:26', NULL),
(6, 1, 3, 'test2', '2023-10-13 00:00:00', '2023-10-13 00:00:00', 1, 1, NULL, 1, '2023-10-11 23:37:44', '2023-10-12 22:54:09'),
(8, 126, 1, 'bnvbm', '2023-12-15 00:00:00', '2023-12-16 00:00:00', 1, 1, NULL, 2, '2023-12-26 18:43:16', '2024-01-04 11:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `default_credit` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `code`, `name`, `description`, `default_credit`, `status`, `date_created`, `date_updated`) VALUES
(1, 'VL', 'Vacation Leave', 'Vacation Leave with Pay', 10, 1, '2021-08-21 10:39:47', NULL),
(2, 'SL', 'Sick Leave', 'Leave type for calling sick with pay', 5, 1, '2021-08-21 13:48:03', NULL),
(3, 'LWOP', 'Leave w/o Pay', 'Leave w/o Pay', 999, 1, '2021-08-21 13:49:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `overtime_requests`
--

CREATE TABLE `overtime_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(30) NOT NULL,
  `workload` text NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending,1=approved, 2=denied,3=cancelled',
  `approved_by` int(30) DEFAULT NULL,
  `ot_days` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `overtime_requests`
--

INSERT INTO `overtime_requests` (`id`, `user_id`, `workload`, `date_start`, `date_end`, `status`, `approved_by`, `ot_days`, `date_created`, `date_updated`) VALUES
(5, 126, 'test', '2023-12-07 00:00:00', '2023-12-08 00:00:00', 1, NULL, 1, '2023-12-11 18:05:50', '2023-12-11 18:05:58'),
(6, 990, 'test', '2023-12-11 00:00:00', '2023-12-12 00:00:00', 1, NULL, 2, '2023-12-12 04:18:49', '2023-12-12 04:19:26'),
(11, 126, 'test', '2024-01-02 00:00:00', '2024-01-02 00:00:00', 1, NULL, 1, '2024-01-02 20:42:01', '2024-01-04 11:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `id` int(30) NOT NULL,
  `ref_no` text NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1 = monthly ,2 semi-monthly',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 =New,1 = computed',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`id`, `ref_no`, `date_from`, `date_to`, `type`, `status`, `date_created`) VALUES
(33, '2023-1051', '2023-09-01', '2023-09-15', 1, 1, '2023-11-14 17:24:55'),
(34, '2023-6044', '2023-09-16', '2023-09-30', 1, 1, '2023-11-17 21:52:40'),
(37, '2023-9322', '2023-10-01', '2023-10-15', 1, 1, '2023-12-05 10:34:39'),
(38, '2023-9100', '2023-10-16', '2023-10-31', 1, 1, '2023-12-05 10:42:13'),
(39, '2023-4168', '2023-12-01', '2023-12-15', 1, 1, '2023-12-05 10:58:52'),
(45, '2024-8517', '2023-12-16', '2023-12-31', 2, 1, '2024-01-13 22:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_items`
--

CREATE TABLE `payroll_items` (
  `id` int(30) NOT NULL,
  `payroll_id` int(30) NOT NULL,
  `employee_id` int(30) NOT NULL,
  `present` int(30) NOT NULL,
  `absent` int(10) NOT NULL,
  `late` text NOT NULL,
  `salary` double NOT NULL,
  `allowance_amount` double NOT NULL,
  `allowances` text NOT NULL,
  `deduction_amount` double NOT NULL,
  `deductions` text NOT NULL,
  `net` double DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `withholding_tax` double DEFAULT NULL,
  `gross` double DEFAULT NULL,
  `ot_pay` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payroll_items`
--

INSERT INTO `payroll_items` (`id`, `payroll_id`, `employee_id`, `present`, `absent`, `late`, `salary`, `allowance_amount`, `allowances`, `deduction_amount`, `deductions`, `net`, `date_created`, `withholding_tax`, `gross`, `ot_pay`) VALUES
(10143, 39, 126, 1, 21, '0', 27930, 0, '[]', 3075.45, '[{\"did\":\"1\",\"employee_amount\":\"1260\",\"employer_amount\":\"2690\"},{\"did\":\"2\",\"employee_amount\":\"558.6\",\"employer_amount\":\"558.6\"},{\"did\":\"3\",\"employee_amount\":\"1256.85\",\"employer_amount\":\"1256.85\"}]', 669.70909090909, '2024-01-14 23:27:54', 0, 669.70909090909, 2475.6136363636),
(10144, 39, 990, 1, 21, '0', 85744, 0, '[]', 1714.88, '[{\"did\":\"2\",\"employee_amount\":\"1714.88\",\"employer_amount\":\"1714.88\"}]', 2182.5745454545, '2024-01-14 23:27:54', 0, 2182.5745454545, 0),
(10145, 39, 1002, 0, 22, '0', 70000, 500, '[{\"aid\":\"3\",\"amount\":\"500\"}]', 0, '[]', 60624.95, '2024-01-14 23:27:54', 9375.05, 70500, 0),
(10146, 39, 1003, 0, 22, '0', 70000, 0, '[]', 0, '[]', 60624.95, '2024-01-14 23:27:54', 9375.05, 70000, 0),
(10147, 39, 1004, 0, 22, '0', 60000, 0, '[]', 0, '[]', 0, '2024-01-14 23:27:54', 0, 0, 0),
(10178, 45, 126, 0, 11, '0', 27930, 0, '[]', 0, '[]', 0, '2024-01-22 19:22:14', 0, 0, 0),
(10179, 45, 990, 0, 11, '0', 85744, 0, '[]', 0, '[]', 0, '2024-01-22 19:22:14', 0, 0, 0),
(10180, 45, 1002, 0, 11, '0', 70000, 30000, '[{\"aid\":\"8\",\"amount\":\"30000\"}]', 2950, '[{\"did\":\"1\",\"employee_amount\":\"675\",\"employer_amount\":\"1440\"},{\"did\":\"3\",\"employee_amount\":\"1575\",\"employer_amount\":\"1575\"},{\"did\":\"2\",\"employee_amount\":\"700\",\"employer_amount\":\"700\"}]', 28035.9, '2024-01-22 19:22:14', 4014.1, 62050, 0),
(10181, 45, 1003, 0, 11, '0', 70000, 0, '[]', 1400, '[{\"did\":\"2\",\"employee_amount\":\"1400\",\"employer_amount\":\"1400\"}]', 29262.55, '2024-01-22 19:22:14', 4337.45, 33600, 0),
(10182, 45, 1004, 0, 11, '0', 60000, 0, '[]', 0, '[]', 0, '2024-01-22 19:22:14', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phic_table_list`
--

CREATE TABLE `phic_table_list` (
  `Id` int(11) NOT NULL,
  `range_from` double DEFAULT NULL,
  `range_to` double DEFAULT NULL,
  `percentage_rate` double DEFAULT NULL,
  `monthly_premium` double DEFAULT NULL,
  `comp_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phic_table_list`
--

INSERT INTO `phic_table_list` (`Id`, `range_from`, `range_to`, `percentage_rate`, `monthly_premium`, `comp_type`) VALUES
(1, 0, 10000, 4.5, 450, 1),
(3, 80000, 9999999, 4.5, 4050, 1),
(4, 10000.01, 79999.99, 4.5, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(30) NOT NULL,
  `department_id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `department_id`, `name`) VALUES
(1, 7, 'Sr. Manger'),
(2, 1, 'Technical Architect'),
(3, 7, 'Director'),
(4, 1, 'Computer Systems Manager'),
(5, 1, 'Sr. Analyst'),
(6, 3, 'Account Representative'),
(7, 4, 'Manager'),
(8, 1, 'Analyst'),
(9, 1, 'Controls Engineer'),
(10, 2, 'Vice President'),
(11, 6, 'Quality Engineer'),
(12, 6, 'Engineering Manager'),
(13, 1, 'IT Coordinator'),
(14, 1, 'Analyst II'),
(15, 1, 'Enterprise Architect'),
(16, 2, 'Sr. Business Partner'),
(17, 5, 'HRIS Analyst'),
(18, 1, 'Field Engineer'),
(19, 6, 'Automation Engineer'),
(20, 6, 'Operations Engineer'),
(21, 2, 'Business Partner'),
(22, 1, 'Cloud Infrastructure Architect'),
(23, 1, 'Test Engineer'),
(24, 1, 'Network Architect'),
(25, 1, 'Network Engineer'),
(26, 1, 'Development Engineer'),
(27, 3, 'Sr. Account Representative'),
(28, 1, 'System Administrator?'),
(29, 1, 'Systems Analyst'),
(30, 1, 'Solutions Architect'),
(31, 1, 'IT Systems Architect'),
(32, 1, 'Service Desk Analyst'),
(33, 1, 'Network Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `first_start` time DEFAULT NULL,
  `first_end` time DEFAULT NULL,
  `second_start` time DEFAULT NULL,
  `second_end` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `name`, `first_start`, `first_end`, `second_start`, `second_end`) VALUES
(2, 'Day Shift ', '08:00:00', '00:00:00', '13:00:00', '17:00:00'),
(4, 'Mid Shift', '10:00:00', '14:00:00', '15:00:00', '19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sss_table_list`
--

CREATE TABLE `sss_table_list` (
  `Id` int(30) NOT NULL,
  `range_from` double DEFAULT NULL,
  `range_to` double DEFAULT NULL,
  `employee_amount` double DEFAULT NULL,
  `employer_amount` double DEFAULT NULL,
  `ec` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sss_table_list`
--

INSERT INTO `sss_table_list` (`Id`, `range_from`, `range_to`, `employee_amount`, `employer_amount`, `ec`) VALUES
(1, 0, 4249.99, 180, 390, 10),
(2, 4250, 4749.99, 202.5, 437.5, 10),
(3, 4750, 5249.99, 225, 485, 10),
(4, 5250, 5749.99, 247.5, 532.5, 10),
(5, 5750, 6249.99, 270, 580, 10),
(6, 6250, 6749.99, 292.5, 627.5, 10),
(7, 6750, 7249.99, 315, 675, 10),
(8, 7250, 7749.99, 337.5, 722.5, 10),
(9, 7750, 8249.99, 360, 770, 10),
(10, 8250, 8749.99, 382.5, 817.5, 10),
(11, 8750, 9249.99, 405, 865, 10),
(12, 9250, 9749.99, 427.5, 912.5, 10),
(13, 9750, 10249.99, 450, 960, 10),
(14, 10250, 10749.99, 472.5, 1007.5, 10),
(15, 10750, 11249.99, 495, 1055, 10),
(16, 11250, 11749.99, 517.5, 1102.5, 10),
(17, 11750, 12249.99, 540, 1150, 10),
(18, 12250, 12749.99, 562.5, 1197.5, 10),
(19, 12750, 13249.99, 585, 1245, 10),
(20, 13250, 13749.99, 607.5, 1292.5, 10),
(21, 13750, 14249.99, 630, 1340, 10),
(22, 14250, 14749.99, 652.5, 1387.5, 10),
(23, 14750, 15249.99, 675, 1455, 10),
(24, 15250, 15749.99, 697.5, 1502.5, 10),
(25, 15750, 16249.99, 720, 1550, 10),
(26, 16250, 16749.99, 742.5, 1597.5, 10),
(27, 16750, 17249.99, 765, 1645, 10),
(28, 17250, 17749.99, 787.5, 1692.5, 10),
(29, 17750, 18249.99, 810, 1740, 10),
(30, 18250, 18749.99, 832.5, 1787.5, 10),
(31, 18750, 19249.99, 855, 1835, 10),
(32, 19250, 19749.99, 877.5, 1882.5, 10),
(33, 19750, 20249.99, 900, 1930, 10),
(34, 20250, 20749.99, 922.5, 1977.5, 10),
(35, 20750, 21249.99, 945, 2025, 10),
(36, 21250, 21749.99, 967.5, 2072.5, 10),
(37, 21750, 22249.99, 990, 2120, 10),
(38, 22250, 22749.99, 1012.5, 2167.5, 10),
(39, 22750, 23249.99, 1035, 2215, 10),
(40, 23250, 23749.99, 1057.5, 2262.5, 10),
(41, 23750, 24249.99, 1080, 2310, 10),
(42, 24250, 24749.99, 1102.5, 2357.5, 10),
(43, 24750, 25249.99, 1125, 2405, 10),
(44, 25250, 25749.99, 1147.5, 2452.5, 10),
(45, 25750, 26249.99, 1170, 2500, 10),
(46, 26250, 26749.99, 1192.5, 2547.5, 10),
(47, 26750, 27249.99, 1215, 2595, 10),
(48, 27250, 27749.99, 1237.5, 2642.5, 10),
(49, 27750, 28249.99, 1260, 2690, 10),
(50, 28250, 28749.99, 1282.5, 2737.5, 10),
(51, 28750, 29249.99, 1305, 2785, 10),
(52, 29250, 29749.99, 1327.5, 2832.5, 10),
(53, 29750, 9999999, 1350, 2880, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tax_table_list`
--

CREATE TABLE `tax_table_list` (
  `payroll_type` int(11) NOT NULL DEFAULT 1,
  `range_from` double NOT NULL DEFAULT 0,
  `range_to` double NOT NULL DEFAULT 0,
  `fixed_tax` double NOT NULL DEFAULT 0,
  `percentage_over` double NOT NULL DEFAULT 0,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tax_table_list`
--

INSERT INTO `tax_table_list` (`payroll_type`, `range_from`, `range_to`, `fixed_tax`, `percentage_over`, `date_created`, `id`) VALUES
(2, 0, 10416.99, 0, 0, '2022-02-09 23:43:16', 1),
(1, 0, 20832.99, 0, 0, '2022-02-09 23:43:30', 2),
(1, 20833, 33332, 0, 15, '2022-02-09 23:43:54', 3),
(2, 10417, 16666, 0, 15, '2022-02-09 23:44:10', 4),
(1, 33333, 66666, 2500, 20, '2022-02-09 23:44:31', 5),
(2, 16667, 33332, 937.5, 20, '2022-02-09 23:44:50', 6),
(1, 66667, 166666, 8541.8, 25, '2024-01-14 15:16:19', 7),
(1, 166667, 666666, 33541.8, 30, '2024-01-14 15:17:32', 8),
(1, 666667, 99999999, 183541, 35, '2024-01-14 15:18:12', 9),
(2, 33333, 83332, 4270.7, 25, '2024-01-14 15:19:07', 10),
(2, 83333, 333332, 16770.7, 30, '2024-01-14 15:20:39', 11),
(2, 333333, 99999999, 91770.7, 35, '2024-01-14 15:21:15', 12);

-- --------------------------------------------------------

--
-- Table structure for table `temp_attendance_log`
--

CREATE TABLE `temp_attendance_log` (
  `biometric_id` text DEFAULT NULL,
  `punch_date` datetime DEFAULT NULL,
  `col1` text DEFAULT NULL,
  `col2` text DEFAULT NULL,
  `col3` text DEFAULT NULL,
  `col4` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temp_attendance_log`
--

INSERT INTO `temp_attendance_log` (`biometric_id`, `punch_date`, `col1`, `col2`, `col3`, `col4`) VALUES
('53749', '2023-09-03 08:12:30', '1', '3', '1', '0'),
('53749', '2023-09-03 12:00:00', '1', '3', '1', '0'),
('53749', '2023-09-03 12:30:03', '1', '3', '1', '0'),
('53749', '2023-09-03 13:49:10', '1', '3', '1', '0'),
('53749', '2023-09-03 18:54:25', '1', '3', '15', '0'),
('69174', '2023-09-03 08:06:30', '1', '3', '15', '0'),
('69174', '2023-09-03 08:22:47', '1', '3', '1', '0'),
('69174', '2023-09-03 10:39:55', '1', '3', '1', '0'),
('69174', '2023-09-03 11:03:38', '1', '3', '1', '0'),
('69174', '2023-09-03 13:07:22', '1', '3', '1', '0'),
('69174', '2023-09-03 13:12:15', '1', '3', '1', '0'),
('48923', '2023-09-03 13:30:37', '1', '3', '1', '0'),
('48923', '2023-09-03 13:48:51', '1', '3', '15', '0'),
('48923', '2023-09-03 14:50:52', '1', '3', '1', '0'),
('69174', '2023-09-03 19:14:55', '1', '3', '1', '0'),
('48923', '2023-09-03 19:27:01', '1', '3', '1', '0'),
('69174', '2023-09-03 20:03:05', '1', '3', '1', '0'),
('77687', '2023-09-03 21:44:30', '1', '3', '15', '0'),
('77687', '2023-09-04 05:44:04', '1', '3', '1', '0'),
('77687', '2023-09-04 13:09:32', '1', '3', '1', '0'),
('74876', '2023-09-04 07:28:20', '1', '3', '1', '0'),
('74876', '2023-09-04 16:29:28', '1', '3', '1', '0'),
('48923', '2023-09-04 07:32:49', '1', '3', '1', '0'),
('77687', '2023-09-04 07:36:00', '1', '3', '1', '0'),
('74876', '2023-09-04 07:39:30', '1', '3', '1', '0'),
('74876', '2023-09-04 17:45:04', '1', '3', '1', '0'),
('74876', '2023-09-04 09:29:53', '1', '3', '1', '0'),
('74876', '2023-09-04 09:30:05', '1', '3', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `doctor_id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = staff',
  `emp_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `doctor_id`, `name`, `address`, `contact`, `username`, `password`, `type`, `emp_id`) VALUES
(1, 0, 'Administrator', '', '', 'admin', 'admin123', 1, 1),
(2, 0, 'RUFEL', '', '', 'rpaganan', '12345', 2, 126),
(8, 0, 'test', '', '', 'test', '12345', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allowances`
--
ALTER TABLE `allowances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_allowances`
--
ALTER TABLE `employee_allowances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_deductions`
--
ALTER TABLE `employee_deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_meta`
--
ALTER TABLE `employee_meta`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `hdmf_table_list`
--
ALTER TABLE `hdmf_table_list`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `leave_type_id` (`leave_type_id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtime_requests`
--
ALTER TABLE `overtime_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_items`
--
ALTER TABLE `payroll_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phic_table_list`
--
ALTER TABLE `phic_table_list`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sss_table_list`
--
ALTER TABLE `sss_table_list`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tax_table_list`
--
ALTER TABLE `tax_table_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allowances`
--
ALTER TABLE `allowances`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;

--
-- AUTO_INCREMENT for table `employee_allowances`
--
ALTER TABLE `employee_allowances`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee_deductions`
--
ALTER TABLE `employee_deductions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `hdmf_table_list`
--
ALTER TABLE `hdmf_table_list`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `overtime_requests`
--
ALTER TABLE `overtime_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `payroll_items`
--
ALTER TABLE `payroll_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10183;

--
-- AUTO_INCREMENT for table `phic_table_list`
--
ALTER TABLE `phic_table_list`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sss_table_list`
--
ALTER TABLE `sss_table_list`
  MODIFY `Id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tax_table_list`
--
ALTER TABLE `tax_table_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
