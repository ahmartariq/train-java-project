-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2020 at 10:50 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Ticket_id` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `CNIC` varchar(50) DEFAULT NULL,
  `Contact_Number` varchar(50) DEFAULT NULL,
  `Email_Address` varchar(50) DEFAULT NULL,
  `Fare` float DEFAULT NULL,
  `Class` varchar(50) DEFAULT NULL,
  `number_of_seats` int(11) DEFAULT NULL,
  `From` varchar(50) DEFAULT NULL,
  `to` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `train_id` varchar(50) DEFAULT NULL,
  `departure_time` varchar(50) DEFAULT NULL,
  `arrival_time` varchar(50) DEFAULT NULL,
  `train_name` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hello`
--

CREATE TABLE `hello` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `Pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `Pass`) VALUES
('ahmar', 'comsats1'),
('muqaddas', 'comsats1'),
('noor', 'comsats1'),
('talha', 'comsats1');

-- --------------------------------------------------------

--
-- Table structure for table `train_schedulle`
--

CREATE TABLE `train_schedulle` (
  `TRAIN_ID` varchar(5) NOT NULL,
  `TRAIN_NAME` varchar(20) NOT NULL,
  `DEPARTURE` varchar(50) NOT NULL,
  `ARRIVAL` varchar(50) NOT NULL,
  `DATE` varchar(50) NOT NULL,
  `DEPARTURE_TIME` varchar(50) NOT NULL,
  `ARRIVAL_TIME` varchar(50) NOT NULL,
  `Economoy` int(11) DEFAULT NULL,
  `Business_class` int(11) DEFAULT NULL,
  `AC_parlour` int(11) DEFAULT NULL,
  `Economoy_seats` int(11) DEFAULT 10,
  `Business_class_seats` int(11) DEFAULT 10,
  `AC_parlour_seats` int(11) DEFAULT 10
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train_schedulle`
--

INSERT INTO `train_schedulle` (`TRAIN_ID`, `TRAIN_NAME`, `DEPARTURE`, `ARRIVAL`, `DATE`, `DEPARTURE_TIME`, `ARRIVAL_TIME`, `Economoy`, `Business_class`, `AC_parlour`, `Economoy_seats`, `Business_class_seats`, `AC_parlour_seats`) VALUES
('11UP', 'Rehman Baba', 'Karachi', 'Lahore', '31,12,2020', '6.00 A.M', '2 A.M(next day)', 1950, 3950, 5000, 0, 0, 0),
('12UP', 'Rehman Baba', 'Lahore', 'Islamabad', '30,12,2020', '6.00 A.M', '2 A.M(next day)', 1950, 3950, 5000, 7, 2, 10),
('13UP', 'ABC', 'Karachi', 'Lahore', '31,12,2020', '12:30PM', '6:30PM', 1200, 1600, 2000, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `train_schedulle`
--
ALTER TABLE `train_schedulle`
  ADD PRIMARY KEY (`TRAIN_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
