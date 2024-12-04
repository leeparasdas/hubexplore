-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2023 at 04:07 AM
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
-- Database: `assets`
--

-- --------------------------------------------------------

--
-- Table structure for table `activitylogs`
--

CREATE TABLE `activitylogs` (
  `id` int(30) NOT NULL,
  `access_date` date NOT NULL,
  `mac` varchar(20) DEFAULT NULL,
  `module` varchar(30) NOT NULL,
  `login_id` int(30) NOT NULL,
  `action` varchar(50) NOT NULL,
  `msg` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activitylogs`
--

INSERT INTO `activitylogs` (`id`, `access_date`, `mac`, `module`, `login_id`, `action`, `msg`) VALUES
(568, '2023-08-30', '::1', 'Manage Assets', 6, 'Updated Asset', 'test'),
(569, '2023-08-30', '::1', 'Manage Assets', 6, 'Saved Asset', 'test'),
(570, '2023-08-30', '::1', 'Manage Assets', 6, 'Saved Asset', 'test'),
(571, '2023-08-30', '::1', 'Manage Assets', 6, 'Updated Asset', 'test'),
(572, '2023-08-30', '::1', 'Manage Assets', 6, 'Deleted Asset', 'test'),
(573, '2023-08-30', '::1', 'Manage Assets', 6, 'Saved Asset', 'test'),
(574, '2023-08-30', '::1', 'Manage Assets', 6, 'Updated Asset', 'test'),
(575, '2023-08-31', '::1', 'Login module', 6, 'Successful Login', 'test'),
(576, '2023-08-31', '::1', '', 6, 'Saved Asset Assignment', 'test'),
(577, '2023-08-31', '::1', '', 6, 'Update Unassigned Asset', 'test'),
(578, '2023-08-31', '::1', 'Manage Assets', 6, 'Deleted Asset', 'test'),
(579, '2023-08-31', '::1', 'Manage Assets', 6, 'Saved Asset Assignment', 'test'),
(580, '2023-08-31', '::1', 'Manage Assets', 6, 'Update Unassigned Asset', 'test'),
(581, '2023-08-31', '::1', 'Manage Assets', 6, 'Saved Asset', 'test'),
(582, '2023-08-31', '::1', 'Inventory Module', 6, 'Saved Inventory', 'test'),
(583, '2023-08-31', '::1', 'Inventory Module', 6, 'Saved Inventory', 'test'),
(584, '2023-08-31', '::1', 'Manage Assets', 6, 'Saved Close Inventory', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `assetassignment`
--

CREATE TABLE `assetassignment` (
  `id` int(30) NOT NULL,
  `assignnumber` varchar(30) NOT NULL,
  `assigndate` date NOT NULL,
  `prevassignnumber` varchar(30) DEFAULT NULL,
  `employee_id` int(30) NOT NULL,
  `assetcode` varchar(20) NOT NULL,
  `assetid` int(11) DEFAULT NULL,
  `assign_status` varchar(20) DEFAULT NULL,
  `assign_mode` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assetassignment`
--

INSERT INTO `assetassignment` (`id`, `assignnumber`, `assigndate`, `prevassignnumber`, `employee_id`, `assetcode`, `assetid`, `assign_status`, `assign_mode`) VALUES
(29, 'PAR202308001 ', '2023-08-03', NULL, 133, '605', NULL, 'Active', 'Purchase'),
(30, 'PAR202308002 ', '2023-08-10', NULL, 85, '31', NULL, 'Active', 'Purchase');

-- --------------------------------------------------------

--
-- Table structure for table `assetitem`
--

CREATE TABLE `assetitem` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `pnsuffix` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assetitem`
--

INSERT INTO `assetitem` (`id`, `name`, `pnsuffix`) VALUES
(3, 'CPU', '1'),
(4, 'Monitor', '2'),
(5, 'Keyboard', '3'),
(6, 'Mouse', '4'),
(7, 'Laptop', '5'),
(8, 'Printer', '6'),
(9, '\r\nScanner', '7'),
(10, 'UPS', '8'),
(11, 'Network appliance', '9'),
(12, 'Furniture', '10'),
(13, 'AVR', '11'),
(14, 'Office Equipment', '12');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(30) NOT NULL,
  `asset_code` varchar(20) NOT NULL,
  `assetitem_id` int(30) DEFAULT NULL,
  `asset_name` varchar(50) NOT NULL,
  `category_id` int(30) NOT NULL,
  `department_id` int(30) NOT NULL,
  `location_id` int(30) DEFAULT NULL,
  `purchase_amount` double DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `invoice_number` varchar(50) DEFAULT NULL,
  `supplier` varchar(50) DEFAULT NULL,
  `userlife` int(30) DEFAULT NULL,
  `depreciation_rate` double DEFAULT NULL,
  `depstartdate` date DEFAULT NULL,
  `netbookvalue` double DEFAULT NULL,
  `totaldepreciation` double DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `assetassignee` int(30) DEFAULT NULL,
  `specifications` varchar(200) DEFAULT NULL,
  `manufacturer` varchar(20) DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL,
  `serial_number` varchar(50) DEFAULT NULL,
  `mr_number` varchar(20) DEFAULT NULL,
  `mr_date` date DEFAULT NULL,
  `prevmr_number` varchar(20) DEFAULT NULL,
  `unit_of_measure` varchar(10) NOT NULL,
  `fund_cluster_id` int(30) NOT NULL,
  `condition` varchar(25) DEFAULT NULL,
  `warranty` int(30) DEFAULT NULL,
  `insurable` varchar(1) DEFAULT 'N',
  `property_number` varchar(20) NOT NULL,
  `asset_classification` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `asset_code`, `assetitem_id`, `asset_name`, `category_id`, `department_id`, `location_id`, `purchase_amount`, `purchase_date`, `invoice_number`, `supplier`, `userlife`, `depreciation_rate`, `depstartdate`, `netbookvalue`, `totaldepreciation`, `status`, `assetassignee`, `specifications`, `manufacturer`, `model`, `serial_number`, `mr_number`, `mr_date`, `prevmr_number`, `unit_of_measure`, `fund_cluster_id`, `condition`, `warranty`, `insurable`, `property_number`, `asset_classification`) VALUES
(1, '', 0, 'GLOBE POSTPAID SIM- 5G WITH HANDSET- SAMSUNG GALAX', 0, 1, 1, 0, '0001-01-01', '0', 'GLOBE TELECOMS- UNDER BUSINESS PLAN', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '09178620016', 0),
(2, '0031-1222-000040', 0, 'MOUSE- ACER', 0, 386, 386, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-099', 0),
(3, '0031-1222-000040', 0, 'KEYBOARD- ACER', 0, 386, 386, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00827', 0),
(4, '0031-1222-000040', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 386, 386, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00726', 0),
(5, '0031-1222-000040', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 386, 386, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00829', 0),
(6, '0031-1222-000039', 0, 'MOUSE- ACER', 0, 219, 219, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-098', 0),
(7, '0031-1222-000039', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 219, 219, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00725', 0),
(8, '0031-1222-000039', 0, 'KEYBOARD- ACER', 0, 219, 219, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00826', 0),
(9, '0031-1222-000039', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 219, 219, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00828', 0),
(10, '0031-1222-000041', 0, 'MOUSE- ACER', 0, 386, 386, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-100', 0),
(11, '0031-1222-000041', 0, 'KEYBOARD- ACER', 0, 386, 386, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00828', 0),
(12, '0031-1222-000041', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 386, 386, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00727', 0),
(13, '0031-1222-000041', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 386, 386, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00830', 0),
(14, '0031-1222-000034', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 160, 160, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00720', 0),
(15, '0031-1222-000034', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 160, 160, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00823', 0),
(16, '0031-1222-000033', 0, 'MOUSE- ACER', 0, 160, 160, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-092', 0),
(17, '0031-1222-000033', 0, 'KEYBOARD- ACER', 0, 160, 160, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00820', 0),
(18, '0031-1222-000033', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 160, 160, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00719', 0),
(19, '0031-1222-000033', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 160, 160, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00822', 0),
(20, '0031-1222-000035', 0, 'MOUSE- ACER', 0, 160, 160, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-094', 0),
(21, '0031-1222-000035', 0, 'KEYBOARD- ACER', 0, 160, 160, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00822', 0),
(22, '0031-1222-000035', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 160, 160, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00721', 0),
(23, '0031-1222-000035', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 160, 160, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00824', 0),
(24, '0031-1222-000051', 0, 'MOUSE- ACER', 0, 1, 1, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-110', 0),
(25, '0031-1222-000051', 0, 'KEYBOARD- ACER', 0, 1, 1, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00838', 0),
(26, '0031-1222-000051', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 1, 1, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00737', 0),
(27, '0031-1222-000051', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 1, 1, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00840', 0),
(28, '0031-1222-000052', 0, 'MOUSE- ACER', 0, 1, 1, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-111', 0),
(29, '0031-1222-000052', 0, 'KEYBOARD- ACER', 0, 1, 1, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00839', 0),
(30, '0031-1222-000052', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 1, 1, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00738', 0),
(31, '0031-1222-000052', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 1, 1, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00841', 0),
(32, '0031-1222-000049', 0, 'MOUSE- ACER', 0, 1, 1, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-108', 0),
(33, '0031-1222-000049', 0, 'KEYBOARD- ACER', 0, 1, 1, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00836', 0),
(34, '0031-1222-000049', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 1, 1, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00735', 0),
(35, '0031-1222-000049', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 1, 1, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00838', 0),
(36, '0031-1222-000050', 0, 'MOUSE- ACER', 0, 1, 1, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-109', 0),
(37, '0031-1222-000050', 0, 'KEYBOARD- ACER', 0, 1, 1, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00837', 0),
(38, '0031-1222-000050', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 1, 1, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00736', 0),
(39, '0031-1222-000050', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 1, 1, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00839', 0),
(40, '0031-1222-000046', 0, 'MOUSE- ACER', 0, 279, 279, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-105', 0),
(41, '0031-1222-000046', 0, 'KEYBOARD- ACER', 0, 279, 279, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00833', 0),
(42, '0031-1222-000046', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 279, 279, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00732', 0),
(43, '0031-1222-000046', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 279, 279, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00835', 0),
(44, '0031-1222-000045', 0, 'MOUSE- ACER', 0, 279, 279, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-104', 0),
(45, '0031-1222-000045', 0, 'KEYBOARD- ACER', 0, 279, 279, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00832', 0),
(46, '0031-1222-000045', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 279, 279, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00731', 0),
(47, '0031-1222-000045', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 279, 279, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00834', 0),
(48, '0031-1222-000043', 0, 'MOUSE- ACER', 0, 438, 438, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-102', 0),
(49, '0031-1222-000043', 0, 'KEYBOARD- ACER', 0, 438, 438, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00830', 0),
(50, '0031-1222-000043', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 438, 438, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00729', 0),
(51, '0031-1222-000043', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 438, 438, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00832', 0),
(52, '0031-1222-000004', 0, 'MOUSE- ACER', 0, 428, 428, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-063', 0),
(53, '0031-1222-000004', 0, 'KEYBOARD- ACER', 0, 428, 428, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00791', 0),
(54, '0031-1222-000004', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 428, 428, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00690', 0),
(55, '0031-1222-000004', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 428, 428, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00793', 0),
(56, '0031-1222-000019', 0, 'MOUSE- ACER', 0, 316, 316, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-078', 0),
(57, '0031-1222-000019', 0, 'KEYBOARD- ACER', 0, 316, 316, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00806', 0),
(58, '0031-1222-000019', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 316, 316, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00705', 0),
(59, '0031-1222-000019', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 316, 316, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00808', 0),
(60, '0031-1222-000018', 0, 'MOUSE- ACER', 0, 316, 316, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-077', 0),
(61, '0031-1222-000018', 0, 'KEYBOARD- ACER', 0, 316, 316, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00805', 0),
(62, '0031-1222-000018', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 316, 316, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00704', 0),
(63, '0031-1222-000018', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 316, 316, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00807', 0),
(64, '0031-1222-000016', 0, 'MOUSE- ACER', 0, 316, 316, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-075', 0),
(65, '0031-1222-000016', 0, 'KEYBOARD- ACER', 0, 316, 316, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00803', 0),
(66, '0031-1222-000016', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 316, 316, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00702', 0),
(67, '0031-1222-000016', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 316, 316, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00805', 0),
(68, '0031-1222-000010', 0, 'MOUSE- ACER', 0, 195, 195, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-069', 0),
(69, '0031-1222-000010', 0, 'KEYBOARD- ACER', 0, 195, 195, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00797', 0),
(70, '0031-1222-000010', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 195, 195, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00696', 0),
(71, '0031-1222-000010', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 195, 195, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00799', 0),
(72, '0031-1222-000020', 0, 'MOUSE- ACER', 0, 316, 316, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-079', 0),
(73, '0031-1222-000020', 0, 'KEYBOARD- ACER', 0, 316, 316, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00807', 0),
(74, '0031-1222-000020', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 316, 316, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00706', 0),
(75, '0031-1222-000020', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 316, 316, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00809', 0),
(76, '0031-1222-000036', 0, 'MOUSE- ACER', 0, 333, 333, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-095', 0),
(77, '0031-1222-000036', 0, 'KEYBOARD- ACER', 0, 333, 333, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00823', 0),
(78, '0031-1222-000036', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 333, 333, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00722', 0),
(79, '0031-1222-000036', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 333, 333, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00825', 0),
(80, '0031-1222-000011', 0, 'MOUSE- ACER', 0, 195, 195, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-070', 0),
(81, '0031-1222-000011', 0, 'KEYBOARD- ACER', 0, 195, 195, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00798', 0),
(82, '0031-1222-000011', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 195, 195, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00697', 0),
(83, '0031-1222-000011', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 195, 195, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00800', 0),
(84, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0051', 0),
(85, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0052', 0),
(86, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0050', 0),
(87, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0049', 0),
(88, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0048', 0),
(89, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0047', 0),
(90, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0046', 0),
(91, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0045', 0),
(92, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0044', 0),
(93, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0043', 0),
(94, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0042', 0),
(95, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0041', 0),
(96, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0040', 0),
(97, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0039', 0),
(98, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0038', 0),
(99, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0037', 0),
(100, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0036', 0),
(101, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0035', 0),
(102, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0034', 0),
(103, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0033', 0),
(104, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0032', 0),
(105, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0031', 0),
(106, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0030', 0),
(107, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0029', 0),
(108, '', 0, 'HARD HAT- DELTAPLUS QUARTZ UP IV', 0, 368, 368, 420, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PHM23-0028', 0),
(109, '', 0, 'SAFETY GLASSES (20PCS)', 0, 368, 368, 4, '2023-03-21', '298670', 'SEE MORE ENTERPRISE CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(110, '0031-1222-000009', 0, 'MOUSE- ACER', 0, 195, 195, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-068', 0),
(111, '0031-1222-000009', 0, 'KEYBOARD- ACER', 0, 195, 195, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00796', 0),
(112, '0031-1222-000009', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 195, 195, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00695', 0),
(113, '0031-1222-000009', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 195, 195, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00798', 0),
(114, '0031-1222-000008', 0, 'MOUSE- ACER', 0, 195, 195, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-067', 0),
(115, '0031-1222-000008', 0, 'KEYBOARD- ACER', 0, 195, 195, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00795', 0),
(116, '0031-1222-000008', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 195, 195, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00694', 0),
(117, '0031-1222-000008', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 195, 195, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00797', 0),
(118, '0031-1222-000007', 0, 'MOUSE- ACER', 0, 195, 195, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-066', 0),
(119, '0031-1222-000007', 0, 'KEYBOARD- ACER', 0, 195, 195, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00794', 0),
(120, '0031-1222-000007', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 195, 195, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00693', 0),
(121, '0031-1222-000007', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 195, 195, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00796', 0),
(122, '0031-1222-000002', 0, 'MOUSE- ACER', 0, 428, 428, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-061', 0),
(123, '0031-1222-000002', 0, 'KEYBOARD- ACER', 0, 428, 428, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00789', 0),
(124, '0031-1222-000002', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 428, 428, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00688', 0),
(125, '0031-1222-000002', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 428, 428, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00791', 0),
(126, '0031-1222-000005', 0, 'MOUSE- ACER', 0, 428, 428, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-064', 0),
(127, '0031-1222-000005', 0, 'KEYBOARD- ACER', 0, 428, 428, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00792', 0),
(128, '0031-1222-000005', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 428, 428, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00691', 0),
(129, '0031-1222-000005', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 428, 428, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00794', 0),
(130, '0031-1222-000003', 0, 'MOUSE- ACER', 0, 428, 428, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-062', 0),
(131, '0031-1222-000003', 0, 'KEYBOARD- ACER', 0, 428, 428, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00790', 0),
(132, '0031-1222-000003', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 428, 428, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00689', 0),
(133, '0031-1222-000003', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 428, 428, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00792', 0),
(134, '0031-1222-000001', 0, 'MOUSE- ACER', 0, 428, 428, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-060', 0),
(135, '0031-1222-000001', 0, 'KEYBOARD- ACER', 0, 428, 428, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00788', 0),
(136, '0031-1222-000001', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 428, 428, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00687', 0),
(137, '0031-1222-000001', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 428, 428, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00790', 0),
(138, '0031-1222-000006', 0, 'MOUSE- ACER', 0, 311, 311, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS23-065', 0),
(139, '0031-1222-000006', 0, 'KEYBOARD- ACER', 0, 311, 311, 0, '0023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB23-00793', 0),
(140, '0031-1222-000006', 0, 'COMPUTER MONITOR- ACER 23.8\" LED', 0, 311, 311, 0, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO23-00692', 0),
(141, '0031-1222-000054', 0, 'FIBER OPTIC CONNECTOR SC (4PCS.)', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(142, '0031-1222-000054', 0, 'FIBER PATCH CORD 10M (SC-SC) (3PCS.)', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(143, '0031-1222-000054', 0, 'FIBER PATCH CORD 3M (SC-SC) (3PCS.)', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(144, '0031-1222-000054', 0, '850 METER SINGLE-MODE FIBER OPTIC DROP CABLE- 2-CO', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(145, '0031-1222-000054', 0, 'WATERPROOF JUNCTION BOX (WJB) 100X100X70 (6PCS)', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(146, '0031-1222-000054', 0, 'APC EASY UPS BV650VA- AVR- UNIVERSAL OUTLET- 230V', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PUPS23-00757', 0),
(147, '0031-1222-000054', 0, 'APC EASY UPS BV650VA- AVR- UNIVERSAL OUTLET- 230V', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PUPS23-00756', 0),
(148, '0031-1222-000054', 0, 'APC EASY UPS BV650VA- AVR- UNIVERSAL OUTLET- 230V', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PUPS23-00755', 0),
(149, '0031-1222-000054', 0, 'MEANWELL 100W POWER SUPPLY 48V 2.5A', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-029', 0),
(150, '0031-1222-000054', 0, 'MEANWELL 100W POWER SUPPLY 48V 2.5A', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-028', 0),
(151, '0031-1222-000054', 0, 'MEANWELL 100W POWER SUPPLY 48V 2.5A', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-027', 0),
(152, '0031-1222-000006', 0, 'DESKTOP COMPUTER- ACER- INTEL i5', 0, 311, 311, 53, '2023-03-23', '298633', 'COLUMBIA TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU23-00795', 0),
(153, '', 0, 'SAFETY SHOES- DELTAPLUS 8 PAIRS (2-493.75 PER PAIR', 0, 368, 368, 19, '2023-03-14', '298666', 'SAFETYKO INDUSTRIAL SUPPLIES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(154, '', 0, 'REFLECTIVE VEST 10 PCS. (130.00/PC.)', 0, 368, 368, 1, '2023-03-14', '298666', 'SAFETYKO INDUSTRIAL SUPPLIES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(155, '', 0, 'LIFE BUOY RING', 0, 368, 368, 1, '2023-03-14', '298666', 'SAFETYKO INDUSTRIAL SUPPLIES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PRING23-0012', 0),
(156, '', 0, 'LIFE BUOY RING', 0, 368, 368, 1, '2023-03-14', '298666', 'SAFETYKO INDUSTRIAL SUPPLIES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PRING23-0011', 0),
(157, '', 0, 'LIFE BUOY RING', 0, 368, 368, 1, '2023-03-14', '298666', 'SAFETYKO INDUSTRIAL SUPPLIES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PRING23-0010', 0),
(158, '', 0, 'LIFE BUOY RING', 0, 368, 368, 1, '2023-03-14', '298666', 'SAFETYKO INDUSTRIAL SUPPLIES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PRING23-0009', 0),
(159, '0031-1222-000054', 0, 'DAHUA 4-PORT PoE SWITCH (UNMANAGED)', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PSWITCH23-00035', 0),
(160, '0031-1222-000054', 0, 'DAHUA 4-PORT PoE SWITCH (UNMANAGED)', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PSWITCH23-00034', 0),
(161, '0031-1222-000054', 0, 'DAHUA 4-PORT PoE SWITCH (UNMANAGED)', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PSWITCH23-00033', 0),
(162, '0031-1222-000053', 0, '(2 OF 2) GENERAL SERVICES- EXTRON IPCP PRO 250 PRO', 0, 218, 218, 0, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00030', 0),
(163, '0031-1222-000053', 0, '(1 OF 2 ) 1 LOT GENERAL SERVICES CATG UTP CABLES W', 0, 218, 218, 150, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(164, '0031-1222-000053', 0, 'QSC SPA-1 200 POWER AMPLIFIER', 0, 218, 218, 37, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AU23-00152', 0),
(165, '0031-1222-000053', 0, 'SHOW MPA-2405 POWER AMPLIFIER', 0, 218, 218, 28, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AU23-00151', 0),
(166, '0031-1222-000053', 0, 'WHARFEDALE TITAN AX12 SPEAKER (2 OF 2)', 0, 218, 218, 0, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AU23-00150', 0),
(167, '0031-1222-000053', 0, 'WHARFEDALE TITAN AX12 SPEAKER (1 OF 2)', 0, 218, 218, 30, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AU23-00149', 0),
(168, '0031-1222-000053', 0, 'JBL CONTROL 26CT CEILING SPEAKER (2 OF 2)', 0, 218, 218, 0, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AU23-00148', 0),
(169, '0031-1222-000053', 0, 'JBL CONTROL 26CT CEILING SPEAKER (1 OF 2)', 0, 218, 218, 23, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AU23-00147', 0),
(170, '0031-1222-000053', 0, 'JBL CONTROL 26CT CEILING SPEAKER (2 OF 2)', 0, 218, 218, 0, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AU23-00146', 0),
(171, '0031-1222-000053', 0, 'JBL CONTROL 26CT CEILING SPEAKER (1 OF 2)', 0, 218, 218, 23, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AU23-00145', 0),
(172, '0031-1222-000053', 0, 'TELEVIC D-MIC 50 SL DIRECTIONAL MICROPHONE- 50CM', 0, 218, 218, 13, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MIC23-0056', 0),
(173, '0031-1222-000053', 0, 'TELEVIC D-MIC 50 SL DIRECTIONAL MICROPHONE- 50CM', 0, 218, 218, 13, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MIC23-0055', 0),
(174, '0031-1222-000053', 0, 'TELEVIC D-MIC 50 SL DIRECTIONAL MICROPHONE- 50CM', 0, 218, 218, 13, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MIC23-0054', 0),
(175, '0031-1222-000053', 0, 'TELEVIC D-MIC 50 SL DIRECTIONAL MICROPHONE- 50CM', 0, 218, 218, 13, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MIC23-0053', 0),
(176, '0031-1222-000053', 0, 'TELEVIC D-MIC 50 SL DIRECTIONAL MICROPHONE- 50CM', 0, 218, 218, 13, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MIC23-0052', 0),
(177, '0031-1222-000053', 0, 'TELEVIC D-MIC 50 SL DIRECTIONAL MICROPHONE- 50CM', 0, 218, 218, 13, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MIC23-0051', 0),
(178, '0031-1222-000053', 0, 'TELEVIC D-MIC 50 SL DIRECTIONAL MICROPHONE- 50CM', 0, 218, 218, 13, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MIC23-0050', 0),
(179, '0006-1222-000003', 0, '50KVA POLE TYPE DISTRIBUTION TRANSFORMER', 0, 209, 209, 200, '2022-12-18', 'Contract No. 22-057', 'PABLO S. LABASBAS CONSTRUCTION CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PTF23-00009', 0),
(180, '0006-1222-000002', 0, '50KVA POLE TYPE DISTRIBUTION TRANSFORMER', 0, 209, 209, 200, '2022-12-18', 'Contract No. 22-057', 'PABLO S. LABASBAS CONSTRUCTION CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PTF23-00008', 0),
(181, '0031-1222-000054', 0, 'FIBER OPTIC COUPLER LC/LC (6PCS)', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(182, '0006-1222-000001', 0, '50KVA POLE TYPE DISTRIBUTION TRANSFORMER', 0, 209, 209, 200, '2022-12-18', 'Contract No. 22-057', 'PABLO S. LABASBAS CONSTRUCTION CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PTF23-00007', 0),
(183, '0031-1222-000054', 0, 'FIBER OPTIC PATCH CORD SINGLE MODE 1m LC/SC', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(184, '0031-1222-000054', 0, 'FIBER OPTIC PATCH CORD SINGLE MODE 1m LC/LC (4 PCS', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(185, '0031-1222-000054', 0, 'McGILL ELECTRICAL METAL CABINET- 400x300x200mm', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PCA23-00037', 0),
(186, '0031-1222-000053', 0, 'TELEVIC D-MIC 50 SL DIRECTIONAL MICROPHONE- 50CM', 0, 218, 218, 13, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MIC23-0049', 0),
(187, '0031-1222-000053', 0, 'TELEVIC D-MIC 50 SL DIRECTIONAL MICROPHONE- 50CM', 0, 218, 218, 13, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MIC23-0048', 0),
(188, '0031-1222-000053', 0, 'TELEVIC D-MIC 50 SL DIRECTIONAL MICROPHONE- 50CM', 0, 218, 218, 13, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MIC23-0047', 0),
(189, '0031-1222-000053', 0, 'TELEVIC CONFIDEA FLEX CONFIGURABLE CONFERENCE UNIT', 0, 218, 218, 50, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AU23-00144', 0),
(190, '0031-1222-000053', 0, 'TELEVIC CONFIDEA FLEX CONFIGURABLE CONFERENCE UNIT', 0, 218, 218, 50, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AU23-00143', 0),
(191, '0031-1222-000053', 0, 'TELEVIC CONFIDEA FLEX CONFIGURABLE CONFERENCE UNIT', 0, 218, 218, 50, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AU23-00142', 0),
(192, '0031-1222-000053', 0, 'TELEVIC CONFIDEA FLEX CONFIGURABLE CONFERENCE UNIT', 0, 218, 218, 50, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AU23-00141', 0),
(193, '0031-1222-000053', 0, 'TELEVIC CONFIDEA FLEX CONFIGURABLE CONFERENCE UNIT', 0, 218, 218, 50, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AU23-00140', 0),
(194, '0031-1222-000054', 0, 'McGILL ELECTRICAL METAL CABINET- 400x300x200mm', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PCA23-00039', 0),
(195, '0031-1222-000054', 0, 'McGILL ELECTRICAL METAL CABINET- 400x300x200mm', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PCA23-00036', 0),
(196, '0031-1222-000053', 0, 'TELEVIC CONFIDEA FLEX CONFIGURABLE CONFERENCE UNIT', 0, 218, 218, 50, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AU23-00139', 0),
(197, '0031-1222-000054', 0, 'McGILL ELECTRICAL METAL CABINET- 400x300x200mm', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PCA23-00038', 0),
(198, '0031-1222-000053', 0, 'TELEVIC CONFIDEA FLEX CONFIGURABLE CONFERENCE UNIT', 0, 218, 218, 50, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AU23-00138', 0);
INSERT INTO `assets` (`id`, `asset_code`, `assetitem_id`, `asset_name`, `category_id`, `department_id`, `location_id`, `purchase_amount`, `purchase_date`, `invoice_number`, `supplier`, `userlife`, `depreciation_rate`, `depstartdate`, `netbookvalue`, `totaldepreciation`, `status`, `assetassignee`, `specifications`, `manufacturer`, `model`, `serial_number`, `mr_number`, `mr_date`, `prevmr_number`, `unit_of_measure`, `fund_cluster_id`, `condition`, `warranty`, `insurable`, `property_number`, `asset_classification`) VALUES
(199, '0031-1222-000054', 0, '25CM DIN RAIL (7 PCS.)', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(200, '0031-1222-000054', 0, 'DC 48V 5A CCTV CENTRALIZED SWITCHING POWER SUPPLY ', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(201, '0031-1222-000053', 0, 'TELEVIC CONFIDEA FLEX CONFIGURABLE CONFERENCE UNIT', 0, 218, 218, 50, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AU23-00137', 0),
(202, '0031-1222-000053', 0, 'TELEVIC CONFIDEA FLEX CONFIGURABLE CONFERENCE UNIT', 0, 218, 218, 50, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AU23-00136', 0),
(203, '0031-1222-000054', 0, 'MCB MINIATURE CIRCUIT BREAKER 1 POLE (4 UNITS)', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(204, '0031-1222-000053', 0, 'TELEVIC CONFIDEA FLEX CONFIGURABLE CONFERENCE UNIT', 0, 218, 218, 50, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AU23-00135', 0),
(205, '0031-1222-000053', 0, 'TELEVIC PLIXUS AE-R PS AUDIO ENGINE RECORDING POWE', 0, 218, 218, 20, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AU23-00134', 0),
(206, '0031-1222-000054', 0, 'DAHUA 9-PORT UNMANAGED DESKTOP SWITCH', 0, 329, 329, 0, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(207, '0031-1222-000054', 0, 'DAHUA 4MP VARI-FOCAL BULLET NETWORK CAMERA', 0, 329, 329, 41, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PCAM23-00033', 0),
(208, '0031-1222-000054', 0, 'DAHUA 4MP VARI-FOCAL BULLET NETWORK CAMERA', 0, 329, 329, 41, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PCAM23-00032', 0),
(209, '0031-1222-000054', 0, 'DAHUA 4MP VARI-FOCAL BULLET NETWORK CAMERA', 0, 329, 329, 41, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PCAM23-00031', 0),
(210, '0031-1222-000053', 0, 'TELEVIC PLIXUS AE-R CENTRAL UNIT WITH AUDIO ENGINE', 0, 218, 218, 200, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AU23-00133', 0),
(211, '0031-1222-000053', 0, 'VISSONIC VIS-HE7 HDMI TRANSMITTER/RECEIVER', 0, 218, 218, 18, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00029', 0),
(212, '0031-1222-000054', 0, 'DAHUA 4MP VARI-FOCAL BULLET NETWORK CAMERA', 0, 329, 329, 41, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PCAM23-00030', 0),
(213, '0031-1222-000053', 0, 'VISSONIC VIS-HE7 HDMI TRANSMITTER/RECEIVER', 0, 218, 218, 18, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00028', 0),
(214, '0031-1222-000054', 0, 'DAHUA 4MP VARI-FOCAL BULLET NETWORK CAMERA', 0, 329, 329, 41, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PCAM23-00029', 0),
(215, '0031-1222-000053', 0, 'DATA VIDEO CAP-2 CAPTURE BOX DEVICE', 0, 218, 218, 20, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00027', 0),
(216, '0031-1222-000053', 0, 'DATA VIDEO RMC-180 MK II PTZ CAMERA CONTROLLER', 0, 218, 218, 95, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00026', 0),
(217, '0031-1222-000053', 0, 'DATA VIDEO HS-1300 PORTABLE VIDEO STREAMING', 0, 218, 218, 245, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00025', 0),
(218, '0031-1222-000053', 0, 'DATA VIDEO PTC-140 HD PTZ CAMERA', 0, 218, 218, 190, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00024', 0),
(219, '0031-1222-000054', 0, 'DAHUA 4MP VARI-FOCAL BULLET NETWORK CAMERA', 0, 329, 329, 41, '2022-11-09', 'INV no. 44567 Contract 22-027', 'MJZ INTEGRATED INDUSTRIAL CO.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PCAM23-00028', 0),
(220, '0031-1222-000053', 0, 'USB-A TO HDMI ADAPTER', 0, 218, 218, 5, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-030', 0),
(221, '0031-1222-000053', 0, 'LAPTOP COMPUTER- HP PAVILLON i5-EG2030TX', 0, 218, 218, 80, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NC23-00137', 0),
(222, '0031-1222-000053', 0, 'LINKSYS LAPN 300 WIRELESS ACCESS POINT', 0, 218, 218, 15, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'RTR23-00051', 0),
(223, '306-1219-00006', 0, 'SUPPLY- DELIVERY AND COMMISSIONING OF GENSET- WEST', 0, 209, 209, 1, '2019-12-01', 'Contract no. A19-006', 'Power Access Electrical Services', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'GEN19-00005', 0),
(224, '', 0, 'BIOMETRIC SCANNER', 0, 288, 288, 20, '2023-03-17', '298655', 'COM PARTS COMPUTER SALES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'TR23-00011', 0),
(225, '0031-1222-000053', 0, 'VISSONIC VIS-HE10-R HDMI RECEIVER', 0, 218, 218, 12, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00023', 0),
(226, '0031-1222-000053', 0, 'VISSONIC VIS-HE10-R HDMI RECEIVER', 0, 218, 218, 12, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00022', 0),
(227, '0031-1222-000053', 0, 'ATEN VC812 HDMI TO VGA/AUDIO CONVERTER WITH SCALER', 0, 218, 218, 29, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00021', 0),
(228, '0031-1222-000053', 0, 'AIRSERVER CONNECT 2 WIRELESS PRESENTATION', 0, 218, 218, 65, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00020', 0),
(229, '0031-1222-000053', 0, 'HDMI SWITCHER AND SPLITTER- VISSONIC UHD0808', 0, 218, 218, 75, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00019', 0),
(230, '0031-1222-000053', 0, 'HDMI & VGA WALL MOUNT TRANSMITTER- VISSONIC VIS-HE', 0, 218, 218, 40, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00018', 0),
(231, '0031-1222-000053', 0, 'HDMI & VGA WALL MOUNT TRANSMITTER- VISSONIC VIS-HE', 0, 218, 218, 40, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00017', 0),
(232, '0031-1222-000053', 0, 'WITH: CONTROLLER- NOVASTAR VX4S-N (17  OF 17)', 0, 218, 218, 0, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00016a', 0),
(233, '0031-1222-000053', 0, 'LED WALL DISPLAY- LEYARD NEV019 (16 OF 17)', 0, 218, 218, 0, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00016', 0),
(234, '0031-1222-000053', 0, 'LED WALL DISPLAY- LEYARD NEV019 (15 OF 17)', 0, 218, 218, 0, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00015', 0),
(235, '0031-1222-000053', 0, 'LED WALL DISPLAY- LEYARD NEV019 (14 OF 17)', 0, 218, 218, 0, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00014', 0),
(236, '0031-1222-000053', 0, 'LED WALL DISPLAY- LEYARD NEV019 (13 OF 17)', 0, 218, 218, 0, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00013', 0),
(237, '0031-1222-000053', 0, 'LED WALL DISPLAY- LEYARD NEV019 (12 OF 17)', 0, 218, 218, 0, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00012', 0),
(238, '0031-1222-000053', 0, 'LED WALL DISPLAY- LEYARD NEV019 (11 OF 17)', 0, 218, 218, 0, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00011', 0),
(239, '0031-1222-000053', 0, 'LED WALL DISPLAY- LEYARD NEV019 (10 OF 17)', 0, 218, 218, 0, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00010', 0),
(240, '0031-1222-000053', 0, 'LED WALL DISPLAY- LEYARD NEV019 (9 OF 17)', 0, 218, 218, 0, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00009', 0),
(241, '0031-1222-000053', 0, 'LED WALL DISPLAY- LEYARD NEV019 (8 OF 17)', 0, 218, 218, 0, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00008', 0),
(242, '0031-1222-000053', 0, 'LED WALL DISPLAY- LEYARD NEV019 (7 OF 17)', 0, 218, 218, 0, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00007', 0),
(243, '0031-1222-000053', 0, 'LED WALL DISPLAY- LEYARD NEV019 (6 OF 17)', 0, 218, 218, 0, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00006', 0),
(244, '0031-1222-000053', 0, 'LED WALL DISPLAY- LEYARD NEV019 (5 OF 17)', 0, 218, 218, 0, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00005', 0),
(245, '0031-1222-000053', 0, 'LED WALL DISPLAY- LEYARD NEV019 (4 OF 17)', 0, 218, 218, 0, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00004', 0),
(246, '0031-1222-000053', 0, 'LED WALL DISPLAY- LEYARD NEV019 (3 OF 17)', 0, 218, 218, 0, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00003', 0),
(247, '0031-1222-000053', 0, 'LED WALL DISPLAY- LEYARD NEV019 (2 OF 17)', 0, 218, 218, 0, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00002', 0),
(248, '0031-1222-000053', 0, 'LED WALL DISPLAY- LEYARD NEV019 (1 OF 17)', 0, 218, 218, 2, '2023-01-10', 'Contract No. 22-040', 'THE BRAIN COMPUTER CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AV23-00001', 0),
(249, '', 0, 'TABLE- ROUND BAR', 0, 262, 262, 5, '2023-02-24', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'TA23-00916', 0),
(250, '', 0, 'TABLE- ROUND BAR', 0, 262, 262, 5, '2023-02-24', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'TA23-00915', 0),
(251, '', 0, 'TABLE- ROUND BAR', 0, 262, 262, 5, '2023-02-24', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'TA23-00914', 0),
(252, '', 0, 'WITH CHAIR (2 OF 2)', 0, 262, 262, 0, '2023-02-24', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01588', 0),
(253, '', 0, 'WITH CHAIR (2 OF 2)', 0, 262, 262, 0, '2023-02-24', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01587', 0),
(254, '', 0, 'COFFEE TABLE SET (1 OF 2)', 0, 262, 262, 17, '2023-02-24', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'TA23-00913', 0),
(255, '', 0, 'COFFEE TABLE SET (1 OF 2)', 0, 262, 262, 17, '2023-02-24', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'TA23-00912', 0),
(256, '', 0, 'TABLE WITH SIDE EXTENSION- FREE STANDING', 0, 262, 262, 22, '2023-02-24', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'TA23-00911', 0),
(257, '', 0, 'TABLE WITH SIDE EXTENSION- FREE STANDING', 0, 262, 262, 22, '2023-02-24', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'TA23-00910', 0),
(258, '', 0, 'TABLE WITH SIDE EXTENSION- FREE STANDING', 0, 262, 262, 22, '2023-02-24', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'TA23-00909', 0),
(259, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01586', 0),
(260, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01585', 0),
(261, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01584', 0),
(262, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01583', 0),
(263, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01582', 0),
(264, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01581', 0),
(265, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01580', 0),
(266, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01579', 0),
(267, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01578', 0),
(268, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01577', 0),
(269, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01576', 0),
(270, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01575', 0),
(271, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01574', 0),
(272, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01573', 0),
(273, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01572', 0),
(274, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01571', 0),
(275, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01570', 0),
(276, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01569', 0),
(277, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01568', 0),
(278, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01567', 0),
(279, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '2985887', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01566', 0),
(280, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01565', 0),
(281, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01564', 0),
(282, '', 0, 'CHAIR- FOLDING PLASTIC', 0, 262, 262, 1, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01563', 0),
(283, '', 0, 'STEEL LOCKER', 0, 262, 262, 12, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'SL23-00008', 0),
(284, '', 0, 'STEEL LOCKER', 0, 262, 262, 12, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'SL23-00007', 0),
(285, '', 0, 'OFFICE CHAIR', 0, 262, 262, 5, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01562', 0),
(286, '', 0, 'OFFICE CHAIR', 0, 262, 262, 5, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01561', 0),
(287, '', 0, 'OFFICE CHAIR', 0, 262, 262, 5, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01560', 0),
(288, '', 0, 'OFFICE CHAIR', 0, 262, 262, 5, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01559', 0),
(289, '', 0, 'OFFICE CHAIR', 0, 262, 262, 5, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01558', 0),
(290, '', 0, 'VISITOR\'S CHAIR', 0, 262, 262, 3, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01557', 0),
(291, '', 0, 'VISITOR\'S CHAIR', 0, 262, 262, 3, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01556', 0),
(292, '', 0, 'VISITOR\'S CHAIR', 0, 262, 262, 3, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01555', 0),
(293, '', 0, 'VISITOR\'S CHAIR', 0, 262, 262, 3, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01554', 0),
(294, '', 0, 'VISITOR\'S CHAIR', 0, 262, 262, 3, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01553', 0),
(295, '', 0, 'VISITOR\'S CHAIR', 0, 262, 262, 3, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01552', 0),
(296, '', 0, 'VISITOR\'S CHAIR', 0, 262, 262, 3, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01550', 0),
(297, '', 0, 'VISITOR\'S CHAIR', 0, 262, 262, 3, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01549', 0),
(298, '', 0, 'VISITOR\'S CHAIR', 0, 262, 262, 3, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01548', 0),
(299, '', 0, 'VISITOR\'S CHAIR', 0, 262, 262, 3, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01547', 0),
(300, '', 0, 'VISITOR\'S CHAIR', 0, 262, 262, 3, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01546', 0),
(301, '', 0, 'BAR STOOL', 0, 262, 262, 3, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01545', 0),
(302, '', 0, 'BAR STOOL', 0, 262, 262, 3, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01544', 0),
(303, '', 0, 'BAR STOOL', 0, 262, 262, 3, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01543', 0),
(304, '', 0, 'BAR STOOL', 0, 262, 262, 3, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01542', 0),
(305, '', 0, 'BAR STOOL', 0, 262, 262, 3, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01541', 0),
(306, '', 0, 'BAR STOOL', 0, 262, 262, 3, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01540', 0),
(307, '', 0, 'EXECUTIVE CHAIR', 0, 262, 262, 7, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01539', 0),
(308, '', 0, 'EXECUTIVE CHAIR', 0, 262, 262, 7, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01538', 0),
(309, '', 0, 'EXECUTIVE CHAIR', 0, 262, 262, 7, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01536', 0),
(310, '', 0, 'EXECUTIVE CHAIR', 0, 262, 262, 7, '2023-01-06', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01535', 0),
(311, '', 0, 'EXECUTIVE CHAIR', 0, 262, 262, 7, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01534', 0),
(312, '', 0, 'EXECUTIVE CHAIR', 0, 262, 262, 7, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01533', 0),
(313, '', 0, 'EXECUTIVE CHAIR', 0, 262, 262, 7, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01532', 0),
(314, '', 0, 'EXECUTIVE CHAIR', 0, 262, 262, 7, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01531', 0),
(315, '', 0, 'EXECUTIVE CHAIR', 0, 262, 262, 7, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01530', 0),
(316, '', 0, 'EXECUTIVE CHAIR', 0, 262, 262, 7, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01529', 0),
(317, '', 0, 'EXECUTIVE CHAIR', 0, 262, 262, 7, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01528', 0),
(318, '', 0, 'MEDICINE CABINET', 0, 262, 262, 13, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MDC23-00002', 0),
(319, '', 0, 'EXECUTIVE CHAIR', 0, 262, 262, 7, '2023-01-05', '298587', 'ACMI OFFICE SYSTEMS PHILIPPINES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH23-01527', 0),
(320, '', 0, 'EMERGENCY LIGHT- LED- OMNI', 0, 325, 325, 980, '2023-02-13', '298616', 'VIVA SALES ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LI23-00084', 0),
(321, '', 0, 'EMERGENCY LIGHT- LED- OMNI', 0, 325, 325, 980, '2023-02-13', '298616', 'VIVA SALES ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LI23-00083', 0),
(322, '', 0, 'EMERGENCY LIGHT- LED- OMNI', 0, 325, 325, 980, '2023-02-13', '298616', 'VIVA SALES ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LI23-00082', 0),
(323, '', 0, 'EMERGENCY LIGHT- LED- OMNI', 0, 325, 325, 980, '2023-02-13', '298616', 'VIVA SALES ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LI23-00081', 0),
(324, '', 0, 'EMERGENCY LIGHT- LED- OMNI', 0, 325, 325, 980, '2023-02-13', '298616', 'VIVA SALES ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LI23-00080', 0),
(325, '', 0, 'EMERGENCY LIGHT- LED- OMNI', 0, 325, 325, 980, '2023-02-13', '298616', 'VIVA SALES ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LI23-00079', 0),
(326, '', 0, 'EMERGENCY LIGHT- LED- OMNI', 0, 325, 325, 980, '2023-02-13', '298616', 'VIVA SALES ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LI23-00078', 0),
(327, '', 0, 'EMERGENCY LIGHT- LED- OMNI', 0, 325, 325, 980, '2023-02-13', '298616', 'VIVA SALES ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LI23-00077', 0),
(328, '', 0, 'EMERGENCY LIGHT- LED- OMNI', 0, 325, 325, 980, '2023-02-13', '298616', 'VIVA SALES ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LI23-00076', 0),
(329, '', 0, 'EMERGENCY LIGHT- LED- OMNI', 0, 325, 325, 980, '2023-02-13', '298616', 'VIVA SALES ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LI23-00075', 0),
(330, '', 0, 'EMERGENCY  LIGHT- LED- OMNI', 0, 325, 325, 980, '2023-02-13', '298616', 'VIVA SALES ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LI23-00074', 0),
(331, '', 0, 'EMERGENCY LIGHT- LED- OMNI', 0, 325, 325, 980, '2023-02-13', '298616', 'VIVA SALES ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LI23-00073', 0),
(332, '', 0, 'EMERGENCY LIGHT- LED- OMNI', 0, 325, 325, 980, '2023-02-13', '298616', 'VIVA SALES ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LI23-00072', 0),
(333, '', 0, 'EMERGENCY LIGHT- LED- OMNI', 0, 325, 325, 980, '2023-02-13', '298616', 'VIVA SALES ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LI23-00071', 0),
(334, '', 0, 'EMERGENCY LIGHT- LED- OMNI', 0, 325, 325, 980, '2023-02-13', '298616', 'VIVA SALES ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LI23-00070', 0),
(335, '', 0, 'EMERGENCY LIGHT- LED- OMNI', 0, 325, 325, 980, '2023-02-13', '298616', 'VIVA SALES ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LI23-00069', 0),
(336, '', 0, 'EMERGENCY LIGHT- LED- OMNI', 0, 325, 325, 980, '2023-02-13', '298616', 'VIVA SALES ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LI23-00068', 0),
(337, '', 0, 'EMERGENCY LIGHT- LED- OMNI', 0, 325, 325, 980, '2023-02-13', '298616', 'VIVA SALES ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LI23-00067', 0),
(338, '', 0, 'EMERGENCY LIGHT- LED- OMNI', 0, 325, 325, 980, '2023-02-13', '298616', 'VIVA SALES ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LI23-00066', 0),
(339, '', 0, 'EMERGENCY LIGHT- LED- OMNI', 0, 325, 325, 980, '2023-02-13', '298616', 'VIVA SALES ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LI23-00065', 0),
(340, '0010-1222-000003', 0, 'ELECTRIC SCOOTER- BLADE X- 48V 800W 18AH', 0, 262, 262, 74, '2023-03-01', '298622', 'INFINITE GEMS MDSE & SIGNAGE TRADING', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'ECAR23-00003', 0),
(341, '0010-1222-000002', 0, 'ELECTRIC SCOOTER- BLADE X- 48V 800W 18AH', 0, 262, 262, 74, '2023-03-01', '298622', 'INFINITE GEMS MDSE & SIGNAGE TRADING', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'ECAR23-00002', 0),
(342, '0010-1222-000001', 0, 'ELECTRIC VEHICLE- 3-WHEEL- BRAND: FEIMA', 0, 262, 262, 57, '2023-02-08', '298618', 'MARQUAY TRADING- OPC', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'ECAR23-00001', 0),
(343, '', 0, 'SUPPLY- DELIVERY- INSTALLATION- TESTING AND COMMIS', 0, 262, 262, 477, '2022-10-21', 'Contract No. 22-038', 'Spandex Marketing Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PBM23-00008', 0),
(344, '', 0, 'IP PHONE GLOBAL- J129', 0, 280, 280, 4, '2019-03-20', 'CONTRACT 18-045', 'TRENDS AND TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PABX19-00596', 0),
(345, '', 0, 'IP PHONE GLOBAL- J129', 0, 280, 280, 4, '2019-03-20', 'CONTRACT 18-045', 'TRENDS AND TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PABX19-00594', 0),
(346, '', 0, 'IP PHONE GLOBAL- J129', 0, 280, 280, 4, '2019-03-20', 'CONTRACT 18-045', 'TRENDS AND TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PABX19-00592', 0),
(347, '', 0, 'IP PHONE GLOBAL- J129', 0, 280, 280, 4, '2019-03-20', 'CONTRACT 18-045', 'TRENDS AND TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PABX19-00591', 0),
(348, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 355, 355, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00729', 0),
(349, '', 0, 'DIGITAL CLAMP METER- FLUKE', 0, 262, 262, 34, '2023-01-25', '298627', 'ACEZ INSTRUMENTS PHILS. CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'ESB23-001', 0),
(350, '0006-1222-000015', 0, 'WIND TRACKER WITH DATA LOGGER- SCARLET TECH WL-21', 0, 209, 209, 65, '2023-01-25', '298627', 'ACEZ INSTRUMENTS PHILS. CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PARK23-001', 0),
(351, '0131-1009-0422', 0, 'LASERJET PRINTER- HP M1005 MFP', 0, 355, 355, 0, '0001-01-01', '0', 'PDMC - PNOC DEVELOPMENT & MGNT. CORP', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(352, '', 0, 'IP DESKPHONE- 1608-1', 0, 169, 169, 8, '0001-01-01', 'Contract 18-045', 'TRENDS AND TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PABX19-00600', 0),
(353, '', 0, 'OMNI ADAPTOR', 0, 262, 262, 65, '2023-01-17', 'S.I. no. 07037', 'ECM Hardware and Equipments Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-025', 0),
(354, '', 0, 'OMNI ADAPTOR', 0, 262, 262, 65, '2023-01-17', 'S.I. no. 07037', 'ECM Hardware and Equipments Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-024', 0),
(355, '', 0, 'OMNI ADAPTOR', 0, 262, 262, 65, '2023-01-17', 'S.I. no. 07037', 'ECM Hardware and Equipments Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-023', 0),
(356, '', 0, 'OMNI ADAPTOR', 0, 262, 262, 65, '2023-01-17', 'S.I. no. 07037', 'ECM Hardware and Equipments Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-022', 0),
(357, '', 0, 'OMNI ADAPTOR', 0, 262, 262, 65, '2023-01-17', 'S.I. no. 07037', 'ECM Hardware and Equipments Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-021', 0),
(358, '', 0, 'OMNI ADAPTOR', 0, 262, 262, 65, '2023-01-17', 'S.I. no. 07037', 'ECM Hardware and Equipments Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-020', 0),
(359, '', 0, 'OMNI ADAPTOR', 0, 262, 262, 65, '2023-01-17', 'S.I. no. 07037', 'ECM Hardware and Equipments Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-019', 0),
(360, '', 0, 'OMNI ADAPTOR', 0, 262, 262, 65, '2023-01-17', 'S.I. no. 07037', 'ECM Hardware and Equipments Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-018', 0),
(361, '', 0, 'OMNI ADAPTOR', 0, 262, 262, 65, '2023-01-17', 'S.I. no. 07037', 'ECM Hardware and Equipments Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-017', 0),
(362, '', 0, 'OMNI ADAPTOR', 0, 262, 262, 65, '2023-01-17', 'S.I. no. 07037', 'ECM Hardware and Equipments Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-016', 0),
(363, '', 0, 'OMNI ADAPTOR', 0, 262, 262, 65, '2023-01-17', 'S.I. no. 07037', 'ECM Hardware and Equipments Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-015', 0),
(364, '', 0, 'OMNI ADAPTOR', 0, 262, 262, 65, '2023-01-17', 'S.I. no. 07037', 'ECM Hardware and Equipments Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-014', 0),
(365, '', 0, 'OMNI ADAPTOR', 0, 262, 262, 65, '2023-01-17', 'S.I. no. 07037', 'ECM Hardware and Equipments Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-013', 0),
(366, '', 0, 'OMNI ADAPTOR', 0, 262, 262, 65, '2023-01-17', 'S.I. no. 07037', 'ECM Hardware and Equipments Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-012', 0),
(367, '', 0, 'OMNI ADAPTOR', 0, 262, 262, 65, '2023-01-17', 'S.I. no. 07037', 'ECM Hardware and Equipments Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-011', 0),
(368, '', 0, 'OMNI ADAPTOR', 0, 262, 262, 65, '2023-01-17', 'S.I. no. 07037', 'ECM Hardware and Equipments Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-010', 0),
(369, '', 0, 'OMNI ADAPTOR', 0, 262, 262, 65, '2023-01-17', 'S.I. no. 07037', 'ECM Hardware and Equipments Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-009', 0),
(370, '', 0, 'OMNI ADAPTOR', 0, 262, 262, 65, '2023-01-17', 'S.I. no. 07037', 'ECM Hardware and Equipments Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-008', 0),
(371, '', 0, 'OMNI ADAPTOR', 0, 262, 262, 65, '2023-01-17', 'S.I. no. 07037', 'ECM Hardware and Equipments Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-007', 0),
(372, '', 0, 'OMNI ADAPTOR', 0, 262, 262, 65, '2023-01-17', 'S.I. no. 07037', 'ECM Hardware and Equipments Corp.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-006', 0),
(373, '', 0, 'NUMBER 8-DIGITS- FOSCA', 0, 262, 262, 129.5, '2023-01-07', 'S.I. no. 0107202301020007886474', 'NATIONAL BOOK STORE', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-005', 0),
(374, '', 0, 'DATE STAMP- FOSCA WITH INSCRIPTION \"PAID\"', 0, 262, 262, 139.5, '2023-01-07', 'S.I. no. 0107202301020007886474', 'NATIONAL BOOK STORE', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-004', 0),
(375, '', 0, 'DATE STAMP- FOSCA WITH INSCRIPTION \"RECEIVED\"', 0, 262, 262, 139.5, '2023-01-07', 'S.I. no. 0107202301020007886474', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-003', 0),
(376, '', 0, 'DATE STAMP- FOSCA DIAL A PHRASE', 0, 262, 262, 169.5, '2023-01-07', 'S.I. no. 0107202301020007886474', 'NATIONAL BOOK STORE', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-002', 0),
(377, '', 0, 'UPS- KEBOS PG PLUS 1500VA', 0, 263, 263, 7, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00751', 0),
(378, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 282, 282, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00688', 0),
(379, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 280, 280, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00686', 0),
(380, '', 0, 'FOAM FILLED RUBBER FENDER WITHOUT TIRE NET (2 OF 2', 0, 262, 262, 389, '2022-12-19', '298569', 'FIRST AND FINEST TECHNOLOGY CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(381, '', 0, 'FOAM FILLED RUBBER FENDER WITHOUT TIRE NET (1 OF 2', 0, 262, 262, 389, '2022-12-19', '298569', 'FIRST AND FINEST TECHNOLOGY CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(382, '', 0, 'UPS- KEBOS PG PLUS 1500VA', 0, 262, 262, 7, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00754', 0),
(383, '', 0, 'UPS- KEBOS PG PLUS 1500VA', 0, 262, 262, 7, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00753', 0),
(384, '', 0, 'UPS- KEBOS PG PLUS 1500VA', 0, 262, 262, 7, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00752', 0),
(385, '', 0, 'UPS- KEBOS PG PLUS 1500VA', 0, 262, 262, 7, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00750', 0),
(386, '', 0, 'UPS- KEBOS PG PLUS 1500VA', 0, 262, 262, 7, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00749', 0),
(387, '', 0, 'UPS- KEBOS PG PLUS 1500VA', 0, 262, 262, 7, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00748', 0),
(388, '', 0, 'UPS- KEBOS PG PLUS 1500VA', 0, 262, 262, 7, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00747', 0),
(389, '', 0, 'UPS- KEBOS PG PLUS 1500VA', 0, 262, 262, 7, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00746', 0),
(390, '', 0, 'UPS- KEBOS PG PLUS 1500VA', 0, 262, 262, 7, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00745', 0),
(391, '', 0, 'UPS- KEBOS PG PLUS 1500VA', 0, 262, 262, 7, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00744', 0),
(392, '', 0, 'UPS- KEBOS PG PLUS 1500VA', 0, 262, 262, 7, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00743', 0),
(393, '', 0, 'UPS- KEBOS PG PLUS 1500VA', 0, 262, 262, 7, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00742', 0),
(394, '', 0, 'DIGITAL INDUSTRIAL MULTIMETER- FLUKE 175', 0, 262, 262, 38, '2023-01-17', '298628', 'PUMPCRAFT INDUSTRIAL SALES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'DM23-00002', 0),
(395, '', 0, 'AD-LINK CAT5E PATCH PANEL 16P', 0, 209, 209, 1, '2023-01-17', 'S.I. no. 4563', 'DREXTECH COMPUTER ACCESSORIES SHOP', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-001', 0),
(396, '0006-1221-000001', 0, 'DIGITAL POWER METER (22 OF 22 UNITS)', 0, 220, 220, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00022', 0),
(397, '0006-1221-000001', 0, 'DIGITAL POWER METER (21 OF 22 UNITS)', 0, 326, 326, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00021', 0),
(398, '0006-1221-000001', 0, 'DIGITAL POWER METER (20 OF 22 UNITS)', 0, 373, 373, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00020', 0),
(399, '0006-1221-000001', 0, 'DIGITAL POWER METER (19 OF 22 UNITS)', 0, 237, 237, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00019', 0),
(400, '0006-1221-000001', 0, 'DIGITAL POWER METER (18 OF 22 UNITS)', 0, 380, 380, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00018', 0);
INSERT INTO `assets` (`id`, `asset_code`, `assetitem_id`, `asset_name`, `category_id`, `department_id`, `location_id`, `purchase_amount`, `purchase_date`, `invoice_number`, `supplier`, `userlife`, `depreciation_rate`, `depstartdate`, `netbookvalue`, `totaldepreciation`, `status`, `assetassignee`, `specifications`, `manufacturer`, `model`, `serial_number`, `mr_number`, `mr_date`, `prevmr_number`, `unit_of_measure`, `fund_cluster_id`, `condition`, `warranty`, `insurable`, `property_number`, `asset_classification`) VALUES
(401, '0006-1221-000001', 0, 'DIGITAL POWER METER (17 OF 22 UNITS)', 0, 223, 223, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00017', 0),
(402, '0006-1221-000001', 0, 'DIGITAL POWER METER (16 OF 22 UNITS)', 0, 221, 221, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00016', 0),
(403, '0006-1221-000001', 0, 'DIGITAL POWER METER (15 OF 22 UNITS)', 0, 222, 222, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00015', 0),
(404, '0006-1221-000001', 0, 'DIGITAL POWER METER (14 OF 22 UNITS)', 0, 222, 222, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00014', 0),
(405, '0006-1221-000001', 0, 'DIGITAL POWER METER (13 of 22 UNITS)', 0, 222, 222, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00013', 0),
(406, '0006-1221-000001', 0, 'DIGITAL POWER METER (12 OF 22 UNITS)', 0, 222, 222, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00012', 0),
(407, '0006-1221-000001', 0, 'DIGITAL POWER METER (11 OF 22 UNITS)', 0, 225, 225, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00011', 0),
(408, '', 0, 'TRIPOD', 0, 428, 428, 500, '2023-01-20', '298566', 'AGILE TECHFRONTIER CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2023-026', 0),
(409, '', 0, 'AVR- STAVOL SVC-5000N', 0, 262, 262, 7, '2022-12-27', 'S.I. no. 3419', 'REYES ELECTRONICS SHOP', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AVR23-00014', 0),
(410, '', 0, 'AVR- VISTRON SERVO TYPE 5000VA', 0, 262, 262, 7, '2022-12-27', 'S.I. no. 3419', 'REYES ELECTRONICS SHOP', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'AVR23-00013', 0),
(411, '', 0, 'HARD DISK DRIVE- WESTERN DIGITAL WD BLUE SA510 / S', 0, 84, 84, 5, '2023-01-17', '298632', 'MASANGKAY COMPUTER CENTER', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'SSD23-00024', 0),
(412, '0006-1221-000001', 0, 'DIGITAL POWER METER (10 OF 22 UNITS)', 0, 225, 225, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00010', 0),
(413, '0006-1221-000001', 0, 'DIGITAL POWER METER (9 OF 22 UNITS)', 0, 225, 225, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00009', 0),
(414, '0006-1221-000001', 0, 'DIGITAL POWER METER (8 OF 22 UNITS)', 0, 225, 225, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00008', 0),
(415, '0006-1221-000001', 0, 'DIGITAL POWER METER (7 OF 22 UNITS)', 0, 225, 225, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00007', 0),
(416, '0006-1221-000001', 0, 'DIGITAL POWER METER (6 OF 22 UNITS)', 0, 225, 225, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00006', 0),
(417, '0006-1221-000001', 0, 'DIGITAL POWER METER (5 OF 22 UNITS)', 0, 225, 225, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00005', 0),
(418, '0006-1221-000001', 0, 'DIGITAL POWER METER (4 OF 22 UNITS)', 0, 225, 225, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00004', 0),
(419, '0006-1221-000001', 0, 'DIGITAL POWER METER (3 OF 22 UNITS)', 0, 225, 225, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00003', 0),
(420, '0006-1221-000001', 0, 'DIGITAL POWER METER (2 OF 22 UNITS)', 0, 225, 225, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00002', 0),
(421, '0006-1221-000001', 0, 'DIGITAL POWER METER (1 of 22 UNITS)', 0, 225, 225, 49, '0001-01-01', 'Contract No. 21-039', 'DLL & SONS COMPANY ASIA LTD.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'POW23-00001', 0),
(422, '', 0, 'LENOVO IDEA CENTRE ALL-IN-ONE PC', 0, 123, 123, 0, '0001-01-01', '0', 'PDMC - PNOC DEVELOPMENT & MGNT. CORP', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PDMC21-0032', 0),
(423, '', 0, 'TIDE AND CURRENT TABLE 2023', 0, 262, 262, 480, '2022-12-22', 'O.R. no. 8523735Q', 'PHILIPPINE STATISTICS AUTHORITY', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'BK23-0001', 0),
(424, '', 0, 'LASER DISTANCE METER- LEICA DISTO E7500i', 0, 262, 262, 45, '2023-01-05', '298630', 'LS Instrumentation Sales & Services', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LR23-00003', 0),
(425, '', 0, 'COFFEE MAKER- IMARFLEX', 0, 262, 262, 2, '2022-12-27', 'S.I. no. 0713', 'MEL-C TRADING', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CM23-00016', 0),
(426, '', 0, 'COFFEE MAKER- IMARFLEX', 0, 262, 262, 2, '2022-12-27', 'S.I. no. 0713', 'MEL-C TRADING', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CM23-00015', 0),
(427, '', 0, 'OPTICAL MOUSE- A4 TECH', 0, 1, 1, 0, '0001-01-01', '0', 'NONE', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS0372', 0),
(428, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 219, 219, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00736', 0),
(429, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 219, 219, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00714', 0),
(430, '', 0, 'GANG CHAIR- 5-SEATER', 0, 262, 262, 0, '2022-12-22', '298586', 'ASAHI DESIGN CENTRE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH22-01526', 0),
(431, '', 0, 'GANG CHAIR- 5-SEATER', 0, 262, 262, 11, '2022-12-22', '298586', 'ASAHI DESIGN CENTRE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH22-01525', 0),
(432, '', 0, 'GANG CHAIR- 5-SEATER', 0, 262, 262, 11, '2022-12-22', '298586', 'ASAHI DESIGN CENTRE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH22-01524', 0),
(433, '', 0, 'TABLE SET- SMALL MEETING ROUND NEGOTIATION (1 TABL', 0, 262, 262, 0, '2022-12-22', '298586', 'ASAHI DESIGN CENTRE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH22-01523', 0),
(434, '', 0, 'TABLE SET- SMALL MEETING ROUND NEGOTIATION (1 TABL', 0, 262, 262, 0, '2022-12-22', '298586', 'ASAHI DESIGN CENTRE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH22-01522', 0),
(435, '', 0, 'TABLE SET- SMALL MEETING ROUND NEGOTIATION (1 TABL', 0, 262, 262, 0, '2022-12-22', '298586', 'ASAHI DESIGN CENTRE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH22-01521', 0),
(436, '', 0, 'TABLE SET- SMALL MEETING ROUND NEGOTIATION (1 TABL', 0, 262, 262, 0, '2022-12-22', '298586', 'ASAHI DESIGN CENTRE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH22-01520', 0),
(437, '', 0, 'TABLE SET- SMALL MEETING ROUND NEGOTIATION (1 TABL', 0, 262, 262, 0, '2022-12-22', '298586', 'ASAHI DESIGN CENTRE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH22-01519', 0),
(438, '', 0, 'TABLE SET- SMALL MEETING ROUND NEGOTIATION (1 TABL', 0, 262, 262, 0, '2022-12-22', '298586', 'ASAHI DESIGN CENTRE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH22-01518', 0),
(439, '', 0, 'TABLE SET- SMALL MEETING ROUND NEGOTIATION (1 TABL', 0, 262, 262, 0, '2022-12-22', '298586', 'ASAHI DESIGN CENTRE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH22-01517', 0),
(440, '', 0, 'TABLE SET- SMALL MEETING ROUND NEGOTIATION (1 TABL', 0, 262, 262, 0, '2022-12-22', '298586', 'ASAHI DESIGN CENTRE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH22-01516', 0),
(441, '', 0, 'TABLE SET- SMALL MEETING ROUND NEGOTIATION (1 TABL', 0, 262, 262, 0, '2022-12-22', '298586', 'ASAHI DESIGN CENTRE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CH22-01515', 0),
(442, '', 0, 'TABLE SET- SMALL MEETING ROUND NEGOTIATION (1 TABL', 0, 262, 262, 14, '2022-12-22', '298586', 'ASAHI DESIGN CENTRE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'TA22-00907', 0),
(443, '', 0, 'TABLE SET- SMALL MEETING ROUND NEGOTIATION (1 TABL', 0, 262, 262, 14, '2022-12-22', '298586', 'ASAHI DESIGN CENTRE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'TA22-00906', 0),
(444, '', 0, 'TABLE SET- SMALL MEETING ROUND NEGOTIATION (1 TABL', 0, 262, 262, 14, '2022-12-22', '298586', 'ASAHI DESIGN CENTRE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'TA22-00905', 0),
(445, '', 0, 'TABLE- FOLDING TRAINING', 0, 262, 262, 11, '2022-12-22', '298586', 'ASAHI DESIGN CENTRE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'TA22-00904', 0),
(446, '', 0, 'TABLE- FOLDING TRAINING', 0, 262, 262, 11, '2022-12-22', '298586', 'ASAHI DESIGN CENTRE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'TA22-00903', 0),
(447, 'Asset Number', 0, 'Item Description', 0, 0, 0, 0, '0000-00-00', 'PO No.', 'Supplier', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, 'specifications', 'manufacturer', 'model', 'serialnumber', 'mr_number', '0000-00-00', 'prevmr_number', 'unit_of_me', 0, 'condition', 0, 'i', 'property_number', 0),
(448, '', 0, 'TABLE- FOLDING TRAINING', 0, 262, 262, 11, '2022-12-22', '298586', 'ASAHI DESIGN CENTRE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'TA22-00901', 0),
(449, '', 0, 'TABLE- FOLDING TRAINING', 0, 262, 262, 11, '2022-12-22', '298586', 'ASAHI DESIGN CENTRE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'TA22-00900', 0),
(450, '', 0, 'TABLE- FOLDING TRAINING', 0, 262, 262, 11, '2022-12-22', '298586', 'ASAHI DESIGN CENTRE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'TA22-00899', 0),
(451, '', 0, 'CHRISTMAS DECOR - 3 PCS POINSETTIA PICKS VELVET', 0, 433, 433, 119.4, '2022-12-10', 'OR No. 57868', 'METRO MARKET MARKET', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(452, '', 0, 'CHRISTMAS DECOR - DECORATIVE TABLE TREE', 0, 433, 433, 299.5, '2022-12-10', 'O.R. No. 57868', 'METRO MARKET MARKET', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(453, '', 0, 'CHRISTMAS DECOR - CHRISTMAS LIGHTS-STEADY', 0, 433, 433, 439.8, '2022-12-10', 'O.R. No. 57868', 'METRO MARKET MARKET', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(454, '', 0, 'CHRISTMAS DECOR - 3 BXS CHRISTMAS LIGHTS - CURTAIN', 0, 433, 433, 2, '2022-12-10', 'O.R. No. 57868', 'METRO MARKET MARKET', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(455, '', 0, 'CHRISTMAS DECOR - CHRISTMAS BALL (PACK OF 6)', 0, 433, 433, 160, '2022-12-10', 'O.R. No. 57868', 'METRO MARKET MARKET', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(456, '', 0, 'CHRISTMAS DECOR - CHRISTMAS BALLS- GOLD (PACK OF 6', 0, 433, 433, 295.2, '2022-12-10', 'OR No. 57868', 'METRO MARKET MARKET', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(457, '', 0, 'CHRISTMAS DECOR - 5 PCS CHRISTMAS WILLOW SPRAY', 0, 433, 433, 399, '2022-12-10', 'O.R. No. 57868', 'METRO MARKET MARKET', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(458, '', 0, 'CHRISTMAS DECOR - 6 PCS CHRISTMAS FILLER MULTICOLO', 0, 433, 433, 619.2, '2022-12-10', 'O.R. No. 57868', 'METRO MARKET MARKET', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(459, '', 0, 'CHRISTMAS DECOR - CHRISTMAS FILLER MULTICOLOR', 0, 433, 433, 143.2, '2022-12-10', 'O.R. No. 57868', 'METRO MARKET MARKET', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(460, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 115, 115, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00723', 0),
(461, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 120, 120, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00716', 0),
(462, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 118, 118, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00719', 0),
(463, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 182, 182, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00699', 0),
(464, '', 0, 'UPS- KEBOS- PG 650 LITE', 0, 196, 196, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00718', 0),
(465, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 138, 138, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00740', 0),
(466, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 196, 196, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00724', 0),
(467, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 219, 219, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00741', 0),
(468, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 219, 219, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00739', 0),
(469, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 134, 134, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00738', 0),
(470, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 369, 369, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00737', 0),
(471, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 219, 219, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00735', 0),
(472, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 219, 219, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00734', 0),
(473, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 168, 168, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00733', 0),
(474, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 168, 168, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00732', 0),
(475, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 355, 355, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00731', 0),
(476, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 355, 355, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00730', 0),
(477, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 245, 245, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00728', 0),
(478, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 245, 245, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00727', 0),
(479, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 245, 245, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00726', 0),
(480, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 196, 196, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00725', 0),
(481, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 117, 117, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00722', 0),
(482, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 123, 123, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00721', 0),
(483, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 125, 125, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00720', 0),
(484, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 124, 124, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00717', 0),
(485, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 219, 219, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00715', 0),
(486, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 219, 219, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00713', 0),
(487, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 438, 438, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00712', 0),
(488, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 98, 98, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00711', 0),
(489, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 180, 180, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00710', 0),
(490, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 180, 180, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00709', 0),
(491, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 180, 180, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00708', 0),
(492, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 180, 180, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00707', 0),
(493, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 180, 180, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00706', 0),
(494, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 69, 69, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00705', 0),
(495, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 68, 68, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00704', 0),
(496, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 64, 64, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00703', 0),
(497, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 60, 60, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00702', 0),
(498, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 180, 180, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00701', 0),
(499, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 55, 55, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00700', 0),
(500, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 183, 183, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00698', 0),
(501, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 12, 12, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00697', 0),
(502, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 14, 14, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00696', 0),
(503, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 13, 13, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00695', 0),
(504, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 12, 12, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00694', 0),
(505, '', 0, 'UPS- KEBOS- PG 650 LITE', 0, 51, 51, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00693', 0),
(506, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 428, 428, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00692', 0),
(507, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 428, 428, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00691', 0),
(508, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 428, 428, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00690', 0),
(509, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 428, 428, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00690', 0),
(510, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 1, 1, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00689', 0),
(511, '', 0, 'UPS- KEBOS PG 650 LITE', 0, 287, 287, 2, '2023-01-05', '298634', 'JONECO TECH MARKETING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS23-00687', 0),
(512, '', 0, 'COMPUTER MONITOR- AOC- 19\"', 0, 219, 219, 5, '2009-10-08', '296151', 'ADVANCE SOLUTIONS- INC', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO09-00476', 0),
(513, '', 0, 'SOFTWARE: MICROSOFT OFFICE 2013', 0, 219, 219, 9, '2015-06-05', '297332', 'EPARTNERS SOLUTION- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'SW15-00422', 0),
(514, '', 0, 'KEYBOARD- A4 TECH', 0, 219, 219, 0, '2013-08-07', '297032', 'ADVANCE SOLUTIONS- INC', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB13-00638', 0),
(515, '', 0, 'DESKTOP COMPUTER', 0, 219, 219, 20, '2013-08-07', '297032', 'ADVANCE SOLUTIONS- INC', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU13-00638', 0),
(516, '', 0, '1 UNIT CENTRALIZED POWER SUPPLY - 1 LOT SUPPLY AND', 0, 401, 401, 0, '2022-08-16', '298550', 'COM PARTS COMPUTER SALES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-050A', 0),
(517, '', 0, '1 UNIT DOME CAMERA - 1 LOT SUPPLY AND REPLACEMENT ', 0, 425, 425, 2, '2022-08-16', '298550', 'COM PARTS COMPUTER SALES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CAM22-00027', 0),
(518, '', 0, 'LASER MONOCHROME PRINTER- HP NEVERSTOP LASER 1000 ', 0, 428, 428, 6, '2023-01-04', '298629', 'PBT TECHNOLOGY SOLUTIONS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LP23-00123', 0),
(519, '', 0, 'CHRISTMAS DECOR - 6 PCS CHRISTMAS PICK WITH BERRIE', 0, 433, 433, 430.8, '2022-12-10', 'O.R. No. 57868', 'METRO MARKET MARKET', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(520, '', 0, 'CHRISTMAS DECOR - 5 PCS POINSETTIA', 0, 433, 433, 316, '2022-12-10', 'O.R. No. 57868', 'METRO MARKET MARKET', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(521, '', 0, 'CHRISTMAS DECOR - 5 PCS POINSETTIA', 0, 433, 433, 396, '2022-12-10', 'OR No. 57868', 'METRO MARKET MARKET', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(522, '', 0, 'CHRISTMAS DECOR - POINSETTIA', 0, 433, 433, 47.8, '2022-12-10', 'OR No. 57868', 'METRO MARKET MARKET', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(523, '', 0, 'CHRISTMAS DECOR - CHRISTMAS TREE SKIRT', 0, 433, 433, 279.2, '2022-12-10', 'O.R. no. 57868', 'METRO MARKET MARKET', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(524, '', 0, 'CHRISTMAS DECOR - CHRISTMAS TREE- 5 FT.', 0, 433, 433, 1, '2022-12-10', 'OR No. 57868', 'METRO MARKET MARKET', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(525, '', 0, 'SURGE PROTECTOR', 0, 69, 69, 550.11, '0001-01-01', '00', 'NONE', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '11233', 0),
(526, '', 0, 'PRINTER- HP LASER MONOCHROME', 0, 289, 289, 6, '2022-12-20', 'S.I. no. 30673', 'PBT TECHNOLOGY SOLUTIONS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'LP22-00122', 0),
(527, '', 0, 'CHRISTMAS DECOR - 2 BXS CHRISTMAS LIGHTS STEADY (4', 0, 433, 433, 879.6, '2022-12-10', 'O.R. no. 447634', 'METRO MARKET MARKET', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(528, '', 0, 'ELECTRIC KETTLE- KYOWA- 1.7L- KW-1366', 0, 433, 433, 1, '2022-12-27', 'O.R. no. 443002', 'SUPER METRO TAGAYTAY', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-083', 0),
(529, '', 0, 'CHRISTMAS DECOR - STAR', 0, 262, 262, 625, '2022-11-25', 'S.I. no. 0678', 'MEL-C TRADING', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(530, '', 0, 'CHRISTMAS DECOR- 12 PCS POINSETTIA (200.00/PC)', 0, 262, 262, 1, '2022-11-25', 'S.I. no. 0678', 'MEL-C TRADING', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(531, '', 0, 'CHRISTMAS DECOR - CHRISTMAS BALLS- MIX WHITE & RED', 0, 262, 262, 625, '2022-11-25', 'S.I. no. 0678', 'MEL-C TRADING', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(532, '', 0, 'CHRISTMAS DECOR - 2 BXS CHRISTMAS BALLS- PLAIN RED', 0, 262, 262, 830, '2022-11-25', 'S.I no. 0678', 'MEL-C TRADING', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(533, '', 0, 'CHRISTMAS DECOR - 3 BOXES CHRISTMAS BALLS - WHITE ', 0, 262, 262, 570, '2022-11-25', 'S.I. no. 0678', 'MEL-C TRADING', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(534, '', 0, 'CHRISTMAS DECOR - 6 PCS CHRISTMAS FILLER (190.00/P', 0, 262, 262, 1, '2022-11-25', 'S.I. no. 0678', 'MEL-C TRADING', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(535, '', 0, 'CHRISTMAS DECOR - CHRISTMAS 300 LIGHTS', 0, 262, 262, 2, '2022-11-25', 'S.I. no. 0678', 'MEL-C TRADING', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(536, '', 0, 'COMBO BINDING MACHINE- IBIND U15', 0, 219, 219, 9, '2022-12-23', '298598', 'OEM INDUSTRIAL PARTS AND CONSTRUCTION SERVICES COR', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'BM22-00013', 0),
(537, '', 0, 'RICE COOKER- 16 CUPS WITH STREAMER', 0, 159, 159, 2, '2022-12-21', 'O.R. no. 130257', 'METRO MARKET MARKET', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(538, '', 0, 'IP PHONE GLOBAL- J129', 0, 97, 97, 4, '2019-03-20', 'CONTRACT 18-045', 'TRENDS AND TECHNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PABX19-00497', 0),
(539, '', 0, 'UPS- ACCUPOWER- MODEL: AT 650', 0, 290, 290, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00674', 0),
(540, '', 0, 'UPS- ACCUPOWER- MODEL: AT 650', 0, 290, 290, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00676', 0),
(541, '', 0, 'UPS- ACCUPOWER- MODEL: AT 650', 0, 290, 290, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00680', 0),
(542, '', 0, 'UPS- ACCUPOWER- MODEL: AT 650', 0, 290, 290, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00678', 0),
(543, '', 0, 'WASHING MACHINE SAMSUNG WA12T5360BV/TC\nFULLY AUTOM', 0, 195, 195, 34, '2022-12-02', '298602', 'EPARTNERS SOLUTION- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'WAM22-00003', 0),
(544, '', 0, 'CHRISTMAS DECOR - CHRISTMAS TREE- 7 FEET', 0, 262, 262, 6, '2022-11-25', 'S.I. no. 0678', 'MEL-C TRADING', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(545, '', 0, 'UPS- ACCUPOWER- MODEL:AT 650', 0, 279, 279, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00656', 0),
(546, '', 0, 'UPS- ACCUPOWER- MODEL:AT 650', 0, 290, 290, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00681', 0),
(547, '', 0, 'UPS- ACCUPOWER- MODEL:AT 650', 0, 160, 160, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00653', 0),
(548, '', 0, 'UPS- ACCUPOWER- MODEL:AT 650', 0, 160, 160, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00652', 0),
(549, '', 0, 'TRODAT PRINTY SELF-INKING STAMP WITH DATER- WITH I', 0, 195, 195, 2, '2022-12-07', '298601', 'Tri-M Locks & Rubber Stamp Shop', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-080', 0),
(550, '', 0, 'UPS- ACCUPOWER- MODEL:AT 650', 0, 279, 279, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00663', 0),
(551, '', 0, 'UPS- ACCUPOWER- MODEL:AT 650', 0, 279, 279, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00662', 0),
(552, '', 0, 'UPS- ACCUPOWER- MODEL:AT 650', 0, 381, 381, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00670', 0),
(553, '', 0, 'UPS- ACCUPOWER- MODEL: AT 650', 0, 200, 200, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALIST & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00659', 0),
(554, '', 0, 'UPS- ACCUPOWER- MODEL:AT 650', 0, 381, 381, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00670', 0),
(555, '', 0, 'UPS- ACCUPOWER- MODEL:AT 650', 0, 381, 381, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00669', 0),
(556, '', 0, 'UPS- ACCUPOWER- MODEL:AT 650', 0, 381, 381, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00668', 0),
(557, '', 0, 'UPS- ACCUPOWER- MODEL:AT 650', 0, 381, 381, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00667', 0),
(558, '', 0, 'UPS- ACCUPOWER- MODEL:AT 650', 0, 381, 381, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00666', 0),
(559, '', 0, 'UPS- ACCUPOWER- MODEL: AT 650', 0, 290, 290, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALIST & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00673', 0),
(560, '', 0, 'UPS- ACCUPOWER- MODEL: AT 650', 0, 290, 290, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALIST & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00677', 0),
(561, '', 0, 'UPS- ACCUPOWER- MODEL:AT 650', 0, 290, 290, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALIST & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00675', 0),
(562, '', 0, 'UPS- ACCUPOWER- MODEL: AT 650', 0, 325, 325, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALIST & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00658', 0),
(563, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 200, 200, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALIST & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00657', 0),
(564, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 381, 381, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00665', 0),
(565, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 381, 381, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00664', 0),
(566, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 159, 159, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00685', 0),
(567, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 159, 159, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00684', 0),
(568, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 159, 159, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00683', 0),
(569, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 159, 159, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00682', 0),
(570, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 279, 279, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00661', 0),
(571, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 188, 188, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00654', 0),
(572, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 1, 1, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00671', 0),
(573, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 1, 1, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALIST & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00672', 0),
(574, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 279, 279, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALIST & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00660', 0),
(575, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 290, 290, 3, '2022-12-07', '298597', 'AUTOMATION SPECIALISTS & POWER EXPONENTS INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00655', 0),
(576, '', 0, 'VACUUM CLEANER- DOWELL- VC 300TP', 0, 433, 433, 6, '2022-12-02', '298602', 'EPARTNERS SOLUTION- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'VC22-00002', 0),
(577, '', 0, 'PAPER SHREDDER- TENWIN', 0, 196, 196, 18, '2022-12-01', '298600', 'PERRY A TRADING CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'SH22-00038', 0),
(578, '', 0, 'SUPPLY- DELIVERY AND INSTALLATION OF 2.5HP SPLIT T', 0, 374, 374, 57, '2022-06-03', '298511', 'De Jesus Construction', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'ACU22-00105', 0),
(579, '', 0, 'SUPPLY- DELIVERY AND INSTALLATION OF 2.5HP SPLIT T', 0, 374, 374, 57, '2022-06-03', '298511', 'De Jesus Construction', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'ACU22-00104', 0),
(580, '', 0, 'SOUND METER- LUTRON- SL-4030\nWITH: WIND SHIELD BAL', 0, 263, 263, 11, '2022-11-22', '298596', 'LSI INSTRUMENTATION & SERVICES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'SL22-001', 0),
(581, '', 0, 'LAUNDRY BASKET', 0, 195, 195, 119.75, '2022-11-27', 'S.I. no. 010434681', 'SM HYPERMARKET', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-079', 0),
(582, '', 0, 'LAUNDRY BASKET', 0, 195, 195, 119.75, '2022-11-27', 'S.I. no. 010434681', 'SM HYPERMARKET', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-078', 0),
(583, '', 0, 'LAUNDRY BASKET', 0, 195, 195, 119.75, '2022-11-27', 'S.I. no. 010434681', 'SM HYPERMARKET', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-077', 0),
(584, '', 0, 'FLOW TOTALIZER WATER METER- BRAND: YOUNIO', 0, 368, 368, 66, '2022-10-26', '298570', 'WAVESENSE-TECH WATER EQUIPMENT & SUPPLIES TRADING', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PWT22-0024', 0),
(585, '', 0, 'FLOW TOTALIZER WATER METER- BRAND: YOUNIO', 0, 368, 368, 66, '2022-10-26', '298570', 'WAVESENSE-TECH WATER EQUIPMENT & SUPPLIES TRADING', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PWT22-0023', 0),
(586, '', 0, 'PNOC PPE - WIFI ROUTER', 0, 25, 25, 7, '2019-08-15', 'SI0045193', 'IMV INTERNATIONAL MICRO VILLAGE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'RTR19-00018c', 0),
(587, '', 0, 'PNOC PPE - WIFI ROUTER', 0, 25, 25, 7, '2019-08-15', 'SI0045193', 'IMV INTERNATIONAL MICRO VILLAGE INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'RTR19-00018b', 0),
(588, '', 0, 'REFRIGERATOR- SAMSUNG- 10.66 C- COLOR PEBBLE BLUE-', 0, 433, 433, 24, '2022-11-15', '298582', 'ABENSON VENTURES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'RE22-00018', 0),
(589, '', 0, 'ELECTRIC DRYER- WHIRLPOOL- 15KD- MODEL: 4KWED4815F', 0, 433, 433, 48, '2022-11-15', '298582', 'ABENSON VENTURES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'DRIER22-00002', 0),
(590, '', 0, 'WASHING MACHINE- WHIRLPOOL- 10KG FL- COLOR SILVER-', 0, 433, 433, 38, '2022-11-15', '298582', 'ABENSON VENTURES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'WAM22-00002', 0),
(591, '', 0, 'ELECTRONIC TYPEWRITER- OLYMPIA CARRERA DE LUXE MD', 0, 245, 245, 28, '2022-11-15', '298573', 'PACIFIC OFFICE SOLUTIONS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'TY22-00038', 0),
(592, '', 0, 'RICE COOKER- IMARFLEX IRC-I8K', 0, 374, 374, 1, '2022-11-13', 'S.I. no. T0233793', 'ANSON EMPORIUM CORP.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-076', 0),
(593, '', 0, 'JOCKEY PUMP COUPLED TO A MOTOR- BRAND: GOULDS (USA', 0, 209, 209, 149, '2022-10-04', '298560', 'PUMPCRAFT INDUSTRIAL SALES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PJP22-00001', 0),
(594, '', 0, 'COMPUTER KEYBOARD- MANHATTAN', 0, 209, 209, 0, '2019-07-16', '298067', 'TEKZONE COMPUTER SALES AND SERVICE INC', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB19-00678', 0),
(595, '', 0, 'COMPUTER MONITOR- LCD- VIEWSONIC- 17\" WIDE', 0, 209, 209, 7, '2008-10-23', '295925', 'S1 TECHCNOLOGIES- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MO08-00404', 0),
(596, '', 0, 'GLOBE POST PAID SIM- 5G WITH HANDSET- SAMSUNG GALA', 0, 329, 329, 0, '2022-10-13', 'PLAN 1299', 'GLOBE TELECOMS- UNDER BUSINESS PLAN', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '09178620258', 0),
(597, '0031-1122-000003', 0, 'POWER OVER ETHERNET (POE) SWITCH 24-PORTS', 0, 428, 428, 80, '2022-10-28', '298579', 'INFOWORX INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'SWITCH22-00032', 0),
(598, '0031-1122-000002', 0, 'POWER OVER ETHERNET (POE) SWITCH 24-PORTS', 0, 428, 428, 80, '2022-10-28', '298579', 'INFOWORX INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'SWITCH22-00031', 0),
(599, '0031-1122-000001', 0, 'POWER OVER ETHERNET (POE) SWITCH 24-PORTS', 0, 428, 428, 80, '2022-10-28', '298579', 'INFOWORX INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'SWITCH22-00030', 0),
(600, '', 0, 'SELF INKING STAMP WITH DATER BRAND: TRODAT PRINTY ', 0, 318, 318, 2, '2022-11-04', '298576', 'Tri-M Locks & Rubber Stamp Shop', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-074', 0),
(601, '', 0, 'VERTICAL FILING CABINET WITH SAFE/VAULT', 0, 209, 209, 14, '2022-10-18', '298562', 'MJD STEEL ENTERPRISES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PFC22-00243', 0),
(602, '', 0, 'PRESSURE COOKER- IMARFLEX- 7L', 0, 433, 433, 2, '2022-11-04', '298581', 'EPARTNERS SOLUTION- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-075', 0),
(603, '', 0, 'SATA TO USB ADAPTER CABLE', 0, 428, 428, 320, '2022-10-18', '298566', 'AGILE TECHFRONTIER CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-065', 0),
(604, '', 0, 'USB TYPE C DIGITAL AV MULTIPORT ADAPTER', 0, 428, 428, 450, '2022-10-18', '298566', 'AGILE TECHFRONTIER CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-064', 0),
(605, '', 0, 'USB TYPE C DIGITAL AV MULTIPORT ADAPTER', 0, 428, 428, 450, '2022-10-18', '298566', 'AGILE TECHFRONTIER CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-063', 0);
INSERT INTO `assets` (`id`, `asset_code`, `assetitem_id`, `asset_name`, `category_id`, `department_id`, `location_id`, `purchase_amount`, `purchase_date`, `invoice_number`, `supplier`, `userlife`, `depreciation_rate`, `depstartdate`, `netbookvalue`, `totaldepreciation`, `status`, `assetassignee`, `specifications`, `manufacturer`, `model`, `serial_number`, `mr_number`, `mr_date`, `prevmr_number`, `unit_of_measure`, `fund_cluster_id`, `condition`, `warranty`, `insurable`, `property_number`, `asset_classification`) VALUES
(606, '', 0, 'HDMI TO VGA ADAPTER WITH AUDIO', 0, 428, 428, 200, '2022-10-18', '298566', 'AGILE TECHFRONTIER CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-062', 0),
(607, '', 0, 'HDMI TO VGA ADAPTER WITH AUDIO', 0, 428, 428, 200, '2022-10-18', '298566', 'AGILE TECHFRONTIER CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-061', 0),
(608, '', 0, 'HDMI TO VGA ADAPTER WITH AUDIO', 0, 428, 428, 200, '2022-01-08', '298566', 'AGILE TECHFRONTIER CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-060', 0),
(609, '', 0, 'USB 3.0 TO ETHERNET ADAPTER', 0, 428, 428, 400, '2022-10-18', '298566', 'AGILE TECHFRONTIER CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-059', 0),
(610, '', 0, 'USB 3.0 TO ETHERNET ADAPTER', 0, 428, 428, 400, '2022-10-18', '298566', 'AGILE TECHFRONTIER CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-058', 0),
(611, '', 0, 'USB 3.0 TO ETHERNET ADAPTER', 0, 428, 428, 400, '2022-10-18', '298566', 'AGILE TECHFRONTIER CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-057', 0),
(612, '', 0, 'MOUSE- WIRELESS- A4 TECH (SET WITH KEYBOARD)', 0, 428, 428, 0, '2022-10-18', '298566', 'AGILE TECHFRONTIER CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS22-059', 0),
(613, '', 0, 'MOUSE- WIRELESS- A4 TECH (SET WITH KEYBOARD)', 0, 428, 428, 0, '2022-10-18', '298566', 'AGILE TECHFRONTIER CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS22-058', 0),
(614, '', 0, 'MOUSE- WIRELESS- A4 TECH (SET WITH KEYBOARD)', 0, 428, 428, 0, '2022-10-18', '298566', 'AGILE TECHFRONTIER CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS22-057', 0),
(615, '', 0, 'KEYBOARD- WIRELESS- A4 TECH (SET WITH MOUSE)', 0, 428, 428, 850, '2022-10-18', '298566', 'AGILE TECHFRONTIER CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB22-00787', 0),
(616, '', 0, 'KEYBOARD- WIRELESS- A4 TECH (SET WITH MOUSE)', 0, 428, 428, 850, '2022-10-18', '298566', 'AGILE TECHFRONTIER CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB22-00786', 0),
(617, '', 0, 'KEYBOARD- WIRELESS- A4 TECH (SET WITH MOUSE)', 0, 428, 428, 850, '2022-10-18', '298566', 'AGILE TECHFRONTIER CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'KB22-00785', 0),
(618, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 438, 438, 3, '2022-10-21', '298574', 'AUTOMATION SPECIALIST & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00650', 0),
(619, '', 0, 'HDMI CABLE 10M', 0, 428, 428, 750, '2022-10-18', '298566', 'AGILE TECHFRONTIER CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-073', 0),
(620, '', 0, 'HDMI CABLE 5M', 0, 428, 428, 350, '2022-10-18', '298566', 'AGILE TECHFRONTIER CORPORATION', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-072', 0),
(621, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 438, 438, 3, '2022-10-21', '298574', 'AUTOMATION SPECIALIST & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00646', 0),
(622, '', 0, 'GLOBE POST PAID SIM- 5G- WITH HANDSET- SAMSUNG GAL', 0, 209, 209, 0, '2022-10-13', '0', 'GLOBE TELECOMS- UNDER BUSINESS PLAN', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '09178169853', 0),
(623, '', 0, 'WITH ONE LOT SUPPLY- INSTALLATION AND REPLACEMENT ', 0, 279, 279, 0, '2021-10-11', '298389', 'COM PARTS COMPUTER SALES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CAM21-00026', 0),
(624, '', 0, 'WITH ONE LOT SUPPLY- INSTALLATION AND REPLACEMENT ', 0, 279, 279, 0, '2021-10-11', '298389', 'COM PARTS COMPUTER SALES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CAM21-00025', 0),
(625, '', 0, 'WITH ONE LOT SUPPLY- INSTALLATION AND REPLACEMENT ', 0, 279, 279, 0, '2021-10-11', '298389', 'COM PARTS COMPUTER SALES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CAM21-00024', 0),
(626, '', 0, 'WITH ONE LOT- SUPPLY- INSTALLATION AND REPLACEMENT', 0, 279, 279, 0, '2021-10-11', '298389', 'COM PARTS COMPUTER SALES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CAM21-00023', 0),
(627, '', 0, '4 PCS.- PILLOWS- 18 x 28 (369/PC.)', 0, 195, 195, 1, '2022-10-23', 'INV. no. 757-00-000126688', 'LANDMARK DEPARTMENT STORE', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(628, '', 0, '3 SETS- CANADIAN LINEN- 4 PCS PER SET- SIZE: DOUBL', 0, 195, 195, 3, '2022-10-23', 'INV. no. 757-00-000126688', 'LANDMARK DEPARTMENT STORE', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(629, '', 0, '4 SETS- 4 PCS LINEN SET - SIZE: SINGLE (779.75/SET', 0, 195, 195, 3, '2022-10-23', 'INV. no. 757-00-000126688', 'LANDMARK DEPARTMENT STORE', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(630, '', 0, '6 SETS- 4 PCS LINEN SET - SIZE: SINGLE (779.75/SET', 0, 195, 195, 4, '2022-10-23', 'INV. no. 757-00-000126688', 'LANDMARK DEPARTMENT STORE', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(631, '', 0, 'RUBBER STAMP: \"CERTIFIED TRUE COPY\"', 0, 180, 180, 130, '2022-10-24', '298561', 'Tri-M Locks & Rubber Stamp Shop', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-070', 0),
(632, '', 0, 'RUBBER STAMP: \"PLEASE PUNCH FROM ATTACHED\"', 0, 180, 180, 150, '2022-10-24', '298561', 'Tri-M Locks & Rubber Stamp Shop', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-069', 0),
(633, '', 0, 'RUBBER STAMP: \"RUSH\"', 0, 180, 180, 80, '2022-10-24', '298561', 'Tri-M Locks & Rubber Stamp Shop', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-068', 0),
(634, '', 0, 'RUBBER STAMP: \"ACCRUED\"', 0, 180, 180, 80, '2022-10-24', '298561', 'Tri-M Locks & Rubber Stamp Shop', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-067', 0),
(635, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 438, 438, 3, '2022-10-21', '298574', 'AUTOMATION SPECIALIST & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00645', 0),
(636, '', 0, 'SELF INKING STAMP- SHINY S-830', 0, 180, 180, 1, '2022-10-07', '298561', 'Tri-M Locks & Rubber Stamp Shop', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-071', 0),
(637, '', 0, 'RUBBER STAMP-INSPECTED', 0, 180, 180, 80, '2022-10-07', '298561', 'Tri-M Locks & Rubber Stamp Shop', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '2022-066', 0),
(638, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 438, 438, 3, '2022-10-21', '298574', 'AUTOMATION SPECIALIST & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00651', 0),
(639, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 438, 438, 3, '2022-10-21', '298574', 'AUTOMATION SPECIALIST & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00644', 0),
(640, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 438, 438, 3, '2022-10-21', '298574', 'AUTOMATION SPECIALIST & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00649', 0),
(641, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 438, 438, 3, '2022-10-21', '298574', 'AUTOMATION SPECIALIST & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00647', 0),
(642, '', 0, 'UPS- ACCUPOWER- MODEL: AT650', 0, 438, 438, 3, '2022-10-21', '298574', 'AUTOMATION SPECIALIST & POWER EXPONENTS- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00648', 0),
(643, '', 0, 'SURGE PROTECTOR- 6-OUTLET', 0, 180, 180, 0, '0001-01-01', '0', 'No Supplier', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '11264', 0),
(644, '', 0, 'MOUSE: MANHATTAN- USB TYPE', 0, 25, 25, 0, '2019-07-16', '298067', 'TEKZONE COMPUTER SALES AND SERVICE INC', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'MS19-030', 0),
(645, '', 0, 'CD- MICROSOFT WINDOWS XP PROFESSIONAL VER. 2002', 0, 25, 25, 7, '2003-12-04', '294558', 'NEXUS TECHNOLOGIES', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'SW04-00067', 0),
(646, '', 0, 'AIR PRESSURE RELIEF VALVE', 0, 395, 395, 6, '2015-08-11', '06665', 'Gotesco Marketing- Inc.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PPRV20-0008', 0),
(647, '', 0, 'AIR PRESSURE RELIEF VALVE', 0, 209, 209, 6, '2015-08-11', '06665', 'Gotesco Marketing- Inc.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PPRV20-0007', 0),
(648, '', 0, 'AIR PRESSURE RELIEF VALVE', 0, 209, 209, 6, '2015-08-11', '06665', 'Gotesco Marketing- Inc.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PPRV20-0004', 0),
(649, '', 0, 'AIR PRESSURE RELIEF VALVE', 0, 209, 209, 6, '2015-08-11', '06665', 'Gotesco Marketing- Inc.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PPRV20-006', 0),
(650, '', 0, 'AIR PRESSURE RELIEF VALVE', 0, 209, 209, 6, '2015-08-11', '06665', 'Gotesco Marketing- Inc.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PPRV20-0005', 0),
(651, '', 0, '2-WHEEL TRAILER (IDENTIFIED WITH MOBILE WELDING EQ', 0, 209, 209, 50, '2005-12-05', '02641', 'Kilton Motor Corp', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'PDCWE05-001B', 0),
(652, '', 0, '8 PCS. ARMREST FABRIC COVER', 0, 146, 146, 2, '2011-05-20', 'S.I. no. 1187', 'DARGO DESIGN COMPONENT BUILDERS', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(653, '', 0, 'TWO PCS. EXTERNAL SPEAKERS', 0, 92, 92, 0, '0001-01-01', '0', 'NONE', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(654, '', 0, 'SCISSORS- 6\"- ORANGE', 0, 440, 440, 0, '0001-01-01', '0', 'NONE', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'NONE', 0),
(655, '', 0, 'COPYHOLDER', 0, 39, 39, 90, '1998-03-31', 'S.I. no. 71591', 'HYPERCORP- INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', '11385', 0),
(656, '', 0, 'UNINTERRUPTIBLE POWER SUPPLY (UPS) APC-BVX6501-PH', 0, 428, 428, 2, '2022-10-04', '298568', 'ACCESSORIES AND SUPPLIES DEPOT INC.', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00639', 0),
(657, '', 0, 'WITH UPS: APC SMART-UPS (INSTALLED AT CPU22-00789)', 0, 428, 428, 0, '2022-10-05', '298552', 'MASANGKAY COMPUTER CENTER', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00643', 0),
(658, '', 0, 'WITH UPS: APC SMART-UPS', 0, 368, 368, 0, '2022-10-05', '298552', 'MASANGKAY COMPUTER CENTER', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'UPS22-00642A', 0),
(659, '', 0, 'WITH OPERATING SYSTEM: WINDOW SERVER 2019 (INSTALL', 0, 428, 428, 0, '2022-10-05', '298552', 'MASANGKAY COMPUTER CENTER', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'SW22-00651', 0),
(660, '', 0, 'WITH OPERATING SYSTEM: WINDOW SERVER 2019 (INSTALL', 0, 428, 428, 0, '2022-10-05', '298552', 'MASANGKAY COMPUTER CENTER', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'SW22-00650', 0),
(661, '', 0, 'COMPUTER SERVER- GEN 10 8SFF CTO SERVER', 0, 428, 428, 378, '2022-10-05', '298552', 'MASANGKAY COMPUTER CENTER', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU22-00789', 0),
(662, '', 0, 'COMPUTER SERVER- GEN 10 8SFF CTO SERVER', 0, 428, 428, 378, '2022-10-05', '298552', 'MASANGKAY COMPUTER CENTER', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'CPU22-00788', 0),
(663, '', 0, 'LINKSYS VELOP ROUTER (3 PCS/UNIT) (INTELLIGENT MES', 0, 428, 428, 6, '2022-10-05', '298552', 'MASANGKAY COMPUTER CENTER', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'RTR22-00050', 0),
(664, '', 0, 'LINKSYS VELOP ROUTER (3 PCS/UNIT) (INTELLIGENT MES', 0, 428, 428, 6, '2022-10-05', '298552', 'MASANGKAY COMPUTER CENTER', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'RTR22-00049', 0),
(665, '', 0, 'LINKSYS VELOP ROUTER (3 PCS/UNIT) (INTELLIGENT MES', 0, 428, 428, 6, '2022-10-05', '298552', 'MASANGKAY COMPUTER CENTER', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'RTR22-00048', 0),
(666, '', 0, 'LINKSYS VELOP ROUTER (3 PCS/UNIT) (INTELLIGENT MES', 0, 428, 428, 6, '2022-10-05', '298552', 'MASANGKAY COMPUTER CENTER', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'RTR22-00047', 0),
(667, '', 0, 'LINKSYS VELOP ROUTER (3 PCS/UNIT) (INTELLIGENT MES', 0, 428, 428, 6, '2022-10-05', '298552', 'MASANGKAY COMPUTER CENTER', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'RTR22-00046', 0),
(668, '', 0, 'LINKSYS VELOP ROUTER (3 PCS/UNIT) (INTELLIGENT MES', 0, 428, 428, 6, '2022-10-05', '298552', 'MASANGKAY COMPUTER CENTER', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'RTR22-00045', 0),
(669, '', 0, 'LINKSYS VELOP ROUTER (3 PCS/UNIT) (INTELLIGENT MES', 0, 428, 428, 6, '2022-10-05', '298552', 'MASANGKAY COMPUTER CENTER', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'RTR22-00044', 0),
(670, '', 0, 'LINKSYS VELOP ROUTER (3 PCS/UNIT) (INTELLIGENT MES', 0, 428, 428, 6, '2022-10-05', '298552', 'MASANGKAY COMPUTER CENTER', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'RTR22-00043', 0),
(671, '', 0, 'LINKSYS VELOP ROUTER (3 PCS/UNIT) (INTELLIGENT MES', 0, 428, 428, 6, '2022-10-05', '298552', 'MASANGKAY COMPUTER CENTER', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'RTR22-00042', 0),
(672, '', 0, 'LINKSYS VELOP ROUTER (3 PCS/UNIT) (INTELLIGENT MES', 0, 428, 428, 6, '2022-10-05', '298552', 'MASANGKAY COMPUTER CENTER', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'RTR22-00041', 0),
(673, '', 0, 'LINKSYS VELOP ROUTER (3 PCS/UNIT) (INTELLIGENT MES', 0, 428, 428, 6, '2022-10-05', '298552', 'MASANGKAY COMPUTER CENTER', 0, 0, '0000-00-00', 0, 0, 'Unassigned', 0, '', '', '', '', '', '0000-00-00', '', '', 0, '', 0, '', 'RTR22-00040', 0),
(674, '0605-0823-Number', NULL, 'aircon', 1, 16, 3, 0, '0000-00-00', '', '', 0, 0, '0000-00-00', 0, 0, 'Unassigned', NULL, '', '', '', '', NULL, NULL, NULL, '', 0, '', 0, 'Y', 'ACOM23-01589', 8);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Property Plant and Equipment'),
(2, 'Semi-expendable with High Value'),
(3, 'Semi-expendable with Low Value');

-- --------------------------------------------------------

--
-- Table structure for table `classification`
--

CREATE TABLE `classification` (
  `id` int(30) NOT NULL,
  `prefixcode` varchar(10) DEFAULT NULL,
  `shortdescription` varchar(60) DEFAULT NULL,
  `majoracctgrp` int(30) DEFAULT NULL,
  `sbmajoracctgrp` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classification`
--

INSERT INTO `classification` (`id`, `prefixcode`, `shortdescription`, `majoracctgrp`, `sbmajoracctgrp`) VALUES
(2, '9178620258', 'Globe postpaid SIM', 0, 0),
(3, '11264', 'old tag', 0, 0),
(4, '11385', 'old tag', 0, 0),
(5, '13633', 'PPDC-acquired item', 0, 0),
(6, '184', 'old tag', 0, 0),
(7, '2023-030', 'Others', 0, 0),
(8, 'ACOM', 'aircon compressor', 1, 4),
(9, 'ACU', 'air conditioning unit', 1, 6),
(10, 'AED', 'automatic external defibrillator', 0, 0),
(11, 'AF', 'air filter', 0, 0),
(12, 'AL', 'automated access lock', 0, 0),
(13, 'AMC', 'amplifier cabinet', 0, 0),
(14, 'ANCHOR', ' anchor related item', 0, 0),
(15, 'ATS', 'automatic transfer switch', 0, 0),
(16, 'AU', 'audio equipment', 0, 0),
(17, 'AV', 'audio video equipment', 0, 0),
(18, 'AVR', 'AVR', 1, 4),
(19, 'BA', 'breath alcohol analyzer', 0, 0),
(20, 'BAG', 'bag', 0, 0),
(21, 'BB', 'bulletin board', 0, 0),
(22, 'BC', 'bookshelf', 0, 0),
(23, 'BC', 'bookshelf cabinet', 1, 6),
(24, 'BD', 'bed', 0, 0),
(25, 'BELT', '', 0, 0),
(26, 'BIKE', 'bike', 0, 0),
(27, 'BK', 'book', 0, 0),
(28, 'BLC', 'bill counter machine', 0, 0),
(29, 'BLINDS', 'blinds', 0, 0),
(30, 'BM', 'binding machine', 0, 0),
(31, 'BNB', 'semi expendable items located in BNB Tagaytay', 0, 0),
(32, 'BOAT', 'boat', 1, 5),
(33, 'BP', 'blood pressure monitor', 0, 0),
(34, 'BWC', ' ', 0, 0),
(35, 'CA', 'cabinet', 0, 0),
(36, 'CAM', 'camera/CCTV', 1, 4),
(37, 'CAR', 'vehicle', 0, 0),
(38, 'CBNK', 'capacitor bank', 0, 0),
(39, 'CBR', 'circuit breaker', 0, 0),
(40, 'CDW', 'CD writer', 0, 0),
(41, 'CEL', 'cellphone', 0, 0),
(42, 'CF', 'cabinet file', 0, 0),
(43, 'CH', 'chair', 0, 0),
(44, 'CHAIN', 'anchor chain', 0, 0),
(45, 'CM', 'coffee maker', 0, 0),
(46, 'COMP', 'computer set', 0, 0),
(47, 'CPU', 'desktop computer', 1, 4),
(48, 'CR', 'credenza', 0, 0),
(49, 'CS', 'chainsaw', 0, 0),
(50, 'DB', 'digital board for generator', 0, 0),
(51, 'DC', 'drain cleaner ', 0, 0),
(52, 'DG', 'digital insulation meter/megger tester', 0, 0),
(53, 'DL', 'door lock', 0, 0),
(54, 'DM', 'digital industrial multi meter', 0, 0),
(55, 'DRIER', 'electric dryer', 0, 0),
(56, 'DRIER', 'drier machine', 0, 0),
(57, 'DRUM', 'drum', 0, 0),
(58, 'ECAR', 'electric vehicle', 0, 0),
(59, 'EF', 'electric fan', 0, 0),
(60, 'ERT', 'emergency response tools/things', 0, 0),
(61, 'ESB', 'ESB semi expendable item', 0, 0),
(62, 'FBX', 'fire hose box', 0, 0),
(63, 'FC', 'filing cabinet with safe', 0, 0),
(64, 'FC', 'filing cabinet', 0, 0),
(65, 'FE', 'fire extinguisher', 0, 0),
(66, 'FL', 'forklift', 0, 0),
(67, 'FLAG', 'flaglet', 0, 0),
(68, 'FM', 'fax machine', 0, 0),
(69, 'FP', 'flag pole', 0, 0),
(70, 'FS', 'flow switch', 0, 0),
(71, 'FW', '???', 0, 0),
(72, 'FX', 'fire extinguisher', 0, 0),
(73, 'GARDEN', 'garden tools', 0, 0),
(74, 'GEN', 'genset', 0, 0),
(75, 'GR', 'grinder', 0, 0),
(76, 'GYM', 'gym equipment', 0, 0),
(77, 'HD', 'external hard drive', 1, 4),
(78, 'HOSE', 'hose', 0, 0),
(79, 'HRIS', 'Human resource integrated system', 0, 0),
(80, 'HS', 'hotstick', 0, 0),
(81, 'HSC', 'hand scanner', 0, 0),
(82, 'HUB', 'hub', 0, 0),
(83, 'IDL', 'ID laminating machine', 0, 0),
(84, 'IDS', 'ID software', 0, 0),
(85, 'IP94', 'ID puncher', 0, 0),
(86, 'JA', 'jack hammer', 0, 0),
(87, 'KB', 'keyboard', 0, 0),
(88, 'KE', 'kitchen equipment', 0, 0),
(89, 'KITCHEN', 'kitchen utensils', 0, 0),
(90, 'LA ', 'lighting arrester', 0, 0),
(91, 'LBS', 'load break switch', 0, 0),
(92, 'LD', 'ladder', 0, 0),
(93, 'LEX', 'lex lebris', 0, 0),
(94, 'LI', 'light', 0, 0),
(95, 'LIFT', 'projector lift', 0, 0),
(96, 'LIFT', 'table lift', 0, 0),
(97, 'LINEN', '', 0, 0),
(98, 'LR', 'laser distance meter', 0, 0),
(99, 'LS', 'lettering set', 0, 0),
(100, 'LT', 'light', 0, 0),
(101, 'MAP', 'map', 0, 0),
(102, 'MAT', 'mattress', 0, 0),
(103, 'MD', 'medicine cabinet', 0, 0),
(104, 'MD', 'modem', 0, 0),
(105, 'MED', 'medical equipment', 0, 0),
(106, 'MIC', 'microphone', 0, 0),
(107, 'MO', 'computer monitor', 1, 4),
(108, 'MP', 'megaphone', 0, 0),
(109, 'MS', 'mouse', 0, 0),
(110, 'MSW', '???', 0, 0),
(111, 'MW', 'microwave', 0, 0),
(112, 'NB', 'nebulizer', 0, 0),
(113, 'NC', 'notebook/laptop computer', 1, 4),
(114, 'NO PROPERT', '', 0, 0),
(115, 'NONE', ' ', 0, 0),
(116, 'OP', 'overhead projector', 0, 0),
(117, 'PABX', 'pabx', 0, 0),
(118, 'PACU', 'PIP air conditioning unit', 0, 0),
(119, 'PAFCCL', 'PAFC-acquired item, calculator', 0, 0),
(120, 'PAFCSV', 'PAFC-acquired item, Vehicle', 0, 0),
(121, 'PALARM', 'PIP alarm system', 0, 0),
(122, 'PARK', 'PIP semi expendable item', 0, 0),
(123, 'PAU', 'PIP audio equipment', 0, 0),
(124, 'PB', 'planters box', 0, 0),
(125, 'PBK', 'PIP book', 0, 0),
(126, 'PBLD', 'PIP blinds', 0, 0),
(127, 'PBM', 'PIP submersible pump/booster pump and motor', 0, 0),
(128, 'PBV', 'PIP bench vise', 0, 0),
(129, 'PC', 'plan cabinet', 0, 0),
(130, 'PCA', 'PIP metal cabinet', 0, 0),
(131, 'PCA', 'PIP cabinet', 0, 0),
(132, 'PCAL', 'PIP calibration kit', 0, 0),
(133, 'PCAM', 'PIP camera', 0, 0),
(134, 'PCAR', 'PIP vehicle', 0, 0),
(135, 'PCM', 'PIP coffee maker', 0, 0),
(136, 'PCPU', 'PIP cpu', 0, 0),
(137, 'PCS', 'PIP chain saw', 0, 0),
(138, 'PDCBB', 'PPDC-acquired item, bulletin board', 0, 0),
(139, 'PDCCA', 'PPDC-acquired item, cabinet', 0, 0),
(140, 'PDCFE', 'PDC-acquired item, equipment', 0, 0),
(141, 'PDCFM', 'PDC-acquired item, fax machine', 0, 0),
(142, 'PDCFN', 'PPDC-acquired item, electric fan', 0, 0),
(143, 'PDCHM', 'PPDC-acquired item (helmet)', 0, 0),
(144, 'PDCMN', 'PPDC-acquired item oscillating monitor', 0, 0),
(145, 'PDCMN', 'PPDC-acquired item hydrant monitor', 0, 0),
(146, 'PDCRD04-00', 'PPDC-acquired item, radio', 0, 0),
(147, 'PDCSV', 'PPDC-acquired item, vehicle', 0, 0),
(148, 'PDCWE', 'PPDC-acquired welding equipment', 0, 0),
(149, 'PDI', 'PIP dual indicator', 0, 0),
(150, 'PDM', 'PDMC-acquired item', 0, 0),
(151, 'PDMC', 'PDMC-acquired item', 0, 0),
(152, 'PFC', 'PIP filing cabinet', 0, 0),
(153, 'PFH', 'PIP fire hose', 0, 0),
(154, 'PGD', 'PIP gas detector', 0, 0),
(155, 'PGR', 'PIP grinder', 0, 0),
(156, 'PGV', 'PIP gate valve', 0, 0),
(157, 'PHD', 'PIP external hard drive', 0, 0),
(158, 'PHM', 'PIP hard hat', 0, 0),
(159, 'PHM', 'PIP helmet', 0, 0),
(160, 'PHP', 'PIP hand pump', 0, 0),
(161, 'PJP', 'PIP jockey pump', 0, 0),
(162, 'PKB', 'PIP keyboard', 0, 0),
(163, 'PLD15-0000', 'PIP aluminum ladder', 0, 0),
(164, 'PLI', 'PIP light', 0, 0),
(165, 'PLJ', 'PIP life jacket', 0, 0),
(166, 'PLT', 'pallet', 0, 0),
(167, 'PMED', 'PIP automatic external defibrillator', 0, 0),
(168, 'PMO', 'PIP computer monitor', 0, 0),
(169, 'PMS', 'PIP mouse', 0, 0),
(170, 'PMW', 'PIP microwave', 0, 0),
(171, 'PNOC', '', 0, 0),
(172, 'POD', 'podium', 0, 0),
(173, 'POPS', 'PIP overhead projector screen', 0, 0),
(174, 'POW', 'power meter', 0, 0),
(175, 'PPDCBk', 'PPDC-acquired item, book', 0, 0),
(176, 'PPDCRP', 'PPDC-acquired item respirator', 0, 0),
(177, 'PPIPE', 'PIP GI pipe', 0, 0),
(178, 'PPL', 'PIP pallet', 0, 0),
(179, 'PPRV', 'PIP pressure relief valve', 0, 0),
(180, 'PR2', 'printer', 0, 0),
(181, 'PRD', 'PIP regulator', 0, 0),
(182, 'PREF', 'PIP refrigerator', 0, 0),
(183, 'PRING', 'life buoy ring', 0, 0),
(184, 'PRJ', 'PIP rubber joint ', 0, 0),
(185, 'PRP', 'PIP respiratory apparatus', 0, 0),
(186, 'PS', 'push cart', 0, 0),
(187, 'PSB', 'submersible cable', 0, 0),
(188, 'PSBF', 'steel blind flange', 0, 0),
(189, 'PSC', 'PIP scanner', 0, 0),
(190, 'PSP', 'PIP speaker', 0, 0),
(191, 'PSR', 'PIP steel rack', 0, 0),
(192, 'PST', 'PIP strainer', 0, 0),
(193, 'PSUIT', 'PIP fireman suit', 0, 0),
(194, 'PSW', 'PIP software', 0, 0),
(195, 'PSWITCH', 'PIP PoE switch', 0, 0),
(196, 'PT', 'PIP torque wrench', 0, 0),
(197, 'PTF', 'PIP transformer', 0, 0),
(198, 'PTI', 'PIP thermal imager', 0, 0),
(199, 'PTO', 'PIP tools', 0, 0),
(200, 'PUPS', 'PIP UPS', 0, 0),
(201, 'PVC', 'PIP vacuum cleaner', 0, 0),
(202, 'PVFD', 'PIP variable frequency drive', 0, 0),
(203, 'PVMA', 'PIP vibration meter analyzer', 0, 0),
(204, 'PW', 'pressure washer', 0, 0),
(205, 'PWB', 'PIP whiteboard', 0, 0),
(206, 'PWLI', 'PIP water level indicator', 0, 0),
(207, 'PWM', 'PIP welding machine', 0, 0),
(208, 'PWT', 'PIP flow totalizer water meter', 0, 0),
(209, 'RAD', 'radio', 0, 0),
(210, 'RAIN GUTTE', 'rain gutter', 0, 0),
(211, 'RD', 'radiator', 0, 0),
(212, 'RE', 'refrigerator', 0, 0),
(213, 'RE96', 'refrigerator', 0, 0),
(214, 'RTR', 'router', 0, 0),
(215, 'SC', 'scanner', 0, 0),
(216, 'SE', 'shower enclosure', 0, 0),
(217, 'SF', ' ', 0, 0),
(218, 'SH', 'paper shredder', 0, 0),
(219, 'SK', 'powered speaker', 0, 0),
(220, 'SK', 'speaker', 0, 0),
(221, 'SL', 'sound meter', 0, 0),
(222, 'SL', 'steel locker', 0, 0),
(223, 'SO', 'sofa', 0, 0),
(224, 'SOLAR', 'solar equipment', 0, 0),
(225, 'SP', 'speaker', 0, 0),
(226, 'SP', 'multi-media speaker', 0, 0),
(227, 'SPB', 'spill boom', 0, 0),
(228, 'SPR', 'sprayer/fogging equipment', 0, 0),
(229, 'SR', 'steel rack', 0, 0),
(230, 'SR', 'storage racks', 0, 0),
(231, 'SSD', 'SSD', 0, 0),
(232, 'SSF', 'safe', 0, 0),
(233, 'ST', 'sphygmomanometer', 0, 0),
(234, 'SUIT', 'fireman suit', 0, 0),
(235, 'SW', 'software', 0, 0),
(236, 'SWITCH', 'PoE switch', 0, 0),
(237, 'TA', 'table', 0, 0),
(238, 'TC', 'trash can', 0, 0),
(239, 'TEMP', 'temperature scanner', 0, 0),
(240, 'TEST', 'tester', 0, 0),
(241, 'TNK', 'tank', 0, 0),
(242, 'TOOL', 'tools', 0, 0),
(243, 'TP', 'tripod pole speaker stand', 0, 0),
(244, 'TR', 'time recorder machine', 0, 0),
(245, 'TRAY', 'instrument tray', 0, 0),
(246, 'TS', 'torch set', 0, 0),
(247, 'TS', ' ', 0, 0),
(248, 'TV', 'TV', 0, 0),
(249, 'TY', 'typewriter', 0, 0),
(250, 'UOH', 'PNOC Coal Corp. property code', 0, 0),
(251, 'UPS', 'UPS', 0, 0),
(252, 'USB', 'USB', 0, 0),
(253, 'VC', 'vacuum cleaner', 0, 0),
(254, 'VER', 'vehicle ramp', 0, 0),
(255, 'VEST', 'vest', 0, 0),
(256, 'VI', 'video player', 0, 0),
(257, 'WAM', 'washing machine', 0, 0),
(258, 'WAP', 'wireless access point', 0, 0),
(259, 'WB21', 'whiteboard', 0, 0),
(260, 'WD', 'water dispenser', 0, 0),
(261, 'WH', 'water heater', 0, 0),
(262, 'WM', 'welding machine', 0, 0),
(263, 'WM', 'washing  machine', 0, 0),
(264, 'WP', 'water pump', 0, 0),
(265, 'WS', 'weighing scale', 0, 0),
(266, 'WS', 'weighing scale', 0, 0),
(267, 'ZPX 154', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `condition`
--

CREATE TABLE `condition` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `condition`
--

INSERT INTO `condition` (`id`, `name`) VALUES
(1, 'Serviceable'),
(2, 'Unserviceable'),
(3, 'Disposed'),
(4, 'For Repair'),
(5, 'Obsolete'),
(6, 'No longer needed'),
(7, 'Not used since purchase'),
(8, 'Missing'),
(9, 'For Disposal');

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
(1, 'G/F - PROPERTY'),
(2, '2/F  Legal - AA Madrid'),
(3, '2/F  Legal - AG Buenviaje'),
(4, '2/F  Legal - Conference Room'),
(5, '2/F  Legal - JC Crisostomo'),
(6, '2/F  Legal - JU Nicolas'),
(7, '2/F  Legal - LC Tinga'),
(8, '2/F  Legal - Managers Office'),
(9, '2/F  Legal - MD Saynes'),
(10, '2/F  Legal - MVE Banayad'),
(11, '2/F  Legal - Stockroom'),
(12, '2/F  Legal - Vacant 1'),
(13, '2/F  Legal - Vacant 2'),
(14, '2/F  Legal - Vacant 3'),
(15, '2/F Clinic'),
(16, '2/F Corplan - AA Aytona'),
(17, '2/F Corplan - AG Buenviaje'),
(18, '2/F Corplan - BC Labro'),
(19, '2/F Corplan - CB Tulay'),
(20, '2/F Corplan - Computer Room'),
(21, '2/F Corplan - Conference Room'),
(22, '2/F Corplan - EC Lacsamana'),
(23, '2/F Corplan - HM Alfonso'),
(24, '2/F Corplan - JY Ceballos'),
(25, '2/F Corplan - LAD Laurel'),
(26, '2/F Corplan - LD Sarmiento'),
(27, '2/F Corplan - M Garvida'),
(28, '2/F Corplan - MBL Cubelo'),
(29, '2/F Corplan - MLT Ladip'),
(30, '2/F Corplan - N. Siason'),
(31, '2/F Corplan - Pantry area'),
(32, '2/F Corplan - PSJ Capacete'),
(33, '2/F Corplan - RF Villa'),
(34, '2/F Corplan - Vacant'),
(35, '2/F Corplan - Vacant 2'),
(36, '2/F Corplan - Vacant 3'),
(37, '2/F ICO  - CM Orpilla'),
(38, '2/F ICO  - Stockroom'),
(39, '2/F ICO  - TL Aguila'),
(40, '2/F ICO  - Vacant 1'),
(41, '2/F ICO - CM Orpilla'),
(42, '2/F ICO - Conference room'),
(43, '2/F ICO - ERS Cruz'),
(44, '2/F ICO - GG Santos, Jr.'),
(45, '2/F ICO - JED Ragasa'),
(46, '2/F ICO - Stockroom'),
(47, '2/F ICO - TL Aguila'),
(48, '2/F ICO - Vacant 1'),
(49, '2/F ICO - Vacant 2'),
(50, '2/F ICO - VGZ Gomez'),
(51, '2/F INTERNAL AUDIT'),
(52, '2/F LOBBY'),
(53, '2nd Floor'),
(54, '3/F Accounting - AMV Sales'),
(55, '3/F Accounting - AR Viuya'),
(56, '3/F Accounting - Books'),
(57, '3/F Accounting - Conference room'),
(58, '3/F Accounting - GG Magboo'),
(59, '3/F Accounting - GM Villalobos'),
(60, '3/F Accounting - LM Millanes'),
(61, '3/F Accounting - NC Lacap'),
(62, '3/F Accounting - Pantry'),
(63, '3/F Accounting - PAR Villanueva'),
(64, '3/F Accounting - PR Buensalido'),
(65, '3/F Accounting - PSTC area'),
(66, '3/F Accounting - SS Ri?osa'),
(67, '3/F Accounting - Stockroom'),
(68, '3/F Accounting - Vacant'),
(69, '3/F Accounting - Vacant 2'),
(70, '3/F Accounting - Vacant 3'),
(71, '3/F COA '),
(72, '3/F COA - AB Bulos'),
(73, '3/F COA - AL Espina'),
(74, '3/F COA - Auditor'),
(75, '3/F COA - Auditor\'s office'),
(76, '3/F COA - EE Potencio'),
(77, '3/F COA - J. Bagul'),
(78, '3/F COA - JAT Casasos'),
(79, '3/F COA - KJP Palicas'),
(80, '3/F COA - KM Rigo'),
(81, '3/F COA - LD Celso'),
(82, '3/F COA - MPN Fabia'),
(83, '3/F COA - MRC Bisacruz'),
(84, '3/F COA - MSP Malabanan'),
(85, '3/F COA - Pantry'),
(86, '3/F COA - VS Yu Asensi'),
(87, '3/F ICO - TL Aguila'),
(88, '3/F LOBBY'),
(89, '3/f LOUNGE'),
(90, '3/F Treasury - ALM Vergara'),
(91, '3/F Treasury - Cashier'),
(92, '3/F Treasury - GE Manalo'),
(93, '3/F Treasury - JR Racho'),
(94, '3/F Treasury - Managers Rm'),
(95, '3/F Treasury - MEL Pecson'),
(96, '3/F Treasury - Pantry'),
(97, '3/F TREASURY - PB PISIG'),
(98, '3/F Treasury - SG San'),
(99, '3/F Treasury - SJO Buenviaje'),
(100, '3/F Treasury - Treasury Vacant 4'),
(101, '3/F Treasury - Vacant'),
(102, '3/F Treasury - Vacant 1'),
(103, '3/F Treasury - Vacant 2'),
(104, '3/F Treasury - Vacant 3'),
(105, '3/F Treasury - Waiting area'),
(106, '3/F WAITING AREA'),
(107, '3rd Floor'),
(108, '4/F - reception area'),
(109, '4/F Corsec - Atty Lila'),
(110, '4/F Corsec - IA Lorenzo'),
(111, '4/F Corsec - LM Collantes'),
(112, '4/F Corsec - R. Militar'),
(113, '4/F Corsec - Stockroom'),
(114, '4/F Corsec - Vacant'),
(115, '4/F EMD - CB Pena'),
(116, '4/F EMD - Conference room'),
(117, '4/F EMD - EAL'),
(118, '4/F EMD - EL Inlayo'),
(119, '4/F EMD - JO Labarda'),
(120, '4/F EMD - JS Juan'),
(121, '4/F EMD - LA Cruz'),
(122, '4/F EMD - pantry'),
(123, '4/F EMD - RM BABERA'),
(124, '4/F EMD - RT Macapas'),
(125, '4/F EMD - SD Cayetano'),
(126, '4/F EMD - Stockroom'),
(127, '4/F EMD - Vacant'),
(128, '4/F EMD - vacant 2'),
(129, '4/F LOBBY'),
(130, '4/F PMD - A. Ardon'),
(131, '4/F PMD - AL Endaya'),
(132, '4/F PMD - AM Untalan'),
(133, '4/F PMD - CB Natividad'),
(134, '4/F PMD - LL Katalbas'),
(135, '4/F PMD - MD Bausas'),
(136, '4/F PMD - MRC Raymundo'),
(137, '4/F PMD - Pantry area'),
(138, '4/F PMD - RR Baybay'),
(139, '4/F PMD - Stockroom'),
(140, '4/F PMD - Vacant'),
(141, '4/F PMD - Vacant2'),
(142, '4/F PMD - Vacant3'),
(143, '4/F, PNOC BLDG 5'),
(144, '4F EMD'),
(145, '4th floor'),
(146, '5/F '),
(147, '5/F - BLDG 5'),
(148, '5/F - Corsec area'),
(149, '5/F - Directors Office'),
(150, '5/F - OC'),
(151, '5/F lobby'),
(152, '5/F LOBBY / WAITING AREA'),
(153, '5/F MEETING RM'),
(154, '5/F OC'),
(155, '5/F- OC'),
(156, '5/F WAITING AREA'),
(157, '5/F, PNOC BLDG 5'),
(158, '6/F - LCA Aquitania'),
(159, '6/F - OP'),
(160, '6/F - OSVP EB'),
(161, '6/F - OSVP\'S AREA'),
(162, '6/F Conference room'),
(163, '6/F LIBRARY'),
(164, '6/f LOBBY'),
(165, '6/F OP Conference room'),
(166, '6/F OP Pantry'),
(167, '6/F -OP-Secretary (Angel)'),
(168, '6/F OSVP-EI'),
(169, '6/F -OSVP-MS (GGM)'),
(170, '6/F -OSVP-MS (pantry)'),
(171, '6/F -Staff area (MJSanchez)'),
(172, '6/F -Staff area (PLA Guiuan)'),
(173, '6/F -Staff area (vacant)'),
(174, '6/F waiting area'),
(175, '6/F-OP'),
(176, '6th floor'),
(177, '7/F - CRORALE ROOM'),
(178, '7/F THEATER'),
(179, '7/F, CHORALE RM'),
(180, 'ACCOUNTING'),
(181, 'ACCOUNTING - LE Millaners'),
(182, 'Accounting Dept.'),
(183, 'ACCOUNTING-DLF Gonzales'),
(184, 'ACCTG'),
(185, 'ACCTG - Vacant'),
(186, 'Admin. Bldg'),
(187, 'Admin. Bldg - Conference Room'),
(188, 'Admin. Bldg - GM Office'),
(189, 'Admin. Bldg - Lobby area'),
(190, 'Admin. Bldg - Pantry'),
(191, 'Admin. Bldg - Room 1 (Cashier, CRO)'),
(192, 'Admin. Bldg - Room 1 (Cashier, RCO)'),
(193, 'Admin. Bldg - Room 2 (PCO, Safety, Admin Asst)'),
(194, 'ASIC/ERD'),
(195, 'Asset Management Dept'),
(196, 'ASSET MGT. DEPT.'),
(197, 'Basement'),
(198, 'Basement - '),
(199, 'Basement - Drivers Lounge'),
(200, 'Basement - GSD'),
(201, 'Basement - Janitorial Office'),
(202, 'Basement - Messengerial Office'),
(203, 'Basement - Motorpool storage'),
(204, 'Basement - Parking'),
(205, 'Basement - PECC'),
(206, 'Basement - Security Office'),
(207, 'Basement - Stockroom'),
(208, 'BASEMENT PNOC BLDG. 6'),
(209, 'Bataan'),
(210, 'BLDG. 5'),
(211, 'BLDG. 5, 3/F (ZOME 3)'),
(212, 'Bldg. 5, Guards Room'),
(213, 'Bldg. 5, Project Operations Room'),
(214, 'Bldg. 5, stairs'),
(215, 'BMS'),
(216, 'BOARD - CONTROL ROOM'),
(217, 'BOARD-CONTROL ROOM'),
(218, 'Boardroom'),
(219, 'BRDD'),
(220, 'BUILDING 1'),
(221, 'BUILDING 2'),
(222, 'BUILDING 3'),
(223, 'BUILDING 4'),
(224, 'BUILDING 4B'),
(225, 'Building 5'),
(226, 'CANTEEN'),
(227, 'CANTEEN, BLDG. 5'),
(228, 'CATERPILLAR GENSET- BLDG 5'),
(229, 'CHILLER 2, BLDG. 6 - ROOFDECK'),
(230, 'CHOIR ROOM/GYM'),
(231, 'CLINIC'),
(232, 'COA'),
(233, 'COA - EE Potencio'),
(234, 'COA 3/F  - LAL CAPANGYARIHAN'),
(235, 'COA 3/F - LAL CAPANGYARIHAN'),
(236, 'COMP. ROOM'),
(237, 'COMPUTER BLDG., PNOC RECORDS'),
(238, 'COMPUTER ROOM'),
(239, 'CONF. ROOM A'),
(240, 'CONFERENCE RM A'),
(241, 'Corp. Secretary'),
(242, 'CORPCOM'),
(243, 'CORPLAN'),
(244, 'CORPLAN - IT area'),
(245, 'CORSEC'),
(246, 'CROduction Well (PW) 2'),
(247, 'CROduction Well (PW) 4'),
(248, 'CROduction Well (PW) 7 / R2'),
(249, 'CRORALE ROM'),
(250, 'CRORALE ROOM'),
(251, 'Disposed 2016, Laylo Junkshop'),
(252, 'Disposed, 2016, Laylo Junkshop, p6'),
(253, 'Disposed, 2016, Laylo Junkshop, p8'),
(254, 'Donated to Pateros Technological College'),
(255, 'Donated to San Juan Elem. School, Lumban, Kalayaan'),
(256, 'DRIVERS LOUNGE'),
(257, 'DRIVER\'S LOUNGE'),
(258, 'EMD'),
(259, 'ERD'),
(260, 'ERD/ASIC'),
(261, 'ESB - Admin. Building'),
(262, 'ESB - BATANGAS'),
(263, 'ESB, Batangas'),
(264, 'EXEC. LOUNGE'),
(265, 'EXECUTIVE LOUNGE, 7/F'),
(266, 'Fire station'),
(267, 'Fire station - Fire Truck'),
(268, 'Fire station - Fire truck, Cabinet 1'),
(269, 'Fire station - Fire truck, Cabinet 2'),
(270, 'Fire station - Fire truck, Cabinet 3'),
(271, 'Fire station - Fire truck, Cabinet 4'),
(272, 'Fort Magsaysay Nueva Ecija'),
(273, 'G/F - Corpcom waiting area'),
(274, 'G/F - PROPERTY'),
(275, 'G/F - PSMD'),
(276, 'G/F Corpcom'),
(277, 'G/F Corpcom - Pantry'),
(278, 'G/F Corpcom - reception area'),
(279, 'G/F GSD'),
(280, 'G/F GSD - AC Gabriel'),
(281, 'G/F GSD - Conference room'),
(282, 'G/F GSD - HM Cruz'),
(283, 'G/F GSD - JA Matillano'),
(284, 'G/F GSD - JR Baguio'),
(285, 'G/F GSD - NC Razote'),
(286, 'G/F GSD - RO Esteban'),
(287, 'G/F GSD - SM Valerio'),
(288, 'G/F LOBBY'),
(289, 'G/F OAM - LG Calaor'),
(290, 'G/F PSD'),
(291, 'G/F PSD - CA Guevarra'),
(292, 'G/F PSD - Filing room'),
(293, 'G/F PSD - FJ Castillon'),
(294, 'G/F PSD - JP Prado'),
(295, 'G/F PSD - MTA Tripulca'),
(296, 'G/F PSD - PR Yosa'),
(297, 'G/F PSD - reception area'),
(298, 'G/F PSD - Training room'),
(299, 'G/F PSD - Vacant '),
(300, 'G/F PSMD'),
(301, 'G/F PSMD - '),
(302, 'G/F PSMD - AFO Abarra'),
(303, 'G/F PSMD - ALC Gonzales'),
(304, 'G/F PSMD - Conference room'),
(305, 'G/F PSMD - Filing room'),
(306, 'G/F PSMD - GS Mendoza'),
(307, 'G/F PSMD - JT Evangelista'),
(308, 'G/F PSMD - LM Hernandez'),
(309, 'G/F PSMD - outside conference room'),
(310, 'G/F PSMD - Reception area'),
(311, 'G/F PSMD - RG vergara'),
(312, 'G/F PSMD - Vacant'),
(313, 'G/F PSMD - Vacant area'),
(314, 'G/F TRAINING RM'),
(315, 'G/F WAITING LOUNGE'),
(316, 'General Counsel'),
(317, 'Ground floor'),
(318, 'GSD'),
(319, 'GSD - IA Magabilin'),
(320, 'GSD BLDG 5'),
(321, 'GSD waiting area'),
(322, 'GSD, ATS ROOM'),
(323, 'GSD, PABX ROOM'),
(324, 'GSD/ BLDG 5'),
(325, 'GSD-BMS'),
(326, 'GYM'),
(327, 'Harbor & Security officers Office'),
(328, 'ICO'),
(329, 'Industrial park'),
(330, 'Industrial Park, old warehouse'),
(331, 'INSTALLED AT GENSET (replacement),'),
(332, 'INT. COMM'),
(333, 'Internal Audit Office'),
(334, 'JANITORS OFC'),
(335, 'JANITORS RM'),
(336, 'Jetty Area'),
(337, 'Jetty Area - cab. 8'),
(338, 'Jetty Area - pump house'),
(339, 'LEGAL'),
(340, 'LIBRARY'),
(341, 'Limay, Bataan'),
(342, 'Maintenance Room, BLDG. 5'),
(343, 'MANAGER\'S RESTROOMS'),
(344, 'MESSENGERS RM'),
(345, 'MINI THEATER'),
(346, 'Motorpool area'),
(347, 'NEAR ENTRANCE GATE'),
(348, 'NO LOCATION'),
(349, 'None'),
(350, 'Not located'),
(351, 'Not located / Corplan'),
(352, 'Not located / Treasury'),
(353, 'OAM'),
(354, 'Operators van'),
(355, 'OSVP-FAS'),
(356, 'OSVP-LAEMS'),
(357, 'OSVP-LAEMS  - GM Barleta'),
(358, 'OSVP-LAEMS - A Antonio'),
(359, 'OSVP-LAEMS - JCL Parras'),
(360, 'OSVP-LAEMS (AC Antonio)'),
(361, 'OSVP-LAEMS (GMB)'),
(362, 'OSVP-LAEMS Stockroom'),
(363, 'OSVP-MS'),
(364, 'Overhead tank of bldg 5'),
(365, 'PABX RM'),
(366, 'PABX ROOM'),
(367, 'PCO Van'),
(368, 'PIP'),
(369, 'PMD'),
(370, 'PNOC BLDG. 5'),
(371, 'PNOC BLDG. 6'),
(372, 'PNOC COMPOUND PERIMETER'),
(373, 'PNOC LABORATORY'),
(374, 'PNOC Staff house, Limay, Bataan'),
(375, 'PNOC staffhouse, Bataan, warehouse'),
(376, 'PNOC-RC'),
(377, 'POP\'s Facility'),
(378, 'POPs Facility - for transfer to DENR'),
(379, 'POPs Facility, for transfer to DENR'),
(380, 'POWER ROOM, GENSET ROOM'),
(381, 'PROCUREMENT'),
(382, 'Production Well (PW) 2'),
(383, 'Production Well (PW) 3'),
(384, 'Production Well (PW) 4'),
(385, 'Production Well (PW) 7 / R2'),
(386, 'Project Management Dept.'),
(387, 'PSD'),
(388, 'PSMD'),
(389, 'PSMD STORAGE'),
(390, 'PSTC'),
(391, 'Pstc staffhouse'),
(392, 'R1 - Tank 300'),
(393, 'R1-Fire Engine room'),
(394, 'R1-Pumphouse, Genset room'),
(395, 'R1-Tool room'),
(396, 'R2 Area'),
(397, 'Record Center '),
(398, 'Record Center - Basement'),
(399, 'Record cernter'),
(400, 'RECORDS - TRAINING ROOM'),
(401, 'RECORDS CENTER'),
(402, 'RECORDS CENTER - TRAINING RM'),
(403, 'RWM 16-054 - Bataan'),
(404, 'RWM 2017-207, 10/19/16 - BGC'),
(405, 'RWM 2017-247 -  BGC'),
(406, 'RWM 2017-254'),
(407, 'RWM 2017-254 / RWM 2017-080 (4/5/17)'),
(408, 'RWM 2017-261'),
(409, 'RWM 2018-026  03/01/18'),
(410, 'RWM 2018-048; 03/27/18'),
(411, 'RWM 2018-056; 04/05/18'),
(412, 'RWM 2018-073; 04/18/18'),
(413, 'RWM 2018-074; 04/18/18'),
(414, 'RWM 2018-075; 04/18/18'),
(415, 'RWM 2018-083; 2019 disposal'),
(416, 'RWM 2018-120, 5/18/18, 2019 disposal'),
(417, 'RWM 2018-121, 5/21/18 - BGC'),
(418, 'RWM 2018-122, 5/21/18, 2019 disposal'),
(419, 'RWM 2018-125, 5/25/18 - BGC'),
(420, 'RWM 2018-130, 5/30/18, 2019 disposal'),
(421, 'RWM 2018-137; 06/20/18 - BGC'),
(422, 'RWM 2018-142, 06/21/18 - BGC'),
(423, 'RWM 2018-159 ;07/05/18, 2019 disposal'),
(424, 'RWM 2018-203; 09/04/18, 2019 disposal'),
(425, 'SECURITY RM'),
(426, 'Shift Engineers Van'),
(427, 'Shift Engineers Van - MOL'),
(428, 'SMO'),
(429, 'Strategy Management Office'),
(430, 'SVP-LAEMS'),
(431, 'SVP-LAEMS - Stockroom'),
(432, 'SVP-MS'),
(433, 'Tagaytay'),
(434, 'Tagaytay, 2 bedroom, 2 stockroom'),
(435, 'Tank 400'),
(436, 'Tool room'),
(437, 'Trainig room, warehouse'),
(438, 'TREASURY'),
(439, 'Treasury Dept'),
(440, 'WAREHOUSE'),
(441, 'Warehouse - left door'),
(442, 'Warehouse - middle door'),
(443, 'Warehouse - right door'),
(444, 'Warehouse - right door, training room'),
(445, 'Warehouse BGC 2021'),
(446, 'Warehouse BGC 2022'),
(447, 'WITH CB PENA'),
(448, 'With Ren');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(20) NOT NULL,
  `employee_no` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `department_id` int(30) NOT NULL,
  `position_id` int(30) NOT NULL,
  `role_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `employee_no`, `firstname`, `middlename`, `lastname`, `department_id`, `position_id`, `role_id`) VALUES
(1, '1', 'PDRER PSMD', '', '', 0, 0, 0),
(2, '2', 'AARON E. VELASQUEZ', '', '', 0, 0, 0),
(3, '3', 'ADONIS C. YANGGA', '', '', 0, 0, 0),
(4, '4', 'AL - GSD PONCE', '', '', 0, 0, 0),
(5, '5', 'AL PONCE', '', '', 0, 0, 0),
(6, '6', 'ALBERTO A AYTONA', '', '', 0, 0, 0),
(7, '7', 'ALBERTO FROILAN O. ABARRA', '', '', 0, 0, 0),
(8, '8', 'ALDIOM SVENN A. LATHROP', '', '', 0, 0, 0),
(9, '9', 'ALEJANDRO D. GABRIEL', '', '', 0, 0, 0),
(10, '10', 'ALEJANDRO M. UNTALAN', '', '', 0, 0, 0),
(11, '11', 'Alfonso N (Ret) Cunanan', '', '', 0, 0, 0),
(12, '12', 'Alfredo Jr D (Ret) Abueg', '', '', 0, 0, 0),
(13, '13', 'ALMA B. TAGANAS', '', '', 0, 0, 0),
(14, '14', 'Amor Corazon D   (Ret) Sebello', '', '', 0, 0, 0),
(15, '15', 'Angel III SP (Ret) Flores', '', '', 0, 0, 0),
(16, '16', 'ANNA MARIA V. SALES', '', '', 0, 0, 0),
(17, '17', 'ANTONIO G. BUENVIAJE', '', '', 0, 0, 0),
(18, '18', 'AORON R. VIUYA', '', '', 0, 0, 0),
(19, '19', 'ARIEL ENRICO Q. PAREL', '', '', 0, 0, 0),
(20, '20', 'ARL  PONCE', '', '', 0, 0, 0),
(21, '21', 'AURALYN LOURDES M. VERGARA', '', '', 0, 0, 0),
(22, '22', 'AUSTIN RAYNI?O O. REYES', '', '', 0, 0, 0),
(23, '23', 'BERNABELLA C. LABRO', '', '', 0, 0, 0),
(24, '24', 'Cari B    (Ret) Sari', '', '', 0, 0, 0),
(25, '25', 'CARL PHILIP N. BATUCAN', '', '', 0, 0, 0),
(26, '26', 'CARLITO B. PENA', '', '', 0, 0, 0),
(27, '27', 'CARMELITA M. ORPILLA', '', '', 0, 0, 0),
(28, '28', 'CATHRIN MARGOT M. DE CASTRO', '', '', 0, 0, 0),
(29, '29', 'CHAMEL FIJI C. MELO', '', '', 0, 0, 0),
(30, '30', 'Charilou E     (Ret) Liad', '', '', 0, 0, 0),
(31, '31', 'CHARMIE B. DE CASTRO', '', '', 0, 0, 0),
(32, '32', 'CHARMINIA B. NATIVIDAD', '', '', 0, 0, 0),
(33, '33', 'Christina M (Ret) De Dios', '', '', 0, 0, 0),
(34, '34', 'CLARENCE A. GALINDO', '', '', 0, 0, 0),
(35, '35', 'Clovis T    (Ret) Tupas', '', '', 0, 0, 0),
(36, '36', 'CONRADO M. FAJARDO', '', '', 0, 0, 0),
(37, '37', 'CRISTINA M. BALUYOT', '', '', 0, 0, 0),
(38, '38', 'DANA MAE R-NG CABIG', '', '', 0, 0, 0),
(39, '39', 'DEANNE LESLEY F. GONZALES', '', '', 0, 0, 0),
(40, '40', 'DIVINA ROSE C. RIEZA', '', '', 0, 0, 0),
(41, '41', 'DOMINADOR N. ROSACAY', '', '', 0, 0, 0),
(42, '42', 'EDWIN G. CELZO', '', '', 0, 0, 0),
(43, '43', 'Edwin J Labadia', '', '', 0, 0, 0),
(44, '44', 'EDWIN L. INLAYO', '', '', 0, 0, 0),
(45, '45', 'EFREN A. LEGASPI', '', '', 0, 0, 0),
(46, '46', 'Emi Marjorie G   (Ret) Nato', '', '', 0, 0, 0),
(47, '47', 'ERICA ROSE C. ZOSIMO', '', '', 0, 0, 0),
(48, '48', 'ERMA C. LACSAMANA', '', '', 0, 0, 0),
(49, '49', 'EROSE MARLO C. LAENO', '', '', 0, 0, 0),
(50, '50', 'EVAN PATRICK F. EVANGELISTA', '', '', 0, 0, 0),
(51, '51', 'Faustino Jr P Carag', '', '', 0, 0, 0),
(52, '52', 'FBB BORJA', '', '', 0, 0, 0),
(53, '53', 'FERNANDO J. CASTILLON', '', '', 0, 0, 0),
(54, '54', 'FITZ GERALD A. MAGNO', '', '', 0, 0, 0),
(55, '55', 'FLORENTINO D. MAGSINO, JR.', '', '', 0, 0, 0),
(56, '56', 'FP JR DELFIN', '', '', 0, 0, 0),
(57, '57', 'Generoso Jr S   (Ret) Samson', '', '', 0, 0, 0),
(58, '58', 'GEORGE S. MENDOZA', '', '', 0, 0, 0),
(59, '59', 'GINA E. MANALO', '', '', 0, 0, 0),
(60, '60', 'GRACIELA M. BARLETA', '', '', 0, 0, 0),
(61, '61', 'GREGORIO G. SANTOS, JR.', '', '', 0, 0, 0),
(62, '62', 'GSD GSD', '', '', 0, 0, 0),
(63, '63', 'GYM GYM', '', '', 0, 0, 0),
(64, '64', 'Harry D   (Ret) Rubio', '', '', 0, 0, 0),
(65, '65', 'HEIDI M. CRUZ', '', '', 0, 0, 0),
(66, '66', 'Helen C (Ret) Cervantes', '', '', 0, 0, 0),
(67, '67', 'HELEN M. ALFONSO', '', '', 0, 0, 0),
(68, '68', 'HENNRY M. ADAO', '', '', 0, 0, 0),
(69, '69', 'Hernande A   (Ret) Jaraba', '', '', 0, 0, 0),
(70, '70', 'IANA BRUMELLE S. BARAL', '', '', 0, 0, 0),
(71, '71', 'INOCENCIO A. MAGABILIN', '', '', 0, 0, 0),
(72, '72', 'Invictus B  (Ret) Fiesta', '', '', 0, 0, 0),
(73, '73', 'IRENE A. LORENZO', '', '', 0, 0, 0),
(74, '74', 'IVY JEAN A. ELEPONGA', '', '', 0, 0, 0),
(75, '75', 'JAIME O. LABARDA', '', '', 0, 0, 0),
(76, '76', 'JANETTE P. RAGASA', '', '', 0, 0, 0),
(77, '77', 'JANICE F. VELASCO', '', '', 0, 0, 0),
(78, '78', 'JENIE C. CRISOSTOMO', '', '', 0, 0, 0),
(79, '79', 'JENNELYN S. JUAN', '', '', 0, 0, 0),
(80, '80', 'JENNIFER LACAP', '', '', 0, 0, 0),
(81, '81', 'JENNIFER R. RACHO', '', '', 0, 0, 0),
(82, '82', 'JENNIFER T. EVANGELISTA', '', '', 0, 0, 0),
(83, '83', 'JERWIN U. NICOLAS', '', '', 0, 0, 0),
(84, '84', 'JESUS A. MATILLANO, JR.', '', '', 0, 0, 0),
(85, '85', 'JESUS CRISTINO P. POSADAS', '', '', 0, 0, 0),
(86, '86', 'Jesus M    (Ret) Montillano', '', '', 0, 0, 0),
(87, '87', 'JHON NARCISO ANGELO', '', '', 0, 0, 0),
(88, '88', 'Joel V  (Ret) Andres', '', '', 0, 0, 0),
(89, '89', 'JOHN ALECX A. RODRIGUEZ', '', '', 0, 0, 0),
(90, '90', 'JOHN CLARENCE L. PARRAS', '', '', 0, 0, 0),
(91, '91', 'JONATHAN B. JAVIER', '', '', 0, 0, 0),
(92, '92', 'Jonathan L   (Ret) Nicolas', '', '', 0, 0, 0),
(93, '93', 'JOSEPH EDGAR G. RAGASA', '', '', 0, 0, 0),
(94, '94', 'JOSIETA R. BAGUIO', '', '', 0, 0, 0),
(95, '95', 'JOYCELYN S. MANUEL', '', '', 0, 0, 0),
(96, '96', 'JR  NADONGA', '', '', 0, 0, 0),
(97, '97', 'Jumar F (Ret) Deocampo', '', '', 0, 0, 0),
(98, '98', 'JUSTINE REYES', '', '', 0, 0, 0),
(99, '99', 'JUVY Y. CEBALLOS', '', '', 0, 0, 0),
(100, '100', 'KARL KRISTJAN B. MORO', '', '', 0, 0, 0),
(101, '101', 'KATHLEEN MYR V. RIGO', '', '', 0, 0, 0),
(102, '102', 'KATRINE ARIELLE B. ALVARADO', '', '', 0, 0, 0),
(103, '103', 'KJP PALICAS', '', '', 0, 0, 0),
(104, '104', 'LAILANIE ANGELA A. NGOJO', '', '', 0, 0, 0),
(105, '105', 'LANY JOY I. CORNEJO', '', '', 0, 0, 0),
(106, '106', 'LEO E. MILLANES', '', '', 0, 0, 0),
(107, '107', 'LEW EARVIN H. MANARIN', '', '', 0, 0, 0),
(108, '108', 'LINO GERARDO G. CALAOR', '', '', 0, 0, 0),
(109, '109', 'LOU ALBERT D. LAUREL', '', '', 0, 0, 0),
(110, '110', 'Luis Jr R  (Ret) Candug', '', '', 0, 0, 0),
(111, '111', 'LUZVIMINDA M. COLLANTES', '', '', 0, 0, 0),
(112, '112', 'MA. BELINDA L. CUBELO', '', '', 0, 0, 0),
(113, '113', 'MA. CHRISTINE AUBREY G. MIGUEL', '', '', 0, 0, 0),
(114, '114', 'MA. ELENITA L. PECSON', '', '', 0, 0, 0),
(115, '115', 'MA. JONALYN SASIS-CASTA', '', '', 0, 0, 0),
(116, '116', 'MA. LUISA L. KATALBAS', '', '', 0, 0, 0),
(117, '117', 'MA. ROWENA C. RAYMUNDO', '', '', 0, 0, 0),
(118, '118', 'MARCIANO D. DURAN', '', '', 0, 0, 0),
(119, '119', 'MARIA SHELLA P. MALABANAN', '', '', 0, 0, 0),
(120, '120', 'MARIA TERRISA A. TRIPULCA', '', '', 0, 0, 0),
(121, '121', 'MARINELLE D. SAYNES', '', '', 0, 0, 0),
(122, '122', 'Mario O Lacambra', '', '', 0, 0, 0),
(123, '123', 'Mariza G    (Ret) Natindim', '', '', 0, 0, 0),
(124, '124', 'MARY ARLYN T. AVENIDO', '', '', 0, 0, 0),
(125, '125', 'Mary Jane M   (Ret) Perez', '', '', 0, 0, 0),
(126, '126', 'Mary Jane S   (Ret) Mayuyo', '', '', 0, 0, 0),
(127, '127', 'MELISSA LOURDES T. LADIP', '', '', 0, 0, 0),
(128, '128', 'MENANDRO LEONGSON JR.', '', '', 0, 0, 0),
(129, '129', 'MICHAEL G. MENDOZA', '', '', 0, 0, 0),
(130, '130', 'MILDRED J. SANCHEZ', '', '', 0, 0, 0),
(131, '131', 'Missing Missing', '', '', 0, 0, 0),
(132, '132', 'MOL MOL', '', '', 0, 0, 0),
(133, '133', 'MPNG FABIA', '', '', 0, 0, 0),
(134, '134', 'NAR JAY PAUL M. SIASAT', '', '', 0, 0, 0),
(135, '135', 'NELSON F. SANTIAGO', '', '', 0, 0, 0),
(136, '136', 'NICETAS RUTH Q. GARVIDA', '', '', 0, 0, 0),
(137, '137', 'NINIA C PASASADABA', '', '', 0, 0, 0),
(138, '138', 'NOLY C. RAZOTE', '', '', 0, 0, 0),
(139, '139', 'NRH GARCIA', '', '', 0, 0, 0),
(140, '140', 'NS  PSMD - NOLASCO', '', '', 0, 0, 0),
(141, '141', 'PARRISH B. PISIG', '', '', 0, 0, 0),
(142, '142', 'PAULYN R. YOSA', '', '', 0, 0, 0),
(143, '143', 'PETER S.J. CAPACETE', '', '', 0, 0, 0),
(144, '144', 'PIA M. ALETA', '', '', 0, 0, 0),
(145, '145', 'PRECIOUS P. ARCE', '', '', 0, 0, 0),
(146, '146', 'PRINCESS ROXAN B. BUENSALIDO', '', '', 0, 0, 0),
(147, '147', 'Proponent (PAAbaya No', '', '', 0, 0, 0),
(148, '148', 'Proponent No', '', '', 0, 0, 0),
(149, '149', 'PSMD PSMD', '', '', 0, 0, 0),
(150, '150', 'RACHELMINA T. MACAPAS', '', '', 0, 0, 0),
(151, '151', 'RAINE V. REYES', '', '', 0, 0, 0),
(152, '152', 'RAYMOND S. FAMPULA', '', '', 0, 0, 0),
(153, '153', 'Remegio P (Ret) Bayaua', '', '', 0, 0, 0),
(154, '154', 'Renato C   (Ret) Linao', '', '', 0, 0, 0),
(155, '155', 'RENE M. BABERA', '', '', 0, 0, 0),
(156, '156', 'RENEE ROSE A COSTRUA', '', '', 0, 0, 0),
(157, '157', 'REYNILDA CABAHUG DE LEON', '', '', 0, 0, 0),
(158, '158', 'RICHARD MIGUEL D. ALLAUIGAN, JR.', '', '', 0, 0, 0),
(159, '159', 'Rita T (Ret) Dela Cruz', '', '', 0, 0, 0),
(160, '160', 'RIZABEL  R. BAYBAY', '', '', 0, 0, 0),
(161, '161', 'ROBERTO F. VILLA, JR.', '', '', 0, 0, 0),
(162, '162', 'RODERICK G. VERGARA', '', '', 0, 0, 0),
(163, '163', 'RONALD C. CHUA', '', '', 0, 0, 0),
(164, '164', 'ROSE ANNE-DY U. PONTIGON', '', '', 0, 0, 0),
(165, '165', 'ROVELYN M. TUMAMAO', '', '', 0, 0, 0),
(166, '166', 'RUDINA G. ATIENZA', '', '', 0, 0, 0),
(167, '167', 'RUPERTO C. GUEVARRA', '', '', 0, 0, 0),
(168, '168', 'SARAH JANE O. BUENVIAJE', '', '', 0, 0, 0),
(169, '169', 'SARINA B. VITALES', '', '', 0, 0, 0),
(170, '170', 'SEVERINO M. VALERIO', '', '', 0, 0, 0),
(171, '171', 'SONIA G. SAN', '', '', 0, 0, 0),
(172, '172', 'STELLA D. CAYETANO', '', '', 0, 0, 0),
(173, '173', 'TERESITA L. AGUILA', '', '', 0, 0, 0),
(174, '174', 'TM VEGA', '', '', 0, 0, 0),
(175, '175', 'VITUS GERARD Z. GOMEZ', '', '', 0, 0, 0),
(176, '176', 'WAREHOUSE BATAAN', '', '', 0, 0, 0),
(177, '177', 'WAREHOUSE BGC', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fund_cluster`
--

CREATE TABLE `fund_cluster` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fund_cluster`
--

INSERT INTO `fund_cluster` (`id`, `name`) VALUES
(1, 'Internally Generated Fund');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `inv_date` date DEFAULT NULL,
  `description` varchar(50) NOT NULL,
  `employee_id` int(30) NOT NULL,
  `rpt_status` varchar(20) NOT NULL,
  `cut_off_date` date NOT NULL,
  `start_date` date NOT NULL,
  `completion_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `inv_date`, `description`, `employee_id`, `rpt_status`, `cut_off_date`, `start_date`, `completion_date`) VALUES
(9, '0000-00-00', '2023 Annual Inventory', 6, 'Closed', '0000-00-00', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `inventorydetails`
--

CREATE TABLE `inventorydetails` (
  `id` int(30) NOT NULL,
  `inv_id` int(30) DEFAULT NULL,
  `asset_code` varchar(20) NOT NULL,
  `asset_status` varchar(20) NOT NULL,
  `remarks` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventorydetails`
--

INSERT INTO `inventorydetails` (`id`, `inv_id`, `asset_code`, `asset_status`, `remarks`) VALUES
(13, 5, '2200001', 'Serviceable', 'working'),
(14, 5, '2200002', 'Serviceable', 'unserviceable'),
(17, 5, '2200006', 'Serviceable', 'working'),
(18, 5, '2200008', 'Serviceable', ''),
(19, 5, '2200009', 'Serviceable', ''),
(20, 5, '2200011', 'Serviceable', ''),
(21, 5, '2200012', 'Serviceable', ''),
(22, 5, '2200013', 'Serviceable', ''),
(25, 6, '2200001', 'Unserviceable', ''),
(26, 9, '0031-1222-000054', 'Serviceable', 'OK');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`) VALUES
(1, 'G/F - PROPERTY'),
(2, '2/F  Legal - AA Madrid'),
(3, '2/F  Legal - AG Buenviaje'),
(4, '2/F  Legal - Conference Room'),
(5, '2/F  Legal - JC Crisostomo'),
(6, '2/F  Legal - JU Nicolas'),
(7, '2/F  Legal - LC Tinga'),
(8, '2/F  Legal - Managers Office'),
(9, '2/F  Legal - MD Saynes'),
(10, '2/F  Legal - MVE Banayad'),
(11, '2/F  Legal - Stockroom'),
(12, '2/F  Legal - Vacant 1'),
(13, '2/F  Legal - Vacant 2'),
(14, '2/F  Legal - Vacant 3'),
(15, '2/F Clinic'),
(16, '2/F Corplan - AA Aytona'),
(17, '2/F Corplan - AG Buenviaje'),
(18, '2/F Corplan - BC Labro'),
(19, '2/F Corplan - CB Tulay'),
(20, '2/F Corplan - Computer Room'),
(21, '2/F Corplan - Conference Room'),
(22, '2/F Corplan - EC Lacsamana'),
(23, '2/F Corplan - HM Alfonso'),
(24, '2/F Corplan - JY Ceballos'),
(25, '2/F Corplan - LAD Laurel'),
(26, '2/F Corplan - LD Sarmiento'),
(27, '2/F Corplan - M Garvida'),
(28, '2/F Corplan - MBL Cubelo'),
(29, '2/F Corplan - MLT Ladip'),
(30, '2/F Corplan - N. Siason'),
(31, '2/F Corplan - Pantry area'),
(32, '2/F Corplan - PSJ Capacete'),
(33, '2/F Corplan - RF Villa'),
(34, '2/F Corplan - Vacant'),
(35, '2/F Corplan - Vacant 2'),
(36, '2/F Corplan - Vacant 3'),
(37, '2/F ICO  - CM Orpilla'),
(38, '2/F ICO  - Stockroom'),
(39, '2/F ICO  - TL Aguila'),
(40, '2/F ICO  - Vacant 1'),
(41, '2/F ICO - CM Orpilla'),
(42, '2/F ICO - Conference room'),
(43, '2/F ICO - ERS Cruz'),
(44, '2/F ICO - GG Santos, Jr.'),
(45, '2/F ICO - JED Ragasa'),
(46, '2/F ICO - Stockroom'),
(47, '2/F ICO - TL Aguila'),
(48, '2/F ICO - Vacant 1'),
(49, '2/F ICO - Vacant 2'),
(50, '2/F ICO - VGZ Gomez'),
(51, '2/F INTERNAL AUDIT'),
(52, '2/F LOBBY'),
(53, '2nd Floor'),
(54, '3/F Accounting - AMV Sales'),
(55, '3/F Accounting - AR Viuya'),
(56, '3/F Accounting - Books'),
(57, '3/F Accounting - Conference room'),
(58, '3/F Accounting - GG Magboo'),
(59, '3/F Accounting - GM Villalobos'),
(60, '3/F Accounting - LM Millanes'),
(61, '3/F Accounting - NC Lacap'),
(62, '3/F Accounting - Pantry'),
(63, '3/F Accounting - PAR Villanueva'),
(64, '3/F Accounting - PR Buensalido'),
(65, '3/F Accounting - PSTC area'),
(66, '3/F Accounting - SS Ri?osa'),
(67, '3/F Accounting - Stockroom'),
(68, '3/F Accounting - Vacant'),
(69, '3/F Accounting - Vacant 2'),
(70, '3/F Accounting - Vacant 3'),
(71, '3/F COA '),
(72, '3/F COA - AB Bulos'),
(73, '3/F COA - AL Espina'),
(74, '3/F COA - Auditor'),
(75, '3/F COA - Auditor\'s office'),
(76, '3/F COA - EE Potencio'),
(77, '3/F COA - J. Bagul'),
(78, '3/F COA - JAT Casasos'),
(79, '3/F COA - KJP Palicas'),
(80, '3/F COA - KM Rigo'),
(81, '3/F COA - LD Celso'),
(82, '3/F COA - MPN Fabia'),
(83, '3/F COA - MRC Bisacruz'),
(84, '3/F COA - MSP Malabanan'),
(85, '3/F COA - Pantry'),
(86, '3/F COA - VS Yu Asensi'),
(87, '3/F ICO - TL Aguila'),
(88, '3/F LOBBY'),
(89, '3/f LOUNGE'),
(90, '3/F Treasury - ALM Vergara'),
(91, '3/F Treasury - Cashier'),
(92, '3/F Treasury - GE Manalo'),
(93, '3/F Treasury - JR Racho'),
(94, '3/F Treasury - Managers Rm'),
(95, '3/F Treasury - MEL Pecson'),
(96, '3/F Treasury - Pantry'),
(97, '3/F TREASURY - PB PISIG'),
(98, '3/F Treasury - SG San'),
(99, '3/F Treasury - SJO Buenviaje'),
(100, '3/F Treasury - Treasury Vacant 4'),
(101, '3/F Treasury - Vacant'),
(102, '3/F Treasury - Vacant 1'),
(103, '3/F Treasury - Vacant 2'),
(104, '3/F Treasury - Vacant 3'),
(105, '3/F Treasury - Waiting area'),
(106, '3/F WAITING AREA'),
(107, '3rd Floor'),
(108, '4/F - reception area'),
(109, '4/F Corsec - Atty Lila'),
(110, '4/F Corsec - IA Lorenzo'),
(111, '4/F Corsec - LM Collantes'),
(112, '4/F Corsec - R. Militar'),
(113, '4/F Corsec - Stockroom'),
(114, '4/F Corsec - Vacant'),
(115, '4/F EMD - CB Pena'),
(116, '4/F EMD - Conference room'),
(117, '4/F EMD - EAL'),
(118, '4/F EMD - EL Inlayo'),
(119, '4/F EMD - JO Labarda'),
(120, '4/F EMD - JS Juan'),
(121, '4/F EMD - LA Cruz'),
(122, '4/F EMD - pantry'),
(123, '4/F EMD - RM BABERA'),
(124, '4/F EMD - RT Macapas'),
(125, '4/F EMD - SD Cayetano'),
(126, '4/F EMD - Stockroom'),
(127, '4/F EMD - Vacant'),
(128, '4/F EMD - vacant 2'),
(129, '4/F LOBBY'),
(130, '4/F PMD - A. Ardon'),
(131, '4/F PMD - AL Endaya'),
(132, '4/F PMD - AM Untalan'),
(133, '4/F PMD - CB Natividad'),
(134, '4/F PMD - LL Katalbas'),
(135, '4/F PMD - MD Bausas'),
(136, '4/F PMD - MRC Raymundo'),
(137, '4/F PMD - Pantry area'),
(138, '4/F PMD - RR Baybay'),
(139, '4/F PMD - Stockroom'),
(140, '4/F PMD - Vacant'),
(141, '4/F PMD - Vacant2'),
(142, '4/F PMD - Vacant3'),
(143, '4/F, PNOC BLDG 5'),
(144, '4F EMD'),
(145, '4th floor'),
(146, '5/F '),
(147, '5/F - BLDG 5'),
(148, '5/F - Corsec area'),
(149, '5/F - Directors Office'),
(150, '5/F - OC'),
(151, '5/F lobby'),
(152, '5/F LOBBY / WAITING AREA'),
(153, '5/F MEETING RM'),
(154, '5/F OC'),
(155, '5/F- OC'),
(156, '5/F WAITING AREA'),
(157, '5/F, PNOC BLDG 5'),
(158, '6/F - LCA Aquitania'),
(159, '6/F - OP'),
(160, '6/F - OSVP EB'),
(161, '6/F - OSVP\'S AREA'),
(162, '6/F Conference room'),
(163, '6/F LIBRARY'),
(164, '6/f LOBBY'),
(165, '6/F OP Conference room'),
(166, '6/F OP Pantry'),
(167, '6/F -OP-Secretary (Angel)'),
(168, '6/F OSVP-EI'),
(169, '6/F -OSVP-MS (GGM)'),
(170, '6/F -OSVP-MS (pantry)'),
(171, '6/F -Staff area (MJSanchez)'),
(172, '6/F -Staff area (PLA Guiuan)'),
(173, '6/F -Staff area (vacant)'),
(174, '6/F waiting area'),
(175, '6/F-OP'),
(176, '6th floor'),
(177, '7/F - CRORALE ROOM'),
(178, '7/F THEATER'),
(179, '7/F, CHORALE RM'),
(180, 'ACCOUNTING'),
(181, 'ACCOUNTING - LE Millaners'),
(182, 'Accounting Dept.'),
(183, 'ACCOUNTING-DLF Gonzales'),
(184, 'ACCTG'),
(185, 'ACCTG - Vacant'),
(186, 'Admin. Bldg'),
(187, 'Admin. Bldg - Conference Room'),
(188, 'Admin. Bldg - GM Office'),
(189, 'Admin. Bldg - Lobby area'),
(190, 'Admin. Bldg - Pantry'),
(191, 'Admin. Bldg - Room 1 (Cashier, CRO)'),
(192, 'Admin. Bldg - Room 1 (Cashier, RCO)'),
(193, 'Admin. Bldg - Room 2 (PCO, Safety, Admin Asst)'),
(194, 'ASIC/ERD'),
(195, 'Asset Management Dept'),
(196, 'ASSET MGT. DEPT.'),
(197, 'Basement'),
(198, 'Basement - '),
(199, 'Basement - Drivers Lounge'),
(200, 'Basement - GSD'),
(201, 'Basement - Janitorial Office'),
(202, 'Basement - Messengerial Office'),
(203, 'Basement - Motorpool storage'),
(204, 'Basement - Parking'),
(205, 'Basement - PECC'),
(206, 'Basement - Security Office'),
(207, 'Basement - Stockroom'),
(208, 'BASEMENT PNOC BLDG. 6'),
(209, 'Bataan'),
(210, 'BLDG. 5'),
(211, 'BLDG. 5, 3/F (ZOME 3)'),
(212, 'Bldg. 5, Guards Room'),
(213, 'Bldg. 5, Project Operations Room'),
(214, 'Bldg. 5, stairs'),
(215, 'BMS'),
(216, 'BOARD - CONTROL ROOM'),
(217, 'BOARD-CONTROL ROOM'),
(218, 'Boardroom'),
(219, 'BRDD'),
(220, 'BUILDING 1'),
(221, 'BUILDING 2'),
(222, 'BUILDING 3'),
(223, 'BUILDING 4'),
(224, 'BUILDING 4B'),
(225, 'Building 5'),
(226, 'CANTEEN'),
(227, 'CANTEEN, BLDG. 5'),
(228, 'CATERPILLAR GENSET- BLDG 5'),
(229, 'CHILLER 2, BLDG. 6 - ROOFDECK'),
(230, 'CHOIR ROOM/GYM'),
(231, 'CLINIC'),
(232, 'COA'),
(233, 'COA - EE Potencio'),
(234, 'COA 3/F  - LAL CAPANGYARIHAN'),
(235, 'COA 3/F - LAL CAPANGYARIHAN'),
(236, 'COMP. ROOM'),
(237, 'COMPUTER BLDG., PNOC RECORDS'),
(238, 'COMPUTER ROOM'),
(239, 'CONF. ROOM A'),
(240, 'CONFERENCE RM A'),
(241, 'Corp. Secretary'),
(242, 'CORPCOM'),
(243, 'CORPLAN'),
(244, 'CORPLAN - IT area'),
(245, 'CORSEC'),
(246, 'CROduction Well (PW) 2'),
(247, 'CROduction Well (PW) 4'),
(248, 'CROduction Well (PW) 7 / R2'),
(249, 'CRORALE ROM'),
(250, 'CRORALE ROOM'),
(251, 'Disposed 2016, Laylo Junkshop'),
(252, 'Disposed, 2016, Laylo Junkshop, p6'),
(253, 'Disposed, 2016, Laylo Junkshop, p8'),
(254, 'Donated to Pateros Technological College'),
(255, 'Donated to San Juan Elem. School, Lumban, Kalayaan'),
(256, 'DRIVERS LOUNGE'),
(257, 'DRIVER\'S LOUNGE'),
(258, 'EMD'),
(259, 'ERD'),
(260, 'ERD/ASIC'),
(261, 'ESB - Admin. Building'),
(262, 'ESB - BATANGAS'),
(263, 'ESB, Batangas'),
(264, 'EXEC. LOUNGE'),
(265, 'EXECUTIVE LOUNGE, 7/F'),
(266, 'Fire station'),
(267, 'Fire station - Fire Truck'),
(268, 'Fire station - Fire truck, Cabinet 1'),
(269, 'Fire station - Fire truck, Cabinet 2'),
(270, 'Fire station - Fire truck, Cabinet 3'),
(271, 'Fire station - Fire truck, Cabinet 4'),
(272, 'Fort Magsaysay Nueva Ecija'),
(273, 'G/F - Corpcom waiting area'),
(274, 'G/F - PROPERTY'),
(275, 'G/F - PSMD'),
(276, 'G/F Corpcom'),
(277, 'G/F Corpcom - Pantry'),
(278, 'G/F Corpcom - reception area'),
(279, 'G/F GSD'),
(280, 'G/F GSD - AC Gabriel'),
(281, 'G/F GSD - Conference room'),
(282, 'G/F GSD - HM Cruz'),
(283, 'G/F GSD - JA Matillano'),
(284, 'G/F GSD - JR Baguio'),
(285, 'G/F GSD - NC Razote'),
(286, 'G/F GSD - RO Esteban'),
(287, 'G/F GSD - SM Valerio'),
(288, 'G/F LOBBY'),
(289, 'G/F OAM - LG Calaor'),
(290, 'G/F PSD'),
(291, 'G/F PSD - CA Guevarra'),
(292, 'G/F PSD - Filing room'),
(293, 'G/F PSD - FJ Castillon'),
(294, 'G/F PSD - JP Prado'),
(295, 'G/F PSD - MTA Tripulca'),
(296, 'G/F PSD - PR Yosa'),
(297, 'G/F PSD - reception area'),
(298, 'G/F PSD - Training room'),
(299, 'G/F PSD - Vacant '),
(300, 'G/F PSMD'),
(301, 'G/F PSMD - '),
(302, 'G/F PSMD - AFO Abarra'),
(303, 'G/F PSMD - ALC Gonzales'),
(304, 'G/F PSMD - Conference room'),
(305, 'G/F PSMD - Filing room'),
(306, 'G/F PSMD - GS Mendoza'),
(307, 'G/F PSMD - JT Evangelista'),
(308, 'G/F PSMD - LM Hernandez'),
(309, 'G/F PSMD - outside conference room'),
(310, 'G/F PSMD - Reception area'),
(311, 'G/F PSMD - RG vergara'),
(312, 'G/F PSMD - Vacant'),
(313, 'G/F PSMD - Vacant area'),
(314, 'G/F TRAINING RM'),
(315, 'G/F WAITING LOUNGE'),
(316, 'General Counsel'),
(317, 'Ground floor'),
(318, 'GSD'),
(319, 'GSD - IA Magabilin'),
(320, 'GSD BLDG 5'),
(321, 'GSD waiting area'),
(322, 'GSD, ATS ROOM'),
(323, 'GSD, PABX ROOM'),
(324, 'GSD/ BLDG 5'),
(325, 'GSD-BMS'),
(326, 'GYM'),
(327, 'Harbor & Security officers Office'),
(328, 'ICO'),
(329, 'Industrial park'),
(330, 'Industrial Park, old warehouse'),
(331, 'INSTALLED AT GENSET (replacement),'),
(332, 'INT. COMM'),
(333, 'Internal Audit Office'),
(334, 'JANITORS OFC'),
(335, 'JANITORS RM'),
(336, 'Jetty Area'),
(337, 'Jetty Area - cab. 8'),
(338, 'Jetty Area - pump house'),
(339, 'LEGAL'),
(340, 'LIBRARY'),
(341, 'Limay, Bataan'),
(342, 'Maintenance Room, BLDG. 5'),
(343, 'MANAGER\'S RESTROOMS'),
(344, 'MESSENGERS RM'),
(345, 'MINI THEATER'),
(346, 'Motorpool area'),
(347, 'NEAR ENTRANCE GATE'),
(348, 'NO LOCATION'),
(349, 'None'),
(350, 'Not located'),
(351, 'Not located / Corplan'),
(352, 'Not located / Treasury'),
(353, 'OAM'),
(354, 'Operators van'),
(355, 'OSVP-FAS'),
(356, 'OSVP-LAEMS'),
(357, 'OSVP-LAEMS  - GM Barleta'),
(358, 'OSVP-LAEMS - A Antonio'),
(359, 'OSVP-LAEMS - JCL Parras'),
(360, 'OSVP-LAEMS (AC Antonio)'),
(361, 'OSVP-LAEMS (GMB)'),
(362, 'OSVP-LAEMS Stockroom'),
(363, 'OSVP-MS'),
(364, 'Overhead tank of bldg 5'),
(365, 'PABX RM'),
(366, 'PABX ROOM'),
(367, 'PCO Van'),
(368, 'PIP'),
(369, 'PMD'),
(370, 'PNOC BLDG. 5'),
(371, 'PNOC BLDG. 6'),
(372, 'PNOC COMPOUND PERIMETER'),
(373, 'PNOC LABORATORY'),
(374, 'PNOC Staff house, Limay, Bataan'),
(375, 'PNOC staffhouse, Bataan, warehouse'),
(376, 'PNOC-RC'),
(377, 'POP\'s Facility'),
(378, 'POPs Facility - for transfer to DENR'),
(379, 'POPs Facility, for transfer to DENR'),
(380, 'POWER ROOM, GENSET ROOM'),
(381, 'PROCUREMENT'),
(382, 'Production Well (PW) 2'),
(383, 'Production Well (PW) 3'),
(384, 'Production Well (PW) 4'),
(385, 'Production Well (PW) 7 / R2'),
(386, 'Project Management Dept.'),
(387, 'PSD'),
(388, 'PSMD'),
(389, 'PSMD STORAGE'),
(390, 'PSTC'),
(391, 'Pstc staffhouse'),
(392, 'R1 - Tank 300'),
(393, 'R1-Fire Engine room'),
(394, 'R1-Pumphouse, Genset room'),
(395, 'R1-Tool room'),
(396, 'R2 Area'),
(397, 'Record Center '),
(398, 'Record Center - Basement'),
(399, 'Record cernter'),
(400, 'RECORDS - TRAINING ROOM'),
(401, 'RECORDS CENTER'),
(402, 'RECORDS CENTER - TRAINING RM'),
(403, 'RWM 16-054 - Bataan'),
(404, 'RWM 2017-207, 10/19/16 - BGC'),
(405, 'RWM 2017-247 -  BGC'),
(406, 'RWM 2017-254'),
(407, 'RWM 2017-254 / RWM 2017-080 (4/5/17)'),
(408, 'RWM 2017-261'),
(409, 'RWM 2018-026  03/01/18'),
(410, 'RWM 2018-048; 03/27/18'),
(411, 'RWM 2018-056; 04/05/18'),
(412, 'RWM 2018-073; 04/18/18'),
(413, 'RWM 2018-074; 04/18/18'),
(414, 'RWM 2018-075; 04/18/18'),
(415, 'RWM 2018-083; 2019 disposal'),
(416, 'RWM 2018-120, 5/18/18, 2019 disposal'),
(417, 'RWM 2018-121, 5/21/18 - BGC'),
(418, 'RWM 2018-122, 5/21/18, 2019 disposal'),
(419, 'RWM 2018-125, 5/25/18 - BGC'),
(420, 'RWM 2018-130, 5/30/18, 2019 disposal'),
(421, 'RWM 2018-137; 06/20/18 - BGC'),
(422, 'RWM 2018-142, 06/21/18 - BGC'),
(423, 'RWM 2018-159 ;07/05/18, 2019 disposal'),
(424, 'RWM 2018-203; 09/04/18, 2019 disposal'),
(425, 'SECURITY RM'),
(426, 'Shift Engineers Van'),
(427, 'Shift Engineers Van - MOL'),
(428, 'SMO'),
(429, 'Strategy Management Office'),
(430, 'SVP-LAEMS'),
(431, 'SVP-LAEMS - Stockroom'),
(432, 'SVP-MS'),
(433, 'Tagaytay'),
(434, 'Tagaytay, 2 bedroom, 2 stockroom'),
(435, 'Tank 400'),
(436, 'Tool room'),
(437, 'Trainig room, warehouse'),
(438, 'TREASURY'),
(439, 'Treasury Dept'),
(440, 'WAREHOUSE'),
(441, 'Warehouse - left door'),
(442, 'Warehouse - middle door'),
(443, 'Warehouse - right door'),
(444, 'Warehouse - right door, training room'),
(445, 'Warehouse BGC 2021'),
(446, 'Warehouse BGC 2022'),
(447, 'WITH CB PENA'),
(448, 'With Ren');

-- --------------------------------------------------------

--
-- Table structure for table `majoracctgrp`
--

CREATE TABLE `majoracctgrp` (
  `id` int(30) NOT NULL,
  `code` varchar(2) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `majoracctgrp`
--

INSERT INTO `majoracctgrp` (`id`, `code`, `name`) VALUES
(1, '06', 'Property, Plant and Equipment'),
(2, '08', 'Intangible Asset');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(20) NOT NULL,
  `notif_name` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `type` varchar(20) NOT NULL,
  `role_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`, `name`) VALUES
(1, 'User Maintenance'),
(2, 'Role Maintenance'),
(3, 'Permission Maintenance'),
(4, 'Asset Categories Maintenance'),
(5, 'Employees Maintenance'),
(6, 'Department Maintenance'),
(7, 'Office Mainitenance'),
(8, 'Location Maintenance'),
(9, 'Fund Cluster Maintenance'),
(10, 'Asset Masterlist'),
(11, 'Asset Assignment'),
(12, 'Asset Inventory'),
(13, 'Supplies Masterlist'),
(14, 'Supplies Delivery'),
(15, 'Supplies Issuance'),
(16, 'Reports'),
(19, 'Asset Transfer'),
(20, 'Employee Ledger Card'),
(21, 'RPCPPE'),
(22, 'IIRUP'),
(23, 'Waste Material Report'),
(24, 'Assets per Employee'),
(25, 'Assets Per Category'),
(26, 'Assets Per Department '),
(27, 'Activity Logs'),
(28, 'Barcode Stickers'),
(29, 'Notifications Maintenance'),
(30, 'Supplier Maintenance'),
(31, 'Asset Classification'),
(32, 'RFID Registry');

-- --------------------------------------------------------

--
-- Table structure for table `rfid_reg`
--

CREATE TABLE `rfid_reg` (
  `id` int(11) NOT NULL,
  `rfid` varchar(50) DEFAULT NULL,
  `property_no` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rfid_reg`
--

INSERT INTO `rfid_reg` (`id`, `rfid`, `property_no`) VALUES
(5, '1630040258', NULL),
(7, '2132328770', NULL),
(8, '0965475090', NULL),
(9, '2786393442', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rolepermissions`
--

CREATE TABLE `rolepermissions` (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rolepermissions`
--

INSERT INTO `rolepermissions` (`id`, `role_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 4),
(4, 1, 5),
(5, 2, 7),
(6, 2, 8),
(7, 4, 9),
(8, 5, 10),
(9, 6, 7),
(10, 6, 8),
(11, 6, 9),
(12, 7, 7),
(13, 1, 5),
(14, 5, 1),
(15, 1, 16),
(16, 1, 20),
(17, 1, 22),
(18, 1, 21),
(19, 1, 6),
(20, 1, 10),
(21, 1, 11),
(23, 1, 6),
(24, 1, 24),
(25, 1, 7),
(28, 1, 19),
(29, 1, 12),
(30, 1, 13),
(31, 1, 30),
(32, 1, 3),
(33, 1, 31),
(35, 1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` bigint(20) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(2, 'User'),
(4, 'Supervisor'),
(5, 'Auditor'),
(7, 'Property Custodian');

-- --------------------------------------------------------

--
-- Table structure for table `sbmajoracctgrp`
--

CREATE TABLE `sbmajoracctgrp` (
  `id` int(30) NOT NULL,
  `code` varchar(2) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sbmajoracctgrp`
--

INSERT INTO `sbmajoracctgrp` (`id`, `code`, `name`) VALUES
(1, '01', 'Intangible Assets'),
(2, '03', 'Infrastructure Assets'),
(3, '04', 'Building and Other Structures'),
(4, '05', 'Machinery and Equipment'),
(5, '06', 'Transportation Equipment'),
(6, '07', 'Furniture, Fixture and Books'),
(7, '08', 'Leased Assets'),
(8, '99', 'Other Property, Plant and Equipment');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'Assigned'),
(2, 'Unassigned');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact_number` varchar(50) DEFAULT NULL,
  `contact_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `address`, `contact_number`, `contact_name`) VALUES
(11, 'MANOLO SALARDA BOHOL', 'Lt 14 block 9 phase 1 Villa San Isidro', '0284207844', 'NOLI BOHOL');

-- --------------------------------------------------------

--
-- Table structure for table `supplies_begbal`
--

CREATE TABLE `supplies_begbal` (
  `id` int(30) NOT NULL,
  `item_code` varchar(20) DEFAULT NULL,
  `balance_date` date DEFAULT NULL,
  `beg_bal` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplies_master`
--

CREATE TABLE `supplies_master` (
  `id` int(30) NOT NULL,
  `item_type` int(30) DEFAULT NULL,
  `item_code` varchar(20) DEFAULT NULL,
  `item_description` varchar(50) DEFAULT NULL,
  `unit_of_measure` varchar(10) DEFAULT NULL,
  `pcs_unit` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplies_master`
--

INSERT INTO `supplies_master` (`id`, `item_type`, `item_code`, `item_description`, `unit_of_measure`, `pcs_unit`) VALUES
(6, 0, 'S-001', 'Bond Paper Short', '', 100),
(7, 0, 'S-002', 'Bond Paper Long', 'ream', 100),
(8, 0, 'S-003', 'Bond Paper A4', 'ream', 100),
(9, 0, 'S-004', 'Brown Envelope Short', 'pc', 1),
(10, 0, 'S-005', 'Brown Envelope Long', 'pc', 1),
(11, 0, 'S-006', 'Scotch Tape Large', 'pc', 1),
(12, 0, 'S-007', 'Scotch Tape small', 'pc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplies_txn`
--

CREATE TABLE `supplies_txn` (
  `id` int(30) NOT NULL,
  `tran_date` date DEFAULT NULL,
  `tran_code` varchar(30) DEFAULT NULL,
  `ref_no` varchar(20) DEFAULT NULL,
  `department_id` int(30) DEFAULT NULL,
  `item_id` varchar(20) NOT NULL,
  `purchase_price` double DEFAULT NULL,
  `dep` double DEFAULT NULL,
  `wdw` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplies_txn`
--

INSERT INTO `supplies_txn` (`id`, `tran_date`, `tran_code`, `ref_no`, `department_id`, `item_id`, `purchase_price`, `dep`, `wdw`) VALUES
(1, '2023-03-09', 'DEL', '23-03001', NULL, '6', 245, 200, NULL),
(2, '2023-03-02', 'WDW', '23-0001', 1, '6', NULL, NULL, 50),
(3, '2023-03-02', 'DEL', '23-03002', NULL, '7', 285, 300, NULL),
(4, '2023-03-02', 'DEL', '23-03002', NULL, '8', 255, 100, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'system_name', 'Asset Inventory Management System'),
(2, 'system_short_name', 'AIMS'),
(3, 'company_name', 'Philippine National Oil Company'),
(4, 'company_short_name', 'PNOC'),
(5, 'logo', 'uploads/logo-1641955218.png'),
(6, 'user_avatar', 'uploads/user_avatar.jpg'),
(7, 'cover', 'uploads/cover-1641954928.png');

-- --------------------------------------------------------

--
-- Table structure for table `tempassignment`
--

CREATE TABLE `tempassignment` (
  `id` int(30) NOT NULL,
  `mrnumber` varchar(30) NOT NULL,
  `mrdate` date NOT NULL,
  `employee_id` int(30) NOT NULL,
  `assetcode` varchar(20) NOT NULL,
  `assetid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = staff',
  `status` varchar(20) DEFAULT NULL,
  `wl_attempts` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `contact`, `username`, `password`, `type`, `status`, `wl_attempts`) VALUES
(1, 'Administrator', '', '', 'admin', 'admin123', 1, 'ACTIVE', 0),
(5, 'Anjo Plasabas', '', '', 'aplasabas', '$2y$10$a59bT7byFGvGpSlErv6Iw.VSTKAY32bHYaJdcsxEMyxN.Nm1SIl8y', 1, 'ACTIVE', 0),
(6, 'Rufel Aganan', '', '', 'rpaganan', '$2y$10$zvShqdgx4j.EcHoWx7uvU.CU2ebYRZk2TQNEHvI1NM8p3ZYbyVvKS', 1, 'ACTIVE', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activitylogs`
--
ALTER TABLE `activitylogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assetassignment`
--
ALTER TABLE `assetassignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assetitem`
--
ALTER TABLE `assetitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classification`
--
ALTER TABLE `classification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `condition`
--
ALTER TABLE `condition`
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
-- Indexes for table `fund_cluster`
--
ALTER TABLE `fund_cluster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventorydetails`
--
ALTER TABLE `inventorydetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `majoracctgrp`
--
ALTER TABLE `majoracctgrp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rfid_reg`
--
ALTER TABLE `rfid_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rolepermissions`
--
ALTER TABLE `rolepermissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `sbmajoracctgrp`
--
ALTER TABLE `sbmajoracctgrp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplies_begbal`
--
ALTER TABLE `supplies_begbal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplies_master`
--
ALTER TABLE `supplies_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplies_txn`
--
ALTER TABLE `supplies_txn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempassignment`
--
ALTER TABLE `tempassignment`
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
-- AUTO_INCREMENT for table `activitylogs`
--
ALTER TABLE `activitylogs`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=585;

--
-- AUTO_INCREMENT for table `assetassignment`
--
ALTER TABLE `assetassignment`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `assetitem`
--
ALTER TABLE `assetitem`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=675;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `classification`
--
ALTER TABLE `classification`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT for table `condition`
--
ALTER TABLE `condition`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9643;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13834;

--
-- AUTO_INCREMENT for table `fund_cluster`
--
ALTER TABLE `fund_cluster`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `inventorydetails`
--
ALTER TABLE `inventorydetails`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=449;

--
-- AUTO_INCREMENT for table `majoracctgrp`
--
ALTER TABLE `majoracctgrp`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `office`
--
ALTER TABLE `office`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `rfid_reg`
--
ALTER TABLE `rfid_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rolepermissions`
--
ALTER TABLE `rolepermissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sbmajoracctgrp`
--
ALTER TABLE `sbmajoracctgrp`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `supplies_begbal`
--
ALTER TABLE `supplies_begbal`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplies_master`
--
ALTER TABLE `supplies_master`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `supplies_txn`
--
ALTER TABLE `supplies_txn`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tempassignment`
--
ALTER TABLE `tempassignment`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
