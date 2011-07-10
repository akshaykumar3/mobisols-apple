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
-- Table structure for table `service_plan_all`
--

CREATE TABLE IF NOT EXISTS `service_plan_all` (
  `service_plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `toll_operator_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL COMMENT 'service plan name',
  `description` varchar(1000) DEFAULT NULL COMMENT 'plan benefits,details etc ',
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
  `last_modified_on` datetime NOT NULL,
  `last_modified_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`service_plan_id`),
  KEY `fk_last_mod_by_spa` (`last_modified_by`),
  KEY `fk_sp_to` (`toll_operator_id`),
  KEY `fk_client_sp` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `service_plan_all`
--

INSERT INTO `service_plan_all` (`service_plan_id`, `toll_operator_id`, `name`, `description`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_on`, `last_modified_by`, `created_on`, `client_id`) VALUES
(-1, NULL, 'free', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 00:42:58', -1, '2011-06-24 00:43:11', -1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `service_plan_all`
--
ALTER TABLE `service_plan_all`
  ADD CONSTRAINT `fk_client_sp` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_spa` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sp_to` FOREIGN KEY (`toll_operator_id`) REFERENCES `toll_operator_all` (`toll_operator_id`) ON UPDATE CASCADE;
