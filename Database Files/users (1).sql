-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2023 at 11:35 AM
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
  `userPicture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Grno`, `Username`, `Email`, `DateofBirth`, `Gender`, `Usertype`, `password`, `userPicture`) VALUES
('M-100', 'Muhammad Awais', 'awais@gmail.com', '2003-01-09', 'Male', 'admin', '12345', '342985297_634262595189344_8086664461572818917_n.jpg'),
('M-1', 'Muhammad Taha', 'taha@gmail.com', '2020-01-21', 'Male', 'student', '12345', '223280417_4907455159332187_7874489705443040029_n.jpg'),
('M-2', 'Hassan ', 'hassan@gmail.com', '2004-01-12', 'Male', 'student', '12345', 'chat.PNG'),
('M-3', 'Fahad', 'fahad@gmail.com', '2019-01-23', 'Male', 'student', '12345', ''),
('M-4', 'Burhan', 'burhan@gmail.com', '2023-01-23', 'Male', 'student', '12345', ''),
('M-5', 'Awais', 'abc@gmail.com', '2023-01-18', 'Male', 'student', '12345', ''),
('M-6', 'Ali ', 'ali@gmail.com', '2023-01-01', 'Male', 'student', 'abc123', ''),
('M-7', 'Ahmed', 'ahmed@gmail.com', '2023-01-03', 'Male', 'student', '12345', ''),
('M-9', 'Zain Ali', 'ZAIN@GMAIL.COM', '2023-01-10', 'Male', 'student', '123', ''),
('M-10', 'Bilal Ahmed', 'bilal@gmail.com', '2023-01-18', 'Male', 'student', 'ilal123', ''),
('M-11', 'Zain', 'zain@gmail.com', '2023-01-21', 'Male', 'student', '12345', 'image3.633a30c4d74edd3acd98.png'),
('M-12', 'Faizan', 'faizan@gmail.com', '2023-01-02', 'Male', 'student', '1000', ''),
('M-13', 'Mustafa', 'MUSTAFA@GMAIL.COM', '2008-01-07', 'Male', 'student', '12345', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
