-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 02, 2022 at 07:39 PM
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
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_first_name` varchar(25) NOT NULL,
  `admin_last_name` varchar(25) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_contact` varchar(10) NOT NULL DEFAULT '0709518661',
  `profile_image` varchar(100) NOT NULL DEFAULT 'user.jpg',
  `admin_password` varchar(255) NOT NULL,
  `admin_create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_first_name`, `admin_last_name`, `admin_email`, `admin_contact`, `profile_image`, `admin_password`, `admin_create_date`) VALUES
(1, 'Herber', 'Emanuel', 'admin@gmail.com', '0709518661', 'pic.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-07 16:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointment_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `session_id` int(20) NOT NULL,
  `queue_number` int(255) NOT NULL,
  `start_time` varchar(20) NOT NULL,
  `end_time` varchar(20) NOT NULL,
  `appointment_status` varchar(20) NOT NULL DEFAULT 'pending',
  `rating` int(20) DEFAULT NULL,
  `reason` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointment_id`, `patient_id`, `doctor_id`, `session_id`, `queue_number`, `start_time`, `end_time`, `appointment_status`, `rating`, `reason`, `created_at`) VALUES
(18, 8, 14, 0, 0, '', '', 'pending', NULL, '', '2022-10-19 09:11:37'),
(20, 9, 1, 0, 0, '', '', 'pending', NULL, '', '2022-10-19 09:11:37'),
(22, 9, 21, 0, 0, '', '', 'pending', NULL, '', '2022-10-19 09:11:37'),
(23, 9, 1, 0, 0, '', '', 'pending', NULL, '', '2022-10-19 09:11:37'),
(24, 19, 1, 0, 0, '', '', 'pending', NULL, '', '2022-10-19 09:11:37'),
(25, 21, 1, 0, 0, '', '', 'pending', NULL, '', '2022-10-19 09:11:37'),
(27, 19, 21, 0, 0, '', '', 'approved', NULL, '', '2022-10-19 09:11:37'),
(33, 22, 1, 0, 5837, '', '', 'pending', NULL, '', '2022-10-19 09:11:37'),
(34, 22, 0, 0, 2884, '', '', 'pending', NULL, '', '2022-10-19 09:11:37'),
(35, 22, 0, 0, 3563, '', '', 'pending', NULL, '', '2022-10-19 09:11:37'),
(36, 22, 22, 0, 5054, '', '', 'pending', NULL, '', '2022-10-19 09:11:37'),
(45, 25, 22, 11, 1, '10:00', '11:00', 'approved', 5, 'Am sick', '2022-10-19 14:47:52'),
(46, 26, 22, 11, 2, '09:00', '10:00', 'approved', NULL, 'sick', '2022-10-20 09:01:01'),
(47, 27, 22, 11, 3, '07:00', '08:00', 'approved', NULL, 'eye stress', '2022-10-20 09:01:30'),
(48, 29, 1, 13, 1, '14:00', '15:00', 'approved', NULL, '', '2022-10-20 11:28:59'),
(49, 29, 21, 12, 1, '08:00', '09:00', 'approved', NULL, '', '2022-10-20 09:02:50'),
(50, 25, 21, 12, 2, '20:00', '21:00', 'rejected', NULL, '', '2022-10-20 09:03:01'),
(51, 25, 1, 13, 2, '15:00', '16:00', 'approved', 3, '', '2022-10-25 10:28:56'),
(52, 27, 21, 12, 3, '18:00', '19:00', 'approved', NULL, '', '2022-10-20 09:03:06'),
(53, 27, 1, 12, 4, '09:00', '10:00', 'rejected', NULL, '', '2022-10-20 11:29:20'),
(54, 29, 22, 11, 4, '07:00', '08:00', 'rejected', NULL, '', '2022-10-20 09:01:34'),
(55, 26, 21, 12, 5, '10:00', '11:00', 'rejected', NULL, '', '2022-10-20 09:03:13'),
(56, 26, 1, 13, 3, '12:00', '13:00', 'rejected', NULL, '', '2022-10-20 11:29:24'),
(57, 32, 22, 11, 5, '08:00', '09:00', 'rejected', NULL, '', '2022-10-20 09:43:30'),
(58, 31, 21, 12, 6, '11:00', '12:00', 'pending', NULL, '', '2022-10-20 09:27:51'),
(59, 33, 21, 12, 7, '08:00', '09:00', 'pending', NULL, '', '2022-10-20 09:30:21'),
(60, 31, 22, 11, 6, '07:00', '08:00', 'approved', NULL, '', '2022-10-20 09:43:36'),
(61, 34, 22, 18, 1, '11:00', '12:00', 'approved', NULL, '', '2022-10-20 09:52:15'),
(62, 35, 22, 18, 2, '09:00', '10:00', 'pending', NULL, '', '2022-10-20 09:51:39'),
(63, 36, 21, 12, 8, '08:00', '09:00', 'pending', NULL, '', '2022-10-20 10:00:11'),
(64, 36, 1, 13, 4, '14:00', '15:00', 'approved', NULL, 'malaria', '2022-10-20 11:29:32'),
(65, 36, 21, 12, 9, '07:00', '08:00', 'pending', NULL, 'headache', '2022-10-20 10:04:52'),
(66, 36, 26, 14, 1, '19:00', '20:00', 'pending', NULL, 'backache', '2022-10-20 10:05:49'),
(67, 36, 26, 14, 2, '22:00', '23:00', 'pending', NULL, '', '2022-10-20 10:07:19'),
(68, 37, 26, 14, 3, '19:00', '20:00', 'pending', NULL, 'sick', '2022-10-20 10:17:20'),
(72, 37, 22, 11, 7, '07:00', '08:00', 'pending', NULL, 'sick', '2022-10-20 10:23:12'),
(73, 37, 22, 18, 2, '07:00', '08:00', 'rejected', NULL, 'sick', '2022-11-02 11:56:42'),
(74, 38, 26, 14, 4, '21:00', '22:00', 'pending', NULL, 'backache', '2022-10-20 10:30:39'),
(75, 38, 1, 13, 5, '14:00', '15:00', 'rejected', NULL, 'muscle', '2022-10-20 11:29:39'),
(76, 25, 31, 19, 1, '07:00', '08:00', 'pending', NULL, 'sick', '2022-10-25 13:13:08'),
(77, 39, 22, 18, 3, '07:00', '08:00', 'approved', NULL, '', '2022-11-02 11:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `chat_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `sender_role` varchar(100) NOT NULL DEFAULT 'patient',
  `chat_message` text NOT NULL,
  `seen_by` varchar(100) NOT NULL DEFAULT 'none',
  `chat_create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`chat_id`, `patient_id`, `doctor_id`, `sender_role`, `chat_message`, `seen_by`, `chat_create_date`) VALUES
(1, 1, 1, 'patient', 'Hello People', 'doctor', '2022-09-07 05:34:46'),
(2, 1, 1, 'patient', 'I feel pain in my bones', 'doctor', '2022-09-07 06:04:47'),
(4, 1, 1, 'doctor', 'Do you feel Ok', 'patient', '2022-09-10 06:16:33'),
(5, 1, 1, 'doctor', 'Hello Again Patient', 'patient', '2022-09-07 06:20:03'),
(6, 1, 1, 'doctor', 'something is paining me', 'patient', '2022-09-07 18:14:29'),
(7, 1, 1, 'doctor', 'Hello', 'patient', '2022-09-07 20:49:08'),
(8, 1, 1, 'doctor', 'Good Morning', 'patient', '2022-09-08 04:13:00'),
(9, 1, 1, 'patient', 'hello', 'doctor', '2022-09-08 07:42:57'),
(10, 1, 1, 'patient', 'am not feeling good doctor', 'doctor', '2022-09-08 07:43:46'),
(11, 1, 9, 'patient', 'op', 'doctor', '2022-09-08 09:55:10'),
(12, 1, 9, 'patient', 'op', 'doctor', '2022-09-08 09:55:10'),
(13, 1, 9, 'patient', 'op', 'doctor', '2022-09-08 09:55:10'),
(14, 1, 9, 'doctor', 'ik', 'patient', '2022-09-08 09:57:51'),
(15, 1, 9, 'patient', 'Nice', 'doctor', '2022-09-11 13:26:26'),
(16, 1, 9, 'doctor', 'Its good to hear from you.', 'patient', '2022-09-11 13:34:25'),
(17, 1, 9, 'doctor', 'Keep taking medication from your prescription', 'patient', '2022-09-11 13:35:24'),
(18, 1, 9, 'patient', 'Ok doctor', 'doctor', '2022-09-11 13:45:51'),
(19, 1, 9, 'patient', 'Is this good', 'doctor', '2022-09-11 13:53:02'),
(20, 1, 9, 'patient', 'Hello Doctor', 'doctor', '2022-09-11 14:01:27'),
(21, 1, 9, 'patient', 'Is everything ok doctor', 'doctor', '2022-09-11 14:03:48'),
(22, 1, 11, 'doctor', 'hey', 'patient', '2022-09-12 09:29:49'),
(23, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:13'),
(24, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:16'),
(25, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:16'),
(26, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:16'),
(27, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:16'),
(28, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:17'),
(29, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:17'),
(30, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:17'),
(31, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:17'),
(32, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:17'),
(33, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:18'),
(34, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:18'),
(35, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:18'),
(36, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:18'),
(37, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:18'),
(38, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:18'),
(39, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:19'),
(40, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:19'),
(41, 1, 9, 'patient', 'ki', 'doctor', '2022-09-12 09:55:19'),
(42, 1, 11, 'patient', 'hi', 'doctor', '2022-09-12 09:57:23'),
(43, 1, 9, 'doctor', 'Hello', 'patient', '2022-09-12 13:30:17'),
(44, 1, 9, 'doctor', 'Hello', 'patient', '2022-09-12 13:39:13'),
(45, 1, 9, 'doctor', 'hi', 'patient', '2022-09-12 14:28:53'),
(46, 1, 16, 'patient', 'j', 'none', '2022-09-12 14:59:22'),
(47, 1, 14, 'patient', 'Hello Kizza', 'doctor', '2022-09-12 15:02:44'),
(48, 1, 9, 'doctor', 'Good Afternoon', 'patient', '2022-09-15 11:43:24'),
(49, 1, 9, 'doctor', 'Hello There', 'patient', '2022-09-15 11:44:42'),
(50, 1, 9, 'patient', 'Hello', 'doctor', '2022-09-15 11:46:24'),
(51, 1, 9, 'doctor', 'Hello Ben G', 'patient', '2022-09-15 11:47:57'),
(52, 1, 9, 'patient', 'hdhdhdhhd', 'doctor', '2022-09-15 11:48:34'),
(53, 1, 9, 'doctor', 'yo\r\n', 'patient', '2022-09-15 13:24:18'),
(54, 1, 1, 'doctor', 'Hello Agleck', 'patient', '2022-09-15 16:18:57'),
(55, 1, 9, 'patient', 'Hello Dr allen', 'doctor', '2022-09-15 16:46:40'),
(56, 1, 1, 'patient', 'This is good for you', 'doctor', '2022-09-15 16:47:58'),
(57, 1, 1, 'doctor', 'Hello Bobi', 'patient', '2022-09-15 17:02:09'),
(58, 1, 1, 'doctor', 'hello', 'patient', '2022-09-15 17:56:47'),
(59, 1, 1, 'doctor', 'hhh', 'patient', '2022-09-15 17:58:33'),
(60, 1, 1, 'doctor', 'is everything ok', 'patient', '2022-09-15 18:00:25'),
(61, 1, 9, 'doctor', 'hello ben', 'patient', '2022-09-15 18:01:45'),
(62, 1, 9, 'doctor', 'is everything ok', 'patient', '2022-09-15 18:02:30'),
(63, 1, 9, 'patient', 'hello there', 'doctor', '2022-09-15 18:03:39'),
(64, 1, 9, 'patient', 'hello', 'doctor', '2022-09-15 18:04:07'),
(65, 1, 9, 'doctor', 'hellllllllllllllllllll', 'patient', '2022-09-15 18:29:20'),
(66, 1, 14, 'patient', 'is everything ok', 'doctor', '2022-09-15 18:36:14'),
(67, 1, 14, 'patient', 'ok', 'doctor', '2022-09-15 18:45:00'),
(68, 1, 9, 'patient', 'am good', 'doctor', '2022-09-15 18:46:26'),
(69, 1, 9, 'patient', 'Hello Dr', 'doctor', '2022-09-15 18:51:50'),
(70, 1, 9, 'patient', 'gggggggggggggggggggggggggggggggggggggg', 'doctor', '2022-09-15 18:53:17'),
(71, 1, 9, 'doctor', 'hhhhhh', 'patient', '2022-09-15 18:53:49'),
(72, 3, 9, 'doctor', 'hello bobi', 'patient', '2022-09-15 19:01:45'),
(73, 3, 9, 'patient', 'hello dr allen', 'doctor', '2022-09-15 19:03:02'),
(74, 3, 9, 'doctor', 'are you good', 'patient', '2022-09-15 19:04:29'),
(75, 3, 9, 'doctor', 'This is great', 'patient', '2022-09-15 19:06:57'),
(76, 1, 11, 'doctor', 'hello dr', 'patient', '2022-09-15 19:21:35'),
(77, 1, 11, 'doctor', 'is everyone okay at home.', 'patient', '2022-09-15 19:22:16'),
(78, 1, 11, 'doctor', 'make sure you take medicine', 'patient', '2022-09-15 19:22:54'),
(79, 1, 11, 'doctor', 'your medicine is paramount', 'patient', '2022-09-15 19:23:23'),
(80, 1, 11, 'doctor', 'make sure you read this', 'patient', '2022-09-15 19:23:45'),
(81, 1, 11, 'patient', 'hello p', 'doctor', '2022-09-15 19:35:24'),
(82, 1, 11, 'patient', 'hhhh', 'doctor', '2022-09-15 19:42:27'),
(83, 1, 11, 'patient', 'ggg', 'doctor', '2022-09-15 19:43:46'),
(84, 1, 11, 'patient', 'hello', 'doctor', '2022-09-16 06:06:21'),
(85, 1, 11, 'doctor', 'hello prince', 'patient', '2022-09-16 11:42:15'),
(86, 1, 11, 'doctor', 'I wanted to talk to you', 'patient', '2022-09-16 11:43:32'),
(87, 8, 14, 'patient', 'Hello Dr Kizza', 'doctor', '2022-09-19 11:36:42'),
(88, 8, 14, 'patient', 'Are you ok', 'doctor', '2022-09-19 11:46:39'),
(89, 1, 14, 'patient', 'This is ben', 'doctor', '2022-09-19 11:47:47'),
(90, 1, 14, 'doctor', 'Hey Ben man ', 'none', '2022-09-19 11:48:25'),
(91, 1, 1, 'doctor', 'hi\r\n', 'none', '2022-09-20 14:31:57'),
(92, 5, 1, 'patient', 'how are you', 'doctor', '2022-09-20 14:40:13'),
(93, 9, 1, 'doctor', 'helo', 'patient', '2022-09-21 12:35:23'),
(94, 9, 1, 'patient', 'hey', 'doctor', '2022-09-21 12:36:29'),
(95, 9, 1, 'doctor', 'http://10.10.134.94/job/doctor/video.php', 'none', '2022-09-21 14:05:40'),
(96, 12, 1, 'doctor', 'http://10.10.134.94/job/doctor/video.php', 'none', '2022-09-22 07:08:51'),
(97, 19, 1, 'patient', 'jebale', 'doctor', '2022-09-22 07:22:19'),
(98, 19, 1, 'doctor', 'kale oliwa', 'patient', '2022-09-22 07:31:54'),
(99, 19, 1, 'doctor', 'http://10.10.134.94/job/doctor/video.php', 'patient', '2022-09-22 07:32:29'),
(100, 19, 1, 'doctor', 'http://10.10.134.94/job/doctor/video.php', 'patient', '2022-09-22 11:13:49'),
(101, 10, 1, 'doctor', 'http://10.10.134.94/job/doctor/video.php', 'patient', '2022-09-22 11:17:05'),
(102, 10, 21, 'patient', 'hi i would like to meet you', 'doctor', '2022-10-14 07:06:23'),
(103, 10, 21, 'doctor', 'okay let me make arrangements\r\n', 'patient', '2022-10-14 07:08:17'),
(104, 19, 21, 'patient', 'am in urgent need of some assistance asap', 'doctor', '2022-10-14 07:10:36'),
(105, 19, 21, 'doctor', 'okay let me make arrangements', 'patient', '2022-10-14 07:11:17'),
(106, 22, 27, 'doctor', 'hi', 'patient', '2022-10-17 13:38:11'),
(107, 22, 27, 'patient', 'how are you feeling today', 'doctor', '2022-10-17 13:42:37'),
(108, 29, 1, 'patient', 'hy doc', 'none', '2022-10-20 08:34:41'),
(109, 36, 21, 'patient', 'hey', 'none', '2022-10-20 10:08:43'),
(110, 37, 22, 'patient', 'hello', 'none', '2022-10-20 10:26:23'),
(111, 25, 22, 'patient', 'Good afternoon Doctor', 'doctor', '2022-10-20 10:38:29'),
(112, 25, 22, 'patient', 'Its me Ian', 'doctor', '2022-10-20 10:38:40'),
(113, 25, 22, 'doctor', 'yes Ian', 'patient', '2022-10-20 10:39:14'),
(114, 25, 22, 'doctor', 'whats the issue', 'patient', '2022-10-20 10:39:27'),
(115, 25, 22, 'doctor', 'how are you feeling now', 'patient', '2022-10-20 10:39:54'),
(116, 25, 22, 'patient', 'am not so much alright doctor', 'none', '2022-10-20 10:41:09'),
(117, 25, 22, 'patient', 'I think request for a video chat incase you free doctor', 'none', '2022-10-20 10:41:50'),
(118, 39, 22, 'patient', 'helo dr', 'none', '2022-11-01 13:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `department_desc` text NOT NULL,
  `department_status` varchar(25) NOT NULL DEFAULT 'active',
  `department_create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`, `department_desc`, `department_status`, `department_create_date`) VALUES
(1, 'Dentist', 'For teeth', 'active', '2022-09-06 12:52:48'),
(4, 'Gynecologist', 'Censored information', 'active', '2022-09-12 09:13:55'),
(7, 'physician', 'awesome', 'active', '2022-09-21 13:30:18'),
(8, 'radiologist ', 'injuries', 'active', '2022-09-21 13:31:02'),
(9, 'cardiologist', 'heart', 'active', '2022-09-21 13:32:21');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctor_id` int(11) NOT NULL,
  `doctor_first_name` varchar(25) NOT NULL,
  `doctor_email` varchar(50) NOT NULL,
  `doctor_contact` varchar(100) NOT NULL,
  `doctor_last_name` varchar(25) NOT NULL,
  `doctor_gender` varchar(10) NOT NULL DEFAULT 'm',
  `status` varchar(25) NOT NULL DEFAULT 'active',
  `doctor_biography` text DEFAULT NULL,
  `profile_image` varchar(255) NOT NULL DEFAULT 'user.jpg',
  `department_id` int(11) NOT NULL,
  `doctor_password` varchar(255) NOT NULL,
  `doctor_create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctor_id`, `doctor_first_name`, `doctor_email`, `doctor_contact`, `doctor_last_name`, `doctor_gender`, `status`, `doctor_biography`, `profile_image`, `department_id`, `doctor_password`, `doctor_create_date`) VALUES
(1, 'Henry', 'abby@gmail.com', '0765567987', 'Nalumenya', 'm', 'active', 'I am better at treating people', '817872518173864609384831662WhatsApp Image 2022-10-26 at 12.04.03.jpeg', 4, '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-06 06:43:39'),
(21, 'Sheenah', 'sheynah@gmail.com', '0775694108', 'Owembabazi', 'f', 'active', 'good at treating teeth', '881800017817054607628530484shena.jpeg', 1, '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-21 13:07:40'),
(22, 'Ssebufu ', 'stvnssebufu@gmail.com', '0786846691', 'Steven', 'm', 'active', 'me is cool', '377201139108956070203422647me.jpeg', 7, '81dc9bdb52d04dc20036dbd8313ed055', '2022-09-22 10:14:38'),
(26, 'Amon', 'amon22@gmail.com', '0786543867', 'Kabenge', 'm', 'active', 'iam  Amon dr', '87140279395054327520820507pic 4', 9, 'eb9242cdce45d96d5bb1ae56abe25cdf', '2022-09-22 11:10:08'),
(27, 'kanye', 'west@gmail.com', '0772474134', 'west', 'm', 'active', 'nice at work', '749079724279759994637547141pic2.jpeg', 1, '81dc9bdb52d04dc20036dbd8313ed055', '2022-10-17 13:27:46'),
(28, 'kirenga', 'fiacre@gmail.com', '0777889972', 'Fiacre', 'm', 'active', 'A good one at this', '136603138751221891073253763pic1.jpeg', 4, 'e6cd2d57366b7e540dd911f96a03788a', '2022-10-20 08:39:05'),
(29, 'Iradukunda ', 'davidryany@gmail.com', '0704624904', 'David', 'm', 'active', 'Am the one', '640394101900318917546740185pic5.jpeg', 9, '8a643dd8836dc0aa159bbcb7cb5e949a', '2022-10-20 08:41:12'),
(31, 'Nuwagaba', 'paul1@gmail.com', '0745678363', 'Paul', 'm', 'active', 'Humbled for your service', '377872886492399727120236475do1.jpeg', 7, '3022f5281ef36037d3b977ab3006dbd3', '2022-10-20 08:46:00'),
(32, 'George', 'bitwire@gmail.com', '0741234569', 'Bitwire', 'm', 'active', 'Pationate for my work', '886580156450110789853464422WhatsApp Image 2022-10-10 at 14.26.00.jpeg', 0, 'd26c7a3c1948af274d6711f29ce604a5', '2022-10-20 08:47:46'),
(33, 'Nakku', 'fortune@gmail.com', '0765348762', 'Fortune', 'm', 'active', 'Humbled for you', '689551284586426307844668510girl1.jpeg', 0, 'e401db9db0b9685fc3601272022a1195', '2022-10-20 08:50:23'),
(34, 'Akelo', 'patricia@gmail.com', '0707878366', 'Patricia', 'f', 'active', 'Just cool', '334796403400710464789079375girl1.webp', 7, 'd6f90ce1065e93ee390ac5b6d4f14bf9', '2022-10-25 10:27:09'),
(35, 'Wabyona', 'chrispus@gmail.com', '0706900205', 'Chrispus', 'm', 'active', 'good', '561510354273991100293101395chris.jpeg', 1, '1db883b39db16380d24a1b8c747d4632', '2022-10-26 08:58:39'),
(37, 'Ssenyungule', 'ssenyunguleh@gmail.com', '0750822350', 'Herbert', 'm', 'active', 'Linient', '326094408704522837402397621WhatsApp Image 2022-10-26 at 20.31.38.jpeg', 8, '6e7c7d7582205f5a2b080dbc65549f31', '2022-10-27 09:25:23'),
(38, 'Twesigye', 'anitat@gmail.com', '0788843876', 'Anita', 'f', 'active', 'Forcused', '322437653845090621070176988d6.jpg', 7, '2ddb70674a5d6c016623d947d190a4a8', '2022-10-27 09:31:06'),
(39, 'Ahereza', 'proms@gmail.com', '0726754323', 'Promise', 'f', 'active', 'Lovely', '107003880646433775861012179d1.jpeg', 9, '80d24b11174a425bf1c8818f4b397f5d', '2022-10-27 09:32:43'),
(40, 'Nakyanzi', 'phiona@gmail.com', '0757893391', 'Phiona', 'f', 'active', 'Very good', '445642055797812597594626387d4.jpeg', 8, '09e839387168d8c61016301bf233c4df', '2022-10-27 09:34:21'),
(41, 'Asako', 'tinah@gmail.com', '07572238881', 'Tinah', 'f', 'active', 'Freindly', '846111931888292391317029283d3.jpg', 4, '230105a877209751baf3996ed7d98a68', '2022-10-27 09:36:03'),
(42, 'Namutebi', 'grace@gmail.com', '0755543876', 'Grace', 'f', 'active', 'Perfect', '636223614449613167740779564d5.jpeg', 1, '2200e2e48b05c43dd12cc8e5f1298447', '2022-10-27 09:37:45'),
(43, 'Nuwagaba', 'emanuel@gmail.com', '0781123456', 'Emanuel', 'm', 'active', 'Best at this', '801660413308836326544683042d7.webp', 1, '4f60f16d8034f11a22c56a55f0761c58', '2022-10-27 09:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patient_id` int(11) NOT NULL,
  `patient_first_name` varchar(25) NOT NULL,
  `patient_last_name` varchar(25) NOT NULL,
  `patient_email` varchar(50) NOT NULL,
  `patient_contact` varchar(25) NOT NULL,
  `patient_dob` date NOT NULL,
  `patient_gender` varchar(11) NOT NULL,
  `patient_profile_image` varchar(255) NOT NULL DEFAULT 'user.jpg',
  `patient_password` varchar(255) NOT NULL,
  `patient_create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `patient_first_name`, `patient_last_name`, `patient_email`, `patient_contact`, `patient_dob`, `patient_gender`, `patient_profile_image`, `patient_password`, `patient_create_date`) VALUES
(25, 'Ian', 'Durbie', 'iandurbie5@gmail.com', '0757878391', '1997-08-05', 'm', '25ian.jpg', 'fecd1ca31ac63c630fb76b9ef5f5d5dd', '2022-10-19 14:32:26'),
(26, 'Batale', 'Ambrose', 'bataleambrosebwimi@gmail.com', '0757764836', '1998-07-06', 'm', '26bata.jpeg', '835ff852fbd56daca37433f830e9feb2', '2022-10-20 08:11:38'),
(27, 'Tusiime', 'Mary', 'mary@gmail.com', '0786564534', '1999-05-12', 'm', '27images.jpeg', '6e71410db89ec8dcaca6635c2ad8991c', '2022-10-20 08:14:30'),
(28, 'Eve', 'Wambi', 'eve@gmail.com', '0776543287', '1989-12-17', 'f', '28girl.jpg', '7986da8fc776a99231c81d96729d3d9f', '2022-10-20 08:16:11'),
(29, 'Nassazi', 'Sophia', 'sophia@gmail.com', '0788987654', '1988-10-19', 'f', '29do.jpeg', 'c3003e3e21c8048f1029762173aececf', '2022-10-20 08:17:42'),
(30, 'Amelia', 'Kyambade', 'amelia@gmail.com', '0765432367', '1984-11-05', 'f', '30do2.jpeg', 'bce2fedb924377065048059927cfb1fb', '2022-10-20 08:19:32'),
(31, 'Vannessa', 'Edrine', 'vanessa@gmail.com', '0763524242', '1990-04-19', 'f', '31van.jpeg', 'b0e1fb03566b64a46cc28ddd3fc84a87', '2022-10-20 09:23:11'),
(32, 'Namukwaya', 'Agness', 'agness@gmail.com', '0754362721', '1986-12-02', 'f', '32age.jpeg', 'cd7f445da610ef7c5e3b1e7c7cfb2797', '2022-10-20 09:24:27'),
(33, 'Atiko', 'Babra', 'atiko@gmail.com', '0744940987', '1994-03-20', 'f', '33any.jpeg', 'a677ef740c61dd8f47a8835f68f17772', '2022-10-20 09:29:12'),
(34, 'Timoth', 'Brian', 'timo@gmail.com', '07653421752', '1990-07-18', 'm', '34timo.jpeg', '99b8050b945961b5869fe0d8975dc4d5', '2022-10-20 09:46:19'),
(35, 'Bugembe', 'James', 'james@gmail.com', '0786534252', '1996-06-25', 'm', '35james.jpeg', '934cb3f192a08f485628f81dcc6da83b', '2022-10-20 09:50:57'),
(36, 'Niringiyimaana', 'Emmanuel', 'emmanuelniringiyimaana@gmail.com', '0774934687', '1998-03-06', 'm', '36WhatsApp Image 2022-09-22 at 15.07.56.jpeg', 'eee8226e49414acbd19ffe56579cddca', '2022-10-20 09:54:45'),
(37, 'Emma', 'Loic', 'emmaloic@gmail.com', '0786754323', '2000-12-25', 'm', '37WhatsApp Image 2022-09-22 at 15.07.56.jpeg', '92f1ea30f1b592aeb57eadb574528e42', '2022-10-20 10:14:43'),
(38, 'Kato', 'James', 'kato@gmail.com', '07578888881', '2001-10-20', 'm', '38WhatsApp Image 2022-09-22 at 15.07.56.jpeg', '9524b7f56bf9ef5da5ed9dd6479f1bdd', '2022-10-20 10:29:02'),
(39, 'Ssali', 'Jovan', 'ssalijovan8@gmail.com', '0759354217', '1995-10-10', 'm', 'user.jpg', 'fcd146aef795911e2c7683ca910939f4', '2022-11-01 12:50:38');

-- --------------------------------------------------------

--
-- Table structure for table `patient_details`
--

CREATE TABLE `patient_details` (
  `details_id` int(11) NOT NULL,
  `previous_diseases` text NOT NULL DEFAULT '',
  `current_diseases` text NOT NULL DEFAULT '',
  `document` varchar(100) NOT NULL DEFAULT 'nodoc',
  `patient_id` int(11) NOT NULL,
  `details_create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_details`
--

INSERT INTO `patient_details` (`details_id`, `previous_diseases`, `current_diseases`, `document`, `patient_id`, `details_create_date`) VALUES
(1, 'Fever', 'Ebola', '12015 test guide.docx', 1, '2022-09-16 06:10:58'),
(2, 'Addiction', 'Cancer', 'nodoc', 3, '2022-09-16 08:31:21'),
(3, 'typhoid', 'malaria', 'nodoc', 19, '2022-09-22 07:20:17'),
(4, 'ok', 'hi', '223.PNG', 22, '2022-10-17 13:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `rating_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `rating_value` int(11) NOT NULL,
  `rating_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`rating_id`, `doctor_id`, `patient_id`, `rating_value`, `rating_date`) VALUES
(1, 1, 1, 2, '2022-09-07 08:26:10'),
(2, 3, 1, 4, '2022-09-07 08:31:46'),
(3, 1, 1, 4, '2022-09-07 08:33:01'),
(4, 1, 1, 4, '2022-09-07 08:35:12'),
(5, 1, 1, 4, '2022-09-07 08:35:41'),
(6, 3, 1, 4, '2022-09-07 08:36:47'),
(7, 1, 1, 4, '2022-09-07 08:37:34'),
(8, 1, 1, 4, '2022-09-07 08:39:34'),
(9, 1, 1, 4, '2022-09-07 08:39:58'),
(10, 3, 1, 3, '2022-09-07 08:41:15'),
(11, 1, 1, 5, '2022-09-07 08:51:36'),
(12, 4, 1, 4, '2022-09-07 09:18:31'),
(13, 3, 1, 2, '2022-09-07 09:30:57'),
(14, 3, 1, 2, '2022-09-07 09:31:05'),
(15, 3, 1, 3, '2022-09-07 09:31:11'),
(16, 3, 1, 2, '2022-09-07 09:31:15'),
(17, 3, 1, 2, '2022-09-07 09:34:38'),
(18, 1, 1, 3, '2022-09-07 10:33:16'),
(19, 1, 1, 5, '2022-09-07 10:34:01'),
(20, 3, 1, 5, '2022-09-07 10:34:13'),
(21, 1, 1, 5, '2022-09-07 10:35:18'),
(22, 1, 1, 3, '2022-09-07 10:35:36'),
(23, 1, 1, 5, '2022-09-07 10:36:01'),
(24, 1, 1, 5, '2022-09-07 10:36:02'),
(25, 3, 1, 5, '2022-09-07 10:37:01'),
(26, 4, 1, 2, '2022-09-07 10:37:16'),
(27, 1, 1, 3, '2022-09-07 10:42:50'),
(28, 1, 1, 3, '2022-09-07 10:43:22'),
(29, 1, 1, 4, '2022-09-07 10:44:34'),
(30, 1, 1, 3, '2022-09-07 10:47:13'),
(31, 7, 1, 4, '2022-09-07 14:28:30'),
(32, 9, 1, 3, '2022-09-07 14:46:40'),
(33, 8, 1, 2, '2022-09-07 14:46:53'),
(34, 1, 1, 5, '2022-09-08 03:30:44'),
(35, 1, 1, 3, '2022-09-08 07:42:02'),
(36, 9, 1, 5, '2022-09-08 09:11:15'),
(37, 1, 1, 2, '2022-09-08 09:11:47'),
(38, 1, 1, 2, '2022-09-08 09:12:04'),
(39, 1, 1, 2, '2022-09-11 12:49:15'),
(40, 1, 1, 2, '2022-09-11 12:49:24'),
(41, 1, 1, 1, '2022-09-11 12:49:31'),
(42, 1, 1, 2, '2022-09-11 12:49:39'),
(43, 1, 1, 2, '2022-09-11 12:49:43'),
(44, 1, 1, 2, '2022-09-11 12:49:55'),
(45, 1, 1, 2, '2022-09-11 12:49:58'),
(46, 1, 1, 3, '2022-09-11 12:50:24'),
(47, 1, 1, 2, '2022-09-11 12:50:30'),
(48, 1, 1, 2, '2022-09-11 12:50:37'),
(49, 1, 1, 4, '2022-09-11 13:11:40'),
(50, 1, 1, 5, '2022-09-11 17:36:08'),
(51, 9, 1, 2, '2022-09-12 03:59:34'),
(52, 1, 1, 5, '2022-09-12 04:00:07'),
(53, 1, 1, 5, '2022-09-12 04:00:59'),
(54, 1, 1, 5, '2022-09-12 05:48:23'),
(55, 9, 1, 4, '2022-09-12 06:53:46'),
(56, 12, 1, 3, '2022-09-12 09:17:43'),
(57, 14, 1, 2, '2022-09-12 09:18:08'),
(58, 10, 1, 3, '2022-09-12 10:46:02'),
(59, 10, 1, 2, '2022-09-12 10:46:12'),
(60, 11, 1, 3, '2022-09-15 13:40:22'),
(61, 1, 5, 2, '2022-09-20 14:39:06'),
(62, 1, 5, 2, '2022-09-20 14:39:12'),
(63, 21, 10, 5, '2022-09-21 13:37:47'),
(64, 1, 19, 5, '2022-09-22 08:40:53'),
(69, 21, 10, 4, '2022-10-19 09:26:24'),
(70, 22, 23, 5, '2022-10-19 13:01:20'),
(71, 22, 25, 5, '2022-10-19 14:47:52'),
(72, 1, 25, 3, '2022-10-25 10:28:56');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(20) NOT NULL,
  `doctor_id` int(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `morning` tinyint(1) DEFAULT NULL,
  `afternoon` tinyint(1) DEFAULT NULL,
  `evening` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `doctor_id`, `date`, `morning`, `afternoon`, `evening`, `created_at`) VALUES
(11, 22, '2022-10-20', 1, 0, 0, '2022-10-19 14:35:01'),
(12, 21, '2022-10-30', 1, 0, 0, '2022-10-20 10:02:22'),
(13, 1, '2022-10-21', 0, 1, 0, '2022-10-20 08:32:15'),
(14, 26, '2022-10-25', 0, 0, 1, '2022-10-20 08:32:39'),
(15, 33, '2022-10-26', 1, 1, 0, '2022-10-20 08:51:23'),
(16, 30, '2022-10-31', 0, 1, 0, '2022-10-20 09:34:51'),
(17, 32, '2022-10-29', 1, 0, 0, '2022-10-20 09:36:02'),
(18, 22, '2022-11-01', 1, 0, 0, '2022-10-20 09:44:34'),
(19, 31, '2022-10-30', 1, 0, 0, '2022-10-25 13:10:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `patient_details`
--
ALTER TABLE `patient_details`
  ADD PRIMARY KEY (`details_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `patient_details`
--
ALTER TABLE `patient_details`
  MODIFY `details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
