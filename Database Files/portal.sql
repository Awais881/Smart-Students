-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2023 at 05:07 PM
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
-- Table structure for table `attendance_islamiat`
--

CREATE TABLE `attendance_islamiat` (
  `Grno` text NOT NULL,
  `Date` date NOT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_islamiat`
--

INSERT INTO `attendance_islamiat` (`Grno`, `Date`, `Status`) VALUES
('M-100', '2023-05-21', 'Present'),
('M-1', '2023-05-21', 'Present'),
('M-2', '2023-05-21', 'Present'),
('M-3', '2023-05-21', 'Present'),
('M-4', '2023-05-21', 'Absent'),
('M-5', '2023-05-21', 'Present'),
('M-6', '2023-05-21', 'Present'),
('M-7', '2023-05-21', 'Absent'),
('M-9', '2023-05-21', 'Present'),
('M-10', '2023-05-21', 'Absent');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_management`
--

CREATE TABLE `attendance_management` (
  `Grno` text NOT NULL,
  `Date` date NOT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_management`
--

INSERT INTO `attendance_management` (`Grno`, `Date`, `Status`) VALUES
('M-100', '2023-05-21', 'Absent'),
('M-1', '2023-05-21', 'Present'),
('M-2', '2023-05-21', 'Present'),
('M-3', '2023-05-21', 'Present'),
('M-4', '2023-05-21', 'Present'),
('M-5', '2023-05-21', 'Absent'),
('M-6', '2023-05-21', 'Present'),
('M-7', '2023-05-21', 'Present'),
('M-9', '2023-05-21', 'Absent'),
('M-10', '2023-05-21', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_networking`
--

CREATE TABLE `attendance_networking` (
  `Grno` text NOT NULL,
  `Date` date NOT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_networking`
--

INSERT INTO `attendance_networking` (`Grno`, `Date`, `Status`) VALUES
('M-100', '2023-05-21', 'Present'),
('M-1', '2023-05-21', 'Present'),
('M-2', '2023-05-21', 'Absent'),
('M-3', '2023-05-21', 'Present'),
('M-4', '2023-05-21', 'Present'),
('M-5', '2023-05-21', 'Absent'),
('M-6', '2023-05-21', 'Present'),
('M-7', '2023-05-21', 'Absent'),
('M-9', '2023-05-21', 'Present'),
('M-10', '2023-05-21', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_project`
--

CREATE TABLE `attendance_project` (
  `Grno` text NOT NULL,
  `Date` date NOT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_project`
--

INSERT INTO `attendance_project` (`Grno`, `Date`, `Status`) VALUES
('M-100', '2023-05-21', 'Present'),
('M-1', '2023-05-21', 'Present'),
('M-2', '2023-05-21', 'Present'),
('M-3', '2023-05-21', 'Absent'),
('M-4', '2023-05-21', 'Present'),
('M-5', '2023-05-21', 'Absent'),
('M-6', '2023-05-21', 'Present'),
('M-7', '2023-05-21', 'Absent'),
('M-9', '2023-05-21', 'Present'),
('M-10', '2023-05-21', 'Absent');

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
('M-10', '2023-05-21', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `Date` date NOT NULL,
  `Name` text NOT NULL,
  `Email` text NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`Date`, `Name`, `Email`, `Message`) VALUES
('2023-05-21', 'Awais', 'awais@gmail.com', 'Hello This website is good'),
('2023-05-21', 'Awais', 'awais@gmail.com', 'Hello This website is good'),
('2023-05-21', 'Awais', 'awais@gmail.com', 'Hello I am Awais '),
('2023-05-21', 'Awais', 'gfdgdfgdfggfdg2ff@gfds.vh', 'htgfhfghgfhfg       gfgdfgfdgfdgdfgfdg gfdgfdgffdf'),
('2023-05-21', 'ADS', 'awais@gmail.com', 'mart Campuses is a Finland based Software Company, providing Best\r\nAcademic And Learning Management Solution for Schools, Colleges,\r\nInstitutes and Universites.We integrated communication tools encourage\r\ninteractions between faculty, students, built-in parents, student Portals and\r\nMobile App keep families informed and involved'),
('2023-05-21', 'Awais', 'awais@gmail.com', 'Hello I am Awais');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Grno` varchar(20) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Email` varchar(22) NOT NULL,
  `DateofBirth` date NOT NULL,
  `Gender` varchar(22) NOT NULL,
  `Usertype` varchar(22) NOT NULL,
  `password` varchar(22) NOT NULL,
  `userPicture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Grno`, `Username`, `Email`, `DateofBirth`, `Gender`, `Usertype`, `password`, `userPicture`) VALUES
('M-100', 'Muhammad Awais', 'awais@gmail.com', '2003-01-09', 'Male', 'admin', '12345', '342985297_634262595189344_8086664461572818917_n.jpg'),
('M-1', 'Muhammad Taha', 'taha@gmail.com', '2020-01-21', 'Male', 'student', '12345', ''),
('M-2', 'Hassan ', 'hassan@gmail.com', '2004-01-12', 'Male', 'student', '12345', ''),
('M-3', 'Fahad', 'fahad@gmail.com', '2019-01-23', 'Male', 'student', '12345', ''),
('M-4', 'Burhan', 'burhan@gmail.com', '2023-01-23', 'Male', 'student', '12345', ''),
('M-5', 'Awais', 'abc@gmail.com', '2023-01-18', 'Male', 'student', '12345', ''),
('M-6', 'Ali ', 'ali@gmail.com', '2023-01-01', 'Male', 'student', 'abc123', ''),
('M-7', 'Ahmed', 'ahmed@gmail.com', '2023-01-03', 'Male', 'student', '12345', ''),
('M-9', 'Zain Ali', 'ZAIN@GMAIL.COM', '2023-01-10', 'Male', 'student', '123', ''),
('M-10', 'Bilal Ahmed', 'bilal@gmail.com', '2023-01-18', 'Male', 'student', 'ilal123', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
