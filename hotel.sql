-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2020 at 03:37 PM
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
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bookingstatus`
--

CREATE TABLE `bookingstatus` (
  `email` varchar(40) NOT NULL,
  `category` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `roomWant` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingstatus`
--

INSERT INTO `bookingstatus` (`email`, `category`, `type`, `roomWant`, `status`, `date`) VALUES
('iamsabit99@gmail.com', 'Rooms ', 'General Rooms', 21, 0, '2022-11-9');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `name` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `available` int(11) NOT NULL,
  `img` varchar(50) NOT NULL,
  `dec` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`name`, `type`, `cost`, `available`, `img`, `dec`) VALUES
('General Room', 'Double Bed', 2000, 50, '/assets/img/rooms/room12.jpg', 'Non AC Room'),
('General Room', 'Single Bed', 1500, 45, '/assets/img/rooms/room1.jpg', 'AC Room'),
('Rooms', 'Double Bed', 3000, 40, '/assets/img/rooms/room2.jpg', 'Non AC Room'),
('Rooms ', 'Single bed', 1200, 30, '/assets/img/rooms/room3.jpg', 'AC Room'),
('Special Rooms', '3-Double Bed', 7000, 25, '/assets/img/rooms/room11.png', 'This is a good room');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `phone`, `password`) VALUES
('admin', 'admin@admin.com', '1', '1'),
('Sabit', 'iamsabit99@gmail.com', '01744248058', '1'),
('Sabit', 'st.sabit13@gmail.com', '01744248058', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingstatus`
--
ALTER TABLE `bookingstatus`
  ADD PRIMARY KEY (`email`,`category`,`type`,`roomWant`,`date`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`name`,`type`,`cost`);

-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookingstatus`
--
ALTER TABLE `bookingstatus`
  ADD CONSTRAINT `fk_01` FOREIGN KEY (`email`) REFERENCES `user` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
