-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2023 at 09:41 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

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
(1, 'raihan Shazzad', '125225', 'irregular', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '2023-06-07 08:50:47'),
(2, 'Raihan Shazzad', '11223344', 'Irregular', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(3, 'Ibrahim Khalil', '55667788', 'Regular', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

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
(1, 'Gym', 'Daily', '10000.00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '2023-06-07 07:56:37'),
(2, 'Indore Games', 'Monthly', '500.00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(3, 'Swimming Pool', 'Monthly', '400.00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(4, 'Food', '1', '500.00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_student`
--

CREATE TABLE `hostel_student` (
  `id` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `seat_no` varchar(50) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `seater` varchar(255) NOT NULL,
  `food` int(11) NOT NULL COMMENT '0=non_AC, 1=AC',
  `gym` int(11) NOT NULL COMMENT '0=no, 1=yes',
  `library` int(11) NOT NULL COMMENT '0=no, 1=yes',
  `indoor_games` int(11) NOT NULL COMMENT '0=no, 1=yes',
  `duration` int(11) NOT NULL,
  `fees_pm` int(11) NOT NULL,
  `total_fees` varchar(255) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_no` bigint(11) NOT NULL,
  `current_add` varchar(100) NOT NULL,
  `permanent_add` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `staying_from` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hostel_student`
--

INSERT INTO `hostel_student` (`id`, `room_no`, `seat_no`, `room_type`, `seater`, `food`, `gym`, `library`, `indoor_games`, `duration`, `fees_pm`, `total_fees`, `reg_no`, `first_name`, `last_name`, `gender`, `email`, `contact_no`, `current_add`, `permanent_add`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `start_date`, `staying_from`) VALUES
(1, 101, '5A', 'AC', '1', 1, 0, 0, 0, 1, 1000, '1500', '12134567890', 'Noman', 'Hossain', 'Male', 'noman@gmail.com', 1522107777, '2no Gate', 'Chandpur', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-05 00:00:00', NULL),
(2, 212, '4', 'Non-AC', '2', 0, 0, 0, 0, 3, 2000, '15000', '12345', 'Safayet', 'Azad', 'Male', 'iksakil2@gmail.com', 1522107777, 'GEC', 'Feni', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-05 00:00:00', NULL),
(3, 212, '5', 'Non-AC', '2', 1, 0, 0, 0, 3, 2000, '15000', '2345342323', 'Mojaed', 'Juel', 'Male', 'thouigmail.com', 1522106658, '2no Gate', '2no Gate', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-05 00:00:00', NULL);

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
(2, '252', 'AC', 'Choose...', NULL, NULL, NULL, NULL, '2023-06-07 08:25:38'),
(3, '104', 'Non_AC', 'no', NULL, NULL, NULL, NULL, '2023-06-07 07:01:46'),
(4, '102', 'AC', 'No', NULL, NULL, NULL, NULL, NULL),
(5, '201', 'Non-AC', 'Yes', NULL, NULL, NULL, NULL, NULL),
(6, '202', 'Non-AC', 'No', NULL, NULL, NULL, NULL, NULL);

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
(1, 1, '001', '5000.00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(2, 1, '002', '5000.00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(3, 1, '003', '4500.00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(4, 4, '001', '1000.00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(5, 4, '002', '2000.00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(6, 5, '001', '3000.00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(7, 6, '001', '4000.00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

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
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sign_in`
--

INSERT INTO `sign_in` (`id`, `name`, `email`, `contact_no`, `password`, `cpassword`, `deleted_at`) VALUES
(1, 'Ibrahim Khalil', 'admin@gmail.com', '0123456789', 'adcd7048512e64b48da55b027577886ee5a36350', '', '0000-00-00 00:00:00');

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
(1, 'Abdur Rahim', 'Sumon', 'Sajeda', '+880012411221', '+880415454', '465415434225', 1, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(2, 'Kamal Uddin', 'Jamal', 'Jamila', '+8800124123424', '+88041545423', '465415442365', 2, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(3, 'Nazrul Islam', 'Asif', 'Ayesha', '+880012410789', '+8804154545675', '465415445645', 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(4, 'Ahmed Ullah', 'Momin', 'Morjina', '+8801328678793', '+8804154542334', '432564545364', 0, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(5, 'Rahul Hossain', 'Faruk', 'Farzana', '+880123832984', '+8804154586756', '342567567556', 0, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(6, 'Md Nasir', 'Rakib', 'Rokeya', '+8801235434534', '+8804154586767', '445153442365', 0, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(7, 'Ashikur Rahman', 'Polash', 'Parul', '+880786556789', '+8876867842334', '768544564645', 0, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

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
(3, 1, 2, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(5, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(6, 2, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(7, 2, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_monthly_bill`
--

CREATE TABLE `student_monthly_bill` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `facility_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `bill_month` date NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `contact`, `password`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 'Raihan Shazzad', 'admin@gmail.com', '01245855858', 'b22c388e12f63e7bf7f1d0f59b5c66e7015eb1e8', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '2023-06-07 08:19:58'),
(2, 'Admin', 'admin@gmail.com', '+880123456789', 'adcd7048512e64b48da55b027577886ee5a36350', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(3, 'Raihan', 'raihan@gmail.com', '+0880987654321', 'adcd7048512e64b48da55b027577886ee5a36350', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(4, 'Ibrahim', 'ibrahim@gmail.com', '+880192837645', '123', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '2023-06-10 09:32:21'),
(5, 'Ibrahim', 'ibrahim@gmail.com', '+8801982786354', 'adcd7048512e64b48da55b027577886ee5a36350', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

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
-- Indexes for table `hostel_student`
--
ALTER TABLE `hostel_student`
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
-- AUTO_INCREMENT for table `hostel_student`
--
ALTER TABLE `hostel_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manage_room`
--
ALTER TABLE `manage_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `seat`
--
ALTER TABLE `seat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sign_in`
--
ALTER TABLE `sign_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_facility`
--
ALTER TABLE `student_facility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_monthly_bill`
--
ALTER TABLE `student_monthly_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_payment`
--
ALTER TABLE `student_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
