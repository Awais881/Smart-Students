-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2023 at 02:23 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_webdevelopmentwithjava`
--

CREATE TABLE `attendance_webdevelopmentwithjava` (
  `Grno` text NOT NULL,
  `Date` date NOT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_webdevelopmentwithjava`
--

INSERT INTO `attendance_webdevelopmentwithjava` (`Grno`, `Date`, `Status`) VALUES
('M-100', '2023-05-21', 'Present'),
('M-1', '2023-05-21', 'Absent'),
('M-2', '2023-05-21', 'Present'),
('M-3', '2023-05-21', 'Present'),
('M-4', '2023-05-21', 'Present'),
('M-5', '2023-05-21', 'Absent'),
('M-6', '2023-05-21', 'Present'),
('M-7', '2023-05-21', 'Present'),
('M-9', '2023-05-21', 'Absent'),
('M-10', '2023-05-21', 'Present'),
('M-100', '2023-05-22', 'Absent'),
('M-1', '2023-05-22', 'Present'),
('M-2', '2023-05-22', 'Absent'),
('M-3', '2023-05-22', 'Present'),
('M-4', '2023-05-22', 'Absent'),
('M-5', '2023-05-22', 'Present'),
('M-6', '2023-05-22', 'Present'),
('M-7', '2023-05-22', 'Present'),
('M-9', '2023-05-22', 'Present'),
('M-10', '2023-05-22', 'Present'),
('M-11', '2023-05-22', 'Present');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
