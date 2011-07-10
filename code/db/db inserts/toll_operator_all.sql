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
-- Table structure for table `toll_operator_all`
--

CREATE TABLE IF NOT EXISTS `toll_operator_all` (
  `toll_operator_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL COMMENT 'name of the toll agency',
  `is_active` varchar(1) NOT NULL COMMENT 'if the toll agency is still in collabration with us',
  `website` varchar(2100) DEFAULT NULL COMMENT 'for automated payment purposes, this has the website of the toll agency',
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
  `created_on` datetime NOT NULL,
  `last_modified_on` datetime NOT NULL COMMENT 'includes user id of the toll operater and the details that are required other than user details',
  `last_modified_by` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`toll_operator_id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  KEY `fk_last_mod_by_toa` (`last_modified_by`),
  KEY `fk_toll_user` (`user_id`),
  KEY `fk_client_to` (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='List of all the toll operators , their banking details etc' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `toll_operator_all`
--

INSERT INTO `toll_operator_all` (`toll_operator_id`, `user_id`, `name`, `is_active`, `website`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `client_id`) VALUES
(-1, NULL, 'freeways', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 00:44:38', '2011-06-24 00:44:44', -1, -1),
(1, 1, 'los angeles gateways', '1', 'www.losangeles.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 03:46:43', '2011-06-24 03:46:43', 1, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `toll_operator_all`
--
ALTER TABLE `toll_operator_all`
  ADD CONSTRAINT `fk_client_to` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_last_mod_by_toa` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_toll_user` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;
