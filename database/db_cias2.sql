-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 03, 2020 at 02:42 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cias2`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jawaban`
--

CREATE TABLE `tbl_jawaban` (
  `id_jawaban` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `jawaban` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jawaban`
--

INSERT INTO `tbl_jawaban` (`id_jawaban`, `id_users`, `id_soal`, `jawaban`) VALUES
(83, 11, 1, 'a'),
(84, 11, 2, 'a');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_last_login`
--

CREATE TABLE `tbl_last_login` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `sessionData` varchar(2048) NOT NULL,
  `machineIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_last_login`
--

INSERT INTO `tbl_last_login` (`id`, `userId`, `sessionData`, `machineIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Mac OS X', '2020-01-06 14:25:04'),
(2, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '::1', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Mac OS X', '2020-01-06 14:30:47'),
(3, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '::1', 'Chrome 79.0.3945.88', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Mac OS X', '2020-01-06 14:31:15'),
(4, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-09 11:50:56'),
(5, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-09 11:53:17'),
(6, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-09 11:57:55'),
(7, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-09 18:27:54'),
(8, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-10 00:00:21'),
(9, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-10 08:18:33'),
(10, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-10 08:22:10'),
(11, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-10 08:26:35'),
(12, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-10 08:28:06'),
(13, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-10 08:39:08'),
(14, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-10 08:54:00'),
(15, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-10 09:06:46'),
(16, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-10 09:10:12'),
(17, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-10 13:52:16'),
(18, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-10 14:51:54'),
(19, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-10 15:09:24'),
(20, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-10 15:12:02'),
(21, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-10 15:17:19'),
(22, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-10 15:17:37'),
(23, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-10 15:17:52'),
(24, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-10 15:36:03'),
(25, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-13 10:31:07'),
(26, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-14 09:08:49'),
(27, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-14 09:29:18'),
(28, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-14 09:29:30'),
(29, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-14 11:05:43'),
(30, 10, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Bon Jovi\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-14 11:07:16'),
(31, 11, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Axl Rose\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-14 11:10:27'),
(32, 10, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Bon Jovi\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-14 11:56:57'),
(33, 10, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Bon Jovi\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-14 14:29:14'),
(34, 11, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Axl Rose\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-14 15:16:32'),
(35, 10, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Bon Jovi\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-14 22:50:52'),
(36, 10, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Bon Jovi\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-14 23:08:19'),
(37, 11, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Axl Rose\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-14 23:53:06'),
(38, 10, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Bon Jovi\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-14 23:56:33'),
(39, 11, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Axl Rose\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-15 00:00:27'),
(40, 10, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Bon Jovi\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-15 00:00:53'),
(41, 10, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Bon Jovi\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-15 08:11:19'),
(42, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-15 08:25:55'),
(43, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-15 08:36:56'),
(44, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-15 08:37:21'),
(45, 10, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Bon Jovi\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-15 09:38:28'),
(46, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-15 11:29:04'),
(47, 10, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Bon Jovi\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-15 11:29:26'),
(48, 11, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Axl Rose\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-15 11:52:35'),
(49, 10, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Bon Jovi\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-15 11:54:11'),
(50, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-15 13:18:44'),
(51, 11, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Axl Rose\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-15 13:20:14'),
(52, 10, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Bon Jovi\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-15 14:37:39'),
(53, 11, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Axl Rose\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-15 15:06:46'),
(54, 10, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Bon Jovi\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-15 15:07:43'),
(55, 11, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Axl Rose\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-15 15:21:04'),
(56, 10, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Bon Jovi\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-16 11:41:48'),
(57, 10, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Bon Jovi\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-17 15:13:33'),
(58, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-17 15:15:17'),
(59, 10, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Bon Jovi\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-17 15:16:20'),
(60, 11, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Axl Rose\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-17 15:18:39'),
(61, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '::1', 'Chrome 79.0.3945.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'Mac OS X', '2020-01-17 15:19:23'),
(62, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-20 22:41:11'),
(63, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-20 22:42:23'),
(64, 10, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Bon Jovi\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-20 22:43:19'),
(65, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-20 22:50:06'),
(66, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 13:57:52'),
(67, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 14:02:37'),
(68, 11, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Axl Rose\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 14:03:59'),
(69, 11, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Axl Rose\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 14:07:40'),
(70, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 15:06:55'),
(71, 11, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Axl Rose\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 15:08:10'),
(72, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 15:09:50'),
(73, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 15:10:14'),
(74, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 15:12:05'),
(75, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 18:15:50'),
(76, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 22:04:04'),
(77, 11, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Axl Rose\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 22:14:21'),
(78, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 22:32:14'),
(79, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 22:35:19'),
(80, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 22:42:03'),
(81, 2, '{\"role\":\"2\",\"roleText\":\"Guru\",\"name\":\"Guru\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 22:56:04'),
(82, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 22:58:53'),
(83, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 22:59:18'),
(84, 2, '{\"role\":\"2\",\"roleText\":\"Guru\",\"name\":\"Guru\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 22:59:57'),
(85, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Administrator\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 23:02:44'),
(86, 2, '{\"role\":\"2\",\"roleText\":\"Guru\",\"name\":\"Guru\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-21 23:06:13'),
(87, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Guru\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-22 09:01:01'),
(88, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-22 09:39:29'),
(89, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-22 09:45:40'),
(90, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-22 09:50:57'),
(91, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-22 09:53:03'),
(92, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-22 09:55:43'),
(93, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-22 09:57:43'),
(94, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-22 12:23:01'),
(95, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-22 13:43:27'),
(96, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-22 13:52:56'),
(97, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-22 13:53:53'),
(98, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-22 14:54:17'),
(99, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-22 14:56:15'),
(100, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-22 14:59:44'),
(101, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-22 20:43:52'),
(102, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-23 08:04:38'),
(103, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-23 10:31:37'),
(104, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-23 10:32:18'),
(105, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-23 10:33:40'),
(106, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-23 14:29:41'),
(107, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-23 14:31:40'),
(108, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-23 14:33:28'),
(109, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-23 22:10:43'),
(110, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-24 10:28:23'),
(111, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-24 13:56:23'),
(112, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-25 08:35:40'),
(113, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-26 12:16:39'),
(114, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\"}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-26 12:57:42'),
(115, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-01-26 13:05:33'),
(116, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 17:09:48'),
(117, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 17:21:34'),
(118, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 17:30:18'),
(119, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 17:45:39'),
(120, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 17:46:15'),
(121, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 18:01:37'),
(122, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 18:04:27'),
(123, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 18:04:45'),
(124, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 18:14:33'),
(125, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 18:18:22'),
(126, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 18:27:13'),
(127, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 18:33:55'),
(128, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 18:35:06'),
(129, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 20:52:23'),
(130, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 20:53:37'),
(131, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 20:55:04'),
(132, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 21:18:50'),
(133, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 21:19:26'),
(134, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 21:21:28'),
(135, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 21:22:13'),
(136, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 21:33:23'),
(137, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 21:38:48'),
(138, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 21:38:59'),
(139, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 21:43:47'),
(140, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 21:57:37'),
(141, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 22:05:25'),
(142, 11, '{\"role\":\"3\",\"roleText\":\"Siswa\",\"name\":\"Siswa 1\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-02 22:06:10'),
(143, 1, '{\"role\":\"1\",\"roleText\":\"Dosen\",\"name\":\"Panjul\",\"nomer\":1}', '127.0.0.1', 'Firefox 72.0', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0', 'Linux', '2020-02-03 08:18:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'Guru'),
(3, 'Siswa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_soal`
--

CREATE TABLE `tbl_soal` (
  `id_soal` int(10) NOT NULL,
  `soal` text NOT NULL,
  `a` varchar(30) NOT NULL,
  `b` varchar(30) NOT NULL,
  `c` varchar(30) NOT NULL,
  `knc_jawaban` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_soal`
--

INSERT INTO `tbl_soal` (`id_soal`, `soal`, `a`, `b`, `c`, `knc_jawaban`) VALUES
(1, 'Berikut merupakan hewan unggas', 'ayam', 'cacing', 'kuda', 'a'),
(2, 'Dibawah ini merupakan presiden Indonesia?', 'Soekarno', 'Donald Trump', 'Elisabeth', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL,
  `Profesi` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `name`, `mobile`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`, `Profesi`) VALUES
(1, 'guru1@to.com', '$2y$10$nCYIhg0aXsV2/QPJVGKZ1uItxFjE5MRXPiCLZZS3JvcFCIi7IrVD2', 'Panjul', '0812223344', 1, 0, 0, '2015-07-01 18:56:49', 1, '2020-01-22 03:08:49', 'Dosen Matematika'),
(11, 'siswa@to.com', '$2y$10$ODJzwGKWyFZ.7JuWTiq2cuyqoh5jCbVa/v.x6JFDKCttF5XA0Mk9O', 'Siswa 1', '0812345467', 3, 0, 1, '2020-01-14 05:06:54', NULL, NULL, 'Siswa IX A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `tbl_jawaban`
--
ALTER TABLE `tbl_jawaban`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_jawaban`
--
ALTER TABLE `tbl_jawaban`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
  MODIFY `id_soal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
