-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 05, 2019 at 07:27 PM
-- Server version: 5.7.23
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assessment`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(100) NOT NULL,
  `ans1` varchar(200) DEFAULT NULL,
  `ans2` varchar(200) DEFAULT NULL,
  `ans3` varchar(200) DEFAULT NULL,
  `ans4` varchar(200) DEFAULT NULL,
  `ans5` varchar(200) DEFAULT NULL,
  `ans6` varchar(200) DEFAULT NULL,
  `ans7` varchar(200) DEFAULT NULL,
  `ans8` varchar(200) DEFAULT NULL,
  `ans9` varchar(200) DEFAULT NULL,
  `ans10` varchar(200) DEFAULT NULL,
  `ans11` varchar(200) DEFAULT NULL,
  `ans12` varchar(200) DEFAULT NULL,
  `ans13` varchar(200) DEFAULT NULL,
  `ans14` varchar(200) DEFAULT NULL,
  `ans15` varchar(200) DEFAULT NULL,
  `ans16` varchar(200) DEFAULT NULL,
  `ans17` varchar(200) DEFAULT NULL,
  `ans18` varchar(200) DEFAULT NULL,
  `ans19` varchar(200) DEFAULT NULL,
  `ans20` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

DROP TABLE IF EXISTS `applicants`;
CREATE TABLE IF NOT EXISTS `applicants` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `school` varchar(250) DEFAULT NULL,
  `video` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `priviledge` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
