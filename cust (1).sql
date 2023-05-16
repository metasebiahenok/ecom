-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2023 at 02:54 AM
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
-- Database: `registration_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cust`
--

CREATE TABLE `cust` (
  `first_name` varchar(80) NOT NULL,
  `last_name` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `subcity` varchar(80) NOT NULL,
  `woreda` int(20) NOT NULL,
  `hn` int(20) NOT NULL,
  `payment_method` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust`
--

INSERT INTO `cust` (`first_name`, `last_name`, `email`, `subcity`, `woreda`, `hn`, `payment_method`, `password`) VALUES
('', '', '', '', 0, 0, '', '$2y$10$z5/h8kKL6L3bwIGs5yf0y.RTxKeBjj1nbKqYt.7QGeUku7dgOBQdu'),
('metasebia', 'henok', 'nebahenok@gmail.com', 'akaki_kality', 3, 3, 'debit_card', '$2y$10$jm5XjAH0QpEJEtctxlkQpeBZerxGHpNzT58bmGfU03ykgFU./YlOG'),
('metasebiah', 'henok', 'nebahenok@gmail.com', 'cherekos', 2, 2, 'debit_card', '$2y$10$hl2z/J48SakcRz4bVg0f4OE6rck9Bylv1SkWuyNJipuu6HvYX4sau'),
('s', 'henok', 'nebahenok@gmail.com', 'yeka', 2, 2, 'credit_card', '$2y$10$/PdoLo.NArEaWa6W15LUTej2ixrJ33w7gQbqBYIx3S1c5hJtEFlyS'),
('ss', 'henok', 'nebahenok@gmail.com', 'yeka', 2, 2, 'credit_card', '$2y$10$Q0DvU5Tx53VG/rtWS5lEee.LKL1usRKJ2TBrwzug/g32J6QbBRu4q'),
('sss', 'henok', 'nebahenok@gmail.com', 'yeka', 2, 2, 'credit_card', '$2y$10$gKFG3vaxYFx95V3Ge0jiz.5F2h6KXf9rEpGqL1RvS.kcKIvMMySNm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cust`
--
ALTER TABLE `cust`
  ADD PRIMARY KEY (`first_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
