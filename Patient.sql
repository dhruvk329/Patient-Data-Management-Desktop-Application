-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 21, 2024 at 01:25 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CS_IA`
--

-- --------------------------------------------------------

--
-- Table structure for table `Appointments`
--

CREATE TABLE `Appointments` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Agenda` varchar(100) NOT NULL,
  `Time` varchar(100) NOT NULL,
  `Duration` varchar(100) NOT NULL,
  `Date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BMI`
--

CREATE TABLE `BMI` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Height` varchar(100) NOT NULL,
  `Weight` varchar(100) NOT NULL,
  `BMI` varchar(100) NOT NULL,
  `Condition` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `BMI`
--

INSERT INTO `BMI` (`ID`, `Name`, `Height`, `Weight`, `BMI`, `Condition`) VALUES
(9, 'test15', '1.9', '150', '41.55', 'OverWeight');

-- --------------------------------------------------------

--
-- Table structure for table `Doctor`
--

CREATE TABLE `Doctor` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Doctor`
--

INSERT INTO `Doctor` (`ID`, `Name`, `Username`, `Email`, `Phone`, `Password`) VALUES
(7, 'test', 'test', 'test', 'test', 'test'),
(8, 'test', 'test', 'test', 'test', '11'),
(9, 'docotr', 'doctor', 'doctor', 'doctor', 'doctor'),
(10, 'test2', 'test123', 'test@mail.com', '123456', 'test'),
(11, 'test123', 'test1', 'test@mail.com', '123456', 'test'),
(12, 'test', 'test123', 'test@mail.com', '12345', 'test'),
(13, 'test', 'test1234567', 'test@gmail.com', '12345', '123'),
(14, 'test', 'doctor.test', 'test@mail', '1234', '1234'),
(15, 'test', 'test12345', 'test@office.com', '123', '1234'),
(20, 'test.doctor', '12345', '12345', '12345', '12345'),
(25, 'test.doctor', '123', '123', '123', '123'),
(26, 'test.doctor1234', '12341', '12341', '1234', '1234'),
(27, 'test docto', '123', '123', '123', '123'),
(28, 'test.doctor1234', '12345', '1234', '12345', '1234'),
(29, 'testing doctor', '123', '123', '123', '123'),
(30, 'testing doctor 123', '123', '123', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `Patients`
--

CREATE TABLE `Patients` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Age` varchar(100) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Mobile` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Disease` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Patients`
--

INSERT INTO `Patients` (`ID`, `Name`, `Age`, `Gender`, `Mobile`, `Address`, `Disease`) VALUES
(41, 'test', '12', 'Male', 'test', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `Vitals`
--

CREATE TABLE `Vitals` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `BP1` varchar(100) NOT NULL,
  `BP2` varchar(100) NOT NULL,
  `BP3` varchar(100) NOT NULL,
  `SL1` varchar(100) NOT NULL,
  `SL2` varchar(100) NOT NULL,
  `SL3` varchar(100) NOT NULL,
  `SP1` varchar(100) NOT NULL,
  `SP2` varchar(100) NOT NULL,
  `SP3` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Vitals`
--

INSERT INTO `Vitals` (`ID`, `Name`, `BP1`, `BP2`, `BP3`, `SL1`, `SL2`, `SL3`, `SP1`, `SP2`, `SP3`) VALUES
(4, 'test3', '23', '234', '245', '23', '12', '21', '35', '56', '56'),
(6, 'test2', '23', '25', '45', '23', '12', '10', '45', '56', '15'),
(7, 'test7', '20', '30', '40', '10', '20', '30', '56', '54', '56'),
(8, 'test10', '20', '30', '40', '40', '50', '60', '67', '212', '342'),
(9, 'test8', '23', '25', '45', '12', '31', '42', '10', '20', '54'),
(10, 'test11', '34', '12', '55', '54', '65', '45', '12', '13', '14'),
(11, 'test8', '23', '25', '12', '19', '54', '54', '12', '15', '54'),
(12, 'test15', '56', '45', '12', '12', '12', '43', '134', '1452', '1352'),
(13, 'test16', '12', '13', '54', '54', '12', '54', '65', '67', '12'),
(14, 'test17', '23', '23', '24', '12', '14', '15', '15', '16', '18'),
(15, 'test11', '12', '12', '13', '14', '15', '17', '16', '17', '19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Appointments`
--
ALTER TABLE `Appointments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BMI`
--
ALTER TABLE `BMI`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Doctor`
--
ALTER TABLE `Doctor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Patients`
--
ALTER TABLE `Patients`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Vitals`
--
ALTER TABLE `Vitals`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Appointments`
--
ALTER TABLE `Appointments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `BMI`
--
ALTER TABLE `BMI`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Doctor`
--
ALTER TABLE `Doctor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `Patients`
--
ALTER TABLE `Patients`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `Vitals`
--
ALTER TABLE `Vitals`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
