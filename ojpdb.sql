-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 03, 2024 at 04:42 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ojpdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_news`
--

DROP TABLE IF EXISTS `adminapp_news`;
CREATE TABLE IF NOT EXISTS `adminapp_news` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `newstext` longtext NOT NULL,
  `newsdate` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `adminapp_news`
--

INSERT INTO `adminapp_news` (`id`, `newstext`, `newsdate`) VALUES
(1, 'Project is working perfectly', '2024-06-03'),
(3, 'All is well', '2024-06-03'),
(4, 'All Modules are completed', '2024-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `costomerzone_job`
--

DROP TABLE IF EXISTS `costomerzone_job`;
CREATE TABLE IF NOT EXISTS `costomerzone_job` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `jobtitle` varchar(100) NOT NULL,
  `jobdesc` longtext NOT NULL,
  `posteddate` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `costomerzone_job`
--

INSERT INTO `costomerzone_job` (`id`, `jobtitle`, `jobdesc`, `posteddate`) VALUES
(1, 'Job opening in Softpro India Lucknow', 'Post:- Software Engineer\r\nNo. of vacancy:- 5', '2024-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `recruitizapp_enquiry`
--

DROP TABLE IF EXISTS `recruitizapp_enquiry`;
CREATE TABLE IF NOT EXISTS `recruitizapp_enquiry` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` longtext NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `emailaddress` varchar(254) NOT NULL,
  `enquirytext` longtext NOT NULL,
  `enquirydate` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `recruitizapp_enquiry`
--

INSERT INTO `recruitizapp_enquiry` (`id`, `name`, `gender`, `address`, `contactno`, `emailaddress`, `enquirytext`, `enquirydate`) VALUES
(1, 'Brijesh Mishra', 'Male', 'Barabanki', '9453318798', 'brijesh.225409@gmail.com', 'Hi', '2024-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `recruitizapp_labour`
--

DROP TABLE IF EXISTS `recruitizapp_labour`;
CREATE TABLE IF NOT EXISTS `recruitizapp_labour` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` longtext NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `exparea` longtext NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `regdate` varchar(30) NOT NULL,
  `experience` varchar(2) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  PRIMARY KEY (`contactno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `recruitizapp_labour`
--

INSERT INTO `recruitizapp_labour` (`name`, `gender`, `address`, `country`, `state`, `city`, `exparea`, `contactno`, `regdate`, `experience`, `emailaddress`) VALUES
('Dinesh Singh', 'Male', 'Lucknow', 'India', 'Uttar Pradesh', 'Lucknow', 'Furniture', '9936652039', '2024-06-03', '12', 'dinesh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `recruitizapp_login`
--

DROP TABLE IF EXISTS `recruitizapp_login`;
CREATE TABLE IF NOT EXISTS `recruitizapp_login` (
  `userid` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `usertype` varchar(30) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `recruitizapp_login`
--

INSERT INTO `recruitizapp_login` (`userid`, `password`, `usertype`) VALUES
('9936652039', 'abc', 'jobseeker'),
('admin@gmail.com', 'admin@123', 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
