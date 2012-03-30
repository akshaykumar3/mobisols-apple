-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 30, 2012 at 08:06 AM
-- Server version: 5.5.13
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mtpdev`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `cc_type`
--
DROP VIEW IF EXISTS `cc_type`;
CREATE TABLE IF NOT EXISTS `cc_type` (
`cc_type_id` int(11)
,`name` varchar(45)
,`description` varchar(1000)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `cc_type_all`
--

DROP TABLE IF EXISTS `cc_type_all`;
CREATE TABLE IF NOT EXISTS `cc_type_all` (
  `cc_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
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
  `last_modified_by` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cc_type_id`),
  KEY `fk_last_mod_by_cta` (`last_modified_by`),
  KEY `fk_client_cct` (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cc_type_all`
--

INSERT INTO `cc_type_all` (`cc_type_id`, `name`, `description`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `client_id`) VALUES
(-1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 00:37:46', '2011-06-24 00:37:53', -1, -1),
(1, 'Visa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 03:34:00', '2011-06-24 03:34:00', -1, 1),
(2, 'Master', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-13 22:40:28', '2011-10-13 22:40:32', 1, NULL),
(3, 'Amex', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-13 22:40:54', '2011-10-13 22:40:57', 1, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `client`
--
DROP VIEW IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
`client_id` int(11)
,`client_name` varchar(45)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `client_all`
--

DROP TABLE IF EXISTS `client_all`;
CREATE TABLE IF NOT EXISTS `client_all` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(45) NOT NULL,
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
  `last_modified_by` int(11) NOT NULL,
  PRIMARY KEY (`client_id`),
  KEY `fk_cl_user` (`last_modified_by`),
  KEY `fk_last_mod_by_ca` (`last_modified_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `client_all`
--

INSERT INTO `client_all` (`client_id`, `client_name`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`) VALUES
(-1, 'tollpass', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-13 23:26:08', '2011-10-13 00:00:00', -1),
(1, 'test drive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 21:12:13', '2011-10-12 21:12:16', -1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `component`
--
DROP VIEW IF EXISTS `component`;
CREATE TABLE IF NOT EXISTS `component` (
`component_id` int(11)
,`name` varchar(45)
,`description` varchar(45)
,`client_id` int(11)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `component_all`
--

DROP TABLE IF EXISTS `component_all`;
CREATE TABLE IF NOT EXISTS `component_all` (
  `component_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
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
  `last_modified_by` int(11) NOT NULL,
  PRIMARY KEY (`component_id`),
  KEY `fk_comp_client` (`client_id`),
  KEY `fk_last_mod_comp` (`last_modified_by`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table store different components(client, server, portal';

--
-- Dumping data for table `component_all`
--

INSERT INTO `component_all` (`component_id`, `name`, `description`, `client_id`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`) VALUES
(1, 'server', 'server configuration', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-09 20:24:16', '2011-10-09 20:24:19', -1),
(2, 'Client', 'client configuration', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-28 01:41:17', '2012-03-28 01:41:20', -1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `component_version`
--
DROP VIEW IF EXISTS `component_version`;
CREATE TABLE IF NOT EXISTS `component_version` (
`comp_version_id` int(11)
,`component_id` int(11)
,`description` varchar(45)
,`list_of_changes` varchar(4000)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`version` varchar(20)
);
-- --------------------------------------------------------

--
-- Table structure for table `component_version_all`
--

DROP TABLE IF EXISTS `component_version_all`;
CREATE TABLE IF NOT EXISTS `component_version_all` (
  `comp_version_id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `list_of_changes` varchar(4000) DEFAULT NULL,
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
  `last_modified_by` int(11) NOT NULL,
  `version` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`comp_version_id`),
  KEY `fk_cv_c` (`component_id`),
  KEY `fk_last_mod_cv` (`last_modified_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `component_version_all`
--

INSERT INTO `component_version_all` (`comp_version_id`, `component_id`, `description`, `list_of_changes`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `version`) VALUES
(1, 1, 'version 1', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-09 20:26:07', '2011-10-09 20:26:10', -1, '1.0'),
(2, 2, 'client configuration version 1', 'no changes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-28 01:42:00', '2012-03-28 01:42:05', -1, '1.0');

-- --------------------------------------------------------

--
-- Stand-in structure for view `configuration`
--
DROP VIEW IF EXISTS `configuration`;
CREATE TABLE IF NOT EXISTS `configuration` (
`config_id` int(11)
,`comp_version_id` int(11)
,`key` varchar(45)
,`value` varchar(1000)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `configuration_all`
--

DROP TABLE IF EXISTS `configuration_all`;
CREATE TABLE IF NOT EXISTS `configuration_all` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `comp_version_id` int(11) DEFAULT NULL,
  `key` varchar(45) DEFAULT NULL,
  `value` varchar(1000) DEFAULT NULL,
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
  `last_modified_by` int(11) NOT NULL,
  PRIMARY KEY (`config_id`),
  KEY `fk_c_cv` (`comp_version_id`),
  KEY `fk_mod_by_config_all` (`last_modified_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `configuration_all`
--

INSERT INTO `configuration_all` (`config_id`, `comp_version_id`, `key`, `value`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`) VALUES
(1, 1, 'checkSecurity', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-09 20:28:55', '2011-10-09 20:28:58', -1),
(2, 1, 'device_active', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 21:24:03', '2012-01-22 21:24:05', -1),
(3, 1, 'device_inactive', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 21:24:36', '2012-01-22 21:24:38', -1),
(4, 1, 'user_active', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 21:26:44', '2012-01-22 21:26:46', -1),
(5, 1, 'user_inactive', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 21:27:03', '2012-01-22 21:27:05', -1),
(6, 1, 'user_incomplete', 'I', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 21:28:15', '2012-01-22 21:28:18', -1),
(7, 1, 'user_suspend', 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 21:29:56', '2012-01-22 21:29:58', -1),
(8, 1, 'user_block', 'B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 21:30:31', '2012-01-22 21:30:34', -1),
(9, 1, 'vehicle_active', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 21:34:33', '2012-01-22 21:34:36', -1),
(10, 1, 'vehicle_inactive', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 21:34:33', '2012-01-22 21:34:36', -1),
(11, 1, 'vehicle_suspend', 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 21:34:33', '2012-01-22 21:34:36', -1),
(12, 1, 'vehicle_block', 'B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 21:34:33', '2012-01-22 21:34:36', -1),
(13, 1, 'vehicle_incomplete', 'I', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 21:34:33', '2012-01-22 21:34:36', -1),
(14, 1, 'vehicle_standby', 'T', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 21:34:33', '2012-01-22 21:34:36', -1),
(15, 1, 'vehicle_default_model', '-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 21:39:11', '2012-01-22 21:39:14', -1),
(16, 1, 'vehicle_default_type', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 21:39:11', '2012-01-22 21:39:14', -1),
(17, 1, 'device_exists', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 21:39:11', '2012-01-22 21:39:14', -1),
(18, 1, 'device_not_exists', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 21:39:11', '2012-01-22 21:39:14', -1),
(19, 1, 'default_user', '-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 21:55:52', '2012-01-22 21:55:56', -1),
(20, 1, 'user_exists', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 21:55:52', '2012-01-22 21:55:56', -1),
(21, 1, 'user_not_exists', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 21:55:52', '2012-01-22 21:55:56', -1),
(22, 1, 'sms_url', 'https://api.smsified.com/v1/smsmessaging/outbound/5056335349/requests', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 22:01:54', '2012-01-22 22:01:57', -1),
(23, 1, 'sms_user_name', 'harishmobisols', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 22:01:54', '2012-01-22 22:01:57', -1),
(24, 1, 'sms_password', '9060', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 22:01:54', '2012-01-22 22:01:57', -1),
(25, 1, 'min_trans_amount', '10.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 23:06:59', '2012-01-22 23:07:02', -1),
(26, 1, 'min_balance', '10.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 23:06:59', '2012-01-22 23:07:02', -1),
(27, 1, 'default_heart_beat_time', '600000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 23:06:59', '2012-01-22 23:07:02', -1),
(28, 1, 'default_heart_beat_distance', '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-22 23:06:59', '2012-01-22 23:07:02', -1),
(29, 1, 'import_pending', 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-23 20:31:54', '2012-01-23 20:31:57', -1),
(30, 1, 'import_inprogress', 'I', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-23 20:31:54', '2012-01-23 20:31:57', -1),
(31, 1, 'import_error', 'E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-23 20:31:54', '2012-01-23 20:31:57', -1),
(32, 1, 'import_hold', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-23 20:31:54', '2012-01-23 20:31:57', -1),
(33, 1, 'import_partial', 'R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-23 20:31:54', '2012-01-23 20:31:57', -1),
(34, 1, 'texas_import_type', 'texas import', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-23 20:46:06', '2012-01-23 20:46:12', -1),
(35, 1, 'import_batch_pending', 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-23 20:46:06', '2012-01-23 20:46:12', -1),
(36, 1, 'import_batch_hold', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-23 20:46:06', '2012-01-23 20:46:12', -1),
(37, 1, 'import_batch_inprogress', 'I', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-23 20:46:06', '2012-01-23 20:46:12', -1),
(38, 1, 'import_batch_error', 'E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-23 20:46:06', '2012-01-23 20:46:12', -1),
(39, 1, 'import_batch_progress', 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-23 20:46:06', '2012-01-23 20:46:12', -1),
(40, 1, 'import_complete', 'C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-26 20:05:15', '2012-01-26 20:05:19', -1),
(41, 1, 'import_batch_complete', 'C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-26 20:05:15', '2012-01-26 20:05:19', -1),
(42, 1, 'default_cc_type_id', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-28 13:24:16', '2012-01-28 13:24:19', -1),
(43, 2, 'min_car_proximity', '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-28 01:45:14', '2012-03-28 01:45:17', -1),
(44, 2, 'command_ack', 'COMMAND_ACK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-28 02:03:32', '2012-03-28 02:03:35', -1),
(45, 2, 'command_status_failure', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-28 02:03:32', '2012-03-28 02:03:35', -1),
(46, 2, 'command_status_success', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-28 02:03:32', '2012-03-28 02:03:35', -1),
(47, 2, 'command_status_pending', 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-28 02:03:32', '2012-03-28 02:03:35', -1),
(48, 1, 'command_pending', 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-28 02:03:32', '2012-03-28 02:03:35', -1),
(49, 1, 'command_progress', 'R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-28 02:03:32', '2012-03-28 02:03:35', -1),
(50, 1, 'command_success', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-28 02:03:32', '2012-03-28 02:03:35', -1),
(51, 1, 'command_failure', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-28 02:03:32', '2012-03-28 02:03:35', -1),
(52, 1, 'notification_pending', 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-28 02:03:32', '2012-03-28 02:03:35', -1),
(53, 1, 'notification_success', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-28 02:03:32', '2012-03-28 02:03:35', -1),
(54, 1, 'user_notification_type_command', 'C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-28 02:03:32', '2012-03-28 02:03:35', -1),
(55, 1, 'user_notification_type_notification', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-28 02:03:32', '2012-03-28 02:03:35', -1),
(56, 2, 'command_deactivate_user', 'DEACTIVATE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-28 02:03:32', '2012-03-28 02:03:35', -1),
(57, 2, 'command_device_registration', 'DO_DEVICE_REGISTRATION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-28 02:03:32', '2012-03-28 02:03:35', -1),
(58, 2, 'command_update_client_config', 'UPDATE_CLIENT_CONFIG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-28 02:21:33', '2012-03-28 02:21:37', -1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `device`
--
DROP VIEW IF EXISTS `device`;
CREATE TABLE IF NOT EXISTS `device` (
`device_id` int(11)
,`user_id` int(11)
,`device_uuid` varchar(100)
,`device_type` varchar(100)
,`is_active` varchar(1)
,`last_login_time` timestamp
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` timestamp
,`last_modified_on` timestamp
,`last_modified_by` int(11)
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `device_all`
--

DROP TABLE IF EXISTS `device_all`;
CREATE TABLE IF NOT EXISTS `device_all` (
  `device_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `device_uuid` varchar(100) NOT NULL,
  `device_type` varchar(100) NOT NULL,
  `is_active` varchar(1) NOT NULL,
  `last_login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `created_on` timestamp NULL DEFAULT NULL,
  `last_modified_on` timestamp NULL DEFAULT NULL,
  `last_modified_by` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`device_id`),
  UNIQUE KEY `uq_device_name` (`device_uuid`,`device_type`),
  KEY `fk_device_user` (`user_id`),
  KEY `fk_device_client` (`client_id`),
  KEY `fk_lastmod_device` (`last_modified_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `device_all`
--

INSERT INTO `device_all` (`device_id`, `user_id`, `device_uuid`, `device_type`, `is_active`, `last_login_time`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `client_id`) VALUES
(3, 1, '0:0:0:0:0:0:0:12011-10-12 22:17:11.112', 'desktop', 'N', '2011-10-12 22:17:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:17:11', '2011-10-12 22:17:11', -1, 1),
(4, 1, '0:0:0:0:0:0:0:12011-10-16 08:42:47.138', 'desktop', 'N', '2011-10-16 08:43:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-16 08:42:47', '2011-10-16 08:42:47', -1, 1),
(7, 1, '0:0:0:0:0:0:0:12011-10-18 22:16:17.826', 'desktop', 'N', '2011-10-18 22:16:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-18 22:16:17', '2011-10-18 22:16:17', -1, 1),
(8, 1, '172.30.102.462011-10-19 09:30:21.138', 'android', 'N', '2011-10-19 09:30:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 09:30:21', '2011-10-19 09:30:21', -1, 1),
(9, 1, '42.107.27.1882011-10-24 10:56:40.501', 'desktop', 'N', '2011-10-24 10:56:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-24 10:56:40', '2011-10-24 10:56:40', -1, 1),
(10, -1, '42.107.133.1902011-10-24 16:18:50.939', 'desktop', 'N', '2011-10-24 16:18:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-24 16:18:50', '2011-10-24 16:18:50', -1, 1),
(11, 1, '42.107.133.1902011-10-24 16:23:13.109', 'android', 'N', '2011-10-24 16:23:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-24 16:23:13', '2011-10-24 16:23:13', -1, 1),
(12, 1, '1.38.59.1222011-10-24 18:13:08.193', 'android', 'N', '2011-10-24 18:13:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-24 18:13:08', '2011-10-24 18:13:08', -1, 1),
(13, 1, '1.38.59.1222011-10-24 18:19:41.467', 'android', 'N', '2011-10-24 18:19:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-24 18:19:41', '2011-10-24 18:19:41', -1, 1),
(14, -1, '1.38.59.1222011-10-24 18:25:13.591', 'android', 'N', '2011-10-24 18:25:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-24 18:25:13', '2011-10-24 18:25:13', -1, 1),
(15, -1, '1.38.59.1222011-10-24 18:29:25.566', 'android', 'N', '2011-10-24 18:29:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-24 18:29:25', '2011-10-24 18:29:25', -1, 1),
(16, -1, '1.38.59.1222011-10-24 18:34:33.216', 'android', 'N', '2011-10-24 18:34:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-24 18:34:33', '2011-10-24 18:34:33', -1, 1),
(17, 1, '1.38.59.1222011-10-24 18:46:52.949', 'android', 'N', '2011-10-24 18:46:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-24 18:46:52', '2011-10-24 18:46:52', -1, 1),
(18, -1, '42.111.47.132011-10-24 21:22:12.864', 'android', 'N', '2011-10-24 21:22:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-24 21:22:12', '2011-10-24 21:22:12', -1, 1),
(19, 1, '42.111.47.132011-10-24 22:12:42.9', 'android', 'N', '2011-10-24 22:12:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-24 22:12:42', '2011-10-24 22:12:42', -1, 1),
(20, 1, '42.107.168.832011-10-25 18:37:41.964', 'android', 'N', '2011-10-25 18:37:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-25 18:37:41', '2011-10-25 18:37:41', -1, 1),
(21, 1, '1.38.183.252011-10-26 15:19:43.182', 'android', 'N', '2011-10-26 15:19:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-26 15:19:43', '2011-10-26 15:19:43', -1, 1),
(22, 1, '42.107.35.182011-10-27 11:54:46.819', 'android', 'N', '2011-10-27 11:54:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-27 11:54:46', '2011-10-27 11:54:46', -1, 1),
(23, 1, '1.38.179.1052011-10-27 12:50:42.699', 'android', 'N', '2011-10-27 12:50:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-27 12:50:42', '2011-10-27 12:50:42', -1, 1),
(24, 1, '1.38.179.1052011-10-27 14:24:27.606', 'android', 'N', '2011-10-27 14:24:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-27 14:24:27', '2011-10-27 14:24:27', -1, 1),
(25, 1, '1.38.179.1052011-10-27 15:04:48.782', 'android', 'N', '2011-10-27 15:04:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-27 15:04:48', '2011-10-27 15:04:48', -1, 1),
(26, 1, '1.38.244.362011-10-28 22:14:15.217', 'android', 'N', '2011-10-28 22:14:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-28 22:14:15', '2011-10-28 22:14:15', -1, 1),
(27, 1, '172.30.130.1782011-11-04 12:05:08.488', 'android', 'N', '2011-11-04 12:05:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-11-04 12:05:08', '2011-11-04 12:05:08', -1, 1),
(28, 1, '0:0:0:0:0:0:0:12011-11-05 10:38:18.591', 'desktop', 'N', '2011-11-05 10:38:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-11-05 10:38:18', '2011-11-05 10:38:18', -1, 1),
(29, 1, '0:0:0:0:0:0:0:12011-11-05 11:23:33.764', 'desktop', 'N', '2011-11-05 11:23:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-11-05 11:23:33', '2011-11-05 11:23:33', -1, 1),
(30, 2, '127.0.0.12012-01-04 17:35:43.032', 'desktop', 'N', '2012-01-04 17:35:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-04 17:35:43', '2012-01-04 17:35:43', -1, 1),
(31, 3, '127.0.0.12012-01-04 19:54:55.59', 'desktop', 'N', '2012-01-04 19:54:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-04 19:54:55', '2012-01-04 19:54:55', -1, 1),
(32, 1, '127.0.0.12012-01-07 20:02:03.894', 'desktop', 'N', '2012-01-07 20:02:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-07 20:02:03', '2012-01-07 20:02:03', -1, 1),
(33, 1, '127.0.0.12012-01-07 20:29:34.413', 'desktop', 'N', '2012-01-07 20:29:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-07 20:29:34', '2012-01-07 20:29:34', -1, 1),
(34, 1, '127.0.0.12012-01-09 23:28:13.708', 'desktop', 'N', '2012-01-09 23:28:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-09 23:28:13', '2012-01-09 23:28:13', -1, 1),
(35, -1, '127.0.0.12012-01-23 16:42:57.051', 'desktop', 'N', '2012-01-23 16:42:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-23 16:42:57', '2012-01-23 16:42:57', -1, 1),
(36, 1, '127.0.0.12012-01-28 12:54:46.99', 'desktop', 'N', '2012-01-28 12:54:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-28 12:54:46', '2012-01-28 12:54:46', -1, 1),
(37, 5, '127.0.0.12012-01-29 11:43:25.279', 'desktop', 'N', '2012-01-29 11:43:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:43:25', '2012-01-29 11:43:25', -1, 1),
(38, 1, '172.30.102.712012-02-06 15:15:20.222', 'android', 'N', '2012-02-06 15:15:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-06 15:15:20', '2012-02-06 15:15:20', -1, 1),
(39, 1, '172.30.102.712012-02-06 15:43:17.237', 'android', 'N', '2012-02-06 15:43:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-06 15:43:17', '2012-02-06 15:43:17', -1, 1),
(40, -1, '127.0.0.12012-02-14 19:56:54.399', 'desktop', 'N', '2012-02-14 19:56:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-14 19:56:54', '2012-02-14 19:56:54', -1, 1),
(41, 1, '127.0.0.12012-02-14 19:58:35.877', 'desktop', 'N', '2012-02-14 19:58:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-14 19:58:35', '2012-02-14 19:58:35', -1, 1),
(42, 1, '172.30.102.712012-03-30 10:51:41.198', 'android', 'N', '2012-03-30 10:51:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 10:51:41', '2012-03-30 10:51:41', -1, 1);

--
-- Triggers `device_all`
--
DROP TRIGGER IF EXISTS `trg_dev_his_aft_ins`;
DELIMITER //
CREATE TRIGGER `trg_dev_his_aft_ins` AFTER INSERT ON `device_all`
 FOR EACH ROW begin
insert into device_history_all(device_history_id,device_id,user_id,device_uuid,device_type,is_active,
last_login_time,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,client_id,last_modified_by,last_modified_on,
created_on,start_date,end_date,action)
values(null,new.device_id,new.user_id,new.device_uuid,new.device_type,new.is_active,
new.last_login_time,new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,
new.flag4,new.flag5,new.client_id,new.last_modified_by,new.last_modified_on,new.created_on,GetStartDate(),GetInfFuture(),'insert');
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `trg_dev_his_aft_upd`;
DELIMITER //
CREATE TRIGGER `trg_dev_his_aft_upd` AFTER UPDATE ON `device_all`
 FOR EACH ROW begin
update device_history_all
set end_date = GetEndDate()
where 
device_id = new.device_id
and end_date = GetInfFuture();
insert into device_history_all(device_history_id,device_id,user_id,device_uuid,device_type,is_active,
last_login_time,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,client_id,last_modified_by,last_modified_on,
created_on,start_date,end_date,action)
values(null,new.device_id,new.user_id,new.device_uuid,new.device_type,new.is_active,
new.last_login_time,new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,
new.flag4,new.flag5,new.client_id,new.last_modified_by,new.last_modified_on,new.created_on,GetStartDate(),GetInfFuture(),'update');
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `trg_dev_his_bfr_del`;
DELIMITER //
CREATE TRIGGER `trg_dev_his_bfr_del` BEFORE DELETE ON `device_all`
 FOR EACH ROW begin
update device_history_all
set end_date = GetEndDate()
where 
device_id = old.device_id
and end_date = GetInfFuture();
insert into device_history_all(device_history_id,device_id,user_id,device_uuid,device_type,is_active,
last_login_time,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,client_id,last_modified_by,last_modified_on,
created_on,start_date,end_date,action)
values(null,old.device_id,old.user_id,old.device_uuid,old.device_type,old.is_active,
old.last_login_time,old.udf1,old.udf2,old.udf3,old.udf4,old.udf5,old.flag1,old.flag2,old.flag3,
old.flag4,old.flag5,old.client_id,old.last_modified_by,old.last_modified_on,old.created_on,GetStartDate(),GetStartDate(),'delete');
end
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `device_history`
--
DROP VIEW IF EXISTS `device_history`;
CREATE TABLE IF NOT EXISTS `device_history` (
`device_history_id` int(11)
,`device_id` int(11)
,`user_id` int(11)
,`device_uuid` varchar(100)
,`device_type` varchar(100)
,`is_active` varchar(1)
,`last_login_time` timestamp
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`client_id` int(11)
,`last_modified_by` int(11)
,`last_modified_on` datetime
,`created_on` datetime
,`start_date` datetime
,`end_date` datetime
,`action` varchar(20)
);
-- --------------------------------------------------------

--
-- Table structure for table `device_history_all`
--

DROP TABLE IF EXISTS `device_history_all`;
CREATE TABLE IF NOT EXISTS `device_history_all` (
  `device_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `device_uuid` varchar(100) DEFAULT NULL,
  `device_type` varchar(100) DEFAULT NULL,
  `is_active` varchar(1) DEFAULT NULL,
  `last_login_time` timestamp NULL DEFAULT NULL,
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
  `client_id` int(11) DEFAULT NULL,
  `last_modified_by` int(11) DEFAULT NULL,
  `last_modified_on` datetime DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `action` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`device_history_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `device_history_all`
--

INSERT INTO `device_history_all` (`device_history_id`, `device_id`, `user_id`, `device_uuid`, `device_type`, `is_active`, `last_login_time`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `client_id`, `last_modified_by`, `last_modified_on`, `created_on`, `start_date`, `end_date`, `action`) VALUES
(1, 3, -1, '0:0:0:0:0:0:0:12011-10-12 22:17:11.112', 'desktop', 'N', '2011-10-12 22:17:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-12 22:17:11', '2011-10-12 22:17:11', '2011-10-12 22:17:11', '2011-10-12 22:22:33', 'insert'),
(2, 3, 1, '0:0:0:0:0:0:0:12011-10-12 22:17:11.112', 'desktop', 'N', '2011-10-12 22:17:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-12 22:17:11', '2011-10-12 22:17:11', '2011-10-12 22:22:34', '3000-01-01 00:00:00', 'update'),
(3, 4, -1, '0:0:0:0:0:0:0:12011-10-16 08:42:47.138', 'desktop', 'N', '2011-10-16 08:42:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-16 08:42:47', '2011-10-16 08:42:47', '2011-10-16 08:42:47', '2011-10-16 08:43:13', 'insert'),
(4, 4, 1, '0:0:0:0:0:0:0:12011-10-16 08:42:47.138', 'desktop', 'N', '2011-10-16 08:43:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-16 08:42:47', '2011-10-16 08:42:47', '2011-10-16 08:43:14', '3000-01-01 00:00:00', 'update'),
(5, 7, -1, '0:0:0:0:0:0:0:12011-10-18 22:16:17.826', 'desktop', 'N', '2011-10-18 22:16:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-18 22:16:17', '2011-10-18 22:16:17', '2011-10-18 22:16:17', '2011-10-30 18:22:37', 'insert'),
(6, 8, -1, '172.30.102.462011-10-19 09:30:21.138', 'android', 'N', '2011-10-19 09:30:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-19 09:30:21', '2011-10-19 09:30:21', '2011-10-19 09:30:21', '2011-10-19 09:32:10', 'insert'),
(7, 8, 1, '172.30.102.462011-10-19 09:30:21.138', 'android', 'N', '2011-10-19 09:30:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-19 09:30:21', '2011-10-19 09:30:21', '2011-10-19 09:32:11', '3000-01-01 00:00:00', 'update'),
(8, 9, -1, '42.107.27.1882011-10-24 10:56:40.501', 'desktop', 'N', '2011-10-24 10:56:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-24 10:56:40', '2011-10-24 10:56:40', '2011-10-24 10:56:40', '2011-10-24 10:59:37', 'insert'),
(9, 9, 1, '42.107.27.1882011-10-24 10:56:40.501', 'desktop', 'N', '2011-10-24 10:56:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-24 10:56:40', '2011-10-24 10:56:40', '2011-10-24 10:59:38', '3000-01-01 00:00:00', 'update'),
(10, 10, -1, '42.107.133.1902011-10-24 16:18:50.939', 'desktop', 'N', '2011-10-24 16:18:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-24 16:18:50', '2011-10-24 16:18:50', '2011-10-24 16:18:51', '3000-01-01 00:00:00', 'insert'),
(11, 11, -1, '42.107.133.1902011-10-24 16:23:13.109', 'android', 'N', '2011-10-24 16:23:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-24 16:23:13', '2011-10-24 16:23:13', '2011-10-24 16:23:13', '2011-10-24 16:25:22', 'insert'),
(12, 11, 1, '42.107.133.1902011-10-24 16:23:13.109', 'android', 'N', '2011-10-24 16:23:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-24 16:23:13', '2011-10-24 16:23:13', '2011-10-24 16:25:23', '3000-01-01 00:00:00', 'update'),
(13, 12, -1, '1.38.59.1222011-10-24 18:13:08.193', 'android', 'N', '2011-10-24 18:13:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-24 18:13:08', '2011-10-24 18:13:08', '2011-10-24 18:13:08', '2011-10-24 18:13:57', 'insert'),
(14, 12, 1, '1.38.59.1222011-10-24 18:13:08.193', 'android', 'N', '2011-10-24 18:13:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-24 18:13:08', '2011-10-24 18:13:08', '2011-10-24 18:13:58', '3000-01-01 00:00:00', 'update'),
(15, 13, -1, '1.38.59.1222011-10-24 18:19:41.467', 'android', 'N', '2011-10-24 18:19:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-24 18:19:41', '2011-10-24 18:19:41', '2011-10-24 18:19:41', '2011-10-24 18:20:43', 'insert'),
(16, 13, 1, '1.38.59.1222011-10-24 18:19:41.467', 'android', 'N', '2011-10-24 18:19:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-24 18:19:41', '2011-10-24 18:19:41', '2011-10-24 18:20:44', '3000-01-01 00:00:00', 'update'),
(17, 14, -1, '1.38.59.1222011-10-24 18:25:13.591', 'android', 'N', '2011-10-24 18:25:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-24 18:25:13', '2011-10-24 18:25:13', '2011-10-24 18:25:13', '3000-01-01 00:00:00', 'insert'),
(18, 15, -1, '1.38.59.1222011-10-24 18:29:25.566', 'android', 'N', '2011-10-24 18:29:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-24 18:29:25', '2011-10-24 18:29:25', '2011-10-24 18:29:25', '3000-01-01 00:00:00', 'insert'),
(19, 16, -1, '1.38.59.1222011-10-24 18:34:33.216', 'android', 'N', '2011-10-24 18:34:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-24 18:34:33', '2011-10-24 18:34:33', '2011-10-24 18:34:33', '3000-01-01 00:00:00', 'insert'),
(20, 17, -1, '1.38.59.1222011-10-24 18:46:52.949', 'android', 'N', '2011-10-24 18:46:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-24 18:46:52', '2011-10-24 18:46:52', '2011-10-24 18:46:52', '2011-10-24 18:48:30', 'insert'),
(21, 17, 1, '1.38.59.1222011-10-24 18:46:52.949', 'android', 'N', '2011-10-24 18:46:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-24 18:46:52', '2011-10-24 18:46:52', '2011-10-24 18:48:31', '3000-01-01 00:00:00', 'update'),
(22, 18, -1, '42.111.47.132011-10-24 21:22:12.864', 'android', 'N', '2011-10-24 21:22:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-24 21:22:12', '2011-10-24 21:22:12', '2011-10-24 21:22:13', '3000-01-01 00:00:00', 'insert'),
(23, 19, -1, '42.111.47.132011-10-24 22:12:42.9', 'android', 'N', '2011-10-24 22:12:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-24 22:12:42', '2011-10-24 22:12:42', '2011-10-24 22:12:42', '2011-10-24 22:13:15', 'insert'),
(24, 19, 1, '42.111.47.132011-10-24 22:12:42.9', 'android', 'N', '2011-10-24 22:12:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-24 22:12:42', '2011-10-24 22:12:42', '2011-10-24 22:13:16', '3000-01-01 00:00:00', 'update'),
(25, 20, -1, '42.107.168.832011-10-25 18:37:41.964', 'android', 'N', '2011-10-25 18:37:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-25 18:37:41', '2011-10-25 18:37:41', '2011-10-25 18:37:42', '2011-10-25 18:38:19', 'insert'),
(26, 20, 1, '42.107.168.832011-10-25 18:37:41.964', 'android', 'N', '2011-10-25 18:37:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-25 18:37:41', '2011-10-25 18:37:41', '2011-10-25 18:38:20', '3000-01-01 00:00:00', 'update'),
(27, 21, -1, '1.38.183.252011-10-26 15:19:43.182', 'android', 'N', '2011-10-26 15:19:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-26 15:19:43', '2011-10-26 15:19:43', '2011-10-26 15:19:43', '2011-10-26 15:20:17', 'insert'),
(28, 21, 1, '1.38.183.252011-10-26 15:19:43.182', 'android', 'N', '2011-10-26 15:19:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-26 15:19:43', '2011-10-26 15:19:43', '2011-10-26 15:20:18', '3000-01-01 00:00:00', 'update'),
(29, 22, -1, '42.107.35.182011-10-27 11:54:46.819', 'android', 'N', '2011-10-27 11:54:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-27 11:54:46', '2011-10-27 11:54:46', '2011-10-27 11:54:46', '2011-10-27 11:55:30', 'insert'),
(30, 22, 1, '42.107.35.182011-10-27 11:54:46.819', 'android', 'N', '2011-10-27 11:54:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-27 11:54:46', '2011-10-27 11:54:46', '2011-10-27 11:55:31', '3000-01-01 00:00:00', 'update'),
(31, 23, -1, '1.38.179.1052011-10-27 12:50:42.699', 'android', 'N', '2011-10-27 12:50:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-27 12:50:42', '2011-10-27 12:50:42', '2011-10-27 12:50:42', '2011-10-27 12:51:04', 'insert'),
(32, 23, 1, '1.38.179.1052011-10-27 12:50:42.699', 'android', 'N', '2011-10-27 12:50:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-27 12:50:42', '2011-10-27 12:50:42', '2011-10-27 12:51:05', '3000-01-01 00:00:00', 'update'),
(33, 24, -1, '1.38.179.1052011-10-27 14:24:27.606', 'android', 'N', '2011-10-27 14:24:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-27 14:24:27', '2011-10-27 14:24:27', '2011-10-27 14:24:27', '2011-10-27 14:24:52', 'insert'),
(34, 24, 1, '1.38.179.1052011-10-27 14:24:27.606', 'android', 'N', '2011-10-27 14:24:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-27 14:24:27', '2011-10-27 14:24:27', '2011-10-27 14:24:53', '3000-01-01 00:00:00', 'update'),
(35, 25, -1, '1.38.179.1052011-10-27 15:04:48.782', 'android', 'N', '2011-10-27 15:04:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-27 15:04:48', '2011-10-27 15:04:48', '2011-10-27 15:04:48', '2011-10-27 15:05:15', 'insert'),
(36, 25, 1, '1.38.179.1052011-10-27 15:04:48.782', 'android', 'N', '2011-10-27 15:04:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-27 15:04:48', '2011-10-27 15:04:48', '2011-10-27 15:05:16', '3000-01-01 00:00:00', 'update'),
(37, 26, -1, '1.38.244.362011-10-28 22:14:15.217', 'android', 'N', '2011-10-28 22:14:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-28 22:14:15', '2011-10-28 22:14:15', '2011-10-28 22:14:16', '2011-10-28 22:14:46', 'insert'),
(38, 26, 1, '1.38.244.362011-10-28 22:14:15.217', 'android', 'N', '2011-10-28 22:14:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-28 22:14:15', '2011-10-28 22:14:15', '2011-10-28 22:14:47', '3000-01-01 00:00:00', 'update'),
(39, 7, 1, '0:0:0:0:0:0:0:12011-10-18 22:16:17.826', 'desktop', 'N', '2011-10-18 22:16:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-18 22:16:17', '2011-10-18 22:16:17', '2011-10-30 18:22:38', '3000-01-01 00:00:00', 'update'),
(40, 27, -1, '172.30.130.1782011-11-04 12:05:08.488', 'android', 'N', '2011-11-04 12:05:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-11-04 12:05:08', '2011-11-04 12:05:08', '2011-11-04 12:05:08', '2011-11-04 12:08:40', 'insert'),
(41, 27, 1, '172.30.130.1782011-11-04 12:05:08.488', 'android', 'N', '2011-11-04 12:05:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-11-04 12:05:08', '2011-11-04 12:05:08', '2011-11-04 12:08:41', '3000-01-01 00:00:00', 'update'),
(42, 28, -1, '0:0:0:0:0:0:0:12011-11-05 10:38:18.591', 'desktop', 'N', '2011-11-05 10:38:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-11-05 10:38:18', '2011-11-05 10:38:18', '2011-11-05 10:38:18', '2011-11-05 10:38:39', 'insert'),
(43, 28, 1, '0:0:0:0:0:0:0:12011-11-05 10:38:18.591', 'desktop', 'N', '2011-11-05 10:38:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-11-05 10:38:18', '2011-11-05 10:38:18', '2011-11-05 10:38:40', '3000-01-01 00:00:00', 'update'),
(44, 29, -1, '0:0:0:0:0:0:0:12011-11-05 11:23:33.764', 'desktop', 'N', '2011-11-05 11:23:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-11-05 11:23:33', '2011-11-05 11:23:33', '2011-11-05 11:23:33', '2011-11-05 11:24:25', 'insert'),
(45, 29, 1, '0:0:0:0:0:0:0:12011-11-05 11:23:33.764', 'desktop', 'N', '2011-11-05 11:23:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-11-05 11:23:33', '2011-11-05 11:23:33', '2011-11-05 11:24:26', '3000-01-01 00:00:00', 'update'),
(46, 30, -1, '127.0.0.12012-01-04 17:35:43.032', 'desktop', 'N', '2012-01-04 17:35:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-01-04 17:35:43', '2012-01-04 17:35:43', '2012-01-04 17:35:43', '2012-01-04 17:35:49', 'insert'),
(47, 30, 2, '127.0.0.12012-01-04 17:35:43.032', 'desktop', 'N', '2012-01-04 17:35:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-01-04 17:35:43', '2012-01-04 17:35:43', '2012-01-04 17:35:50', '3000-01-01 00:00:00', 'update'),
(48, 31, -1, '127.0.0.12012-01-04 19:54:55.59', 'desktop', 'N', '2012-01-04 19:54:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-01-04 19:54:55', '2012-01-04 19:54:55', '2012-01-04 19:54:55', '2012-01-04 19:55:02', 'insert'),
(49, 31, 3, '127.0.0.12012-01-04 19:54:55.59', 'desktop', 'N', '2012-01-04 19:54:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-01-04 19:54:55', '2012-01-04 19:54:55', '2012-01-04 19:55:03', '3000-01-01 00:00:00', 'update'),
(50, 32, -1, '127.0.0.12012-01-07 20:02:03.894', 'desktop', 'N', '2012-01-07 20:02:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-01-07 20:02:03', '2012-01-07 20:02:03', '2012-01-07 20:02:04', '2012-01-07 20:02:26', 'insert'),
(51, 32, 1, '127.0.0.12012-01-07 20:02:03.894', 'desktop', 'N', '2012-01-07 20:02:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-01-07 20:02:03', '2012-01-07 20:02:03', '2012-01-07 20:02:27', '3000-01-01 00:00:00', 'update'),
(52, 33, -1, '127.0.0.12012-01-07 20:29:34.413', 'desktop', 'N', '2012-01-07 20:29:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-01-07 20:29:34', '2012-01-07 20:29:34', '2012-01-07 20:29:34', '2012-01-07 20:30:29', 'insert'),
(53, 33, 1, '127.0.0.12012-01-07 20:29:34.413', 'desktop', 'N', '2012-01-07 20:29:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-01-07 20:29:34', '2012-01-07 20:29:34', '2012-01-07 20:30:30', '3000-01-01 00:00:00', 'update'),
(54, 34, -1, '127.0.0.12012-01-09 23:28:13.708', 'desktop', 'N', '2012-01-09 23:28:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-01-09 23:28:13', '2012-01-09 23:28:13', '2012-01-09 23:28:13', '2012-01-09 23:28:24', 'insert'),
(55, 34, 1, '127.0.0.12012-01-09 23:28:13.708', 'desktop', 'N', '2012-01-09 23:28:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-01-09 23:28:13', '2012-01-09 23:28:13', '2012-01-09 23:28:25', '3000-01-01 00:00:00', 'update'),
(56, 35, -1, '127.0.0.12012-01-23 16:42:57.051', 'desktop', 'N', '2012-01-23 16:42:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-01-23 16:42:57', '2012-01-23 16:42:57', '2012-01-23 16:42:57', '3000-01-01 00:00:00', 'insert'),
(57, 36, -1, '127.0.0.12012-01-28 12:54:46.99', 'desktop', 'N', '2012-01-28 12:54:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-01-28 12:54:46', '2012-01-28 12:54:46', '2012-01-28 12:54:47', '2012-01-28 12:55:18', 'insert'),
(58, 36, 1, '127.0.0.12012-01-28 12:54:46.99', 'desktop', 'N', '2012-01-28 12:54:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-01-28 12:54:46', '2012-01-28 12:54:46', '2012-01-28 12:55:19', '3000-01-01 00:00:00', 'update'),
(59, 37, -1, '127.0.0.12012-01-29 11:43:25.279', 'desktop', 'N', '2012-01-29 11:43:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-01-29 11:43:25', '2012-01-29 11:43:25', '2012-01-29 11:43:25', '2012-01-29 11:46:42', 'insert'),
(60, 37, 5, '127.0.0.12012-01-29 11:43:25.279', 'desktop', 'N', '2012-01-29 11:43:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-01-29 11:43:25', '2012-01-29 11:43:25', '2012-01-29 11:46:43', '3000-01-01 00:00:00', 'update'),
(61, 38, -1, '172.30.102.712012-02-06 15:15:20.222', 'android', 'N', '2012-02-06 15:15:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-02-06 15:15:20', '2012-02-06 15:15:20', '2012-02-06 15:15:20', '2012-02-06 15:15:56', 'insert'),
(62, 38, 1, '172.30.102.712012-02-06 15:15:20.222', 'android', 'N', '2012-02-06 15:15:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-02-06 15:15:20', '2012-02-06 15:15:20', '2012-02-06 15:15:57', '3000-01-01 00:00:00', 'update'),
(63, 39, -1, '172.30.102.712012-02-06 15:43:17.237', 'android', 'N', '2012-02-06 15:43:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-02-06 15:43:17', '2012-02-06 15:43:17', '2012-02-06 15:43:17', '2012-02-06 15:44:09', 'insert'),
(64, 39, 1, '172.30.102.712012-02-06 15:43:17.237', 'android', 'N', '2012-02-06 15:43:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-02-06 15:43:17', '2012-02-06 15:43:17', '2012-02-06 15:44:10', '3000-01-01 00:00:00', 'update'),
(65, 40, -1, '127.0.0.12012-02-14 19:56:54.399', 'desktop', 'N', '2012-02-14 19:56:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-02-14 19:56:54', '2012-02-14 19:56:54', '2012-02-14 19:56:54', '3000-01-01 00:00:00', 'insert'),
(66, 41, -1, '127.0.0.12012-02-14 19:58:35.877', 'desktop', 'N', '2012-02-14 19:58:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-02-14 19:58:35', '2012-02-14 19:58:35', '2012-02-14 19:58:35', '2012-02-14 19:59:52', 'insert'),
(67, 41, 1, '127.0.0.12012-02-14 19:58:35.877', 'desktop', 'N', '2012-02-14 19:58:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-02-14 19:58:35', '2012-02-14 19:58:35', '2012-02-14 19:59:53', '3000-01-01 00:00:00', 'update'),
(68, 42, -1, '172.30.102.712012-03-30 10:51:41.198', 'android', 'N', '2012-03-30 10:51:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-03-30 10:51:41', '2012-03-30 10:51:41', '2012-03-30 10:51:41', '2012-03-30 10:52:28', 'insert'),
(69, 42, 1, '172.30.102.712012-03-30 10:51:41.198', 'android', 'N', '2012-03-30 10:51:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2012-03-30 10:51:41', '2012-03-30 10:51:41', '2012-03-30 10:52:29', '3000-01-01 00:00:00', 'update');

-- --------------------------------------------------------

--
-- Stand-in structure for view `make`
--
DROP VIEW IF EXISTS `make`;
CREATE TABLE IF NOT EXISTS `make` (
`make_id` int(11)
,`name` varchar(45)
,`description` varchar(1000)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`client_id` int(11)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `make_all`
--

DROP TABLE IF EXISTS `make_all`;
CREATE TABLE IF NOT EXISTS `make_all` (
  `make_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
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
  `client_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `last_modified_on` datetime DEFAULT NULL,
  `last_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`make_id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `fk_make_client` (`client_id`),
  KEY `fk_lmb_make` (`last_modified_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `make_all`
--

INSERT INTO `make_all` (`make_id`, `name`, `description`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `client_id`, `created_on`, `last_modified_on`, `last_modified_by`) VALUES
(1, 'BMW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-10-29 23:31:06', '2011-10-29 23:31:09', -1),
(2, 'Honda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2012-01-04 18:40:46', '2012-01-04 18:40:48', -1),
(3, 'Nissan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2012-01-23 14:03:13', '2012-01-23 14:03:17', -1),
(4, 'Toyota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2012-01-23 14:03:13', '2012-01-23 14:03:17', -1),
(5, 'Lexus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2012-01-23 14:03:13', '2012-01-23 14:03:17', -1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `model`
--
DROP VIEW IF EXISTS `model`;
CREATE TABLE IF NOT EXISTS `model` (
`model_id` int(11)
,`name` varchar(45)
,`description` varchar(1000)
,`make_id` int(11)
,`vehicle_type_id` int(11)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`client_id` int(11)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `model_all`
--

DROP TABLE IF EXISTS `model_all`;
CREATE TABLE IF NOT EXISTS `model_all` (
  `model_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `make_id` int(11) DEFAULT NULL,
  `vehicle_type_id` int(11) NOT NULL,
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
  `client_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `last_modified_on` datetime DEFAULT NULL,
  `last_modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`model_id`),
  KEY `fk_model_make` (`make_id`),
  KEY `fk_model_client` (`client_id`),
  KEY `fk_lmb_model` (`last_modified_by`),
  KEY `fk_model_vt` (`vehicle_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `model_all`
--

INSERT INTO `model_all` (`model_id`, `name`, `description`, `make_id`, `vehicle_type_id`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `client_id`, `created_on`, `last_modified_on`, `last_modified_by`) VALUES
(1, '325CI Convertible', NULL, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-10-29 23:31:54', '2011-10-29 23:31:56', -1),
(2, 'M3', NULL, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-11-08 16:32:30', '2011-11-08 16:32:33', -1),
(3, 'Accord Sedan', NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2012-01-04 18:41:28', '2012-01-04 18:41:30', -1),
(4, 'Pilot', NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2012-01-04 18:41:55', '2012-01-04 18:41:58', -1),
(5, 'Odyssey', NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2012-01-23 14:04:54', '2012-01-23 14:04:57', -1),
(6, 'PathFun', NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2012-01-23 14:04:54', '2012-01-23 14:04:57', -1),
(7, 'Corolla', NULL, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-23 14:06:23', '2012-01-23 14:06:26', -1),
(8, 'PathFinde', NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2012-01-23 14:10:39', '2012-01-23 14:10:41', -1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `owner_type`
--
DROP VIEW IF EXISTS `owner_type`;
CREATE TABLE IF NOT EXISTS `owner_type` (
`owner_type_id` int(11)
,`name` varchar(45)
,`description` varchar(100)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`falg1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modifiede_on` datetime
,`last_modified_by` int(11)
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `owner_type_all`
--

DROP TABLE IF EXISTS `owner_type_all`;
CREATE TABLE IF NOT EXISTS `owner_type_all` (
  `owner_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(100) DEFAULT NULL COMMENT 'details about the car owner',
  `udf1` varchar(1000) DEFAULT NULL,
  `udf2` varchar(1000) DEFAULT NULL,
  `udf3` varchar(1000) DEFAULT NULL,
  `udf4` varchar(1000) DEFAULT NULL,
  `udf5` varchar(1000) DEFAULT NULL,
  `falg1` varchar(1) DEFAULT NULL,
  `flag2` varchar(1) DEFAULT NULL,
  `flag3` varchar(1) DEFAULT NULL,
  `flag4` varchar(1) DEFAULT NULL,
  `flag5` varchar(1) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `last_modifiede_on` datetime NOT NULL,
  `last_modified_by` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`owner_type_id`),
  KEY `fk_last_mod_by_ota` (`last_modified_by`),
  KEY `fk_client_ot` (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `owner_type_all`
--

INSERT INTO `owner_type_all` (`owner_type_id`, `name`, `description`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `falg1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modifiede_on`, `last_modified_by`, `client_id`) VALUES
(-1, 'xyz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 00:40:39', '2011-06-24 00:41:08', -1, -1),
(1, 'primary owner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 03:42:58', '2011-06-24 03:42:58', 1, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `payment_gateway`
--
DROP VIEW IF EXISTS `payment_gateway`;
CREATE TABLE IF NOT EXISTS `payment_gateway` (
`payment_gateway_id` int(11)
,`name` varchar(1000)
,`payment_class` varchar(1000)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway_all`
--

DROP TABLE IF EXISTS `payment_gateway_all`;
CREATE TABLE IF NOT EXISTS `payment_gateway_all` (
  `payment_gateway_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `payment_class` varchar(1000) DEFAULT NULL,
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
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`payment_gateway_id`),
  KEY `fk_pg_user` (`last_modified_by`),
  KEY `fk_pg_client` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `payment_gateway_all`
--


-- --------------------------------------------------------

--
-- Stand-in structure for view `payment_token`
--
DROP VIEW IF EXISTS `payment_token`;
CREATE TABLE IF NOT EXISTS `payment_token` (
`payment_token_id` int(11)
,`upd_id` int(11)
,`payment_gateway_id` int(11)
,`token` varchar(100)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `payment_token_all`
--

DROP TABLE IF EXISTS `payment_token_all`;
CREATE TABLE IF NOT EXISTS `payment_token_all` (
  `payment_token_id` int(11) NOT NULL AUTO_INCREMENT,
  `upd_id` int(11) DEFAULT NULL,
  `payment_gateway_id` int(11) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
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
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`payment_token_id`),
  UNIQUE KEY `uq_pt_pgid_updis` (`upd_id`,`payment_gateway_id`),
  KEY `fk_pt_pg` (`payment_gateway_id`),
  KEY `fk_pt_upd` (`upd_id`),
  KEY `fk_pt_user` (`last_modified_by`),
  KEY `fk_pt_client` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `payment_token_all`
--


-- --------------------------------------------------------

--
-- Stand-in structure for view `payment_transaction`
--
DROP VIEW IF EXISTS `payment_transaction`;
CREATE TABLE IF NOT EXISTS `payment_transaction` (
`ptran_id` int(11)
,`user_bl_id` int(11)
,`to_bl_id` int(11)
,`updh_id` int(11)
,`timestamp` datetime
,`status` varchar(10)
,`amount` decimal(19,4)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`last_modified_by` int(11)
,`last_modified_on` datetime
,`created_on` datetime
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `payment_transaction_all`
--

DROP TABLE IF EXISTS `payment_transaction_all`;
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='All the payment transactions up to the date' AUTO_INCREMENT=14 ;

--
-- Dumping data for table `payment_transaction_all`
--

INSERT INTO `payment_transaction_all` (`ptran_id`, `user_bl_id`, `to_bl_id`, `updh_id`, `timestamp`, `status`, `amount`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(-1, -1, -1, -1, '2012-01-09 22:28:20', 'ok', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-09 22:28:45', '2012-01-09 22:28:47', 1),
(10, 51, 53, 15, '2012-01-10 21:02:37', 'paid ', '3.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 21:02:37', '2012-01-10 21:02:37', 1),
(11, 54, 56, 15, '2012-01-10 21:20:16', 'paid ', '3.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 21:20:16', '2012-01-10 21:20:16', 1),
(12, 57, 59, 15, '2012-01-10 21:29:23', 'paid ', '3.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 21:29:23', '2012-01-10 21:29:23', 1),
(13, 62, 59, 15, '2012-01-17 20:29:05', 'paid', '3.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-17 20:29:05', '2012-01-17 20:29:05', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `road`
--
DROP VIEW IF EXISTS `road`;
CREATE TABLE IF NOT EXISTS `road` (
`road_id` int(11)
,`name` varchar(50)
,`type` varchar(30)
,`start_location` varchar(70)
,`end_location` varchar(70)
,`udf1` varchar(500)
,`udf2` varchar(500)
,`udf3` varchar(500)
,`udf4` varchar(500)
,`udf5` varchar(500)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `road_all`
--

DROP TABLE IF EXISTS `road_all`;
CREATE TABLE IF NOT EXISTS `road_all` (
  `road_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `start_location` varchar(70) DEFAULT NULL,
  `end_location` varchar(70) DEFAULT NULL,
  `udf1` varchar(500) DEFAULT NULL,
  `udf2` varchar(500) DEFAULT NULL,
  `udf3` varchar(500) DEFAULT NULL,
  `udf4` varchar(500) DEFAULT NULL,
  `udf5` varchar(500) DEFAULT NULL,
  `flag1` varchar(1) DEFAULT NULL,
  `flag2` varchar(1) DEFAULT NULL,
  `flag3` varchar(1) DEFAULT NULL,
  `flag4` varchar(1) DEFAULT NULL,
  `flag5` varchar(1) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `last_modified_on` datetime NOT NULL,
  `last_modified_by` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`road_id`),
  KEY `fk_last_mod_by_road` (`last_modified_by`),
  KEY `fk_road_client_all` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `road_all`
--


-- --------------------------------------------------------

--
-- Stand-in structure for view `service_plan`
--
DROP VIEW IF EXISTS `service_plan`;
CREATE TABLE IF NOT EXISTS `service_plan` (
`service_plan_id` int(11)
,`toll_operator_id` int(11)
,`name` varchar(100)
,`description` varchar(1000)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`created_on` datetime
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `service_plan_all`
--

DROP TABLE IF EXISTS `service_plan_all`;
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `service_plan_all`
--

INSERT INTO `service_plan_all` (`service_plan_id`, `toll_operator_id`, `name`, `description`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_on`, `last_modified_by`, `created_on`, `client_id`) VALUES
(-1, NULL, 'free', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 00:42:58', -1, '2011-06-24 00:43:11', -1),
(1, NULL, 'Weekly', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-09-22 22:36:35', -1, '2011-09-22 22:36:47', NULL),
(2, NULL, 'Monthly', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-09-22 22:37:39', -1, '2011-09-22 22:37:45', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tc_realm_groups`
--
DROP VIEW IF EXISTS `tc_realm_groups`;
CREATE TABLE IF NOT EXISTS `tc_realm_groups` (
`username` varchar(320)
,`groupname` varchar(45)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `tc_realm_users`
--
DROP VIEW IF EXISTS `tc_realm_users`;
CREATE TABLE IF NOT EXISTS `tc_realm_users` (
`username` varchar(320)
,`password` varchar(40)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `toll_location`
--
DROP VIEW IF EXISTS `toll_location`;
CREATE TABLE IF NOT EXISTS `toll_location` (
`toll_location_id` int(11)
,`toll_operator_id` int(11)
,`name` varchar(45)
,`description` varchar(100)
,`geometry` geometry
,`is_covered` varchar(1)
,`is_cash_only` varchar(1)
,`address1` varchar(45)
,`address2` varchar(45)
,`city` varchar(50)
,`state` varchar(50)
,`country` varchar(70)
,`zip` varchar(30)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`last_modified_by` int(11)
,`last_modified_on` datetime
,`created_on` datetime
,`client_id` int(11)
,`latitude` decimal(9,6)
,`longitude` decimal(9,6)
,`direction` varchar(45)
,`type` varchar(30)
);
-- --------------------------------------------------------

--
-- Table structure for table `toll_location_all`
--

DROP TABLE IF EXISTS `toll_location_all`;
CREATE TABLE IF NOT EXISTS `toll_location_all` (
  `toll_location_id` int(11) NOT NULL,
  `toll_operator_id` int(11) NOT NULL COMMENT 'corresponding toll agency -- foreign key to toll_operators_all table',
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `geometry` geometry DEFAULT NULL COMMENT 'Geometrical values  of the location',
  `is_covered` varchar(1) NOT NULL COMMENT 'to show whether the toll location is under our area of concern',
  `is_cash_only` varchar(1) NOT NULL COMMENT 'toll booths with no expressways',
  `address1` varchar(45) DEFAULT NULL COMMENT 'address of the location if known',
  `address2` varchar(45) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(70) DEFAULT NULL,
  `zip` varchar(30) DEFAULT NULL,
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
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `direction` varchar(45) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL COMMENT 'toll booth/check point',
  PRIMARY KEY (`toll_location_id`),
  KEY `fk_toll_op_id` (`toll_operator_id`),
  KEY `fk_last_mod_by_tla` (`last_modified_by`),
  KEY `fk_client_tl` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table maps the location with corresponding toll operato';

--
-- Dumping data for table `toll_location_all`
--

INSERT INTO `toll_location_all` (`toll_location_id`, `toll_operator_id`, `name`, `description`, `geometry`, `is_covered`, `is_cash_only`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`, `latitude`, `longitude`, `direction`, `type`) VALUES
(1, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 16:56:15', '2011-06-24 16:56:20', 1, '33.043205', '-117.077179', NULL, NULL),
(2, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:25:38', '2011-06-24 23:25:30', 1, '32.948885', '-117.243336', NULL, NULL),
(3, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:28:15', '2011-06-24 23:28:07', 1, '32.978422', '-117.252373', NULL, NULL),
(4, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:29:33', '2011-06-24 23:29:28', 1, '33.019540', '-117.272702', NULL, NULL),
(5, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:31:47', '2011-06-24 23:31:39', 1, '33.133323', '-117.328511', NULL, NULL),
(6, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:33:03', '2011-06-24 23:32:56', 1, '33.299231', '-117.464852', NULL, NULL),
(7, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:34:51', '2011-06-24 23:34:45', 1, '33.384683', '-117.580699', NULL, NULL),
(8, 1, NULL, NULL, NULL, 'N', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:36:29', '2011-06-24 23:36:22', 1, '33.472008', '-117.674562', NULL, NULL),
(9, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:37:55', '2011-06-24 23:37:49', 1, '33.616529', '-117.709292', NULL, NULL),
(10, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:39:33', '2011-06-24 23:39:27', 1, '33.713199', '-117.785564', NULL, NULL),
(11, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:40:53', '2011-06-24 23:40:47', 1, '33.807397', '-117.906723', NULL, NULL),
(12, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:42:07', '2011-06-24 23:42:01', 1, '33.939459', '-118.095372', NULL, NULL),
(13, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:44:10', '2011-06-24 23:44:03', 1, '32.948930', '-117.243648', NULL, NULL),
(14, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:45:22', '2011-06-24 23:45:16', 1, '32.978371', '-117.252636', NULL, NULL),
(15, 1, NULL, NULL, NULL, 'N', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:46:46', '2011-06-24 23:46:40', 1, '33.019505', '-117.272976', NULL, NULL),
(16, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:52:55', '2011-06-24 23:52:48', 1, '33.133256', '-117.328823', NULL, NULL),
(17, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:56:48', '2011-06-24 23:56:43', 1, '33.299065', '-117.465183', NULL, NULL),
(18, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:58:14', '2011-06-24 23:58:06', 1, '33.384491', '-117.580956', NULL, NULL),
(19, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-25 00:00:08', '2011-06-25 00:00:02', 1, '33.472007', '-117.674805', NULL, NULL),
(20, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-25 00:02:01', '2011-06-25 00:01:53', 1, '33.616402', '-117.709683', NULL, NULL),
(21, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-25 00:03:17', '2011-06-25 00:03:11', 1, '33.713059', '-117.785911', NULL, NULL),
(22, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-25 00:04:32', '2011-06-25 00:04:27', 1, '33.807268', '-117.907111', NULL, NULL),
(23, 1, NULL, NULL, NULL, 'N', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-25 00:06:09', '2011-06-25 00:06:04', 1, '33.939427', '-118.095533', NULL, NULL),
(24, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-27 10:40:49', '2011-10-27 10:40:52', 1, '31.072660', '-104.127441', NULL, NULL),
(26, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-29 23:59:22', '2011-10-29 23:59:25', 1, '37.533324', '-122.253614', NULL, NULL),
(27, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-28 00:00:50', '2011-10-28 00:00:53', 1, '37.533639', '-122.254065', NULL, NULL),
(28, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-29 00:02:09', '2011-10-30 00:02:13', -1, '37.532839', '-122.252981', NULL, NULL),
(30, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-10-29 00:03:19', '2011-10-30 00:03:21', 1, '37.534028', '-122.253858', NULL, NULL),
(31, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-30 00:04:17', '2011-10-30 00:04:20', 1, '37.534445', '-122.253341', NULL, NULL),
(32, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-30 00:05:16', '2011-10-30 00:05:19', 1, '37.534532', '-122.252863', NULL, NULL),
(33, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-30 00:05:54', '2011-10-30 00:05:59', 1, '37.534058', '-122.254486', NULL, NULL);

--
-- Triggers `toll_location_all`
--
DROP TRIGGER IF EXISTS `trg_tol_loc_aft_ins`;
DELIMITER //
CREATE TRIGGER `trg_tol_loc_aft_ins` AFTER INSERT ON `toll_location_all`
 FOR EACH ROW begin
insert into toll_location_history_all(tlh_id,toll_location_id,toll_operator_id,geometry,is_covered,is_cash_only,address1,address2,city,state,country,zip,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action,client_id,latitude,longitude,direction,type,name,description) 
values(null,new.toll_location_id,new.toll_operator_id,new.geometry,new.is_covered,new.is_cash_only,new.address1,new.address2,new.city,new.state,new.country,zip,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,
GetStartDate(),GetInfFuture(),'insert',new.client_id,new.latitude,new.longitude,new.direction,new.type,new.name,new.description);
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `trg_tol_loc_aft_upd`;
DELIMITER //
CREATE TRIGGER `trg_tol_loc_aft_upd` AFTER UPDATE ON `toll_location_all`
 FOR EACH ROW begin
update toll_location_history_all
set end_date = GetEndDate()
where 
toll_location_id = new.toll_location_id
and end_date = GetInfFuture();
insert into toll_location_history_all(tlh_id,toll_location_id,toll_operator_id,geometry,is_covered,is_cash_only,address1,address2,city,state,country,zip,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action,client_id,latitude,longitude,direction,type,name,description) 
values(null,new.toll_location_id,new.toll_operator_id,new.geometry,new.is_covered,new.is_cash_only,new.address1,new.address2,new.city,new.state,new.country,new.zip,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,
GetStartDate(),GetInfFuture(),'update',new.client_id,new.latitude,new.longitude,new.direction,new.type,new.name,new.description);
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `trg_tol_loc_bfr_del`;
DELIMITER //
CREATE TRIGGER `trg_tol_loc_bfr_del` BEFORE DELETE ON `toll_location_all`
 FOR EACH ROW begin
update toll_location_history_all
set end_date = GetEndDate()
where 
toll_location_id = old.toll_location_id
and end_date = GetInfFuture(); 
insert into toll_location_history_all(tlh_id,toll_location_id,toll_operator_id,geometry,is_covered,is_cash_only,address1,address2,city,state,country,zip,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action,client_id,latitude,longitude,direction,type,name,description) 
values(null,old.toll_location_id,old.toll_operator_id,old.geometry,old.is_covered,old.is_cash_only,old.address1,old.address2,old.city,old.state,old.country,old.zip,
old.udf1,old.udf2,old.udf3,old.udf4,old.udf5,old.flag1,old.flag2,old.flag3,old.flag4,old.flag5,old.created_on,old.last_modified_on,old.last_modified_by,
GetStartDate(),GetStartDate(),'delete',old.client_id,old.latitude,old.longitude,old.direction,old.type,old.name,old.description);
end
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `toll_location_history`
--
DROP VIEW IF EXISTS `toll_location_history`;
CREATE TABLE IF NOT EXISTS `toll_location_history` (
`tlh_id` int(11)
,`toll_location_id` int(11)
,`toll_operator_id` int(11)
,`name` varchar(45)
,`description` varchar(100)
,`geometry` geometry
,`is_covered` varchar(1)
,`is_cash_only` varchar(1)
,`address1` varchar(45)
,`address2` varchar(45)
,`city` varchar(50)
,`state` varchar(50)
,`country` varchar(70)
,`zip` varchar(6)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`start_date` datetime
,`end_date` datetime
,`action` varchar(20)
,`client_id` int(11)
,`latitude` decimal(9,6)
,`longitude` decimal(9,6)
,`direction` varchar(45)
,`type` varchar(30)
);
-- --------------------------------------------------------

--
-- Table structure for table `toll_location_history_all`
--

DROP TABLE IF EXISTS `toll_location_history_all`;
CREATE TABLE IF NOT EXISTS `toll_location_history_all` (
  `tlh_id` int(11) NOT NULL AUTO_INCREMENT,
  `toll_location_id` int(11) DEFAULT NULL,
  `toll_operator_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `geometry` geometry DEFAULT NULL,
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
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `direction` varchar(45) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tlh_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This table maps the location with corresponding toll operato' AUTO_INCREMENT=34 ;

--
-- Dumping data for table `toll_location_history_all`
--

INSERT INTO `toll_location_history_all` (`tlh_id`, `toll_location_id`, `toll_operator_id`, `name`, `description`, `geometry`, `is_covered`, `is_cash_only`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `start_date`, `end_date`, `action`, `client_id`, `latitude`, `longitude`, `direction`, `type`) VALUES
(1, 1, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 16:56:20', '2011-06-24 16:56:15', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.043205', '-117.077179', NULL, NULL),
(2, 2, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:25:30', '2011-06-24 23:25:38', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '32.948885', '-117.243336', NULL, NULL),
(3, 3, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:28:07', '2011-06-24 23:28:15', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '32.978422', '-117.252373', NULL, NULL),
(4, 4, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:29:28', '2011-06-24 23:29:33', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.019540', '-117.272702', NULL, NULL),
(5, 5, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:31:39', '2011-06-24 23:31:47', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.133323', '-117.328511', NULL, NULL),
(6, 6, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:32:56', '2011-06-24 23:33:03', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.299231', '-117.464852', NULL, NULL),
(7, 7, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:34:45', '2011-06-24 23:34:51', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.384683', '-117.580699', NULL, NULL),
(8, 8, 1, NULL, NULL, NULL, 'N', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:36:22', '2011-06-24 23:36:29', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.472008', '-117.674562', NULL, NULL),
(9, 9, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:37:49', '2011-06-24 23:37:55', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.616529', '-117.709292', NULL, NULL),
(10, 10, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:39:27', '2011-06-24 23:39:33', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.713199', '-117.785564', NULL, NULL),
(11, 11, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:40:47', '2011-06-24 23:40:53', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.807397', '-117.906723', NULL, NULL),
(12, 12, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:42:01', '2011-06-24 23:42:07', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.939459', '-118.095372', NULL, NULL),
(13, 13, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:44:03', '2011-06-24 23:44:10', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '32.948930', '-117.243648', NULL, NULL),
(14, 14, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:45:16', '2011-06-24 23:45:22', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '32.978371', '-117.252636', NULL, NULL),
(15, 15, 1, NULL, NULL, NULL, 'N', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:46:40', '2011-06-24 23:46:46', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.019505', '-117.272976', NULL, NULL),
(16, 16, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:52:48', '2011-06-24 23:52:55', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.133256', '-117.328823', NULL, NULL),
(17, 17, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:56:43', '2011-06-24 23:56:48', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.299065', '-117.465183', NULL, NULL),
(18, 18, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:58:06', '2011-06-24 23:58:14', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.384491', '-117.580956', NULL, NULL),
(19, 19, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-25 00:00:02', '2011-06-25 00:00:08', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.472007', '-117.674805', NULL, NULL),
(20, 20, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-25 00:01:53', '2011-06-25 00:02:01', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.616402', '-117.709683', NULL, NULL),
(21, 21, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-25 00:03:11', '2011-06-25 00:03:17', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.713059', '-117.785911', NULL, NULL),
(22, 22, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-25 00:04:27', '2011-06-25 00:04:32', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.807268', '-117.907111', NULL, NULL),
(23, 23, 1, NULL, NULL, NULL, 'N', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-25 00:06:04', '2011-06-25 00:06:09', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.939427', '-118.095533', NULL, NULL),
(24, 24, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-27 10:40:52', '2011-10-27 10:40:49', -1, '2011-10-27 10:41:17', '2011-10-27 12:26:40', 'insert', 1, '-104.127441', '31.072660', NULL, NULL),
(25, 24, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-27 10:40:52', '2011-10-27 10:40:49', -1, '2011-10-27 12:26:41', '3000-01-01 00:00:00', 'update', 1, '31.072660', '-104.127441', NULL, NULL),
(26, 26, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-29 23:59:25', '2011-10-29 23:59:22', -1, '2011-10-29 23:59:45', '2011-10-30 00:01:28', 'insert', 1, '37.533324', '122.253614', NULL, NULL),
(27, 27, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-28 00:00:53', '2011-10-28 00:00:50', -1, '2011-10-30 00:01:02', '3000-01-01 00:00:00', 'insert', 1, '37.533639', '-122.254065', NULL, NULL),
(28, 26, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-29 23:59:25', '2011-10-29 23:59:22', -1, '2011-10-30 00:01:29', '3000-01-01 00:00:00', 'update', 1, '37.533324', '-122.253614', NULL, NULL),
(29, 28, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 00:02:13', '2011-10-29 00:02:09', -1, '2011-10-30 00:02:31', '3000-01-01 00:00:00', 'insert', -1, '37.532839', '-122.252981', NULL, NULL),
(30, 30, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 00:03:21', '2011-10-29 00:03:19', 1, '2011-10-30 00:03:38', '3000-01-01 00:00:00', 'insert', 1, '37.534028', '-122.253858', NULL, NULL),
(31, 31, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 00:04:20', '2011-10-30 00:04:17', -1, '2011-10-30 00:04:35', '3000-01-01 00:00:00', 'insert', 1, '37.534445', '-122.253341', NULL, NULL),
(32, 32, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 00:05:19', '2011-10-30 00:05:16', -1, '2011-10-30 00:05:34', '3000-01-01 00:00:00', 'insert', 1, '37.534532', '-122.252863', NULL, NULL),
(33, 33, 1, NULL, NULL, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 00:05:59', '2011-10-30 00:05:54', -1, '2011-10-30 00:06:57', '3000-01-01 00:00:00', 'insert', 1, '37.534058', '-122.254486', NULL, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `toll_operator`
--
DROP VIEW IF EXISTS `toll_operator`;
CREATE TABLE IF NOT EXISTS `toll_operator` (
`toll_operator_id` int(11)
,`user_id` int(11)
,`name` varchar(100)
,`is_active` varchar(1)
,`website` varchar(2100)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `toll_operator_all`
--

DROP TABLE IF EXISTS `toll_operator_all`;
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
(-1, -1, 'test data', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-18 07:59:56', '2011-10-18 07:59:59', -1, -1),
(1, 4, 'LA TollOperator', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-18 08:05:25', '2011-10-18 08:05:29', -1, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `toll_price`
--
DROP VIEW IF EXISTS `toll_price`;
CREATE TABLE IF NOT EXISTS `toll_price` (
`toll_price_id` int(11)
,`toll_location_id` int(11)
,`vehicle_type_id` int(11)
,`cost_price` decimal(19,4)
,`selling_price` decimal(19,4)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`last_modified_by` int(11)
,`last_modified_on` datetime
,`created_on` datetime
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `toll_price_all`
--

DROP TABLE IF EXISTS `toll_price_all`;
CREATE TABLE IF NOT EXISTS `toll_price_all` (
  `toll_price_id` int(11) NOT NULL AUTO_INCREMENT,
  `toll_location_id` int(11) NOT NULL,
  `vehicle_type_id` int(11) NOT NULL,
  `cost_price` decimal(19,4) NOT NULL,
  `selling_price` decimal(19,4) NOT NULL,
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
  PRIMARY KEY (`toll_price_id`),
  UNIQUE KEY `uk_tl_vt_dir` (`toll_location_id`,`vehicle_type_id`),
  KEY `fk_tp_tl` (`toll_location_id`),
  KEY `fk_tp_vt` (`vehicle_type_id`),
  KEY `fk_last_mod_by_tpa` (`last_modified_by`),
  KEY `fk_client_tp` (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='toll price for each transaction' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `toll_price_all`
--

INSERT INTO `toll_price_all` (`toll_price_id`, `toll_location_id`, `vehicle_type_id`, `cost_price`, `selling_price`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(1, 22, 3, '2.0000', '3.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-09 22:21:40', '2012-01-09 22:21:42', 1);

--
-- Triggers `toll_price_all`
--
DROP TRIGGER IF EXISTS `trg_toll_price_all_aft_ins`;
DELIMITER //
CREATE TRIGGER `trg_toll_price_all_aft_ins` AFTER INSERT ON `toll_price_all`
 FOR EACH ROW begin
insert into toll_price_history_all(tph_id,toll_price_id,toll_location_id,vehicle_type_id,cost_price,selling_price,action,udf1,udf2,udf3,udf4,udf5,
flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,client_id)
values(null,new.toll_price_id,new.toll_location_id,new.vehicle_type_id,new.cost_price,new.selling_price,'insert',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,
new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,GetStartDate(),GetInfFuture(),new.client_id);
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `trg_toll_price_aft_upd`;
DELIMITER //
CREATE TRIGGER `trg_toll_price_aft_upd` AFTER UPDATE ON `toll_price_all`
 FOR EACH ROW begin
update toll_price_history_all
set end_date = GetEndDate()
where 
toll_price_id = new.toll_price_id
and end_date = GetInfFuture();
insert into toll_price_history_all(tph_id,toll_price_id,toll_location_id,vehicle_type_id,cost_price,selling_price,action,udf1,udf2,udf3,udf4,udf5,
flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,client_id)
values(null,new.toll_price_id,new.toll_location_id,new.vehicle_type_id,new.cost_price,new.selling_price,'update',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,
new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,GetStartDate(),GetInfFuture(),new.client_id);
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `trg_tol_price_bfr_del`;
DELIMITER //
CREATE TRIGGER `trg_tol_price_bfr_del` BEFORE DELETE ON `toll_price_all`
 FOR EACH ROW begin
update toll_price_history_all
set end_date = GetEndDate()
where 
toll_price_id = old.toll_price_id
and end_date = GetInfFuture(); 
insert into toll_price_history_all(tph_id,toll_price_id,toll_location_id,vehicle_type_id,cost_price,selling_price,action,udf1,udf2,udf3,udf4,udf5,
flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,client_id)
values(null,old.toll_price_id,old.toll_location_id,old.vehicle_type_id,old.cost_price,old.selling_price,'delete',old.udf1,old.udf2,old.udf3,old.udf4,old.udf5,
old.flag1,old.flag2,old.flag3,old.flag4,old.flag5,old.created_on,old.last_modified_on,old.last_modified_by,GetStartDate(),GetStartDate(),old.client_id);
end
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `toll_price_history`
--
DROP VIEW IF EXISTS `toll_price_history`;
CREATE TABLE IF NOT EXISTS `toll_price_history` (
`tph_id` int(11)
,`toll_price_id` int(11)
,`toll_location_id` int(11)
,`vehicle_type_id` int(11)
,`direction` varchar(25)
,`cost_price` decimal(19,4)
,`selling_price` decimal(19,4)
,`action` varchar(20)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`start_date` datetime
,`end_date` datetime
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `toll_price_history_all`
--

DROP TABLE IF EXISTS `toll_price_history_all`;
CREATE TABLE IF NOT EXISTS `toll_price_history_all` (
  `tph_id` int(11) NOT NULL AUTO_INCREMENT,
  `toll_price_id` int(11) NOT NULL,
  `toll_location_id` int(11) NOT NULL,
  `vehicle_type_id` int(11) NOT NULL,
  `direction` varchar(25) DEFAULT NULL,
  `cost_price` decimal(19,4) NOT NULL,
  `selling_price` decimal(19,4) DEFAULT NULL,
  `action` varchar(20) NOT NULL,
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
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tph_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='toll price for each transaction' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `toll_price_history_all`
--

INSERT INTO `toll_price_history_all` (`tph_id`, `toll_price_id`, `toll_location_id`, `vehicle_type_id`, `direction`, `cost_price`, `selling_price`, `action`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `start_date`, `end_date`, `client_id`) VALUES
(1, 1, 22, 3, NULL, '2.0000', '3.0000', 'insert', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-09 22:21:42', '2012-01-09 22:21:40', -1, '2012-01-09 22:21:48', '3000-01-01 00:00:00', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tp_import`
--
DROP VIEW IF EXISTS `tp_import`;
CREATE TABLE IF NOT EXISTS `tp_import` (
`tp_import_id` int(11)
,`batch_id` int(11)
,`batch_record_number` int(11)
,`fd1` varchar(1000)
,`fd2` varchar(1000)
,`fd3` varchar(1000)
,`fd4` varchar(1000)
,`fd5` varchar(1000)
,`fd6` varchar(1000)
,`fd7` varchar(1000)
,`fd8` varchar(1000)
,`fd9` varchar(1000)
,`fd10` varchar(1000)
,`status` varchar(100)
,`message` varchar(1000)
,`processed_on` datetime
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`client_id` int(11)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`falg1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
);
-- --------------------------------------------------------

--
-- Table structure for table `tp_import_all`
--

DROP TABLE IF EXISTS `tp_import_all`;
CREATE TABLE IF NOT EXISTS `tp_import_all` (
  `tp_import_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_id` int(11) NOT NULL,
  `batch_record_number` int(11) NOT NULL,
  `fd1` varchar(1000) DEFAULT NULL,
  `fd2` varchar(1000) DEFAULT NULL,
  `fd3` varchar(1000) DEFAULT NULL,
  `fd4` varchar(1000) DEFAULT NULL,
  `fd5` varchar(1000) DEFAULT NULL,
  `fd6` varchar(1000) DEFAULT NULL,
  `fd7` varchar(1000) DEFAULT NULL,
  `fd8` varchar(1000) DEFAULT NULL,
  `fd9` varchar(1000) DEFAULT NULL,
  `fd10` varchar(1000) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `processed_on` datetime DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `last_modified_on` datetime NOT NULL,
  `last_modified_by` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `udf1` varchar(1000) DEFAULT NULL,
  `udf2` varchar(1000) DEFAULT NULL,
  `udf3` varchar(1000) DEFAULT NULL,
  `udf4` varchar(1000) DEFAULT NULL,
  `udf5` varchar(1000) DEFAULT NULL,
  `falg1` varchar(1) DEFAULT NULL,
  `flag2` varchar(1) DEFAULT NULL,
  `flag3` varchar(1) DEFAULT NULL,
  `flag4` varchar(1) DEFAULT NULL,
  `flag5` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`tp_import_id`),
  KEY `tp_imp_bat` (`batch_id`),
  KEY `tp_imp_lmb` (`last_modified_by`),
  KEY `tp_imp_client` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tp_import_all`
--


-- --------------------------------------------------------

--
-- Stand-in structure for view `tp_import_batch`
--
DROP VIEW IF EXISTS `tp_import_batch`;
CREATE TABLE IF NOT EXISTS `tp_import_batch` (
`tp_import_batch_id` int(11)
,`batch_type` varchar(100)
,`status` varchar(100)
,`created_on` datetime
,`processed_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`client_id` int(11)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`falg1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
);
-- --------------------------------------------------------

--
-- Table structure for table `tp_import_batch_all`
--

DROP TABLE IF EXISTS `tp_import_batch_all`;
CREATE TABLE IF NOT EXISTS `tp_import_batch_all` (
  `tp_import_batch_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_on` datetime NOT NULL,
  `processed_on` datetime DEFAULT NULL,
  `last_modified_on` datetime NOT NULL,
  `last_modified_by` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `udf1` varchar(1000) DEFAULT NULL,
  `udf2` varchar(1000) DEFAULT NULL,
  `udf3` varchar(1000) DEFAULT NULL,
  `udf4` varchar(1000) DEFAULT NULL,
  `udf5` varchar(1000) DEFAULT NULL,
  `falg1` varchar(1) DEFAULT NULL,
  `flag2` varchar(1) DEFAULT NULL,
  `flag3` varchar(1) DEFAULT NULL,
  `flag4` varchar(1) DEFAULT NULL,
  `flag5` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`tp_import_batch_id`),
  KEY `fk_tp_imp_bat_lmb` (`last_modified_by`),
  KEY `fk_tp_imp_bat_client` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tp_import_batch_all`
--


-- --------------------------------------------------------

--
-- Table structure for table `udf_data_all`
--

DROP TABLE IF EXISTS `udf_data_all`;
CREATE TABLE IF NOT EXISTS `udf_data_all` (
  `udf_data_id` int(11) NOT NULL AUTO_INCREMENT,
  `udf_value` varchar(1000) DEFAULT NULL,
  `udf_def_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`udf_data_id`),
  KEY `fk_udfdata_udfdef` (`udf_def_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `udf_data_all`
--


-- --------------------------------------------------------

--
-- Table structure for table `udf_definition_all`
--

DROP TABLE IF EXISTS `udf_definition_all`;
CREATE TABLE IF NOT EXISTS `udf_definition_all` (
  `udf_def_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`udf_def_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `udf_definition_all`
--


-- --------------------------------------------------------

--
-- Stand-in structure for view `user`
--
DROP VIEW IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(11)
,`client_id` int(11)
,`utype_id` int(11)
,`user_name` varchar(320)
,`password` varchar(40)
,`locale` varchar(20)
,`is_active` varchar(1)
,`contact_no` varchar(20)
,`last_login_time` datetime
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `user_all`
--

DROP TABLE IF EXISTS `user_all`;
CREATE TABLE IF NOT EXISTS `user_all` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL COMMENT 'users can register under any client where clients are third party organisations. ',
  `utype_id` int(11) NOT NULL COMMENT 'Specifies whether user is a normal user or admin or premium user',
  `user_name` varchar(320) NOT NULL COMMENT 'email id is the user name of the user-- with maximum size of 320 characters',
  `password` varchar(40) NOT NULL COMMENT 'alphanumeric --maximun 40 characters are allowed',
  `locale` varchar(20) DEFAULT NULL COMMENT 'local language of the user',
  `is_active` varchar(1) NOT NULL COMMENT 'column showing whether the user accout is active or inactive',
  `contact_no` varchar(20) DEFAULT NULL COMMENT 'user mobile number for sms services',
  `last_login_time` datetime DEFAULT NULL COMMENT 'Previous login details',
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
  `created_on` datetime NOT NULL COMMENT 'account created date',
  `last_modified_on` datetime NOT NULL COMMENT 'for history purpose, account last modified date ',
  `last_modified_by` int(11) NOT NULL DEFAULT '-1' COMMENT 'user id of who modified the account',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `uk_user_name` (`user_name`,`client_id`),
  KEY `fk_utype_user` (`utype_id`),
  KEY `fk_client_id_user` (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This table has all details about the users' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_all`
--

INSERT INTO `user_all` (`user_id`, `client_id`, `utype_id`, `user_name`, `password`, `locale`, `is_active`, `contact_no`, `last_login_time`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`) VALUES
(-1, 1, 1, 'test', 'test', NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 21:20:18', '2011-10-12 21:20:21', -1),
(1, 1, 1, 'harish@mobisols.com', 'raghu', '', 'Y', NULL, '2011-10-12 22:22:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1),
(2, 1, 1, '1234567890', '1840', '', 'I', NULL, '2012-01-04 17:35:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-04 17:35:50', '2012-01-04 17:35:50', -1),
(3, 1, 1, '9491617227', '2167', '', 'I', NULL, '2012-01-04 19:55:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-04 19:55:02', '2012-01-04 19:55:02', -1),
(4, 1, 2, 'LA TollOperator', 'tolloperator', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-10 20:05:21', '2012-01-10 20:05:24', -1),
(5, 1, 1, '4567891230', '5657', '', 'N', NULL, '2012-01-29 11:46:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:46:42', '2012-01-29 11:46:42', -1);

--
-- Triggers `user_all`
--
DROP TRIGGER IF EXISTS `trg_user_all_aft_ins`;
DELIMITER //
CREATE TRIGGER `trg_user_all_aft_ins` AFTER INSERT ON `user_all`
 FOR EACH ROW begin
insert into user_history_all(user_his_id,user_id,user_name,password,locale,utype_id,last_login_time,is_active,contact_no,client_id,action,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date) 
values(null,new.user_id,new.user_name,new.password,new.locale,new.utype_id,new.last_login_time,new.is_active,new.contact_no,new.client_id,'insert',
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,GetStartDate(),GetInfFuture());
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `trg_user_all_aft_upd`;
DELIMITER //
CREATE TRIGGER `trg_user_all_aft_upd` AFTER UPDATE ON `user_all`
 FOR EACH ROW begin
update user_history_all
set end_date = GetEndDate()
where 
user_id = new.user_id
and end_date =GetInfFuture();
insert into user_history_all(user_his_id,user_id,user_name,password,locale,utype_id,last_login_time,is_active,contact_no,client_id,action,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date) 
values(null,new.user_id,new.user_name,new.password,new.locale,new.utype_id,new.last_login_time,new.is_active,new.contact_no,new.client_id,'update',
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,GetStartDate(),GetInfFuture());
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `trg_user_all_bfr_del`;
DELIMITER //
CREATE TRIGGER `trg_user_all_bfr_del` BEFORE DELETE ON `user_all`
 FOR EACH ROW begin
update user_history_all
set end_date = GetEndDate()
where 
user_id = old.user_id
and end_date = GetInfFuture(); 
insert into user_history_all(user_his_id,user_id,user_name,password,locale,utype_id,last_login_time,is_active,contact_no,client_id,action,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date) 
values(null,old.user_id,old.user_name,old.password,old.locale,old.utype_id,old.last_login_time,old.is_active,old.contact_no,old.client_id,'delete',
old.udf1,old.udf2,old.udf3,old.udf4,old.udf5,old.flag1,old.flag2,old.flag3,old.flag4,old.flag5,old.created_on,old.last_modified_on,old.last_modified_by,GetStartDate(),GetStartDate());
end
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_balance`
--
DROP VIEW IF EXISTS `user_balance`;
CREATE TABLE IF NOT EXISTS `user_balance` (
`ubal_id` int(11)
,`user_id` int(11)
,`balance` decimal(19,4)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`last_modified_by` int(11)
,`last_modified_on` datetime
,`created_on` datetime
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `user_balance_all`
--

DROP TABLE IF EXISTS `user_balance_all`;
CREATE TABLE IF NOT EXISTS `user_balance_all` (
  `ubal_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `balance` decimal(19,4) NOT NULL,
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
  PRIMARY KEY (`ubal_id`),
  KEY `fk_ubal_users` (`user_id`),
  KEY `fk_last_mod_by_uba` (`last_modified_by`),
  KEY `fk_client_ub` (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_balance_all`
--

INSERT INTO `user_balance_all` (`ubal_id`, `user_id`, `balance`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(-1, -1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-09 22:23:40', '2012-01-09 22:23:43', 1),
(1, 1, '14.6000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(2, 2, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-04 17:35:50', '2012-01-04 17:35:50', 1),
(3, 3, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-04 19:55:03', '2012-01-04 19:55:03', 1),
(4, 4, '50.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:06:18', '2012-01-10 20:06:20', 1),
(5, 5, '10.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-29 11:46:42', '2012-01-29 11:46:42', 1);

--
-- Triggers `user_balance_all`
--
DROP TRIGGER IF EXISTS `trg_bal_log_aft_ins`;
DELIMITER //
CREATE TRIGGER `trg_bal_log_aft_ins` AFTER INSERT ON `user_balance_all`
 FOR EACH ROW begin
insert into user_balance_log_all(ublog_id,ubal_id,delta,timestamp,action,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,last_modified_by,last_modified_on,created_on,client_id)
values(null,new.ubal_id,0,sysdate(),'new account created',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,
new.last_modified_by,new.last_modified_on,new.created_on,new.client_id);
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `trg_bal_log_aft_upd`;
DELIMITER //
CREATE TRIGGER `trg_bal_log_aft_upd` AFTER UPDATE ON `user_balance_all`
 FOR EACH ROW begin
insert into user_balance_log_all (ublog_id,ubal_id,delta,timestamp,action,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,last_modified_by,last_modified_on,created_on,client_id)
values(null,new.ubal_id,(new.balance-old.balance),sysdate(),'update',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,
new.last_modified_by,new.last_modified_on,new.created_on,new.client_id);
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `trg_bal_log_bfr_del`;
DELIMITER //
CREATE TRIGGER `trg_bal_log_bfr_del` BEFORE DELETE ON `user_balance_all`
 FOR EACH ROW begin
insert into user_balance_log_all (ublog_id,ubal_id,delta,timestamp,action,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,last_modified_by,last_modified_on,created_on,client_id)
values(null,old.ubal_id,old.balance,sysdate(),'delete',old.udf1,old.udf2,old.udf3,old.udf4,old.udf5,old.flag1,old.flag2,old.flag3,old.flag4,old.flag5,
old.last_modified_by,old.last_modified_on,old.created_on,old.client_id);
end
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_balance_log`
--
DROP VIEW IF EXISTS `user_balance_log`;
CREATE TABLE IF NOT EXISTS `user_balance_log` (
`ublog_id` int(11)
,`ubal_id` int(11)
,`delta` decimal(19,4)
,`timestamp` datetime
,`action` varchar(200)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`last_modified_by` int(11)
,`last_modified_on` datetime
,`created_on` datetime
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `user_balance_log_all`
--

DROP TABLE IF EXISTS `user_balance_log_all`;
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `user_balance_log_all`
--

INSERT INTO `user_balance_log_all` (`ublog_id`, `ubal_id`, `delta`, `timestamp`, `action`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(-1, -1, '0.0000', '2012-01-09 22:25:41', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-09 22:26:02', '2012-01-09 22:26:06', 1),
(1, 1, '0.0000', '2011-10-12 22:22:34', 'new account created', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(2, 2, '0.0000', '2012-01-04 17:35:50', 'new account created', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-04 17:35:50', '2012-01-04 17:35:50', 1),
(3, 3, '0.0000', '2012-01-04 19:55:03', 'new account created', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-04 19:55:03', '2012-01-04 19:55:03', 1),
(4, -1, '0.0000', '2012-01-09 22:23:48', 'new account created', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-09 22:23:40', '2012-01-09 22:23:43', 1),
(5, 1, '0.0000', '2012-01-09 22:37:00', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(6, 1, '10.0000', '2012-01-10 20:00:22', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(7, 1, '3.6000', '2012-01-10 20:03:26', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(8, 1, '-3.0000', '2012-01-10 20:03:26', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(9, 4, '0.0000', '2012-01-10 20:06:26', 'new account created', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:06:18', '2012-01-10 20:06:20', 1),
(10, 1, '3.0000', '2012-01-10 20:08:16', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(11, 1, '-3.0000', '2012-01-10 20:08:16', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(12, 1, '3.0000', '2012-01-10 20:08:40', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(13, 1, '-3.0000', '2012-01-10 20:08:40', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(14, 4, '3.0000', '2012-01-10 20:08:40', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:06:18', '2012-01-10 20:06:20', 1),
(15, 1, '3.0000', '2012-01-10 20:13:36', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(16, 1, '-3.0000', '2012-01-10 20:13:36', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(17, 4, '3.0000', '2012-01-10 20:13:36', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:06:18', '2012-01-10 20:06:20', 1),
(18, 1, '3.0000', '2012-01-10 20:18:54', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(19, 1, '-3.0000', '2012-01-10 20:18:54', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(20, 4, '3.0000', '2012-01-10 20:18:54', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:06:18', '2012-01-10 20:06:20', 1),
(21, 1, '3.0000', '2012-01-10 20:22:39', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(22, 1, '-3.0000', '2012-01-10 20:22:39', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(23, 4, '3.0000', '2012-01-10 20:22:39', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:06:18', '2012-01-10 20:06:20', 1),
(24, 1, '3.0000', '2012-01-10 20:24:36', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(25, 1, '-3.0000', '2012-01-10 20:24:36', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(26, 4, '3.0000', '2012-01-10 20:24:36', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:06:18', '2012-01-10 20:06:20', 1),
(27, 1, '3.0000', '2012-01-10 20:26:25', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(28, 1, '-3.0000', '2012-01-10 20:26:26', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(29, 4, '3.0000', '2012-01-10 20:26:26', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:06:18', '2012-01-10 20:06:20', 1),
(30, 1, '3.0000', '2012-01-10 20:28:05', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(31, 1, '-3.0000', '2012-01-10 20:28:05', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(32, 4, '3.0000', '2012-01-10 20:28:05', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:06:18', '2012-01-10 20:06:20', 1),
(33, 1, '3.0000', '2012-01-10 20:28:41', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(34, 1, '-3.0000', '2012-01-10 20:28:41', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(35, 4, '3.0000', '2012-01-10 20:28:41', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:06:18', '2012-01-10 20:06:20', 1),
(36, 1, '3.0000', '2012-01-10 20:29:18', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(37, 1, '-3.0000', '2012-01-10 20:29:18', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(38, 4, '3.0000', '2012-01-10 20:29:18', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:06:18', '2012-01-10 20:06:20', 1),
(39, 1, '3.0000', '2012-01-10 20:30:49', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(40, 1, '-3.0000', '2012-01-10 20:30:49', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(41, 4, '3.0000', '2012-01-10 20:30:49', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:06:18', '2012-01-10 20:06:20', 1),
(42, 1, '3.0000', '2012-01-10 20:43:33', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(43, 1, '-3.0000', '2012-01-10 20:43:33', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(44, 4, '3.0000', '2012-01-10 20:43:33', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:06:18', '2012-01-10 20:06:20', 1),
(45, 1, '3.0000', '2012-01-10 20:55:10', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(46, 1, '-3.0000', '2012-01-10 20:55:10', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(47, 4, '3.0000', '2012-01-10 20:55:10', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:06:18', '2012-01-10 20:06:20', 1),
(48, 1, '3.0000', '2012-01-10 20:57:11', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(49, 1, '-3.0000', '2012-01-10 20:57:11', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(50, 4, '3.0000', '2012-01-10 20:57:11', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:06:18', '2012-01-10 20:06:20', 1),
(51, 1, '3.0000', '2012-01-10 21:02:37', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(52, 1, '-3.0000', '2012-01-10 21:02:37', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(53, 4, '3.0000', '2012-01-10 21:02:37', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:06:18', '2012-01-10 20:06:20', 1),
(54, 1, '3.0000', '2012-01-10 21:20:16', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(55, 1, '-3.0000', '2012-01-10 21:20:16', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(56, 4, '3.0000', '2012-01-10 21:20:16', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:06:18', '2012-01-10 20:06:20', 1),
(57, 1, '3.0000', '2012-01-10 21:29:23', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(58, 1, '-3.0000', '2012-01-10 21:29:23', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(59, 4, '3.0000', '2012-01-10 21:29:23', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:06:18', '2012-01-10 20:06:20', 1),
(60, 1, '10.0000', '2012-01-17 20:28:22', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(61, 1, '-3.0000', '2012-01-17 20:28:22', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(62, 1, '-3.0000', '2012-01-17 20:29:05', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1),
(63, 4, '2.0000', '2012-01-17 20:29:05', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:06:18', '2012-01-10 20:06:20', 1),
(64, 5, '0.0000', '2012-01-29 11:46:42', 'new account created', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-29 11:46:42', '2012-01-29 11:46:42', 1),
(65, 5, '10.0000', '2012-01-29 11:54:07', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-29 11:46:42', '2012-01-29 11:46:42', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_history`
--
DROP VIEW IF EXISTS `user_history`;
CREATE TABLE IF NOT EXISTS `user_history` (
`user_his_id` int(11)
,`user_id` int(11)
,`user_name` varchar(320)
,`password` varchar(40)
,`locale` varchar(20)
,`utype_id` int(11)
,`last_login_time` datetime
,`is_active` varchar(1)
,`contact_no` varchar(20)
,`client_id` int(11)
,`action` varchar(20)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`start_date` datetime
,`end_date` datetime
);
-- --------------------------------------------------------

--
-- Table structure for table `user_history_all`
--

DROP TABLE IF EXISTS `user_history_all`;
CREATE TABLE IF NOT EXISTS `user_history_all` (
  `user_his_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(320) NOT NULL COMMENT 'email id is the user name',
  `password` varchar(40) DEFAULT NULL COMMENT 'maximun 30 characters are allowed',
  `locale` varchar(20) DEFAULT NULL COMMENT 'what is locale??',
  `utype_id` int(11) NOT NULL COMMENT 'Specifies whether user is a normal user or admin or premium user',
  `last_login_time` datetime DEFAULT NULL,
  `is_active` varchar(1) DEFAULT NULL COMMENT 'column showing whether the user accout is active or inactive',
  `contact_no` varchar(20) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `action` varchar(20) NOT NULL,
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
  `last_modified_by` int(11) DEFAULT NULL COMMENT 'wat does this mean?? useR?',
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  PRIMARY KEY (`user_his_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This table has all details about the users' AUTO_INCREMENT=71 ;

--
-- Dumping data for table `user_history_all`
--

INSERT INTO `user_history_all` (`user_his_id`, `user_id`, `user_name`, `password`, `locale`, `utype_id`, `last_login_time`, `is_active`, `contact_no`, `client_id`, `action`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `start_date`, `end_date`) VALUES
(1, -1, 'test', 'test', NULL, 1, NULL, 'N', NULL, 1, 'insert', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 21:20:18', '2011-10-12 21:20:21', -1, '2011-10-12 21:20:24', '3000-01-01 00:00:00'),
(2, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'I', NULL, 1, 'insert', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-12 22:22:34', '2011-10-19 21:29:37'),
(3, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-19 21:29:38', '2011-10-19 21:39:31'),
(4, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-19 21:39:32', '2011-10-19 21:40:42'),
(5, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-19 21:40:43', '2011-10-30 18:22:57'),
(6, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-30 18:22:58', '2011-10-30 18:26:19'),
(7, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-30 18:26:20', '2011-10-30 18:26:29'),
(8, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-30 18:26:30', '2011-10-30 18:26:31'),
(9, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-30 18:26:32', '2011-10-30 18:26:34'),
(10, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-30 18:26:35', '2011-10-30 18:26:37'),
(11, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-30 18:26:38', '2011-10-30 18:40:20'),
(12, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-30 18:40:21', '2011-10-30 19:01:28'),
(13, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-30 19:01:29', '2011-10-30 19:01:30'),
(14, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-30 19:01:31', '2011-10-30 19:01:33'),
(15, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-30 19:01:34', '2011-10-30 19:01:36'),
(16, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-30 19:01:37', '2011-10-30 19:05:46'),
(17, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-30 19:05:47', '2011-10-30 19:05:49'),
(18, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-30 19:05:50', '2011-10-30 20:31:10'),
(19, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-30 20:31:11', '2011-10-30 20:36:31'),
(20, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-30 20:36:32', '2011-10-30 20:36:37'),
(21, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-30 20:36:38', '2011-10-30 20:36:56'),
(22, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-30 20:36:57', '2011-10-30 23:00:48'),
(23, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-30 23:00:49', '2011-10-30 23:11:42'),
(24, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-30 23:11:43', '2011-10-30 23:29:12'),
(25, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-30 23:29:13', '2011-11-10 20:03:01'),
(26, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-11-10 20:03:02', '2011-11-10 20:03:08'),
(27, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-11-10 20:03:09', '2011-11-10 20:03:11'),
(28, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-11-10 20:03:12', '2012-01-07 20:02:29'),
(29, 2, '1234567890', '1840', '', 1, '2012-01-04 17:35:50', 'I', NULL, 1, 'insert', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-04 17:35:50', '2012-01-04 17:35:50', -1, '2012-01-04 17:35:50', '3000-01-01 00:00:00'),
(30, 3, '9491617227', '2167', '', 1, '2012-01-04 19:55:02', 'I', NULL, 1, 'insert', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-04 19:55:02', '2012-01-04 19:55:02', -1, '2012-01-04 19:55:02', '3000-01-01 00:00:00'),
(31, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-07 20:02:30', '2012-01-07 20:02:32'),
(32, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-07 20:02:33', '2012-01-07 20:02:35'),
(33, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-07 20:02:36', '2012-01-07 20:22:46'),
(34, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-07 20:22:47', '2012-01-07 20:23:52'),
(35, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-07 20:23:53', '2012-01-07 20:24:31'),
(36, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-07 20:24:32', '2012-01-07 20:24:38'),
(37, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-07 20:24:39', '2012-01-07 20:30:44'),
(38, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-07 20:30:45', '2012-01-07 20:31:01'),
(39, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-07 20:31:02', '2012-01-07 20:35:25'),
(40, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-07 20:35:26', '2012-01-07 20:35:43'),
(41, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-07 20:35:44', '2012-01-07 20:36:10'),
(42, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-07 20:36:11', '2012-01-07 20:37:48'),
(43, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-07 20:37:49', '2012-01-07 20:37:59'),
(44, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-07 20:38:00', '2012-01-07 20:38:17'),
(45, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-07 20:38:18', '2012-01-09 22:39:05'),
(46, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-09 22:39:06', '2012-01-10 20:00:21'),
(47, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-10 20:00:22', '2012-01-28 12:55:41'),
(48, 4, 'LA TollOperator', 'tolloperator', NULL, 2, NULL, 'Y', NULL, 1, 'insert', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-10 20:05:21', '2012-01-10 20:05:24', -1, '2012-01-10 20:05:26', '3000-01-01 00:00:00'),
(49, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-28 12:55:42', '2012-01-28 13:31:19'),
(50, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-28 13:31:20', '2012-01-28 13:31:22'),
(51, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-28 13:31:23', '2012-01-28 13:31:24'),
(52, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-28 13:31:25', '2012-01-28 13:31:26'),
(53, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-28 13:31:27', '2012-01-28 13:32:42'),
(54, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-28 13:32:43', '2012-01-28 13:32:45'),
(55, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-01-28 13:32:46', '2012-02-14 20:00:22'),
(56, 5, '4567891230', '5657', '', 1, '2012-01-29 11:46:42', 'I', NULL, 1, 'insert', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:46:42', '2012-01-29 11:46:42', -1, '2012-01-29 11:46:42', '2012-01-29 11:48:24'),
(57, 5, '4567891230', '5657', '', 1, '2012-01-29 11:46:42', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:46:42', '2012-01-29 11:46:42', -1, '2012-01-29 11:48:25', '2012-01-29 11:54:06'),
(58, 5, '4567891230', '5657', '', 1, '2012-01-29 11:46:42', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:46:42', '2012-01-29 11:46:42', -1, '2012-01-29 11:54:07', '2012-01-29 11:54:11'),
(59, 5, '4567891230', '5657', '', 1, '2012-01-29 11:46:42', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:46:42', '2012-01-29 11:46:42', -1, '2012-01-29 11:54:12', '2012-01-29 11:54:14'),
(60, 5, '4567891230', '5657', '', 1, '2012-01-29 11:46:42', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:46:42', '2012-01-29 11:46:42', -1, '2012-01-29 11:54:15', '2012-01-29 11:54:17'),
(61, 5, '4567891230', '5657', '', 1, '2012-01-29 11:46:42', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:46:42', '2012-01-29 11:46:42', -1, '2012-01-29 11:54:18', '2012-01-29 11:59:02'),
(62, 5, '4567891230', '5657', '', 1, '2012-01-29 11:46:42', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:46:42', '2012-01-29 11:46:42', -1, '2012-01-29 11:59:03', '2012-01-29 11:59:05'),
(63, 5, '4567891230', '5657', '', 1, '2012-01-29 11:46:42', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:46:42', '2012-01-29 11:46:42', -1, '2012-01-29 11:59:06', '2012-01-29 11:59:11'),
(64, 5, '4567891230', '5657', '', 1, '2012-01-29 11:46:42', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:46:42', '2012-01-29 11:46:42', -1, '2012-01-29 11:59:12', '2012-01-29 11:59:13'),
(65, 5, '4567891230', '5657', '', 1, '2012-01-29 11:46:42', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:46:42', '2012-01-29 11:46:42', -1, '2012-01-29 11:59:14', '3000-01-01 00:00:00'),
(66, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-02-14 20:00:23', '2012-02-14 20:00:25'),
(67, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-02-14 20:00:26', '2012-03-30 10:54:40'),
(68, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-03-30 10:54:41', '2012-03-30 10:54:52'),
(69, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-03-30 10:54:53', '2012-03-30 10:54:56'),
(70, 1, 'harish@mobisols.com', 'raghu', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2012-03-30 10:54:57', '3000-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_notification`
--
DROP VIEW IF EXISTS `user_notification`;
CREATE TABLE IF NOT EXISTS `user_notification` (
`user_notification_id` int(11)
,`device_id` int(11)
,`user_notification_type` varchar(100)
,`udf1` varchar(500)
,`udf2` varchar(500)
,`udf3` varchar(500)
,`udf4` varchar(500)
,`udf5` varchar(500)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`client_id` int(11)
,`status` varchar(45)
,`send_at` timestamp
,`notification` varchar(1000)
,`ack_message` varchar(4000)
,`ack_result` varchar(100)
,`add_timestamp` timestamp
,`sent_timestamp` timestamp
,`ack_timestamp` timestamp
);
-- --------------------------------------------------------

--
-- Table structure for table `user_notification_all`
--

DROP TABLE IF EXISTS `user_notification_all`;
CREATE TABLE IF NOT EXISTS `user_notification_all` (
  `user_notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` int(11) DEFAULT NULL,
  `user_notification_type` varchar(100) DEFAULT NULL,
  `udf1` varchar(500) DEFAULT NULL,
  `udf2` varchar(500) DEFAULT NULL,
  `udf3` varchar(500) DEFAULT NULL,
  `udf4` varchar(500) DEFAULT NULL,
  `udf5` varchar(500) DEFAULT NULL,
  `flag1` varchar(1) DEFAULT NULL,
  `flag2` varchar(1) DEFAULT NULL,
  `flag3` varchar(1) DEFAULT NULL,
  `flag4` varchar(1) DEFAULT NULL,
  `flag5` varchar(1) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `last_modified_on` datetime NOT NULL,
  `last_modified_by` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `send_at` timestamp NULL DEFAULT NULL,
  `notification` varchar(1000) DEFAULT NULL,
  `ack_message` varchar(4000) DEFAULT NULL,
  `ack_result` varchar(100) DEFAULT NULL,
  `add_timestamp` timestamp NULL DEFAULT NULL,
  `sent_timestamp` timestamp NULL DEFAULT NULL,
  `ack_timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_notification_id`),
  KEY `fk_device` (`device_id`),
  KEY `fk_last_mod_by_notification` (`last_modified_by`),
  KEY `fk_unotify_client_all` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_notification_all`
--


-- --------------------------------------------------------

--
-- Stand-in structure for view `user_notification_settings`
--
DROP VIEW IF EXISTS `user_notification_settings`;
CREATE TABLE IF NOT EXISTS `user_notification_settings` (
`user_notification_settings_id` int(11)
,`user_id` int(11)
,`user_notification_type_id` int(11)
,`udf1` varchar(500)
,`udf2` varchar(500)
,`udf3` varchar(500)
,`udf4` varchar(500)
,`udf5` varchar(500)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `user_notification_settings_all`
--

DROP TABLE IF EXISTS `user_notification_settings_all`;
CREATE TABLE IF NOT EXISTS `user_notification_settings_all` (
  `user_notification_settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_notification_type_id` int(11) DEFAULT NULL,
  `udf1` varchar(500) DEFAULT NULL,
  `udf2` varchar(500) DEFAULT NULL,
  `udf3` varchar(500) DEFAULT NULL,
  `udf4` varchar(500) DEFAULT NULL,
  `udf5` varchar(500) DEFAULT NULL,
  `flag1` varchar(1) DEFAULT NULL,
  `flag2` varchar(1) DEFAULT NULL,
  `flag3` varchar(1) DEFAULT NULL,
  `flag4` varchar(1) DEFAULT NULL,
  `flag5` varchar(1) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `last_modified_on` datetime DEFAULT NULL,
  `last_modified_by` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_notification_settings_id`),
  UNIQUE KEY `index_user_notification` (`user_id`,`user_notification_type_id`),
  KEY `fk_not_settings_user_all` (`user_id`),
  KEY `fk_settings_user_notification_type_all` (`user_notification_type_id`),
  KEY `fk_last_mod_by_notify_settings` (`last_modified_by`),
  KEY `fk_not_settings_client_all` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_notification_settings_all`
--


-- --------------------------------------------------------

--
-- Stand-in structure for view `user_notification_type`
--
DROP VIEW IF EXISTS `user_notification_type`;
CREATE TABLE IF NOT EXISTS `user_notification_type` (
`user_notification_type_id` int(11)
,`notification_type` varchar(100)
,`description` varchar(500)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `user_notification_type_all`
--

DROP TABLE IF EXISTS `user_notification_type_all`;
CREATE TABLE IF NOT EXISTS `user_notification_type_all` (
  `user_notification_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_type` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
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
  `last_modified_by` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`user_notification_type_id`),
  KEY `fk_last_mod_by_not_type` (`last_modified_by`),
  KEY `fk_user_noti_type_client_all` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_notification_type_all`
--


-- --------------------------------------------------------

--
-- Stand-in structure for view `user_payment_detail`
--
DROP VIEW IF EXISTS `user_payment_detail`;
CREATE TABLE IF NOT EXISTS `user_payment_detail` (
`upd_id` int(11)
,`user_id` int(11)
,`cc_type_id` int(11)
,`cc_ac_name` varchar(45)
,`cc_number` varchar(16)
,`cc_exp_month` int(11)
,`cc_exp_year` int(11)
,`cc_cvv` int(11)
,`bank_routing` decimal(9,0)
,`bank_account` decimal(10,0)
,`pay_prefer` varchar(1)
,`address1` varchar(100)
,`address2` varchar(100)
,`city` varchar(100)
,`state` varchar(100)
,`country` varchar(100)
,`zip` varchar(10)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`last_modified_by` int(11)
,`last_modified_on` datetime
,`created_on` datetime
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `user_payment_detail_all`
--

DROP TABLE IF EXISTS `user_payment_detail_all`;
CREATE TABLE IF NOT EXISTS `user_payment_detail_all` (
  `upd_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `cc_type_id` int(11) DEFAULT NULL,
  `cc_ac_name` varchar(45) DEFAULT NULL,
  `cc_number` varchar(16) DEFAULT NULL,
  `cc_exp_month` int(11) DEFAULT NULL,
  `cc_exp_year` int(11) DEFAULT NULL,
  `cc_cvv` int(11) DEFAULT NULL,
  `bank_routing` decimal(9,0) DEFAULT NULL,
  `bank_account` decimal(10,0) DEFAULT NULL,
  `pay_prefer` varchar(1) NOT NULL COMMENT 'either credit car or bank payment',
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
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
  PRIMARY KEY (`upd_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  KEY `fk_upd_user` (`user_id`),
  KEY `fk_last_mod_by_upda` (`last_modified_by`),
  KEY `fk_cctype_upd` (`cc_type_id`),
  KEY `fk_client_upd` (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='All the billing details of the user' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_payment_detail_all`
--

INSERT INTO `user_payment_detail_all` (`upd_id`, `user_id`, `cc_type_id`, `cc_ac_name`, `cc_number`, `cc_exp_month`, `cc_exp_year`, `cc_cvv`, `bank_routing`, `bank_account`, `pay_prefer`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(-1, -1, -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:07:03', '2012-01-10 20:07:06', 1),
(1, 1, 1, 'harish', '4154901099939071', 1, 2012, 0, NULL, NULL, 'c', 'asdfg', NULL, 'asfj;aj', 'CA', 'US', '90000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2012-01-28 13:26:20', '2011-10-12 22:22:34', 1),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-04 17:35:50', '2012-01-04 17:35:50', 1),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-04 19:55:03', '2012-01-04 19:55:03', 1),
(4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-10 20:07:46', '2012-01-10 20:07:48', 1),
(5, 5, 1, 'raghu', '4154901099939071', 1, 2012, 0, NULL, NULL, 'c', 'asdfasgasg', NULL, 'dfjg;lds', 'CA', 'US', '90000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2012-01-29 11:48:25', '2012-01-29 11:46:42', 1);

--
-- Triggers `user_payment_detail_all`
--
DROP TRIGGER IF EXISTS `trg_user_payment_aft_ins`;
DELIMITER //
CREATE TRIGGER `trg_user_payment_aft_ins` AFTER INSERT ON `user_payment_detail_all`
 FOR EACH ROW begin
insert into user_payment_detail_history_all(updh_id,upd_id,user_id,cc_type_id,cc_ac_name,cc_number,cc_exp_month,cc_exp_year,cc_cvv,bank_routing,bank_account,address1,address2,city,
state,country,zip,pay_prefer,action,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,client_id) 
values(null,new.upd_id,new.user_id,new.cc_type_id,new.cc_ac_name,new.cc_number,new.cc_exp_month,new.cc_exp_year,new.cc_cvv,new.bank_routing,new.bank_account,new.address1,new.address2,
new.city,new.state,new.country,new.zip,new.pay_prefer,'insert',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,
new.last_modified_on,new.last_modified_by,GetStartDate(),GetInfFuture(),new.client_id);
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `trg_user_payment_aft_upd`;
DELIMITER //
CREATE TRIGGER `trg_user_payment_aft_upd` AFTER UPDATE ON `user_payment_detail_all`
 FOR EACH ROW begin
update user_payment_detail_history_all
set end_date = GetEndDate() 
where 
upd_id = new.upd_id
and end_date = GetInfFuture();
insert into user_payment_detail_history_all(updh_id,upd_id,user_id,cc_type_id,cc_ac_name,cc_number,cc_exp_month,cc_exp_year,cc_cvv,bank_routing,bank_account,address1,address2,city,
state,country,zip,pay_prefer,action,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,client_id) 
values(null,new.upd_id,new.user_id,new.cc_type_id,new.cc_ac_name,new.cc_number,new.cc_exp_month,new.cc_exp_year,new.cc_cvv,new.bank_routing,new.bank_account,new.address1,new.address2,
new.city,new.state,new.country,new.zip,new.pay_prefer,'update',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,
new.last_modified_on,new.last_modified_by,GetStartDate(),GetInfFuture(),new.client_id);
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `trg_user_payment_bfr_del`;
DELIMITER //
CREATE TRIGGER `trg_user_payment_bfr_del` BEFORE DELETE ON `user_payment_detail_all`
 FOR EACH ROW begin
update user_payment_detail_history_all
set end_date = GetEndDate()
where 
upd_id = old.upd_id
and end_date = GetInfFuture(); 
insert into user_payment_detail_history_all(updh_id,upd_id,user_id,cc_type_id,cc_ac_name,cc_number,cc_exp_month,cc_exp_year,cc_cvv,bank_routing,bank_account,address1,address2,city,
state,country,zip,pay_prefer,action,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,client_id) 
values(null,old.upd_id,old.user_id,old.cc_type_id,old.cc_ac_name,old.cc_number,old.cc_exp_month,old.cc_exp_year,old.cc_cvv,old.bank_routing,old.bank_account,old.address1,old.address2,
old.city,old.state,old.country,old.zip,old.pay_prefer,'delete',old.udf1,old.udf2,old.udf3,old.udf4,old.udf5,old.flag1,old.flag2,old.flag3,old.flag4,old.flag5,old.created_on,
old.last_modified_on,old.last_modified_by,GetStartDate(),GetStartDate(),old.client_id);
end
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_payment_detail_history`
--
DROP VIEW IF EXISTS `user_payment_detail_history`;
CREATE TABLE IF NOT EXISTS `user_payment_detail_history` (
`updh_id` int(11)
,`upd_id` int(11)
,`user_id` int(11)
,`cc_type_id` int(11)
,`cc_ac_name` varchar(45)
,`cc_number` varchar(16)
,`cc_exp_month` int(11)
,`cc_exp_year` int(11)
,`cc_cvv` int(11)
,`bank_routing` decimal(9,0)
,`bank_account` decimal(10,0)
,`address1` varchar(100)
,`address2` varchar(100)
,`city` varchar(100)
,`state` varchar(100)
,`country` varchar(100)
,`zip` varchar(10)
,`pay_prefer` varchar(1)
,`action` varchar(20)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`start_date` datetime
,`end_date` datetime
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `user_payment_detail_history_all`
--

DROP TABLE IF EXISTS `user_payment_detail_history_all`;
CREATE TABLE IF NOT EXISTS `user_payment_detail_history_all` (
  `updh_id` int(11) NOT NULL AUTO_INCREMENT,
  `upd_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cc_type_id` int(11) DEFAULT NULL,
  `cc_ac_name` varchar(45) DEFAULT NULL,
  `cc_number` varchar(16) DEFAULT NULL,
  `cc_exp_month` int(11) DEFAULT NULL,
  `cc_exp_year` int(11) DEFAULT NULL,
  `cc_cvv` int(11) DEFAULT NULL,
  `bank_routing` decimal(9,0) DEFAULT NULL,
  `bank_account` decimal(10,0) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `pay_prefer` varchar(1) DEFAULT NULL,
  `action` varchar(20) NOT NULL COMMENT 'insert/update/delete',
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
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`updh_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `user_payment_detail_history_all`
--

INSERT INTO `user_payment_detail_history_all` (`updh_id`, `upd_id`, `user_id`, `cc_type_id`, `cc_ac_name`, `cc_number`, `cc_exp_month`, `cc_exp_year`, `cc_cvv`, `bank_routing`, `bank_account`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `pay_prefer`, `action`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `start_date`, `end_date`, `client_id`) VALUES
(-1, -1, -1, -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-09 22:27:28', '2012-01-09 22:27:30', 1),
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c', 'insert', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-12 22:22:34', '2011-10-15 23:45:57', 1),
(2, 1, 1, 1, 'harish', '4477 4669 0240 ', 1, 2036, 0, NULL, NULL, 'asdfgh', NULL, 'asfj;aj', 'CA', 'US', '90000', 'c', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-15 23:45:57', 1, '2011-10-15 23:45:58', '2011-10-17 13:09:57', 1),
(3, 1, 1, 1, 'harish', '4477 4669 0240 ', 1, 2036, 0, NULL, NULL, 'asdfgh', NULL, 'asfj;aj', 'CA', 'US', '90000', 'c', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-17 13:09:58', 1, '2011-10-17 13:09:58', '2011-10-30 18:40:20', 1),
(4, 1, 1, 1, 'harish', '447746690240', 1, 2035, 0, NULL, NULL, 'asdfgh', NULL, 'asfj;aj', 'CA', 'US', '90000', 'c', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-30 18:40:21', 1, '2011-10-30 18:40:21', '2011-11-05 13:37:05', 1),
(5, 1, 1, 1, 'harish', '447746690240', 1, 2012, 0, NULL, NULL, 'asdfg', NULL, 'asfj;aj', 'CA', 'US', '90000', 'c', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-11-05 13:37:06', 1, '2011-11-05 13:37:06', '2012-01-09 23:22:42', 1),
(6, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c', 'insert', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-04 17:35:50', '2012-01-04 17:35:50', -1, '2012-01-04 17:35:50', '3000-01-01 00:00:00', 1),
(7, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c', 'insert', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-04 19:55:03', '2012-01-04 19:55:03', -1, '2012-01-04 19:55:03', '3000-01-01 00:00:00', 1),
(8, 1, 1, 1, 'harish', '447746690240', 1, 2012, 0, NULL, NULL, 'asdfg', NULL, 'asfj;aj', 'CA', 'US', '90000', 'c', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2012-01-09 23:22:43', 1, '2012-01-09 23:22:43', '2012-01-09 23:23:58', 1),
(9, 1, 1, 1, 'harish', '447746690240', 1, 2012, 0, NULL, NULL, 'asdfg', NULL, 'asfj;aj', 'CA', 'US', '90000', 'c', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2012-01-09 23:23:59', 1, '2012-01-09 23:23:59', '2012-01-09 23:24:49', 1),
(10, 1, 1, 1, 'harish', '447746690240', 1, 2012, 0, NULL, NULL, 'asdfg', NULL, 'asfj;aj', 'CA', 'US', '90000', 'c', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2012-01-09 23:24:50', 1, '2012-01-09 23:24:50', '2012-01-09 23:26:04', 1),
(11, 1, 1, 1, 'harish', '447746690240', 1, 2012, 0, NULL, NULL, 'asdfg', NULL, 'asfj;aj', 'CA', 'US', '90000', 'c', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2012-01-09 23:26:05', 1, '2012-01-09 23:26:05', '2012-01-09 23:28:48', 1),
(12, 1, 1, 1, 'harish', '447746690240', 1, 2012, 0, NULL, NULL, 'asdfg', NULL, 'asfj;aj', 'CA', 'US', '90000', 'c', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2012-01-09 23:28:49', 1, '2012-01-09 23:28:49', '2012-01-09 23:29:13', 1),
(13, 1, 1, 1, 'harish', '447746690240', 1, 2012, 0, NULL, NULL, 'asdfg', NULL, 'asfj;aj', 'CA', 'US', '90000', 'c', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2012-01-09 23:29:14', 1, '2012-01-09 23:29:14', '2012-01-10 19:52:38', 1),
(14, 1, 1, 1, 'harish', '447746690240', 1, 2012, 0, NULL, NULL, 'asdfg', NULL, 'asfj;aj', 'CA', 'US', '90000', 'c', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2012-01-10 19:52:39', 1, '2012-01-10 19:52:39', '2012-01-10 19:59:10', 1),
(15, 1, 1, 1, 'harish', '4154901099939071', 1, 2012, 0, NULL, NULL, 'asdfg', NULL, 'asfj;aj', 'CA', 'US', '90000', 'c', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2012-01-10 19:52:39', 1, '2012-01-10 19:59:11', '2012-01-28 13:26:19', 1),
(16, -1, -1, -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C', 'insert', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-10 20:07:06', '2012-01-10 20:07:03', -1, '2012-01-10 20:07:17', '3000-01-01 00:00:00', 1),
(17, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C', 'insert', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-10 20:07:48', '2012-01-10 20:07:46', -1, '2012-01-10 20:07:52', '2012-01-10 20:08:02', -1),
(18, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-10 20:07:48', '2012-01-10 20:07:46', -1, '2012-01-10 20:08:03', '3000-01-01 00:00:00', 1),
(19, 1, 1, 1, 'harish', '4154901099939071', 1, 2012, 0, NULL, NULL, 'asdfg', NULL, 'asfj;aj', 'CA', 'US', '90000', 'c', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2012-01-28 13:26:20', 1, '2012-01-28 13:26:20', '3000-01-01 00:00:00', 1),
(20, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c', 'insert', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:46:42', '2012-01-29 11:46:42', -1, '2012-01-29 11:46:42', '2012-01-29 11:48:24', 1),
(21, 5, 5, 1, 'raghu', '4154901099939071', 1, 2012, 0, NULL, NULL, 'asdfasgasg', NULL, 'dfjg;lds', 'CA', 'US', '90000', 'c', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:46:42', '2012-01-29 11:48:25', 5, '2012-01-29 11:48:25', '3000-01-01 00:00:00', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_service`
--
DROP VIEW IF EXISTS `user_service`;
CREATE TABLE IF NOT EXISTS `user_service` (
`user_service_id` int(11)
,`user_id` int(11)
,`service_id` int(11)
,`start_date` datetime
,`end_date` datetime
,`priority` int(11)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `user_service_all`
--

DROP TABLE IF EXISTS `user_service_all`;
CREATE TABLE IF NOT EXISTS `user_service_all` (
  `user_service_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `priority` int(11) DEFAULT NULL,
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
  `last_modified_by` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_service_id`),
  KEY `fk_us_user` (`user_id`),
  KEY `fk_us_ser` (`service_id`),
  KEY `fk_las_mod_by` (`last_modified_by`),
  KEY `fk_client_us` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_service_all`
--


-- --------------------------------------------------------

--
-- Stand-in structure for view `user_type`
--
DROP VIEW IF EXISTS `user_type`;
CREATE TABLE IF NOT EXISTS `user_type` (
`user_type_id` int(11)
,`name` varchar(45)
,`description` varchar(200)
,`min_balance` decimal(19,4) unsigned zerofill
,`min_balance_type` varchar(45)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `user_type_all`
--

DROP TABLE IF EXISTS `user_type_all`;
CREATE TABLE IF NOT EXISTS `user_type_all` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL COMMENT 'trial/prepaid/premium/postpaid users',
  `description` varchar(200) DEFAULT NULL COMMENT 'Description of the differnent user types like toll operatore,normal users etc',
  `min_balance` decimal(19,4) unsigned zerofill DEFAULT NULL COMMENT 'Min balance amount depending on the type of user',
  `min_balance_type` varchar(45) DEFAULT NULL COMMENT 'value, percentage',
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
  `last_modified_by` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_type_id`),
  KEY `fk_last_mod_by_uta` (`last_modified_by`),
  KEY `fk_client_ut` (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_type_all`
--

INSERT INTO `user_type_all` (`user_type_id`, `name`, `description`, `min_balance`, `min_balance_type`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `client_id`) VALUES
(1, 'user', NULL, '000000000000010.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 21:18:49', '2011-10-12 21:18:52', -1, 1),
(2, 'TollOperator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-18 08:02:01', '2011-10-18 08:02:04', -1, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_vehicle`
--
DROP VIEW IF EXISTS `user_vehicle`;
CREATE TABLE IF NOT EXISTS `user_vehicle` (
`user_vehicle_id` int(11)
,`user_id` int(11)
,`vehicle_start_date` datetime
,`vehicle_end_date` datetime
,`is_active` varchar(1)
,`registration_no` varchar(45)
,`registered_state` varchar(45)
,`owner_type_id` int(11)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`last_modified_by` int(11)
,`last_modified_on` datetime
,`created_on` datetime
,`client_id` int(11)
,`model_id` int(11)
,`vin` varchar(25)
,`color` varchar(45)
,`manufactured_year` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `user_vehicle_all`
--

DROP TABLE IF EXISTS `user_vehicle_all`;
CREATE TABLE IF NOT EXISTS `user_vehicle_all` (
  `user_vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'user id-- foreign key to users_all table',
  `vehicle_start_date` datetime DEFAULT NULL,
  `vehicle_end_date` datetime DEFAULT NULL,
  `is_active` varchar(1) NOT NULL COMMENT 'which vehicle is active when app is switched on',
  `registration_no` varchar(45) NOT NULL,
  `registered_state` varchar(45) NOT NULL,
  `owner_type_id` int(11) DEFAULT NULL COMMENT 'to show whether the vehicle is still owned by the user',
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
  `model_id` int(11) NOT NULL,
  `vin` varchar(25) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `manufactured_year` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_vehicle_id`),
  UNIQUE KEY `uk_user_reg_vehicle` (`user_id`,`registration_no`),
  KEY `fk_user_user_vehicle` (`user_id`),
  KEY `fk_mod_on` (`last_modified_by`),
  KEY `fk_uv_co` (`owner_type_id`),
  KEY `fk_client_uv` (`client_id`),
  KEY `fk_model_uv` (`model_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='List of vehicles registered by the user' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user_vehicle_all`
--

INSERT INTO `user_vehicle_all` (`user_vehicle_id`, `user_id`, `vehicle_start_date`, `vehicle_end_date`, `is_active`, `registration_no`, `registered_state`, `owner_type_id`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`, `model_id`, `vin`, `color`, `manufactured_year`) VALUES
(3, 2, '2012-01-04 18:35:36', '2013-01-01 00:00:00', 'N', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2012-01-04 18:35:36', '2012-01-04 18:35:36', 1, 1, NULL, '1234', 2010),
(4, 3, '2012-01-04 19:55:40', '2013-01-01 00:00:00', 'T', '1453', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2012-01-04 19:55:40', '2012-01-04 19:55:40', 1, 1, NULL, 'red', 2010),
(5, 1, '2012-01-28 13:29:48', NULL, 'Y', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2012-01-28 13:29:48', '2012-01-28 13:29:48', 1, 4, NULL, NULL, 2012),
(7, 5, '2012-01-29 11:58:59', NULL, 'T', '789', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2012-01-29 11:58:59', '2012-01-29 11:58:59', 1, 3, NULL, 'red', 2012);

--
-- Triggers `user_vehicle_all`
--
DROP TRIGGER IF EXISTS `trg_user_vehicle_aft_ins`;
DELIMITER //
CREATE TRIGGER `trg_user_vehicle_aft_ins` AFTER INSERT ON `user_vehicle_all`
 FOR EACH ROW begin
insert into user_vehicle_history_all (uvh_id,user_vehicle_id,user_id,is_active,vehicle_start_date,vehicle_end_date,registration_no,registered_state,owner_type_id,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action,client_id,model_id,vin,color,manufactured_year) 
values(null,new.user_vehicle_id,new.user_id,new.is_active,new.vehicle_start_date,new.vehicle_end_date,new.registration_no,new.registered_state,new.owner_type_id,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,
GetStartDate(),GetInfFuture(),'insert',new.client_id,new.model_id,new.vin,new.color,new.manufactured_year);
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `trg_user_vehicle_aft_upd`;
DELIMITER //
CREATE TRIGGER `trg_user_vehicle_aft_upd` AFTER UPDATE ON `user_vehicle_all`
 FOR EACH ROW begin
update user_vehicle_history_all
set end_date = GetEndDate()
where 
user_vehicle_id = new.user_vehicle_id
and end_date = GetInfFuture();
insert into user_vehicle_history_all(uvh_id,user_vehicle_id,user_id,is_active,vehicle_start_date,vehicle_end_date,registration_no,registered_state,owner_type_id,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action,client_id,model_id,vin,color,manufactured_year) 
values(null,new.user_vehicle_id,new.user_id,new.is_active,new.vehicle_start_date,new.vehicle_end_date,new.registration_no,new.registered_state,new.owner_type_id,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,
GetStartDate(),GetInfFuture(),'update',new.client_id,new.model_id,new.vin,new.color,new.manufactured_year);
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `trg_user_vehicle_bfr_del`;
DELIMITER //
CREATE TRIGGER `trg_user_vehicle_bfr_del` BEFORE DELETE ON `user_vehicle_all`
 FOR EACH ROW begin
update user_vehicle_history_all
set end_date = GetEndDate()
where 
user_vehicle_id = old.user_vehicle_id
and end_date = GetInfFuture(); 
insert into user_vehicle_history_all(uvh_id,user_vehicle_id,user_id,is_active,vehicle_start_date,vehicle_end_date,registration_no,registered_state,owner_type_id,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action,client_id,model_id,vin,color,manufactured_year) 
values(null,old.user_vehicle_id,old.user_id,old.is_active,old.vehicle_start_date,old.vehicle_end_date,old.registration_no,old.registered_state,old.owner_type_id,
old.udf1,old.udf2,old.udf3,old.udf4,old.udf5,old.flag1,old.flag2,old.flag3,old.flag4,old.flag5,old.created_on,old.last_modified_on,old.last_modified_by,
GetStartDate(),GetStartDate(),'delete',old.client_id,old.model_id,old.vin,old.color,manufactured_year);
end
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_vehicle_history`
--
DROP VIEW IF EXISTS `user_vehicle_history`;
CREATE TABLE IF NOT EXISTS `user_vehicle_history` (
`uvh_id` int(11)
,`user_vehicle_id` int(11)
,`user_id` int(11)
,`is_active` varchar(1)
,`vehicle_start_date` datetime
,`vehicle_end_date` datetime
,`registration_no` varchar(45)
,`registered_state` varchar(45)
,`owner_type_id` int(11)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`start_date` datetime
,`end_date` datetime
,`action` varchar(20)
,`client_id` int(11)
,`model_id` int(11)
,`vin` varchar(25)
,`color` varchar(45)
,`manufactured_year` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `user_vehicle_history_all`
--

DROP TABLE IF EXISTS `user_vehicle_history_all`;
CREATE TABLE IF NOT EXISTS `user_vehicle_history_all` (
  `uvh_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_vehicle_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` varchar(1) NOT NULL COMMENT 'which vehicle is active when app is switched on',
  `vehicle_start_date` datetime DEFAULT NULL,
  `vehicle_end_date` datetime DEFAULT NULL,
  `registration_no` varchar(45) NOT NULL,
  `registered_state` varchar(45) NOT NULL,
  `owner_type_id` int(11) DEFAULT NULL COMMENT 'to show whether the vehicle is still owned by the user',
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
  `client_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `vin` varchar(25) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `manufactured_year` int(11) DEFAULT NULL,
  PRIMARY KEY (`uvh_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='List of vehicles registered by the user' AUTO_INCREMENT=128 ;

--
-- Dumping data for table `user_vehicle_history_all`
--

INSERT INTO `user_vehicle_history_all` (`uvh_id`, `user_vehicle_id`, `user_id`, `is_active`, `vehicle_start_date`, `vehicle_end_date`, `registration_no`, `registered_state`, `owner_type_id`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `start_date`, `end_date`, `action`, `client_id`, `model_id`, `vin`, `color`, `manufactured_year`) VALUES
(1, 1, 1, 'N', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-14 01:02:24', '2011-10-19 21:32:15', 'insert', 1, 0, NULL, NULL, NULL),
(11, 3, 1, 'N', '2011-10-16 00:23:39', '2012-01-01 00:00:00', 'asdfg', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-16 00:24:18', '2011-10-16 00:24:18', 1, '2011-10-16 00:24:24', '2011-10-16 00:24:24', 'delete', 1, 0, NULL, NULL, NULL),
(13, 4, 1, 'N', '2011-10-16 08:42:42', '2012-01-01 00:00:00', '123456', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-16 08:44:23', '2011-10-16 08:44:23', 1, '2011-10-16 08:55:21', '2011-10-16 08:55:21', 'delete', 1, 0, NULL, NULL, NULL),
(15, 5, 1, 'N', '2011-10-16 08:56:57', '2012-01-01 00:00:00', '123456', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-16 08:57:52', '2011-10-16 08:57:52', 1, '2011-10-16 09:18:27', '2011-10-16 09:18:27', 'delete', 1, 0, NULL, NULL, NULL),
(21, 3, 1, 'N', '2011-10-17 13:14:59', '2011-10-24 00:00:00', '123456', 'DE', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-17 13:16:28', '2011-10-17 13:16:44', 1, '2011-10-17 13:16:44', '2011-10-17 13:16:54', 'update', 1, 0, NULL, NULL, NULL),
(23, 1, 1, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-19 21:32:16', '2011-10-19 21:39:31', 'update', 1, 0, NULL, NULL, NULL),
(24, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-19 21:39:32', '2011-10-19 21:40:41', 'update', 1, 0, NULL, NULL, NULL),
(31, 1, 1, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-30 18:25:44', '2011-10-30 18:26:19', 'update', 1, 0, NULL, NULL, NULL),
(32, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-30 18:26:20', '2011-10-30 18:26:29', 'update', 1, 0, NULL, NULL, NULL),
(33, 1, 1, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-30 18:26:30', '2011-10-30 18:26:31', 'update', 1, 0, NULL, NULL, NULL),
(34, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-30 18:26:32', '2011-10-30 18:26:34', 'update', 1, 0, NULL, NULL, NULL),
(35, 1, 1, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-30 18:26:35', '2011-10-30 18:26:37', 'update', 1, 0, NULL, NULL, NULL),
(36, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-30 18:26:38', '2011-10-30 18:58:07', 'update', 1, 0, NULL, NULL, NULL),
(37, 1, 1, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-30 18:58:08', '2011-10-30 19:01:28', 'update', 1, 0, NULL, NULL, NULL),
(38, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-30 19:01:29', '2011-10-30 19:01:30', 'update', 1, 0, NULL, NULL, NULL),
(39, 1, 1, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-30 19:01:31', '2011-10-30 19:01:33', 'update', 1, 0, NULL, NULL, NULL),
(40, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-30 19:01:34', '2011-10-30 19:01:36', 'update', 1, 0, NULL, NULL, NULL),
(41, 1, 1, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-30 19:01:37', '2011-10-30 19:05:46', 'update', 1, 0, NULL, NULL, NULL),
(42, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-30 19:05:47', '2011-10-30 19:05:49', 'update', 1, 0, NULL, NULL, NULL),
(43, 1, 1, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-30 19:05:50', '2011-10-30 20:31:10', 'update', 1, 0, NULL, NULL, NULL),
(44, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-30 20:31:11', '2011-10-30 20:36:31', 'update', 1, 0, NULL, NULL, NULL),
(45, 1, 1, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-30 20:36:32', '2011-10-30 20:36:37', 'update', 1, 0, NULL, NULL, NULL),
(46, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-30 20:36:38', '2011-10-30 20:36:56', 'update', 1, 0, NULL, NULL, NULL),
(47, 1, 1, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-30 20:36:57', '2011-11-03 22:08:03', 'update', 1, 0, NULL, NULL, NULL),
(49, 2, 1, 'Y', '2011-10-30 22:53:30', '2012-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 22:53:33', '2011-10-30 22:53:33', 1, '2011-11-03 22:07:51', '2011-11-03 22:08:57', 'update', 1, 0, NULL, 'blue', 2010),
(50, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-11-03 22:08:04', '2011-11-03 22:08:48', 'update', 1, 0, NULL, NULL, NULL),
(51, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-11-03 22:08:49', '2011-11-05 11:31:46', 'update', 1, 1, NULL, NULL, NULL),
(52, 2, 1, 'Y', '2011-10-30 22:53:30', '2012-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 22:53:33', '2011-10-30 22:53:33', 1, '2011-11-03 22:08:58', '2011-11-10 20:03:08', 'update', 1, 1, NULL, 'blue', 2010),
(53, 1, 1, 'T', '2011-10-14 01:01:46', '2014-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:31:47', 1, '2011-11-05 11:31:47', '2011-11-05 11:33:23', 'update', 1, 1, NULL, '', 0),
(54, 1, 1, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2011-11-05 11:33:24', '2011-11-10 20:03:01', 'update', 1, 1, NULL, '', 0),
(59, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2011-11-10 20:03:02', '2011-11-10 20:03:08', 'update', 1, 1, NULL, '', 0),
(60, 2, 1, 'T', '2011-10-30 22:53:30', '2012-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 22:53:33', '2011-10-30 22:53:33', 1, '2011-11-10 20:03:09', '2012-01-07 20:02:32', 'update', 1, 1, NULL, 'blue', 2010),
(61, 1, 1, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2011-11-10 20:03:09', '2011-11-10 20:03:11', 'update', 1, 1, NULL, '', 0),
(62, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2011-11-10 20:03:12', '2012-01-07 20:02:29', 'update', 1, 1, NULL, '', 0),
(63, 3, 2, 'N', '2012-01-04 18:35:36', '2013-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-04 18:35:36', '2012-01-04 18:35:36', 2, '2012-01-04 18:35:36', '3000-01-01 00:00:00', 'insert', 1, 1, NULL, '1234', 2010),
(64, 4, 3, 'N', '2012-01-04 19:55:40', '2013-01-01 00:00:00', '1453', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-04 19:55:40', '2012-01-04 19:55:40', 3, '2012-01-04 19:55:40', '2012-01-20 09:53:01', 'insert', 1, 1, NULL, 'red', 2010),
(65, 1, 1, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2012-01-07 20:02:30', '2012-01-07 20:02:32', 'update', 1, 1, NULL, '', 0),
(66, 2, 1, 'Y', '2011-10-30 22:53:30', '2012-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 22:53:33', '2011-10-30 22:53:33', 1, '2012-01-07 20:02:33', '2012-01-07 20:02:35', 'update', 1, 1, NULL, 'blue', 2010),
(67, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2012-01-07 20:02:33', '2012-01-07 20:02:35', 'update', 1, 1, NULL, '', 0),
(68, 2, 1, 'T', '2011-10-30 22:53:30', '2012-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 22:53:33', '2011-10-30 22:53:33', 1, '2012-01-07 20:02:36', '2012-01-07 20:22:46', 'update', 1, 1, NULL, 'blue', 2010),
(69, 1, 1, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2012-01-07 20:02:36', '2012-01-07 20:22:46', 'update', 1, 1, NULL, '', 0),
(70, 2, 1, 'Y', '2011-10-30 22:53:30', '2012-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 22:53:33', '2011-10-30 22:53:33', 1, '2012-01-07 20:22:47', '2012-01-07 20:23:52', 'update', 1, 1, NULL, 'blue', 2010),
(71, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2012-01-07 20:22:47', '2012-01-07 20:23:52', 'update', 1, 1, NULL, '', 0),
(72, 2, 1, 'T', '2011-10-30 22:53:30', '2012-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 22:53:33', '2011-10-30 22:53:33', 1, '2012-01-07 20:23:53', '2012-01-07 20:24:30', 'update', 1, 1, NULL, 'blue', 2010),
(73, 1, 1, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2012-01-07 20:23:53', '2012-01-07 20:24:30', 'update', 1, 1, NULL, '', 0),
(74, 2, 1, 'Y', '2011-10-30 22:53:30', '2012-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 22:53:33', '2011-10-30 22:53:33', 1, '2012-01-07 20:24:31', '2012-01-07 20:24:38', 'update', 1, 1, NULL, 'blue', 2010),
(75, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2012-01-07 20:24:31', '2012-01-07 20:24:38', 'update', 1, 1, NULL, '', 0),
(76, 2, 1, 'T', '2011-10-30 22:53:30', '2012-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 22:53:33', '2011-10-30 22:53:33', 1, '2012-01-07 20:24:39', '2012-01-07 20:30:44', 'update', 1, 1, NULL, 'blue', 2010),
(77, 1, 1, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2012-01-07 20:24:39', '2012-01-07 20:30:44', 'update', 1, 1, NULL, '', 0),
(78, 2, 1, 'Y', '2011-10-30 22:53:30', '2012-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 22:53:33', '2011-10-30 22:53:33', 1, '2012-01-07 20:30:45', '2012-01-07 20:31:01', 'update', 1, 1, NULL, 'blue', 2010),
(79, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2012-01-07 20:30:45', '2012-01-07 20:31:01', 'update', 1, 1, NULL, '', 0),
(80, 2, 1, 'T', '2011-10-30 22:53:30', '2012-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 22:53:33', '2011-10-30 22:53:33', 1, '2012-01-07 20:31:02', '2012-01-07 20:35:25', 'update', 1, 1, NULL, 'blue', 2010),
(81, 1, 1, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2012-01-07 20:31:02', '2012-01-07 20:35:25', 'update', 1, 1, NULL, '', 0),
(82, 2, 1, 'Y', '2011-10-30 22:53:30', '2012-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 22:53:33', '2011-10-30 22:53:33', 1, '2012-01-07 20:35:26', '2012-01-07 20:35:42', 'update', 1, 1, NULL, 'blue', 2010),
(83, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2012-01-07 20:35:26', '2012-01-07 20:35:43', 'update', 1, 1, NULL, '', 0),
(84, 2, 1, 'T', '2011-10-30 22:53:30', '2012-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 22:53:33', '2011-10-30 22:53:33', 1, '2012-01-07 20:35:43', '2012-01-07 20:36:10', 'update', 1, 1, NULL, 'blue', 2010),
(85, 1, 1, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2012-01-07 20:35:44', '2012-01-07 20:36:10', 'update', 1, 1, NULL, '', 0),
(86, 2, 1, 'Y', '2011-10-30 22:53:30', '2012-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 22:53:33', '2011-10-30 22:53:33', 1, '2012-01-07 20:36:11', '2012-01-07 20:37:47', 'update', 1, 1, NULL, 'blue', 2010),
(87, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2012-01-07 20:36:11', '2012-01-07 20:37:47', 'update', 1, 1, NULL, '', 0),
(88, 2, 1, 'Y', '2011-10-30 22:53:30', '2012-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 22:53:33', '2011-10-30 22:53:33', 1, '2012-01-07 20:37:48', '2012-01-07 20:37:59', 'update', 1, 1, NULL, 'blue', 2010),
(89, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2012-01-07 20:37:48', '2012-01-07 20:37:59', 'update', 1, 1, NULL, '', 0),
(90, 2, 1, 'T', '2011-10-30 22:53:30', '2012-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 22:53:33', '2011-10-30 22:53:33', 1, '2012-01-07 20:38:00', '2012-01-07 20:38:17', 'update', 1, 1, NULL, 'blue', 2010),
(91, 1, 1, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2012-01-07 20:38:00', '2012-01-07 20:38:17', 'update', 1, 1, NULL, '', 0),
(92, 2, 1, 'Y', '2011-10-30 22:53:30', '2012-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 22:53:33', '2011-10-30 22:53:33', 1, '2012-01-07 20:38:18', '2012-01-09 22:39:04', 'update', 1, 1, NULL, 'blue', 2010),
(93, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2012-01-07 20:38:18', '2012-01-09 22:39:05', 'update', 1, 1, NULL, '', 0),
(94, 2, 1, 'T', '2011-10-30 22:53:30', '2012-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 22:53:33', '2011-10-30 22:53:33', 1, '2012-01-09 22:39:05', '2012-01-10 20:00:21', 'update', 1, 1, NULL, 'blue', 2010),
(95, 1, 1, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2012-01-09 22:39:06', '2012-01-10 20:00:21', 'update', 1, 1, NULL, '', 0),
(96, 2, 1, 'Y', '2011-10-30 22:53:30', '2012-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 22:53:33', '2011-10-30 22:53:33', 1, '2012-01-10 20:00:22', '2012-01-28 12:55:37', 'update', 1, 1, NULL, 'blue', 2010),
(97, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2012-01-10 20:00:22', '2012-01-23 13:28:23', 'update', 1, 1, NULL, '', 0),
(98, 4, 3, 'T', '2012-01-04 19:55:40', '2013-01-01 00:00:00', '1453', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-04 19:55:40', '2012-01-04 19:55:40', 3, '2012-01-20 09:53:02', '3000-01-01 00:00:00', 'update', 1, 1, NULL, 'red', 2010),
(99, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2012-01-23 13:28:24', '2012-01-28 12:55:31', 'update', 1, 1, 'abcdef', '', 0),
(100, 1, 1, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-11-05 11:33:24', 1, '2012-01-28 12:55:32', '2012-01-28 12:55:32', 'delete', 1, 1, 'abcdef', '', NULL),
(101, 2, 1, 'Y', '2011-10-30 22:53:30', '2012-01-01 00:00:00', '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-30 22:53:33', '2011-10-30 22:53:33', 1, '2012-01-28 12:55:38', '2012-01-28 12:55:38', 'delete', 1, 1, NULL, 'blue', NULL),
(102, 5, 1, 'N', '2012-01-28 13:29:48', NULL, '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-28 13:29:48', '2012-01-28 13:29:48', 1, '2012-01-28 13:29:48', '2012-01-28 13:30:29', 'insert', 1, 4, NULL, NULL, 2012),
(103, 5, 1, 'T', '2012-01-28 13:29:48', NULL, '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-28 13:29:48', '2012-01-28 13:29:48', 1, '2012-01-28 13:30:30', '2012-01-28 13:31:19', 'update', 1, 4, NULL, NULL, 2012),
(104, 5, 1, 'Y', '2012-01-28 13:29:48', NULL, '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-28 13:29:48', '2012-01-28 13:29:48', 1, '2012-01-28 13:31:20', '2012-01-28 13:31:22', 'update', 1, 4, NULL, NULL, 2012),
(105, 5, 1, 'T', '2012-01-28 13:29:48', NULL, '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-28 13:29:48', '2012-01-28 13:29:48', 1, '2012-01-28 13:31:23', '2012-01-28 13:31:24', 'update', 1, 4, NULL, NULL, 2012),
(106, 5, 1, 'Y', '2012-01-28 13:29:48', NULL, '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-28 13:29:48', '2012-01-28 13:29:48', 1, '2012-01-28 13:31:25', '2012-01-28 13:31:26', 'update', 1, 4, NULL, NULL, 2012),
(107, 5, 1, 'T', '2012-01-28 13:29:48', NULL, '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-28 13:29:48', '2012-01-28 13:29:48', 1, '2012-01-28 13:31:27', '2012-01-28 13:32:42', 'update', 1, 4, NULL, NULL, 2012),
(108, 5, 1, 'Y', '2012-01-28 13:29:48', NULL, '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-28 13:29:48', '2012-01-28 13:29:48', 1, '2012-01-28 13:32:43', '2012-01-28 13:32:45', 'update', 1, 4, NULL, NULL, 2012),
(109, 5, 1, 'T', '2012-01-28 13:29:48', NULL, '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-28 13:29:48', '2012-01-28 13:29:48', 1, '2012-01-28 13:32:46', '2012-02-14 20:00:22', 'update', 1, 4, NULL, NULL, 2012),
(110, 6, 5, 'N', '2012-01-29 11:47:23', NULL, '789', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:47:23', '2012-01-29 11:47:23', 5, '2012-01-29 11:47:24', '2012-01-29 11:49:49', 'insert', 1, 1, NULL, 'red', 2012),
(111, 6, 5, 'I', '2012-01-29 11:47:23', NULL, '789', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:47:23', '2012-01-29 11:47:23', 5, '2012-01-29 11:49:50', '2012-01-29 11:52:48', 'update', 1, 1, NULL, 'red', 2012),
(112, 6, 5, 'T', '2012-01-29 11:47:23', NULL, '789', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:47:23', '2012-01-29 11:47:23', 5, '2012-01-29 11:52:49', '2012-01-29 11:54:06', 'update', 1, 1, NULL, 'red', 2012),
(113, 6, 5, 'Y', '2012-01-29 11:47:23', NULL, '789', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:47:23', '2012-01-29 11:47:23', 5, '2012-01-29 11:54:07', '2012-01-29 11:54:11', 'update', 1, 1, NULL, 'red', 2012),
(114, 6, 5, 'T', '2012-01-29 11:47:23', NULL, '789', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:47:23', '2012-01-29 11:47:23', 5, '2012-01-29 11:54:12', '2012-01-29 11:54:14', 'update', 1, 1, NULL, 'red', 2012),
(115, 6, 5, 'Y', '2012-01-29 11:47:23', NULL, '789', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:47:23', '2012-01-29 11:47:23', 5, '2012-01-29 11:54:15', '2012-01-29 11:54:16', 'update', 1, 1, NULL, 'red', 2012),
(116, 6, 5, 'T', '2012-01-29 11:47:23', NULL, '789', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:47:23', '2012-01-29 11:47:23', 5, '2012-01-29 11:54:17', '2012-01-29 11:58:37', 'update', 1, 1, NULL, 'red', 2012),
(117, 6, 5, 'T', '2012-01-29 11:47:23', NULL, '789', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:47:23', '2012-01-29 11:47:23', 5, '2012-01-29 11:58:38', '2012-01-29 11:58:38', 'delete', 1, 1, NULL, 'red', NULL),
(118, 7, 5, 'T', '2012-01-29 11:58:59', NULL, '789', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:58:59', '2012-01-29 11:58:59', 5, '2012-01-29 11:58:59', '2012-01-29 11:59:02', 'insert', 1, 3, NULL, 'red', 2012),
(119, 7, 5, 'Y', '2012-01-29 11:58:59', NULL, '789', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:58:59', '2012-01-29 11:58:59', 5, '2012-01-29 11:59:03', '2012-01-29 11:59:05', 'update', 1, 3, NULL, 'red', 2012),
(120, 7, 5, 'T', '2012-01-29 11:58:59', NULL, '789', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:58:59', '2012-01-29 11:58:59', 5, '2012-01-29 11:59:06', '2012-01-29 11:59:11', 'update', 1, 3, NULL, 'red', 2012),
(121, 7, 5, 'Y', '2012-01-29 11:58:59', NULL, '789', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:58:59', '2012-01-29 11:58:59', 5, '2012-01-29 11:59:12', '2012-01-29 11:59:13', 'update', 1, 3, NULL, 'red', 2012),
(122, 7, 5, 'T', '2012-01-29 11:58:59', NULL, '789', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-29 11:58:59', '2012-01-29 11:58:59', 5, '2012-01-29 11:59:14', '3000-01-01 00:00:00', 'update', 1, 3, NULL, 'red', 2012),
(123, 5, 1, 'Y', '2012-01-28 13:29:48', NULL, '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-28 13:29:48', '2012-01-28 13:29:48', 1, '2012-02-14 20:00:23', '2012-02-14 20:00:25', 'update', 1, 4, NULL, NULL, 2012),
(124, 5, 1, 'T', '2012-01-28 13:29:48', NULL, '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-28 13:29:48', '2012-01-28 13:29:48', 1, '2012-02-14 20:00:26', '2012-03-30 10:54:40', 'update', 1, 4, NULL, NULL, 2012),
(125, 5, 1, 'Y', '2012-01-28 13:29:48', NULL, '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-28 13:29:48', '2012-01-28 13:29:48', 1, '2012-03-30 10:54:41', '2012-03-30 10:54:52', 'update', 1, 4, NULL, NULL, 2012),
(126, 5, 1, 'T', '2012-01-28 13:29:48', NULL, '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-28 13:29:48', '2012-01-28 13:29:48', 1, '2012-03-30 10:54:53', '2012-03-30 10:54:56', 'update', 1, 4, NULL, NULL, 2012),
(127, 5, 1, 'Y', '2012-01-28 13:29:48', NULL, '1234', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-01-28 13:29:48', '2012-01-28 13:29:48', 1, '2012-03-30 10:54:57', '3000-01-01 00:00:00', 'update', 1, 4, NULL, NULL, 2012);

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_vehicle_tolloperator`
--
DROP VIEW IF EXISTS `user_vehicle_tolloperator`;
CREATE TABLE IF NOT EXISTS `user_vehicle_tolloperator` (
`uvt_id` int(11)
,`user_vehicle_id` int(11)
,`toll_operator_id` int(11)
,`status` varchar(100)
,`start_date` datetime
,`end_date` datetime
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`last_modified_by` int(11)
,`last_modified_on` datetime
,`created_on` datetime
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `user_vehicle_tolloperator_all`
--

DROP TABLE IF EXISTS `user_vehicle_tolloperator_all`;
CREATE TABLE IF NOT EXISTS `user_vehicle_tolloperator_all` (
  `uvt_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_vehicle_id` int(11) NOT NULL,
  `toll_operator_id` int(11) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
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
  PRIMARY KEY (`uvt_id`),
  KEY `fk_uvt_uv` (`user_vehicle_id`),
  KEY `fk_uvt_to` (`toll_operator_id`),
  KEY `fk_uvt_lmb` (`last_modified_by`),
  KEY `fk_uvt_client` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_vehicle_tolloperator_all`
--


-- --------------------------------------------------------

--
-- Stand-in structure for view `vehicle_movement_log`
--
DROP VIEW IF EXISTS `vehicle_movement_log`;
CREATE TABLE IF NOT EXISTS `vehicle_movement_log` (
`vml_id` int(11)
,`vml_type_id` int(11)
,`device_history_id` int(11)
,`toll_location_id` int(11)
,`geometry` geometry
,`timestamp` datetime
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`created_on` datetime
,`client_id` int(11)
,`latitude` decimal(9,6)
,`longitude` decimal(9,6)
,`status` varchar(45)
,`toll_session_id` varchar(1000)
,`distance` float
);
-- --------------------------------------------------------

--
-- Table structure for table `vehicle_movement_log_all`
--

DROP TABLE IF EXISTS `vehicle_movement_log_all`;
CREATE TABLE IF NOT EXISTS `vehicle_movement_log_all` (
  `vml_id` int(11) NOT NULL AUTO_INCREMENT,
  `vml_type_id` int(11) NOT NULL,
  `device_history_id` int(11) NOT NULL,
  `toll_location_id` int(11) DEFAULT NULL,
  `geometry` geometry DEFAULT NULL,
  `timestamp` datetime NOT NULL,
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
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT 'tentative/paid',
  `toll_session_id` varchar(1000) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  PRIMARY KEY (`vml_id`),
  KEY `fk_vml_dh` (`device_history_id`),
  KEY `fk_vml_vmlt` (`vml_type_id`),
  KEY `fk_last_mod_by_vmla` (`last_modified_by`),
  KEY `fk_client_vml` (`client_id`),
  KEY `fk_vml_toll_location` (`toll_location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Trackiing the vehicle movement ' AUTO_INCREMENT=353 ;

--
-- Dumping data for table `vehicle_movement_log_all`
--

INSERT INTO `vehicle_movement_log_all` (`vml_id`, `vml_type_id`, `device_history_id`, `toll_location_id`, `geometry`, `timestamp`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_on`, `last_modified_by`, `created_on`, `client_id`, `latitude`, `longitude`, `status`, `toll_session_id`, `distance`) VALUES
(1, 1, 36, NULL, NULL, '2011-10-27 18:43:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-27 18:43:27', 1, '2011-10-27 18:43:27', 1, '31.064520', '-104.263282', NULL, '24#2011-10-27 18:43:27.055', 104.127),
(2, 1, 36, NULL, NULL, '2011-10-27 18:43:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-27 18:43:50', 1, '2011-10-27 18:43:50', 1, '31.061340', '-104.153717', NULL, '24#2011-10-27 18:43:50.275', 104.127),
(3, 1, 36, NULL, NULL, '2011-10-27 20:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-27 20:04:23', 1, '2011-10-27 20:04:23', 1, '31.064520', '-104.263282', NULL, '24#2011-10-27 20:04:23.81', 104.127),
(4, 1, 36, NULL, NULL, '2011-10-27 20:04:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-27 20:04:45', 1, '2011-10-27 20:04:45', 1, '31.061340', '-104.153717', NULL, '24#2011-10-27 20:04:45.842', 104.127),
(5, 1, 36, NULL, NULL, '2011-10-27 20:08:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-27 20:08:34', 1, '2011-10-27 20:08:34', 1, '31.064520', '-104.263282', NULL, '24#2011-10-27 20:08:34.135', 104.127),
(6, 1, 36, NULL, NULL, '2011-10-27 20:08:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-27 20:08:57', 1, '2011-10-27 20:08:57', 1, '31.061340', '-104.153717', NULL, '24#2011-10-27 20:08:57.943', 104.127),
(7, 1, 36, NULL, NULL, '2011-10-27 22:43:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-27 22:43:10', 1, '2011-10-27 22:43:10', 1, '31.064520', '-104.263282', NULL, '24#2011-10-27 22:43:10.333', 104.127),
(8, 1, 36, NULL, NULL, '2011-10-27 22:49:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-27 22:49:45', 1, '2011-10-27 22:49:45', 1, '31.064520', '-104.263282', NULL, '24#2011-10-27 22:49:45.897', 104.127),
(9, 1, 36, NULL, NULL, '2011-10-28 02:29:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-28 02:29:36', 1, '2011-10-28 02:29:36', 1, '31.064520', '-104.263282', NULL, '24#2011-10-28 02:29:36.761', 104.127),
(10, 1, 36, NULL, NULL, '2011-10-28 02:29:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-28 02:29:58', 1, '2011-10-28 02:29:58', 1, '31.061340', '-104.153717', NULL, '24#2011-10-28 02:29:58.614', 104.127),
(11, 1, 64, NULL, NULL, '2012-02-16 09:43:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 09:43:01', 1, '2012-02-16 09:43:01', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 09:43:01.471', 104.127),
(12, 1, 64, NULL, NULL, '2012-02-16 09:43:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 09:43:20', 1, '2012-02-16 09:43:20', 1, '31.061340', '-104.153717', NULL, '24#2012-02-16 09:43:20.92', 104.127),
(13, 1, 64, NULL, NULL, '2012-02-16 09:43:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 09:43:32', 1, '2012-02-16 09:43:32', 1, '31.068740', '-104.137862', NULL, '24#2012-02-16 09:43:32.181', 104.127),
(14, 1, 64, NULL, NULL, '2012-02-16 09:43:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 09:43:32', 1, '2012-02-16 09:43:32', 1, '31.072308', '-104.129210', NULL, '24#2012-02-16 09:43:32.504', 104.127),
(15, 1, 64, NULL, NULL, '2012-02-16 09:43:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 09:43:35', 1, '2012-02-16 09:43:35', 1, '31.071380', '-104.132400', NULL, '24#2012-02-16 09:43:35.352', 104.127),
(16, 1, 64, NULL, NULL, '2012-02-16 10:10:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:10:50', 1, '2012-02-16 10:10:50', 1, '32.964812', '-117.164258', NULL, '24#2012-02-16 10:10:50.523', 104.145),
(17, 1, 64, NULL, NULL, '2012-02-16 10:11:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:11:30', 1, '2012-02-16 10:11:30', 1, '32.941085', '-117.219772', NULL, '24#2012-02-16 10:11:31.008', 104.144),
(18, 1, 64, NULL, NULL, '2012-02-16 10:11:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:11:44', 1, '2012-02-16 10:11:44', 1, '32.932645', '-117.240048', NULL, '24#2012-02-16 10:11:44.588', 104.144),
(19, 1, 64, NULL, NULL, '2012-02-16 10:12:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:12:02', 1, '2012-02-16 10:12:02', 1, '32.914260', '-117.230785', NULL, '24#2012-02-16 10:12:02.378', 104.144),
(20, 1, 64, NULL, NULL, '2012-02-16 10:13:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:13:04', 1, '2012-02-16 10:13:04', 1, '32.901498', '-117.187157', NULL, '24#2012-02-16 10:13:04.763', 104.144),
(21, 1, 64, NULL, NULL, '2012-02-16 10:15:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:15:19', 1, '2012-02-16 10:15:19', 1, '32.940515', '-117.109853', NULL, '24#2012-02-16 10:15:19.433', 104.144),
(22, 1, 64, NULL, NULL, '2012-02-16 10:17:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:17:50', 1, '2012-02-16 10:17:50', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 10:17:50.217', 104.127),
(23, 1, 64, NULL, NULL, '2012-02-16 10:18:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:18:12', 1, '2012-02-16 10:18:12', 1, '31.061340', '-104.153717', NULL, '24#2012-02-16 10:18:12.516', 104.127),
(24, 1, 64, NULL, NULL, '2012-02-16 10:18:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:18:18', 1, '2012-02-16 10:18:18', 1, '31.068740', '-104.137862', NULL, '24#2012-02-16 10:18:18.758', 104.127),
(25, 1, 64, NULL, NULL, '2012-02-16 10:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:18:26', 1, '2012-02-16 10:18:26', 1, '31.072308', '-104.129210', NULL, '24#2012-02-16 10:18:26.878', 104.127),
(26, 1, 64, NULL, NULL, '2012-02-16 10:18:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:18:27', 1, '2012-02-16 10:18:27', 1, '31.071380', '-104.132400', NULL, '24#2012-02-16 10:18:27.593', 104.127),
(27, 1, 64, NULL, NULL, '2012-02-16 10:22:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:22:48', 1, '2012-02-16 10:22:48', 1, '31.063230', '-104.183937', NULL, '24#2012-02-16 10:22:48.097', 104.127),
(28, 1, 64, NULL, NULL, '2012-02-16 10:24:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:24:58', 1, '2012-02-16 10:24:58', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 10:24:58.82', 104.127),
(29, 1, 64, NULL, NULL, '2012-02-16 10:25:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:25:21', 1, '2012-02-16 10:25:21', 1, '31.061340', '-104.153717', NULL, '24#2012-02-16 10:25:21.44', 104.127),
(30, 1, 64, NULL, NULL, '2012-02-16 10:25:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:25:28', 1, '2012-02-16 10:25:28', 1, '31.068740', '-104.137862', NULL, '24#2012-02-16 10:25:28.495', 104.127),
(31, 1, 64, NULL, NULL, '2012-02-16 10:25:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:25:33', 1, '2012-02-16 10:25:33', 1, '31.071380', '-104.132400', NULL, '24#2012-02-16 10:25:33.537', 104.127),
(32, 1, 64, NULL, NULL, '2012-02-16 10:25:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:25:35', 1, '2012-02-16 10:25:35', 1, '31.072308', '-104.129210', NULL, '24#2012-02-16 10:25:36.034', 104.127),
(33, 1, 64, NULL, NULL, '2012-02-16 10:28:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:28:54', 1, '2012-02-16 10:28:54', 1, '31.063230', '-104.183937', NULL, '24#2012-02-16 10:28:55.126', 104.127),
(34, 1, 64, NULL, NULL, '2012-02-16 10:29:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:29:22', 1, '2012-02-16 10:29:22', 1, '31.072308', '-104.129210', NULL, '24#2012-02-16 10:29:22.076', 104.127),
(35, 1, 64, NULL, NULL, '2012-02-16 10:39:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:39:18', 1, '2012-02-16 10:39:18', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 10:39:18.579', 104.127),
(36, 1, 64, NULL, NULL, '2012-02-16 10:39:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:39:27', 1, '2012-02-16 10:39:27', 1, '31.063230', '-104.183937', NULL, '24#2012-02-16 10:39:27.546', 104.127),
(37, 1, 64, NULL, NULL, '2012-02-16 10:39:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:39:39', 1, '2012-02-16 10:39:39', 1, '31.061340', '-104.153717', NULL, '24#2012-02-16 10:39:39.468', 104.127),
(38, 1, 64, NULL, NULL, '2012-02-16 10:39:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:39:50', 1, '2012-02-16 10:39:50', 1, '31.071380', '-104.132400', NULL, '24#2012-02-16 10:39:50.228', 104.127),
(39, 1, 64, NULL, NULL, '2012-02-16 10:39:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:39:54', 1, '2012-02-16 10:39:54', 1, '31.071928', '-104.130782', NULL, '24#2012-02-16 10:39:54.316', 104.127),
(40, 1, 64, NULL, NULL, '2012-02-16 10:39:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 10:39:56', 1, '2012-02-16 10:39:56', 1, '31.068740', '-104.137862', NULL, '24#2012-02-16 10:39:56.465', 104.127),
(41, 1, 64, NULL, NULL, '2012-02-16 13:38:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 13:38:24', 1, '2012-02-16 13:38:24', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 13:38:24.546', 104.127),
(42, 1, 64, NULL, NULL, '2012-02-16 13:38:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 13:38:32', 1, '2012-02-16 13:38:32', 1, '31.063230', '-104.183937', NULL, '24#2012-02-16 13:38:32.938', 104.127),
(43, 1, 64, NULL, NULL, '2012-02-16 13:38:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 13:38:45', 1, '2012-02-16 13:38:45', 1, '31.061340', '-104.153717', NULL, '24#2012-02-16 13:38:45.27', 104.127),
(44, 1, 64, NULL, NULL, '2012-02-16 13:39:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 13:39:01', 1, '2012-02-16 13:39:01', 1, '31.068740', '-104.137862', NULL, '24#2012-02-16 13:39:01.151', 104.127),
(45, 1, 64, NULL, NULL, '2012-02-16 13:39:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 13:39:01', 1, '2012-02-16 13:39:01', 1, '31.071380', '-104.132400', NULL, '24#2012-02-16 13:39:01.353', 104.127),
(46, 1, 64, NULL, NULL, '2012-02-16 13:39:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 13:39:01', 1, '2012-02-16 13:39:01', 1, '31.072658', '-104.127440', NULL, '24#2012-02-16 13:39:02.04', 104.127),
(47, 1, 64, NULL, NULL, '2012-02-16 13:58:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 13:58:31', 1, '2012-02-16 13:58:31', 1, '31.072308', '-104.129210', NULL, '24#2012-02-16 13:58:31.532', 104.127),
(48, 1, 64, NULL, NULL, '2012-02-16 14:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:04:06', 1, '2012-02-16 14:04:06', 1, '31.072658', '-104.127440', NULL, '24#2012-02-16 14:04:06.597', 104.127),
(49, 1, 64, NULL, NULL, '2012-02-16 14:22:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:22:35', 1, '2012-02-16 14:22:35', 1, '31.061340', '-104.153717', NULL, '24#2012-02-16 14:22:35.224', 104.127),
(50, 1, 64, NULL, NULL, '2012-02-16 14:22:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:22:39', 1, '2012-02-16 14:22:39', 1, '31.068740', '-104.137862', NULL, '24#2012-02-16 14:22:39.516', 104.127),
(51, 1, 64, NULL, NULL, '2012-02-16 14:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:22:40', 1, '2012-02-16 14:22:40', 1, '31.071380', '-104.132400', NULL, '24#2012-02-16 14:22:41.006', 104.127),
(52, 1, 64, NULL, NULL, '2012-02-16 14:30:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:30:22', 1, '2012-02-16 14:30:22', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 14:30:22.65', 104.127),
(53, 1, 64, NULL, NULL, '2012-02-16 14:30:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:30:33', 1, '2012-02-16 14:30:33', 1, '31.063230', '-104.183937', NULL, '24#2012-02-16 14:30:33.267', 104.127),
(54, 1, 64, NULL, NULL, '2012-02-16 14:30:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:30:51', 1, '2012-02-16 14:30:51', 1, '31.061340', '-104.153717', NULL, '24#2012-02-16 14:30:51.41', 104.127),
(55, 1, 64, NULL, NULL, '2012-02-16 14:30:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:30:55', 1, '2012-02-16 14:30:55', 1, '31.071380', '-104.132400', NULL, '24#2012-02-16 14:30:55.067', 104.127),
(56, 1, 64, NULL, NULL, '2012-02-16 14:30:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:30:59', 1, '2012-02-16 14:30:59', 1, '31.068740', '-104.137862', NULL, '24#2012-02-16 14:31:00.039', 104.127),
(57, 1, 64, NULL, NULL, '2012-02-16 14:31:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:31:01', 1, '2012-02-16 14:31:01', 1, '31.072308', '-104.129210', NULL, '24#2012-02-16 14:31:01.368', 104.127),
(58, 1, 64, NULL, NULL, '2012-02-16 14:42:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:42:53', 1, '2012-02-16 14:42:53', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 14:42:54.078', 104.127),
(59, 1, 64, NULL, NULL, '2012-02-16 14:42:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:43:03', 1, '2012-02-16 14:43:03', 1, '31.063230', '-104.183937', NULL, '24#2012-02-16 14:43:03.692', 104.127),
(60, 1, 64, NULL, NULL, '2012-02-16 14:43:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:43:18', 1, '2012-02-16 14:43:18', 1, '31.061340', '-104.153717', NULL, '24#2012-02-16 14:43:18.339', 104.127),
(61, 1, 64, NULL, NULL, '2012-02-16 14:43:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:43:28', 1, '2012-02-16 14:43:28', 1, '31.071380', '-104.132400', NULL, '24#2012-02-16 14:43:28.32', 104.127),
(62, 1, 64, NULL, NULL, '2012-02-16 14:43:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:43:28', 1, '2012-02-16 14:43:28', 1, '31.068740', '-104.137862', NULL, '24#2012-02-16 14:43:28.356', 104.127),
(63, 1, 64, NULL, NULL, '2012-02-16 14:53:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:53:36', 1, '2012-02-16 14:53:36', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 14:53:36.266', 104.127),
(64, 1, 64, NULL, NULL, '2012-02-16 14:53:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:53:45', 1, '2012-02-16 14:53:45', 1, '31.063230', '-104.183937', NULL, '24#2012-02-16 14:53:45.676', 104.127),
(65, 1, 64, NULL, NULL, '2012-02-16 14:53:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:53:59', 1, '2012-02-16 14:53:59', 1, '31.061340', '-104.153717', NULL, '24#2012-02-16 14:53:59.115', 104.127),
(66, 1, 64, NULL, NULL, '2012-02-16 14:53:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:54:08', 1, '2012-02-16 14:54:08', 1, '31.068740', '-104.137862', NULL, '24#2012-02-16 14:54:08.35', 104.127),
(67, 1, 64, NULL, NULL, '2012-02-16 14:53:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:54:10', 1, '2012-02-16 14:54:10', 1, '31.071380', '-104.132400', NULL, '24#2012-02-16 14:54:10.052', 104.127),
(68, 1, 64, NULL, NULL, '2012-02-16 14:54:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:54:15', 1, '2012-02-16 14:54:15', 1, '31.072308', '-104.129210', NULL, '24#2012-02-16 14:54:15.793', 104.127),
(69, 1, 64, NULL, NULL, '2012-02-16 14:58:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 14:58:59', 1, '2012-02-16 14:58:59', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 14:59:00.021', 104.127),
(70, 1, 64, NULL, NULL, '2012-02-16 15:06:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 15:06:36', 1, '2012-02-16 15:06:36', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 15:06:36.232', 104.127),
(71, 1, 64, NULL, NULL, '2012-02-16 15:10:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 15:10:40', 1, '2012-02-16 15:10:40', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 15:10:40.751', 104.127),
(72, 1, 64, NULL, NULL, '2012-02-16 15:10:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 15:10:48', 1, '2012-02-16 15:10:48', 1, '31.063230', '-104.183937', NULL, '24#2012-02-16 15:10:48.599', 104.127),
(73, 1, 64, NULL, NULL, '2012-02-16 15:10:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 15:11:06', 1, '2012-02-16 15:11:06', 1, '31.061340', '-104.153717', NULL, '24#2012-02-16 15:11:06.66', 104.127),
(74, 1, 64, NULL, NULL, '2012-02-16 15:11:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 15:11:18', 1, '2012-02-16 15:11:18', 1, '31.072308', '-104.129210', NULL, '24#2012-02-16 15:11:18.96', 104.127),
(75, 1, 64, NULL, NULL, '2012-02-16 15:11:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 15:11:19', 1, '2012-02-16 15:11:19', 1, '31.071380', '-104.132400', NULL, '24#2012-02-16 15:11:19.128', 104.127),
(76, 1, 64, NULL, NULL, '2012-02-16 15:10:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 15:11:20', 1, '2012-02-16 15:11:20', 1, '31.068740', '-104.137862', NULL, '24#2012-02-16 15:11:20.341', 104.127),
(77, 1, 64, NULL, NULL, '2012-02-16 20:13:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:13:24', 1, '2012-02-16 20:13:24', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:13:24.854', 104.127),
(78, 1, 64, NULL, NULL, '2012-02-16 20:13:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:13:32', 1, '2012-02-16 20:13:32', 1, '31.063230', '-104.183937', NULL, '24#2012-02-16 20:13:32.425', 104.127),
(79, 1, 64, NULL, NULL, '2012-02-16 20:13:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:13:45', 1, '2012-02-16 20:13:45', 1, '31.061340', '-104.153717', NULL, '24#2012-02-16 20:13:45.592', 104.127),
(80, 1, 64, NULL, NULL, '2012-02-16 20:13:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:13:55', 1, '2012-02-16 20:13:55', 1, '31.068740', '-104.137862', NULL, '24#2012-02-16 20:13:55.953', 104.127),
(81, 1, 64, NULL, NULL, '2012-02-16 20:13:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:14:01', 1, '2012-02-16 20:14:01', 1, '31.071380', '-104.132400', NULL, '24#2012-02-16 20:14:01.132', 104.127),
(82, 1, 64, NULL, NULL, '2012-02-16 20:13:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:14:02', 1, '2012-02-16 20:14:02', 1, '31.072308', '-104.129210', NULL, '24#2012-02-16 20:14:02.685', 104.127),
(83, 1, 64, NULL, NULL, '2012-02-16 20:15:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:15:33', 1, '2012-02-16 20:15:33', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:15:33.924', 104.127),
(84, 1, 64, NULL, NULL, '2012-02-16 20:15:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:15:40', 1, '2012-02-16 20:15:40', 1, '31.063230', '-104.183937', NULL, '24#2012-02-16 20:15:41.029', 104.127),
(85, 1, 64, NULL, NULL, '2012-02-16 20:15:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:15:55', 1, '2012-02-16 20:15:55', 1, '31.061340', '-104.153717', NULL, '24#2012-02-16 20:15:55.264', 104.127),
(86, 1, 64, NULL, NULL, '2012-02-16 20:15:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:16:05', 1, '2012-02-16 20:16:05', 1, '31.068740', '-104.137862', NULL, '24#2012-02-16 20:16:05.928', 104.127),
(87, 1, 64, NULL, NULL, '2012-02-16 20:15:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:16:06', 1, '2012-02-16 20:16:06', 1, '31.071380', '-104.132400', NULL, '24#2012-02-16 20:16:06.412', 104.127),
(88, 1, 64, NULL, NULL, '2012-02-16 20:15:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:16:08', 1, '2012-02-16 20:16:08', 1, '31.071928', '-104.130782', NULL, '24#2012-02-16 20:16:08.594', 104.127),
(89, 1, 64, NULL, NULL, '2012-02-16 20:31:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:31:48', 1, '2012-02-16 20:31:48', 1, '31.061340', '-104.153717', NULL, '24#2012-02-16 20:31:48.925', 104.127),
(90, 1, 64, NULL, NULL, '2012-02-16 20:31:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:31:50', 1, '2012-02-16 20:31:50', 1, '31.071380', '-104.132400', NULL, '24#2012-02-16 20:31:50.739', 104.127),
(91, 1, 64, NULL, NULL, '2012-02-16 20:31:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:31:51', 1, '2012-02-16 20:31:51', 1, '31.072308', '-104.129210', NULL, '24#2012-02-16 20:31:51.718', 104.127),
(92, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:31:53', 1, '2012-02-16 20:31:53', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:31:53.588', 104.127),
(93, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:31:54', 1, '2012-02-16 20:31:54', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:31:54.049', 104.127),
(94, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:31:54', 1, '2012-02-16 20:31:54', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:31:54.378', 104.127),
(95, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:31:54', 1, '2012-02-16 20:31:54', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:31:54.805', 104.127),
(96, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:31:55', 1, '2012-02-16 20:31:55', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:31:55.102', 104.127),
(97, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:31:55', 1, '2012-02-16 20:31:55', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:31:55.489', 104.127),
(98, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:31:55', 1, '2012-02-16 20:31:55', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:31:55.905', 104.127),
(99, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:31:56', 1, '2012-02-16 20:31:56', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:31:56.237', 104.127),
(100, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:31:56', 1, '2012-02-16 20:31:56', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:31:56.478', 104.127),
(101, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:31:56', 1, '2012-02-16 20:31:56', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:31:56.978', 104.127),
(102, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:31:57', 1, '2012-02-16 20:31:57', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:31:57.294', 104.127),
(103, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:31:57', 1, '2012-02-16 20:31:57', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:31:57.807', 104.127),
(104, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:31:58', 1, '2012-02-16 20:31:58', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:31:58.242', 104.127),
(105, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:31:58', 1, '2012-02-16 20:31:58', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:31:58.822', 104.127),
(106, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:31:59', 1, '2012-02-16 20:31:59', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:31:59.386', 104.127),
(107, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:31:59', 1, '2012-02-16 20:31:59', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:31:59.985', 104.127),
(108, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:00', 1, '2012-02-16 20:32:00', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:00.547', 104.127),
(109, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:01', 1, '2012-02-16 20:32:01', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:01.155', 104.127),
(110, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:01', 1, '2012-02-16 20:32:01', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:01.577', 104.127),
(111, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:02', 1, '2012-02-16 20:32:02', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:02.185', 104.127),
(112, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:02', 1, '2012-02-16 20:32:02', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:02.501', 104.127),
(113, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:02', 1, '2012-02-16 20:32:02', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:02.959', 104.127),
(114, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:03', 1, '2012-02-16 20:32:03', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:03.349', 104.127),
(115, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:03', 1, '2012-02-16 20:32:03', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:03.685', 104.127),
(116, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:04', 1, '2012-02-16 20:32:04', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:04.028', 104.127),
(117, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:04', 1, '2012-02-16 20:32:04', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:04.507', 104.127),
(118, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:05', 1, '2012-02-16 20:32:05', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:05.067', 104.127),
(119, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:05', 1, '2012-02-16 20:32:05', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:05.449', 104.127),
(120, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:05', 1, '2012-02-16 20:32:05', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:05.746', 104.127),
(121, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:06', 1, '2012-02-16 20:32:06', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:06.184', 104.127),
(122, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:06', 1, '2012-02-16 20:32:06', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:06.579', 104.127),
(123, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:12', 1, '2012-02-16 20:32:12', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:12.461', 104.127),
(124, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:12', 1, '2012-02-16 20:32:12', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:12.731', 104.127),
(125, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:13', 1, '2012-02-16 20:32:13', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:13.251', 104.127),
(126, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:13', 1, '2012-02-16 20:32:13', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:13.649', 104.127),
(127, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:14', 1, '2012-02-16 20:32:14', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:14.051', 104.127),
(128, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:14', 1, '2012-02-16 20:32:14', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:14.326', 104.127),
(129, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:14', 1, '2012-02-16 20:32:14', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:14.804', 104.127),
(130, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:15', 1, '2012-02-16 20:32:15', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:15.493', 104.127),
(131, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:15', 1, '2012-02-16 20:32:15', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:15.885', 104.127),
(132, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:16', 1, '2012-02-16 20:32:16', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:16.18', 104.127),
(133, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:16', 1, '2012-02-16 20:32:16', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:16.662', 104.127),
(134, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:16', 1, '2012-02-16 20:32:16', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:16.964', 104.127),
(135, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:17', 1, '2012-02-16 20:32:17', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:17.291', 104.127),
(136, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:17', 1, '2012-02-16 20:32:17', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:17.604', 104.127),
(137, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:18', 1, '2012-02-16 20:32:18', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:18.09', 104.127),
(138, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:18', 1, '2012-02-16 20:32:18', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:18.535', 104.127),
(139, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:19', 1, '2012-02-16 20:32:19', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:19.232', 104.127),
(140, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:19', 1, '2012-02-16 20:32:19', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:19.639', 104.127),
(141, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:20', 1, '2012-02-16 20:32:20', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:20.154', 104.127),
(142, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:20', 1, '2012-02-16 20:32:20', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:20.577', 104.127),
(143, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:21', 1, '2012-02-16 20:32:21', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:21.215', 104.127),
(144, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:21', 1, '2012-02-16 20:32:21', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:21.678', 104.127),
(145, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:22', 1, '2012-02-16 20:32:22', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:22.374', 104.127),
(146, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:22', 1, '2012-02-16 20:32:22', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:22.68', 104.127),
(147, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:23', 1, '2012-02-16 20:32:23', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:23.186', 104.127),
(148, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:23', 1, '2012-02-16 20:32:23', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:23.519', 104.127),
(149, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:23', 1, '2012-02-16 20:32:23', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:23.918', 104.127),
(150, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:24', 1, '2012-02-16 20:32:24', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:24.336', 104.127),
(151, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:24', 1, '2012-02-16 20:32:24', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:24.675', 104.127),
(152, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:24', 1, '2012-02-16 20:32:24', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:24.994', 104.127),
(153, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:25', 1, '2012-02-16 20:32:25', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:25.484', 104.127),
(154, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:25', 1, '2012-02-16 20:32:25', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:26.017', 104.127),
(155, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:26', 1, '2012-02-16 20:32:26', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:26.494', 104.127),
(156, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:26', 1, '2012-02-16 20:32:26', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:26.894', 104.127),
(157, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:27', 1, '2012-02-16 20:32:27', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:27.277', 104.127),
(158, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:27', 1, '2012-02-16 20:32:27', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:27.672', 104.127),
(159, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:28', 1, '2012-02-16 20:32:28', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:28.123', 104.127),
(160, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:28', 1, '2012-02-16 20:32:28', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:28.686', 104.127),
(161, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:29', 1, '2012-02-16 20:32:29', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:29.18', 104.127),
(162, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:29', 1, '2012-02-16 20:32:29', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:29.628', 104.127),
(163, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:30', 1, '2012-02-16 20:32:30', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:30.351', 104.127),
(164, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:30', 1, '2012-02-16 20:32:30', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:30.718', 104.127),
(165, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:32:31', 1, '2012-02-16 20:32:31', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:32:31.282', 104.127),
(166, 1, 64, NULL, NULL, '2012-02-16 20:45:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:45:19', 1, '2012-02-16 20:45:19', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:45:19.481', 104.127),
(167, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:45:20', 1, '2012-02-16 20:45:20', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:45:20.962', 104.127),
(168, 1, 64, NULL, NULL, '2012-02-16 20:31:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:45:21', 1, '2012-02-16 20:45:21', 1, '31.063230', '-104.183937', NULL, '24#2012-02-16 20:45:21.581', 104.127),
(169, 1, 64, NULL, NULL, '2012-02-16 20:31:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:45:21', 1, '2012-02-16 20:45:21', 1, '31.061340', '-104.153717', NULL, '24#2012-02-16 20:45:21.953', 104.127),
(170, 1, 64, NULL, NULL, '2012-02-16 20:45:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:45:29', 1, '2012-02-16 20:45:29', 1, '31.063230', '-104.183937', NULL, '24#2012-02-16 20:45:29.641', 104.127),
(171, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:45:30', 1, '2012-02-16 20:45:30', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:45:30.912', 104.127),
(172, 1, 64, NULL, NULL, '2012-02-16 20:31:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:45:31', 1, '2012-02-16 20:45:31', 1, '31.063230', '-104.183937', NULL, '24#2012-02-16 20:45:31.23', 104.127),
(173, 1, 64, NULL, NULL, '2012-02-16 20:31:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:45:31', 1, '2012-02-16 20:45:31', 1, '31.061340', '-104.153717', NULL, '24#2012-02-16 20:45:31.707', 104.127),
(174, 1, 64, NULL, NULL, '2012-02-16 20:48:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:48:53', 1, '2012-02-16 20:48:53', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:48:53.717', 104.127),
(175, 1, 64, NULL, NULL, '2012-02-16 20:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:48:54', 1, '2012-02-16 20:48:54', 1, '31.064520', '-104.263282', NULL, '24#2012-02-16 20:48:54.681', 104.127),
(176, 1, 64, NULL, NULL, '2012-02-16 20:31:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:48:55', 1, '2012-02-16 20:48:55', 1, '31.063230', '-104.183937', NULL, '24#2012-02-16 20:48:55.396', 104.127),
(177, 1, 64, NULL, NULL, '2012-02-16 20:31:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:48:55', 1, '2012-02-16 20:48:55', 1, '31.061340', '-104.153717', NULL, '24#2012-02-16 20:48:55.791', 104.127),
(178, 1, 64, NULL, NULL, '2012-02-16 20:48:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:49:03', 1, '2012-02-16 20:49:03', 1, '31.063230', '-104.183937', NULL, '24#2012-02-16 20:49:03.612', 104.127),
(179, 1, 64, NULL, NULL, '2012-02-16 20:49:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:49:18', 1, '2012-02-16 20:49:18', 1, '31.061340', '-104.153717', NULL, '24#2012-02-16 20:49:18.065', 104.127),
(180, 1, 64, NULL, NULL, '2012-02-16 20:49:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:49:29', 1, '2012-02-16 20:49:29', 1, '31.068740', '-104.137862', NULL, '24#2012-02-16 20:49:29.263', 104.127),
(181, 1, 64, NULL, NULL, '2012-02-16 20:49:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:49:33', 1, '2012-02-16 20:49:33', 1, '31.072658', '-104.127440', NULL, '24#2012-02-16 20:49:33.307', 104.127),
(182, 1, 64, NULL, NULL, '2012-02-16 20:49:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-02-16 20:49:33', 1, '2012-02-16 20:49:33', 1, '31.071928', '-104.130782', NULL, '24#2012-02-16 20:49:33.318', 104.127),
(183, 1, 69, NULL, NULL, '2012-03-30 11:06:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:20:09', 1, '2012-03-30 11:20:09', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:20:10.023', 104.127),
(184, 1, 69, NULL, NULL, '2012-03-30 11:11:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:20:10', 1, '2012-03-30 11:20:10', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:20:10.332', 104.127),
(185, 1, 69, NULL, NULL, '2012-03-30 11:20:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:20:10', 1, '2012-03-30 11:20:10', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:20:10.386', 104.127),
(186, 1, 69, NULL, NULL, '2012-03-30 11:06:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:24:10', 1, '2012-03-30 11:24:10', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:24:10.269', 104.127),
(187, 1, 69, NULL, NULL, '2012-03-30 11:11:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:24:10', 1, '2012-03-30 11:24:10', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:24:10.342', 104.127),
(188, 1, 69, NULL, NULL, '2012-03-30 11:20:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:24:10', 1, '2012-03-30 11:24:10', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:24:10.411', 104.127),
(189, 1, 69, NULL, NULL, '2012-03-30 11:24:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:24:10', 1, '2012-03-30 11:24:10', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:24:10.48', 104.127),
(190, 1, 69, NULL, NULL, '2012-03-30 11:06:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:27:28', 1, '2012-03-30 11:27:28', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:27:28.727', 104.127),
(191, 1, 69, NULL, NULL, '2012-03-30 11:11:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:27:28', 1, '2012-03-30 11:27:28', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:27:28.785', 104.127),
(192, 1, 69, NULL, NULL, '2012-03-30 11:20:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:27:28', 1, '2012-03-30 11:27:28', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:27:28.832', 104.127),
(193, 1, 69, NULL, NULL, '2012-03-30 11:24:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:27:28', 1, '2012-03-30 11:27:28', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:27:28.905', 104.127),
(194, 1, 69, NULL, NULL, '2012-03-30 11:27:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:27:28', 1, '2012-03-30 11:27:28', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:27:28.983', 104.127),
(195, 1, 69, NULL, NULL, '2012-03-30 11:06:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:39:02', 1, '2012-03-30 11:39:02', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:39:02.136', 104.127),
(196, 1, 69, NULL, NULL, '2012-03-30 11:11:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:39:02', 1, '2012-03-30 11:39:02', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:39:02.227', 104.127),
(197, 1, 69, NULL, NULL, '2012-03-30 11:20:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:39:02', 1, '2012-03-30 11:39:02', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:39:02.295', 104.127),
(198, 1, 69, NULL, NULL, '2012-03-30 11:24:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:39:02', 1, '2012-03-30 11:39:02', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:39:02.363', 104.127),
(199, 1, 69, NULL, NULL, '2012-03-30 11:27:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:39:02', 1, '2012-03-30 11:39:02', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:39:02.466', 104.127),
(200, 1, 69, NULL, NULL, '2012-03-30 11:38:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:39:02', 1, '2012-03-30 11:39:02', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:39:02.545', 104.127),
(201, 1, 69, NULL, NULL, '2012-03-30 11:06:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:42:20', 1, '2012-03-30 11:42:20', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:42:20.138', 104.127),
(202, 1, 69, NULL, NULL, '2012-03-30 11:11:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:42:20', 1, '2012-03-30 11:42:20', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:42:20.213', 104.127),
(203, 1, 69, NULL, NULL, '2012-03-30 11:20:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:42:20', 1, '2012-03-30 11:42:20', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:42:20.27', 104.127),
(204, 1, 69, NULL, NULL, '2012-03-30 11:24:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:42:20', 1, '2012-03-30 11:42:20', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:42:20.347', 104.127),
(205, 1, 69, NULL, NULL, '2012-03-30 11:27:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:42:20', 1, '2012-03-30 11:42:20', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:42:20.404', 104.127),
(206, 1, 69, NULL, NULL, '2012-03-30 11:38:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:42:20', 1, '2012-03-30 11:42:20', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:42:20.473', 104.127),
(207, 1, 69, NULL, NULL, '2012-03-30 11:42:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:42:20', 1, '2012-03-30 11:42:20', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:42:20.561', 104.127),
(208, 1, 69, NULL, NULL, '2012-03-30 11:06:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:45:03', 1, '2012-03-30 11:45:03', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:45:03.995', 104.127),
(209, 1, 69, NULL, NULL, '2012-03-30 11:11:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:45:04', 1, '2012-03-30 11:45:04', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:45:04.07', 104.127),
(210, 1, 69, NULL, NULL, '2012-03-30 11:20:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:45:04', 1, '2012-03-30 11:45:04', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:45:04.135', 104.127),
(211, 1, 69, NULL, NULL, '2012-03-30 11:24:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:45:04', 1, '2012-03-30 11:45:04', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:45:04.209', 104.127),
(212, 1, 69, NULL, NULL, '2012-03-30 11:27:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:45:04', 1, '2012-03-30 11:45:04', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:45:04.271', 104.127),
(213, 1, 69, NULL, NULL, '2012-03-30 11:38:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:45:04', 1, '2012-03-30 11:45:04', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:45:04.34', 104.127),
(214, 1, 69, NULL, NULL, '2012-03-30 11:42:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:45:04', 1, '2012-03-30 11:45:04', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:45:04.41', 104.127);
INSERT INTO `vehicle_movement_log_all` (`vml_id`, `vml_type_id`, `device_history_id`, `toll_location_id`, `geometry`, `timestamp`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_on`, `last_modified_by`, `created_on`, `client_id`, `latitude`, `longitude`, `status`, `toll_session_id`, `distance`) VALUES
(215, 1, 69, NULL, NULL, '2012-03-30 11:44:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:45:04', 1, '2012-03-30 11:45:04', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:45:04.466', 104.127),
(216, 1, 69, NULL, NULL, '2012-03-30 11:06:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:55:07', 1, '2012-03-30 11:55:07', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:55:07.482', 104.127),
(217, 1, 69, NULL, NULL, '2012-03-30 11:11:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:55:07', 1, '2012-03-30 11:55:07', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:55:07.567', 104.127),
(218, 1, 69, NULL, NULL, '2012-03-30 11:20:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:55:07', 1, '2012-03-30 11:55:07', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:55:07.65', 104.127),
(219, 1, 69, NULL, NULL, '2012-03-30 11:24:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:55:07', 1, '2012-03-30 11:55:07', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:55:07.707', 104.127),
(220, 1, 69, NULL, NULL, '2012-03-30 11:27:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:55:07', 1, '2012-03-30 11:55:07', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:55:07.786', 104.127),
(221, 1, 69, NULL, NULL, '2012-03-30 11:38:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:55:07', 1, '2012-03-30 11:55:07', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:55:07.853', 104.127),
(222, 1, 69, NULL, NULL, '2012-03-30 11:42:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:55:07', 1, '2012-03-30 11:55:07', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:55:07.907', 104.127),
(223, 1, 69, NULL, NULL, '2012-03-30 11:44:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:55:07', 1, '2012-03-30 11:55:07', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:55:07.97', 104.127),
(224, 1, 69, NULL, NULL, '2012-03-30 11:55:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:55:08', 1, '2012-03-30 11:55:08', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:55:08.027', 104.127),
(225, 1, 69, NULL, NULL, '2012-03-30 11:06:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:57:41', 1, '2012-03-30 11:57:41', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:57:41.742', 104.127),
(226, 1, 69, NULL, NULL, '2012-03-30 11:11:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:57:41', 1, '2012-03-30 11:57:41', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:57:41.815', 104.127),
(227, 1, 69, NULL, NULL, '2012-03-30 11:20:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:57:41', 1, '2012-03-30 11:57:41', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:57:41.862', 104.127),
(228, 1, 69, NULL, NULL, '2012-03-30 11:24:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:57:41', 1, '2012-03-30 11:57:41', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:57:41.96', 104.127),
(229, 1, 69, NULL, NULL, '2012-03-30 11:27:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:57:42', 1, '2012-03-30 11:57:42', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:57:42.025', 104.127),
(230, 1, 69, NULL, NULL, '2012-03-30 11:38:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:57:42', 1, '2012-03-30 11:57:42', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:57:42.089', 104.127),
(231, 1, 69, NULL, NULL, '2012-03-30 11:42:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:57:42', 1, '2012-03-30 11:57:42', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:57:42.154', 104.127),
(232, 1, 69, NULL, NULL, '2012-03-30 11:44:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:57:42', 1, '2012-03-30 11:57:42', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:57:42.223', 104.127),
(233, 1, 69, NULL, NULL, '2012-03-30 11:55:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:57:42', 1, '2012-03-30 11:57:42', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:57:42.302', 104.127),
(234, 1, 69, NULL, NULL, '2012-03-30 11:57:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 11:57:42', 1, '2012-03-30 11:57:42', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 11:57:42.391', 104.127),
(235, 1, 69, NULL, NULL, '2012-03-30 11:06:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:01:12', 1, '2012-03-30 12:01:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:01:12.6', 104.127),
(236, 1, 69, NULL, NULL, '2012-03-30 11:11:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:01:12', 1, '2012-03-30 12:01:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:01:12.689', 104.127),
(237, 1, 69, NULL, NULL, '2012-03-30 11:20:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:01:12', 1, '2012-03-30 12:01:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:01:12.756', 104.127),
(238, 1, 69, NULL, NULL, '2012-03-30 11:24:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:01:12', 1, '2012-03-30 12:01:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:01:12.827', 104.127),
(239, 1, 69, NULL, NULL, '2012-03-30 11:27:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:01:12', 1, '2012-03-30 12:01:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:01:12.872', 104.127),
(240, 1, 69, NULL, NULL, '2012-03-30 11:38:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:01:12', 1, '2012-03-30 12:01:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:01:12.917', 104.127),
(241, 1, 69, NULL, NULL, '2012-03-30 11:42:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:01:12', 1, '2012-03-30 12:01:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:01:12.975', 104.127),
(242, 1, 69, NULL, NULL, '2012-03-30 11:44:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:01:13', 1, '2012-03-30 12:01:13', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:01:13.029', 104.127),
(243, 1, 69, NULL, NULL, '2012-03-30 11:55:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:01:13', 1, '2012-03-30 12:01:13', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:01:13.085', 104.127),
(244, 1, 69, NULL, NULL, '2012-03-30 11:57:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:01:13', 1, '2012-03-30 12:01:13', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:01:13.15', 104.127),
(245, 1, 69, NULL, NULL, '2012-03-30 12:01:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:01:13', 1, '2012-03-30 12:01:13', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:01:13.217', 104.127),
(246, 1, 69, NULL, NULL, '2012-03-30 11:06:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:04:40', 1, '2012-03-30 12:04:40', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:04:40.359', 104.127),
(247, 1, 69, NULL, NULL, '2012-03-30 11:11:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:04:40', 1, '2012-03-30 12:04:40', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:04:40.417', 104.127),
(248, 1, 69, NULL, NULL, '2012-03-30 11:20:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:04:40', 1, '2012-03-30 12:04:40', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:04:40.474', 104.127),
(249, 1, 69, NULL, NULL, '2012-03-30 11:24:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:04:40', 1, '2012-03-30 12:04:40', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:04:40.529', 104.127),
(250, 1, 69, NULL, NULL, '2012-03-30 11:27:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:04:40', 1, '2012-03-30 12:04:40', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:04:40.576', 104.127),
(251, 1, 69, NULL, NULL, '2012-03-30 11:38:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:04:40', 1, '2012-03-30 12:04:40', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:04:40.646', 104.127),
(252, 1, 69, NULL, NULL, '2012-03-30 11:42:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:04:40', 1, '2012-03-30 12:04:40', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:04:40.708', 104.127),
(253, 1, 69, NULL, NULL, '2012-03-30 11:44:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:04:40', 1, '2012-03-30 12:04:40', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:04:40.768', 104.127),
(254, 1, 69, NULL, NULL, '2012-03-30 11:55:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:04:40', 1, '2012-03-30 12:04:40', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:04:40.806', 104.127),
(255, 1, 69, NULL, NULL, '2012-03-30 11:57:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:04:40', 1, '2012-03-30 12:04:40', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:04:40.848', 104.127),
(256, 1, 69, NULL, NULL, '2012-03-30 12:01:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:04:40', 1, '2012-03-30 12:04:40', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:04:40.923', 104.127),
(257, 1, 69, NULL, NULL, '2012-03-30 12:04:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:04:40', 1, '2012-03-30 12:04:40', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:04:40.959', 104.127),
(258, 1, 69, NULL, NULL, '2012-03-30 11:06:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:11:01', 1, '2012-03-30 12:11:01', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:11:01.643', 104.127),
(259, 1, 69, NULL, NULL, '2012-03-30 11:11:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:11:01', 1, '2012-03-30 12:11:01', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:11:01.694', 104.127),
(260, 1, 69, NULL, NULL, '2012-03-30 11:20:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:11:01', 1, '2012-03-30 12:11:01', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:11:01.76', 104.127),
(261, 1, 69, NULL, NULL, '2012-03-30 11:24:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:11:01', 1, '2012-03-30 12:11:01', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:11:01.833', 104.127),
(262, 1, 69, NULL, NULL, '2012-03-30 11:27:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:11:01', 1, '2012-03-30 12:11:01', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:11:01.903', 104.127),
(263, 1, 69, NULL, NULL, '2012-03-30 11:38:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:11:01', 1, '2012-03-30 12:11:01', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:11:01.954', 104.127),
(264, 1, 69, NULL, NULL, '2012-03-30 11:42:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:11:02', 1, '2012-03-30 12:11:02', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:11:02.012', 104.127),
(265, 1, 69, NULL, NULL, '2012-03-30 11:44:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:11:02', 1, '2012-03-30 12:11:02', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:11:02.069', 104.127),
(266, 1, 69, NULL, NULL, '2012-03-30 11:55:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:11:02', 1, '2012-03-30 12:11:02', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:11:02.12', 104.127),
(267, 1, 69, NULL, NULL, '2012-03-30 11:57:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:11:02', 1, '2012-03-30 12:11:02', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:11:02.162', 104.127),
(268, 1, 69, NULL, NULL, '2012-03-30 12:01:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:11:02', 1, '2012-03-30 12:11:02', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:11:02.229', 104.127),
(269, 1, 69, NULL, NULL, '2012-03-30 12:04:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:11:02', 1, '2012-03-30 12:11:02', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:11:02.283', 104.127),
(270, 1, 69, NULL, NULL, '2012-03-30 12:10:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 12:11:02', 1, '2012-03-30 12:11:02', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 12:11:02.337', 104.127),
(271, 1, 69, NULL, NULL, '2012-03-30 11:06:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:02:57', 1, '2012-03-30 13:02:57', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:02:58.002', 104.127),
(272, 1, 69, NULL, NULL, '2012-03-30 11:11:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:02:58', 1, '2012-03-30 13:02:58', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:02:58.12', 104.127),
(273, 1, 69, NULL, NULL, '2012-03-30 11:20:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:02:58', 1, '2012-03-30 13:02:58', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:02:58.163', 104.127),
(274, 1, 69, NULL, NULL, '2012-03-30 11:24:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:02:58', 1, '2012-03-30 13:02:58', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:02:58.226', 104.127),
(275, 1, 69, NULL, NULL, '2012-03-30 11:27:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:02:58', 1, '2012-03-30 13:02:58', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:02:58.289', 104.127),
(276, 1, 69, NULL, NULL, '2012-03-30 11:38:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:02:58', 1, '2012-03-30 13:02:58', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:02:58.351', 104.127),
(277, 1, 69, NULL, NULL, '2012-03-30 11:42:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:02:58', 1, '2012-03-30 13:02:58', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:02:58.391', 104.127),
(278, 1, 69, NULL, NULL, '2012-03-30 11:44:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:02:58', 1, '2012-03-30 13:02:58', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:02:58.433', 104.127),
(279, 1, 69, NULL, NULL, '2012-03-30 11:55:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:02:58', 1, '2012-03-30 13:02:58', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:02:58.48', 104.127),
(280, 1, 69, NULL, NULL, '2012-03-30 11:57:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:02:58', 1, '2012-03-30 13:02:58', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:02:58.558', 104.127),
(281, 1, 69, NULL, NULL, '2012-03-30 12:01:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:02:58', 1, '2012-03-30 13:02:58', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:02:58.618', 104.127),
(282, 1, 69, NULL, NULL, '2012-03-30 12:04:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:02:58', 1, '2012-03-30 13:02:58', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:02:58.673', 104.127),
(283, 1, 69, NULL, NULL, '2012-03-30 12:10:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:02:58', 1, '2012-03-30 13:02:58', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:02:58.726', 104.127),
(284, 1, 69, NULL, NULL, '2012-03-30 13:02:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:02:58', 1, '2012-03-30 13:02:58', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:02:58.791', 104.127),
(285, 1, 69, NULL, NULL, '2012-03-30 11:06:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:18:06', 1, '2012-03-30 13:18:06', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:18:06.03', 104.127),
(286, 1, 69, NULL, NULL, '2012-03-30 11:11:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:18:06', 1, '2012-03-30 13:18:06', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:18:06.102', 104.127),
(287, 1, 69, NULL, NULL, '2012-03-30 11:20:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:18:06', 1, '2012-03-30 13:18:06', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:18:06.138', 104.127),
(288, 1, 69, NULL, NULL, '2012-03-30 11:24:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:18:06', 1, '2012-03-30 13:18:06', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:18:06.207', 104.127),
(289, 1, 69, NULL, NULL, '2012-03-30 11:27:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:18:06', 1, '2012-03-30 13:18:06', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:18:06.259', 104.127),
(290, 1, 69, NULL, NULL, '2012-03-30 11:38:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:18:06', 1, '2012-03-30 13:18:06', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:18:06.315', 104.127),
(291, 1, 69, NULL, NULL, '2012-03-30 11:42:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:18:06', 1, '2012-03-30 13:18:06', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:18:06.376', 104.127),
(292, 1, 69, NULL, NULL, '2012-03-30 11:44:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:18:06', 1, '2012-03-30 13:18:06', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:18:06.431', 104.127),
(293, 1, 69, NULL, NULL, '2012-03-30 11:55:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:18:06', 1, '2012-03-30 13:18:06', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:18:06.495', 104.127),
(294, 1, 69, NULL, NULL, '2012-03-30 11:57:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:18:06', 1, '2012-03-30 13:18:06', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:18:06.551', 104.127),
(295, 1, 69, NULL, NULL, '2012-03-30 12:01:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:18:06', 1, '2012-03-30 13:18:06', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:18:06.612', 104.127),
(296, 1, 69, NULL, NULL, '2012-03-30 12:04:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:18:06', 1, '2012-03-30 13:18:06', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:18:06.667', 104.127),
(297, 1, 69, NULL, NULL, '2012-03-30 12:10:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:18:06', 1, '2012-03-30 13:18:06', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:18:06.736', 104.127),
(298, 1, 69, NULL, NULL, '2012-03-30 13:02:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:18:06', 1, '2012-03-30 13:18:06', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:18:06.792', 104.127),
(299, 1, 69, NULL, NULL, '2012-03-30 13:17:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:18:06', 1, '2012-03-30 13:18:06', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:18:06.848', 104.127),
(300, 1, 69, NULL, NULL, '2012-03-30 11:06:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:21:12', 1, '2012-03-30 13:21:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:21:12.223', 104.127),
(301, 1, 69, NULL, NULL, '2012-03-30 11:11:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:21:12', 1, '2012-03-30 13:21:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:21:12.287', 104.127),
(302, 1, 69, NULL, NULL, '2012-03-30 11:20:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:21:12', 1, '2012-03-30 13:21:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:21:12.361', 104.127),
(303, 1, 69, NULL, NULL, '2012-03-30 11:24:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:21:12', 1, '2012-03-30 13:21:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:21:12.452', 104.127),
(304, 1, 69, NULL, NULL, '2012-03-30 11:27:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:21:12', 1, '2012-03-30 13:21:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:21:12.499', 104.127),
(305, 1, 69, NULL, NULL, '2012-03-30 11:38:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:21:12', 1, '2012-03-30 13:21:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:21:12.54', 104.127),
(306, 1, 69, NULL, NULL, '2012-03-30 11:42:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:21:12', 1, '2012-03-30 13:21:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:21:12.61', 104.127),
(307, 1, 69, NULL, NULL, '2012-03-30 11:44:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:21:12', 1, '2012-03-30 13:21:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:21:12.658', 104.127),
(308, 1, 69, NULL, NULL, '2012-03-30 11:55:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:21:12', 1, '2012-03-30 13:21:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:21:12.712', 104.127),
(309, 1, 69, NULL, NULL, '2012-03-30 11:57:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:21:12', 1, '2012-03-30 13:21:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:21:12.782', 104.127),
(310, 1, 69, NULL, NULL, '2012-03-30 12:01:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:21:12', 1, '2012-03-30 13:21:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:21:12.818', 104.127),
(311, 1, 69, NULL, NULL, '2012-03-30 12:04:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:21:12', 1, '2012-03-30 13:21:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:21:12.861', 104.127),
(312, 1, 69, NULL, NULL, '2012-03-30 12:10:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:21:12', 1, '2012-03-30 13:21:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:21:12.91', 104.127),
(313, 1, 69, NULL, NULL, '2012-03-30 13:02:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:21:12', 1, '2012-03-30 13:21:12', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:21:12.949', 104.127),
(314, 1, 69, NULL, NULL, '2012-03-30 13:17:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:21:13', 1, '2012-03-30 13:21:13', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:21:13.017', 104.127),
(315, 1, 69, NULL, NULL, '2012-03-30 13:21:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:21:13', 1, '2012-03-30 13:21:13', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:21:13.052', 104.127),
(316, 1, 69, NULL, NULL, '2012-03-30 11:06:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:25:40', 1, '2012-03-30 13:25:40', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:25:40.956', 104.127),
(317, 1, 69, NULL, NULL, '2012-03-30 11:11:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:25:41', 1, '2012-03-30 13:25:41', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:25:41.011', 104.127),
(318, 1, 69, NULL, NULL, '2012-03-30 11:20:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:25:41', 1, '2012-03-30 13:25:41', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:25:41.058', 104.127),
(319, 1, 69, NULL, NULL, '2012-03-30 11:24:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:25:41', 1, '2012-03-30 13:25:41', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:25:41.116', 104.127),
(320, 1, 69, NULL, NULL, '2012-03-30 11:27:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:25:41', 1, '2012-03-30 13:25:41', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:25:41.177', 104.127),
(321, 1, 69, NULL, NULL, '2012-03-30 11:38:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:25:41', 1, '2012-03-30 13:25:41', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:25:41.224', 104.127),
(322, 1, 69, NULL, NULL, '2012-03-30 11:42:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:25:41', 1, '2012-03-30 13:25:41', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:25:41.292', 104.127),
(323, 1, 69, NULL, NULL, '2012-03-30 11:44:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:25:41', 1, '2012-03-30 13:25:41', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:25:41.361', 104.127),
(324, 1, 69, NULL, NULL, '2012-03-30 11:55:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:25:41', 1, '2012-03-30 13:25:41', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:25:41.46', 104.127),
(325, 1, 69, NULL, NULL, '2012-03-30 11:57:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:25:41', 1, '2012-03-30 13:25:41', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:25:41.521', 104.127),
(326, 1, 69, NULL, NULL, '2012-03-30 12:01:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:25:41', 1, '2012-03-30 13:25:41', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:25:41.582', 104.127),
(327, 1, 69, NULL, NULL, '2012-03-30 12:04:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:25:41', 1, '2012-03-30 13:25:41', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:25:41.653', 104.127),
(328, 1, 69, NULL, NULL, '2012-03-30 12:10:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:25:41', 1, '2012-03-30 13:25:41', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:25:41.709', 104.127),
(329, 1, 69, NULL, NULL, '2012-03-30 13:02:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:25:41', 1, '2012-03-30 13:25:41', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:25:41.792', 104.127),
(330, 1, 69, NULL, NULL, '2012-03-30 13:17:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:25:41', 1, '2012-03-30 13:25:41', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:25:41.863', 104.127),
(331, 1, 69, NULL, NULL, '2012-03-30 13:21:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:25:41', 1, '2012-03-30 13:25:41', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:25:41.916', 104.127),
(332, 1, 69, NULL, NULL, '2012-03-30 13:25:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:25:41', 1, '2012-03-30 13:25:41', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:25:41.973', 104.127),
(333, 1, 69, NULL, NULL, '2012-03-30 11:06:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:33:25', 1, '2012-03-30 13:33:25', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:33:25.452', 104.127),
(334, 1, 69, NULL, NULL, '2012-03-30 11:11:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:33:25', 1, '2012-03-30 13:33:25', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:33:25.539', 104.127),
(335, 1, 69, NULL, NULL, '2012-03-30 11:20:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:33:25', 1, '2012-03-30 13:33:25', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:33:25.597', 104.127),
(336, 1, 69, NULL, NULL, '2012-03-30 11:24:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:33:25', 1, '2012-03-30 13:33:25', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:33:25.648', 104.127),
(337, 1, 69, NULL, NULL, '2012-03-30 11:27:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:33:25', 1, '2012-03-30 13:33:25', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:33:25.693', 104.127),
(338, 1, 69, NULL, NULL, '2012-03-30 11:38:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:33:25', 1, '2012-03-30 13:33:25', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:33:25.743', 104.127),
(339, 1, 69, NULL, NULL, '2012-03-30 11:42:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:33:25', 1, '2012-03-30 13:33:25', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:33:25.804', 104.127),
(340, 1, 69, NULL, NULL, '2012-03-30 11:44:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:33:25', 1, '2012-03-30 13:33:25', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:33:25.853', 104.127),
(341, 1, 69, NULL, NULL, '2012-03-30 11:55:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:33:25', 1, '2012-03-30 13:33:25', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:33:25.905', 104.127),
(342, 1, 69, NULL, NULL, '2012-03-30 11:57:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:33:25', 1, '2012-03-30 13:33:25', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:33:25.944', 104.127),
(343, 1, 69, NULL, NULL, '2012-03-30 12:01:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:33:25', 1, '2012-03-30 13:33:25', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:33:25.986', 104.127),
(344, 1, 69, NULL, NULL, '2012-03-30 12:04:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:33:26', 1, '2012-03-30 13:33:26', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:33:26.063', 104.127),
(345, 1, 69, NULL, NULL, '2012-03-30 12:10:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:33:26', 1, '2012-03-30 13:33:26', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:33:26.109', 104.127),
(346, 1, 69, NULL, NULL, '2012-03-30 13:02:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:33:26', 1, '2012-03-30 13:33:26', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:33:26.154', 104.127),
(347, 1, 69, NULL, NULL, '2012-03-30 13:17:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:33:26', 1, '2012-03-30 13:33:26', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:33:26.193', 104.127),
(348, 1, 69, NULL, NULL, '2012-03-30 13:21:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:33:26', 1, '2012-03-30 13:33:26', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:33:26.237', 104.127),
(349, 1, 69, NULL, NULL, '2012-03-30 13:25:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:33:26', 1, '2012-03-30 13:33:26', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:33:26.279', 104.127),
(350, 1, 69, NULL, NULL, '2012-03-30 13:33:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:33:26', 1, '2012-03-30 13:33:26', 1, '31.064520', '-104.263282', NULL, '24#2012-03-30 13:33:26.327', 104.127),
(351, 1, 69, NULL, NULL, '2012-03-30 13:33:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:33:34', 1, '2012-03-30 13:33:34', 1, '31.063230', '-104.183937', NULL, '24#2012-03-30 13:33:34.248', 104.127),
(352, 1, 69, NULL, NULL, '2012-03-30 13:33:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-03-30 13:33:49', 1, '2012-03-30 13:33:49', 1, '31.061340', '-104.153717', NULL, '24#2012-03-30 13:33:49.934', 104.127);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vehicle_toll_usage`
--
DROP VIEW IF EXISTS `vehicle_toll_usage`;
CREATE TABLE IF NOT EXISTS `vehicle_toll_usage` (
`vtu_id` int(11)
,`uvh_id` int(11)
,`toll_loc_id` int(11)
,`tph_id` int(11)
,`timestamp` datetime
,`vml_id` int(11)
,`ptran_id` int(11)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`last_modified_by` int(11)
,`last_modified_on` datetime
,`created_on` datetime
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `vehicle_toll_usage_all`
--

DROP TABLE IF EXISTS `vehicle_toll_usage_all`;
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Payment to be done by each vehicle and other details' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vehicle_toll_usage_all`
--

INSERT INTO `vehicle_toll_usage_all` (`vtu_id`, `uvh_id`, `toll_loc_id`, `tph_id`, `timestamp`, `vml_id`, `ptran_id`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(1, 62, 22, 1, '2012-01-09 22:29:11', 7, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2012-01-09 22:29:29', '2012-01-09 22:29:31', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vehicle_type`
--
DROP VIEW IF EXISTS `vehicle_type`;
CREATE TABLE IF NOT EXISTS `vehicle_type` (
`vehicle_type_id` int(11)
,`name` varchar(100)
,`description` varchar(1000)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`created_on` datetime
,`last_modified_on` datetime
,`last_modified_by` int(11)
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type_all`
--

DROP TABLE IF EXISTS `vehicle_type_all`;
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='The different types of vehicles identified by the toll agenc' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vehicle_type_all`
--

INSERT INTO `vehicle_type_all` (`vehicle_type_id`, `name`, `description`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `client_id`) VALUES
(-1, 'none', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 00:57:00', '2011-10-14 00:57:03', -1, 1),
(3, '4 wheel', 'car', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 00:57:42', '2011-10-14 00:57:45', -1, 1),
(4, '6 wheel', 'truck', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 00:58:06', '2011-10-14 00:58:09', -1, 1),
(5, '8 wheel', 'truck', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 00:58:41', '2011-10-14 00:58:43', -1, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vml_type`
--
DROP VIEW IF EXISTS `vml_type`;
CREATE TABLE IF NOT EXISTS `vml_type` (
`vml_type_id` int(11)
,`name` varchar(45)
,`description` varchar(60)
,`udf1` varchar(1000)
,`udf2` varchar(1000)
,`udf3` varchar(1000)
,`udf4` varchar(1000)
,`udf5` varchar(1000)
,`flag1` varchar(1)
,`flag2` varchar(1)
,`flag3` varchar(1)
,`flag4` varchar(1)
,`flag5` varchar(1)
,`last_modified_by` int(11)
,`last_modified_on` datetime
,`created_on` datetime
,`client_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `vml_type_all`
--

DROP TABLE IF EXISTS `vml_type_all`;
CREATE TABLE IF NOT EXISTS `vml_type_all` (
  `vml_type_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(60) DEFAULT NULL,
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
  PRIMARY KEY (`vml_type_id`),
  KEY `fk_client_vmlt` (`client_id`),
  KEY `fk_last_mod_by_all` (`last_modified_by`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table has log type(start, stop, toll usage, heart beat ';

--
-- Dumping data for table `vml_type_all`
--

INSERT INTO `vml_type_all` (`vml_type_id`, `name`, `description`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(1, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-19 21:10:42', '2011-10-19 21:10:44', 1);

-- --------------------------------------------------------

--
-- Structure for view `cc_type`
--
DROP TABLE IF EXISTS `cc_type`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cc_type` AS select `cc_type_all`.`cc_type_id` AS `cc_type_id`,`cc_type_all`.`name` AS `name`,`cc_type_all`.`description` AS `description`,`cc_type_all`.`udf1` AS `udf1`,`cc_type_all`.`udf2` AS `udf2`,`cc_type_all`.`udf3` AS `udf3`,`cc_type_all`.`udf4` AS `udf4`,`cc_type_all`.`udf5` AS `udf5`,`cc_type_all`.`flag1` AS `flag1`,`cc_type_all`.`flag2` AS `flag2`,`cc_type_all`.`flag3` AS `flag3`,`cc_type_all`.`flag4` AS `flag4`,`cc_type_all`.`flag5` AS `flag5`,`cc_type_all`.`created_on` AS `created_on`,`cc_type_all`.`last_modified_on` AS `last_modified_on`,`cc_type_all`.`last_modified_by` AS `last_modified_by`,`cc_type_all`.`client_id` AS `client_id` from `cc_type_all` where (`cc_type_all`.`cc_type_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `client`
--
DROP TABLE IF EXISTS `client`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `client` AS select `client_all`.`client_id` AS `client_id`,`client_all`.`client_name` AS `client_name`,`client_all`.`udf1` AS `udf1`,`client_all`.`udf2` AS `udf2`,`client_all`.`udf3` AS `udf3`,`client_all`.`udf4` AS `udf4`,`client_all`.`udf5` AS `udf5`,`client_all`.`flag1` AS `flag1`,`client_all`.`flag2` AS `flag2`,`client_all`.`flag3` AS `flag3`,`client_all`.`flag4` AS `flag4`,`client_all`.`flag5` AS `flag5`,`client_all`.`created_on` AS `created_on`,`client_all`.`last_modified_on` AS `last_modified_on`,`client_all`.`last_modified_by` AS `last_modified_by` from `client_all` where (`client_all`.`client_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `component`
--
DROP TABLE IF EXISTS `component`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `component` AS select `component_all`.`component_id` AS `component_id`,`component_all`.`name` AS `name`,`component_all`.`description` AS `description`,`component_all`.`client_id` AS `client_id`,`component_all`.`udf1` AS `udf1`,`component_all`.`udf2` AS `udf2`,`component_all`.`udf3` AS `udf3`,`component_all`.`udf4` AS `udf4`,`component_all`.`udf5` AS `udf5`,`component_all`.`flag1` AS `flag1`,`component_all`.`flag2` AS `flag2`,`component_all`.`flag3` AS `flag3`,`component_all`.`flag4` AS `flag4`,`component_all`.`flag5` AS `flag5`,`component_all`.`created_on` AS `created_on`,`component_all`.`last_modified_on` AS `last_modified_on`,`component_all`.`last_modified_by` AS `last_modified_by` from `component_all` where (`component_all`.`component_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `component_version`
--
DROP TABLE IF EXISTS `component_version`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `component_version` AS select `component_version_all`.`comp_version_id` AS `comp_version_id`,`component_version_all`.`component_id` AS `component_id`,`component_version_all`.`description` AS `description`,`component_version_all`.`list_of_changes` AS `list_of_changes`,`component_version_all`.`udf1` AS `udf1`,`component_version_all`.`udf2` AS `udf2`,`component_version_all`.`udf3` AS `udf3`,`component_version_all`.`udf4` AS `udf4`,`component_version_all`.`udf5` AS `udf5`,`component_version_all`.`flag1` AS `flag1`,`component_version_all`.`flag2` AS `flag2`,`component_version_all`.`flag3` AS `flag3`,`component_version_all`.`flag4` AS `flag4`,`component_version_all`.`flag5` AS `flag5`,`component_version_all`.`created_on` AS `created_on`,`component_version_all`.`last_modified_on` AS `last_modified_on`,`component_version_all`.`last_modified_by` AS `last_modified_by`,`component_version_all`.`version` AS `version` from `component_version_all` where (`component_version_all`.`comp_version_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `configuration`
--
DROP TABLE IF EXISTS `configuration`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `configuration` AS select `configuration_all`.`config_id` AS `config_id`,`configuration_all`.`comp_version_id` AS `comp_version_id`,`configuration_all`.`key` AS `key`,`configuration_all`.`value` AS `value`,`configuration_all`.`udf1` AS `udf1`,`configuration_all`.`udf2` AS `udf2`,`configuration_all`.`udf3` AS `udf3`,`configuration_all`.`udf4` AS `udf4`,`configuration_all`.`udf5` AS `udf5`,`configuration_all`.`flag1` AS `flag1`,`configuration_all`.`flag2` AS `flag2`,`configuration_all`.`flag3` AS `flag3`,`configuration_all`.`flag4` AS `flag4`,`configuration_all`.`flag5` AS `flag5`,`configuration_all`.`created_on` AS `created_on`,`configuration_all`.`last_modified_on` AS `last_modified_on`,`configuration_all`.`last_modified_by` AS `last_modified_by` from `configuration_all` where (`configuration_all`.`config_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `device`
--
DROP TABLE IF EXISTS `device`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `device` AS select `device_all`.`device_id` AS `device_id`,`device_all`.`user_id` AS `user_id`,`device_all`.`device_uuid` AS `device_uuid`,`device_all`.`device_type` AS `device_type`,`device_all`.`is_active` AS `is_active`,`device_all`.`last_login_time` AS `last_login_time`,`device_all`.`udf1` AS `udf1`,`device_all`.`udf2` AS `udf2`,`device_all`.`udf3` AS `udf3`,`device_all`.`udf4` AS `udf4`,`device_all`.`udf5` AS `udf5`,`device_all`.`flag1` AS `flag1`,`device_all`.`flag2` AS `flag2`,`device_all`.`flag3` AS `flag3`,`device_all`.`flag4` AS `flag4`,`device_all`.`flag5` AS `flag5`,`device_all`.`created_on` AS `created_on`,`device_all`.`last_modified_on` AS `last_modified_on`,`device_all`.`last_modified_by` AS `last_modified_by`,`device_all`.`client_id` AS `client_id` from `device_all` where (`device_all`.`device_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `device_history`
--
DROP TABLE IF EXISTS `device_history`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `device_history` AS select `device_history_all`.`device_history_id` AS `device_history_id`,`device_history_all`.`device_id` AS `device_id`,`device_history_all`.`user_id` AS `user_id`,`device_history_all`.`device_uuid` AS `device_uuid`,`device_history_all`.`device_type` AS `device_type`,`device_history_all`.`is_active` AS `is_active`,`device_history_all`.`last_login_time` AS `last_login_time`,`device_history_all`.`udf1` AS `udf1`,`device_history_all`.`udf2` AS `udf2`,`device_history_all`.`udf3` AS `udf3`,`device_history_all`.`udf4` AS `udf4`,`device_history_all`.`udf5` AS `udf5`,`device_history_all`.`flag1` AS `flag1`,`device_history_all`.`flag2` AS `flag2`,`device_history_all`.`flag3` AS `flag3`,`device_history_all`.`flag4` AS `flag4`,`device_history_all`.`flag5` AS `flag5`,`device_history_all`.`client_id` AS `client_id`,`device_history_all`.`last_modified_by` AS `last_modified_by`,`device_history_all`.`last_modified_on` AS `last_modified_on`,`device_history_all`.`created_on` AS `created_on`,`device_history_all`.`start_date` AS `start_date`,`device_history_all`.`end_date` AS `end_date`,`device_history_all`.`action` AS `action` from `device_history_all` where (`device_history_all`.`device_history_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `make`
--
DROP TABLE IF EXISTS `make`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `make` AS select `make_all`.`make_id` AS `make_id`,`make_all`.`name` AS `name`,`make_all`.`description` AS `description`,`make_all`.`udf1` AS `udf1`,`make_all`.`udf2` AS `udf2`,`make_all`.`udf3` AS `udf3`,`make_all`.`udf4` AS `udf4`,`make_all`.`udf5` AS `udf5`,`make_all`.`flag1` AS `flag1`,`make_all`.`flag2` AS `flag2`,`make_all`.`flag3` AS `flag3`,`make_all`.`flag4` AS `flag4`,`make_all`.`flag5` AS `flag5`,`make_all`.`client_id` AS `client_id`,`make_all`.`created_on` AS `created_on`,`make_all`.`last_modified_on` AS `last_modified_on`,`make_all`.`last_modified_by` AS `last_modified_by` from `make_all` where (`make_all`.`make_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `model`
--
DROP TABLE IF EXISTS `model`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `model` AS select `model_all`.`model_id` AS `model_id`,`model_all`.`name` AS `name`,`model_all`.`description` AS `description`,`model_all`.`make_id` AS `make_id`,`model_all`.`vehicle_type_id` AS `vehicle_type_id`,`model_all`.`udf1` AS `udf1`,`model_all`.`udf2` AS `udf2`,`model_all`.`udf3` AS `udf3`,`model_all`.`udf4` AS `udf4`,`model_all`.`udf5` AS `udf5`,`model_all`.`flag1` AS `flag1`,`model_all`.`flag2` AS `flag2`,`model_all`.`flag3` AS `flag3`,`model_all`.`flag4` AS `flag4`,`model_all`.`flag5` AS `flag5`,`model_all`.`client_id` AS `client_id`,`model_all`.`created_on` AS `created_on`,`model_all`.`last_modified_on` AS `last_modified_on`,`model_all`.`last_modified_by` AS `last_modified_by` from `model_all` where (`model_all`.`model_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `owner_type`
--
DROP TABLE IF EXISTS `owner_type`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `owner_type` AS select `owner_type_all`.`owner_type_id` AS `owner_type_id`,`owner_type_all`.`name` AS `name`,`owner_type_all`.`description` AS `description`,`owner_type_all`.`udf1` AS `udf1`,`owner_type_all`.`udf2` AS `udf2`,`owner_type_all`.`udf3` AS `udf3`,`owner_type_all`.`udf4` AS `udf4`,`owner_type_all`.`udf5` AS `udf5`,`owner_type_all`.`falg1` AS `falg1`,`owner_type_all`.`flag2` AS `flag2`,`owner_type_all`.`flag3` AS `flag3`,`owner_type_all`.`flag4` AS `flag4`,`owner_type_all`.`flag5` AS `flag5`,`owner_type_all`.`created_on` AS `created_on`,`owner_type_all`.`last_modifiede_on` AS `last_modifiede_on`,`owner_type_all`.`last_modified_by` AS `last_modified_by`,`owner_type_all`.`client_id` AS `client_id` from `owner_type_all` where (`owner_type_all`.`owner_type_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `payment_gateway`
--
DROP TABLE IF EXISTS `payment_gateway`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `payment_gateway` AS select `payment_gateway_all`.`payment_gateway_id` AS `payment_gateway_id`,`payment_gateway_all`.`name` AS `name`,`payment_gateway_all`.`payment_class` AS `payment_class`,`payment_gateway_all`.`udf1` AS `udf1`,`payment_gateway_all`.`udf2` AS `udf2`,`payment_gateway_all`.`udf3` AS `udf3`,`payment_gateway_all`.`udf4` AS `udf4`,`payment_gateway_all`.`udf5` AS `udf5`,`payment_gateway_all`.`flag1` AS `flag1`,`payment_gateway_all`.`flag2` AS `flag2`,`payment_gateway_all`.`flag3` AS `flag3`,`payment_gateway_all`.`flag4` AS `flag4`,`payment_gateway_all`.`flag5` AS `flag5`,`payment_gateway_all`.`created_on` AS `created_on`,`payment_gateway_all`.`last_modified_on` AS `last_modified_on`,`payment_gateway_all`.`last_modified_by` AS `last_modified_by`,`payment_gateway_all`.`client_id` AS `client_id` from `payment_gateway_all` where (`payment_gateway_all`.`payment_gateway_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `payment_token`
--
DROP TABLE IF EXISTS `payment_token`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `payment_token` AS select `payment_token_all`.`payment_token_id` AS `payment_token_id`,`payment_token_all`.`upd_id` AS `upd_id`,`payment_token_all`.`payment_gateway_id` AS `payment_gateway_id`,`payment_token_all`.`token` AS `token`,`payment_token_all`.`udf1` AS `udf1`,`payment_token_all`.`udf2` AS `udf2`,`payment_token_all`.`udf3` AS `udf3`,`payment_token_all`.`udf4` AS `udf4`,`payment_token_all`.`udf5` AS `udf5`,`payment_token_all`.`flag1` AS `flag1`,`payment_token_all`.`flag2` AS `flag2`,`payment_token_all`.`flag3` AS `flag3`,`payment_token_all`.`flag4` AS `flag4`,`payment_token_all`.`flag5` AS `flag5`,`payment_token_all`.`created_on` AS `created_on`,`payment_token_all`.`last_modified_on` AS `last_modified_on`,`payment_token_all`.`last_modified_by` AS `last_modified_by`,`payment_token_all`.`client_id` AS `client_id` from `payment_token_all` where (`payment_token_all`.`payment_token_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `payment_transaction`
--
DROP TABLE IF EXISTS `payment_transaction`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `payment_transaction` AS select `payment_transaction_all`.`ptran_id` AS `ptran_id`,`payment_transaction_all`.`user_bl_id` AS `user_bl_id`,`payment_transaction_all`.`to_bl_id` AS `to_bl_id`,`payment_transaction_all`.`updh_id` AS `updh_id`,`payment_transaction_all`.`timestamp` AS `timestamp`,`payment_transaction_all`.`status` AS `status`,`payment_transaction_all`.`amount` AS `amount`,`payment_transaction_all`.`udf1` AS `udf1`,`payment_transaction_all`.`udf2` AS `udf2`,`payment_transaction_all`.`udf3` AS `udf3`,`payment_transaction_all`.`udf4` AS `udf4`,`payment_transaction_all`.`udf5` AS `udf5`,`payment_transaction_all`.`flag1` AS `flag1`,`payment_transaction_all`.`flag2` AS `flag2`,`payment_transaction_all`.`flag3` AS `flag3`,`payment_transaction_all`.`flag4` AS `flag4`,`payment_transaction_all`.`flag5` AS `flag5`,`payment_transaction_all`.`last_modified_by` AS `last_modified_by`,`payment_transaction_all`.`last_modified_on` AS `last_modified_on`,`payment_transaction_all`.`created_on` AS `created_on`,`payment_transaction_all`.`client_id` AS `client_id` from `payment_transaction_all` where (`payment_transaction_all`.`ptran_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `road`
--
DROP TABLE IF EXISTS `road`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `road` AS select `road_all`.`road_id` AS `road_id`,`road_all`.`name` AS `name`,`road_all`.`type` AS `type`,`road_all`.`start_location` AS `start_location`,`road_all`.`end_location` AS `end_location`,`road_all`.`udf1` AS `udf1`,`road_all`.`udf2` AS `udf2`,`road_all`.`udf3` AS `udf3`,`road_all`.`udf4` AS `udf4`,`road_all`.`udf5` AS `udf5`,`road_all`.`flag1` AS `flag1`,`road_all`.`flag2` AS `flag2`,`road_all`.`flag3` AS `flag3`,`road_all`.`flag4` AS `flag4`,`road_all`.`flag5` AS `flag5`,`road_all`.`created_on` AS `created_on`,`road_all`.`last_modified_on` AS `last_modified_on`,`road_all`.`last_modified_by` AS `last_modified_by`,`road_all`.`client_id` AS `client_id` from `road_all`;

-- --------------------------------------------------------

--
-- Structure for view `service_plan`
--
DROP TABLE IF EXISTS `service_plan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `service_plan` AS select `service_plan_all`.`service_plan_id` AS `service_plan_id`,`service_plan_all`.`toll_operator_id` AS `toll_operator_id`,`service_plan_all`.`name` AS `name`,`service_plan_all`.`description` AS `description`,`service_plan_all`.`udf1` AS `udf1`,`service_plan_all`.`udf2` AS `udf2`,`service_plan_all`.`udf3` AS `udf3`,`service_plan_all`.`udf4` AS `udf4`,`service_plan_all`.`udf5` AS `udf5`,`service_plan_all`.`flag1` AS `flag1`,`service_plan_all`.`flag2` AS `flag2`,`service_plan_all`.`flag3` AS `flag3`,`service_plan_all`.`flag4` AS `flag4`,`service_plan_all`.`flag5` AS `flag5`,`service_plan_all`.`last_modified_on` AS `last_modified_on`,`service_plan_all`.`last_modified_by` AS `last_modified_by`,`service_plan_all`.`created_on` AS `created_on`,`service_plan_all`.`client_id` AS `client_id` from `service_plan_all` where (`service_plan_all`.`service_plan_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `tc_realm_groups`
--
DROP TABLE IF EXISTS `tc_realm_groups`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tc_realm_groups` AS select `u`.`user_name` AS `username`,`ut`.`name` AS `groupname` from (`user_all` `u` join `user_type_all` `ut`) where (`u`.`utype_id` = `ut`.`user_type_id`);

-- --------------------------------------------------------

--
-- Structure for view `tc_realm_users`
--
DROP TABLE IF EXISTS `tc_realm_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tc_realm_users` AS select `user_all`.`user_name` AS `username`,`user_all`.`password` AS `password` from `user_all`;

-- --------------------------------------------------------

--
-- Structure for view `toll_location`
--
DROP TABLE IF EXISTS `toll_location`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `toll_location` AS select `toll_location_all`.`toll_location_id` AS `toll_location_id`,`toll_location_all`.`toll_operator_id` AS `toll_operator_id`,`toll_location_all`.`name` AS `name`,`toll_location_all`.`description` AS `description`,`toll_location_all`.`geometry` AS `geometry`,`toll_location_all`.`is_covered` AS `is_covered`,`toll_location_all`.`is_cash_only` AS `is_cash_only`,`toll_location_all`.`address1` AS `address1`,`toll_location_all`.`address2` AS `address2`,`toll_location_all`.`city` AS `city`,`toll_location_all`.`state` AS `state`,`toll_location_all`.`country` AS `country`,`toll_location_all`.`zip` AS `zip`,`toll_location_all`.`udf1` AS `udf1`,`toll_location_all`.`udf2` AS `udf2`,`toll_location_all`.`udf3` AS `udf3`,`toll_location_all`.`udf4` AS `udf4`,`toll_location_all`.`udf5` AS `udf5`,`toll_location_all`.`flag1` AS `flag1`,`toll_location_all`.`flag2` AS `flag2`,`toll_location_all`.`flag3` AS `flag3`,`toll_location_all`.`flag4` AS `flag4`,`toll_location_all`.`flag5` AS `flag5`,`toll_location_all`.`last_modified_by` AS `last_modified_by`,`toll_location_all`.`last_modified_on` AS `last_modified_on`,`toll_location_all`.`created_on` AS `created_on`,`toll_location_all`.`client_id` AS `client_id`,`toll_location_all`.`latitude` AS `latitude`,`toll_location_all`.`longitude` AS `longitude`,`toll_location_all`.`direction` AS `direction`,`toll_location_all`.`type` AS `type` from `toll_location_all` where (`toll_location_all`.`toll_location_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `toll_location_history`
--
DROP TABLE IF EXISTS `toll_location_history`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `toll_location_history` AS select `toll_location_history_all`.`tlh_id` AS `tlh_id`,`toll_location_history_all`.`toll_location_id` AS `toll_location_id`,`toll_location_history_all`.`toll_operator_id` AS `toll_operator_id`,`toll_location_history_all`.`name` AS `name`,`toll_location_history_all`.`description` AS `description`,`toll_location_history_all`.`geometry` AS `geometry`,`toll_location_history_all`.`is_covered` AS `is_covered`,`toll_location_history_all`.`is_cash_only` AS `is_cash_only`,`toll_location_history_all`.`address1` AS `address1`,`toll_location_history_all`.`address2` AS `address2`,`toll_location_history_all`.`city` AS `city`,`toll_location_history_all`.`state` AS `state`,`toll_location_history_all`.`country` AS `country`,`toll_location_history_all`.`zip` AS `zip`,`toll_location_history_all`.`udf1` AS `udf1`,`toll_location_history_all`.`udf2` AS `udf2`,`toll_location_history_all`.`udf3` AS `udf3`,`toll_location_history_all`.`udf4` AS `udf4`,`toll_location_history_all`.`udf5` AS `udf5`,`toll_location_history_all`.`flag1` AS `flag1`,`toll_location_history_all`.`flag2` AS `flag2`,`toll_location_history_all`.`flag3` AS `flag3`,`toll_location_history_all`.`flag4` AS `flag4`,`toll_location_history_all`.`flag5` AS `flag5`,`toll_location_history_all`.`created_on` AS `created_on`,`toll_location_history_all`.`last_modified_on` AS `last_modified_on`,`toll_location_history_all`.`last_modified_by` AS `last_modified_by`,`toll_location_history_all`.`start_date` AS `start_date`,`toll_location_history_all`.`end_date` AS `end_date`,`toll_location_history_all`.`action` AS `action`,`toll_location_history_all`.`client_id` AS `client_id`,`toll_location_history_all`.`latitude` AS `latitude`,`toll_location_history_all`.`longitude` AS `longitude`,`toll_location_history_all`.`direction` AS `direction`,`toll_location_history_all`.`type` AS `type` from `toll_location_history_all` where (`toll_location_history_all`.`tlh_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `toll_operator`
--
DROP TABLE IF EXISTS `toll_operator`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `toll_operator` AS select `toll_operator_all`.`toll_operator_id` AS `toll_operator_id`,`toll_operator_all`.`user_id` AS `user_id`,`toll_operator_all`.`name` AS `name`,`toll_operator_all`.`is_active` AS `is_active`,`toll_operator_all`.`website` AS `website`,`toll_operator_all`.`udf1` AS `udf1`,`toll_operator_all`.`udf2` AS `udf2`,`toll_operator_all`.`udf3` AS `udf3`,`toll_operator_all`.`udf4` AS `udf4`,`toll_operator_all`.`udf5` AS `udf5`,`toll_operator_all`.`flag1` AS `flag1`,`toll_operator_all`.`flag2` AS `flag2`,`toll_operator_all`.`flag3` AS `flag3`,`toll_operator_all`.`flag4` AS `flag4`,`toll_operator_all`.`flag5` AS `flag5`,`toll_operator_all`.`created_on` AS `created_on`,`toll_operator_all`.`last_modified_on` AS `last_modified_on`,`toll_operator_all`.`last_modified_by` AS `last_modified_by`,`toll_operator_all`.`client_id` AS `client_id` from `toll_operator_all` where (`toll_operator_all`.`toll_operator_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `toll_price`
--
DROP TABLE IF EXISTS `toll_price`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `toll_price` AS select `toll_price_all`.`toll_price_id` AS `toll_price_id`,`toll_price_all`.`toll_location_id` AS `toll_location_id`,`toll_price_all`.`vehicle_type_id` AS `vehicle_type_id`,`toll_price_all`.`cost_price` AS `cost_price`,`toll_price_all`.`selling_price` AS `selling_price`,`toll_price_all`.`udf1` AS `udf1`,`toll_price_all`.`udf2` AS `udf2`,`toll_price_all`.`udf3` AS `udf3`,`toll_price_all`.`udf4` AS `udf4`,`toll_price_all`.`udf5` AS `udf5`,`toll_price_all`.`flag1` AS `flag1`,`toll_price_all`.`flag2` AS `flag2`,`toll_price_all`.`flag3` AS `flag3`,`toll_price_all`.`flag4` AS `flag4`,`toll_price_all`.`flag5` AS `flag5`,`toll_price_all`.`last_modified_by` AS `last_modified_by`,`toll_price_all`.`last_modified_on` AS `last_modified_on`,`toll_price_all`.`created_on` AS `created_on`,`toll_price_all`.`client_id` AS `client_id` from `toll_price_all` where (`toll_price_all`.`toll_price_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `toll_price_history`
--
DROP TABLE IF EXISTS `toll_price_history`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `toll_price_history` AS select `toll_price_history_all`.`tph_id` AS `tph_id`,`toll_price_history_all`.`toll_price_id` AS `toll_price_id`,`toll_price_history_all`.`toll_location_id` AS `toll_location_id`,`toll_price_history_all`.`vehicle_type_id` AS `vehicle_type_id`,`toll_price_history_all`.`direction` AS `direction`,`toll_price_history_all`.`cost_price` AS `cost_price`,`toll_price_history_all`.`selling_price` AS `selling_price`,`toll_price_history_all`.`action` AS `action`,`toll_price_history_all`.`udf1` AS `udf1`,`toll_price_history_all`.`udf2` AS `udf2`,`toll_price_history_all`.`udf3` AS `udf3`,`toll_price_history_all`.`udf4` AS `udf4`,`toll_price_history_all`.`udf5` AS `udf5`,`toll_price_history_all`.`flag1` AS `flag1`,`toll_price_history_all`.`flag2` AS `flag2`,`toll_price_history_all`.`flag3` AS `flag3`,`toll_price_history_all`.`flag4` AS `flag4`,`toll_price_history_all`.`flag5` AS `flag5`,`toll_price_history_all`.`created_on` AS `created_on`,`toll_price_history_all`.`last_modified_on` AS `last_modified_on`,`toll_price_history_all`.`last_modified_by` AS `last_modified_by`,`toll_price_history_all`.`start_date` AS `start_date`,`toll_price_history_all`.`end_date` AS `end_date`,`toll_price_history_all`.`client_id` AS `client_id` from `toll_price_history_all` where (`toll_price_history_all`.`tph_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `tp_import`
--
DROP TABLE IF EXISTS `tp_import`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tp_import` AS select `tp_import_all`.`tp_import_id` AS `tp_import_id`,`tp_import_all`.`batch_id` AS `batch_id`,`tp_import_all`.`batch_record_number` AS `batch_record_number`,`tp_import_all`.`fd1` AS `fd1`,`tp_import_all`.`fd2` AS `fd2`,`tp_import_all`.`fd3` AS `fd3`,`tp_import_all`.`fd4` AS `fd4`,`tp_import_all`.`fd5` AS `fd5`,`tp_import_all`.`fd6` AS `fd6`,`tp_import_all`.`fd7` AS `fd7`,`tp_import_all`.`fd8` AS `fd8`,`tp_import_all`.`fd9` AS `fd9`,`tp_import_all`.`fd10` AS `fd10`,`tp_import_all`.`status` AS `status`,`tp_import_all`.`message` AS `message`,`tp_import_all`.`processed_on` AS `processed_on`,`tp_import_all`.`created_on` AS `created_on`,`tp_import_all`.`last_modified_on` AS `last_modified_on`,`tp_import_all`.`last_modified_by` AS `last_modified_by`,`tp_import_all`.`client_id` AS `client_id`,`tp_import_all`.`udf1` AS `udf1`,`tp_import_all`.`udf2` AS `udf2`,`tp_import_all`.`udf3` AS `udf3`,`tp_import_all`.`udf4` AS `udf4`,`tp_import_all`.`udf5` AS `udf5`,`tp_import_all`.`falg1` AS `falg1`,`tp_import_all`.`flag2` AS `flag2`,`tp_import_all`.`flag3` AS `flag3`,`tp_import_all`.`flag4` AS `flag4`,`tp_import_all`.`flag5` AS `flag5` from `tp_import_all` where (`tp_import_all`.`tp_import_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `tp_import_batch`
--
DROP TABLE IF EXISTS `tp_import_batch`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tp_import_batch` AS select `tp_import_batch_all`.`tp_import_batch_id` AS `tp_import_batch_id`,`tp_import_batch_all`.`batch_type` AS `batch_type`,`tp_import_batch_all`.`status` AS `status`,`tp_import_batch_all`.`created_on` AS `created_on`,`tp_import_batch_all`.`processed_on` AS `processed_on`,`tp_import_batch_all`.`last_modified_on` AS `last_modified_on`,`tp_import_batch_all`.`last_modified_by` AS `last_modified_by`,`tp_import_batch_all`.`client_id` AS `client_id`,`tp_import_batch_all`.`udf1` AS `udf1`,`tp_import_batch_all`.`udf2` AS `udf2`,`tp_import_batch_all`.`udf3` AS `udf3`,`tp_import_batch_all`.`udf4` AS `udf4`,`tp_import_batch_all`.`udf5` AS `udf5`,`tp_import_batch_all`.`falg1` AS `falg1`,`tp_import_batch_all`.`flag2` AS `flag2`,`tp_import_batch_all`.`flag3` AS `flag3`,`tp_import_batch_all`.`flag4` AS `flag4`,`tp_import_batch_all`.`flag5` AS `flag5` from `tp_import_batch_all` where (`tp_import_batch_all`.`tp_import_batch_id` >= 0);

-- --------------------------------------------------------

--
-- Structure for view `user`
--
DROP TABLE IF EXISTS `user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user` AS select `user_all`.`user_id` AS `user_id`,`user_all`.`client_id` AS `client_id`,`user_all`.`utype_id` AS `utype_id`,`user_all`.`user_name` AS `user_name`,`user_all`.`password` AS `password`,`user_all`.`locale` AS `locale`,`user_all`.`is_active` AS `is_active`,`user_all`.`contact_no` AS `contact_no`,`user_all`.`last_login_time` AS `last_login_time`,`user_all`.`udf1` AS `udf1`,`user_all`.`udf2` AS `udf2`,`user_all`.`udf3` AS `udf3`,`user_all`.`udf4` AS `udf4`,`user_all`.`udf5` AS `udf5`,`user_all`.`flag1` AS `flag1`,`user_all`.`flag2` AS `flag2`,`user_all`.`flag3` AS `flag3`,`user_all`.`flag4` AS `flag4`,`user_all`.`flag5` AS `flag5`,`user_all`.`created_on` AS `created_on`,`user_all`.`last_modified_on` AS `last_modified_on`,`user_all`.`last_modified_by` AS `last_modified_by` from `user_all` where (`user_all`.`user_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `user_balance`
--
DROP TABLE IF EXISTS `user_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_balance` AS select `user_balance_all`.`ubal_id` AS `ubal_id`,`user_balance_all`.`user_id` AS `user_id`,`user_balance_all`.`balance` AS `balance`,`user_balance_all`.`udf1` AS `udf1`,`user_balance_all`.`udf2` AS `udf2`,`user_balance_all`.`udf3` AS `udf3`,`user_balance_all`.`udf4` AS `udf4`,`user_balance_all`.`udf5` AS `udf5`,`user_balance_all`.`flag1` AS `flag1`,`user_balance_all`.`flag2` AS `flag2`,`user_balance_all`.`flag3` AS `flag3`,`user_balance_all`.`flag4` AS `flag4`,`user_balance_all`.`flag5` AS `flag5`,`user_balance_all`.`last_modified_by` AS `last_modified_by`,`user_balance_all`.`last_modified_on` AS `last_modified_on`,`user_balance_all`.`created_on` AS `created_on`,`user_balance_all`.`client_id` AS `client_id` from `user_balance_all` where (`user_balance_all`.`ubal_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `user_balance_log`
--
DROP TABLE IF EXISTS `user_balance_log`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_balance_log` AS select `user_balance_log_all`.`ublog_id` AS `ublog_id`,`user_balance_log_all`.`ubal_id` AS `ubal_id`,`user_balance_log_all`.`delta` AS `delta`,`user_balance_log_all`.`timestamp` AS `timestamp`,`user_balance_log_all`.`action` AS `action`,`user_balance_log_all`.`udf1` AS `udf1`,`user_balance_log_all`.`udf2` AS `udf2`,`user_balance_log_all`.`udf3` AS `udf3`,`user_balance_log_all`.`udf4` AS `udf4`,`user_balance_log_all`.`udf5` AS `udf5`,`user_balance_log_all`.`flag1` AS `flag1`,`user_balance_log_all`.`flag2` AS `flag2`,`user_balance_log_all`.`flag3` AS `flag3`,`user_balance_log_all`.`flag4` AS `flag4`,`user_balance_log_all`.`flag5` AS `flag5`,`user_balance_log_all`.`last_modified_by` AS `last_modified_by`,`user_balance_log_all`.`last_modified_on` AS `last_modified_on`,`user_balance_log_all`.`created_on` AS `created_on`,`user_balance_log_all`.`client_id` AS `client_id` from `user_balance_log_all` where (`user_balance_log_all`.`ublog_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `user_history`
--
DROP TABLE IF EXISTS `user_history`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_history` AS select `user_history_all`.`user_his_id` AS `user_his_id`,`user_history_all`.`user_id` AS `user_id`,`user_history_all`.`user_name` AS `user_name`,`user_history_all`.`password` AS `password`,`user_history_all`.`locale` AS `locale`,`user_history_all`.`utype_id` AS `utype_id`,`user_history_all`.`last_login_time` AS `last_login_time`,`user_history_all`.`is_active` AS `is_active`,`user_history_all`.`contact_no` AS `contact_no`,`user_history_all`.`client_id` AS `client_id`,`user_history_all`.`action` AS `action`,`user_history_all`.`udf1` AS `udf1`,`user_history_all`.`udf2` AS `udf2`,`user_history_all`.`udf3` AS `udf3`,`user_history_all`.`udf4` AS `udf4`,`user_history_all`.`udf5` AS `udf5`,`user_history_all`.`flag1` AS `flag1`,`user_history_all`.`flag2` AS `flag2`,`user_history_all`.`flag3` AS `flag3`,`user_history_all`.`flag4` AS `flag4`,`user_history_all`.`flag5` AS `flag5`,`user_history_all`.`created_on` AS `created_on`,`user_history_all`.`last_modified_on` AS `last_modified_on`,`user_history_all`.`last_modified_by` AS `last_modified_by`,`user_history_all`.`start_date` AS `start_date`,`user_history_all`.`end_date` AS `end_date` from `user_history_all` where (`user_history_all`.`user_his_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `user_notification`
--
DROP TABLE IF EXISTS `user_notification`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_notification` AS select `user_notification_all`.`user_notification_id` AS `user_notification_id`,`user_notification_all`.`device_id` AS `device_id`,`user_notification_all`.`user_notification_type` AS `user_notification_type`,`user_notification_all`.`udf1` AS `udf1`,`user_notification_all`.`udf2` AS `udf2`,`user_notification_all`.`udf3` AS `udf3`,`user_notification_all`.`udf4` AS `udf4`,`user_notification_all`.`udf5` AS `udf5`,`user_notification_all`.`flag1` AS `flag1`,`user_notification_all`.`flag2` AS `flag2`,`user_notification_all`.`flag3` AS `flag3`,`user_notification_all`.`flag4` AS `flag4`,`user_notification_all`.`flag5` AS `flag5`,`user_notification_all`.`created_on` AS `created_on`,`user_notification_all`.`last_modified_on` AS `last_modified_on`,`user_notification_all`.`last_modified_by` AS `last_modified_by`,`user_notification_all`.`client_id` AS `client_id`,`user_notification_all`.`status` AS `status`,`user_notification_all`.`send_at` AS `send_at`,`user_notification_all`.`notification` AS `notification`,`user_notification_all`.`ack_message` AS `ack_message`,`user_notification_all`.`ack_result` AS `ack_result`,`user_notification_all`.`add_timestamp` AS `add_timestamp`,`user_notification_all`.`sent_timestamp` AS `sent_timestamp`,`user_notification_all`.`ack_timestamp` AS `ack_timestamp` from `user_notification_all` where (`user_notification_all`.`user_notification_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `user_notification_settings`
--
DROP TABLE IF EXISTS `user_notification_settings`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_notification_settings` AS select `user_notification_settings_all`.`user_notification_settings_id` AS `user_notification_settings_id`,`user_notification_settings_all`.`user_id` AS `user_id`,`user_notification_settings_all`.`user_notification_type_id` AS `user_notification_type_id`,`user_notification_settings_all`.`udf1` AS `udf1`,`user_notification_settings_all`.`udf2` AS `udf2`,`user_notification_settings_all`.`udf3` AS `udf3`,`user_notification_settings_all`.`udf4` AS `udf4`,`user_notification_settings_all`.`udf5` AS `udf5`,`user_notification_settings_all`.`flag1` AS `flag1`,`user_notification_settings_all`.`flag2` AS `flag2`,`user_notification_settings_all`.`flag3` AS `flag3`,`user_notification_settings_all`.`flag4` AS `flag4`,`user_notification_settings_all`.`flag5` AS `flag5`,`user_notification_settings_all`.`created_on` AS `created_on`,`user_notification_settings_all`.`last_modified_on` AS `last_modified_on`,`user_notification_settings_all`.`last_modified_by` AS `last_modified_by`,`user_notification_settings_all`.`client_id` AS `client_id` from `user_notification_settings_all`;

-- --------------------------------------------------------

--
-- Structure for view `user_notification_type`
--
DROP TABLE IF EXISTS `user_notification_type`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_notification_type` AS select `user_notification_type_all`.`user_notification_type_id` AS `user_notification_type_id`,`user_notification_type_all`.`notification_type` AS `notification_type`,`user_notification_type_all`.`description` AS `description`,`user_notification_type_all`.`udf1` AS `udf1`,`user_notification_type_all`.`udf2` AS `udf2`,`user_notification_type_all`.`udf3` AS `udf3`,`user_notification_type_all`.`udf4` AS `udf4`,`user_notification_type_all`.`udf5` AS `udf5`,`user_notification_type_all`.`flag1` AS `flag1`,`user_notification_type_all`.`flag2` AS `flag2`,`user_notification_type_all`.`flag3` AS `flag3`,`user_notification_type_all`.`flag4` AS `flag4`,`user_notification_type_all`.`flag5` AS `flag5`,`user_notification_type_all`.`created_on` AS `created_on`,`user_notification_type_all`.`last_modified_on` AS `last_modified_on`,`user_notification_type_all`.`last_modified_by` AS `last_modified_by`,`user_notification_type_all`.`client_id` AS `client_id` from `user_notification_type_all`;

-- --------------------------------------------------------

--
-- Structure for view `user_payment_detail`
--
DROP TABLE IF EXISTS `user_payment_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_payment_detail` AS select `user_payment_detail_all`.`upd_id` AS `upd_id`,`user_payment_detail_all`.`user_id` AS `user_id`,`user_payment_detail_all`.`cc_type_id` AS `cc_type_id`,`user_payment_detail_all`.`cc_ac_name` AS `cc_ac_name`,`user_payment_detail_all`.`cc_number` AS `cc_number`,`user_payment_detail_all`.`cc_exp_month` AS `cc_exp_month`,`user_payment_detail_all`.`cc_exp_year` AS `cc_exp_year`,`user_payment_detail_all`.`cc_cvv` AS `cc_cvv`,`user_payment_detail_all`.`bank_routing` AS `bank_routing`,`user_payment_detail_all`.`bank_account` AS `bank_account`,`user_payment_detail_all`.`pay_prefer` AS `pay_prefer`,`user_payment_detail_all`.`address1` AS `address1`,`user_payment_detail_all`.`address2` AS `address2`,`user_payment_detail_all`.`city` AS `city`,`user_payment_detail_all`.`state` AS `state`,`user_payment_detail_all`.`country` AS `country`,`user_payment_detail_all`.`zip` AS `zip`,`user_payment_detail_all`.`udf1` AS `udf1`,`user_payment_detail_all`.`udf2` AS `udf2`,`user_payment_detail_all`.`udf3` AS `udf3`,`user_payment_detail_all`.`udf4` AS `udf4`,`user_payment_detail_all`.`udf5` AS `udf5`,`user_payment_detail_all`.`flag1` AS `flag1`,`user_payment_detail_all`.`flag2` AS `flag2`,`user_payment_detail_all`.`flag3` AS `flag3`,`user_payment_detail_all`.`flag4` AS `flag4`,`user_payment_detail_all`.`flag5` AS `flag5`,`user_payment_detail_all`.`last_modified_by` AS `last_modified_by`,`user_payment_detail_all`.`last_modified_on` AS `last_modified_on`,`user_payment_detail_all`.`created_on` AS `created_on`,`user_payment_detail_all`.`client_id` AS `client_id` from `user_payment_detail_all` where (`user_payment_detail_all`.`upd_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `user_payment_detail_history`
--
DROP TABLE IF EXISTS `user_payment_detail_history`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_payment_detail_history` AS select `user_payment_detail_history_all`.`updh_id` AS `updh_id`,`user_payment_detail_history_all`.`upd_id` AS `upd_id`,`user_payment_detail_history_all`.`user_id` AS `user_id`,`user_payment_detail_history_all`.`cc_type_id` AS `cc_type_id`,`user_payment_detail_history_all`.`cc_ac_name` AS `cc_ac_name`,`user_payment_detail_history_all`.`cc_number` AS `cc_number`,`user_payment_detail_history_all`.`cc_exp_month` AS `cc_exp_month`,`user_payment_detail_history_all`.`cc_exp_year` AS `cc_exp_year`,`user_payment_detail_history_all`.`cc_cvv` AS `cc_cvv`,`user_payment_detail_history_all`.`bank_routing` AS `bank_routing`,`user_payment_detail_history_all`.`bank_account` AS `bank_account`,`user_payment_detail_history_all`.`address1` AS `address1`,`user_payment_detail_history_all`.`address2` AS `address2`,`user_payment_detail_history_all`.`city` AS `city`,`user_payment_detail_history_all`.`state` AS `state`,`user_payment_detail_history_all`.`country` AS `country`,`user_payment_detail_history_all`.`zip` AS `zip`,`user_payment_detail_history_all`.`pay_prefer` AS `pay_prefer`,`user_payment_detail_history_all`.`action` AS `action`,`user_payment_detail_history_all`.`udf1` AS `udf1`,`user_payment_detail_history_all`.`udf2` AS `udf2`,`user_payment_detail_history_all`.`udf3` AS `udf3`,`user_payment_detail_history_all`.`udf4` AS `udf4`,`user_payment_detail_history_all`.`udf5` AS `udf5`,`user_payment_detail_history_all`.`flag1` AS `flag1`,`user_payment_detail_history_all`.`flag2` AS `flag2`,`user_payment_detail_history_all`.`flag3` AS `flag3`,`user_payment_detail_history_all`.`flag4` AS `flag4`,`user_payment_detail_history_all`.`flag5` AS `flag5`,`user_payment_detail_history_all`.`created_on` AS `created_on`,`user_payment_detail_history_all`.`last_modified_on` AS `last_modified_on`,`user_payment_detail_history_all`.`last_modified_by` AS `last_modified_by`,`user_payment_detail_history_all`.`start_date` AS `start_date`,`user_payment_detail_history_all`.`end_date` AS `end_date`,`user_payment_detail_history_all`.`client_id` AS `client_id` from `user_payment_detail_history_all` where (`user_payment_detail_history_all`.`updh_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `user_service`
--
DROP TABLE IF EXISTS `user_service`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_service` AS select `user_service_all`.`user_service_id` AS `user_service_id`,`user_service_all`.`user_id` AS `user_id`,`user_service_all`.`service_id` AS `service_id`,`user_service_all`.`start_date` AS `start_date`,`user_service_all`.`end_date` AS `end_date`,`user_service_all`.`priority` AS `priority`,`user_service_all`.`udf1` AS `udf1`,`user_service_all`.`udf2` AS `udf2`,`user_service_all`.`udf3` AS `udf3`,`user_service_all`.`udf4` AS `udf4`,`user_service_all`.`udf5` AS `udf5`,`user_service_all`.`flag1` AS `flag1`,`user_service_all`.`flag2` AS `flag2`,`user_service_all`.`flag3` AS `flag3`,`user_service_all`.`flag4` AS `flag4`,`user_service_all`.`flag5` AS `flag5`,`user_service_all`.`created_on` AS `created_on`,`user_service_all`.`last_modified_on` AS `last_modified_on`,`user_service_all`.`last_modified_by` AS `last_modified_by`,`user_service_all`.`client_id` AS `client_id` from `user_service_all` where (`user_service_all`.`user_service_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `user_type`
--
DROP TABLE IF EXISTS `user_type`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_type` AS select `user_type_all`.`user_type_id` AS `user_type_id`,`user_type_all`.`name` AS `name`,`user_type_all`.`description` AS `description`,`user_type_all`.`min_balance` AS `min_balance`,`user_type_all`.`min_balance_type` AS `min_balance_type`,`user_type_all`.`udf1` AS `udf1`,`user_type_all`.`udf2` AS `udf2`,`user_type_all`.`udf3` AS `udf3`,`user_type_all`.`udf4` AS `udf4`,`user_type_all`.`udf5` AS `udf5`,`user_type_all`.`flag1` AS `flag1`,`user_type_all`.`flag2` AS `flag2`,`user_type_all`.`flag3` AS `flag3`,`user_type_all`.`flag4` AS `flag4`,`user_type_all`.`flag5` AS `flag5`,`user_type_all`.`created_on` AS `created_on`,`user_type_all`.`last_modified_on` AS `last_modified_on`,`user_type_all`.`last_modified_by` AS `last_modified_by`,`user_type_all`.`client_id` AS `client_id` from `user_type_all` where (`user_type_all`.`user_type_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `user_vehicle`
--
DROP TABLE IF EXISTS `user_vehicle`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_vehicle` AS select `user_vehicle_all`.`user_vehicle_id` AS `user_vehicle_id`,`user_vehicle_all`.`user_id` AS `user_id`,`user_vehicle_all`.`vehicle_start_date` AS `vehicle_start_date`,`user_vehicle_all`.`vehicle_end_date` AS `vehicle_end_date`,`user_vehicle_all`.`is_active` AS `is_active`,`user_vehicle_all`.`registration_no` AS `registration_no`,`user_vehicle_all`.`registered_state` AS `registered_state`,`user_vehicle_all`.`owner_type_id` AS `owner_type_id`,`user_vehicle_all`.`udf1` AS `udf1`,`user_vehicle_all`.`udf2` AS `udf2`,`user_vehicle_all`.`udf3` AS `udf3`,`user_vehicle_all`.`udf4` AS `udf4`,`user_vehicle_all`.`udf5` AS `udf5`,`user_vehicle_all`.`flag1` AS `flag1`,`user_vehicle_all`.`flag2` AS `flag2`,`user_vehicle_all`.`flag3` AS `flag3`,`user_vehicle_all`.`flag4` AS `flag4`,`user_vehicle_all`.`flag5` AS `flag5`,`user_vehicle_all`.`last_modified_by` AS `last_modified_by`,`user_vehicle_all`.`last_modified_on` AS `last_modified_on`,`user_vehicle_all`.`created_on` AS `created_on`,`user_vehicle_all`.`client_id` AS `client_id`,`user_vehicle_all`.`model_id` AS `model_id`,`user_vehicle_all`.`vin` AS `vin`,`user_vehicle_all`.`color` AS `color`,`user_vehicle_all`.`manufactured_year` AS `manufactured_year` from `user_vehicle_all` where (`user_vehicle_all`.`user_vehicle_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `user_vehicle_history`
--
DROP TABLE IF EXISTS `user_vehicle_history`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_vehicle_history` AS select `user_vehicle_history_all`.`uvh_id` AS `uvh_id`,`user_vehicle_history_all`.`user_vehicle_id` AS `user_vehicle_id`,`user_vehicle_history_all`.`user_id` AS `user_id`,`user_vehicle_history_all`.`is_active` AS `is_active`,`user_vehicle_history_all`.`vehicle_start_date` AS `vehicle_start_date`,`user_vehicle_history_all`.`vehicle_end_date` AS `vehicle_end_date`,`user_vehicle_history_all`.`registration_no` AS `registration_no`,`user_vehicle_history_all`.`registered_state` AS `registered_state`,`user_vehicle_history_all`.`owner_type_id` AS `owner_type_id`,`user_vehicle_history_all`.`udf1` AS `udf1`,`user_vehicle_history_all`.`udf2` AS `udf2`,`user_vehicle_history_all`.`udf3` AS `udf3`,`user_vehicle_history_all`.`udf4` AS `udf4`,`user_vehicle_history_all`.`udf5` AS `udf5`,`user_vehicle_history_all`.`flag1` AS `flag1`,`user_vehicle_history_all`.`flag2` AS `flag2`,`user_vehicle_history_all`.`flag3` AS `flag3`,`user_vehicle_history_all`.`flag4` AS `flag4`,`user_vehicle_history_all`.`flag5` AS `flag5`,`user_vehicle_history_all`.`created_on` AS `created_on`,`user_vehicle_history_all`.`last_modified_on` AS `last_modified_on`,`user_vehicle_history_all`.`last_modified_by` AS `last_modified_by`,`user_vehicle_history_all`.`start_date` AS `start_date`,`user_vehicle_history_all`.`end_date` AS `end_date`,`user_vehicle_history_all`.`action` AS `action`,`user_vehicle_history_all`.`client_id` AS `client_id`,`user_vehicle_history_all`.`model_id` AS `model_id`,`user_vehicle_history_all`.`vin` AS `vin`,`user_vehicle_history_all`.`color` AS `color`,`user_vehicle_history_all`.`manufactured_year` AS `manufactured_year` from `user_vehicle_history_all` where (`user_vehicle_history_all`.`uvh_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `user_vehicle_tolloperator`
--
DROP TABLE IF EXISTS `user_vehicle_tolloperator`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_vehicle_tolloperator` AS select `user_vehicle_tolloperator_all`.`uvt_id` AS `uvt_id`,`user_vehicle_tolloperator_all`.`user_vehicle_id` AS `user_vehicle_id`,`user_vehicle_tolloperator_all`.`toll_operator_id` AS `toll_operator_id`,`user_vehicle_tolloperator_all`.`status` AS `status`,`user_vehicle_tolloperator_all`.`start_date` AS `start_date`,`user_vehicle_tolloperator_all`.`end_date` AS `end_date`,`user_vehicle_tolloperator_all`.`udf1` AS `udf1`,`user_vehicle_tolloperator_all`.`udf2` AS `udf2`,`user_vehicle_tolloperator_all`.`udf3` AS `udf3`,`user_vehicle_tolloperator_all`.`udf4` AS `udf4`,`user_vehicle_tolloperator_all`.`udf5` AS `udf5`,`user_vehicle_tolloperator_all`.`flag1` AS `flag1`,`user_vehicle_tolloperator_all`.`flag2` AS `flag2`,`user_vehicle_tolloperator_all`.`flag3` AS `flag3`,`user_vehicle_tolloperator_all`.`flag4` AS `flag4`,`user_vehicle_tolloperator_all`.`flag5` AS `flag5`,`user_vehicle_tolloperator_all`.`last_modified_by` AS `last_modified_by`,`user_vehicle_tolloperator_all`.`last_modified_on` AS `last_modified_on`,`user_vehicle_tolloperator_all`.`created_on` AS `created_on`,`user_vehicle_tolloperator_all`.`client_id` AS `client_id` from `user_vehicle_tolloperator_all` where (`user_vehicle_tolloperator_all`.`client_id` > -(1));

-- --------------------------------------------------------

--
-- Structure for view `vehicle_movement_log`
--
DROP TABLE IF EXISTS `vehicle_movement_log`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vehicle_movement_log` AS select `vehicle_movement_log_all`.`vml_id` AS `vml_id`,`vehicle_movement_log_all`.`vml_type_id` AS `vml_type_id`,`vehicle_movement_log_all`.`device_history_id` AS `device_history_id`,`vehicle_movement_log_all`.`toll_location_id` AS `toll_location_id`,`vehicle_movement_log_all`.`geometry` AS `geometry`,`vehicle_movement_log_all`.`timestamp` AS `timestamp`,`vehicle_movement_log_all`.`udf1` AS `udf1`,`vehicle_movement_log_all`.`udf2` AS `udf2`,`vehicle_movement_log_all`.`udf3` AS `udf3`,`vehicle_movement_log_all`.`udf4` AS `udf4`,`vehicle_movement_log_all`.`udf5` AS `udf5`,`vehicle_movement_log_all`.`flag1` AS `flag1`,`vehicle_movement_log_all`.`flag2` AS `flag2`,`vehicle_movement_log_all`.`flag3` AS `flag3`,`vehicle_movement_log_all`.`flag4` AS `flag4`,`vehicle_movement_log_all`.`flag5` AS `flag5`,`vehicle_movement_log_all`.`last_modified_on` AS `last_modified_on`,`vehicle_movement_log_all`.`last_modified_by` AS `last_modified_by`,`vehicle_movement_log_all`.`created_on` AS `created_on`,`vehicle_movement_log_all`.`client_id` AS `client_id`,`vehicle_movement_log_all`.`latitude` AS `latitude`,`vehicle_movement_log_all`.`longitude` AS `longitude`,`vehicle_movement_log_all`.`status` AS `status`,`vehicle_movement_log_all`.`toll_session_id` AS `toll_session_id`,`vehicle_movement_log_all`.`distance` AS `distance` from `vehicle_movement_log_all` where (`vehicle_movement_log_all`.`vml_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `vehicle_toll_usage`
--
DROP TABLE IF EXISTS `vehicle_toll_usage`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vehicle_toll_usage` AS select `vehicle_toll_usage_all`.`vtu_id` AS `vtu_id`,`vehicle_toll_usage_all`.`uvh_id` AS `uvh_id`,`vehicle_toll_usage_all`.`toll_loc_id` AS `toll_loc_id`,`vehicle_toll_usage_all`.`tph_id` AS `tph_id`,`vehicle_toll_usage_all`.`timestamp` AS `timestamp`,`vehicle_toll_usage_all`.`vml_id` AS `vml_id`,`vehicle_toll_usage_all`.`ptran_id` AS `ptran_id`,`vehicle_toll_usage_all`.`udf1` AS `udf1`,`vehicle_toll_usage_all`.`udf2` AS `udf2`,`vehicle_toll_usage_all`.`udf3` AS `udf3`,`vehicle_toll_usage_all`.`udf4` AS `udf4`,`vehicle_toll_usage_all`.`udf5` AS `udf5`,`vehicle_toll_usage_all`.`flag1` AS `flag1`,`vehicle_toll_usage_all`.`flag2` AS `flag2`,`vehicle_toll_usage_all`.`flag3` AS `flag3`,`vehicle_toll_usage_all`.`flag4` AS `flag4`,`vehicle_toll_usage_all`.`flag5` AS `flag5`,`vehicle_toll_usage_all`.`last_modified_by` AS `last_modified_by`,`vehicle_toll_usage_all`.`last_modified_on` AS `last_modified_on`,`vehicle_toll_usage_all`.`created_on` AS `created_on`,`vehicle_toll_usage_all`.`client_id` AS `client_id` from `vehicle_toll_usage_all` where (`vehicle_toll_usage_all`.`vtu_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `vehicle_type`
--
DROP TABLE IF EXISTS `vehicle_type`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vehicle_type` AS select `vehicle_type_all`.`vehicle_type_id` AS `vehicle_type_id`,`vehicle_type_all`.`name` AS `name`,`vehicle_type_all`.`description` AS `description`,`vehicle_type_all`.`udf1` AS `udf1`,`vehicle_type_all`.`udf2` AS `udf2`,`vehicle_type_all`.`udf3` AS `udf3`,`vehicle_type_all`.`udf4` AS `udf4`,`vehicle_type_all`.`udf5` AS `udf5`,`vehicle_type_all`.`flag1` AS `flag1`,`vehicle_type_all`.`flag2` AS `flag2`,`vehicle_type_all`.`flag3` AS `flag3`,`vehicle_type_all`.`flag4` AS `flag4`,`vehicle_type_all`.`flag5` AS `flag5`,`vehicle_type_all`.`created_on` AS `created_on`,`vehicle_type_all`.`last_modified_on` AS `last_modified_on`,`vehicle_type_all`.`last_modified_by` AS `last_modified_by`,`vehicle_type_all`.`client_id` AS `client_id` from `vehicle_type_all` where (`vehicle_type_all`.`vehicle_type_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `vml_type`
--
DROP TABLE IF EXISTS `vml_type`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vml_type` AS select `vml_type_all`.`vml_type_id` AS `vml_type_id`,`vml_type_all`.`name` AS `name`,`vml_type_all`.`description` AS `description`,`vml_type_all`.`udf1` AS `udf1`,`vml_type_all`.`udf2` AS `udf2`,`vml_type_all`.`udf3` AS `udf3`,`vml_type_all`.`udf4` AS `udf4`,`vml_type_all`.`udf5` AS `udf5`,`vml_type_all`.`flag1` AS `flag1`,`vml_type_all`.`flag2` AS `flag2`,`vml_type_all`.`flag3` AS `flag3`,`vml_type_all`.`flag4` AS `flag4`,`vml_type_all`.`flag5` AS `flag5`,`vml_type_all`.`last_modified_by` AS `last_modified_by`,`vml_type_all`.`last_modified_on` AS `last_modified_on`,`vml_type_all`.`created_on` AS `created_on`,`vml_type_all`.`client_id` AS `client_id` from `vml_type_all` where (`vml_type_all`.`vml_type_id` > 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cc_type_all`
--
ALTER TABLE `cc_type_all`
  ADD CONSTRAINT `fk_client_cct` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_cta` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `client_all`
--
ALTER TABLE `client_all`
  ADD CONSTRAINT `fk_cl_user` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_ca` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `component_all`
--
ALTER TABLE `component_all`
  ADD CONSTRAINT `fk_comp_client` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_comp` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `component_version_all`
--
ALTER TABLE `component_version_all`
  ADD CONSTRAINT `fk_cv_c` FOREIGN KEY (`component_id`) REFERENCES `component_all` (`component_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_cv` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `configuration_all`
--
ALTER TABLE `configuration_all`
  ADD CONSTRAINT `fk_c_cv` FOREIGN KEY (`comp_version_id`) REFERENCES `component_version_all` (`comp_version_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mod_by_config_all` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `device_all`
--
ALTER TABLE `device_all`
  ADD CONSTRAINT `fk_device_client` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_device_user` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_lastmod_device` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `make_all`
--
ALTER TABLE `make_all`
  ADD CONSTRAINT `fk_lmb_make` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_make_client` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE;

--
-- Constraints for table `model_all`
--
ALTER TABLE `model_all`
  ADD CONSTRAINT `fk_lmb_model` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_model_client` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_model_make` FOREIGN KEY (`make_id`) REFERENCES `make_all` (`make_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_model_vt` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_type_all` (`vehicle_type_id`) ON UPDATE CASCADE;

--
-- Constraints for table `owner_type_all`
--
ALTER TABLE `owner_type_all`
  ADD CONSTRAINT `fk_client_ot` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_ota` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `payment_gateway_all`
--
ALTER TABLE `payment_gateway_all`
  ADD CONSTRAINT `fk_pg_client` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pg_user` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `payment_token_all`
--
ALTER TABLE `payment_token_all`
  ADD CONSTRAINT `fk_pt_client` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pt_pg` FOREIGN KEY (`payment_gateway_id`) REFERENCES `payment_gateway_all` (`payment_gateway_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pt_upd` FOREIGN KEY (`upd_id`) REFERENCES `user_payment_detail_all` (`upd_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pt_user` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `payment_transaction_all`
--
ALTER TABLE `payment_transaction_all`
  ADD CONSTRAINT `fk_client_pt` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_lat_mod_by_pta` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pt_tlog` FOREIGN KEY (`to_bl_id`) REFERENCES `user_balance_log_all` (`ublog_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pt_ublog` FOREIGN KEY (`user_bl_id`) REFERENCES `user_balance_log_all` (`ublog_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pt_updh` FOREIGN KEY (`updh_id`) REFERENCES `user_payment_detail_history_all` (`updh_id`) ON UPDATE CASCADE;

--
-- Constraints for table `road_all`
--
ALTER TABLE `road_all`
  ADD CONSTRAINT `fk_last_mod_by_road` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_road_client_all` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE;

--
-- Constraints for table `service_plan_all`
--
ALTER TABLE `service_plan_all`
  ADD CONSTRAINT `fk_client_sp` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_spa` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sp_to` FOREIGN KEY (`toll_operator_id`) REFERENCES `toll_operator_all` (`toll_operator_id`) ON UPDATE CASCADE;

--
-- Constraints for table `toll_location_all`
--
ALTER TABLE `toll_location_all`
  ADD CONSTRAINT `fk_client_tl` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_tla` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_toll_op_id` FOREIGN KEY (`toll_operator_id`) REFERENCES `toll_operator_all` (`toll_operator_id`) ON UPDATE CASCADE;

--
-- Constraints for table `toll_operator_all`
--
ALTER TABLE `toll_operator_all`
  ADD CONSTRAINT `fk_client_to` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_toa` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_toll_user` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `toll_price_all`
--
ALTER TABLE `toll_price_all`
  ADD CONSTRAINT `fk_client_tp` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_tpa` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tp_tl` FOREIGN KEY (`toll_location_id`) REFERENCES `toll_location_all` (`toll_location_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tp_vt` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_type_all` (`vehicle_type_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tp_import_all`
--
ALTER TABLE `tp_import_all`
  ADD CONSTRAINT `tp_imp_bat` FOREIGN KEY (`batch_id`) REFERENCES `tp_import_batch_all` (`tp_import_batch_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tp_imp_client` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tp_imp_lmb` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tp_import_batch_all`
--
ALTER TABLE `tp_import_batch_all`
  ADD CONSTRAINT `fk_tp_imp_bat_client` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tp_imp_bat_lmb` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `udf_data_all`
--
ALTER TABLE `udf_data_all`
  ADD CONSTRAINT `fk_udfdata_udfdef` FOREIGN KEY (`udf_def_id`) REFERENCES `udf_definition_all` (`udf_def_id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_all`
--
ALTER TABLE `user_all`
  ADD CONSTRAINT `fk_client_id_user` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_utype_user` FOREIGN KEY (`utype_id`) REFERENCES `user_type_all` (`user_type_id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_balance_all`
--
ALTER TABLE `user_balance_all`
  ADD CONSTRAINT `fk_client_ub` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_uba` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ubal_users` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_balance_log_all`
--
ALTER TABLE `user_balance_log_all`
  ADD CONSTRAINT `fk_client_ubl` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_ubla` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ublog_ubal` FOREIGN KEY (`ubal_id`) REFERENCES `user_balance_all` (`ubal_id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_notification_all`
--
ALTER TABLE `user_notification_all`
  ADD CONSTRAINT `fk_device` FOREIGN KEY (`device_id`) REFERENCES `device_all` (`device_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_notification` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_unotify_client_all` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_notification_settings_all`
--
ALTER TABLE `user_notification_settings_all`
  ADD CONSTRAINT `fk_last_mod_by_notify_settings` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_not_settings_client_all` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_not_settings_user_all` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_settings_user_notification_type_all` FOREIGN KEY (`user_notification_type_id`) REFERENCES `user_notification_type_all` (`user_notification_type_id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_notification_type_all`
--
ALTER TABLE `user_notification_type_all`
  ADD CONSTRAINT `fk_last_mod_by_not_type` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_noti_type_client_all` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_payment_detail_all`
--
ALTER TABLE `user_payment_detail_all`
  ADD CONSTRAINT `fk_cctype_upd` FOREIGN KEY (`cc_type_id`) REFERENCES `cc_type_all` (`cc_type_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_client_upd` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_upda` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_upd_user` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_service_all`
--
ALTER TABLE `user_service_all`
  ADD CONSTRAINT `fk_client_us` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_las_mod_by` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_us_ser` FOREIGN KEY (`service_id`) REFERENCES `service_plan_all` (`service_plan_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_us_user` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_type_all`
--
ALTER TABLE `user_type_all`
  ADD CONSTRAINT `fk_client_ut` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_uta` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_vehicle_all`
--
ALTER TABLE `user_vehicle_all`
  ADD CONSTRAINT `fk_client_uv` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_uva` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_model_uv` FOREIGN KEY (`model_id`) REFERENCES `model_all` (`model_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_user_vehicle` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_uv_co` FOREIGN KEY (`owner_type_id`) REFERENCES `owner_type_all` (`owner_type_id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_vehicle_tolloperator_all`
--
ALTER TABLE `user_vehicle_tolloperator_all`
  ADD CONSTRAINT `fk_uvt_client` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_uvt_lmb` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_uvt_to` FOREIGN KEY (`toll_operator_id`) REFERENCES `toll_operator_all` (`toll_operator_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_uvt_uv` FOREIGN KEY (`user_vehicle_id`) REFERENCES `user_vehicle_all` (`user_vehicle_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vehicle_movement_log_all`
--
ALTER TABLE `vehicle_movement_log_all`
  ADD CONSTRAINT `fk_client_vml` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_vmla` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vml_dh` FOREIGN KEY (`device_history_id`) REFERENCES `device_history_all` (`device_history_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vml_toll_location` FOREIGN KEY (`toll_location_id`) REFERENCES `toll_location_all` (`toll_location_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vml_vmlt` FOREIGN KEY (`vml_type_id`) REFERENCES `vml_type_all` (`vml_type_id`) ON UPDATE CASCADE;

--
-- Constraints for table `vehicle_toll_usage_all`
--
ALTER TABLE `vehicle_toll_usage_all`
  ADD CONSTRAINT `fk_client_vtu` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vtu_pt` FOREIGN KEY (`ptran_id`) REFERENCES `payment_transaction_all` (`ptran_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vtu_tl` FOREIGN KEY (`toll_loc_id`) REFERENCES `toll_location_all` (`toll_location_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vtu_tp` FOREIGN KEY (`tph_id`) REFERENCES `toll_price_history_all` (`tph_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vtu_uv` FOREIGN KEY (`uvh_id`) REFERENCES `user_vehicle_history_all` (`uvh_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vtu_vml` FOREIGN KEY (`vml_id`) REFERENCES `vehicle_movement_log_all` (`vml_id`) ON UPDATE CASCADE;

--
-- Constraints for table `vehicle_type_all`
--
ALTER TABLE `vehicle_type_all`
  ADD CONSTRAINT `fk_client_vtp` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_vta` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `vml_type_all`
--
ALTER TABLE `vml_type_all`
  ADD CONSTRAINT `fk_client_vmlt` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_all` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;
