-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2023 at 10:46 PM
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
('2023-05-21', 'Awais', 'awais@gmail.com', 'Hello I am Awais'),
('2023-05-21', 'Ali Ahmed', 'ali@gmail.com', 'Hello This is Dummy Messgae'),
('2023-05-22', 'Mustafa', 'mustafa@gmail.com', 'this Website is University Portal');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
