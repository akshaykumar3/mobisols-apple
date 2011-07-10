-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 28, 2011 at 08:12 AM
-- Server version: 5.1.54
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `globaltoll1`
--

-- --------------------------------------------------------

--
-- Table structure for table `toll_location_history_all`
--

CREATE TABLE IF NOT EXISTS `toll_location_history_all` (
  `tlh_id` int(11) NOT NULL AUTO_INCREMENT,
  `toll_location_id` int(11) DEFAULT NULL,
  `toll_operator_id` int(11) NOT NULL,
  `geometry` geometry NOT NULL,
  `is_covered` varchar(1) DEFAULT NULL,
  `is_cash_only` varchar(1) DEFAULT NULL,
  `address1` varchar(45) DEFAULT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(70) DEFAULT NULL,
  `zip` varchar(6) DEFAULT NULL,
  `udf1` varchar(1000) DEFAULT NULL,
  `udf2` varchar(1000) DEFAULT NULL,
  `udf3` varchar(1000) DEFAULT NULL,
  `udf4` varchar(1000) DEFAULT NULL,
  `udf5` varchar(1000) DEFAULT NULL,
  `flag1` varchar(1) DEFAULT NULL,
  `flag2` varchar(1) DEFAULT NULL,
  `flag3` varchar(1) DEFAULT NULL,
  `flag4` varchar(1) DEFAULT NULL,
  `flag5` varchar(1) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `last_modified_on` datetime DEFAULT NULL,
  `last_modified_by` int(11) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `action` varchar(20) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  `angle` decimal(6,3) DEFAULT NULL,
  PRIMARY KEY (`tlh_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This table maps the location with corresponding toll operato' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `toll_location_history_all`
--

INSERT INTO `toll_location_history_all` (`tlh_id`, `toll_location_id`, `toll_operator_id`, `geometry`, `is_covered`, `is_cash_only`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `start_date`, `end_date`, `action`, `client_id`, `latitude`, `longitude`, `direction`) VALUES
(1, -1, -1, '\0\0\0\0\0\0\0\0\0\0\0\0\0ð?\0\0\0\0\0\0ð?', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 00:25:20', '2011-06-24 00:34:47', -1, '2011-06-24 03:17:38', '3000-01-01 00:00:00', 'insert', -1, '0.000000', '0.000000', NULL);
