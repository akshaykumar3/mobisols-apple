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
-- Table structure for table `payment_transaction_all`
--

CREATE TABLE IF NOT EXISTS `payment_transaction_all` (
  `ptran_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_bl_id` int(11) DEFAULT NULL COMMENT 'balance log for the user',
  `to_bl_id` int(11) DEFAULT NULL COMMENT 'balance log for the toll opeator',
  `updh_id` int(11) DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `status` varchar(10) NOT NULL COMMENT 'toll amount paid or unpaid',
  `amount` decimal(19,4) NOT NULL,
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
  `last_modified_by` int(11) NOT NULL,
  `last_modified_on` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ptran_id`),
  KEY `fk_lat_mod_by_pta` (`last_modified_by`),
  KEY `fk_pt_ublog` (`user_bl_id`),
  KEY `fk_pt_tlog` (`to_bl_id`),
  KEY `fk_pt_updh` (`updh_id`),
  KEY `fk_client_pt` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='All the payment transactions up to the date' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `payment_transaction_all`
--

INSERT INTO `payment_transaction_all` (`ptran_id`, `user_bl_id`, `to_bl_id`, `updh_id`, `timestamp`, `status`, `amount`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(-1, 1, 1, 1, '2011-06-24 01:17:04', 'test', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-06-24 00:34:47', '2011-06-24 00:25:20', -1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payment_transaction_all`
--
ALTER TABLE `payment_transaction_all`
  ADD CONSTRAINT `fk_client_pt` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_lat_mod_by_pta` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pt_tlog` FOREIGN KEY (`to_bl_id`) REFERENCES `user_balance_log_all` (`ublog_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pt_ublog` FOREIGN KEY (`user_bl_id`) REFERENCES `user_balance_log_all` (`ublog_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pt_updh` FOREIGN KEY (`updh_id`) REFERENCES `user_payment_detail_history_all` (`updh_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
