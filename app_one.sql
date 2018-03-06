-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 06, 2018 at 05:39 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_one`
--

--
-- Table structure for table `radio_buttons`
--

CREATE TABLE `radio_buttons` (
  `ID` int(100) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `LABEL` varchar(255) NOT NULL,
  `ACTIVE` tinyint(1) NOT NULL,
  `CREATED_BY` varchar(255) NOT NULL,
  `SORT_KEY` varchar(255) NOT NULL,
  `CREATED_ON` date NOT NULL,
  `UPDATED_BY` varchar(255) NOT NULL,
  `UPDATED_ON` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radio_buttons`
--

INSERT INTO `radio_buttons` (`ID`, `DESCRIPTION`, `LABEL`, `ACTIVE`, `CREATED_BY`, `SORT_KEY`, `CREATED_ON`, `UPDATED_BY`, `UPDATED_ON`) VALUES
(1, 'Foster Child', 'Foster Child', 1, 'jhon', 'A', '2018-03-06', 'jhon', '2018-03-06'),
(2, 'TANF/CALWORKS', 'TANF/CALWORKS', 1, 'jhon', 'A', '2018-03-06', 'jhon', '2018-03-06'),
(3, 'FAMILY FOOD STAMPS', 'FAMILY FOOD STAMPS', 1, 'jhon', 'A', '2018-03-06', 'jhon', '2018-03-06'),
(4, 'GR', 'GR', 1, 'jhon', 'A', '2018-03-06', 'jhon', '2018-03-06'),
(5, 'Other Needy Family', 'Other Needy Family', 1, 'jhon', 'A', '2018-03-06', 'jhon', '2018-03-06'),
(6, 'Disabled', 'Disabled', 1, 'jhon', 'A', '2018-03-06', 'jhon', '2018-03-06'),
(7, 'Homeless', 'Homeless', 1, 'jhon', 'A', '2018-03-06', 'jhon', '2018-03-06'),
(8, 'Pregnant/Parenting Youth', 'Pregnant/Parenting Youth', 1, 'jhon', 'A', '2018-03-06', 'jhon', '2018-03-06'),
(9, 'Runaway Youth', 'Runaway Youth', 1, 'jhon', 'B', '2018-03-06', 'jhon', '2018-03-06'),
(10, 'Probation', 'Probation', 1, 'jhon', 'B', '2018-03-06', 'jhon', '2018-03-06'),
(11, 'English Learner', 'English Learner', 1, 'jhon', 'B', '2018-03-06', 'jhon', '2018-03-06'),
(12, 'Veteran Status', 'Veteran Status', 1, 'jhon', 'B', '2018-03-06', 'jhon', '2018-03-06'),
(13, 'Unemployment Insurance', 'Unemployment Insurance', 1, 'jhon', 'B', '2018-03-06', 'jhon', '2018-03-06'),
(14, 'Spouse of Qualifying Veteran', 'Spouse of Qualifying Veteran', 1, 'jhon', 'B', '2018-03-06', 'jhon', '2018-03-06'),
(15, 'Supportive Service Needed', 'Supportive Service Needed', 1, 'jhon', 'B', '2018-03-06', 'jhon', '2018-03-06');

-- --------------------------------------------------------

--
-- Table structure for table `radio_button_options`
--

CREATE TABLE `radio_button_options` (
  `id` int(100) NOT NULL,
  `option_name` varchar(255) NOT NULL,
  `radio_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radio_button_options`
--

INSERT INTO `radio_button_options` (`id`, `option_name`, `radio_id`) VALUES
(1, 'Yes', 1),
(2, 'No', 1),
(3, 'Yes', 2),
(4, 'No', 2),
(5, 'Yes', 3),
(6, 'No', 3),
(7, 'Yes', 4),
(8, 'No', 4),
(9, 'Yes', 5),
(10, 'No', 5),
(11, 'Yes,Major', 6),
(12, 'No', 6),
(13, 'Yes', 7),
(14, 'No', 7),
(15, 'Yes', 8),
(16, 'No', 8),
(17, 'Yes', 9),
(18, 'No', 9),
(19, 'Yes', 10),
(20, 'No', 10),
(21, 'Did Not Disclose', 10),
(22, 'Yes', 11),
(23, 'No', 11),
(24, 'Yes, UI Claimant', 12),
(25, 'Yes,UI Exhausted', 12),
(26, 'No', 12),
(27, 'Yes,<=180 Days', 13),
(28, 'Yes,Eligible Veteran', 13),
(29, 'No', 13),
(30, 'Yes', 14),
(31, 'No', 14),
(32, 'Yes', 15),
(33, 'No', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `radio_buttons`
--
ALTER TABLE `radio_buttons`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `radio_button_options`
--
ALTER TABLE `radio_button_options`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `radio_buttons`
--
ALTER TABLE `radio_buttons`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `radio_button_options`
--
ALTER TABLE `radio_button_options`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
