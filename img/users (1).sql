-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 11:15 AM
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
  `userPicture` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Grno`, `Username`, `Email`, `DateofBirth`, `Gender`, `Usertype`, `password`, `userPicture`) VALUES
('M-100', 'Awais', 'alizayn881@gmail.com', '2003-01-09', 'Male', 'admin', '12345', 0x3130323533383136392e6a7067),
('wewewew', 'wweww', 'ew', '2023-01-22', 'Female', 'student', 'ewew', ''),
('M-100', 'Awais1', 'admin@gmail.com', '2023-01-25', 'Male', 'admin', '123', 0x3130323533383136392e6a7067),
('M-200', 'Awais1', 'other@gmail.com', '2021-01-11', 'Male', 'employee', '1322', ''),
('M-201', 'Awais1', 'admin@gmail.com', '2023-01-28', 'Male', 'employee', '12', ''),
('M-1', 'Awais1', '', '2023-01-29', 'Male', 'admin', '12345', ''),
('M-1', 'Awais1', '', '2023-01-29', 'Male', 'admin', '12345', ''),
('M-12', 'Awais1', '11@gmail.com', '2023-01-30', 'Male', 'admin', '123', ''),
('s', 's', 'admin@gmail.com', '2023-01-30', 'Male', 'student', 's', ''),
('M-1090', 'Muhammad Awais', 'awais@gmail.com', '2023-01-30', 'Male', 'admin', '12', 0x73616869722061686d6564206368616e6e6120343232303138363031343636352e6a7067),
('M', 'Muhammad Awais', 'alizayn881@gmail.com', '2023-01-31', 'Male', 'student', '123', ''),
('M', 'Muhammad Awais', 'alizayn881@gmail.com', '2023-01-31', 'Male', 'student', '123', 0x576861747341707020496d61676520323032322d31312d323320617420312e33392e353720414d2e6a706567),
('M1', 'Muhammad Awais', 'admin@gmail.com', '2023-01-06', 'Male', 'admin', '11', 0x576861747341707020496d61676520323032322d31312d323320617420312e33392e353720414d2e6a706567),
('M-10900', 'Muhammad Awais', 'aliahmed.dev881@gmail.', '2023-01-31', 'Male', 'admin', '1', 0x576861747341707020496d61676520323032322d31312d323320617420312e33392e353720414d2e6a706567),
('M-10011', 'Muhammad Awais', '100009159724738', '2023-01-07', 'Male', 'student', '11', ''),
('M-10900', 'Muhammad Awais', 'admin@gmail.com', '2023-01-31', 'Male', 'student', '11', ''),
('109', 'Muhammad Awais', 'awais@gmail.com', '2023-01-28', 'Male', 'admin', '12345', 0x3130323533383136392e6a7067),
('M-1000', 'Awais1', '0', '2023-01-11', 'Male', 'employee', '00', 0x536e617050696320436f6c6c6167655f3230323132353136343233383935302e6a7067),
('M-1004', '1', '14', '2023-01-18', 'Male', 'employee', '45', ''),
('M-10011', 'Muhammad Awais', '11@gmail.com', '2023-01-12', 'Male', 'admin', '11', 0x536e617050696320436f6c6c6167655f3230323132353136343233383935302e6a7067),
('M-109', 'Muhammad Awais', 'muhammadawais@gmail.co', '2023-01-06', 'Male', 'student', '12345', 0x3130323533383136392e6a7067);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
