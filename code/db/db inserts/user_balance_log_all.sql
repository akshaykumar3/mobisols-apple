-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 28, 2011 at 08:15 AM
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
-- Table structure for table `user_balance_log_all`
--

CREATE TABLE IF NOT EXISTS `user_balance_log_all` (
  `ublog_id` int(11) NOT NULL AUTO_INCREMENT,
  `ubal_id` int(11) NOT NULL,
  `delta` decimal(19,4) NOT NULL,
  `timestamp` datetime NOT NULL,
  `action` varchar(200) NOT NULL,
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
  `last_modified_by` int(11) DEFAULT NULL,
  `last_modified_on` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ublog_id`),
  KEY `fk_ublog_ubal` (`ubal_id`),
  KEY `fk_last_mod_by_ubla` (`last_modified_by`),
  KEY `fk_client_ubl` (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_balance_log_all`
--

INSERT INTO `user_balance_log_all` (`ublog_id`, `ubal_id`, `delta`, `timestamp`, `action`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(1, -1, '0.0000', '2011-06-24 00:54:05', 'new account created', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-06-24 00:53:41', '2011-06-24 00:53:48', -1),
(2, 1, '0.0000', '2011-06-24 03:32:21', 'new account created', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-06-24 03:32:21', '2011-06-24 03:32:21', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_balance_log_all`
--
ALTER TABLE `user_balance_log_all`
  ADD CONSTRAINT `fk_client_ubl` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_ubla` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ublog_ubal` FOREIGN KEY (`ubal_id`) REFERENCES `user_balance_all` (`ubal_id`) ON DELETE NO ACTION ON UPDATE CASCADE;
