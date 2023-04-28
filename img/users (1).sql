-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2023 at 10:11 PM
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
  `confirmPass` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Grno`, `Username`, `Email`, `DateofBirth`, `Gender`, `Usertype`, `password`, `confirmPass`) VALUES
('M-100', 'Awais', 'alizayn881@gmail.com', '2003-01-09', 'Male', 'admin', '12345', '123456'),
('wewewew', 'wweww', 'ew', '2023-01-22', 'Female', 'student', 'ewew', 'w'),
('M-109', 'Awais', 'awais@gmail.com', '2023-01-09', 'Male', 'admin', '12345', '12345'),
('M-109', 'Awais', 'awais@gmail.com', '2023-01-09', 'Male', 'admin', '', ''),
('M-100', 'Awais1', 'admin@gmail.com', '2023-01-25', 'Male', 'admin', '123', ''),
('M-200', 'Awais1', 'other@gmail.com', '2021-01-11', 'Male', 'employee', '1322', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
