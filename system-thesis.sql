-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 27, 2025 at 11:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `system-thesis`
--

-- --------------------------------------------------------

--
-- Table structure for table `createschedule`
--

CREATE TABLE `createschedule` (
  `ScheduleID` int(255) NOT NULL,
  `Subject` varchar(255) NOT NULL,
  `DaySlot` varchar(255) NOT NULL,
  `StartTime` varchar(10) NOT NULL,
  `EndTime` varchar(10) NOT NULL,
  `RoomNumber` varchar(255) NOT NULL,
  `FacultyID` int(255) NOT NULL,
  `Section` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `createschedule`
--

INSERT INTO `createschedule` (`ScheduleID`, `Subject`, `DaySlot`, `StartTime`, `EndTime`, `RoomNumber`, `FacultyID`, `Section`) VALUES
(7, 'Basic Microeconomics', 'Monday', '07:00', '08:00', '103', 4, NULL),
(8, 'Platform Technology', 'Monday', '07:00', '08:00', '104', 1, NULL),
(10, 'Good Governance', 'Tuesday', '10:00', '14:30', '101', 4, 'BSBA 601E'),
(11, 'IT ele 1 - OOP', 'Tuesday', '11:30', '13:00', '203', 1, 'BSIT101P'),
(12, 'Event Driven Prog', 'Monday', '10:30', '23:30', '101', 1, 'bsit 401p'),
(13, 'Event Driven Prog', 'Wednesday', '10:30', '23:30', '101', 1, 'bsit 401p'),
(14, 'Event Driven Prog', 'Friday', '10:30', '23:30', '101', 1, 'bsit 401p'),
(15, 'Computer Programming 1', 'Saturday', '16:00', '19:00', 'LAB 1', 5, 'bsit 101a');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum`
--

CREATE TABLE `curriculum` (
  `CurriculumID` int(255) NOT NULL,
  `Subject` varchar(255) NOT NULL,
  `Unit` varchar(255) NOT NULL,
  `Program` varchar(255) NOT NULL,
  `YearLevel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `curriculum`
--

INSERT INTO `curriculum` (`CurriculumID`, `Subject`, `Unit`, `Program`, `YearLevel`) VALUES
(1, 'Understanding the Self', '3', 'BSTM', '1st Year'),
(2, 'Macroperspective of TH', '3', 'BSTM', '1st Year'),
(3, 'Math in Modern World', '3', 'BSTM', '1st Year'),
(4, 'Readings in Phil History', '3', 'BSTM', '1st Year'),
(5, 'NSTP 1', '3', 'BSTM', '1st Year'),
(6, 'PE 1', '3', 'BSTM', '1st Year'),
(7, 'Euthenics 1', '3', 'BSTM', '1st Year'),
(8, 'Risk Management as Applied to SSS', '3', 'BSTM', '1st Year'),
(9, 'Quality Serv Mngt in TH', '3', 'BSTM', '2nd Year'),
(10, 'Art Appreciation', '3', 'BSTM', '2nd Year'),
(11, 'Tour & Travel Management', '3', 'BSTM', '2nd Year'),
(12, 'Sustainable Tourism', '3', 'BSTM', '2nd Year'),
(13, 'Accommodation', '3', 'BSTM', '2nd Year'),
(14, 'PE 3', '3', 'BSTM', '2nd Year'),
(15, 'Foreign Language 1', '3', 'BSTM', '2nd Year'),
(16, 'Entrepreneurial Mind', '3', 'BSTM', '3rd Year'),
(17, 'Applied Business Tools', '3', 'BSTM', '3rd Year'),
(18, 'Greatbooks', '3', 'BSTM', '3rd Year'),
(19, 'TH marketing', '3', 'BSTM', '3rd Year'),
(20, 'Multicultural Diversity', '3', 'BSTM', '3rd Year'),
(21, 'Operations Management (TQM)', '3', 'BSTM', '3rd Year'),
(22, 'Prof Dev and Applied Ethics', '3', 'BSTM', '3rd Year'),
(23, 'Airline Operations 1', '3', 'BSTM', '4th Year'),
(24, 'Research in Tourism', '3', 'BSTM', '4th Year'),
(25, 'Euthenics 2', '3', 'BSTM', '4th Year'),
(26, 'Contemporary World', '3', 'BSTM', '4th Year'),
(27, 'Rizal\'s Life & Works', '3', 'BSTM', '4th Year'),
(28, 'Math in the Modern World', '3', 'BAPSYCH', '1st Year'),
(29, 'Euthenics', '3', 'BAPSYCH', '1st Year'),
(30, 'PE 1', '3', 'BAPSYCH', '1st Year'),
(31, 'Understanding the Self', '3', 'BAPSYCH', '1st Year'),
(32, 'NSTP 1', '3', 'BAPSYCH', '1st Year'),
(33, 'Intro to Psychology', '3', 'BAPSYCH', '1st Year'),
(34, 'Computer Productivity Tools', '3', 'BAPSYCH', '1st Year'),
(35, 'Readings in Phil History', '3', 'BSBA', '1st Year'),
(36, 'The Contemporary World', '3', 'BSBA', '1st Year'),
(37, 'Understanding the Self', '3', 'BSBA', '1st Year'),
(38, 'NSTP 1', '3', 'BSBA', '1st Year'),
(39, 'Basic Microeconomics', '3', 'BSBA', '1st Year'),
(40, 'Euthenics', '3', 'BSBA', '1st Year'),
(41, 'PE 1', '3', 'BSBA', '1st Year'),
(42, 'Math in the Modern World', '3', 'BSBA', '2nd Year'),
(43, 'Facilities Management', '3', 'BSBA', '2nd Year'),
(44, 'The Entrepreneurial Mind', '3', 'BSBA', '2nd Year'),
(45, 'Rizal\'s Life & Works', '3', 'BSBA', '2nd Year'),
(46, 'PE 3', '3', 'BSBA', '2nd Year'),
(47, 'Euthenics', '3', 'BSBA', '2nd Year'),
(48, 'PE 1', '3', 'BSBA', '2nd Year'),
(49, 'Costing and Pricing', '3', 'BSBA', '2nd Year'),
(50, 'Business Research', '3', 'BSBA', '3rd Year'),
(51, 'International Business and Trade', '3', 'BSBA', '3rd Year'),
(52, 'Greatbooks', '3', 'BSBA', '3rd Year'),
(53, 'Operations Management', '3', 'BSBA', '3rd Year'),
(54, 'Good Governance', '3', 'BSBA', '3rd Year'),
(55, 'Managerial Accounting', '3', 'BSBA', '3rd Year'),
(56, 'Special Topics in Operations Management', '3', 'BSBA', '4th Year'),
(57, 'Marketing Management', '3', 'BSBA', '4th Year'),
(58, 'Euthenics 2', '3', 'BSBA', '4th Year'),
(59, 'Financial Management', '3', 'BSBA', '4th Year'),
(60, 'Feasibility Study', '3', 'BSBA', '4th Year'),
(61, 'Entrepreneurial Management', '3', 'BSBA', '4th Year'),
(62, 'Purposive Communication', '3', 'BSCS', '1st Year'),
(63, 'Understanding the Self', '3', 'BSCS', '1st Year'),
(64, 'Intro to Computing', '3', 'BSCS', '1st Year'),
(65, 'Computer Programming 1', '3', 'BSCS', '1st Year'),
(66, 'The Contemporary World', '3', 'BSCS', '1st Year'),
(67, 'NSTP 1', '3', 'BSCS', '1st Year'),
(68, 'Euthenics 1', '3', 'BSCS', '1st Year'),
(69, 'PE 1', '3', 'BSCS', '1st Year'),
(70, 'Entrepreneurial Mind', '3', 'BSCS', '2nd Year'),
(71, 'Discrete Structures 2', '3', 'BSCS', '2nd Year'),
(72, 'Readings in Phil History', '3', 'BSCS', '2nd Year'),
(73, 'Rizal\'s Life and Works', '3', 'BSCS', '2nd Year'),
(74, 'Principles of Communication', '3', 'BSCS', '2nd Year'),
(75, 'Data Structures and Algorithm', '3', 'BSCS', '2nd Year'),
(76, 'Computer Programming 3', '3', 'BSCS', '2nd Year'),
(77, 'PE 3', '3', 'BSCS', '2nd Year'),
(78, 'Quantitative Methods', '3', 'BSCS', '3rd Year'),
(79, 'Artificial Intelligence', '3', 'BSCS', '3rd Year'),
(80, 'CS ELE 2', '3', 'BSCS', '3rd Year'),
(81, 'Theory of Computation', '3', 'BSCS', '3rd Year'),
(82, 'App Dev', '3', 'BSCS', '3rd Year'),
(83, 'Info Assurance and Sec Cybersecurity', '3', 'BSCS', '3rd Year'),
(84, 'Methods of Research', '3', 'BSCS', '3rd Year'),
(85, 'Software Engineering 1', '3', 'BSCS', '3rd Year'),
(86, 'Technopreneurship', '3', 'BSCS', '4th Year'),
(87, 'Software Quality Assurance', '3', 'BSCS', '4th Year'),
(88, 'Network Technology 1', '3', 'BSCS', '4th Year'),
(89, 'Platform Technology', '3', 'BSCS', '4th Year'),
(90, 'Euthenics 2', '3', 'BSCS', '4th Year'),
(91, 'CS Thesis 2', '3', 'BSCS', '4th Year'),
(92, 'Info Assurance and Security (Data Privacy)', '3', 'BSCS', '4th Year'),
(93, 'Professional Issues in IS and Tech', '3', 'BSCS', '4th Year'),
(94, 'Understanding the Self', '3', 'BSIT', '1st Year'),
(95, 'Purposive Communication', '3', 'BSIT', '1st Year'),
(96, 'Phil Pop Culture', '3', 'BSIT', '1st Year'),
(97, 'Euthenics', '3', 'BSIT', '1st Year'),
(98, 'Euthenics 1', '3', 'BSIT', '1st Year'),
(99, 'Intro to Computing', '3', 'BSIT', '1st Year'),
(100, 'The Contemporary World', '3', 'BSIT', '1st Year'),
(101, 'NSTP 1', '3', 'BSIT', '1st Year'),
(102, 'Computer Programming 1', '3', 'BSIT', '1st Year'),
(103, 'PE 1', '3', 'BSIT', '1st Year'),
(104, 'Human Computer Interaction', '3', 'BSIT', '2nd Year'),
(105, 'Readings in Phil History', '3', 'BSIT', '2nd Year'),
(106, 'Platform Technology', '3', 'BSIT', '2nd Year'),
(107, 'Principles of Communication', '3', 'BSIT', '2nd Year'),
(108, 'Rizal\'s Life and Works', '3', 'BSIT', '2nd Year'),
(109, 'PE 3', '3', 'BSIT', '2nd Year'),
(110, 'Data Structures and algorithm', '3', 'BSIT', '2nd Year'),
(111, 'IT ele 1 - OOP', '3', 'BSIT', '2nd Year'),
(112, 'Advanced Database System', '3', 'BSIT', '3rd Year'),
(113, 'Professional Issues in IS', '3', 'BSIT', '3rd Year'),
(114, 'Event Driven Prog', '3', 'BSIT', '3rd Year'),
(115, 'Data and Digital Comm', '3', 'BSIT', '3rd Year'),
(116, 'Advanced System Integration and Architecture', '3', 'BSIT', '3rd Year'),
(117, 'IT ele 2 - Enterprise Archi', '3', 'BSIT', '3rd Year'),
(118, 'App Dev', '3', 'BSIT', '3rd Year'),
(119, 'IT Service Management', '3', 'BSIT', '4th Year'),
(120, 'Euthenics 2', '3', 'BSIT', '4th Year'),
(121, 'Computer Graphics', '3', 'BSIT', '4th Year'),
(122, 'IT Capstone 2', '3', 'BSIT', '4th Year'),
(123, 'Info Assurance and Security - Data Privacy', '3', 'BSIT', '4th Year'),
(124, 'Network Technology', '3', 'BSIT', '4th Year'),
(125, 'IT Ele 4 - Game Dev', '3', 'BSIT', '4th Year');

-- --------------------------------------------------------

--
-- Table structure for table `facultyavailability`
--

CREATE TABLE `facultyavailability` (
  `AvailabilityID` int(255) NOT NULL,
  `FacultyID` int(255) NOT NULL,
  `CurriculumID` int(255) NOT NULL,
  `ScheduleID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facultyavailability`
--

INSERT INTO `facultyavailability` (`AvailabilityID`, `FacultyID`, `CurriculumID`, `ScheduleID`) VALUES
(1, 1, 102, 1),
(2, 1, 99, 2),
(3, 1, 65, 3),
(4, 1, 29, 4),
(5, 1, 64, 0),
(6, 1, 65, 0),
(7, 1, 75, 0),
(8, 1, 121, 0),
(9, 1, 122, 0),
(10, 1, 124, 0),
(11, 1, 112, 0),
(12, 1, 104, 5),
(13, 1, 65, 0),
(14, 1, 112, 0),
(15, 1, 116, 0),
(16, 1, 119, 0),
(17, 2, 36, 0),
(18, 2, 1, 0),
(19, 1, 89, 8),
(20, 4, 54, 10),
(21, 1, 111, 11),
(22, 1, 114, 12),
(23, 1, 114, 13),
(24, 1, 114, 14),
(25, 5, 65, 15);

-- --------------------------------------------------------

--
-- Table structure for table `facultymembers`
--

CREATE TABLE `facultymembers` (
  `FacultyID` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Program` varchar(255) NOT NULL,
  `PreferredSubjects` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facultymembers`
--

INSERT INTO `facultymembers` (`FacultyID`, `Name`, `Department`, `Program`, `PreferredSubjects`) VALUES
(1, 'Fredo T. Jalayajay', 'BSIT', 'BSIT', NULL),
(4, 'Gretchen Obligar', 'BSBA', 'BSBA', NULL),
(5, 'Juan Dela Cruz', 'BSIT', 'BSIT', NULL),
(6, 'vach', 'BSBA', 'BSBA', NULL),
(7, 'jim', 'BSBA', 'BSBA', 'Facilities Management, The Entrepreneurial Mind'),
(8, 'Pedro', 'BSTM', 'BSTM', 'Accommodation, Foreign Language 1, Applied Business Tools');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `username`, `password`, `createdAt`) VALUES
(5, 'admin', '$2y$10$S9AJcXhRn3OtBVR89LBEtuOH5r8HHYcTM8PvY/mOB4byt4l83vkiy', '2025-04-22 15:16:09.573726');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `createschedule`
--
ALTER TABLE `createschedule`
  ADD PRIMARY KEY (`ScheduleID`);

--
-- Indexes for table `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`CurriculumID`);

--
-- Indexes for table `facultyavailability`
--
ALTER TABLE `facultyavailability`
  ADD PRIMARY KEY (`AvailabilityID`);

--
-- Indexes for table `facultymembers`
--
ALTER TABLE `facultymembers`
  ADD PRIMARY KEY (`FacultyID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `createschedule`
--
ALTER TABLE `createschedule`
  MODIFY `ScheduleID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `curriculum`
--
ALTER TABLE `curriculum`
  MODIFY `CurriculumID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `facultyavailability`
--
ALTER TABLE `facultyavailability`
  MODIFY `AvailabilityID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `facultymembers`
--
ALTER TABLE `facultymembers`
  MODIFY `FacultyID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
