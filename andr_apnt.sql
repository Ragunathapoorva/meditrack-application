-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 13, 2024 at 12:39 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `andr_apnt`
--
CREATE DATABASE IF NOT EXISTS `andr_apnt` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `andr_apnt`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `userid` varchar(200) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userid`, `pwd`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `appnt`
--

CREATE TABLE IF NOT EXISTS `appnt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` date NOT NULL,
  `hname` varchar(200) NOT NULL,
  `dname` varchar(200) NOT NULL,
  `apptm` varchar(100) NOT NULL,
  `userid` varchar(200) NOT NULL,
  PRIMARY KEY (`hname`,`dname`,`apptm`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `appnt`
--

INSERT INTO `appnt` (`id`, `dt`, `hname`, `dname`, `apptm`, `userid`) VALUES
(1, '2024-11-13', 'Jawahar Hospitals', 'Sundaram', '14/11/2024 9:00', 'kumar@gmail.com'),
(4, '2024-11-13', 'Vadamalayan Hospitals', 'Joseph', '14/11/2024 9:00', 'kumar@gmail.com'),
(5, '2024-11-13', 'Vadamalayan Hospitals', 'Joseph', '17/11/2024 10:00', 'sam@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE IF NOT EXISTS `doctors` (
  `dname` varchar(200) NOT NULL,
  `hname` varchar(200) NOT NULL,
  `spname` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  PRIMARY KEY (`dname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`dname`, `hname`, `spname`, `mobile`) VALUES
('Joseph', 'Vadamalayan Hospitals', 'General', '8890199199'),
('Prabakar', 'Jawahar Hospitals', 'General', '9877766540'),
('Sundaram', 'Jawahar Hospitals', 'Ortho', '9877766755');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE IF NOT EXISTS `hospitals` (
  `hname` varchar(200) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  PRIMARY KEY (`hname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`hname`, `addr`, `city`, `email`, `mobile`) VALUES
('Jawahar Hospitals', '8, Bazaar street', 'Madurai', 'jawahar@gmail.com', '8899766555'),
('Vadamalayan Hospitals', '39, Main street', 'Madurai', 'vm@gmail.com', '9988755444'),
('Z hospitals', '343,South Carolina street,', 'Madurai', 'z@gmail.com', '8890011998');

-- --------------------------------------------------------

--
-- Table structure for table `newuser`
--

CREATE TABLE IF NOT EXISTS `newuser` (
  `uname` varchar(200) NOT NULL,
  `addr` varchar(400) NOT NULL,
  `city` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newuser`
--

INSERT INTO `newuser` (`uname`, `addr`, `city`, `email`, `mobile`, `pwd`) VALUES
('Kumar', '43,South Street,', 'Madurai', 'kumar@gmail.com', '9877766777', 'k'),
('Samuel', '4, Main Street', 'Madurai', 'sam@gmail.com', '9877766565', 's');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
