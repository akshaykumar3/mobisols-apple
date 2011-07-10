-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 28, 2011 at 08:17 AM
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
-- Table structure for table `vehicle_type_all`
--

CREATE TABLE IF NOT EXISTS `vehicle_type_all` (
  `vehicle_type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key of the table',
  `name` varchar(100) NOT NULL COMMENT 'A: Auto/sport utility Vehicle/minivan\nP: Pickup truck \nP2: Pickup truck with dual rear tires \nv: Van\nm: motorcycle \nR4: RV with 4 tires\n R6: RV with dual rear tires  ',
  `description` varchar(1000) DEFAULT NULL,
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
  `last_modified_on` datetime NOT NULL,
  `last_modified_by` int(11) NOT NULL COMMENT 'user id',
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`vehicle_type_id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `fk_last_mod_by_vta` (`last_modified_by`),
  KEY `fk_client_vtp` (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='The different types of vehicles identified by the toll agenc' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vehicle_type_all`
--

INSERT INTO `vehicle_type_all` (`vehicle_type_id`, `name`, `description`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `client_id`) VALUES
(-1, 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 01:13:32', '2011-06-24 01:17:14', -1, -1),
(1, '4-wheeler ', 'car', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 03:40:04', '2011-06-24 03:40:04', -1, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vehicle_type_all`
--
ALTER TABLE `vehicle_type_all`
  ADD CONSTRAINT `fk_client_vtp` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_vta` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;
