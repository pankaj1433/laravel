-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 07, 2018 at 07:52 PM
-- Server version: 5.6.31
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

-- --------------------------------------------------------

--
-- Table structure for table `application_form`
--

CREATE TABLE `application_form` (
  `id` int(100) NOT NULL,
  `application_ID` varchar(255) NOT NULL,
  `assigned_agency` varchar(255) NOT NULL,
  `current_status` varchar(100) NOT NULL,
  `SSN` varchar(100) NOT NULL,
  `application_date` date NOT NULL,
  `enrollment_date` date NOT NULL,
  `funding_source` varchar(255) NOT NULL,
  `CalJOBS` varchar(255) NOT NULL,
  `unincorporated_area` varchar(10) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `age` int(100) NOT NULL,
  `address_res` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `phone_res` varchar(255) NOT NULL,
  `mail_address` varchar(255) NOT NULL,
  `mail_city` varchar(255) NOT NULL,
  `mail_state` varchar(255) NOT NULL,
  `mail_zip` varchar(255) NOT NULL,
  `message_phone` varchar(255) NOT NULL,
  `citizen` varchar(255) NOT NULL,
  `eligible_to_work` varchar(255) NOT NULL,
  `alien_doc` varchar(255) NOT NULL,
  `race` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `foster_child` varchar(255) NOT NULL,
  `TANF` varchar(255) NOT NULL,
  `family_food_stamps` varchar(255) NOT NULL,
  `GR` varchar(255) NOT NULL,
  `other_needy_family` varchar(255) NOT NULL,
  `disabled` varchar(255) NOT NULL,
  `homeless` varchar(255) NOT NULL,
  `runaway` varchar(255) NOT NULL,
  `pregnant` varchar(255) NOT NULL,
  `probation` varchar(255) NOT NULL,
  `limited` varchar(255) NOT NULL,
  `unemployment` varchar(255) NOT NULL,
  `veteran` varchar(255) NOT NULL,
  `qualifying_veteran` varchar(255) NOT NULL,
  `supportive_service_needed` varchar(255) NOT NULL,
  `highest_grade_completed` varchar(255) NOT NULL,
  `referred_by` varchar(255) NOT NULL,
  `TSE` varchar(255) NOT NULL,
  `agency` varchar(255) NOT NULL,
  `staff_id` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `work_permit_file` varchar(255) NOT NULL,
  `parent_signature_file` varchar(255) NOT NULL,
  `PDJ` varchar(255) NOT NULL,
  `cluster` varchar(255) NOT NULL,
  `area_office` varchar(255) NOT NULL,
  `caseload_no` varchar(255) NOT NULL,
  `education_status` varchar(255) NOT NULL,
  `created_on` date NOT NULL,
  `modified_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application_form`
--

INSERT INTO `application_form` (`id`, `application_ID`, `assigned_agency`, `current_status`, `SSN`, `application_date`, `enrollment_date`, `funding_source`, `CalJOBS`, `unincorporated_area`, `last_name`, `first_name`, `gender`, `birth_date`, `age`, `address_res`, `city`, `state`, `zip_code`, `phone_res`, `mail_address`, `mail_city`, `mail_state`, `mail_zip`, `message_phone`, `citizen`, `eligible_to_work`, `alien_doc`, `race`, `email_address`, `foster_child`, `TANF`, `family_food_stamps`, `GR`, `other_needy_family`, `disabled`, `homeless`, `runaway`, `pregnant`, `probation`, `limited`, `unemployment`, `veteran`, `qualifying_veteran`, `supportive_service_needed`, `highest_grade_completed`, `referred_by`, `TSE`, `agency`, `staff_id`, `note`, `work_permit_file`, `parent_signature_file`, `PDJ`, `cluster`, `area_office`, `caseload_no`, `education_status`, `created_on`, `modified_on`) VALUES
(2, 'two', 'test', 'active', '123', '2018-03-04', '2018-03-04', 'test', 'test', 'Y', 'test', 'test', 'Male', '0000-00-00', 123, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'Yes', 'Yes', 'test', 'test', 'test', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Not Applicable', 'No', 'Yes', 'Yes', 'Yes,Receiving', '<180days', 'Yes', 'Not Applicable', 'test', 'test', 'test', 'test', 'test', 'test', 'Yes', 'Not Applicable', 'test', 'test', 'test', 'test', 'Yes', '2018-01-01', '2019-01-01'),
(3, 'one', 'ajkshjh', 'jhjh', 'jhkjh', '2018-03-04', '2018-03-04', 'jhbkj', 'hjkhbjkh', 'Y', 'jhbjk', 'hjbkb', 'Male', '2018-01-01', 0, 'hjkbhj', 'jbkhkj', 'jbhbkjh', 'bjkhjk', 'jbhkj', 'hjkbhbjk', 'hbjkhkj', 'hjkbhj', 'bjkhbjkh', 'jkbhjkbh', 'Yes', 'No', 'jkbhj', 'jkbh', 'jbbhjbh', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '<180days', 'Yes', 'Yes', 'bj', 'jh', 'h', 'h', 'h', 'h', 'Yes', 'Yes', 'h', 'h', 'h', 'h', 'Student H.S or less', '2018-01-01', '2018-01-01'),
(5, 'five', 'agency', 'currennt status', 'SSN', '2018-03-04', '2018-03-04', 'fund', 'calJOBS', 'Yes', 'LAST', 'FIRST', 'Male', '2018-11-10', 10, 'address-res', 'city', 'state', 'zio', 'phone', 'mail', 'mail-city', 'mail state', 'mail zip', 'msg phone', 'Yes', 'Yes', 'alien', 'race', 'email', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Yes,Receiving', 'Yes', 'Yes', 'Not Applicable', 'No', 'No', 'Yes,Receiving', '>180days', 'No', 'No', 'asda', 'nn', 'nn', 'nnn', 'nnn', 'nnn', 'Not Applicable', 'Yes', 'nn', 'nn', 'nn', 'nn', 'Student H.S or less', '2018-02-01', '2018-01-01'),
(6, 'six', 'agency', 'current stat', 'ssn1', '2018-03-04', '2018-03-04', 'fund', 'job', 'Yes', 'lst', 'frst', 'Female', '2018-01-01', 21, 'delhi', 'delhi', 'delhi', '110080', '9999999999', 'pankaj@gmail.com', 'delhi', 'delhi', '110080', '9999999999', 'Yes', 'Yes', 'doc', 'race', 'email', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '<180days', 'Yes', 'Yes', 'highest', 'refered', 'tse', 'agency', 'staff', 'note', 'Yes', 'Yes', 'pdj', 'cluster', 'area', 'case', 'Student H.S or less', '2018-01-01', '2012-01-01'),
(7, 'seven', 'agency', 'current stat', 'ssn1', '2018-03-04', '2018-03-04', 'fund', 'job', 'Yes', 'lst', 'frst', 'Female', '2018-01-01', 21, 'delhi', 'delhi', 'delhi', '110080', '9999999999', 'pankaj@gmail.com', 'delhi', 'delhi', '110080', '9999999999', 'Yes', 'Yes', 'doc', 'race', 'email', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '<180days', 'Yes', 'Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-01-01', '2012-01-01'),
(8, 'seven', 'agency', 'current stat', 'ssn1', '2018-03-04', '2018-03-04', 'fund', 'job', 'Yes', 'lst', 'frst', 'Female', '2018-01-01', 21, 'delhi', 'delhi', 'delhi', '110080', '9999999999', 'pankaj@gmail.com', 'delhi', 'delhi', '110080', '9999999999', 'Yes', 'Yes', 'doc', 'race', 'email', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '<180days', 'Yes', 'Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-01-01', '2012-01-01'),
(9, 'seven', 'agency', 'current stat', 'ssn1', '2018-03-04', '2018-03-04', 'fund', 'job', 'Yes', 'lst', 'frst', 'Female', '2018-01-01', 21, 'delhi', 'delhi', 'delhi', '110080', '9999999999', 'pankaj@gmail.com', 'delhi', 'delhi', '110080', '9999999999', 'Yes', 'Yes', 'doc', 'race', 'email', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '<180days', 'Yes', 'Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-01-01', '2012-01-01'),
(10, 'seven', 'agency', 'current stat', 'ssn1', '2018-03-04', '2018-03-04', 'fund', 'job', 'Yes', 'lst', 'frst', 'Female', '2018-01-01', 21, 'delhi', 'delhi', 'delhi', '110080', '9999999999', 'pankaj@gmail.com', 'delhi', 'delhi', '110080', '9999999999', 'Yes', 'Yes', 'doc', 'race', 'email', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '<180days', 'Yes', 'Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-01-01', '2012-01-01'),
(11, 'five', 'agency', 'currennt status', 'SSN', '2018-03-04', '2018-03-04', 'fund', 'calJOBS', 'Yes', 'LAST', 'FIRST', 'Male', '2018-11-10', 10, 'address-res', 'city', 'state', 'zio', 'phone', 'mail', 'mail-city', 'mail state', 'mail zip', 'msg phone', 'Yes', 'Yes', 'alien', 'race', 'email', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Yes,Receiving', 'Yes', 'Yes', 'Not Applicable', 'No', 'No', 'Yes,Receiving', '>180days', 'No', 'No', 'asda', 'nn', 'nn', 'nnn', 'nnn', 'nnn', 'Not Applicable', 'Yes', 'nn', 'nn', 'nn', 'nn', 'Student H.S or less', '1900-01-01', '1900-01-01'),
(12, 'fifty', 'agency', 'test', 'ttt', '0000-00-00', '0000-00-00', 'GROW', 'hg', '', 'tt', 'tt', 'Male', '2009-01-01', 56, 'jhj', 'hjh', 'jh', 'jh', 'jh', 'jh', 'jh', 'jh', 'jhj', 'hj', 'Yes', 'Yes', 'hjhj', 'American Indian', 'jhjh', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes,<=180 Days', 'Yes, UI Claimant', 'Yes', 'Yes', 'hjh', 'jhj', 'hj', 'hjh', 'j', 'hj', 'Not Applicable', 'Yes', 'jh', 'jhjh', 'jh', 'jhjh', 'Alternative School', '2018-03-08', '2018-03-08');

-- --------------------------------------------------------

--
-- Table structure for table `education_status`
--

CREATE TABLE `education_status` (
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
-- Dumping data for table `education_status`
--

INSERT INTO `education_status` (`ID`, `DESCRIPTION`, `LABEL`, `ACTIVE`, `CREATED_BY`, `SORT_KEY`, `CREATED_ON`, `UPDATED_BY`, `UPDATED_ON`) VALUES
(1, 'STUDENT HIGH SCHOOL', 'Student H.S or less', 1, 'Jhon', 'A', '2018-03-04', 'Jhon', '2018-03-04'),
(2, 'Student attending post H.S.', 'Student attending post H.S.', 1, 'Jhon', 'B', '2018-03-04', 'Jhon', '2018-03-04'),
(3, 'Out-of-School, H.S dropout', 'Out-of-School, H.S dropout', 1, 'Jhon', 'C', '2018-03-04', 'Jhon', '2018-03-04'),
(4, 'Out-of-School, H.S grad, employment difficulty', 'Out-of-School, H.S grad, employment difficulty', 1, 'Jhon', 'D', '2018-03-04', 'Jhon', '2018-03-04'),
(5, 'Out-of-School, H.S grad, no employment difficulty', 'Out-of-School, H.S grad, no employment difficulty', 1, 'Jhon', 'E', '2018-03-04', 'Jhon', '2018-03-04'),
(6, 'Alternative School', 'Alternative School', 1, 'Jhon', 'F', '2018-03-04', 'Jhon', '2018-03-04'),
(7, 'this will not display as it is not active', 'some text', 0, 'SAM', 'G', '2018-03-04', 'SAM', '2018-03-04');

-- --------------------------------------------------------

--
-- Table structure for table `funding_source`
--

CREATE TABLE `funding_source` (
  `Funding_ID` int(100) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Label` varchar(255) NOT NULL,
  `Sort_Key` varchar(30) NOT NULL,
  `Active_Status` varchar(255) NOT NULL,
  `Begin_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  `Create_Date` date NOT NULL,
  `Create_By` varchar(255) NOT NULL,
  `Last_Update_date` date NOT NULL,
  `Last_Update_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `funding_source`
--

INSERT INTO `funding_source` (`Funding_ID`, `Description`, `Label`, `Sort_Key`, `Active_Status`, `Begin_Date`, `End_Date`, `Create_Date`, `Create_By`, `Last_Update_date`, `Last_Update_by`) VALUES
(201, 'CalTeens', 'CalTeens', 'a', 'No', '2012-12-05', '2013-05-21', '2012-05-12', 'e496632', '2018-03-07', 'e496632'),
(202, 'NCC', 'NCC', 'a', 'No', '2012-05-12', '2016-06-30', '2012-05-12', 'e496632', '2018-03-07', 'e496632'),
(203, 'GROW', 'GROW', 'a', 'Yes', '2012-05-23', '0000-00-00', '2012-05-23', 'e496632', '2018-03-07', 'e496632'),
(204, 'WIA Waiver', 'WIA Waiver', 'a', 'No', '2012-01-01', '2016-06-30', '2012-01-01', 'e496632', '2018-03-07', 'e496632'),
(205, 'CalWORKs', 'CalWORKs', 'a', 'Yes', '2014-04-01', '0000-00-00', '2014-04-01', 'e496632', '2018-03-07', 'e496632'),
(206, 'DPSS Foster', 'DPSS Foster', 'a', 'Yes', '2014-05-01', '0000-00-00', '2014-05-01', 'e496632', '2018-03-07', 'e496632'),
(207, 'NCC Hot Spots', 'NCC Hot Spots', 'a', 'No', '2014-07-01', '2015-02-27', '2014-07-01', 'e496632', '2018-03-07', 'e496632'),
(208, 'CWYR', 'CWYR', 'a', 'Yes', '2015-02-10', '0000-00-00', '2015-02-10', 'e496632', '2018-03-07', 'e496632'),
(209, 'Other Underserved Youth', 'OUSY', 'a', 'Yes', '2016-07-01', '0000-00-00', '2016-07-01', 'e496632', '2018-03-07', 'e496632'),
(210, 'Probation JJCPA', 'JJCPA', 'a', 'Yes', '2017-04-25', '0000-00-00', '2017-04-25', 'e496632', '2018-03-07', 'e496632'),
(211, 'WIOA Waiver', 'WIOA Waiver', 'a', 'Yes', '2016-07-01', '0000-00-00', '2016-07-01', 'e496632', '2018-03-07', 'e496632');

-- --------------------------------------------------------

--
-- Table structure for table `race`
--

CREATE TABLE `race` (
  `Race_ID` int(100) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Label` varchar(255) NOT NULL,
  `Sort_Key` varchar(30) NOT NULL,
  `Active_Status` varchar(255) NOT NULL,
  `Create_Date` date NOT NULL,
  `Create_By` varchar(255) NOT NULL,
  `Last_Update_date` date NOT NULL,
  `Last_Update_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `race`
--

INSERT INTO `race` (`Race_ID`, `Description`, `Label`, `Sort_Key`, `Active_Status`, `Create_Date`, `Create_By`, `Last_Update_date`, `Last_Update_by`) VALUES
(101, 'American Indian/Alaskan Native', 'American Indian', 'a', 'Yes', '2018-03-07', 'e496632', '2018-03-07', 'e496632'),
(102, 'Asian', 'Asian', 'a', 'Yes', '2018-03-07', 'e496632', '2018-03-07', 'e496632'),
(103, 'Black non-hispanic', 'Black', 'a', 'Yes', '2018-03-07', 'e496632', '2018-03-07', 'e496632'),
(104, 'Multi Race', 'Multi Race', 'y', 'Yes', '2018-03-07', 'e496632', '2018-03-07', 'e496632'),
(105, 'Not Wish to Answer', 'Not Wish to Answer', 'z', 'Yes', '2018-03-07', 'e496632', '2018-03-07', 'e496632'),
(106, 'Pacific Islandar', 'Pacific Islandar', 'a', 'Yes', '2018-03-07', 'e496632', '2018-03-07', 'e496632'),
(107, 'White non-hispanic', 'White', 'a', 'Yes', '2018-03-07', 'e496632', '2018-03-07', 'e496632'),
(108, 'Hispanic', 'Hispanic', 'a', 'Yes', '2018-03-07', 'e496632', '2018-03-07', 'e496632');

-- --------------------------------------------------------

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
(12, 'Unemployment Insurance', 'Unemployment Insurance', 1, 'jhon', 'B', '2018-03-06', 'jhon', '2018-03-06'),
(13, 'Veteran Status', 'Veteran Status', 1, 'jhon', 'B', '2018-03-06', 'jhon', '2018-03-06'),
(14, 'Spouse of Qualifying Veteran', 'Spouse of Qualifying Veteran', 1, 'jhon', 'B', '2018-03-06', 'jhon', '2018-03-06'),
(15, 'Supportive Service Needed', 'Supportive Service Needed', 1, 'jhon', 'B', '2018-03-06', 'jhon', '2018-03-06');

-- --------------------------------------------------------

--
-- Table structure for table `radio_button_options`
--

CREATE TABLE `radio_button_options` (
  `id` int(100) NOT NULL,
  `option_name` varchar(255) NOT NULL,
  `radio_id` int(100) NOT NULL,
  `sort_key` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radio_button_options`
--

INSERT INTO `radio_button_options` (`id`, `option_name`, `radio_id`, `sort_key`) VALUES
(1, 'Yes', 1, 'a'),
(2, 'No', 1, 'b'),
(3, 'Yes', 2, 'a'),
(4, 'No', 2, 'b'),
(5, 'Yes', 3, 'a'),
(6, 'No', 3, 'b'),
(7, 'Yes', 4, 'a'),
(8, 'No', 4, 'b'),
(9, 'Yes', 5, 'a'),
(10, 'No', 5, 'b'),
(11, 'Yes', 6, 'a'),
(12, 'No', 6, 'b'),
(13, 'Yes', 7, 'a'),
(14, 'No', 7, 'b'),
(15, 'Yes', 8, 'a'),
(16, 'No', 8, 'b'),
(17, 'Yes', 9, 'a'),
(18, 'No', 9, 'b'),
(19, 'Yes', 10, 'a'),
(20, 'No', 10, 'b'),
(21, 'Did Not Disclose', 10, 'c'),
(22, 'Yes', 11, 'a'),
(23, 'No', 11, 'b'),
(24, 'Yes, UI Claimant', 13, 'a'),
(25, 'Yes,UI Exhausted', 13, 'b'),
(26, 'No', 13, 'c'),
(27, 'Yes,<=180 Days', 12, 'a'),
(28, 'Yes,Eligible Veteran', 12, 'b'),
(29, 'No', 12, 'c'),
(30, 'Yes', 14, 'a'),
(31, 'No', 14, 'b'),
(32, 'Yes', 15, 'a'),
(33, 'No', 15, 'b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application_form`
--
ALTER TABLE `application_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_status`
--
ALTER TABLE `education_status`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `funding_source`
--
ALTER TABLE `funding_source`
  ADD PRIMARY KEY (`Funding_ID`);

--
-- Indexes for table `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`Race_ID`);

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
-- AUTO_INCREMENT for table `application_form`
--
ALTER TABLE `application_form`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `education_status`
--
ALTER TABLE `education_status`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `funding_source`
--
ALTER TABLE `funding_source`
  MODIFY `Funding_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `race`
--
ALTER TABLE `race`
  MODIFY `Race_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

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
