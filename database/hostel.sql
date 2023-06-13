-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 07:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_head`
--

CREATE TABLE `account_head` (
  `id` int(11) NOT NULL,
  `head_name` varchar(255) NOT NULL,
  `head_code` varchar(50) NOT NULL,
  `account_type` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_head`
--

INSERT INTO `account_head` (`id`, `head_name`, `head_code`, `account_type`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 'Mojahedul Islam', '111', 'Expense', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(2, 'Raihan Shazzad', '222', 'Income', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(3, 'Ibrahim Khalil', '333', 'Income', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count_type` varchar(50) NOT NULL COMMENT 'daily=1, monthly=2',
  `amount` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`id`, `name`, `count_type`, `amount`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 'Gym', '2', 1000.00, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(2, 'Indoor Games', '2', 500.00, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(3, 'Library', '2', 300.00, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(4, 'Food', '1', 200.00, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `manage_room`
--

CREATE TABLE `manage_room` (
  `id` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `room_type` varchar(255) NOT NULL,
  `room_fees` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manage_room`
--

INSERT INTO `manage_room` (`id`, `room_no`, `seater`, `room_type`, `room_fees`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 101, 1, 'AC', 1000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `room_no` varchar(255) NOT NULL,
  `aircondition` varchar(50) NOT NULL COMMENT 'AC=1,non_AC=0',
  `wifi` varchar(255) NOT NULL COMMENT 'yes=1, No=0',
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `room_no`, `aircondition`, `wifi`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, '101', 'AC', 'Yes', NULL, NULL, NULL, NULL, NULL),
(2, '102', 'AC', 'No', NULL, NULL, NULL, NULL, NULL),
(3, '201', 'Non-AC', 'Yes', NULL, NULL, NULL, NULL, NULL),
(4, '202', 'Non-AC', 'No', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `seat_no` varchar(50) NOT NULL,
  `rent` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`id`, `room_id`, `seat_no`, `rent`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 1, '1', 1000.00, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(2, 2, '2', 2000.00, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(3, 3, '3', 3000.00, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(4, 4, '4', 4000.00, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sign_in`
--

CREATE TABLE `sign_in` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `terms` tinyint(1) NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sign_in`
--

INSERT INTO `sign_in` (`id`, `name`, `email`, `contact_no`, `password`, `cpassword`, `image`, `terms`, `deleted_at`) VALUES
(1, 'Ibrahim Khalil', 'ibrahim@gmail.com', '0123456789', 'adcd7048512e64b48da55b027577886ee5a36350', '', 'iks.png', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `father` varchar(255) NOT NULL,
  `mother` varchar(255) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `guardian_contact` varchar(50) NOT NULL,
  `nid_bc` varchar(50) NOT NULL,
  `seat_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `father`, `mother`, `contact`, `guardian_contact`, `nid_bc`, `seat_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 'Sujon', 'Sohel', 'Sefali', '+880123456789', '+880123456789', '123456789', 1, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(2, 'Roni', 'Rakib', 'Rokeya', '+880987654321', '+880987654321', '987654321', 1, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(3, 'Tonmoy', 'Taieb', 'Taslima', '+880192837465', '+880192837465', '192837465', 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(4, 'Jubair', 'Jamal', 'Jerin', '+880987123645', '+880987123645', '987123645', 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_facility`
--

CREATE TABLE `student_facility` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `facility_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_facility`
--

INSERT INTO `student_facility` (`id`, `student_id`, `facility_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 1, 1, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(2, 2, 2, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(3, 2, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(4, 3, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(5, 3, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(6, 4, 1, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(7, 4, 2, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(8, 4, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(9, 4, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_monthly_bill`
--

CREATE TABLE `student_monthly_bill` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `bill_status` int(11) DEFAULT 0,
  `bill_month` date NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_monthly_bill`
--

INSERT INTO `student_monthly_bill` (`id`, `student_id`, `amount`, `bill_status`, `bill_month`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 1, 2000.00, 1, '2023-06-28', '2023-06-12 18:18:06', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(2, 1, 2000.00, 0, '2023-07-28', '2023-06-12 18:18:57', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(3, 4, 11800.00, 1, '2023-06-28', '2023-06-12 18:19:58', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(4, 4, 12000.00, 0, '2023-07-28', '2023-06-12 18:20:35', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(5, 2, 8000.00, 1, '2023-06-28', '2023-06-12 18:21:52', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(6, 2, 8200.00, 0, '2023-07-28', '2023-06-12 18:22:03', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(7, 3, 9300.00, 1, '2023-06-28', '2023-06-12 18:22:51', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(8, 3, 9500.00, 0, '2023-07-28', '2023-06-12 18:23:15', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_monthly_bill_details`
--

CREATE TABLE `student_monthly_bill_details` (
  `id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `facility_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `bill_month` date NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_monthly_bill_details`
--

INSERT INTO `student_monthly_bill_details` (`id`, `bill_id`, `facility_id`, `amount`, `bill_month`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 1, 1, 1000.00, '2023-06-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(2, 1, 0, 1000.00, '2023-06-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(3, 2, 1, 1000.00, '2023-07-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(4, 2, 0, 1000.00, '2023-07-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(5, 3, 1, 1000.00, '2023-06-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(6, 3, 2, 500.00, '2023-06-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(7, 3, 3, 300.00, '2023-06-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(8, 3, 4, 6000.00, '2023-06-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(9, 3, 0, 4000.00, '2023-06-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(10, 4, 1, 1000.00, '2023-07-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(11, 4, 2, 500.00, '2023-07-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(12, 4, 3, 300.00, '2023-07-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(13, 4, 4, 6200.00, '2023-07-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(14, 4, 0, 4000.00, '2023-07-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(15, 5, 1, 1000.00, '2023-06-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(16, 5, 4, 6000.00, '2023-06-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(17, 5, 0, 1000.00, '2023-06-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(18, 6, 1, 1000.00, '2023-07-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(19, 6, 4, 6200.00, '2023-07-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(20, 6, 0, 1000.00, '2023-07-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(21, 7, 3, 300.00, '2023-06-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(22, 7, 4, 6000.00, '2023-06-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(23, 7, 0, 3000.00, '2023-06-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(24, 8, 3, 300.00, '2023-07-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(25, 8, 4, 6200.00, '2023-07-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(26, 8, 0, 3000.00, '2023-07-28', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_payment`
--

CREATE TABLE `student_payment` (
  `id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `pay_amount` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_payment`
--

INSERT INTO `student_payment` (`id`, `bill_id`, `pay_amount`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 1, 2000.00, '2023-06-12 18:18:23', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(2, 3, 11800.00, '2023-06-12 18:20:21', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(3, 5, 8000.00, '2023-06-12 18:21:59', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(4, 7, 9300.00, '2023-06-12 18:23:02', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `account_head_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transaction_date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `account_head_id`, `amount`, `transaction_date`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 1, 3500.00, '2023-06-12', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '2023-06-12 06:15:12'),
(2, 1, 2222.00, '2023-06-12', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '2023-06-12 06:29:50'),
(3, 1, 4000.00, '2023-06-12', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(4, 1, 2222.00, '2023-06-12', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(5, 1, 2222.00, '2023-06-12', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(6, 3, 4000.00, '2023-06-12', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_head`
--
ALTER TABLE `account_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_room`
--
ALTER TABLE `manage_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sign_in`
--
ALTER TABLE `sign_in`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_facility`
--
ALTER TABLE `student_facility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_monthly_bill`
--
ALTER TABLE `student_monthly_bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_monthly_bill_details`
--
ALTER TABLE `student_monthly_bill_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_payment`
--
ALTER TABLE `student_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_head`
--
ALTER TABLE `account_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `facility`
--
ALTER TABLE `facility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `manage_room`
--
ALTER TABLE `manage_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seat`
--
ALTER TABLE `seat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sign_in`
--
ALTER TABLE `sign_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_facility`
--
ALTER TABLE `student_facility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student_monthly_bill`
--
ALTER TABLE `student_monthly_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_monthly_bill_details`
--
ALTER TABLE `student_monthly_bill_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `student_payment`
--
ALTER TABLE `student_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
