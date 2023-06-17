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
-- Table structure for table `class_schedule`
--

CREATE TABLE `class_schedule` (
  `id` int(11) NOT NULL,
  `day` varchar(20) NOT NULL,
  `lecture_type` varchar(50) NOT NULL,
  `course` varchar(100) NOT NULL,
  `teacher` varchar(100) NOT NULL,
  `time` varchar(20) NOT NULL,
  `room_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_schedule`
--

INSERT INTO `class_schedule` (`id`, `day`, `lecture_type`, `course`, `teacher`, `time`, `room_no`) VALUES
(1, 'tuesday', 'theaory', 'Management', 'sir-sajid', '08:15-09:00', 'room3'),
(2, 'tuesday', 'practical', 'Project', 'sir-masood', '09-09:45', 'room2'),
(3, 'tuesday', 'practical', 'Management', 'sir-azaz', '09:45-10:30', 'room3'),
(4, 'monday', 'practical', 'Islamiat', 'sir-masood', '08:15-09:00', 'room1'),
(5, 'wednesday', 'practical', 'Project', 'sir-masood', '08:15-09:00', 'room4'),
(6, 'wednesday', 'theaory', 'Management', 'sir-azaz', '09-09:45', 'room3'),
(7, 'wednesday', 'theory', 'Islamiat', 'sir-sajid', '08:15-09:00', 'room1'),
(8, 'friday', 'theory', 'WebDevelopmentwithJava', 'sir-masood', '08:15-09:00', 'room2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_schedule`
--
ALTER TABLE `class_schedule`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_schedule`
--
ALTER TABLE `class_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
