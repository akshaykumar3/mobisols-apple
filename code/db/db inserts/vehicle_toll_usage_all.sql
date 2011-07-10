-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 28, 2011 at 08:16 AM
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
-- Table structure for table `vehicle_toll_usage_all`
--

CREATE TABLE IF NOT EXISTS `vehicle_toll_usage_all` (
  `vtu_id` int(11) NOT NULL AUTO_INCREMENT,
  `uvh_id` int(11) NOT NULL,
  `toll_loc_id` int(11) NOT NULL,
  `tph_id` int(11) DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `vml_id` int(11) NOT NULL,
  `ptran_id` int(11) DEFAULT NULL,
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
  PRIMARY KEY (`vtu_id`),
  KEY `fk_vtu_uv` (`uvh_id`),
  KEY `fk_vtu_tl` (`toll_loc_id`),
  KEY `fk_vtu_vml` (`vml_id`),
  KEY `fk_vtu_tp` (`tph_id`),
  KEY `fk_vtu_pt` (`ptran_id`),
  KEY `fk_last_mod_by` (`last_modified_by`),
  KEY `fk_client_vtu` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Payment to be done by each vehicle and other details' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `vehicle_toll_usage_all`
--

INSERT INTO `vehicle_toll_usage_all` (`vtu_id`, `uvh_id`, `toll_loc_id`, `tph_id`, `timestamp`, `vml_id`, `ptran_id`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(-1, 1, -1, 1, '2011-06-24 01:17:04', -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-06-24 00:34:47', '2011-06-24 00:27:09', -1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vehicle_toll_usage_all`
--
ALTER TABLE `vehicle_toll_usage_all`
  ADD CONSTRAINT `fk_client_vtu` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vtu_pt` FOREIGN KEY (`ptran_id`) REFERENCES `payment_transaction_all` (`ptran_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vtu_tl` FOREIGN KEY (`toll_loc_id`) REFERENCES `toll_location_all` (`toll_location_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vtu_tp` FOREIGN KEY (`tph_id`) REFERENCES `toll_price_history_all` (`tph_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vtu_uv` FOREIGN KEY (`uvh_id`) REFERENCES `user_vehicle_history_all` (`uvh_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vtu_vml` FOREIGN KEY (`vml_id`) REFERENCES `vehicle_movement_log_all` (`vml_id`) ON DELETE NO ACTION ON UPDATE CASCADE;
