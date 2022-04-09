-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2022 at 06:33 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartcity`
--

-- -------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2021-05-13 05:18:49');

-- --------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblapplycollege`
--

CREATE TABLE `tblapplycollege` (
  `id` int(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `DOB` varchar(50) NOT NULL,
  `DOB_reg` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Mobile` varchar(100) NOT NULL,
  `F_name` varchar(100) NOT NULL,
  `F_nid` varchar(100) NOT NULL,
  `M_name` varchar(100) NOT NULL,
  `M_nid` varchar(100) NOT NULL,
  `ssc_examyear` varchar(100) NOT NULL,
  `Dept` varchar(100) NOT NULL,
  `ssc_roll` varchar(50) NOT NULL,
  `ssc_reg` varchar(50) NOT NULL,
  `GPA` varchar(50) NOT NULL,
  `Board` varchar(50) NOT NULL,
  `College` varchar(100) NOT NULL,
  `Class` varchar(10) NOT NULL,
  `post_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblapplycollege`
--

INSERT INTO `tblapplycollege` (`id`, `Name`, `DOB`, `DOB_reg`, `Gender`, `Mobile`, `F_name`, `F_nid`, `M_name`, `M_nid`, `ssc_examyear`, `Dept`, `ssc_roll`, `ssc_reg`, `GPA`, `Board`, `College`, `Class`, `post_date`) VALUES
(8, 'fazlul hoque', '1999-03-10', '12345678901234567', 'Male', '01927862670', 'Abdur Razzak Molla', '132434656643285', 'shundori khatun', '12549864308754', '2015-02-11', 'Science', '153377723225', '1112835286', '4.48', 'Rajshahi', 'MC college', '1st year', '2022-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `tblapplyschool`
--

CREATE TABLE `tblapplyschool` (
  `id` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `DOB_Reg` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Mobile` varchar(100) NOT NULL,
  `F_name` varchar(100) NOT NULL,
  `F_nid` varchar(100) NOT NULL,
  `M_name` varchar(100) NOT NULL,
  `M_nid` varchar(100) NOT NULL,
  `School_name` varchar(100) NOT NULL,
  `Class_name` varchar(100) NOT NULL,
  `post_date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(2) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblapplyschool`
--

INSERT INTO `tblapplyschool` (`id`, `Name`, `DOB`, `DOB_Reg`, `Gender`, `Mobile`, `F_name`, `F_nid`, `M_name`, `M_nid`, `School_name`, `Class_name`, `post_date`, `status`) VALUES
(7, 'fazlul hoque', '1999-03-10', '12345678901237894', 'Male', '01927862670', 'Abdur Razzak Molla', '1234567890567', 'shundori khatun', '6789023456789', 'shumbodiya ml high school', 'Class-6', '2022-04-08', '2'),
(8, 'fazlul hoque', '1999-03-10', '12345678901237894', 'Male', '01927862670', 'Abdur Razzak Molla', '132434656643285', 'shundori khatun', '12549864308754', 'pailot high school', 'Class-7', '2022-04-08', '2');

-- ------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblschoolbooking`
--

CREATE TABLE `tblschoolbooking` (
  `id` int(11) NOT NULL,
  `Fathers` varchar(100) NOT NULL,
  `Class` varchar(100) NOT NULL,
  `DOB` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblschoolbooking`
--

INSERT INTO `tblschoolbooking` (`id`, `Fathers`, `Class`, `DOB`) VALUES
(1, 'Abdul Karim', 'Ten', '22-10-2005');

-- -----------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblschoolinfo`
--

CREATE TABLE `tblschoolinfo` (
  `id` int(11) NOT NULL,
  `S_name` varchar(100) NOT NULL,
  `S_info` text NOT NULL,
  `school_img` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblschoolinfo`
--

INSERT INTO `tblschoolinfo` (`id`, `S_name`, `S_info`, `school_img`) VALUES
(4, 'sylhet govet Pilot high  school ', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab, iste corporis nemo vitae aperiam aliquam accusamus perferendis, animi beatae architecto veritatis voluptate omnis velit dicta. Cupiditate pariatur sequi voluptate tenetur minus dolorem harum nobis ipsa numquam praesentium, minima ratione commodi qui aspernatur molestias. Omnis earum nemo libero, voluptatem eos minima culpa illum quos vitae aspernatur vero dignissimos molestias natus ad dolor enim nesciunt voluptates iure a unde consectetur velit. Commodi similique in labore fugiat ipsa ullam distinctio, reprehenderit quas delectus dolor doloribus eaque rem sapiente suscipit nam! Nisi rem esse illo commodi explicabo? Nobis voluptas reiciendis molestias adipisci! Ducimus, aliquid?', 's5.JPG'),
(6, 'Sylhet govt  agragami high school & college ', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab, iste corporis nemo vitae aperiam aliquam accusamus perferendis, animi beatae architecto veritatis voluptate omnis velit dicta. Cupiditate pariatur sequi voluptate tenetur minus dolorem harum nobis ipsa numquam praesentium, minima ratione commodi qui aspernatur molestias. Omnis earum nemo libero, voluptatem eos minima culpa illum quos vitae aspernatur vero dignissimos molestias natus ad dolor enim nesciunt voluptates iure a unde consectetur velit. Commodi similique in labore fugiat ipsa ullam distinctio, reprehenderit quas delectus dolor doloribus eaque rem sapiente suscipit nam! Nisi rem esse illo commodi explicabo? Nobis voluptas reiciendis molestias adipisci! Ducimus, aliquid?', 's3.JPG');

-- -------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblbbstoke`
--

CREATE TABLE `tblbbstoke` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `MobileNumber` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Age` varchar(10) NOT NULL,
  `Bgroup` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbbstoke`
--

INSERT INTO `tblbbstoke` (`id`, `Name`, `Email`, `MobileNumber`, `City`, `Age`, `Bgroup`) VALUES
(10, 'tarak', 'tarek@gmail.com', '019000000', 'Sylhlet', '26', 'A+'),
(13, 'sami', 'sami@gmail.com', '01700000000', 'Sylhlet', '22', 'A+'),
(14, 'rafi', 'rafi@gmail.com', '01800000000', ' vatsliya Sylhlet', '23', 'B+'),
(15, 'arif', 'arif@gmail.com', '017000000000', 'Sylhlet', '23', 'A-'),
(16, 'wasim', 'wasim@gmail.com', '0190000000', 'Sylhlet', '24', 'AB-'),
(17, 'dipu', 'dipu@gmail.com', '019000000', 'Sylhlet', '23', 'B-'),
(18, 'ajad', 'ajad@gmail.com', '0180000000', 'Sylhlet', '23', 'O+'),
(19, 'ramjan', 'ramjan@gmail.com', '01700000000', 'Sylhlet', '24', 'O-'),
(20, 'shipon', 'shipon@gmail.com', '0190000000', 'Sylhlet', '23', 'AB+');

-- -----------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblbdonor`
--

CREATE TABLE `tblbdonor` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `MobileNumber` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Age` varchar(100) NOT NULL,
  `Bgroup` varchar(100) NOT NULL,
  `Donor` varchar(50) NOT NULL,
  `Corona` varchar(11) NOT NULL,
  `Diabetes` varchar(11) NOT NULL,
  `Cancer` varchar(11) NOT NULL,
  `status` varchar(2) DEFAULT '2',
  `post_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbdonor`
--

INSERT INTO `tblbdonor` (`id`, `Name`, `Email`, `MobileNumber`, `City`, `Location`, `Age`, `Bgroup`, `Donor`, `Corona`, `Diabetes`, `Cancer`, `status`, `post_date`) VALUES
(48, 'Fazlul', 'fazlulhoque577@gmail.com', '01927862670', 'Sylhlet', 'vataliya', '23', 'AB+', 'Yes', 'No', 'No', 'No', '1', '2022-03-01'),
(51, 'tarak', 'tarek@gmail.com', '01700000000', 'Sylhlet', 'botershor', '26', 'A+', 'No', 'No', 'No', 'No', '1', '2022-03-01'),
(52, 'Sami Ahmed', 'sami@gmail.com', '01700000000', 'Sylhlet', 'Subid bazar', '23', 'A+', 'No', 'No', 'No', 'No', '0', '2022-03-01'),
(53, 'Shipon ahmed', 'shipon@gmail.com', '01900000000', 'Sylhlet', 'Subid bazar', '25', 'AB+', 'Yes', 'No', 'No', 'No', '1', '2022-03-01'),
(54, 'wasim', 'wasim@gmail.com', '01700000000', 'Sylhlet', 'vataliya', '24', 'O+', 'No', 'No', 'No', 'No', '1', '2022-03-01'),
(55, 'Azad', 'azad@gmail.com', '01800000000', 'Sylhlet', 'Noyapara', '23', 'O+', 'Yes', 'No', 'No', 'No', '1', '2022-03-01'),
(56, 'Ramjan', 'ramjan@gmail.com', '01900000000', 'Sylhlet', 'boroicandi', '23', 'O+', 'Yes', 'No', 'No', 'No', '1', '2022-03-01'),
(57, 'Fazlul hoque', 'abc@gmail.com', '01927862670', 'Sylhet', 'Taltola point Sylhet jjj', '22', 'B+', 'Yes', 'Yes', 'Yes', 'Yes', '2', '2022-03-31');

-- ----------------------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblcollegeinfo`
--

CREATE TABLE `tblcollegeinfo` (
  `id` int(11) NOT NULL,
  `C_name` varchar(100) NOT NULL,
  `C_info` text NOT NULL,
  `C_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcollegeinfo`
--

INSERT INTO `tblcollegeinfo` (`id`, `C_name`, `C_info`, `C_img`) VALUES
(4, 'MC  college Sylhet', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab, iste corporis nemo vitae aperiam aliquam accusamus perferendis, animi beatae architecto veritatis voluptate omnis velit dicta. Cupiditate pariatur sequi voluptate tenetur minus dolorem harum nobis ipsa numquam praesentium, minima ratione commodi qui aspernatur molestias. Omnis earum nemo libero, voluptatem eos minima culpa illum quos vitae aspernatur vero dignissimos molestias natus ad dolor enim nesciunt voluptates iure a unde consectetur velit. Commodi similique in labore fugiat ipsa ullam distinctio, reprehenderit quas delectus dolor doloribus eaque rem sapiente suscipit nam! Nisi rem esse illo commodi explicabo? Nobis voluptas reiciendis molestias adipisci! Ducimus, aliquid? ffddfd', 'mc.JPG'),
(5, 'Madan Mohan college sylhet', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab, iste corporis nemo vitae aperiam aliquam accusamus perferendis, animi beatae architecto veritatis voluptate omnis velit dicta. Cupiditate pariatur sequi voluptate tenetur minus dolorem harum nobis ipsa numquam praesentium, minima ratione commodi qui aspernatur molestias. Omnis earum nemo libero, voluptatem eos minima culpa illum quos vitae aspernatur vero dignissimos molestias natus ad dolor enim nesciunt voluptates iure a unde consectetur velit. Commodi similique in labore fugiat ipsa ullam distinctio, reprehenderit quas delectus dolor doloribus eaque rem sapiente suscipit nam! Nisi rem esse illo commodi explicabo? Nobis voluptas reiciendis molestias adipisci! Ducimus, aliquid?', 'c4.JPG'),
(6, 'Sylhet govt agragami high school & college', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab, iste corporis nemo vitae aperiam aliquam accusamus perferendis, animi beatae architecto veritatis voluptate omnis velit dicta. Cupiditate pariatur sequi voluptate tenetur minus dolorem harum nobis ipsa numquam praesentium, minima ratione commodi qui aspernatur molestias. Omnis earum nemo libero, voluptatem eos minima culpa illum quos vitae aspernatur vero dignissimos molestias natus ad dolor enim nesciunt voluptates iure a unde consectetur velit. Commodi similique in labore fugiat ipsa ullam distinctio, reprehenderit quas delectus dolor doloribus eaque rem sapiente suscipit nam! Nisi rem esse illo commodi explicabo? Nobis voluptas reiciendis molestias adipisci! Ducimus, aliquid?', 'c1.JPG');

-- --------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `HotelId` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `FromDate` varchar(100) NOT NULL,
  `ToDate` varchar(100) NOT NULL,
  `Comment` mediumtext NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `HotelId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(2, 1, 'tareq@gmail.com', '05/18/2021', '05/31/2021', 'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-13 19:01:10', 2, 'u', '2017-05-13 21:30:23'),
(3, 2, 'fazlul@gmail.com', '05/16/2021', '05/31/2021', 'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-13 20:20:01', 2, 'a', '2017-05-13 23:04:40'),
(4, 1, 'talha@gmail.com', '05/16/2021', '05/31/2021', 'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-13 20:32:54', 2, 'a', '2017-05-13 21:36:39'),
(5, 1, 'tareq@gmail.com', '05/16/2021', '05/31/2021', 'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-13 20:33:17', 1, NULL, '2021-05-13 23:11:35'),
(6, 2, 'fazlul@gmail.com', '05/14/2021', '05/24/2021', 'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-13 21:18:37', 2, 'a', '2021-05-14 07:58:28'),
(7, 3, 'talha@gmail.com', '05/26/2021', '05/30/2021', 'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-14 05:09:11', 2, 'a', '2021-05-14 07:47:39'),
(8, 2, 'tareq@gmail.com', '05/27/2021', '05/28/2021', 'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-14 05:10:24', 1, NULL, '2017-05-14 05:13:03'),
(9, 1, 'fazlul@gmail.com', '05/19/2021', '05/21/2021', 'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2017-05-14 07:45:11', 1, NULL, '2021-05-14 07:47:45'),
(10, 8, 'talha@gmail.com', '05/22/2021', '05/24/2021', 'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-14 07:56:26', 1, NULL, '2021-05-14 07:58:19');



-- ----------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblbpasent`
--

CREATE TABLE `tblbpasent` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `MobileNumber` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Age` varchar(50) NOT NULL,
  `Bgroup` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `status` int(2) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbpasent`
--

INSERT INTO `tblbpasent` (`id`, `Name`, `Email`, `MobileNumber`, `City`, `Age`, `Bgroup`, `Description`, `status`) VALUES
(3, 'Fazlul', 'fazlulhoque577@gmail.com', '01927862670', 'Sylhlet', '23', 'AB+', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.', 1),
(8, 'ab', 'ab@gmail.com', '123456', 'syl', '33', 'AB+', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 0);


-- -----------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblcityservices`
--

CREATE TABLE `tblcityservices` (
  `ServiceId` int(11) NOT NULL,
  `ServiceName` varchar(200) NOT NULL,
  `ServiceType` varchar(150) NOT NULL,
  `ServiceLocation` varchar(100) NOT NULL,
  `ServiceDetails` mediumtext NOT NULL,
  `ServiceImage` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcityservices`
--

INSERT INTO `tblcityservices` (`ServiceId`, `ServiceName`, `ServiceType`, `ServiceLocation`, `ServiceDetails`, `ServiceImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'City News ', 'General', 'All Sylhet', 'Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet.', 'service01.png', '2021-05-13 08:23:44', '2021-05-13 11:51:01'),
(2, 'Tourist Place Information ', 'General', 'All Sylhet', 'Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet.', 'service02.jpg', '2021-05-13 09:24:26', '2021-05-13 11:51:57'),
(3, 'Hotel For Tourist ', 'General', 'All Sylhet', 'Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet.', 'service03.jpg', '2021-05-13 09:24:26', '2021-05-13 11:51:57'),
(4, 'City Shop & Grocery ', 'General', 'All Sylhet', 'Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet.', 'service04.jpg', '2021-05-13 09:24:26', '2021-05-13 11:51:57'),
(5, 'Blood Bank', 'General', 'All Sylhet', 'Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet.', 'service05.jpg', '2021-05-13 09:24:26', '2021-05-13 11:51:57'),
(6, 'House Rent', 'General', 'All Sylhet', 'Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet.', 'service06.jpg', '2021-05-13 09:24:26', '2021-05-13 11:51:57'),
(7, 'City Bus Service', 'General', 'All Sylhet', 'Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet.', 'service07.png', '2021-05-13 09:24:26', '2021-05-13 11:51:57'),
(8, 'Educational Institute', 'General', 'All Sylhet', 'Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet.', 'service08.jpg', '2021-05-13 09:24:26', '2021-05-13 11:51:57'),
(9, 'Electricity Bill Providing', 'General', 'All Sylhet', 'Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet.', 'service09.png', '2021-05-13 09:24:26', '2021-05-13 11:51:57'),
(10, 'Fire Service', 'General', 'All Sylhet', 'Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet.', 'service10.png', '2021-05-13 09:24:26', '2021-05-13 11:51:57'),
(11, 'Police Station Information', 'General', 'All Sylhet', 'Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet.', 'service11.jpg', '2021-05-13 09:24:26', '2021-05-13 11:51:57'),
(12, 'Emergency Helpline', 'General', 'All Sylhet', 'Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet. Smart City Smart Sylhet.', 'service12.jpg', '2021-05-13 09:24:26', '2021-05-13 11:51:57');

-- --------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'tareq', 'tareq@gmail.com', '2354235235', 'The standard Lorem Ipsum passage, used since the 1500s', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2021-05-13 16:23:53', 1),
(2, 'fazlul', 'fazlul@gmail.com', '3454353453', 'The standard Lorem Ipsum passage', 'nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup', '2021-05-13 16:27:00', 1),
(3, 'talha', 'talha@gmail.com', '8888888888', 'The standard Lorem Ipsum passage', 'nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup', '2021-05-13 16:28:11', 1),
(4, 'Test', 'test@gm.com', '4747474747', 'Test', 'iidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiid', '2021-05-14 01:54:07', NULL);

-- -----------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblfiresearvice`
--

CREATE TABLE `tblfiresearvice` (
  `id` int(11) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `MobileNumber` varchar(11) NOT NULL,
  `Description` text NOT NULL,
  `Fire_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblfiresearvice`
--

INSERT INTO `tblfiresearvice` (`id`, `Location`, `MobileNumber`, `Description`, `Fire_img`) VALUES
(1, 'Taltola point Sylhet', '019-xxxxxxx', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus officia aliquid porro, quia inventore, ab modi explicabo rerum sit quam minima quae hic in nam suscipit perferendis totam aliquam delectus.', 'service10.png'),
(4, 'Shah poran sylhet', '01700-XXXXX', ' Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus officia aliquid porro, quia inventore, ab modi explicabo rerum sit quam minima quae hic in nam suscipit perferendis totam aliquam delectus.', 'service10.png');

-- ------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblhotel`
--

CREATE TABLE `tblhotel` (
  `HotelId` int(11) NOT NULL,
  `HotelName` varchar(200) NOT NULL,
  `HotelType` varchar(150) NOT NULL,
  `HotelLocation` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  `HotelDetails` mediumtext NOT NULL,
  `HotelImage` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhotel`
--

INSERT INTO `tblhotel` (`HotelId`, `HotelName`, `HotelType`, `HotelLocation`, `Price`, `HotelDetails`, `HotelImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Hill View Hotel ', 'Five Star', 'Shahporan, Sylhet', 1500, 'Very Comfortable. Air condition, Bedroom, Balcony, TV, Washroom, Gym, Swimming Pool, Mini Playground Etc. Very Comfortable. Air condition, Bedroom, Balcony, TV, Washroom, Gym, Swimming Pool, Mini Playground Etc.', 'hotel01.png', '2021-05-13 08:23:44', '2021-05-13 11:51:01'),
(2, 'Hotel Supreme', 'Three Star', 'Mirabazar, Sylhet', 1200, '', 'hotel02.jpg', '2021-05-13 09:24:26', '2022-02-01 05:09:55'),
(3, 'Hotel Grand Sultan ', 'Five Star', 'Moulovibazar, Sylhet', 2500, 'Very Comfortable. Air condition, Bedroom, Balcony, TV, Washroom, Gym, Swimming Pool, Mini Playground Etc. Very Comfortable. Air condition, Bedroom, Balcony, TV, Washroom, Gym, Swimming Pool, Mini Playground Etc.', 'hotel03.jpeg', '2021-05-13 09:24:26', '2021-05-13 11:51:57'),
(8, 'Lavista', 'VIP', 'Lamabazer, Sylhet', 1800, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Recusandae est laudantium id assumenda deserunt veritatis qui, nobis sit quas maxime omnis vitae! Omnis, neque?Minus ratione sit quia recusandae dolorem eveniet voluptates! Praesentium autem veniam dignissimos. nobis sit quas maxime omnis vitae! Omnis,Atque illum dolorum ex assumenda!', 'lavista.jpg', '2021-12-08 15:19:12', '0000-00-00 00:00:00');

-- -------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblhouse`
--

CREATE TABLE `tblhouse` (
  `HouseId` int(11) NOT NULL,
  `HouseName` varchar(200) NOT NULL,
  `HouseType` varchar(150) NOT NULL,
  `HouseLocation` varchar(100) NOT NULL,
  `Bedroom` float NOT NULL,
  `Kitchen` float NOT NULL,
  `Bathroom` float NOT NULL,
  `Price` float NOT NULL,
  `HouseDetails` mediumtext NOT NULL,
  `HouseImage` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhouse`
--

INSERT INTO `tblhouse` (`HouseId`, `HouseName`, `HouseType`, `HouseLocation`, `Bedroom`, `Kitchen`, `Bathroom`, `Price`, `HouseDetails`, `HouseImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Rose Villa ', 'Duplex', 'Shahporan, Sylhet', 2, 1, 2, 5000, 'Very Comfortable. Air condition, Bedroom, Balcony, TV, Washroom, Gym, Swimming Pool, Mini Playground Etc. Very Comfortable. Air condition, Bedroom, Balcony, TV, Washroom, Gym, Swimming Pool, Mini Playground Etc.', 'house01.jpg', '2021-05-13 08:23:44', '2021-05-13 11:51:01'),
(2, 'Dream Villa ', 'Five Star', 'Uposhahar, Sylhet', 3, 1, 2, 6000, 'Very Comfortable. Air condition, Bedroom, Balcony, TV, Washroom, Gym, Swimming Pool, Mini Playground Etc. Very Comfortable. Air condition, Bedroom, Balcony, TV, Washroom, Gym, Swimming Pool, Mini Playground Etc.', 'house02.jpg', '2021-05-13 09:24:26', '2021-05-13 11:51:57'),
(3, 'Heaven Side ', 'Five Star', 'Moulovibazar, Sylhet', 4, 1, 3, 7000, 'Very Comfortable. Air condition, Bedroom, Balcony, TV, Washroom, Gym, Swimming Pool, Mini Playground Etc. Very Comfortable. Air condition, Bedroom, Balcony, TV, Washroom, Gym, Swimming Pool, Mini Playground Etc.', 'house03.jpg', '2021-05-13 09:24:26', '2021-05-13 11:51:57'),
(8, 'Ghost House ', 'VIP', 'Lamabazer, Sylhet', 5, 1, 3, 8000, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Recusandae est laudantium id assumenda deserunt veritatis qui, nobis sit quas maxime omnis vitae! Omnis, neque?Minus ratione sit quia recusandae dolorem eveniet voluptates! Praesentium autem veniam dignissimos. nobis sit quas maxime omnis vitae! Omnis,Atque illum dolorum ex assumenda!', 'house04.jpg', '2021-12-08 15:19:12', '0000-00-00 00:00:00');

-- -----------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblhousebooking`
--

CREATE TABLE `tblhousebooking` (
  `HouseBookingId` int(11) NOT NULL,
  `HouseId` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Bedroom` float NOT NULL,
  `Kitchen` float NOT NULL,
  `Bathroom` float NOT NULL,
  `Price` float NOT NULL,
  `FromDate` varchar(100) NOT NULL,
  `ToDate` varchar(100) NOT NULL,
  `Comment` mediumtext NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhousebooking`
--

INSERT INTO `tblhousebooking` (`HouseBookingId`, `HouseId`, `UserEmail`, `Bedroom`, `Kitchen`, `Bathroom`, `Price`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(2, 1, 'tareq@gmail.com', 2, 1, 2, 500, '05/18/2021', '05/31/2021', 'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-13 19:01:10', 2, 'u', '2021-05-13 21:30:23'),
(3, 2, 'fazlul@gmail.com', 3, 2, 3, 800, '05/18/2021', '05/31/2021', 'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-13 20:20:01', 2, 'a', '2021-05-13 23:04:40'),
(4, 1, 'talha@gmail.com', 3, 2, 3, 800, '05/18/2021', '05/31/2021', 'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-13 20:32:54', 2, 'a', '2021-05-13 21:36:39'),
(5, 1, 'tareq@gmail.com', 3, 2, 3, 800, '05/18/2021', '05/31/2021', 'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-13 20:33:17', 1, NULL, '2021-05-13 23:11:35'),
(6, 2, 'fazlul@gmail.com', 3, 2, 3, 800, '05/18/2021', '05/31/2021', 'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-13 21:18:37', 2, 'a', '2021-05-14 07:58:28'),
(7, 3, 'talha@gmail.com', 3, 2, 3, 800, '05/18/2021', '05/31/2021', 'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-14 05:09:11', 2, 'a', '2021-05-14 07:47:39'),
(8, 2, 'tareq@gmail.com', 3, 2, 3, 800, '05/18/2021', '05/31/2021', 'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-14 05:10:24', 1, NULL, '2021-05-14 05:13:03'),
(9, 1, 'fazlul@gmail.com', 3, 2, 3, 800, '05/18/2021', '05/31/2021', 'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-14 07:45:11', 1, NULL, '2021-05-14 07:47:45'),
(10, 8, 'talha@gmail.com', 3, 2, 3, 800, '05/18/2021', '05/31/2021', 'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-14 07:56:26', 1, NULL, '2021-05-14 07:58:19');

-- ---------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblnews`
--

CREATE TABLE `tblnews` (
  `id` int(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `newsimg` varchar(100) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblnews`
--

INSERT INTO `tblnews` (`id`, `title`, `description`, `newsimg`, `post_date`) VALUES
(3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. ', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique, voluptas molestias sapiente minus nesciunt ipsa assumenda earum! Sequi nobis nesciunt beatae sed incidunt expedita praesentium, eos, eveniet vel tenetur repudiandae!', 'eid.PNG', '2022-01-29 09:47:04'),
(4, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Rerum, libero cumque tempora voluptatem repellendus ipsa ratione aspernatur dolorem? Corrupti impedit molestias ullam nostrum aut tempore error ratione. Error, impedit porro!', 'robot.PNG', '2021-12-11 16:40:16'),
(15, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. ', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Rerum, libero cumque tempora voluptatem repellendus ipsa ratione aspernatur dolorem? Corrupti impedit molestias ullam nostrum aut tempore error ratione. Error, impedit porro!', 's.PNG', '2022-01-29 16:05:13'),
(16, 'নর্থ ইস্ট পরিবার শোকাহত ।', 'ইন্না লিল্লাহি ওয়া ইন্না ইলাইহি রাজিউন। বর্ষিয়ান রাজনীতিবিদ, গোলাপগঞ্জ উপজেলা চেয়ারম্যান ও নর্থ ইস্ট ইউনিভার্সিটি বাংলাদেশ এর ট্রাস্টি বোর্ডের চেয়ারম্যান এডভোকেট ইকবাল আহমদ চৌধুরী 30 তারিখ রাত ১২ঃ২০ মিনিটে ইন্তেকাল করেছেন। এক নক্ষত্রের  বিদায়। আল্লাহ তাকে জান্নাতবাসী করুন,  আমিন।', 'akbal.JPG', '2022-01-30 17:18:45'),
(17, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Rerum, libero cumque tempora voluptatem repellendus ipsa ratione aspernatur dolorem? Corrupti impedit molestias ullam nostrum aut tempore error ratione. Error, impedit porro!', 'robot.PNG', '2022-01-30 16:02:08');

-- --------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Smart Sylhet. Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet. <A href=\"http://google.com/info/terms/\">http://google.com/info/terms/</A>. Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Smart Sylhet.  Welcome to Smart Sylhet.: </FONT><A href=\"http://google.com/info/terms/\"><FONT size=2>http://google.com/info/terms/</FONT></A><FONT size=2>. In addition, Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.: </FONT><A href=\"http://google.com/info/terms/\"><FONT size=2>http://google.com/info/terms/</FONT></A><FONT size=2>. Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet. </FONT></P>'),
(2, 'Privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"> Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet. Welcome to Smart Sylhet.</span>'),
(3, 'about us', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.Welcome to Smart Sylhet.</span>');

-- -----------------------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblpolicestation`
--

CREATE TABLE `tblpolicestation` (
  `id` int(10) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `MobileNumber` varchar(17) NOT NULL,
  `Description` text NOT NULL,
  `P_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpolicestation`
--

INSERT INTO `tblpolicestation` (`id`, `Location`, `MobileNumber`, `Description`, `P_img`) VALUES
(2, 'Osmaninagar , Sylhet', '123456789', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus officia aliquid porro, quia inventore, ab modi explicabo rerum sit quam minima quae hic in nam suscipit perferendis totam aliquam delectus.', '3.jpg');

-- ---------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tbltour`
--

CREATE TABLE `tbltour` (
  `TourId` int(11) NOT NULL,
  `TourName` varchar(200) NOT NULL,
  `TourType` varchar(150) NOT NULL,
  `TourLocation` varchar(100) NOT NULL,
  `TourDetails` mediumtext NOT NULL,
  `TourImage` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltour`
--

INSERT INTO `tbltour` (`TourId`, `TourName`, `TourType`, `TourLocation`, `TourDetails`, `TourImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'JAFLONG ', '', 'Jaflong, Sylhet', 'Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful.', 'jaflong.jpg', '2021-05-13 08:23:44', '2021-05-13 11:51:01'),
(2, 'MADHOBKUNDO ', '', 'Moulovibazar, Sylhet', 'Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful.', 'tour02.jpg', '2021-05-13 09:24:26', '2021-05-13 11:51:57'),
(3, 'RATARGUL ', '', 'Moulovibazar, Sylhet', 'Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful. Very Beautiful.', 'tour03.jpg', '2021-05-13 09:24:26', '2021-05-13 11:51:57');

-- -------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblbusroutelist`
--

CREATE TABLE IF NOT EXISTS `tblbusroutelist` (
  `id` int(11) NOT NULL,
  `RouteNumber` varchar(100) DEFAULT NULL,
  `BusNumber` char(11) DEFAULT NULL,
  `BusTime` varchar(100) DEFAULT NULL,
  `BusFrom` varchar(20) DEFAULT NULL,
  `BusTo` varchar(20) DEFAULT NULL,
  `TicketPrice` int(11) NOT NULL,
  `Details` varchar(255) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbusroutelist`
--

INSERT INTO `tblbusroutelist` (`id`, `RouteNumber`, `BusNumber`, `BusTime`, `BusFrom`,`BusTo`, `Details`,`TicketPrice`,`PostingDate`,`Creationdate`,`UpdationDate`,`status`) VALUES
(1, 'AB-101', 'BUS-115', '11:30 AM', 'TILAGAR', 'COURT POINT', 'This is first bus of morning shift of this route','10', '2017-06-30 20:14:16','2021-05-13 08:23:44', '2021-05-13 11:51:01', 1),
(2, 'XY-501', 'BUS-215', '12:30 PM', 'COURT POINT', 'ZINDABAZAR', 'This is first bus of morning shift of this route','20', '2017-06-30 20:14:16','2021-05-13 08:23:44', '2021-05-13 11:51:01', 1),
(3, 'MN-201', 'BUS-315', '1:30 PM', 'ZINDABAZAR', 'SHUBID BAZAR', 'This is first bus of morning shift of this route','30', '2017-06-30 20:14:16','2021-05-13 08:23:44', '2021-05-13 11:51:01', 1),
(4, 'RE-401', 'BUS-415', '2:30 PM', 'SHUBID BAZAR', 'AMBERKHANA', 'This is first bus of morning shift of this route','40', '2017-06-30 20:14:16','2021-05-13 08:23:44', '2021-05-13 11:51:01', 1),
(5, 'KL-501', 'BUS-615', '3:30 PM', 'AMBERKHANA', 'TILAGAR', 'This is first bus of morning shift of this route','50', '2017-06-30 20:14:16','2021-05-13 08:23:44', '2021-05-13 11:51:01', 1),
(6, 'RW-501', 'BUS-715', '4:30 PM', 'TILAGAR', 'ZINDABAZAR', 'This is first bus of morning shift of this route','60', '2017-06-30 20:14:16','2021-05-13 08:23:44', '2021-05-13 11:51:01', 1);

-- ----------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblbusbooking`
--

CREATE TABLE `tblbusbooking` (
  `BusBookingId` int(11) NOT NULL,
  `BusId` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `FromDate` varchar(100) NOT NULL,
  `Comment` mediumtext NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbusbooking`
--

INSERT INTO `tblbusbooking` (`BusBookingId`, `BusId`, `UserEmail`, `FromDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(2, 1, 'tareq@gmail.com', '05/18/2021',  'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-13 19:01:10', 2, 'u', '2021-05-13 21:30:23'),
(3, 2, 'fazlul@gmail.com', '05/18/2021', 'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-13 20:20:01', 2, 'a', '2021-05-13 23:04:40'),
(4, 1, 'talha@gmail.com',  '05/18/2021',  'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-13 20:32:54', 2, 'a', '2021-05-13 21:36:39'),
(5, 1, 'tareq@gmail.com', '05/18/2021',  'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-13 20:33:17', 1, NULL, '2021-05-13 23:11:35'),
(6, 2, 'fazlul@gmail.com', '05/18/2021',  'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-13 21:18:37', 2, 'a', '2021-05-14 07:58:28'),
(7, 3, 'talha@gmail.com',  '05/18/2021',  'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-14 05:09:11', 2, 'a', '2021-05-14 07:47:39'),
(8, 2, 'tareq@gmail.com', '05/18/2021',  'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-14 05:10:24', 1, NULL, '2021-05-14 05:13:03'),
(9, 1, 'fazlul@gmail.com',  '05/18/2021',  'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-14 07:45:11', 1, NULL, '2021-05-14 07:47:45'),
(10, 8, 'talha@gmail.com', '05/18/2021',  'Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2021-05-14 07:56:26', 1, NULL, '2021-05-14 07:58:19');

-- ---------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblbusroute`
--

CREATE TABLE IF NOT EXISTS `tblbusroute` (
  `id` int(11) NOT NULL,
  `BusFrom` varchar(20) DEFAULT NULL,
  `BusTo` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbusroute`
--

INSERT INTO `tblbusroute` (`id`, `BusFrom`,`BusTo`, `PostingDate`) VALUES
(1, 'COURT POINT', 'COURT POINT','2017-06-30 20:33:50'),
(2, 'AMBERKHANA', 'AMBERKHANA','2017-06-30 20:34:00'),
(3, 'SHUBID BAZAR', 'SHUBID BAZAR','2017-06-30 20:34:05'),
(4, 'ZINDABAZAR', 'ZINDABAZAR', '2017-06-30 20:34:10'),
(5, 'TILAGAR', 'TILAGAR','2017-06-30 20:34:13'),
(6, 'SHIBGANJ', 'SHIBGANJ', '2017-06-30 20:34:18');

-- ---------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------
--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `EmailId` varchar(70) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Tarequl Islam', '1111111111', 'tareq@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-05-10 04:38:17', '2021-05-13 13:36:08'),
(3, 'Fazlul Haque', '9999999999', 'fazlul@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-05-10 04:50:48', '2021-05-14 01:40:19'),
(7, 'Abu Talha', '7676767676', 'talha@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-05-10 04:54:56', '0000-00-00 00:00:00'),
(8, 'demo1', '9999999999', 'demo1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-05-14 01:17:44', '0000-00-00 00:00:00'),
(9, 'demo2', '3333333333', 'demo2@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-05-14 01:25:13', '2021-05-14 01:25:42'),
(10, 'demo3', '4543534534', 'demo3@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-05-14 01:43:23', '2021-05-14 01:46:57'),
(11, 'demo4', '8888888888', 'demo4@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-05-14 01:54:32', '2021-05-14 01:55:17'),
(12, 'Fazlul', '1927862670', 'fazlulhoque577@gmail.com', '202cb962ac59075b964b07152d234b70', '2021-12-06 08:39:11', '0000-00-00 00:00:00');







-- ---------------------------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------------------
--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblapplycollege`
--
ALTER TABLE `tblapplycollege`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblapplyschool`
--
ALTER TABLE `tblapplyschool`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `tblbbstoke`
--
ALTER TABLE `tblbbstoke`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbdonor`
--
ALTER TABLE `tblbdonor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblbpasent`
--
ALTER TABLE `tblbpasent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcityservices`
--
ALTER TABLE `tblcityservices`
  ADD PRIMARY KEY (`ServiceId`);

--
-- Indexes for table `tblcollegeinfo`
--
ALTER TABLE `tblcollegeinfo`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `tblschoolbooking`
--
ALTER TABLE `tblschoolbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblschoolinfo`
--
ALTER TABLE `tblschoolinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfiresearvice`
--
ALTER TABLE `tblfiresearvice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhotel`
--
ALTER TABLE `tblhotel`
  ADD PRIMARY KEY (`HotelId`);

--
-- Indexes for table `tblhouse`
--
ALTER TABLE `tblhouse`
  ADD PRIMARY KEY (`HouseId`);

--
-- Indexes for table `tblhousebooking`
--
ALTER TABLE `tblhousebooking`
  ADD PRIMARY KEY (`HouseBookingId`);

--
-- Indexes for table `tblbusbooking`
--
ALTER TABLE `tblbusbooking`
  ADD PRIMARY KEY (`BusBookingId`);

--
-- Indexes for table `tblnews`
--
ALTER TABLE `tblnews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpolicestation`
--
ALTER TABLE `tblpolicestation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltour`
--
ALTER TABLE `tbltour`
  ADD PRIMARY KEY (`TourId`);

--
-- Indexes for table `tblbusroutelist`
--
ALTER TABLE `tblbusroutelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbusroute`
--
ALTER TABLE `tblbusroute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);


-- ---------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------
--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblapplycollege`
--
ALTER TABLE `tblapplycollege`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblapplyschool`
--
ALTER TABLE `tblapplyschool`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tblschoolbooking`
--
ALTER TABLE `tblschoolbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblbbstoke`
--
ALTER TABLE `tblbbstoke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblbdonor`
--
ALTER TABLE `tblbdonor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcollegeinfo`
--
ALTER TABLE `tblcollegeinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tblschoolinfo`
--
ALTER TABLE `tblschoolinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tblschoolbooking`
--
ALTER TABLE `tblschoolbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblbpasent`
--
ALTER TABLE `tblbpasent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcityservices`
--
ALTER TABLE `tblcityservices`
  MODIFY `ServiceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblfiresearvice`
--
ALTER TABLE `tblfiresearvice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblhotel`
--
ALTER TABLE `tblhotel`
  MODIFY `HotelId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblhouse`
--
ALTER TABLE `tblhouse`
  MODIFY `HouseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblhousebooking`
--
ALTER TABLE `tblhousebooking`
  MODIFY `HouseBookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblbusbooking`
--
ALTER TABLE `tblbusbooking`
  MODIFY `BusBookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblnews`
--
ALTER TABLE `tblnews`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblpolicestation`
--
ALTER TABLE `tblpolicestation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbltour`
--
ALTER TABLE `tbltour`
  MODIFY `TourId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblbusroutelist`
--
ALTER TABLE `tblbusroutelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblbusroute`
--
ALTER TABLE `tblbusroute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
  
--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
