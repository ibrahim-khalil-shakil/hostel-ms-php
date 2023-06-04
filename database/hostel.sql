-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2023 at 08:38 AM
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
-- Table structure for table `add_room`
--

CREATE TABLE `add_room` (
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
-- Dumping data for table `add_room`
--

INSERT INTO `add_room` (`id`, `room_no`, `seater`, `room_type`, `room_fees`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 101, 5, 'AC', 1000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-04 07:03:09'),
(2, 101, 5, 'AC', 1000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 101, 5, 'AC', 1000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `book_hostel`
--

CREATE TABLE `book_hostel` (
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
  `start_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_hostel`
--

INSERT INTO `book_hostel` (`id`, `room_no`, `seat_no`, `room_type`, `seater`, `food`, `gym`, `library`, `indoor_games`, `duration`, `fees_pm`, `total_fees`, `reg_no`, `first_name`, `last_name`, `gender`, `email`, `contact_no`, `current_add`, `permanent_add`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `start_date`) VALUES
(1, 0, '', 'Choose...', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-04 05:52:20', NULL),
(2, 0, '', 'Choose...', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-04 05:53:01', NULL),
(3, 0, '', 'Choose...', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-04 05:53:02', NULL),
(4, 0, '', 'Choose...', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-04 05:53:02', NULL),
(5, 0, '', 'Choose...', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-04 05:53:03', NULL),
(6, 101, '4', '1', '', 0, 0, 0, 0, 1, 1000, '', '12345', 'Raihan', 'Mojahed', 'Male', 'wdpf@gmail.com', 12345678, '2no Gate', '2no gate', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-04 00:00:00'),
(7, 101, '4', '1', '5', 0, 0, 0, 0, 1, 1000, '1234', '12134567890', 'Raihan', 'Sazzad', 'Male', 'wdpf@gmail.com', 12345678, '2no Gate', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-04 00:00:00'),
(8, 212, '4', '', '2', 0, 0, 0, 0, 3, 1000, '1234', '12134567890', 'Ibrahim', 'Khalil', 'Male', 'iksakil2@gmail.com', 1522106658, '2no Gate', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-04 08:25:15', '2023-06-04 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_student`
--

CREATE TABLE `hostel_student` (
  `id` int(11) NOT NULL,
  `reg_no` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `room_no` varchar(255) NOT NULL,
  `seat_no` varchar(255) NOT NULL,
  `room_type` varchar(255) NOT NULL,
  `staying_from` datetime NOT NULL,
  `contact_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manage_room`
--

CREATE TABLE `manage_room` (
  `id` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `room_type` int(11) NOT NULL,
  `room_fees` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `id` int(11) NOT NULL,
  `reg_no` int(15) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `contact_no` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`id`, `reg_no`, `first_name`, `last_name`, `gender`, `contact_no`, `email`, `image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 12345, 'touhid', '0', 'Male', '12345678', 'wdpf@gmail.com', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-03 06:51:23'),
(2, 2147483647, 'Raihan', '0', 'Male', '01522107777', 'raihan@gmail.com', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-03 06:51:24'),
(3, 12345, 'Ibrahim', '0', 'Male', '6546546546', 'iks@gmail.com', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-03 06:51:25'),
(4, 12345, 'Safayet', '0', 'Male', '01522107777', 'wdpf@gmail.com', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-03 06:51:26'),
(5, 2147483647, 'Jashim', '0', 'Male', '12345678', 'wdpf@gmail.com', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-03 06:51:26'),
(6, 12345, 'touhid', '0', 'Male', '12345678', 'wdpf@gmail.com', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-03 06:51:27'),
(7, 12345, 'touhid', '0', 'Male', '12345678', 'wdpf@gmail.com', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-03 06:51:28'),
(8, 12345, 'touhid', '0', 'Male', '12345678', 'wdpf@gmail.com', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-03 06:51:29'),
(9, 2147483647, 'touhid', '0', 'Male', '12345678', 'wdpf@gmail.com', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-03 06:51:34'),
(10, 12345, 'touhid', '0', 'Male', '12345678', 'wdpf@gmail.com', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-03 06:51:22'),
(11, 12345, 'Raihan ', '0', 'Male ', '12345678 ', 'wdpf@gmail.com', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-03 07:06:09'),
(12, 2147483647, 'Raihan', 'Sazzad', 'Male', '12345678', 'wdpf@gmail.com', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 12345, 'Ibrahim', 'Khalil', 'Male', '123456', 'ashab@gmail.com', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2023-06-04 08:25:26'),
(14, 12345, 'Ibrahim ', 'Khalil ', 'Male ', '01522107777 ', 'iksakil2@gmail.com', '16858575132026.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `view_student`
--

CREATE TABLE `view_student` (
  `id` int(11) NOT NULL,
  `reg_no` int(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contact_no` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_room`
--
ALTER TABLE `add_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_hostel`
--
ALTER TABLE `book_hostel`
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
-- Indexes for table `sign_in`
--
ALTER TABLE `sign_in`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `view_student`
--
ALTER TABLE `view_student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_room`
--
ALTER TABLE `add_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `book_hostel`
--
ALTER TABLE `book_hostel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hostel_student`
--
ALTER TABLE `hostel_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manage_room`
--
ALTER TABLE `manage_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sign_in`
--
ALTER TABLE `sign_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `view_student`
--
ALTER TABLE `view_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
