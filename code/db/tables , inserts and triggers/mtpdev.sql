-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 22, 2011 at 05:53 AM
-- Server version: 5.5.13
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `globaltoll`
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
(1, 'server', 'server configuration', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-09 20:24:16', '2011-10-09 20:24:19', -1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `component_version_all`
--

INSERT INTO `component_version_all` (`comp_version_id`, `component_id`, `description`, `list_of_changes`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `version`) VALUES
(1, 1, 'version 1', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-09 20:26:07', '2011-10-09 20:26:10', -1, '1.0');

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
  `config_id` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `configuration_all`
--

INSERT INTO `configuration_all` (`config_id`, `comp_version_id`, `key`, `value`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`) VALUES
(1, 1, 'checkSecurity', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-09 20:28:55', '2011-10-09 20:28:58', -1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `device_all`
--

INSERT INTO `device_all` (`device_id`, `user_id`, `device_uuid`, `device_type`, `is_active`, `last_login_time`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `client_id`) VALUES
(3, 1, '0:0:0:0:0:0:0:12011-10-12 22:17:11.112', 'desktop', 'N', '2011-10-12 22:17:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:17:11', '2011-10-12 22:17:11', -1, 1),
(4, 1, '0:0:0:0:0:0:0:12011-10-16 08:42:47.138', 'desktop', 'N', '2011-10-16 08:43:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-16 08:42:47', '2011-10-16 08:42:47', -1, 1),
(7, -1, '0:0:0:0:0:0:0:12011-10-18 22:16:17.826', 'desktop', 'N', '2011-10-18 22:16:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-18 22:16:17', '2011-10-18 22:16:17', -1, 1),
(8, 1, '172.30.102.462011-10-19 09:30:21.138', 'android', 'N', '2011-10-19 09:30:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 09:30:21', '2011-10-19 09:30:21', -1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `device_history_all`
--

INSERT INTO `device_history_all` (`device_history_id`, `device_id`, `user_id`, `device_uuid`, `device_type`, `is_active`, `last_login_time`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `client_id`, `last_modified_by`, `last_modified_on`, `created_on`, `start_date`, `end_date`, `action`) VALUES
(1, 3, -1, '0:0:0:0:0:0:0:12011-10-12 22:17:11.112', 'desktop', 'N', '2011-10-12 22:17:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-12 22:17:11', '2011-10-12 22:17:11', '2011-10-12 22:17:11', '2011-10-12 22:22:33', 'insert'),
(2, 3, 1, '0:0:0:0:0:0:0:12011-10-12 22:17:11.112', 'desktop', 'N', '2011-10-12 22:17:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-12 22:17:11', '2011-10-12 22:17:11', '2011-10-12 22:22:34', '3000-01-01 00:00:00', 'update'),
(3, 4, -1, '0:0:0:0:0:0:0:12011-10-16 08:42:47.138', 'desktop', 'N', '2011-10-16 08:42:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-16 08:42:47', '2011-10-16 08:42:47', '2011-10-16 08:42:47', '2011-10-16 08:43:13', 'insert'),
(4, 4, 1, '0:0:0:0:0:0:0:12011-10-16 08:42:47.138', 'desktop', 'N', '2011-10-16 08:43:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-16 08:42:47', '2011-10-16 08:42:47', '2011-10-16 08:43:14', '3000-01-01 00:00:00', 'update'),
(5, 7, -1, '0:0:0:0:0:0:0:12011-10-18 22:16:17.826', 'desktop', 'N', '2011-10-18 22:16:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-18 22:16:17', '2011-10-18 22:16:17', '2011-10-18 22:16:17', '3000-01-01 00:00:00', 'insert'),
(6, 8, -1, '172.30.102.462011-10-19 09:30:21.138', 'android', 'N', '2011-10-19 09:30:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-19 09:30:21', '2011-10-19 09:30:21', '2011-10-19 09:30:21', '2011-10-19 09:32:10', 'insert'),
(7, 8, 1, '172.30.102.462011-10-19 09:30:21.138', 'android', 'N', '2011-10-19 09:30:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-19 09:30:21', '2011-10-19 09:30:21', '2011-10-19 09:32:11', '3000-01-01 00:00:00', 'update');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `make_all`
--


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
  KEY `fk_lmb_model` (`last_modified_by`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `model_all`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='All the payment transactions up to the date' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `payment_transaction_all`
--


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
-- Stand-in structure for view `toll_location`
--
DROP VIEW IF EXISTS `toll_location`;
CREATE TABLE IF NOT EXISTS `toll_location` (
`toll_location_id` int(11)
,`toll_operator_id` int(11)
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

INSERT INTO `toll_location_all` (`toll_location_id`, `toll_operator_id`, `geometry`, `is_covered`, `is_cash_only`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`, `latitude`, `longitude`, `direction`, `type`) VALUES
(1, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 16:56:15', '2011-06-24 16:56:20', 1, '33.043205', '-117.077179', NULL, NULL),
(2, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:25:38', '2011-06-24 23:25:30', 1, '32.948885', '-117.243336', NULL, NULL),
(3, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:28:15', '2011-06-24 23:28:07', 1, '32.978422', '-117.252373', NULL, NULL),
(4, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:29:33', '2011-06-24 23:29:28', 1, '33.019540', '-117.272702', NULL, NULL),
(5, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:31:47', '2011-06-24 23:31:39', 1, '33.133323', '-117.328511', NULL, NULL),
(6, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:33:03', '2011-06-24 23:32:56', 1, '33.299231', '-117.464852', NULL, NULL),
(7, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:34:51', '2011-06-24 23:34:45', 1, '33.384683', '-117.580699', NULL, NULL),
(8, 1, NULL, 'N', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:36:29', '2011-06-24 23:36:22', 1, '33.472008', '-117.674562', NULL, NULL),
(9, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:37:55', '2011-06-24 23:37:49', 1, '33.616529', '-117.709292', NULL, NULL),
(10, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:39:33', '2011-06-24 23:39:27', 1, '33.713199', '-117.785564', NULL, NULL),
(11, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:40:53', '2011-06-24 23:40:47', 1, '33.807397', '-117.906723', NULL, NULL),
(12, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:42:07', '2011-06-24 23:42:01', 1, '33.939459', '-118.095372', NULL, NULL),
(13, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:44:10', '2011-06-24 23:44:03', 1, '32.948930', '-117.243648', NULL, NULL),
(14, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:45:22', '2011-06-24 23:45:16', 1, '32.978371', '-117.252636', NULL, NULL),
(15, 1, NULL, 'N', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:46:46', '2011-06-24 23:46:40', 1, '33.019505', '-117.272976', NULL, NULL),
(16, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:52:55', '2011-06-24 23:52:48', 1, '33.133256', '-117.328823', NULL, NULL),
(17, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:56:48', '2011-06-24 23:56:43', 1, '33.299065', '-117.465183', NULL, NULL),
(18, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:58:14', '2011-06-24 23:58:06', 1, '33.384491', '-117.580956', NULL, NULL),
(19, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-25 00:00:08', '2011-06-25 00:00:02', 1, '33.472007', '-117.674805', NULL, NULL),
(20, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-25 00:02:01', '2011-06-25 00:01:53', 1, '33.616402', '-117.709683', NULL, NULL),
(21, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-25 00:03:17', '2011-06-25 00:03:11', 1, '33.713059', '-117.785911', NULL, NULL),
(22, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-25 00:04:32', '2011-06-25 00:04:27', 1, '33.807268', '-117.907111', NULL, NULL),
(23, 1, NULL, 'N', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-25 00:06:09', '2011-06-25 00:06:04', 1, '33.939427', '-118.095533', NULL, NULL);

--
-- Triggers `toll_location_all`
--
DROP TRIGGER IF EXISTS `trg_tol_loc_aft_ins`;
DELIMITER //
CREATE TRIGGER `trg_tol_loc_aft_ins` AFTER INSERT ON `toll_location_all`
 FOR EACH ROW begin
insert into toll_location_history_all(tlh_id,toll_location_id,toll_operator_id,geometry,is_covered,is_cash_only,address1,address2,city,state,country,zip,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action,client_id,latitude,longitude,direction,type) 
values(null,new.toll_location_id,new.toll_operator_id,new.geometry,new.is_covered,new.is_cash_only,new.address1,new.address2,new.city,new.state,new.country,zip,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,
GetStartDate(),GetInfFuture(),'insert',new.client_id,new.latitude,new.longitude,new.direction,new.type);
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
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action,client_id,latitude,longitude,direction,type) 
values(null,new.toll_location_id,new.toll_operator_id,new.geometry,new.is_covered,new.is_cash_only,new.address1,new.address2,new.city,new.state,new.country,new.zip,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,
GetStartDate(),GetInfFuture(),'update',new.client_id,new.latitude,new.longitude,new.direction,new.type);
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
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action,client_id,latitude,longitude,direction,type) 
values(null,old.toll_location_id,old.toll_operator_id,old.geometry,old.is_covered,old.is_cash_only,old.address1,old.address2,old.city,old.state,old.country,old.zip,
old.udf1,old.udf2,old.udf3,old.udf4,old.udf5,old.flag1,old.flag2,old.flag3,old.flag4,old.flag5,old.created_on,old.last_modified_on,old.last_modified_by,
GetStartDate(),GetStartDate(),'delete',old.client_id,old.latitude,old.longitude,old.direction,old.type);
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This table maps the location with corresponding toll operato' AUTO_INCREMENT=24 ;

--
-- Dumping data for table `toll_location_history_all`
--

INSERT INTO `toll_location_history_all` (`tlh_id`, `toll_location_id`, `toll_operator_id`, `geometry`, `is_covered`, `is_cash_only`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `start_date`, `end_date`, `action`, `client_id`, `latitude`, `longitude`, `direction`, `type`) VALUES
(1, 1, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 16:56:20', '2011-06-24 16:56:15', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.043205', '-117.077179', NULL, NULL),
(2, 2, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:25:30', '2011-06-24 23:25:38', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '32.948885', '-117.243336', NULL, NULL),
(3, 3, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:28:07', '2011-06-24 23:28:15', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '32.978422', '-117.252373', NULL, NULL),
(4, 4, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:29:28', '2011-06-24 23:29:33', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.019540', '-117.272702', NULL, NULL),
(5, 5, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:31:39', '2011-06-24 23:31:47', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.133323', '-117.328511', NULL, NULL),
(6, 6, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:32:56', '2011-06-24 23:33:03', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.299231', '-117.464852', NULL, NULL),
(7, 7, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:34:45', '2011-06-24 23:34:51', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.384683', '-117.580699', NULL, NULL),
(8, 8, 1, NULL, 'N', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:36:22', '2011-06-24 23:36:29', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.472008', '-117.674562', NULL, NULL),
(9, 9, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:37:49', '2011-06-24 23:37:55', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.616529', '-117.709292', NULL, NULL),
(10, 10, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:39:27', '2011-06-24 23:39:33', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.713199', '-117.785564', NULL, NULL),
(11, 11, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:40:47', '2011-06-24 23:40:53', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.807397', '-117.906723', NULL, NULL),
(12, 12, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:42:01', '2011-06-24 23:42:07', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.939459', '-118.095372', NULL, NULL),
(13, 13, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:44:03', '2011-06-24 23:44:10', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '32.948930', '-117.243648', NULL, NULL),
(14, 14, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:45:16', '2011-06-24 23:45:22', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '32.978371', '-117.252636', NULL, NULL),
(15, 15, 1, NULL, 'N', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:46:40', '2011-06-24 23:46:46', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.019505', '-117.272976', NULL, NULL),
(16, 16, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:52:48', '2011-06-24 23:52:55', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.133256', '-117.328823', NULL, NULL),
(17, 17, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:56:43', '2011-06-24 23:56:48', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.299065', '-117.465183', NULL, NULL),
(18, 18, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 23:58:06', '2011-06-24 23:58:14', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.384491', '-117.580956', NULL, NULL),
(19, 19, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-25 00:00:02', '2011-06-25 00:00:08', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.472007', '-117.674805', NULL, NULL),
(20, 20, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-25 00:01:53', '2011-06-25 00:02:01', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.616402', '-117.709683', NULL, NULL),
(21, 21, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-25 00:03:11', '2011-06-25 00:03:17', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.713059', '-117.785911', NULL, NULL),
(22, 22, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-25 00:04:27', '2011-06-25 00:04:32', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.807268', '-117.907111', NULL, NULL),
(23, 23, 1, NULL, 'N', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-25 00:06:04', '2011-06-25 00:06:09', 1, '2011-10-18 08:37:19', '3000-01-01 00:00:00', 'insert', 1, '33.939427', '-118.095533', NULL, NULL);

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
(1, NULL, 'LA TollOperator', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-18 08:05:25', '2011-10-18 08:05:29', -1, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='toll price for each transaction' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `toll_price_all`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='toll price for each transaction' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `toll_price_history_all`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This table has all details about the users' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_all`
--

INSERT INTO `user_all` (`user_id`, `client_id`, `utype_id`, `user_name`, `password`, `locale`, `is_active`, `contact_no`, `last_login_time`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`) VALUES
(-1, 1, 1, 'test', 'test', NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 21:20:18', '2011-10-12 21:20:21', -1),
(1, 1, 1, 'harish@mobisols.com', 'mobisols', '', 'Y', NULL, '2011-10-12 22:22:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_balance_all`
--

INSERT INTO `user_balance_all` (`ubal_id`, `user_id`, `balance`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(1, 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1);

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
values(null,new.ubal_id,(new.balanceold.balance),sysdate(),'update',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,
new.last_modified_by,new.last_modified_on,new.created_on,new.client_id);
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `trg_bal_log_bfr_del`;
DELIMITER //
CREATE TRIGGER `trg_bal_log_bfr_del` BEFORE DELETE ON `user_balance_all`
 FOR EACH ROW begin
insert into user_balance_log_all (ublog_id,ubal_id,delta,timestamp,action,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,last_modified_by,last_modified_on,created_on,client_id)
values(null,old.ubal_id,old.balanceold.balance,sysdate(),'delete',old.udf1,old.udf2,old.udf3,old.udf4,old.udf5,old.flag1,old.flag2,old.flag3,old.flag4,old.flag5,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_balance_log_all`
--

INSERT INTO `user_balance_log_all` (`ublog_id`, `ubal_id`, `delta`, `timestamp`, `action`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(1, 1, '0.0000', '2011-10-12 22:22:34', 'new account created', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This table has all details about the users' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_history_all`
--

INSERT INTO `user_history_all` (`user_his_id`, `user_id`, `user_name`, `password`, `locale`, `utype_id`, `last_login_time`, `is_active`, `contact_no`, `client_id`, `action`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `start_date`, `end_date`) VALUES
(1, -1, 'test', 'test', NULL, 1, NULL, 'N', NULL, 1, 'insert', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 21:20:18', '2011-10-12 21:20:21', -1, '2011-10-12 21:20:24', '3000-01-01 00:00:00'),
(2, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'I', NULL, 1, 'insert', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-12 22:22:34', '2011-10-19 21:29:37'),
(3, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'N', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-19 21:29:38', '2011-10-19 21:39:31'),
(4, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-19 21:39:32', '2011-10-19 21:40:42'),
(5, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'Y', NULL, 1, 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-19 21:40:43', '3000-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_notification`
--
DROP VIEW IF EXISTS `user_notification`;
CREATE TABLE IF NOT EXISTS `user_notification` (
`user_notification_id` int(11)
,`device_id` int(11)
,`notification_type` varchar(100)
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
,`ack_mesage` varchar(4000)
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
  `notification_type` varchar(100) DEFAULT NULL,
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
  `ack_mesage` varchar(4000) DEFAULT NULL,
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
,`cc_number` varchar(20)
,`cc_exp_month` int(11)
,`cc_exp_year` year(4)
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
  `cc_number` varchar(20) DEFAULT NULL,
  `cc_exp_month` int(11) DEFAULT NULL,
  `cc_exp_year` year(4) DEFAULT NULL,
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
  `last_modified_by` int(11) DEFAULT NULL,
  `last_modified_on` datetime DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`upd_id`),
  UNIQUE KEY `last_modified_on_UNIQUE` (`last_modified_on`),
  UNIQUE KEY `created_on_UNIQUE` (`created_on`),
  UNIQUE KEY `last_modified_by_UNIQUE` (`last_modified_by`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  KEY `fk_upd_user` (`user_id`),
  KEY `fk_last_mod_by_upda` (`last_modified_by`),
  KEY `fk_cctype_upd` (`cc_type_id`),
  KEY `fk_client_upd` (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='All the billing details of the user' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_payment_detail_all`
--

INSERT INTO `user_payment_detail_all` (`upd_id`, `user_id`, `cc_type_id`, `cc_ac_name`, `cc_number`, `cc_exp_month`, `cc_exp_year`, `cc_cvv`, `bank_routing`, `bank_account`, `pay_prefer`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(1, 1, 1, 'harish', '4477 4669 0240 7005', 1, 2036, 0, NULL, NULL, 'c', 'asdfgh', NULL, 'asfj;aj', 'CA', 'US', '90000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-10-17 13:09:58', '2011-10-12 22:22:34', 1);

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
,`cc_number` varchar(20)
,`cc_exp_month` int(11)
,`cc_exp_year` year(4)
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
  `cc_number` varchar(20) DEFAULT NULL,
  `cc_exp_month` int(11) DEFAULT NULL,
  `cc_exp_year` year(4) DEFAULT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_payment_detail_history_all`
--

INSERT INTO `user_payment_detail_history_all` (`updh_id`, `upd_id`, `user_id`, `cc_type_id`, `cc_ac_name`, `cc_number`, `cc_exp_month`, `cc_exp_year`, `cc_cvv`, `bank_routing`, `bank_account`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `pay_prefer`, `action`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `start_date`, `end_date`, `client_id`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c', 'insert', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-12 22:22:34', '2011-10-15 23:45:57', 1),
(2, 1, 1, 1, 'harish', '4477 4669 0240 7005', 1, 2036, 0, NULL, NULL, 'asdfgh', NULL, 'asfj;aj', 'CA', 'US', '90000', 'c', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-15 23:45:57', 1, '2011-10-15 23:45:58', '2011-10-17 13:09:57', 1),
(3, 1, 1, 1, 'harish', '4477 4669 0240 7005', 1, 2036, 0, NULL, NULL, 'asdfgh', NULL, 'asfj;aj', 'CA', 'US', '90000', 'c', 'update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-17 13:09:58', 1, '2011-10-17 13:09:58', '3000-01-01 00:00:00', 1);

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
,`vehicle_type_id` int(11)
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
);
-- --------------------------------------------------------

--
-- Table structure for table `user_vehicle_all`
--

DROP TABLE IF EXISTS `user_vehicle_all`;
CREATE TABLE IF NOT EXISTS `user_vehicle_all` (
  `user_vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'user id-- foreign key to users_all table',
  `vehicle_type_id` int(11) NOT NULL COMMENT 'vehicle type-- foreign key to vehicle_types_all table\n',
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
  `model_id` int(11) DEFAULT NULL,
  `vin` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`user_vehicle_id`),
  UNIQUE KEY `uk_user_reg_vehicle` (`user_id`,`registration_no`),
  KEY `fk_vt_user_vehicle` (`vehicle_type_id`),
  KEY `fk_user_user_vehicle` (`user_id`),
  KEY `fk_mod_on` (`last_modified_by`),
  KEY `fk_uv_co` (`owner_type_id`),
  KEY `fk_client_uv` (`client_id`),
  KEY `fk_vehicle_model` (`model_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='List of vehicles registered by the user' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_vehicle_all`
--

INSERT INTO `user_vehicle_all` (`user_vehicle_id`, `user_id`, `vehicle_type_id`, `vehicle_start_date`, `vehicle_end_date`, `is_active`, `registration_no`, `registered_state`, `owner_type_id`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`, `model_id`, `vin`) VALUES
(1, 1, 3, '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'Y', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, NULL, NULL);

--
-- Triggers `user_vehicle_all`
--
DROP TRIGGER IF EXISTS `trg_user_vehicle_aft_ins`;
DELIMITER //
CREATE TRIGGER `trg_user_vehicle_aft_ins` AFTER INSERT ON `user_vehicle_all`
 FOR EACH ROW begin
insert into user_vehicle_history_all (uvh_id,user_vehicle_id,user_id,vehicle_type_id,is_active,vehicle_start_date,vehicle_end_date,registration_no,registered_state,owner_type_id,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action,client_id,model_id,vin) 
values(null,new.user_vehicle_id,new.user_id,new.vehicle_type_id,new.is_active,new.vehicle_start_date,new.vehicle_end_date,new.registration_no,new.registered_state,new.owner_type_id,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,
GetStartDate(),GetInfFuture(),'insert',new.client_id,new.model_id,new.vin);
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
insert into user_vehicle_history_all(uvh_id,user_vehicle_id,user_id,vehicle_type_id,is_active,vehicle_start_date,vehicle_end_date,registration_no,registered_state,owner_type_id,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action,client_id,model_id,vin) 
values(null,new.user_vehicle_id,new.user_id,new.vehicle_type_id,new.is_active,new.vehicle_start_date,new.vehicle_end_date,new.registration_no,new.registered_state,new.owner_type_id,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,
GetStartDate(),GetInfFuture(),'update',new.client_id,new.model_id,new.vin);
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
insert into user_vehicle_history_all(uvh_id,user_vehicle_id,user_id,vehicle_type_id,is_active,vehicle_start_date,vehicle_end_date,registration_no,registered_state,owner_type_id,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action,client_id,model_id,vin) 
values(null,old.user_vehicle_id,old.user_id,old.vehicle_type_id,old.is_active,old.vehicle_start_date,old.vehicle_end_date,old.registration_no,old.registered_state,old.owner_type_id,
old.udf1,old.udf2,old.udf3,old.udf4,old.udf5,old.flag1,old.flag2,old.flag3,old.flag4,old.flag5,old.created_on,old.last_modified_on,old.last_modified_by,
GetStartDate(),GetStartDate(),'delete',old.client_id,old.model_id,old.vin);
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
,`vehicle_type_id` int(11)
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
  `vehicle_type_id` int(11) NOT NULL,
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
  `client_id` int(11) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `vin` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`uvh_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='List of vehicles registered by the user' AUTO_INCREMENT=26 ;

--
-- Dumping data for table `user_vehicle_history_all`
--

INSERT INTO `user_vehicle_history_all` (`uvh_id`, `user_vehicle_id`, `user_id`, `vehicle_type_id`, `is_active`, `vehicle_start_date`, `vehicle_end_date`, `registration_no`, `registered_state`, `owner_type_id`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `start_date`, `end_date`, `action`, `client_id`, `model_id`, `vin`) VALUES
(1, 1, 1, 3, 'N', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-14 01:02:24', '2011-10-19 21:32:15', 'insert', 1, NULL, NULL),
(2, 2, 1, 3, 'N', '2011-10-14 08:23:24', '2013-01-01 00:00:00', 'qwerty', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 08:23:56', '2011-10-14 08:23:56', 1, '2011-10-14 08:23:56', '2011-10-14 22:14:01', 'insert', 1, NULL, NULL),
(3, 2, 1, 3, 'N', '2011-10-14 08:23:24', '2013-01-01 00:00:00', 'qwerty', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 08:23:56', '2011-10-14 08:23:56', 1, '2011-10-14 22:14:02', '2011-10-14 22:14:02', 'delete', 1, NULL, NULL),
(4, 3, 1, 3, 'N', '2011-10-14 22:15:18', '2012-01-01 00:00:00', 'qwerty', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 22:15:42', '2011-10-14 22:15:42', 1, '2011-10-14 22:15:42', '2011-10-14 22:17:05', 'insert', 1, NULL, NULL),
(5, 3, 1, 3, 'N', '2011-10-14 22:15:18', '2012-01-01 00:00:00', 'qwerty', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 22:15:42', '2011-10-14 22:15:42', 1, '2011-10-14 22:17:06', '2011-10-14 22:17:06', 'delete', 1, NULL, NULL),
(6, 4, 1, 3, 'N', '2011-10-15 09:10:25', '2012-01-01 00:00:00', 'qwerty', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-15 09:11:39', '2011-10-15 09:11:39', 1, '2011-10-15 09:11:39', '2011-10-15 09:16:21', 'insert', 1, NULL, NULL),
(7, 4, 1, 3, 'N', '2011-10-15 09:10:25', '2012-01-01 00:00:00', 'qwerty', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-15 09:11:39', '2011-10-15 09:11:39', 1, '2011-10-15 09:16:22', '2011-10-15 09:16:22', 'delete', 1, NULL, NULL),
(8, 2, 1, 3, 'N', '2011-10-15 23:35:56', '2014-01-01 00:00:00', '123456', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-15 23:48:04', '2011-10-15 23:48:04', 1, '2011-10-15 23:48:04', '2011-10-15 23:48:09', 'insert', 1, NULL, NULL),
(9, 2, 1, 3, 'N', '2011-10-15 23:35:56', '2014-01-01 00:00:00', '123456', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-15 23:48:04', '2011-10-15 23:48:04', 1, '2011-10-15 23:48:10', '2011-10-15 23:48:10', 'delete', 1, NULL, NULL),
(10, 3, 1, 3, 'N', '2011-10-16 00:23:39', '2012-01-01 00:00:00', 'asdfg', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-16 00:24:18', '2011-10-16 00:24:18', 1, '2011-10-16 00:24:18', '2011-10-16 00:24:23', 'insert', 1, NULL, NULL),
(11, 3, 1, 3, 'N', '2011-10-16 00:23:39', '2012-01-01 00:00:00', 'asdfg', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-16 00:24:18', '2011-10-16 00:24:18', 1, '2011-10-16 00:24:24', '2011-10-16 00:24:24', 'delete', 1, NULL, NULL),
(12, 4, 1, 3, 'N', '2011-10-16 08:42:42', '2012-01-01 00:00:00', '123456', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-16 08:44:23', '2011-10-16 08:44:23', 1, '2011-10-16 08:44:23', '2011-10-16 08:55:20', 'insert', 1, NULL, NULL),
(13, 4, 1, 3, 'N', '2011-10-16 08:42:42', '2012-01-01 00:00:00', '123456', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-16 08:44:23', '2011-10-16 08:44:23', 1, '2011-10-16 08:55:21', '2011-10-16 08:55:21', 'delete', 1, NULL, NULL),
(14, 5, 1, 3, 'N', '2011-10-16 08:56:57', '2012-01-01 00:00:00', '123456', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-16 08:57:52', '2011-10-16 08:57:52', 1, '2011-10-16 08:57:52', '2011-10-16 09:18:25', 'insert', 1, NULL, NULL),
(15, 5, 1, 3, 'N', '2011-10-16 08:56:57', '2012-01-01 00:00:00', '123456', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-16 08:57:52', '2011-10-16 08:57:52', 1, '2011-10-16 09:18:27', '2011-10-16 09:18:27', 'delete', 1, NULL, NULL),
(16, 2, 1, 3, 'N', '2011-10-16 22:07:28', NULL, '123456', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-16 22:07:47', '2011-10-16 22:07:47', 1, '2011-10-16 22:07:47', '2011-10-16 23:20:09', 'insert', 1, NULL, NULL),
(17, 2, 1, 3, 'N', '2011-10-16 22:07:28', NULL, '123456', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-16 22:07:47', '2011-10-16 22:07:47', 1, '2011-10-16 23:20:10', '2011-10-16 23:20:10', 'delete', 1, NULL, NULL),
(18, 2, 1, 3, 'N', '2011-10-17 13:07:09', '2012-01-01 00:00:00', '123456', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-17 13:08:17', '2011-10-17 13:08:17', 1, '2011-10-17 13:08:17', '2011-10-17 13:08:49', 'insert', 1, NULL, NULL),
(19, 2, 1, 3, 'N', '2011-10-17 13:07:09', '2012-01-01 00:00:00', '123456', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-17 13:08:17', '2011-10-17 13:08:17', 1, '2011-10-17 13:08:50', '2011-10-17 13:08:50', 'delete', 1, NULL, NULL),
(20, 3, 1, 3, 'N', '2011-10-17 13:14:59', '2011-10-18 00:00:00', '123456', 'DE', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-17 13:16:28', '2011-10-17 13:16:28', 1, '2011-10-17 13:16:28', '2011-10-17 13:16:43', 'insert', 1, NULL, NULL),
(21, 3, 1, 3, 'N', '2011-10-17 13:14:59', '2011-10-24 00:00:00', '123456', 'DE', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-17 13:16:28', '2011-10-17 13:16:44', 1, '2011-10-17 13:16:44', '2011-10-17 13:16:54', 'update', 1, NULL, NULL),
(22, 3, 1, 3, 'N', '2011-10-17 13:14:59', '2011-10-24 00:00:00', '123456', 'DE', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-17 13:16:28', '2011-10-17 13:16:44', 1, '2011-10-17 13:16:55', '2011-10-17 13:16:55', 'delete', 1, NULL, NULL),
(23, 1, 1, 3, 'T', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-19 21:32:16', '2011-10-19 21:39:31', 'update', 1, NULL, NULL),
(24, 1, 1, 3, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-19 21:39:32', '2011-10-19 21:40:41', 'update', 1, NULL, NULL),
(25, 1, 1, 3, 'Y', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-19 21:40:42', '3000-01-01 00:00:00', 'update', 1, NULL, NULL);

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
  KEY `fk_vml_uvh` (`device_history_id`),
  KEY `fk_vml_vmlt` (`vml_type_id`),
  KEY `fk_last_mod_by_vmla` (`last_modified_by`),
  KEY `fk_client_vml` (`client_id`),
  KEY `fk_vml_toll_location` (`toll_location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Trackiing the vehicle movement ' AUTO_INCREMENT=2195 ;

--
-- Dumping data for table `vehicle_movement_log_all`
--

INSERT INTO `vehicle_movement_log_all` (`vml_id`, `vml_type_id`, `device_history_id`, `toll_location_id`, `geometry`, `timestamp`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_on`, `last_modified_by`, `created_on`, `client_id`, `latitude`, `longitude`, `status`, `toll_session_id`, `distance`) VALUES
(1, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:12', -1, '2011-10-19 21:17:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:12.724', 194.39),
(2, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:12', -1, '2011-10-19 21:17:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:12.903', 194.39),
(3, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:13', -1, '2011-10-19 21:17:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:13.1', 194.39),
(4, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:13', -1, '2011-10-19 21:17:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:13.237', 194.39),
(5, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:13', -1, '2011-10-19 21:17:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:13.412', 194.39),
(6, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:13', -1, '2011-10-19 21:17:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:13.542', 194.39),
(7, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:13', -1, '2011-10-19 21:17:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:13.639', 194.39),
(8, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:13', -1, '2011-10-19 21:17:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:13.753', 194.39),
(9, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:13', -1, '2011-10-19 21:17:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:13.859', 194.39),
(10, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:13', -1, '2011-10-19 21:17:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:13.973', 194.39),
(11, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:14', -1, '2011-10-19 21:17:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:14.118', 194.39),
(12, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:14', -1, '2011-10-19 21:17:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:14.214', 194.39),
(13, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:14', -1, '2011-10-19 21:17:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:14.353', 194.39),
(14, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:14', -1, '2011-10-19 21:17:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:14.46', 194.39),
(15, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:14', -1, '2011-10-19 21:17:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:14.542', 194.39),
(16, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:14', -1, '2011-10-19 21:17:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:14.64', 194.39),
(17, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:14', -1, '2011-10-19 21:17:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:14.734', 194.39),
(18, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:14', -1, '2011-10-19 21:17:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:14.825', 194.39),
(19, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:14', -1, '2011-10-19 21:17:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:14.927', 194.39),
(20, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:14', -1, '2011-10-19 21:17:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:15.005', 194.39),
(21, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:15', -1, '2011-10-19 21:17:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:15.104', 194.39),
(22, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:15', -1, '2011-10-19 21:17:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:15.255', 194.39),
(23, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:15', -1, '2011-10-19 21:17:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:15.464', 194.39),
(24, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:15', -1, '2011-10-19 21:17:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:15.594', 194.39),
(25, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:15', -1, '2011-10-19 21:17:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:15.723', 194.39),
(26, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:15', -1, '2011-10-19 21:17:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:15.823', 194.39),
(27, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:15', -1, '2011-10-19 21:17:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:15.909', 194.39),
(28, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:15', -1, '2011-10-19 21:17:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:16.018', 194.39),
(29, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:16', -1, '2011-10-19 21:17:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:16.138', 194.39),
(30, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:16', -1, '2011-10-19 21:17:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:16.224', 194.39),
(31, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:16', -1, '2011-10-19 21:17:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:16.314', 194.39),
(32, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:16', -1, '2011-10-19 21:17:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:16.428', 194.39),
(33, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:16', -1, '2011-10-19 21:17:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:16.506', 194.39),
(34, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:16', -1, '2011-10-19 21:17:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:16.619', 194.39),
(35, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:16', -1, '2011-10-19 21:17:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:16.699', 194.39),
(36, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:16', -1, '2011-10-19 21:17:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:16.788', 194.39),
(37, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:16', -1, '2011-10-19 21:17:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:16.932', 194.39),
(38, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:17', -1, '2011-10-19 21:17:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:17.041', 194.39),
(39, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:17', -1, '2011-10-19 21:17:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:17.127', 194.39),
(40, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:17', -1, '2011-10-19 21:17:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:17.222', 194.39),
(41, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:17', -1, '2011-10-19 21:17:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:17.308', 194.39),
(42, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:17', -1, '2011-10-19 21:17:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:17.427', 194.39),
(43, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:17', -1, '2011-10-19 21:17:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:17.538', 194.39),
(44, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:17', -1, '2011-10-19 21:17:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:17.618', 194.39),
(45, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:17', -1, '2011-10-19 21:17:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:17.706', 194.39),
(46, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:17', -1, '2011-10-19 21:17:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:17.823', 194.39),
(47, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:17', -1, '2011-10-19 21:17:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:17.91', 194.39),
(48, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:17', -1, '2011-10-19 21:17:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:18.01', 194.39),
(49, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:18', -1, '2011-10-19 21:17:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:18.094', 194.39),
(50, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:18', -1, '2011-10-19 21:17:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:18.185', 194.39),
(51, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:18', -1, '2011-10-19 21:17:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:18.297', 194.39),
(52, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:18', -1, '2011-10-19 21:17:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:18.37', 194.39),
(53, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:18', -1, '2011-10-19 21:17:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:18.454', 194.39),
(54, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:18', -1, '2011-10-19 21:17:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:18.537', 194.39),
(55, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:18', -1, '2011-10-19 21:17:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:18.623', 194.39),
(56, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:18', -1, '2011-10-19 21:17:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:18.708', 194.39),
(57, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:18', -1, '2011-10-19 21:17:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:18.801', 194.39),
(58, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:18', -1, '2011-10-19 21:17:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:18.896', 194.39),
(59, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:18', -1, '2011-10-19 21:17:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:18.97', 194.39),
(60, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:19', -1, '2011-10-19 21:17:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:19.058', 194.39),
(61, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:19', -1, '2011-10-19 21:17:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:19.138', 194.39),
(62, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:19', -1, '2011-10-19 21:17:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:19.23', 194.39),
(63, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:19', -1, '2011-10-19 21:17:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:19.424', 194.39),
(64, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:19', -1, '2011-10-19 21:17:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:19.506', 194.39),
(65, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:19', -1, '2011-10-19 21:17:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:19.58', 194.39),
(66, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:19', -1, '2011-10-19 21:17:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:19.681', 194.39),
(67, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:19', -1, '2011-10-19 21:17:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:19.766', 194.39),
(68, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:19', -1, '2011-10-19 21:17:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:19.851', 194.39),
(69, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:19', -1, '2011-10-19 21:17:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:19.927', 194.39),
(70, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:19', -1, '2011-10-19 21:17:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:20.01', 194.39),
(71, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:20', -1, '2011-10-19 21:17:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:20.166', 194.39),
(72, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:20', -1, '2011-10-19 21:17:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:20.253', 194.39),
(73, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:20', -1, '2011-10-19 21:17:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:20.372', 194.39),
(74, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:20', -1, '2011-10-19 21:17:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:20.45', 194.39),
(75, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:20', -1, '2011-10-19 21:17:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:20.527', 194.39),
(76, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:20', -1, '2011-10-19 21:17:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:20.609', 194.39),
(77, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:20', -1, '2011-10-19 21:17:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:20.696', 194.39),
(78, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:20', -1, '2011-10-19 21:17:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:20.777', 194.39),
(79, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:20', -1, '2011-10-19 21:17:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:20.892', 194.39),
(80, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:20', -1, '2011-10-19 21:17:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:20.976', 194.39),
(81, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:21', -1, '2011-10-19 21:17:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:21.093', 194.39),
(82, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:21', -1, '2011-10-19 21:17:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:21.172', 194.39),
(83, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:21', -1, '2011-10-19 21:17:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:21.303', 194.39),
(84, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:21', -1, '2011-10-19 21:17:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:21.399', 194.39),
(85, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:21', -1, '2011-10-19 21:17:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:21.484', 194.39),
(86, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:21', -1, '2011-10-19 21:17:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:21.574', 194.39),
(87, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:21', -1, '2011-10-19 21:17:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:21.662', 194.39),
(88, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:21', -1, '2011-10-19 21:17:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:21.777', 194.39),
(89, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:21', -1, '2011-10-19 21:17:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:21.878', 194.39),
(90, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:21', -1, '2011-10-19 21:17:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:21.964', 194.39),
(91, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:22', -1, '2011-10-19 21:17:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:22.049', 194.39),
(92, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:22', -1, '2011-10-19 21:17:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:22.181', 194.39),
(93, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:22', -1, '2011-10-19 21:17:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:22.258', 194.39),
(94, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:22', -1, '2011-10-19 21:17:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:22.343', 194.39),
(95, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:22', -1, '2011-10-19 21:17:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:22.431', 194.39),
(96, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:22', -1, '2011-10-19 21:17:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:22.531', 194.39),
(97, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:22', -1, '2011-10-19 21:17:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:22.659', 194.39),
(98, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:22', -1, '2011-10-19 21:17:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:22.75', 194.39),
(99, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:22', -1, '2011-10-19 21:17:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:22.829', 194.39),
(100, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:22', -1, '2011-10-19 21:17:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:22.904', 194.39),
(101, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:22', -1, '2011-10-19 21:17:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:22.988', 194.39),
(102, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:23', -1, '2011-10-19 21:17:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:23.073', 194.39),
(103, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:23', -1, '2011-10-19 21:17:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:23.163', 194.39),
(104, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:23', -1, '2011-10-19 21:17:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:23.235', 194.39),
(105, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:23', -1, '2011-10-19 21:17:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:23.322', 194.39),
(106, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:23', -1, '2011-10-19 21:17:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:23.411', 194.39),
(107, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:23', -1, '2011-10-19 21:17:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:23.493', 194.39),
(108, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:23', -1, '2011-10-19 21:17:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:23.604', 194.39),
(109, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:23', -1, '2011-10-19 21:17:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:23.696', 194.39),
(110, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:23', -1, '2011-10-19 21:17:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:23.778', 194.39),
(111, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:23', -1, '2011-10-19 21:17:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:23.86', 194.39),
(112, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:23', -1, '2011-10-19 21:17:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:23.948', 194.39),
(113, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:24', -1, '2011-10-19 21:17:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:24.029', 194.39),
(114, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:24', -1, '2011-10-19 21:17:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:24.107', 194.39),
(115, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:24', -1, '2011-10-19 21:17:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:24.26', 194.39),
(116, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:24', -1, '2011-10-19 21:17:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:24.428', 194.39),
(117, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:24', -1, '2011-10-19 21:17:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:24.521', 194.39),
(118, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:24', -1, '2011-10-19 21:17:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:24.612', 194.39),
(119, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:24', -1, '2011-10-19 21:17:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:24.729', 194.39),
(120, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:24', -1, '2011-10-19 21:17:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:24.835', 194.39),
(121, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:24', -1, '2011-10-19 21:17:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:24.923', 194.39),
(122, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:24', -1, '2011-10-19 21:17:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:25.012', 194.39),
(123, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:25', -1, '2011-10-19 21:17:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:25.111', 194.39),
(124, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:25', -1, '2011-10-19 21:17:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:25.207', 194.39),
(125, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:25', -1, '2011-10-19 21:17:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:25.301', 194.39),
(126, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:25', -1, '2011-10-19 21:17:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:25.483', 194.39),
(127, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:25', -1, '2011-10-19 21:17:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:25.561', 194.39),
(128, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:25', -1, '2011-10-19 21:17:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:25.638', 194.39),
(129, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:25', -1, '2011-10-19 21:17:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:25.723', 194.39),
(130, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:26', -1, '2011-10-19 21:17:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:26.354', 194.39),
(131, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:26', -1, '2011-10-19 21:17:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:26.532', 194.39),
(132, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:26', -1, '2011-10-19 21:17:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:26.647', 194.39),
(133, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:26', -1, '2011-10-19 21:17:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:26.757', 194.39),
(134, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:26', -1, '2011-10-19 21:17:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:26.856', 194.39),
(135, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:26', -1, '2011-10-19 21:17:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:26.94', 194.39),
(136, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:26', -1, '2011-10-19 21:17:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:27.015', 194.39),
(137, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:27', -1, '2011-10-19 21:17:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:27.094', 194.39),
(138, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:27', -1, '2011-10-19 21:17:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:27.167', 194.39),
(139, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:27', -1, '2011-10-19 21:17:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:27.259', 194.39),
(140, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:27', -1, '2011-10-19 21:17:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:27.398', 194.39),
(141, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:27', -1, '2011-10-19 21:17:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:27.505', 194.39),
(142, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:27', -1, '2011-10-19 21:17:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:27.618', 194.39),
(143, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:27', -1, '2011-10-19 21:17:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:27.823', 194.39),
(144, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:27', -1, '2011-10-19 21:17:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:27.945', 194.39),
(145, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:28', -1, '2011-10-19 21:17:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:28.228', 194.39),
(146, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:28', -1, '2011-10-19 21:17:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:28.41', 194.39),
(147, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:28', -1, '2011-10-19 21:17:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:28.546', 194.39),
(148, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:28', -1, '2011-10-19 21:17:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:28.643', 194.39),
(149, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:28', -1, '2011-10-19 21:17:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:28.771', 194.39),
(150, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:28', -1, '2011-10-19 21:17:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:28.885', 194.39),
(151, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:28', -1, '2011-10-19 21:17:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:29.02', 194.39),
(152, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:29', -1, '2011-10-19 21:17:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:29.11', 194.39),
(153, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:29', -1, '2011-10-19 21:17:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:29.235', 194.39),
(154, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:29', -1, '2011-10-19 21:17:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:29.386', 194.39),
(155, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:29', -1, '2011-10-19 21:17:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:29.535', 194.39),
(156, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:29', -1, '2011-10-19 21:17:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:29.666', 194.39),
(157, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:29', -1, '2011-10-19 21:17:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:29.826', 194.39),
(158, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:29', -1, '2011-10-19 21:17:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:29.99', 194.39),
(159, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:30', -1, '2011-10-19 21:17:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:30.127', 194.39),
(160, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:30', -1, '2011-10-19 21:17:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:30.21', 194.39),
(161, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:30', -1, '2011-10-19 21:17:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:30.39', 194.39),
(162, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:30', -1, '2011-10-19 21:17:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:30.486', 194.39),
(163, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:30', -1, '2011-10-19 21:17:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:30.58', 194.39),
(164, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:30', -1, '2011-10-19 21:17:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:30.713', 194.39),
(165, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:30', -1, '2011-10-19 21:17:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:30.821', 194.39),
(166, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:30', -1, '2011-10-19 21:17:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:30.987', 194.39),
(167, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:31', -1, '2011-10-19 21:17:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:31.194', 194.39),
(168, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:31', -1, '2011-10-19 21:17:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:31.286', 194.39),
(169, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:31', -1, '2011-10-19 21:17:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:31.396', 194.39),
(170, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:31', -1, '2011-10-19 21:17:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:31.611', 194.39),
(171, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:31', -1, '2011-10-19 21:17:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:31.773', 194.39),
(172, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:31', -1, '2011-10-19 21:17:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:31.927', 194.39),
(173, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:32', -1, '2011-10-19 21:17:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:32.057', 194.39),
(174, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:32', -1, '2011-10-19 21:17:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:32.146', 194.39),
(175, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:32', -1, '2011-10-19 21:17:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:32.232', 194.39),
(176, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:32', -1, '2011-10-19 21:17:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:32.32', 194.39),
(177, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:32', -1, '2011-10-19 21:17:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:32.413', 194.39),
(178, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:32', -1, '2011-10-19 21:17:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:32.534', 194.39),
(179, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:32', -1, '2011-10-19 21:17:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:32.619', 194.39),
(180, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:32', -1, '2011-10-19 21:17:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:32.713', 194.39),
(181, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:32', -1, '2011-10-19 21:17:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:32.796', 194.39),
(182, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:32', -1, '2011-10-19 21:17:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:32.889', 194.39),
(183, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:32', -1, '2011-10-19 21:17:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:32.976', 194.39),
(184, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:33', -1, '2011-10-19 21:17:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:33.1', 194.39),
(185, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:33', -1, '2011-10-19 21:17:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:33.199', 194.39),
(186, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:33', -1, '2011-10-19 21:17:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:33.282', 194.39),
(187, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:33', -1, '2011-10-19 21:17:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:33.41', 194.39),
(188, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:33', -1, '2011-10-19 21:17:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:33.609', 194.39),
(189, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:33', -1, '2011-10-19 21:17:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:33.74', 194.39),
(190, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:33', -1, '2011-10-19 21:17:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:33.817', 194.39),
(191, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:33', -1, '2011-10-19 21:17:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:33.931', 194.39),
(192, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:34', -1, '2011-10-19 21:17:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:34.058', 194.39),
(193, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:34', -1, '2011-10-19 21:17:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:34.144', 194.39),
(194, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:34', -1, '2011-10-19 21:17:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:34.295', 194.39),
(195, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:34', -1, '2011-10-19 21:17:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:34.387', 194.39),
(196, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:34', -1, '2011-10-19 21:17:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:34.501', 194.39),
(197, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:34', -1, '2011-10-19 21:17:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:34.587', 194.39),
(198, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:34', -1, '2011-10-19 21:17:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:34.731', 194.39),
(199, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:34', -1, '2011-10-19 21:17:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:34.89', 194.39),
(200, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:34', -1, '2011-10-19 21:17:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:34.994', 194.39),
(201, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:35', -1, '2011-10-19 21:17:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:35.126', 194.39),
(202, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:35', -1, '2011-10-19 21:17:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:35.21', 194.39),
(203, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:35', -1, '2011-10-19 21:17:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:35.312', 194.39),
(204, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:35', -1, '2011-10-19 21:17:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:35.411', 194.39),
(205, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:35', -1, '2011-10-19 21:17:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:35.518', 194.39),
(206, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:35', -1, '2011-10-19 21:17:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:35.611', 194.39),
(207, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:35', -1, '2011-10-19 21:17:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:35.701', 194.39),
(208, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:35', -1, '2011-10-19 21:17:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:35.806', 194.39),
(209, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:35', -1, '2011-10-19 21:17:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:35.906', 194.39),
(210, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:35', -1, '2011-10-19 21:17:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:35.987', 194.39),
(211, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:36', -1, '2011-10-19 21:17:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:36.089', 194.39),
(212, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:36', -1, '2011-10-19 21:17:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:36.212', 194.39),
(213, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:36', -1, '2011-10-19 21:17:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:36.311', 194.39),
(214, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:36', -1, '2011-10-19 21:17:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:36.398', 194.39);
INSERT INTO `vehicle_movement_log_all` (`vml_id`, `vml_type_id`, `device_history_id`, `toll_location_id`, `geometry`, `timestamp`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_on`, `last_modified_by`, `created_on`, `client_id`, `latitude`, `longitude`, `status`, `toll_session_id`, `distance`) VALUES
(215, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:36', -1, '2011-10-19 21:17:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:36.496', 194.39),
(216, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:36', -1, '2011-10-19 21:17:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:36.587', 194.39),
(217, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:36', -1, '2011-10-19 21:17:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:36.703', 194.39),
(218, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:36', -1, '2011-10-19 21:17:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:36.798', 194.39),
(219, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:36', -1, '2011-10-19 21:17:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:36.922', 194.39),
(220, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:37', -1, '2011-10-19 21:17:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:37.035', 194.39),
(221, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:37', -1, '2011-10-19 21:17:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:37.394', 194.39),
(222, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:37', -1, '2011-10-19 21:17:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:37.535', 194.39),
(223, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:37', -1, '2011-10-19 21:17:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:37.644', 194.39),
(224, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:37', -1, '2011-10-19 21:17:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:37.768', 194.39),
(225, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:37', -1, '2011-10-19 21:17:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:37.894', 194.39),
(226, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:37', -1, '2011-10-19 21:17:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:38.009', 194.39),
(227, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:38', -1, '2011-10-19 21:17:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:38.103', 194.39),
(228, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:38', -1, '2011-10-19 21:17:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:38.203', 194.39),
(229, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:38', -1, '2011-10-19 21:17:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:38.321', 194.39),
(230, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:38', -1, '2011-10-19 21:17:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:38.407', 194.39),
(231, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:38', -1, '2011-10-19 21:17:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:38.536', 194.39),
(232, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:38', -1, '2011-10-19 21:17:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:38.634', 194.39),
(233, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:38', -1, '2011-10-19 21:17:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:38.751', 194.39),
(234, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:38', -1, '2011-10-19 21:17:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:38.879', 194.39),
(235, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:39', -1, '2011-10-19 21:17:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:39.04', 194.39),
(236, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:39', -1, '2011-10-19 21:17:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:39.2', 194.39),
(237, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:39', -1, '2011-10-19 21:17:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:39.298', 194.39),
(238, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:39', -1, '2011-10-19 21:17:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:39.403', 194.39),
(239, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:39', -1, '2011-10-19 21:17:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:39.486', 194.39),
(240, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:39', -1, '2011-10-19 21:17:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:39.595', 194.39),
(241, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:39', -1, '2011-10-19 21:17:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:39.747', 194.39),
(242, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:39', -1, '2011-10-19 21:17:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:39.883', 194.39),
(243, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:39', -1, '2011-10-19 21:17:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:40.009', 194.39),
(244, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:40', -1, '2011-10-19 21:17:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:40.111', 194.39),
(245, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:40', -1, '2011-10-19 21:17:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:40.225', 194.39),
(246, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:40', -1, '2011-10-19 21:17:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:40.331', 194.39),
(247, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:40', -1, '2011-10-19 21:17:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:40.485', 194.39),
(248, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:40', -1, '2011-10-19 21:17:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:40.584', 194.39),
(249, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:40', -1, '2011-10-19 21:17:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:40.725', 194.39),
(250, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:40', -1, '2011-10-19 21:17:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:40.814', 194.39),
(251, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:40', -1, '2011-10-19 21:17:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:40.989', 194.39),
(252, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:41', -1, '2011-10-19 21:17:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:41.089', 194.39),
(253, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:41', -1, '2011-10-19 21:17:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:41.227', 194.39),
(254, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:41', -1, '2011-10-19 21:17:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:41.31', 194.39),
(255, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:41', -1, '2011-10-19 21:17:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:41.462', 194.39),
(256, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:41', -1, '2011-10-19 21:17:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:41.575', 194.39),
(257, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:41', -1, '2011-10-19 21:17:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:41.666', 194.39),
(258, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:41', -1, '2011-10-19 21:17:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:41.773', 194.39),
(259, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:41', -1, '2011-10-19 21:17:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:41.886', 194.39),
(260, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:41', -1, '2011-10-19 21:17:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:41.993', 194.39),
(261, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:42', -1, '2011-10-19 21:17:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:42.098', 194.39),
(262, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:42', -1, '2011-10-19 21:17:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:42.267', 194.39),
(263, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:42', -1, '2011-10-19 21:17:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:42.375', 194.39),
(264, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:42', -1, '2011-10-19 21:17:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:42.495', 194.39),
(265, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:42', -1, '2011-10-19 21:17:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:42.572', 194.39),
(266, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:42', -1, '2011-10-19 21:17:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:42.678', 194.39),
(267, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:42', -1, '2011-10-19 21:17:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:42.781', 194.39),
(268, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:42', -1, '2011-10-19 21:17:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:42.908', 194.39),
(269, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:42', -1, '2011-10-19 21:17:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:43.012', 194.39),
(270, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:43', -1, '2011-10-19 21:17:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:43.103', 194.39),
(271, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:43', -1, '2011-10-19 21:17:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:43.225', 194.39),
(272, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:43', -1, '2011-10-19 21:17:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:43.334', 194.39),
(273, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:43', -1, '2011-10-19 21:17:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:43.465', 194.39),
(274, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:43', -1, '2011-10-19 21:17:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:43.62', 194.39),
(275, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:43', -1, '2011-10-19 21:17:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:43.708', 194.39),
(276, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:43', -1, '2011-10-19 21:17:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:43.796', 194.39),
(277, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:44', -1, '2011-10-19 21:17:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:44.044', 194.39),
(278, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:44', -1, '2011-10-19 21:17:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:44.161', 194.39),
(279, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:44', -1, '2011-10-19 21:17:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:44.253', 194.39),
(280, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:44', -1, '2011-10-19 21:17:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:44.367', 194.39),
(281, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:44', -1, '2011-10-19 21:17:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:44.49', 194.39),
(282, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:44', -1, '2011-10-19 21:17:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:44.71', 194.39),
(283, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:44', -1, '2011-10-19 21:17:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:44.853', 194.39),
(284, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:44', -1, '2011-10-19 21:17:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:44.986', 194.39),
(285, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:45', -1, '2011-10-19 21:17:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:45.099', 194.39),
(286, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:45', -1, '2011-10-19 21:17:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:45.217', 194.39),
(287, 1, 5, NULL, NULL, '2011-10-19 21:17:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:17:45', -1, '2011-10-19 21:17:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:17:45.397', 194.39),
(288, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:36', -1, '2011-10-19 21:18:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:36.166', 194.39),
(289, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:36', -1, '2011-10-19 21:18:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:36.304', 194.39),
(290, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:36', -1, '2011-10-19 21:18:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:36.374', 194.39),
(291, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:36', -1, '2011-10-19 21:18:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:36.468', 194.39),
(292, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:36', -1, '2011-10-19 21:18:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:36.543', 194.39),
(293, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:36', -1, '2011-10-19 21:18:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:36.623', 194.39),
(294, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:36', -1, '2011-10-19 21:18:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:36.697', 194.39),
(295, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:36', -1, '2011-10-19 21:18:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:36.774', 194.39),
(296, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:36', -1, '2011-10-19 21:18:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:36.873', 194.39),
(297, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:36', -1, '2011-10-19 21:18:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:36.952', 194.39),
(298, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:37', -1, '2011-10-19 21:18:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:37.036', 194.39),
(299, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:37', -1, '2011-10-19 21:18:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:37.107', 194.39),
(300, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:37', -1, '2011-10-19 21:18:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:37.19', 194.39),
(301, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:37', -1, '2011-10-19 21:18:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:37.288', 194.39),
(302, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:37', -1, '2011-10-19 21:18:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:37.397', 194.39),
(303, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:37', -1, '2011-10-19 21:18:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:37.48', 194.39),
(304, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:37', -1, '2011-10-19 21:18:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:37.555', 194.39),
(305, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:37', -1, '2011-10-19 21:18:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:37.63', 194.39),
(306, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:37', -1, '2011-10-19 21:18:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:37.712', 194.39),
(307, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:37', -1, '2011-10-19 21:18:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:37.811', 194.39),
(308, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:37', -1, '2011-10-19 21:18:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:37.886', 194.39),
(309, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:37', -1, '2011-10-19 21:18:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:37.99', 194.39),
(310, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:38', -1, '2011-10-19 21:18:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:38.066', 194.39),
(311, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:38', -1, '2011-10-19 21:18:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:38.226', 194.39),
(312, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:38', -1, '2011-10-19 21:18:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:38.449', 194.39),
(313, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:38', -1, '2011-10-19 21:18:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:38.548', 194.39),
(314, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:38', -1, '2011-10-19 21:18:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:38.733', 194.39),
(315, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:38', -1, '2011-10-19 21:18:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:38.93', 194.39),
(316, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:38', -1, '2011-10-19 21:18:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:39.01', 194.39),
(317, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:39', -1, '2011-10-19 21:18:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:39.089', 194.39),
(318, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:39', -1, '2011-10-19 21:18:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:39.168', 194.39),
(319, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:39', -1, '2011-10-19 21:18:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:39.341', 194.39),
(320, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:39', -1, '2011-10-19 21:18:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:39.512', 194.39),
(321, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:39', -1, '2011-10-19 21:18:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:39.6', 194.39),
(322, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:39', -1, '2011-10-19 21:18:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:39.676', 194.39),
(323, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:39', -1, '2011-10-19 21:18:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:39.754', 194.39),
(324, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:39', -1, '2011-10-19 21:18:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:39.843', 194.39),
(325, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:39', -1, '2011-10-19 21:18:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:39.922', 194.39),
(326, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:39', -1, '2011-10-19 21:18:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:40.002', 194.39),
(327, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:40', -1, '2011-10-19 21:18:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:40.079', 194.39),
(328, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:40', -1, '2011-10-19 21:18:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:40.219', 194.39),
(329, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:40', -1, '2011-10-19 21:18:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:40.339', 194.39),
(330, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:40', -1, '2011-10-19 21:18:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:40.514', 194.39),
(331, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:40', -1, '2011-10-19 21:18:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:40.628', 194.39),
(332, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:40', -1, '2011-10-19 21:18:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:40.718', 194.39),
(333, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:40', -1, '2011-10-19 21:18:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:40.811', 194.39),
(334, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:40', -1, '2011-10-19 21:18:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:40.907', 194.39),
(335, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:40', -1, '2011-10-19 21:18:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:41.006', 194.39),
(336, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:41', -1, '2011-10-19 21:18:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:41.143', 194.39),
(337, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:41', -1, '2011-10-19 21:18:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:41.327', 194.39),
(338, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:41', -1, '2011-10-19 21:18:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:41.412', 194.39),
(339, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:41', -1, '2011-10-19 21:18:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:41.484', 194.39),
(340, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:41', -1, '2011-10-19 21:18:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:41.567', 194.39),
(341, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:41', -1, '2011-10-19 21:18:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:41.68', 194.39),
(342, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:41', -1, '2011-10-19 21:18:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:41.758', 194.39),
(343, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:41', -1, '2011-10-19 21:18:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:41.847', 194.39),
(344, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:41', -1, '2011-10-19 21:18:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:42.059', 194.39),
(345, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:42', -1, '2011-10-19 21:18:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:42.212', 194.39),
(346, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:42', -1, '2011-10-19 21:18:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:42.334', 194.39),
(347, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:42', -1, '2011-10-19 21:18:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:42.419', 194.39),
(348, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:42', -1, '2011-10-19 21:18:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:42.517', 194.39),
(349, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:42', -1, '2011-10-19 21:18:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:42.6', 194.39),
(350, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:42', -1, '2011-10-19 21:18:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:42.678', 194.39),
(351, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:42', -1, '2011-10-19 21:18:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:42.757', 194.39),
(352, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:42', -1, '2011-10-19 21:18:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:42.834', 194.39),
(353, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:42', -1, '2011-10-19 21:18:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:42.919', 194.39),
(354, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:43', -1, '2011-10-19 21:18:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:43.053', 194.39),
(355, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:43', -1, '2011-10-19 21:18:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:43.137', 194.39),
(356, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:43', -1, '2011-10-19 21:18:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:43.212', 194.39),
(357, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:43', -1, '2011-10-19 21:18:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:43.292', 194.39),
(358, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:43', -1, '2011-10-19 21:18:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:43.403', 194.39),
(359, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:43', -1, '2011-10-19 21:18:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:43.502', 194.39),
(360, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:43', -1, '2011-10-19 21:18:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:43.589', 194.39),
(361, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:43', -1, '2011-10-19 21:18:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:43.678', 194.39),
(362, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:43', -1, '2011-10-19 21:18:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:43.753', 194.39),
(363, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:43', -1, '2011-10-19 21:18:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:43.845', 194.39),
(364, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:43', -1, '2011-10-19 21:18:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:43.929', 194.39),
(365, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:44', -1, '2011-10-19 21:18:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:44.063', 194.39),
(366, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:44', -1, '2011-10-19 21:18:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:44.388', 194.39),
(367, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:44', -1, '2011-10-19 21:18:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:44.587', 194.39),
(368, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:44', -1, '2011-10-19 21:18:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:44.766', 194.39),
(369, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:44', -1, '2011-10-19 21:18:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:44.841', 194.39),
(370, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:44', -1, '2011-10-19 21:18:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:44.924', 194.39),
(371, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:44', -1, '2011-10-19 21:18:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:44.999', 194.39),
(372, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:45', -1, '2011-10-19 21:18:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:45.076', 194.39),
(373, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:45', -1, '2011-10-19 21:18:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:45.156', 194.39),
(374, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:45', -1, '2011-10-19 21:18:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:45.237', 194.39),
(375, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:45', -1, '2011-10-19 21:18:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:45.357', 194.39),
(376, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:45', -1, '2011-10-19 21:18:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:45.436', 194.39),
(377, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:45', -1, '2011-10-19 21:18:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:45.513', 194.39),
(378, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:45', -1, '2011-10-19 21:18:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:45.586', 194.39),
(379, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:45', -1, '2011-10-19 21:18:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:45.671', 194.39),
(380, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:45', -1, '2011-10-19 21:18:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:45.745', 194.39),
(381, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:45', -1, '2011-10-19 21:18:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:45.846', 194.39),
(382, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:45', -1, '2011-10-19 21:18:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:45.924', 194.39),
(383, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:45', -1, '2011-10-19 21:18:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:46.001', 194.39),
(384, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:46', -1, '2011-10-19 21:18:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:46.075', 194.39),
(385, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:46', -1, '2011-10-19 21:18:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:46.222', 194.39),
(386, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:46', -1, '2011-10-19 21:18:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:46.375', 194.39),
(387, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:46', -1, '2011-10-19 21:18:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:46.466', 194.39),
(388, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:46', -1, '2011-10-19 21:18:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:46.547', 194.39),
(389, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:46', -1, '2011-10-19 21:18:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:46.619', 194.39),
(390, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:46', -1, '2011-10-19 21:18:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:46.714', 194.39),
(391, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:46', -1, '2011-10-19 21:18:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:46.79', 194.39),
(392, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:46', -1, '2011-10-19 21:18:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:46.869', 194.39),
(393, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:46', -1, '2011-10-19 21:18:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:46.944', 194.39),
(394, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:47', -1, '2011-10-19 21:18:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:47.03', 194.39),
(395, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:47', -1, '2011-10-19 21:18:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:47.11', 194.39),
(396, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:47', -1, '2011-10-19 21:18:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:47.191', 194.39),
(397, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:47', -1, '2011-10-19 21:18:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:47.268', 194.39),
(398, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:47', -1, '2011-10-19 21:18:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:47.397', 194.39),
(399, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:47', -1, '2011-10-19 21:18:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:47.49', 194.39),
(400, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:47', -1, '2011-10-19 21:18:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:47.569', 194.39),
(401, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:47', -1, '2011-10-19 21:18:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:47.647', 194.39),
(402, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:47', -1, '2011-10-19 21:18:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:47.726', 194.39),
(403, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:47', -1, '2011-10-19 21:18:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:47.802', 194.39),
(404, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:47', -1, '2011-10-19 21:18:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:47.878', 194.39),
(405, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:47', -1, '2011-10-19 21:18:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:47.956', 194.39),
(406, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:48', -1, '2011-10-19 21:18:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:48.034', 194.39),
(407, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:48', -1, '2011-10-19 21:18:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:48.112', 194.39),
(408, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:48', -1, '2011-10-19 21:18:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:48.195', 194.39),
(409, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:48', -1, '2011-10-19 21:18:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:48.275', 194.39),
(410, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:48', -1, '2011-10-19 21:18:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:48.364', 194.39),
(411, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:48', -1, '2011-10-19 21:18:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:48.454', 194.39),
(412, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:48', -1, '2011-10-19 21:18:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:48.55', 194.39),
(413, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:48', -1, '2011-10-19 21:18:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:48.641', 194.39),
(414, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:48', -1, '2011-10-19 21:18:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:48.726', 194.39),
(415, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:48', -1, '2011-10-19 21:18:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:48.811', 194.39),
(416, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:48', -1, '2011-10-19 21:18:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:48.921', 194.39),
(417, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:48', -1, '2011-10-19 21:18:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:49.008', 194.39),
(418, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:49', -1, '2011-10-19 21:18:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:49.354', 194.39),
(419, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:49', -1, '2011-10-19 21:18:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:49.588', 194.39),
(420, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:49', -1, '2011-10-19 21:18:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:49.667', 194.39),
(421, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:49', -1, '2011-10-19 21:18:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:49.752', 194.39),
(422, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:49', -1, '2011-10-19 21:18:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:49.833', 194.39),
(423, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:49', -1, '2011-10-19 21:18:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:49.914', 194.39),
(424, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:49', -1, '2011-10-19 21:18:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:49.988', 194.39),
(425, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:50', -1, '2011-10-19 21:18:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:50.08', 194.39),
(426, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:50', -1, '2011-10-19 21:18:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:50.192', 194.39),
(427, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:50', -1, '2011-10-19 21:18:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:50.263', 194.39),
(428, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:50', -1, '2011-10-19 21:18:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:50.348', 194.39);
INSERT INTO `vehicle_movement_log_all` (`vml_id`, `vml_type_id`, `device_history_id`, `toll_location_id`, `geometry`, `timestamp`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_on`, `last_modified_by`, `created_on`, `client_id`, `latitude`, `longitude`, `status`, `toll_session_id`, `distance`) VALUES
(429, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:50', -1, '2011-10-19 21:18:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:50.419', 194.39),
(430, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:50', -1, '2011-10-19 21:18:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:50.503', 194.39),
(431, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:50', -1, '2011-10-19 21:18:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:50.575', 194.39),
(432, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:50', -1, '2011-10-19 21:18:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:50.665', 194.39),
(433, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:50', -1, '2011-10-19 21:18:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:50.749', 194.39),
(434, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:50', -1, '2011-10-19 21:18:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:50.875', 194.39),
(435, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:50', -1, '2011-10-19 21:18:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:50.976', 194.39),
(436, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:51', -1, '2011-10-19 21:18:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:51.067', 194.39),
(437, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:51', -1, '2011-10-19 21:18:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:51.146', 194.39),
(438, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:51', -1, '2011-10-19 21:18:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:51.231', 194.39),
(439, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:51', -1, '2011-10-19 21:18:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:51.322', 194.39),
(440, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:51', -1, '2011-10-19 21:18:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:51.399', 194.39),
(441, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:51', -1, '2011-10-19 21:18:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:51.476', 194.39),
(442, 1, 5, NULL, NULL, '2011-10-19 21:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:18:51', -1, '2011-10-19 21:18:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:18:51.558', 194.39),
(443, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:19', -1, '2011-10-19 21:24:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:19.479', 194.39),
(444, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:19', -1, '2011-10-19 21:24:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:19.583', 194.39),
(445, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:19', -1, '2011-10-19 21:24:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:19.695', 194.39),
(446, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:19', -1, '2011-10-19 21:24:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:19.816', 194.39),
(447, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:19', -1, '2011-10-19 21:24:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:19.92', 194.39),
(448, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:19', -1, '2011-10-19 21:24:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:20.01', 194.39),
(449, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:20', -1, '2011-10-19 21:24:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:20.123', 194.39),
(450, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:20', -1, '2011-10-19 21:24:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:20.21', 194.39),
(451, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:20', -1, '2011-10-19 21:24:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:20.357', 194.39),
(452, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:20', -1, '2011-10-19 21:24:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:20.504', 194.39),
(453, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:20', -1, '2011-10-19 21:24:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:20.679', 194.39),
(454, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:20', -1, '2011-10-19 21:24:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:20.765', 194.39),
(455, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:20', -1, '2011-10-19 21:24:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:20.948', 194.39),
(456, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:21', -1, '2011-10-19 21:24:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:21.059', 194.39),
(457, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:21', -1, '2011-10-19 21:24:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:21.188', 194.39),
(458, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:21', -1, '2011-10-19 21:24:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:21.29', 194.39),
(459, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:21', -1, '2011-10-19 21:24:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:21.405', 194.39),
(460, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:21', -1, '2011-10-19 21:24:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:21.594', 194.39),
(461, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:21', -1, '2011-10-19 21:24:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:21.702', 194.39),
(462, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:21', -1, '2011-10-19 21:24:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:21.814', 194.39),
(463, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:21', -1, '2011-10-19 21:24:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:21.932', 194.39),
(464, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:22', -1, '2011-10-19 21:24:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:22.079', 194.39),
(465, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:22', -1, '2011-10-19 21:24:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:22.286', 194.39),
(466, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:22', -1, '2011-10-19 21:24:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:22.4', 194.39),
(467, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:22', -1, '2011-10-19 21:24:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:22.522', 194.39),
(468, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:22', -1, '2011-10-19 21:24:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:22.651', 194.39),
(469, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:22', -1, '2011-10-19 21:24:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:22.759', 194.39),
(470, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:22', -1, '2011-10-19 21:24:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:22.868', 194.39),
(471, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:22', -1, '2011-10-19 21:24:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:23.009', 194.39),
(472, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:23', -1, '2011-10-19 21:24:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:23.133', 194.39),
(473, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:23', -1, '2011-10-19 21:24:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:23.246', 194.39),
(474, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:23', -1, '2011-10-19 21:24:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:23.393', 194.39),
(475, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:23', -1, '2011-10-19 21:24:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:23.529', 194.39),
(476, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:23', -1, '2011-10-19 21:24:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:23.679', 194.39),
(477, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:23', -1, '2011-10-19 21:24:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:23.786', 194.39),
(478, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:23', -1, '2011-10-19 21:24:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:23.875', 194.39),
(479, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:24', -1, '2011-10-19 21:24:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:24.044', 194.39),
(480, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:24', -1, '2011-10-19 21:24:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:24.173', 194.39),
(481, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:24', -1, '2011-10-19 21:24:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:24.286', 194.39),
(482, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:24', -1, '2011-10-19 21:24:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:24.4', 194.39),
(483, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:24', -1, '2011-10-19 21:24:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:24.519', 194.39),
(484, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:24', -1, '2011-10-19 21:24:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:24.635', 194.39),
(485, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:24', -1, '2011-10-19 21:24:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:24.741', 194.39),
(486, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:24', -1, '2011-10-19 21:24:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:24.847', 194.39),
(487, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:24', -1, '2011-10-19 21:24:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:24.953', 194.39),
(488, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:25', -1, '2011-10-19 21:24:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:25.111', 194.39),
(489, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:25', -1, '2011-10-19 21:24:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:25.259', 194.39),
(490, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:25', -1, '2011-10-19 21:24:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:25.364', 194.39),
(491, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:25', -1, '2011-10-19 21:24:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:25.481', 194.39),
(492, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:25', -1, '2011-10-19 21:24:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:25.651', 194.39),
(493, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:25', -1, '2011-10-19 21:24:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:25.802', 194.39),
(494, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:25', -1, '2011-10-19 21:24:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:25.956', 194.39),
(495, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:26', -1, '2011-10-19 21:24:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:26.106', 194.39),
(496, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:26', -1, '2011-10-19 21:24:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:26.214', 194.39),
(497, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:26', -1, '2011-10-19 21:24:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:26.311', 194.39),
(498, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:26', -1, '2011-10-19 21:24:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:26.397', 194.39),
(499, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:26', -1, '2011-10-19 21:24:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:26.519', 194.39),
(500, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:26', -1, '2011-10-19 21:24:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:26.725', 194.39),
(501, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:26', -1, '2011-10-19 21:24:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:26.814', 194.39),
(502, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:26', -1, '2011-10-19 21:24:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:26.901', 194.39),
(503, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:26', -1, '2011-10-19 21:24:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:26.982', 194.39),
(504, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:27', -1, '2011-10-19 21:24:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:27.083', 194.39),
(505, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:27', -1, '2011-10-19 21:24:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:27.191', 194.39),
(506, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:27', -1, '2011-10-19 21:24:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:27.346', 194.39),
(507, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:27', -1, '2011-10-19 21:24:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:27.466', 194.39),
(508, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:27', -1, '2011-10-19 21:24:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:27.614', 194.39),
(509, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:27', -1, '2011-10-19 21:24:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:27.717', 194.39),
(510, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:27', -1, '2011-10-19 21:24:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:27.809', 194.39),
(511, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:27', -1, '2011-10-19 21:24:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:27.943', 194.39),
(512, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:28', -1, '2011-10-19 21:24:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:28.077', 194.39),
(513, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:28', -1, '2011-10-19 21:24:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:28.157', 194.39),
(514, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:28', -1, '2011-10-19 21:24:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:28.237', 194.39),
(515, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:28', -1, '2011-10-19 21:24:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:28.328', 194.39),
(516, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:28', -1, '2011-10-19 21:24:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:28.411', 194.39),
(517, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:28', -1, '2011-10-19 21:24:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:28.499', 194.39),
(518, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:28', -1, '2011-10-19 21:24:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:28.612', 194.39),
(519, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:28', -1, '2011-10-19 21:24:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:28.718', 194.39),
(520, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:28', -1, '2011-10-19 21:24:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:28.8', 194.39),
(521, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:28', -1, '2011-10-19 21:24:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:28.885', 194.39),
(522, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:28', -1, '2011-10-19 21:24:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:28.977', 194.39),
(523, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:29', -1, '2011-10-19 21:24:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:29.053', 194.39),
(524, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:29', -1, '2011-10-19 21:24:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:29.155', 194.39),
(525, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:29', -1, '2011-10-19 21:24:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:29.294', 194.39),
(526, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:29', -1, '2011-10-19 21:24:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:29.41', 194.39),
(527, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:29', -1, '2011-10-19 21:24:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:29.499', 194.39),
(528, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:29', -1, '2011-10-19 21:24:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:29.6', 194.39),
(529, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:29', -1, '2011-10-19 21:24:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:29.814', 194.39),
(530, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:29', -1, '2011-10-19 21:24:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:29.945', 194.39),
(531, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:30', -1, '2011-10-19 21:24:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:30.11', 194.39),
(532, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:30', -1, '2011-10-19 21:24:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:30.248', 194.39),
(533, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:30', -1, '2011-10-19 21:24:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:30.329', 194.39),
(534, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:30', -1, '2011-10-19 21:24:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:30.43', 194.39),
(535, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:30', -1, '2011-10-19 21:24:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:30.507', 194.39),
(536, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:30', -1, '2011-10-19 21:24:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:30.64', 194.39),
(537, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:30', -1, '2011-10-19 21:24:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:30.749', 194.39),
(538, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:30', -1, '2011-10-19 21:24:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:30.836', 194.39),
(539, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:30', -1, '2011-10-19 21:24:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:30.928', 194.39),
(540, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:31', -1, '2011-10-19 21:24:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:31.066', 194.39),
(541, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:31', -1, '2011-10-19 21:24:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:31.187', 194.39),
(542, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:31', -1, '2011-10-19 21:24:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:31.312', 194.39),
(543, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:31', -1, '2011-10-19 21:24:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:31.413', 194.39),
(544, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:31', -1, '2011-10-19 21:24:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:31.5', 194.39),
(545, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:31', -1, '2011-10-19 21:24:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:31.587', 194.39),
(546, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:31', -1, '2011-10-19 21:24:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:31.663', 194.39),
(547, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:31', -1, '2011-10-19 21:24:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:31.785', 194.39),
(548, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:31', -1, '2011-10-19 21:24:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:31.955', 194.39),
(549, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:32', -1, '2011-10-19 21:24:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:32.116', 194.39),
(550, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:32', -1, '2011-10-19 21:24:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:32.202', 194.39),
(551, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:32', -1, '2011-10-19 21:24:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:32.289', 194.39),
(552, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:32', -1, '2011-10-19 21:24:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:32.407', 194.39),
(553, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:32', -1, '2011-10-19 21:24:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:32.499', 194.39),
(554, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:32', -1, '2011-10-19 21:24:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:32.587', 194.39),
(555, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:32', -1, '2011-10-19 21:24:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:32.726', 194.39),
(556, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:32', -1, '2011-10-19 21:24:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:32.83', 194.39),
(557, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:32', -1, '2011-10-19 21:24:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:32.92', 194.39),
(558, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:32', -1, '2011-10-19 21:24:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:33.003', 194.39),
(559, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:33', -1, '2011-10-19 21:24:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:33.078', 194.39),
(560, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:33', -1, '2011-10-19 21:24:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:33.167', 194.39),
(561, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:33', -1, '2011-10-19 21:24:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:33.262', 194.39),
(562, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:33', -1, '2011-10-19 21:24:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:33.38', 194.39),
(563, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:33', -1, '2011-10-19 21:24:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:33.51', 194.39),
(564, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:33', -1, '2011-10-19 21:24:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:33.616', 194.39),
(565, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:33', -1, '2011-10-19 21:24:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:33.693', 194.39),
(566, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:33', -1, '2011-10-19 21:24:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:33.786', 194.39),
(567, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:33', -1, '2011-10-19 21:24:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:33.869', 194.39),
(568, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:33', -1, '2011-10-19 21:24:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:33.963', 194.39),
(569, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:34', -1, '2011-10-19 21:24:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:34.099', 194.39),
(570, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:34', -1, '2011-10-19 21:24:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:34.177', 194.39),
(571, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:34', -1, '2011-10-19 21:24:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:34.268', 194.39),
(572, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:34', -1, '2011-10-19 21:24:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:34.345', 194.39),
(573, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:34', -1, '2011-10-19 21:24:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:34.428', 194.39),
(574, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:34', -1, '2011-10-19 21:24:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:34.56', 194.39),
(575, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:34', -1, '2011-10-19 21:24:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:34.654', 194.39),
(576, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:34', -1, '2011-10-19 21:24:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:34.734', 194.39),
(577, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:34', -1, '2011-10-19 21:24:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:34.835', 194.39),
(578, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:34', -1, '2011-10-19 21:24:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:34.909', 194.39),
(579, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:34', -1, '2011-10-19 21:24:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:34.988', 194.39),
(580, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:35', -1, '2011-10-19 21:24:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:35.065', 194.39),
(581, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:35', -1, '2011-10-19 21:24:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:35.213', 194.39),
(582, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:35', -1, '2011-10-19 21:24:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:35.291', 194.39),
(583, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:35', -1, '2011-10-19 21:24:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:35.387', 194.39),
(584, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:35', -1, '2011-10-19 21:24:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:35.467', 194.39),
(585, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:35', -1, '2011-10-19 21:24:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:35.545', 194.39),
(586, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:35', -1, '2011-10-19 21:24:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:35.619', 194.39),
(587, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:35', -1, '2011-10-19 21:24:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:35.708', 194.39),
(588, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:35', -1, '2011-10-19 21:24:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:35.855', 194.39),
(589, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:35', -1, '2011-10-19 21:24:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:35.93', 194.39),
(590, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:36', -1, '2011-10-19 21:24:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:36.026', 194.39),
(591, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:36', -1, '2011-10-19 21:24:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:36.12', 194.39),
(592, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:36', -1, '2011-10-19 21:24:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:36.217', 194.39),
(593, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:36', -1, '2011-10-19 21:24:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:36.31', 194.39),
(594, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:36', -1, '2011-10-19 21:24:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:36.411', 194.39),
(595, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:36', -1, '2011-10-19 21:24:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:36.524', 194.39),
(596, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:36', -1, '2011-10-19 21:24:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:36.662', 194.39),
(597, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:36', -1, '2011-10-19 21:24:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:36.803', 194.39),
(598, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:36', -1, '2011-10-19 21:24:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:36.887', 194.39),
(599, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:36', -1, '2011-10-19 21:24:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:37.009', 194.39),
(600, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:37', -1, '2011-10-19 21:24:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:37.153', 194.39),
(601, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:37', -1, '2011-10-19 21:24:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:37.31', 194.39),
(602, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:37', -1, '2011-10-19 21:24:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:37.418', 194.39),
(603, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:37', -1, '2011-10-19 21:24:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:37.505', 194.39),
(604, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:37', -1, '2011-10-19 21:24:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:37.595', 194.39),
(605, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:37', -1, '2011-10-19 21:24:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:37.675', 194.39),
(606, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:37', -1, '2011-10-19 21:24:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:37.795', 194.39),
(607, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:37', -1, '2011-10-19 21:24:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:37.902', 194.39),
(608, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:37', -1, '2011-10-19 21:24:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:38.0', 194.39),
(609, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:38', -1, '2011-10-19 21:24:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:38.109', 194.39),
(610, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:38', -1, '2011-10-19 21:24:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:38.187', 194.39),
(611, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:38', -1, '2011-10-19 21:24:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:38.277', 194.39),
(612, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:38', -1, '2011-10-19 21:24:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:38.352', 194.39),
(613, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:38', -1, '2011-10-19 21:24:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:38.517', 194.39),
(614, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:38', -1, '2011-10-19 21:24:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:38.621', 194.39),
(615, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:38', -1, '2011-10-19 21:24:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:38.696', 194.39),
(616, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:38', -1, '2011-10-19 21:24:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:38.793', 194.39),
(617, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:38', -1, '2011-10-19 21:24:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:38.878', 194.39),
(618, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:38', -1, '2011-10-19 21:24:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:38.959', 194.39),
(619, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:39', -1, '2011-10-19 21:24:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:39.14', 194.39),
(620, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:39', -1, '2011-10-19 21:24:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:39.225', 194.39),
(621, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:39', -1, '2011-10-19 21:24:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:39.312', 194.39),
(622, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:39', -1, '2011-10-19 21:24:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:39.407', 194.39),
(623, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:39', -1, '2011-10-19 21:24:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:39.5', 194.39),
(624, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:39', -1, '2011-10-19 21:24:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:39.589', 194.39),
(625, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:39', -1, '2011-10-19 21:24:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:39.666', 194.39),
(626, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:39', -1, '2011-10-19 21:24:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:39.748', 194.39),
(627, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:39', -1, '2011-10-19 21:24:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:39.874', 194.39),
(628, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:39', -1, '2011-10-19 21:24:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:39.952', 194.39),
(629, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:40', -1, '2011-10-19 21:24:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:40.039', 194.39),
(630, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:40', -1, '2011-10-19 21:24:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:40.134', 194.39),
(631, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:40', -1, '2011-10-19 21:24:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:40.428', 194.39),
(632, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:40', -1, '2011-10-19 21:24:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:40.549', 194.39),
(633, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:40', -1, '2011-10-19 21:24:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:40.63', 194.39),
(634, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:40', -1, '2011-10-19 21:24:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:40.723', 194.39),
(635, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:40', -1, '2011-10-19 21:24:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:40.799', 194.39),
(636, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:40', -1, '2011-10-19 21:24:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:40.93', 194.39),
(637, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:40', -1, '2011-10-19 21:24:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:41.008', 194.39),
(638, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:41', -1, '2011-10-19 21:24:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:41.234', 194.39),
(639, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:41', -1, '2011-10-19 21:24:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:41.305', 194.39),
(640, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:41', -1, '2011-10-19 21:24:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:41.432', 194.39),
(641, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:41', -1, '2011-10-19 21:24:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:41.534', 194.39),
(642, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:41', -1, '2011-10-19 21:24:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:41.621', 194.39);
INSERT INTO `vehicle_movement_log_all` (`vml_id`, `vml_type_id`, `device_history_id`, `toll_location_id`, `geometry`, `timestamp`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_on`, `last_modified_by`, `created_on`, `client_id`, `latitude`, `longitude`, `status`, `toll_session_id`, `distance`) VALUES
(643, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:41', -1, '2011-10-19 21:24:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:41.699', 194.39),
(644, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:41', -1, '2011-10-19 21:24:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:41.779', 194.39),
(645, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:41', -1, '2011-10-19 21:24:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:41.922', 194.39),
(646, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:41', -1, '2011-10-19 21:24:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:42.012', 194.39),
(647, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:42', -1, '2011-10-19 21:24:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:42.102', 194.39),
(648, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:42', -1, '2011-10-19 21:24:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:42.191', 194.39),
(649, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:42', -1, '2011-10-19 21:24:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:42.261', 194.39),
(650, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:42', -1, '2011-10-19 21:24:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:42.357', 194.39),
(651, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:42', -1, '2011-10-19 21:24:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:42.505', 194.39),
(652, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:42', -1, '2011-10-19 21:24:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:42.587', 194.39),
(653, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:42', -1, '2011-10-19 21:24:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:42.68', 194.39),
(654, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:42', -1, '2011-10-19 21:24:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:42.766', 194.39),
(655, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:42', -1, '2011-10-19 21:24:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:42.855', 194.39),
(656, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:42', -1, '2011-10-19 21:24:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:42.93', 194.39),
(657, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:42', -1, '2011-10-19 21:24:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:43.007', 194.39),
(658, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:43', -1, '2011-10-19 21:24:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:43.138', 194.39),
(659, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:43', -1, '2011-10-19 21:24:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:43.244', 194.39),
(660, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:43', -1, '2011-10-19 21:24:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:43.328', 194.39),
(661, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:43', -1, '2011-10-19 21:24:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:43.426', 194.39),
(662, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:43', -1, '2011-10-19 21:24:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:43.512', 194.39),
(663, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:43', -1, '2011-10-19 21:24:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:43.591', 194.39),
(664, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:43', -1, '2011-10-19 21:24:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:43.718', 194.39),
(665, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:43', -1, '2011-10-19 21:24:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:43.801', 194.39),
(666, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:43', -1, '2011-10-19 21:24:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:43.916', 194.39),
(667, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:43', -1, '2011-10-19 21:24:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:44.013', 194.39),
(668, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:44', -1, '2011-10-19 21:24:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:44.103', 194.39),
(669, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:44', -1, '2011-10-19 21:24:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:44.2', 194.39),
(670, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:44', -1, '2011-10-19 21:24:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:44.275', 194.39),
(671, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:44', -1, '2011-10-19 21:24:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:44.362', 194.39),
(672, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:44', -1, '2011-10-19 21:24:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:44.624', 194.39),
(673, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:44', -1, '2011-10-19 21:24:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:44.731', 194.39),
(674, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:44', -1, '2011-10-19 21:24:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:44.811', 194.39),
(675, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:44', -1, '2011-10-19 21:24:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:44.911', 194.39),
(676, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:44', -1, '2011-10-19 21:24:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:44.996', 194.39),
(677, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:45', -1, '2011-10-19 21:24:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:45.077', 194.39),
(678, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:45', -1, '2011-10-19 21:24:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:45.177', 194.39),
(679, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:45', -1, '2011-10-19 21:24:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:45.287', 194.39),
(680, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:45', -1, '2011-10-19 21:24:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:45.389', 194.39),
(681, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:45', -1, '2011-10-19 21:24:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:45.487', 194.39),
(682, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:45', -1, '2011-10-19 21:24:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:45.572', 194.39),
(683, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:45', -1, '2011-10-19 21:24:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:45.668', 194.39),
(684, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:45', -1, '2011-10-19 21:24:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:45.796', 194.39),
(685, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:45', -1, '2011-10-19 21:24:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:45.942', 194.39),
(686, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:46', -1, '2011-10-19 21:24:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:46.026', 194.39),
(687, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:46', -1, '2011-10-19 21:24:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:46.122', 194.39),
(688, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:46', -1, '2011-10-19 21:24:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:46.231', 194.39),
(689, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:46', -1, '2011-10-19 21:24:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:46.36', 194.39),
(690, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:46', -1, '2011-10-19 21:24:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:46.484', 194.39),
(691, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:46', -1, '2011-10-19 21:24:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:46.565', 194.39),
(692, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:46', -1, '2011-10-19 21:24:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:46.667', 194.39),
(693, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:46', -1, '2011-10-19 21:24:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:46.753', 194.39),
(694, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:46', -1, '2011-10-19 21:24:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:46.829', 194.39),
(695, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:46', -1, '2011-10-19 21:24:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:46.927', 194.39),
(696, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:46', -1, '2011-10-19 21:24:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:47.015', 194.39),
(697, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:47', -1, '2011-10-19 21:24:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:47.133', 194.39),
(698, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:47', -1, '2011-10-19 21:24:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:47.222', 194.39),
(699, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:47', -1, '2011-10-19 21:24:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:47.337', 194.39),
(700, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:47', -1, '2011-10-19 21:24:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:47.573', 194.39),
(701, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:47', -1, '2011-10-19 21:24:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:47.689', 194.39),
(702, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:47', -1, '2011-10-19 21:24:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:47.767', 194.39),
(703, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:47', -1, '2011-10-19 21:24:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:47.913', 194.39),
(704, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:48', -1, '2011-10-19 21:24:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:48.023', 194.39),
(705, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:48', -1, '2011-10-19 21:24:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:48.124', 194.39),
(706, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:48', -1, '2011-10-19 21:24:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:48.211', 194.39),
(707, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:48', -1, '2011-10-19 21:24:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:48.284', 194.39),
(708, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:48', -1, '2011-10-19 21:24:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:48.365', 194.39),
(709, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:48', -1, '2011-10-19 21:24:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:48.454', 194.39),
(710, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:48', -1, '2011-10-19 21:24:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:48.622', 194.39),
(711, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:48', -1, '2011-10-19 21:24:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:48.776', 194.39),
(712, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:48', -1, '2011-10-19 21:24:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:48.852', 194.39),
(713, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:48', -1, '2011-10-19 21:24:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:48.943', 194.39),
(714, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:49', -1, '2011-10-19 21:24:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:49.02', 194.39),
(715, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:49', -1, '2011-10-19 21:24:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:49.115', 194.39),
(716, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:49', -1, '2011-10-19 21:24:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:49.258', 194.39),
(717, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:49', -1, '2011-10-19 21:24:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:49.363', 194.39),
(718, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:49', -1, '2011-10-19 21:24:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:49.445', 194.39),
(719, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:49', -1, '2011-10-19 21:24:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:49.522', 194.39),
(720, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:49', -1, '2011-10-19 21:24:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:49.641', 194.39),
(721, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:49', -1, '2011-10-19 21:24:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:49.718', 194.39),
(722, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:49', -1, '2011-10-19 21:24:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:49.812', 194.39),
(723, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:49', -1, '2011-10-19 21:24:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:49.974', 194.39),
(724, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:50', -1, '2011-10-19 21:24:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:50.066', 194.39),
(725, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:50', -1, '2011-10-19 21:24:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:50.163', 194.39),
(726, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:50', -1, '2011-10-19 21:24:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:50.248', 194.39),
(727, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:50', -1, '2011-10-19 21:24:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:50.335', 194.39),
(728, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:50', -1, '2011-10-19 21:24:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:50.442', 194.39),
(729, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:50', -1, '2011-10-19 21:24:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:50.518', 194.39),
(730, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:50', -1, '2011-10-19 21:24:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:50.699', 194.39),
(731, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:50', -1, '2011-10-19 21:24:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:50.897', 194.39),
(732, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:50', -1, '2011-10-19 21:24:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:51.006', 194.39),
(733, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:51', -1, '2011-10-19 21:24:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:51.098', 194.39),
(734, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:51', -1, '2011-10-19 21:24:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:51.183', 194.39),
(735, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:51', -1, '2011-10-19 21:24:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:51.267', 194.39),
(736, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:51', -1, '2011-10-19 21:24:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:51.427', 194.39),
(737, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:51', -1, '2011-10-19 21:24:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:51.509', 194.39),
(738, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:51', -1, '2011-10-19 21:24:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:51.606', 194.39),
(739, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:51', -1, '2011-10-19 21:24:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:51.689', 194.39),
(740, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:51', -1, '2011-10-19 21:24:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:51.771', 194.39),
(741, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:51', -1, '2011-10-19 21:24:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:51.866', 194.39),
(742, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:51', -1, '2011-10-19 21:24:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:52.084', 194.39),
(743, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:52', -1, '2011-10-19 21:24:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:52.196', 194.39),
(744, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:52', -1, '2011-10-19 21:24:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:52.288', 194.39),
(745, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:52', -1, '2011-10-19 21:24:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:52.379', 194.39),
(746, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:52', -1, '2011-10-19 21:24:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:52.472', 194.39),
(747, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:52', -1, '2011-10-19 21:24:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:52.552', 194.39),
(748, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:52', -1, '2011-10-19 21:24:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:52.633', 194.39),
(749, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:52', -1, '2011-10-19 21:24:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:52.724', 194.39),
(750, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:52', -1, '2011-10-19 21:24:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:52.85', 194.39),
(751, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:52', -1, '2011-10-19 21:24:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:52.938', 194.39),
(752, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:53', -1, '2011-10-19 21:24:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:53.023', 194.39),
(753, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:53', -1, '2011-10-19 21:24:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:53.11', 194.39),
(754, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:53', -1, '2011-10-19 21:24:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:53.183', 194.39),
(755, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:53', -1, '2011-10-19 21:24:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:53.289', 194.39),
(756, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:53', -1, '2011-10-19 21:24:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:53.402', 194.39),
(757, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:53', -1, '2011-10-19 21:24:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:53.583', 194.39),
(758, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:53', -1, '2011-10-19 21:24:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:53.666', 194.39),
(759, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:53', -1, '2011-10-19 21:24:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:53.751', 194.39),
(760, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:53', -1, '2011-10-19 21:24:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:53.847', 194.39),
(761, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:53', -1, '2011-10-19 21:24:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:53.952', 194.39),
(762, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:54', -1, '2011-10-19 21:24:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:54.031', 194.39),
(763, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:54', -1, '2011-10-19 21:24:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:54.197', 194.39),
(764, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:54', -1, '2011-10-19 21:24:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:54.294', 194.39),
(765, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:54', -1, '2011-10-19 21:24:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:54.378', 194.39),
(766, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:54', -1, '2011-10-19 21:24:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:54.478', 194.39),
(767, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:54', -1, '2011-10-19 21:24:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:54.564', 194.39),
(768, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:54', -1, '2011-10-19 21:24:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:54.656', 194.39),
(769, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:54', -1, '2011-10-19 21:24:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:54.736', 194.39),
(770, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:54', -1, '2011-10-19 21:24:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:54.842', 194.39),
(771, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:54', -1, '2011-10-19 21:24:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:54.925', 194.39),
(772, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:55', -1, '2011-10-19 21:24:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:55.062', 194.39),
(773, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:55', -1, '2011-10-19 21:24:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:55.177', 194.39),
(774, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:55', -1, '2011-10-19 21:24:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:55.267', 194.39),
(775, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:55', -1, '2011-10-19 21:24:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:55.354', 194.39),
(776, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:55', -1, '2011-10-19 21:24:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:55.434', 194.39),
(777, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:55', -1, '2011-10-19 21:24:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:55.518', 194.39),
(778, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:55', -1, '2011-10-19 21:24:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:55.607', 194.39),
(779, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:55', -1, '2011-10-19 21:24:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:55.693', 194.39),
(780, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:55', -1, '2011-10-19 21:24:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:55.794', 194.39),
(781, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:55', -1, '2011-10-19 21:24:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:55.88', 194.39),
(782, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:55', -1, '2011-10-19 21:24:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:55.981', 194.39),
(783, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:56', -1, '2011-10-19 21:24:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:56.068', 194.39),
(784, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:56', -1, '2011-10-19 21:24:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:56.177', 194.39),
(785, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:56', -1, '2011-10-19 21:24:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:56.274', 194.39),
(786, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:56', -1, '2011-10-19 21:24:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:56.371', 194.39),
(787, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:56', -1, '2011-10-19 21:24:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:56.488', 194.39),
(788, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:56', -1, '2011-10-19 21:24:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:56.571', 194.39),
(789, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:56', -1, '2011-10-19 21:24:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:56.729', 194.39),
(790, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:56', -1, '2011-10-19 21:24:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:56.852', 194.39),
(791, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:56', -1, '2011-10-19 21:24:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:56.959', 194.39),
(792, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:57', -1, '2011-10-19 21:24:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:57.061', 194.39),
(793, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:57', -1, '2011-10-19 21:24:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:57.161', 194.39),
(794, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:57', -1, '2011-10-19 21:24:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:57.265', 194.39),
(795, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:57', -1, '2011-10-19 21:24:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:57.362', 194.39),
(796, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:57', -1, '2011-10-19 21:24:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:57.449', 194.39),
(797, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:57', -1, '2011-10-19 21:24:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:57.573', 194.39),
(798, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:57', -1, '2011-10-19 21:24:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:57.651', 194.39),
(799, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:57', -1, '2011-10-19 21:24:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:57.747', 194.39),
(800, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:57', -1, '2011-10-19 21:24:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:57.852', 194.39),
(801, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:57', -1, '2011-10-19 21:24:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:57.943', 194.39),
(802, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:58', -1, '2011-10-19 21:24:58', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:58.028', 194.39),
(803, 1, 5, NULL, NULL, '2011-10-19 21:24:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:24:58', -1, '2011-10-19 21:24:58', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:24:58.244', 194.39),
(804, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:05', -1, '2011-10-19 21:30:05', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:05.616', 194.39),
(805, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:05', -1, '2011-10-19 21:30:05', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:05.772', 194.39),
(806, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:05', -1, '2011-10-19 21:30:05', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:05.922', 194.39),
(807, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:06', -1, '2011-10-19 21:30:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:06.024', 194.39),
(808, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:06', -1, '2011-10-19 21:30:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:06.142', 194.39),
(809, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:06', -1, '2011-10-19 21:30:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:06.241', 194.39),
(810, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:06', -1, '2011-10-19 21:30:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:06.344', 194.39),
(811, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:06', -1, '2011-10-19 21:30:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:06.498', 194.39),
(812, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:06', -1, '2011-10-19 21:30:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:06.606', 194.39),
(813, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:06', -1, '2011-10-19 21:30:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:06.689', 194.39),
(814, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:06', -1, '2011-10-19 21:30:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:06.78', 194.39),
(815, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:06', -1, '2011-10-19 21:30:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:06.878', 194.39),
(816, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:06', -1, '2011-10-19 21:30:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:06.979', 194.39),
(817, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:07', -1, '2011-10-19 21:30:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:07.073', 194.39),
(818, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:07', -1, '2011-10-19 21:30:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:07.163', 194.39),
(819, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:07', -1, '2011-10-19 21:30:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:07.286', 194.39),
(820, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:07', -1, '2011-10-19 21:30:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:07.388', 194.39),
(821, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:07', -1, '2011-10-19 21:30:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:07.486', 194.39),
(822, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:07', -1, '2011-10-19 21:30:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:07.576', 194.39),
(823, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:07', -1, '2011-10-19 21:30:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:07.67', 194.39),
(824, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:07', -1, '2011-10-19 21:30:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:07.759', 194.39),
(825, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:07', -1, '2011-10-19 21:30:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:07.846', 194.39),
(826, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:07', -1, '2011-10-19 21:30:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:07.962', 194.39),
(827, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:08', -1, '2011-10-19 21:30:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:08.048', 194.39),
(828, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:08', -1, '2011-10-19 21:30:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:08.144', 194.39),
(829, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:08', -1, '2011-10-19 21:30:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:08.234', 194.39),
(830, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:08', -1, '2011-10-19 21:30:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:08.338', 194.39),
(831, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:08', -1, '2011-10-19 21:30:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:08.424', 194.39),
(832, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:08', -1, '2011-10-19 21:30:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:08.518', 194.39),
(833, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:08', -1, '2011-10-19 21:30:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:08.616', 194.39),
(834, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:08', -1, '2011-10-19 21:30:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:08.723', 194.39),
(835, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:08', -1, '2011-10-19 21:30:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:08.813', 194.39),
(836, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:08', -1, '2011-10-19 21:30:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:08.9', 194.39),
(837, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:08', -1, '2011-10-19 21:30:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:08.991', 194.39),
(838, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:09', -1, '2011-10-19 21:30:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:09.112', 194.39),
(839, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:09', -1, '2011-10-19 21:30:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:09.206', 194.39),
(840, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:09', -1, '2011-10-19 21:30:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:09.291', 194.39),
(841, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:09', -1, '2011-10-19 21:30:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:09.441', 194.39),
(842, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:09', -1, '2011-10-19 21:30:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:09.54', 194.39),
(843, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:09', -1, '2011-10-19 21:30:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:09.642', 194.39),
(844, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:09', -1, '2011-10-19 21:30:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:09.731', 194.39),
(845, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:09', -1, '2011-10-19 21:30:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:09.825', 194.39),
(846, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:09', -1, '2011-10-19 21:30:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:09.909', 194.39),
(847, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:09', -1, '2011-10-19 21:30:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:10.014', 194.39),
(848, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:10', -1, '2011-10-19 21:30:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:10.127', 194.39),
(849, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:10', -1, '2011-10-19 21:30:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:10.22', 194.39),
(850, 1, 5, NULL, NULL, '2011-10-19 21:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:30:10', -1, '2011-10-19 21:30:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:30:10.314', 194.39),
(851, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:24', -1, '2011-10-19 21:33:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:24.074', 194.39),
(852, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:24', -1, '2011-10-19 21:33:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:24.235', 194.39),
(853, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:24', -1, '2011-10-19 21:33:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:24.361', 194.39),
(854, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:24', -1, '2011-10-19 21:33:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:24.46', 194.39),
(855, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:24', -1, '2011-10-19 21:33:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:24.596', 194.39),
(856, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:24', -1, '2011-10-19 21:33:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:24.696', 194.39);
INSERT INTO `vehicle_movement_log_all` (`vml_id`, `vml_type_id`, `device_history_id`, `toll_location_id`, `geometry`, `timestamp`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_on`, `last_modified_by`, `created_on`, `client_id`, `latitude`, `longitude`, `status`, `toll_session_id`, `distance`) VALUES
(857, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:24', -1, '2011-10-19 21:33:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:24.882', 194.39),
(858, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:25', -1, '2011-10-19 21:33:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:25.114', 194.39),
(859, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:25', -1, '2011-10-19 21:33:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:25.321', 194.39),
(860, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:25', -1, '2011-10-19 21:33:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:25.485', 194.39),
(861, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:25', -1, '2011-10-19 21:33:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:25.62', 194.39),
(862, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:25', -1, '2011-10-19 21:33:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:25.755', 194.39),
(863, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:25', -1, '2011-10-19 21:33:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:25.857', 194.39),
(864, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:25', -1, '2011-10-19 21:33:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:25.979', 194.39),
(865, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:26', -1, '2011-10-19 21:33:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:26.098', 194.39),
(866, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:26', -1, '2011-10-19 21:33:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:26.23', 194.39),
(867, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:26', -1, '2011-10-19 21:33:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:26.429', 194.39),
(868, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:26', -1, '2011-10-19 21:33:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:26.537', 194.39),
(869, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:26', -1, '2011-10-19 21:33:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:26.647', 194.39),
(870, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:26', -1, '2011-10-19 21:33:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:26.765', 194.39),
(871, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:26', -1, '2011-10-19 21:33:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:26.891', 194.39),
(872, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:26', -1, '2011-10-19 21:33:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:27.016', 194.39),
(873, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:27', -1, '2011-10-19 21:33:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:27.163', 194.39),
(874, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:27', -1, '2011-10-19 21:33:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:27.338', 194.39),
(875, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:27', -1, '2011-10-19 21:33:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:27.581', 194.39),
(876, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:27', -1, '2011-10-19 21:33:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:27.697', 194.39),
(877, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:27', -1, '2011-10-19 21:33:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:27.826', 194.39),
(878, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:27', -1, '2011-10-19 21:33:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:27.937', 194.39),
(879, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:28', -1, '2011-10-19 21:33:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:28.05', 194.39),
(880, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:28', -1, '2011-10-19 21:33:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:28.157', 194.39),
(881, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:28', -1, '2011-10-19 21:33:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:28.297', 194.39),
(882, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:28', -1, '2011-10-19 21:33:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:28.383', 194.39),
(883, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:28', -1, '2011-10-19 21:33:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:28.532', 194.39),
(884, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:28', -1, '2011-10-19 21:33:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:28.65', 194.39),
(885, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:28', -1, '2011-10-19 21:33:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:28.776', 194.39),
(886, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:28', -1, '2011-10-19 21:33:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:28.868', 194.39),
(887, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:28', -1, '2011-10-19 21:33:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:28.983', 194.39),
(888, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:29', -1, '2011-10-19 21:33:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:29.098', 194.39),
(889, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:29', -1, '2011-10-19 21:33:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:29.226', 194.39),
(890, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:29', -1, '2011-10-19 21:33:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:29.344', 194.39),
(891, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:29', -1, '2011-10-19 21:33:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:29.449', 194.39),
(892, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:29', -1, '2011-10-19 21:33:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:29.542', 194.39),
(893, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:29', -1, '2011-10-19 21:33:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:29.629', 194.39),
(894, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:29', -1, '2011-10-19 21:33:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:29.728', 194.39),
(895, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:29', -1, '2011-10-19 21:33:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:29.828', 194.39),
(896, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:29', -1, '2011-10-19 21:33:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:29.963', 194.39),
(897, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:30', -1, '2011-10-19 21:33:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:30.078', 194.39),
(898, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:30', -1, '2011-10-19 21:33:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:30.182', 194.39),
(899, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:30', -1, '2011-10-19 21:33:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:30.322', 194.39),
(900, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:30', -1, '2011-10-19 21:33:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:30.445', 194.39),
(901, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:30', -1, '2011-10-19 21:33:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:30.542', 194.39),
(902, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:30', -1, '2011-10-19 21:33:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:30.674', 194.39),
(903, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:30', -1, '2011-10-19 21:33:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:30.849', 194.39),
(904, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:30', -1, '2011-10-19 21:33:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:31.019', 194.39),
(905, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:31', -1, '2011-10-19 21:33:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:31.147', 194.39),
(906, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:31', -1, '2011-10-19 21:33:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:31.245', 194.39),
(907, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:31', -1, '2011-10-19 21:33:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:31.375', 194.39),
(908, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:31', -1, '2011-10-19 21:33:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:31.477', 194.39),
(909, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:31', -1, '2011-10-19 21:33:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:31.572', 194.39),
(910, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:31', -1, '2011-10-19 21:33:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:31.726', 194.39),
(911, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:31', -1, '2011-10-19 21:33:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:31.831', 194.39),
(912, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:31', -1, '2011-10-19 21:33:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:31.949', 194.39),
(913, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:32', -1, '2011-10-19 21:33:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:32.044', 194.39),
(914, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:32', -1, '2011-10-19 21:33:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:32.147', 194.39),
(915, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:32', -1, '2011-10-19 21:33:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:32.26', 194.39),
(916, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:32', -1, '2011-10-19 21:33:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:32.366', 194.39),
(917, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:32', -1, '2011-10-19 21:33:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:32.513', 194.39),
(918, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:32', -1, '2011-10-19 21:33:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:32.636', 194.39),
(919, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:32', -1, '2011-10-19 21:33:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:32.719', 194.39),
(920, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:32', -1, '2011-10-19 21:33:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:32.808', 194.39),
(921, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:32', -1, '2011-10-19 21:33:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:32.91', 194.39),
(922, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:32', -1, '2011-10-19 21:33:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:33.038', 194.39),
(923, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:33', -1, '2011-10-19 21:33:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:33.149', 194.39),
(924, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:33', -1, '2011-10-19 21:33:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:33.254', 194.39),
(925, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:33', -1, '2011-10-19 21:33:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:33.356', 194.39),
(926, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:33', -1, '2011-10-19 21:33:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:33.519', 194.39),
(927, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:33', -1, '2011-10-19 21:33:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:33.648', 194.39),
(928, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:33', -1, '2011-10-19 21:33:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:33.789', 194.39),
(929, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:33', -1, '2011-10-19 21:33:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:33.925', 194.39),
(930, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:33', -1, '2011-10-19 21:33:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:34.016', 194.39),
(931, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:34', -1, '2011-10-19 21:33:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:34.102', 194.39),
(932, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:34', -1, '2011-10-19 21:33:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:34.202', 194.39),
(933, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:34', -1, '2011-10-19 21:33:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:34.322', 194.39),
(934, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:34', -1, '2011-10-19 21:33:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:34.461', 194.39),
(935, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:34', -1, '2011-10-19 21:33:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:34.545', 194.39),
(936, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:34', -1, '2011-10-19 21:33:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:34.646', 194.39),
(937, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:34', -1, '2011-10-19 21:33:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:34.746', 194.39),
(938, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:34', -1, '2011-10-19 21:33:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:34.859', 194.39),
(939, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:34', -1, '2011-10-19 21:33:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:34.957', 194.39),
(940, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:35', -1, '2011-10-19 21:33:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:35.05', 194.39),
(941, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:35', -1, '2011-10-19 21:33:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:35.219', 194.39),
(942, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:35', -1, '2011-10-19 21:33:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:35.376', 194.39),
(943, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:35', -1, '2011-10-19 21:33:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:35.466', 194.39),
(944, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:35', -1, '2011-10-19 21:33:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:35.55', 194.39),
(945, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:35', -1, '2011-10-19 21:33:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:35.686', 194.39),
(946, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:35', -1, '2011-10-19 21:33:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:35.778', 194.39),
(947, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:35', -1, '2011-10-19 21:33:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:36.003', 194.39),
(948, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:36', -1, '2011-10-19 21:33:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:36.105', 194.39),
(949, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:36', -1, '2011-10-19 21:33:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:36.202', 194.39),
(950, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:36', -1, '2011-10-19 21:33:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:36.298', 194.39),
(951, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:36', -1, '2011-10-19 21:33:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:36.44', 194.39),
(952, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:36', -1, '2011-10-19 21:33:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:36.536', 194.39),
(953, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:36', -1, '2011-10-19 21:33:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:36.669', 194.39),
(954, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:36', -1, '2011-10-19 21:33:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:36.806', 194.39),
(955, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:36', -1, '2011-10-19 21:33:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:36.895', 194.39),
(956, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:37', -1, '2011-10-19 21:33:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:37.204', 194.39),
(957, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:37', -1, '2011-10-19 21:33:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:37.376', 194.39),
(958, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:37', -1, '2011-10-19 21:33:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:37.524', 194.39),
(959, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:37', -1, '2011-10-19 21:33:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:37.621', 194.39),
(960, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:37', -1, '2011-10-19 21:33:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:37.7', 194.39),
(961, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:37', -1, '2011-10-19 21:33:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:37.803', 194.39),
(962, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:37', -1, '2011-10-19 21:33:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:37.921', 194.39),
(963, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:38', -1, '2011-10-19 21:33:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:38.04', 194.39),
(964, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:38', -1, '2011-10-19 21:33:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:38.136', 194.39),
(965, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:38', -1, '2011-10-19 21:33:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:38.241', 194.39),
(966, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:38', -1, '2011-10-19 21:33:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:38.334', 194.39),
(967, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:38', -1, '2011-10-19 21:33:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:38.428', 194.39),
(968, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:38', -1, '2011-10-19 21:33:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:38.55', 194.39),
(969, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:38', -1, '2011-10-19 21:33:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:38.685', 194.39),
(970, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:38', -1, '2011-10-19 21:33:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:38.789', 194.39),
(971, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:38', -1, '2011-10-19 21:33:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:38.954', 194.39),
(972, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:39', -1, '2011-10-19 21:33:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:39.146', 194.39),
(973, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:39', -1, '2011-10-19 21:33:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:39.308', 194.39),
(974, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:39', -1, '2011-10-19 21:33:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:39.45', 194.39),
(975, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:39', -1, '2011-10-19 21:33:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:39.543', 194.39),
(976, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:39', -1, '2011-10-19 21:33:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:39.623', 194.39),
(977, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:39', -1, '2011-10-19 21:33:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:39.714', 194.39),
(978, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:39', -1, '2011-10-19 21:33:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:39.796', 194.39),
(979, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:39', -1, '2011-10-19 21:33:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:39.917', 194.39),
(980, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:39', -1, '2011-10-19 21:33:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:40.002', 194.39),
(981, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:40', -1, '2011-10-19 21:33:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:40.097', 194.39),
(982, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:40', -1, '2011-10-19 21:33:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:40.178', 194.39),
(983, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:40', -1, '2011-10-19 21:33:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:40.323', 194.39),
(984, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:40', -1, '2011-10-19 21:33:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:40.43', 194.39),
(985, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:40', -1, '2011-10-19 21:33:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:40.541', 194.39),
(986, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:40', -1, '2011-10-19 21:33:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:40.625', 194.39),
(987, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:40', -1, '2011-10-19 21:33:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:40.724', 194.39),
(988, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:40', -1, '2011-10-19 21:33:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:40.81', 194.39),
(989, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:40', -1, '2011-10-19 21:33:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:40.969', 194.39),
(990, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:41', -1, '2011-10-19 21:33:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:41.101', 194.39),
(991, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:41', -1, '2011-10-19 21:33:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:41.222', 194.39),
(992, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:41', -1, '2011-10-19 21:33:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:41.372', 194.39),
(993, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:41', -1, '2011-10-19 21:33:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:41.464', 194.39),
(994, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:41', -1, '2011-10-19 21:33:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:41.562', 194.39),
(995, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:41', -1, '2011-10-19 21:33:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:41.656', 194.39),
(996, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:41', -1, '2011-10-19 21:33:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:41.733', 194.39),
(997, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:41', -1, '2011-10-19 21:33:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:41.825', 194.39),
(998, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:41', -1, '2011-10-19 21:33:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:41.914', 194.39),
(999, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:41', -1, '2011-10-19 21:33:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:42.013', 194.39),
(1000, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:42', -1, '2011-10-19 21:33:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:42.141', 194.39),
(1001, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:42', -1, '2011-10-19 21:33:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:42.249', 194.39),
(1002, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:42', -1, '2011-10-19 21:33:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:42.335', 194.39),
(1003, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:42', -1, '2011-10-19 21:33:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:42.437', 194.39),
(1004, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:42', -1, '2011-10-19 21:33:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:42.523', 194.39),
(1005, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:42', -1, '2011-10-19 21:33:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:42.615', 194.39),
(1006, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:42', -1, '2011-10-19 21:33:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:42.756', 194.39),
(1007, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:42', -1, '2011-10-19 21:33:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:42.898', 194.39),
(1008, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:42', -1, '2011-10-19 21:33:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:42.995', 194.39),
(1009, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:43', -1, '2011-10-19 21:33:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:43.088', 194.39),
(1010, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:43', -1, '2011-10-19 21:33:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:43.178', 194.39),
(1011, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:43', -1, '2011-10-19 21:33:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:43.275', 194.39),
(1012, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:43', -1, '2011-10-19 21:33:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:43.406', 194.39),
(1013, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:43', -1, '2011-10-19 21:33:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:43.542', 194.39),
(1014, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:43', -1, '2011-10-19 21:33:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:43.625', 194.39),
(1015, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:43', -1, '2011-10-19 21:33:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:43.712', 194.39),
(1016, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:43', -1, '2011-10-19 21:33:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:43.807', 194.39),
(1017, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:43', -1, '2011-10-19 21:33:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:43.892', 194.39),
(1018, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:43', -1, '2011-10-19 21:33:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:43.978', 194.39),
(1019, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:44', -1, '2011-10-19 21:33:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:44.054', 194.39),
(1020, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:44', -1, '2011-10-19 21:33:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:44.255', 194.39),
(1021, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:44', -1, '2011-10-19 21:33:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:44.412', 194.39),
(1022, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:44', -1, '2011-10-19 21:33:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:44.53', 194.39),
(1023, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:44', -1, '2011-10-19 21:33:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:44.611', 194.39),
(1024, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:44', -1, '2011-10-19 21:33:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:44.691', 194.39),
(1025, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:44', -1, '2011-10-19 21:33:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:44.785', 194.39),
(1026, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:44', -1, '2011-10-19 21:33:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:44.876', 194.39),
(1027, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:45', -1, '2011-10-19 21:33:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:45.056', 194.39),
(1028, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:45', -1, '2011-10-19 21:33:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:45.148', 194.39),
(1029, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:45', -1, '2011-10-19 21:33:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:45.232', 194.39),
(1030, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:45', -1, '2011-10-19 21:33:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:45.32', 194.39),
(1031, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:45', -1, '2011-10-19 21:33:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:45.422', 194.39),
(1032, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:45', -1, '2011-10-19 21:33:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:45.498', 194.39),
(1033, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:45', -1, '2011-10-19 21:33:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:45.699', 194.39),
(1034, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:45', -1, '2011-10-19 21:33:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:45.82', 194.39),
(1035, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:45', -1, '2011-10-19 21:33:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:45.968', 194.39),
(1036, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:46', -1, '2011-10-19 21:33:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:46.055', 194.39),
(1037, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:46', -1, '2011-10-19 21:33:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:46.147', 194.39),
(1038, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:46', -1, '2011-10-19 21:33:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:46.241', 194.39),
(1039, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:46', -1, '2011-10-19 21:33:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:46.369', 194.39),
(1040, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:46', -1, '2011-10-19 21:33:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:46.454', 194.39),
(1041, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:46', -1, '2011-10-19 21:33:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:46.547', 194.39),
(1042, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:46', -1, '2011-10-19 21:33:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:46.632', 194.39),
(1043, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:46', -1, '2011-10-19 21:33:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:46.711', 194.39),
(1044, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:46', -1, '2011-10-19 21:33:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:46.8', 194.39),
(1045, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:46', -1, '2011-10-19 21:33:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:46.975', 194.39),
(1046, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:47', -1, '2011-10-19 21:33:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:47.054', 194.39),
(1047, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:47', -1, '2011-10-19 21:33:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:47.145', 194.39),
(1048, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:47', -1, '2011-10-19 21:33:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:47.235', 194.39),
(1049, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:47', -1, '2011-10-19 21:33:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:47.323', 194.39),
(1050, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:47', -1, '2011-10-19 21:33:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:47.42', 194.39),
(1051, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:47', -1, '2011-10-19 21:33:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:47.519', 194.39),
(1052, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:47', -1, '2011-10-19 21:33:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:47.746', 194.39),
(1053, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:47', -1, '2011-10-19 21:33:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:47.865', 194.39),
(1054, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:47', -1, '2011-10-19 21:33:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:47.947', 194.39),
(1055, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:48', -1, '2011-10-19 21:33:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:48.046', 194.39),
(1056, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:48', -1, '2011-10-19 21:33:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:48.121', 194.39),
(1057, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:48', -1, '2011-10-19 21:33:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:48.214', 194.39),
(1058, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:48', -1, '2011-10-19 21:33:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:48.323', 194.39),
(1059, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:48', -1, '2011-10-19 21:33:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:48.44', 194.39),
(1060, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:48', -1, '2011-10-19 21:33:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:48.528', 194.39),
(1061, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:48', -1, '2011-10-19 21:33:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:48.668', 194.39),
(1062, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:48', -1, '2011-10-19 21:33:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:48.799', 194.39),
(1063, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:48', -1, '2011-10-19 21:33:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:48.883', 194.39),
(1064, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:48', -1, '2011-10-19 21:33:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:48.982', 194.39),
(1065, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:49', -1, '2011-10-19 21:33:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:49.143', 194.39),
(1066, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:49', -1, '2011-10-19 21:33:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:49.233', 194.39),
(1067, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:49', -1, '2011-10-19 21:33:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:49.352', 194.39),
(1068, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:49', -1, '2011-10-19 21:33:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:49.457', 194.39),
(1069, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:49', -1, '2011-10-19 21:33:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:49.545', 194.39);
INSERT INTO `vehicle_movement_log_all` (`vml_id`, `vml_type_id`, `device_history_id`, `toll_location_id`, `geometry`, `timestamp`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_on`, `last_modified_by`, `created_on`, `client_id`, `latitude`, `longitude`, `status`, `toll_session_id`, `distance`) VALUES
(1070, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:49', -1, '2011-10-19 21:33:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:49.642', 194.39),
(1071, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:49', -1, '2011-10-19 21:33:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:49.757', 194.39),
(1072, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:49', -1, '2011-10-19 21:33:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:49.911', 194.39),
(1073, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:49', -1, '2011-10-19 21:33:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:50.003', 194.39),
(1074, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:50', -1, '2011-10-19 21:33:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:50.097', 194.39),
(1075, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:50', -1, '2011-10-19 21:33:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:50.178', 194.39),
(1076, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:50', -1, '2011-10-19 21:33:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:50.268', 194.39),
(1077, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:50', -1, '2011-10-19 21:33:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:50.355', 194.39),
(1078, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:50', -1, '2011-10-19 21:33:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:50.485', 194.39),
(1079, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:50', -1, '2011-10-19 21:33:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:50.576', 194.39),
(1080, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:50', -1, '2011-10-19 21:33:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:50.697', 194.39),
(1081, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:50', -1, '2011-10-19 21:33:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:50.797', 194.39),
(1082, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:50', -1, '2011-10-19 21:33:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:50.907', 194.39),
(1083, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:50', -1, '2011-10-19 21:33:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:50.989', 194.39),
(1084, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:51', -1, '2011-10-19 21:33:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:51.126', 194.39),
(1085, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:51', -1, '2011-10-19 21:33:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:51.213', 194.39),
(1086, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:51', -1, '2011-10-19 21:33:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:51.317', 194.39),
(1087, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:51', -1, '2011-10-19 21:33:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:51.413', 194.39),
(1088, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:51', -1, '2011-10-19 21:33:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:51.504', 194.39),
(1089, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:51', -1, '2011-10-19 21:33:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:51.601', 194.39),
(1090, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:51', -1, '2011-10-19 21:33:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:51.71', 194.39),
(1091, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:51', -1, '2011-10-19 21:33:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:51.806', 194.39),
(1092, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:51', -1, '2011-10-19 21:33:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:51.93', 194.39),
(1093, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:51', -1, '2011-10-19 21:33:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:52.018', 194.39),
(1094, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:52', -1, '2011-10-19 21:33:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:52.105', 194.39),
(1095, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:52', -1, '2011-10-19 21:33:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:52.223', 194.39),
(1096, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:52', -1, '2011-10-19 21:33:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:52.331', 194.39),
(1097, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:52', -1, '2011-10-19 21:33:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:52.486', 194.39),
(1098, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:52', -1, '2011-10-19 21:33:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:52.608', 194.39),
(1099, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:52', -1, '2011-10-19 21:33:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:52.692', 194.39),
(1100, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:52', -1, '2011-10-19 21:33:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:52.772', 194.39),
(1101, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:52', -1, '2011-10-19 21:33:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:52.884', 194.39),
(1102, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:52', -1, '2011-10-19 21:33:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:52.989', 194.39),
(1103, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:53', -1, '2011-10-19 21:33:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:53.113', 194.39),
(1104, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:53', -1, '2011-10-19 21:33:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:53.234', 194.39),
(1105, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:53', -1, '2011-10-19 21:33:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:53.426', 194.39),
(1106, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:53', -1, '2011-10-19 21:33:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:53.556', 194.39),
(1107, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:53', -1, '2011-10-19 21:33:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:53.649', 194.39),
(1108, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:53', -1, '2011-10-19 21:33:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:53.763', 194.39),
(1109, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:53', -1, '2011-10-19 21:33:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:53.859', 194.39),
(1110, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:53', -1, '2011-10-19 21:33:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:53.963', 194.39),
(1111, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:54', -1, '2011-10-19 21:33:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:54.136', 194.39),
(1112, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:54', -1, '2011-10-19 21:33:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:54.225', 194.39),
(1113, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:54', -1, '2011-10-19 21:33:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:54.305', 194.39),
(1114, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:54', -1, '2011-10-19 21:33:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:54.427', 194.39),
(1115, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:54', -1, '2011-10-19 21:33:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:54.518', 194.39),
(1116, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:54', -1, '2011-10-19 21:33:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:54.604', 194.39),
(1117, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:54', -1, '2011-10-19 21:33:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:54.747', 194.39),
(1118, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:54', -1, '2011-10-19 21:33:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:54.836', 194.39),
(1119, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:54', -1, '2011-10-19 21:33:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:54.928', 194.39),
(1120, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:54', -1, '2011-10-19 21:33:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:55.012', 194.39),
(1121, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:55', -1, '2011-10-19 21:33:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:55.098', 194.39),
(1122, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:55', -1, '2011-10-19 21:33:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:55.272', 194.39),
(1123, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:55', -1, '2011-10-19 21:33:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:55.373', 194.39),
(1124, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:55', -1, '2011-10-19 21:33:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:55.548', 194.39),
(1125, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:55', -1, '2011-10-19 21:33:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:55.716', 194.39),
(1126, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:55', -1, '2011-10-19 21:33:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:55.815', 194.39),
(1127, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:55', -1, '2011-10-19 21:33:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:55.907', 194.39),
(1128, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:55', -1, '2011-10-19 21:33:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:55.991', 194.39),
(1129, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:56', -1, '2011-10-19 21:33:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:56.157', 194.39),
(1130, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:56', -1, '2011-10-19 21:33:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:56.234', 194.39),
(1131, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:56', -1, '2011-10-19 21:33:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:56.333', 194.39),
(1132, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:56', -1, '2011-10-19 21:33:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:56.423', 194.39),
(1133, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:56', -1, '2011-10-19 21:33:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:56.513', 194.39),
(1134, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:56', -1, '2011-10-19 21:33:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:56.61', 194.39),
(1135, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:56', -1, '2011-10-19 21:33:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:56.694', 194.39),
(1136, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:56', -1, '2011-10-19 21:33:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:56.778', 194.39),
(1137, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:56', -1, '2011-10-19 21:33:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:56.863', 194.39),
(1138, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:56', -1, '2011-10-19 21:33:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:56.942', 194.39),
(1139, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:57', -1, '2011-10-19 21:33:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:57.028', 194.39),
(1140, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:57', -1, '2011-10-19 21:33:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:57.106', 194.39),
(1141, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:57', -1, '2011-10-19 21:33:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:57.197', 194.39),
(1142, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:57', -1, '2011-10-19 21:33:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:57.305', 194.39),
(1143, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:57', -1, '2011-10-19 21:33:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:57.391', 194.39),
(1144, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:57', -1, '2011-10-19 21:33:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:57.477', 194.39),
(1145, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:57', -1, '2011-10-19 21:33:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:57.564', 194.39),
(1146, 1, 5, NULL, NULL, '2011-10-19 21:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:33:57', -1, '2011-10-19 21:33:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:33:57.658', 194.39),
(1147, 1, 5, NULL, NULL, '2011-10-19 21:35:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:35:51', -1, '2011-10-19 21:35:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:35:51.722', 194.39),
(1148, 1, 5, NULL, NULL, '2011-10-19 21:35:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:35:51', -1, '2011-10-19 21:35:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:35:51.883', 194.39),
(1149, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:17', -1, '2011-10-19 21:36:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:17.612', 194.39),
(1150, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:17', -1, '2011-10-19 21:36:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:17.759', 194.39),
(1151, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:17', -1, '2011-10-19 21:36:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:17.894', 194.39),
(1152, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:17', -1, '2011-10-19 21:36:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:18.001', 194.39),
(1153, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:18', -1, '2011-10-19 21:36:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:18.154', 194.39),
(1154, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:18', -1, '2011-10-19 21:36:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:18.254', 194.39),
(1155, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:18', -1, '2011-10-19 21:36:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:18.36', 194.39),
(1156, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:18', -1, '2011-10-19 21:36:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:18.482', 194.39),
(1157, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:18', -1, '2011-10-19 21:36:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:18.595', 194.39),
(1158, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:18', -1, '2011-10-19 21:36:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:18.707', 194.39),
(1159, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:18', -1, '2011-10-19 21:36:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:18.84', 194.39),
(1160, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:18', -1, '2011-10-19 21:36:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:18.943', 194.39),
(1161, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:19', -1, '2011-10-19 21:36:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:19.044', 194.39),
(1162, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:19', -1, '2011-10-19 21:36:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:19.174', 194.39),
(1163, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:19', -1, '2011-10-19 21:36:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:19.281', 194.39),
(1164, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:19', -1, '2011-10-19 21:36:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:19.421', 194.39),
(1165, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:19', -1, '2011-10-19 21:36:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:19.572', 194.39),
(1166, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:19', -1, '2011-10-19 21:36:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:19.711', 194.39),
(1167, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:19', -1, '2011-10-19 21:36:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:19.847', 194.39),
(1168, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:20', -1, '2011-10-19 21:36:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:20.025', 194.39),
(1169, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:20', -1, '2011-10-19 21:36:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:20.126', 194.39),
(1170, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:20', -1, '2011-10-19 21:36:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:20.296', 194.39),
(1171, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:20', -1, '2011-10-19 21:36:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:20.422', 194.39),
(1172, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:20', -1, '2011-10-19 21:36:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:20.599', 194.39),
(1173, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:20', -1, '2011-10-19 21:36:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:20.716', 194.39),
(1174, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:20', -1, '2011-10-19 21:36:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:20.825', 194.39),
(1175, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:20', -1, '2011-10-19 21:36:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:20.939', 194.39),
(1176, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:21', -1, '2011-10-19 21:36:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:21.077', 194.39),
(1177, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:21', -1, '2011-10-19 21:36:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:21.254', 194.39),
(1178, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:21', -1, '2011-10-19 21:36:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:21.351', 194.39),
(1179, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:21', -1, '2011-10-19 21:36:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:21.449', 194.39),
(1180, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:21', -1, '2011-10-19 21:36:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:21.586', 194.39),
(1181, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:21', -1, '2011-10-19 21:36:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:21.721', 194.39),
(1182, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:21', -1, '2011-10-19 21:36:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:21.831', 194.39),
(1183, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:21', -1, '2011-10-19 21:36:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:21.931', 194.39),
(1184, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:22', -1, '2011-10-19 21:36:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:22.066', 194.39),
(1185, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:22', -1, '2011-10-19 21:36:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:22.184', 194.39),
(1186, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:22', -1, '2011-10-19 21:36:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:22.333', 194.39),
(1187, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:22', -1, '2011-10-19 21:36:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:22.433', 194.39),
(1188, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:22', -1, '2011-10-19 21:36:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:22.608', 194.39),
(1189, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:22', -1, '2011-10-19 21:36:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:22.707', 194.39),
(1190, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:22', -1, '2011-10-19 21:36:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:22.796', 194.39),
(1191, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:22', -1, '2011-10-19 21:36:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:22.908', 194.39),
(1192, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:22', -1, '2011-10-19 21:36:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:23.003', 194.39),
(1193, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:23', -1, '2011-10-19 21:36:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:23.13', 194.39),
(1194, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:23', -1, '2011-10-19 21:36:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:23.236', 194.39),
(1195, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:23', -1, '2011-10-19 21:36:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:23.348', 194.39),
(1196, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:23', -1, '2011-10-19 21:36:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:23.489', 194.39),
(1197, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:23', -1, '2011-10-19 21:36:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:23.638', 194.39),
(1198, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:23', -1, '2011-10-19 21:36:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:23.738', 194.39),
(1199, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:23', -1, '2011-10-19 21:36:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:23.827', 194.39),
(1200, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:23', -1, '2011-10-19 21:36:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:23.981', 194.39),
(1201, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:24', -1, '2011-10-19 21:36:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:24.08', 194.39),
(1202, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:24', -1, '2011-10-19 21:36:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:24.226', 194.39),
(1203, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:24', -1, '2011-10-19 21:36:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:24.362', 194.39),
(1204, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:24', -1, '2011-10-19 21:36:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:24.495', 194.39),
(1205, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:24', -1, '2011-10-19 21:36:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:24.596', 194.39),
(1206, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:24', -1, '2011-10-19 21:36:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:24.701', 194.39),
(1207, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:24', -1, '2011-10-19 21:36:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:24.823', 194.39),
(1208, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:24', -1, '2011-10-19 21:36:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:24.956', 194.39),
(1209, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:25', -1, '2011-10-19 21:36:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:25.051', 194.39),
(1210, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:25', -1, '2011-10-19 21:36:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:25.178', 194.39),
(1211, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:25', -1, '2011-10-19 21:36:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:25.294', 194.39),
(1212, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:25', -1, '2011-10-19 21:36:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:25.384', 194.39),
(1213, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:25', -1, '2011-10-19 21:36:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:25.549', 194.39),
(1214, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:25', -1, '2011-10-19 21:36:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:25.655', 194.39),
(1215, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:25', -1, '2011-10-19 21:36:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:25.747', 194.39),
(1216, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:25', -1, '2011-10-19 21:36:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:25.856', 194.39),
(1217, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:25', -1, '2011-10-19 21:36:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:25.941', 194.39),
(1218, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:26', -1, '2011-10-19 21:36:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:26.048', 194.39),
(1219, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:26', -1, '2011-10-19 21:36:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:26.169', 194.39),
(1220, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:26', -1, '2011-10-19 21:36:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:26.275', 194.39),
(1221, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:26', -1, '2011-10-19 21:36:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:26.368', 194.39),
(1222, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:26', -1, '2011-10-19 21:36:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:26.453', 194.39),
(1223, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:26', -1, '2011-10-19 21:36:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:26.554', 194.39),
(1224, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:26', -1, '2011-10-19 21:36:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:26.742', 194.39),
(1225, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:26', -1, '2011-10-19 21:36:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:26.874', 194.39),
(1226, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:26', -1, '2011-10-19 21:36:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:26.971', 194.39),
(1227, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:27', -1, '2011-10-19 21:36:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:27.064', 194.39),
(1228, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:27', -1, '2011-10-19 21:36:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:27.152', 194.39),
(1229, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:27', -1, '2011-10-19 21:36:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:27.241', 194.39),
(1230, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:27', -1, '2011-10-19 21:36:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:27.435', 194.39),
(1231, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:27', -1, '2011-10-19 21:36:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:27.532', 194.39),
(1232, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:27', -1, '2011-10-19 21:36:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:27.631', 194.39),
(1233, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:27', -1, '2011-10-19 21:36:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:27.727', 194.39),
(1234, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:27', -1, '2011-10-19 21:36:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:27.82', 194.39),
(1235, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:27', -1, '2011-10-19 21:36:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:27.93', 194.39),
(1236, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:28', -1, '2011-10-19 21:36:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:28.044', 194.39),
(1237, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:28', -1, '2011-10-19 21:36:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:28.126', 194.39),
(1238, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:28', -1, '2011-10-19 21:36:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:28.256', 194.39),
(1239, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:28', -1, '2011-10-19 21:36:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:28.366', 194.39),
(1240, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:28', -1, '2011-10-19 21:36:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:28.476', 194.39),
(1241, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:28', -1, '2011-10-19 21:36:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:28.565', 194.39),
(1242, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:28', -1, '2011-10-19 21:36:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:28.662', 194.39),
(1243, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:28', -1, '2011-10-19 21:36:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:28.752', 194.39),
(1244, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:28', -1, '2011-10-19 21:36:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:28.887', 194.39),
(1245, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:28', -1, '2011-10-19 21:36:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:29.023', 194.39),
(1246, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:29', -1, '2011-10-19 21:36:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:29.111', 194.39),
(1247, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:29', -1, '2011-10-19 21:36:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:29.198', 194.39),
(1248, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:29', -1, '2011-10-19 21:36:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:29.298', 194.39),
(1249, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:29', -1, '2011-10-19 21:36:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:29.394', 194.39),
(1250, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:29', -1, '2011-10-19 21:36:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:29.487', 194.39),
(1251, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:29', -1, '2011-10-19 21:36:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:29.672', 194.39),
(1252, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:29', -1, '2011-10-19 21:36:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:29.818', 194.39),
(1253, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:29', -1, '2011-10-19 21:36:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:29.924', 194.39),
(1254, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:29', -1, '2011-10-19 21:36:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:30.014', 194.39),
(1255, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:30', -1, '2011-10-19 21:36:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:30.103', 194.39),
(1256, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:30', -1, '2011-10-19 21:36:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:30.188', 194.39),
(1257, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:30', -1, '2011-10-19 21:36:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:30.313', 194.39),
(1258, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:30', -1, '2011-10-19 21:36:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:30.424', 194.39),
(1259, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:30', -1, '2011-10-19 21:36:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:30.517', 194.39),
(1260, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:30', -1, '2011-10-19 21:36:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:30.612', 194.39),
(1261, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:30', -1, '2011-10-19 21:36:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:30.707', 194.39),
(1262, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:30', -1, '2011-10-19 21:36:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:31.011', 194.39),
(1263, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:31', -1, '2011-10-19 21:36:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:31.134', 194.39),
(1264, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:31', -1, '2011-10-19 21:36:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:31.229', 194.39),
(1265, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:31', -1, '2011-10-19 21:36:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:31.324', 194.39),
(1266, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:31', -1, '2011-10-19 21:36:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:31.422', 194.39),
(1267, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:31', -1, '2011-10-19 21:36:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:31.514', 194.39),
(1268, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:31', -1, '2011-10-19 21:36:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:31.649', 194.39),
(1269, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:31', -1, '2011-10-19 21:36:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:31.84', 194.39),
(1270, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:31', -1, '2011-10-19 21:36:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:31.941', 194.39),
(1271, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:32', -1, '2011-10-19 21:36:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:32.045', 194.39),
(1272, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:32', -1, '2011-10-19 21:36:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:32.134', 194.39),
(1273, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:32', -1, '2011-10-19 21:36:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:32.256', 194.39),
(1274, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:32', -1, '2011-10-19 21:36:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:32.396', 194.39),
(1275, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:32', -1, '2011-10-19 21:36:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:32.549', 194.39),
(1276, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:32', -1, '2011-10-19 21:36:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:32.721', 194.39),
(1277, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:32', -1, '2011-10-19 21:36:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:32.806', 194.39),
(1278, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:32', -1, '2011-10-19 21:36:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:32.889', 194.39),
(1279, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:32', -1, '2011-10-19 21:36:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:32.989', 194.39),
(1280, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:33', -1, '2011-10-19 21:36:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:33.113', 194.39),
(1281, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:33', -1, '2011-10-19 21:36:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:33.265', 194.39),
(1282, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:33', -1, '2011-10-19 21:36:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:33.37', 194.39);
INSERT INTO `vehicle_movement_log_all` (`vml_id`, `vml_type_id`, `device_history_id`, `toll_location_id`, `geometry`, `timestamp`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_on`, `last_modified_by`, `created_on`, `client_id`, `latitude`, `longitude`, `status`, `toll_session_id`, `distance`) VALUES
(1283, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:33', -1, '2011-10-19 21:36:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:33.468', 194.39),
(1284, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:33', -1, '2011-10-19 21:36:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:33.558', 194.39),
(1285, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:33', -1, '2011-10-19 21:36:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:33.657', 194.39),
(1286, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:33', -1, '2011-10-19 21:36:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:33.777', 194.39),
(1287, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:33', -1, '2011-10-19 21:36:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:33.887', 194.39),
(1288, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:33', -1, '2011-10-19 21:36:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:33.974', 194.39),
(1289, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:34', -1, '2011-10-19 21:36:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:34.066', 194.39),
(1290, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:34', -1, '2011-10-19 21:36:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:34.153', 194.39),
(1291, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:34', -1, '2011-10-19 21:36:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:34.249', 194.39),
(1292, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:34', -1, '2011-10-19 21:36:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:34.331', 194.39),
(1293, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:34', -1, '2011-10-19 21:36:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:34.474', 194.39),
(1294, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:34', -1, '2011-10-19 21:36:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:34.565', 194.39),
(1295, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:34', -1, '2011-10-19 21:36:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:34.662', 194.39),
(1296, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:34', -1, '2011-10-19 21:36:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:34.755', 194.39),
(1297, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:34', -1, '2011-10-19 21:36:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:34.847', 194.39),
(1298, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:34', -1, '2011-10-19 21:36:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:34.933', 194.39),
(1299, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:35', -1, '2011-10-19 21:36:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:35.03', 194.39),
(1300, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:35', -1, '2011-10-19 21:36:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:35.173', 194.39),
(1301, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:35', -1, '2011-10-19 21:36:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:35.29', 194.39),
(1302, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:35', -1, '2011-10-19 21:36:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:35.413', 194.39),
(1303, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:35', -1, '2011-10-19 21:36:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:35.517', 194.39),
(1304, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:35', -1, '2011-10-19 21:36:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:35.615', 194.39),
(1305, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:35', -1, '2011-10-19 21:36:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:35.744', 194.39),
(1306, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:35', -1, '2011-10-19 21:36:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:35.848', 194.39),
(1307, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:35', -1, '2011-10-19 21:36:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:35.955', 194.39),
(1308, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:36', -1, '2011-10-19 21:36:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:36.044', 194.39),
(1309, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:36', -1, '2011-10-19 21:36:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:36.138', 194.39),
(1310, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:36', -1, '2011-10-19 21:36:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:36.228', 194.39),
(1311, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:36', -1, '2011-10-19 21:36:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:36.316', 194.39),
(1312, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:36', -1, '2011-10-19 21:36:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:36.461', 194.39),
(1313, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:36', -1, '2011-10-19 21:36:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:36.594', 194.39),
(1314, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:36', -1, '2011-10-19 21:36:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:36.705', 194.39),
(1315, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:36', -1, '2011-10-19 21:36:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:36.802', 194.39),
(1316, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:36', -1, '2011-10-19 21:36:36', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:36.94', 194.39),
(1317, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:37', -1, '2011-10-19 21:36:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:37.029', 194.39),
(1318, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:37', -1, '2011-10-19 21:36:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:37.116', 194.39),
(1319, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:37', -1, '2011-10-19 21:36:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:37.28', 194.39),
(1320, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:37', -1, '2011-10-19 21:36:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:37.374', 194.39),
(1321, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:37', -1, '2011-10-19 21:36:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:37.47', 194.39),
(1322, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:37', -1, '2011-10-19 21:36:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:37.567', 194.39),
(1323, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:37', -1, '2011-10-19 21:36:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:37.659', 194.39),
(1324, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:37', -1, '2011-10-19 21:36:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:37.753', 194.39),
(1325, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:37', -1, '2011-10-19 21:36:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:37.914', 194.39),
(1326, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:38', -1, '2011-10-19 21:36:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:38.021', 194.39),
(1327, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:38', -1, '2011-10-19 21:36:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:38.106', 194.39),
(1328, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:38', -1, '2011-10-19 21:36:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:38.19', 194.39),
(1329, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:38', -1, '2011-10-19 21:36:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:38.272', 194.39),
(1330, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:38', -1, '2011-10-19 21:36:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:38.361', 194.39),
(1331, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:38', -1, '2011-10-19 21:36:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:38.528', 194.39),
(1332, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:38', -1, '2011-10-19 21:36:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:38.676', 194.39),
(1333, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:38', -1, '2011-10-19 21:36:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:38.766', 194.39),
(1334, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:38', -1, '2011-10-19 21:36:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:38.859', 194.39),
(1335, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:38', -1, '2011-10-19 21:36:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:38.954', 194.39),
(1336, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:39', -1, '2011-10-19 21:36:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:39.043', 194.39),
(1337, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:39', -1, '2011-10-19 21:36:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:39.185', 194.39),
(1338, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:39', -1, '2011-10-19 21:36:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:39.327', 194.39),
(1339, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:39', -1, '2011-10-19 21:36:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:39.449', 194.39),
(1340, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:39', -1, '2011-10-19 21:36:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:39.541', 194.39),
(1341, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:39', -1, '2011-10-19 21:36:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:39.63', 194.39),
(1342, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:39', -1, '2011-10-19 21:36:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:39.717', 194.39),
(1343, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:39', -1, '2011-10-19 21:36:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:39.874', 194.39),
(1344, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:39', -1, '2011-10-19 21:36:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:40.008', 194.39),
(1345, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:40', -1, '2011-10-19 21:36:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:40.098', 194.39),
(1346, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:40', -1, '2011-10-19 21:36:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:40.22', 194.39),
(1347, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:40', -1, '2011-10-19 21:36:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:40.316', 194.39),
(1348, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:40', -1, '2011-10-19 21:36:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:40.408', 194.39),
(1349, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:40', -1, '2011-10-19 21:36:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:40.487', 194.39),
(1350, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:40', -1, '2011-10-19 21:36:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:40.625', 194.39),
(1351, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:40', -1, '2011-10-19 21:36:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:40.714', 194.39),
(1352, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:40', -1, '2011-10-19 21:36:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:40.805', 194.39),
(1353, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:40', -1, '2011-10-19 21:36:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:40.901', 194.39),
(1354, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:40', -1, '2011-10-19 21:36:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:40.992', 194.39),
(1355, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:41', -1, '2011-10-19 21:36:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:41.074', 194.39),
(1356, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:41', -1, '2011-10-19 21:36:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:41.163', 194.39),
(1357, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:41', -1, '2011-10-19 21:36:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:41.252', 194.39),
(1358, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:41', -1, '2011-10-19 21:36:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:41.487', 194.39),
(1359, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:41', -1, '2011-10-19 21:36:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:41.612', 194.39),
(1360, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:41', -1, '2011-10-19 21:36:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:41.698', 194.39),
(1361, 1, 5, NULL, NULL, '2011-10-19 21:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:36:41', -1, '2011-10-19 21:36:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:36:41.793', 194.39),
(1362, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:37', -1, '2011-10-19 21:39:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:37.632', 194.39),
(1363, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:37', -1, '2011-10-19 21:39:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:37.819', 194.39),
(1364, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:37', -1, '2011-10-19 21:39:37', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:37.975', 194.39),
(1365, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:38', -1, '2011-10-19 21:39:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:38.137', 194.39),
(1366, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:38', -1, '2011-10-19 21:39:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:38.307', 194.39),
(1367, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:38', -1, '2011-10-19 21:39:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:38.514', 194.39),
(1368, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:38', -1, '2011-10-19 21:39:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:38.689', 194.39),
(1369, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:38', -1, '2011-10-19 21:39:38', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:38.901', 194.39),
(1370, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:39', -1, '2011-10-19 21:39:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:39.046', 194.39),
(1371, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:39', -1, '2011-10-19 21:39:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:39.162', 194.39),
(1372, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:39', -1, '2011-10-19 21:39:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:39.292', 194.39),
(1373, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:39', -1, '2011-10-19 21:39:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:39.46', 194.39),
(1374, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:39', -1, '2011-10-19 21:39:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:39.622', 194.39),
(1375, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:39', -1, '2011-10-19 21:39:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:39.735', 194.39),
(1376, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:39', -1, '2011-10-19 21:39:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:39.83', 194.39),
(1377, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:39', -1, '2011-10-19 21:39:39', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:40.018', 194.39),
(1378, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:40', -1, '2011-10-19 21:39:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:40.12', 194.39),
(1379, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:40', -1, '2011-10-19 21:39:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:40.221', 194.39),
(1380, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:40', -1, '2011-10-19 21:39:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:40.34', 194.39),
(1381, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:40', -1, '2011-10-19 21:39:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:40.452', 194.39),
(1382, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:40', -1, '2011-10-19 21:39:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:40.593', 194.39),
(1383, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:40', -1, '2011-10-19 21:39:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:40.748', 194.39),
(1384, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:40', -1, '2011-10-19 21:39:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:40.896', 194.39),
(1385, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:40', -1, '2011-10-19 21:39:40', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:41.031', 194.39),
(1386, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:41', -1, '2011-10-19 21:39:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:41.191', 194.39),
(1387, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:41', -1, '2011-10-19 21:39:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:41.436', 194.39),
(1388, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:41', -1, '2011-10-19 21:39:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:41.587', 194.39),
(1389, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:41', -1, '2011-10-19 21:39:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:41.732', 194.39),
(1390, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:41', -1, '2011-10-19 21:39:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:41.866', 194.39),
(1391, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:41', -1, '2011-10-19 21:39:41', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:42.008', 194.39),
(1392, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:42', -1, '2011-10-19 21:39:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:42.149', 194.39),
(1393, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:42', -1, '2011-10-19 21:39:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:42.241', 194.39),
(1394, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:42', -1, '2011-10-19 21:39:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:42.374', 194.39),
(1395, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:42', -1, '2011-10-19 21:39:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:42.488', 194.39),
(1396, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:42', -1, '2011-10-19 21:39:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:42.582', 194.39),
(1397, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:42', -1, '2011-10-19 21:39:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:42.702', 194.39),
(1398, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:42', -1, '2011-10-19 21:39:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:42.799', 194.39),
(1399, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:42', -1, '2011-10-19 21:39:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:42.903', 194.39),
(1400, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:42', -1, '2011-10-19 21:39:42', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:43.004', 194.39),
(1401, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:43', -1, '2011-10-19 21:39:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:43.109', 194.39),
(1402, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:43', -1, '2011-10-19 21:39:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:43.231', 194.39),
(1403, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:43', -1, '2011-10-19 21:39:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:43.331', 194.39),
(1404, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:43', -1, '2011-10-19 21:39:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:43.454', 194.39),
(1405, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:43', -1, '2011-10-19 21:39:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:43.581', 194.39),
(1406, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:43', -1, '2011-10-19 21:39:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:43.685', 194.39),
(1407, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:43', -1, '2011-10-19 21:39:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:43.814', 194.39),
(1408, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:43', -1, '2011-10-19 21:39:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:43.903', 194.39),
(1409, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:43', -1, '2011-10-19 21:39:43', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:44.008', 194.39),
(1410, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:44', -1, '2011-10-19 21:39:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:44.116', 194.39),
(1411, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:44', -1, '2011-10-19 21:39:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:44.213', 194.39),
(1412, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:44', -1, '2011-10-19 21:39:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:44.35', 194.39),
(1413, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:44', -1, '2011-10-19 21:39:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:44.455', 194.39),
(1414, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:44', -1, '2011-10-19 21:39:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:44.548', 194.39),
(1415, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:44', -1, '2011-10-19 21:39:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:44.689', 194.39),
(1416, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:44', -1, '2011-10-19 21:39:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:44.786', 194.39),
(1417, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:44', -1, '2011-10-19 21:39:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:44.898', 194.39),
(1418, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:44', -1, '2011-10-19 21:39:44', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:45.001', 194.39),
(1419, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:45', -1, '2011-10-19 21:39:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:45.101', 194.39),
(1420, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:45', -1, '2011-10-19 21:39:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:45.203', 194.39),
(1421, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:45', -1, '2011-10-19 21:39:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:45.292', 194.39),
(1422, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:45', -1, '2011-10-19 21:39:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:45.451', 194.39),
(1423, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:45', -1, '2011-10-19 21:39:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:45.619', 194.39),
(1424, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:45', -1, '2011-10-19 21:39:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:45.764', 194.39),
(1425, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:45', -1, '2011-10-19 21:39:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:45.856', 194.39),
(1426, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:45', -1, '2011-10-19 21:39:45', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:45.965', 194.39),
(1427, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:46', -1, '2011-10-19 21:39:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:46.065', 194.39),
(1428, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:46', -1, '2011-10-19 21:39:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:46.154', 194.39),
(1429, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:46', -1, '2011-10-19 21:39:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:46.24', 194.39),
(1430, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:46', -1, '2011-10-19 21:39:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:46.405', 194.39),
(1431, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:46', -1, '2011-10-19 21:39:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:46.649', 194.39),
(1432, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:46', -1, '2011-10-19 21:39:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:46.751', 194.39),
(1433, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:46', -1, '2011-10-19 21:39:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:46.864', 194.39),
(1434, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:46', -1, '2011-10-19 21:39:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:46.995', 194.39),
(1435, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:47', -1, '2011-10-19 21:39:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:47.134', 194.39),
(1436, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:47', -1, '2011-10-19 21:39:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:47.23', 194.39),
(1437, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:47', -1, '2011-10-19 21:39:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:47.315', 194.39),
(1438, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:47', -1, '2011-10-19 21:39:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:47.505', 194.39),
(1439, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:47', -1, '2011-10-19 21:39:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:47.647', 194.39),
(1440, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:47', -1, '2011-10-19 21:39:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:47.748', 194.39),
(1441, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:47', -1, '2011-10-19 21:39:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:47.843', 194.39),
(1442, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:47', -1, '2011-10-19 21:39:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:47.93', 194.39),
(1443, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:48', -1, '2011-10-19 21:39:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:48.034', 194.39),
(1444, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:48', -1, '2011-10-19 21:39:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:48.109', 194.39),
(1445, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:48', -1, '2011-10-19 21:39:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:48.192', 194.39),
(1446, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:48', -1, '2011-10-19 21:39:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:48.309', 194.39),
(1447, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:48', -1, '2011-10-19 21:39:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:48.444', 194.39),
(1448, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:48', -1, '2011-10-19 21:39:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:48.553', 194.39),
(1449, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:48', -1, '2011-10-19 21:39:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:48.636', 194.39),
(1450, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:48', -1, '2011-10-19 21:39:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:48.73', 194.39),
(1451, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:48', -1, '2011-10-19 21:39:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:49.002', 194.39),
(1452, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:49', -1, '2011-10-19 21:39:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:49.12', 194.39),
(1453, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:49', -1, '2011-10-19 21:39:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:49.2', 194.39),
(1454, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:49', -1, '2011-10-19 21:39:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:49.29', 194.39),
(1455, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:49', -1, '2011-10-19 21:39:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:49.367', 194.39),
(1456, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:49', -1, '2011-10-19 21:39:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:49.57', 194.39),
(1457, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:49', -1, '2011-10-19 21:39:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:49.72', 194.39),
(1458, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:49', -1, '2011-10-19 21:39:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:49.825', 194.39),
(1459, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:49', -1, '2011-10-19 21:39:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:49.933', 194.39),
(1460, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:50', -1, '2011-10-19 21:39:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:50.025', 194.39),
(1461, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:50', -1, '2011-10-19 21:39:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:50.112', 194.39),
(1462, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:50', -1, '2011-10-19 21:39:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:50.24', 194.39),
(1463, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:50', -1, '2011-10-19 21:39:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:50.331', 194.39),
(1464, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:50', -1, '2011-10-19 21:39:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:50.41', 194.39),
(1465, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:50', -1, '2011-10-19 21:39:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:50.501', 194.39),
(1466, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:50', -1, '2011-10-19 21:39:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:50.587', 194.39),
(1467, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:50', -1, '2011-10-19 21:39:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:50.679', 194.39),
(1468, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:50', -1, '2011-10-19 21:39:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:50.754', 194.39),
(1469, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:50', -1, '2011-10-19 21:39:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:50.876', 194.39),
(1470, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:50', -1, '2011-10-19 21:39:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:50.96', 194.39),
(1471, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:51', -1, '2011-10-19 21:39:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:51.054', 194.39),
(1472, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:51', -1, '2011-10-19 21:39:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:51.153', 194.39),
(1473, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:51', -1, '2011-10-19 21:39:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:51.24', 194.39),
(1474, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:51', -1, '2011-10-19 21:39:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:51.368', 194.39),
(1475, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:51', -1, '2011-10-19 21:39:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:51.467', 194.39),
(1476, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:51', -1, '2011-10-19 21:39:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:51.546', 194.39),
(1477, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:51', -1, '2011-10-19 21:39:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:51.653', 194.39),
(1478, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:51', -1, '2011-10-19 21:39:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:51.783', 194.39),
(1479, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:51', -1, '2011-10-19 21:39:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:51.871', 194.39),
(1480, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:51', -1, '2011-10-19 21:39:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:51.964', 194.39),
(1481, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:52', -1, '2011-10-19 21:39:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:52.041', 194.39),
(1482, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:52', -1, '2011-10-19 21:39:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:52.138', 194.39),
(1483, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:52', -1, '2011-10-19 21:39:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:52.288', 194.39),
(1484, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:52', -1, '2011-10-19 21:39:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:52.366', 194.39),
(1485, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:52', -1, '2011-10-19 21:39:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:52.47', 194.39),
(1486, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:52', -1, '2011-10-19 21:39:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:52.563', 194.39),
(1487, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:52', -1, '2011-10-19 21:39:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:52.662', 194.39),
(1488, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:52', -1, '2011-10-19 21:39:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:52.741', 194.39),
(1489, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:52', -1, '2011-10-19 21:39:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:52.853', 194.39),
(1490, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:52', -1, '2011-10-19 21:39:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:52.95', 194.39),
(1491, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:53', -1, '2011-10-19 21:39:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:53.057', 194.39),
(1492, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:53', -1, '2011-10-19 21:39:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:53.217', 194.39),
(1493, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:53', -1, '2011-10-19 21:39:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:53.318', 194.39),
(1494, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:53', -1, '2011-10-19 21:39:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:53.41', 194.39),
(1495, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:53', -1, '2011-10-19 21:39:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:53.523', 194.39);
INSERT INTO `vehicle_movement_log_all` (`vml_id`, `vml_type_id`, `device_history_id`, `toll_location_id`, `geometry`, `timestamp`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_on`, `last_modified_by`, `created_on`, `client_id`, `latitude`, `longitude`, `status`, `toll_session_id`, `distance`) VALUES
(1496, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:53', -1, '2011-10-19 21:39:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:53.619', 194.39),
(1497, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:53', -1, '2011-10-19 21:39:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:53.741', 194.39),
(1498, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:53', -1, '2011-10-19 21:39:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:53.823', 194.39),
(1499, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:53', -1, '2011-10-19 21:39:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:53.914', 194.39),
(1500, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:53', -1, '2011-10-19 21:39:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:53.998', 194.39),
(1501, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:54', -1, '2011-10-19 21:39:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:54.076', 194.39),
(1502, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:54', -1, '2011-10-19 21:39:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:54.157', 194.39),
(1503, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:54', -1, '2011-10-19 21:39:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:54.278', 194.39),
(1504, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:54', -1, '2011-10-19 21:39:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:54.361', 194.39),
(1505, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:54', -1, '2011-10-19 21:39:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:54.457', 194.39),
(1506, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:54', -1, '2011-10-19 21:39:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:54.531', 194.39),
(1507, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:54', -1, '2011-10-19 21:39:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:54.662', 194.39),
(1508, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:54', -1, '2011-10-19 21:39:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:54.748', 194.39),
(1509, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:54', -1, '2011-10-19 21:39:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:54.879', 194.39),
(1510, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:54', -1, '2011-10-19 21:39:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:54.959', 194.39),
(1511, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:55', -1, '2011-10-19 21:39:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:55.047', 194.39),
(1512, 1, 5, NULL, NULL, '2011-10-19 21:39:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:39:55', -1, '2011-10-19 21:39:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:39:55.125', 194.39),
(1513, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:25', -1, '2011-10-19 21:42:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:25.564', 194.39),
(1514, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:25', -1, '2011-10-19 21:42:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:25.783', 194.39),
(1515, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:25', -1, '2011-10-19 21:42:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:25.903', 194.39),
(1516, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:26', -1, '2011-10-19 21:42:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:26.116', 194.39),
(1517, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:26', -1, '2011-10-19 21:42:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:26.232', 194.39),
(1518, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:26', -1, '2011-10-19 21:42:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:26.328', 194.39),
(1519, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:26', -1, '2011-10-19 21:42:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:26.43', 194.39),
(1520, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:26', -1, '2011-10-19 21:42:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:26.565', 194.39),
(1521, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:26', -1, '2011-10-19 21:42:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:26.677', 194.39),
(1522, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:26', -1, '2011-10-19 21:42:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:26.783', 194.39),
(1523, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:26', -1, '2011-10-19 21:42:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:26.881', 194.39),
(1524, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:26', -1, '2011-10-19 21:42:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:26.99', 194.39),
(1525, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:27', -1, '2011-10-19 21:42:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:27.102', 194.39),
(1526, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:27', -1, '2011-10-19 21:42:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:27.235', 194.39),
(1527, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:27', -1, '2011-10-19 21:42:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:27.34', 194.39),
(1528, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:27', -1, '2011-10-19 21:42:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:27.448', 194.39),
(1529, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:27', -1, '2011-10-19 21:42:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:27.543', 194.39),
(1530, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:27', -1, '2011-10-19 21:42:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:27.638', 194.39),
(1531, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:27', -1, '2011-10-19 21:42:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:27.774', 194.39),
(1532, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:27', -1, '2011-10-19 21:42:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:27.892', 194.39),
(1533, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:27', -1, '2011-10-19 21:42:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:27.981', 194.39),
(1534, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:28', -1, '2011-10-19 21:42:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:28.105', 194.39),
(1535, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:28', -1, '2011-10-19 21:42:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:28.337', 194.39),
(1536, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:28', -1, '2011-10-19 21:42:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:28.5', 194.39),
(1537, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:28', -1, '2011-10-19 21:42:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:28.581', 194.39),
(1538, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:28', -1, '2011-10-19 21:42:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:28.674', 194.39),
(1539, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:28', -1, '2011-10-19 21:42:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:28.749', 194.39),
(1540, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:28', -1, '2011-10-19 21:42:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:28.837', 194.39),
(1541, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:28', -1, '2011-10-19 21:42:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:28.952', 194.39),
(1542, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:29', -1, '2011-10-19 21:42:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:29.048', 194.39),
(1543, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:29', -1, '2011-10-19 21:42:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:29.152', 194.39),
(1544, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:29', -1, '2011-10-19 21:42:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:29.239', 194.39),
(1545, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:29', -1, '2011-10-19 21:42:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:29.332', 194.39),
(1546, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:29', -1, '2011-10-19 21:42:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:29.426', 194.39),
(1547, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:29', -1, '2011-10-19 21:42:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:29.549', 194.39),
(1548, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:29', -1, '2011-10-19 21:42:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:29.635', 194.39),
(1549, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:29', -1, '2011-10-19 21:42:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:29.786', 194.39),
(1550, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:29', -1, '2011-10-19 21:42:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:29.893', 194.39),
(1551, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:29', -1, '2011-10-19 21:42:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:29.977', 194.39),
(1552, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:30', -1, '2011-10-19 21:42:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:30.091', 194.39),
(1553, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:30', -1, '2011-10-19 21:42:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:30.249', 194.39),
(1554, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:30', -1, '2011-10-19 21:42:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:30.42', 194.39),
(1555, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:30', -1, '2011-10-19 21:42:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:30.509', 194.39),
(1556, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:30', -1, '2011-10-19 21:42:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:30.608', 194.39),
(1557, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:30', -1, '2011-10-19 21:42:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:30.69', 194.39),
(1558, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:30', -1, '2011-10-19 21:42:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:30.779', 194.39),
(1559, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:30', -1, '2011-10-19 21:42:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:30.888', 194.39),
(1560, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:30', -1, '2011-10-19 21:42:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:30.978', 194.39),
(1561, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:31', -1, '2011-10-19 21:42:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:31.068', 194.39),
(1562, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:31', -1, '2011-10-19 21:42:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:31.161', 194.39),
(1563, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:31', -1, '2011-10-19 21:42:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:31.261', 194.39),
(1564, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:31', -1, '2011-10-19 21:42:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:31.354', 194.39),
(1565, 1, 5, NULL, NULL, '2011-10-19 21:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:31', -1, '2011-10-19 21:42:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:31.502', 194.39),
(1566, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:46', -1, '2011-10-19 21:42:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:46.27', 194.39),
(1567, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:46', -1, '2011-10-19 21:42:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:46.424', 194.39),
(1568, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:46', -1, '2011-10-19 21:42:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:46.533', 194.39),
(1569, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:46', -1, '2011-10-19 21:42:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:46.629', 194.39),
(1570, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:46', -1, '2011-10-19 21:42:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:46.71', 194.39),
(1571, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:46', -1, '2011-10-19 21:42:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:46.846', 194.39),
(1572, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:46', -1, '2011-10-19 21:42:46', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:46.944', 194.39),
(1573, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:47', -1, '2011-10-19 21:42:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:47.034', 194.39),
(1574, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:47', -1, '2011-10-19 21:42:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:47.143', 194.39),
(1575, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:47', -1, '2011-10-19 21:42:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:47.262', 194.39),
(1576, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:47', -1, '2011-10-19 21:42:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:47.455', 194.39),
(1577, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:47', -1, '2011-10-19 21:42:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:47.554', 194.39),
(1578, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:47', -1, '2011-10-19 21:42:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:47.649', 194.39),
(1579, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:47', -1, '2011-10-19 21:42:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:47.758', 194.39),
(1580, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:47', -1, '2011-10-19 21:42:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:47.84', 194.39),
(1581, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:47', -1, '2011-10-19 21:42:47', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:47.964', 194.39),
(1582, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:48', -1, '2011-10-19 21:42:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:48.058', 194.39),
(1583, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:48', -1, '2011-10-19 21:42:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:48.246', 194.39),
(1584, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:48', -1, '2011-10-19 21:42:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:48.357', 194.39),
(1585, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:48', -1, '2011-10-19 21:42:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:48.491', 194.39),
(1586, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:48', -1, '2011-10-19 21:42:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:48.591', 194.39),
(1587, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:48', -1, '2011-10-19 21:42:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:48.685', 194.39),
(1588, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:48', -1, '2011-10-19 21:42:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:48.834', 194.39),
(1589, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:48', -1, '2011-10-19 21:42:48', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:48.934', 194.39),
(1590, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:49', -1, '2011-10-19 21:42:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:49.111', 194.39),
(1591, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:49', -1, '2011-10-19 21:42:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:49.217', 194.39),
(1592, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:49', -1, '2011-10-19 21:42:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:49.307', 194.39),
(1593, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:49', -1, '2011-10-19 21:42:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:49.421', 194.39),
(1594, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:49', -1, '2011-10-19 21:42:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:49.521', 194.39),
(1595, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:49', -1, '2011-10-19 21:42:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:49.603', 194.39),
(1596, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:49', -1, '2011-10-19 21:42:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:49.705', 194.39),
(1597, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:49', -1, '2011-10-19 21:42:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:49.786', 194.39),
(1598, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:49', -1, '2011-10-19 21:42:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:49.876', 194.39),
(1599, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:49', -1, '2011-10-19 21:42:49', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:49.962', 194.39),
(1600, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:50', -1, '2011-10-19 21:42:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:50.118', 194.39),
(1601, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:50', -1, '2011-10-19 21:42:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:50.335', 194.39),
(1602, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:50', -1, '2011-10-19 21:42:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:50.453', 194.39),
(1603, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:50', -1, '2011-10-19 21:42:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:50.575', 194.39),
(1604, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:50', -1, '2011-10-19 21:42:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:50.725', 194.39),
(1605, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:50', -1, '2011-10-19 21:42:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:50.8', 194.39),
(1606, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:50', -1, '2011-10-19 21:42:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:50.89', 194.39),
(1607, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:50', -1, '2011-10-19 21:42:50', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:50.966', 194.39),
(1608, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:51', -1, '2011-10-19 21:42:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:51.058', 194.39),
(1609, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:51', -1, '2011-10-19 21:42:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:51.137', 194.39),
(1610, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:51', -1, '2011-10-19 21:42:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:51.225', 194.39),
(1611, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:51', -1, '2011-10-19 21:42:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:51.37', 194.39),
(1612, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:51', -1, '2011-10-19 21:42:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:51.449', 194.39),
(1613, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:51', -1, '2011-10-19 21:42:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:51.531', 194.39),
(1614, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:51', -1, '2011-10-19 21:42:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:51.647', 194.39),
(1615, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:51', -1, '2011-10-19 21:42:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:51.754', 194.39),
(1616, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:51', -1, '2011-10-19 21:42:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:51.839', 194.39),
(1617, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:51', -1, '2011-10-19 21:42:51', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:51.967', 194.39),
(1618, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:52', -1, '2011-10-19 21:42:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:52.049', 194.39),
(1619, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:52', -1, '2011-10-19 21:42:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:52.129', 194.39),
(1620, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:52', -1, '2011-10-19 21:42:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:52.28', 194.39),
(1621, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:52', -1, '2011-10-19 21:42:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:52.356', 194.39),
(1622, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:52', -1, '2011-10-19 21:42:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:52.445', 194.39),
(1623, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:52', -1, '2011-10-19 21:42:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:52.56', 194.39),
(1624, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:52', -1, '2011-10-19 21:42:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:52.662', 194.39),
(1625, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:52', -1, '2011-10-19 21:42:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:52.751', 194.39),
(1626, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:52', -1, '2011-10-19 21:42:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:52.838', 194.39),
(1627, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:52', -1, '2011-10-19 21:42:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:52.922', 194.39),
(1628, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:52', -1, '2011-10-19 21:42:52', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:53.008', 194.39),
(1629, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:53', -1, '2011-10-19 21:42:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:53.12', 194.39),
(1630, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:53', -1, '2011-10-19 21:42:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:53.2', 194.39),
(1631, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:53', -1, '2011-10-19 21:42:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:53.292', 194.39),
(1632, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:53', -1, '2011-10-19 21:42:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:53.367', 194.39),
(1633, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:53', -1, '2011-10-19 21:42:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:53.459', 194.39),
(1634, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:53', -1, '2011-10-19 21:42:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:53.582', 194.39),
(1635, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:53', -1, '2011-10-19 21:42:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:53.781', 194.39),
(1636, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:53', -1, '2011-10-19 21:42:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:53.889', 194.39),
(1637, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:53', -1, '2011-10-19 21:42:53', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:53.987', 194.39),
(1638, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:54', -1, '2011-10-19 21:42:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:54.073', 194.39),
(1639, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:54', -1, '2011-10-19 21:42:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:54.15', 194.39),
(1640, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:54', -1, '2011-10-19 21:42:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:54.235', 194.39),
(1641, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:54', -1, '2011-10-19 21:42:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:54.324', 194.39),
(1642, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:54', -1, '2011-10-19 21:42:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:54.466', 194.39),
(1643, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:54', -1, '2011-10-19 21:42:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:54.551', 194.39),
(1644, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:54', -1, '2011-10-19 21:42:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:54.647', 194.39),
(1645, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:54', -1, '2011-10-19 21:42:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:54.727', 194.39),
(1646, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:54', -1, '2011-10-19 21:42:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:54.823', 194.39),
(1647, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:54', -1, '2011-10-19 21:42:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:54.908', 194.39),
(1648, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:54', -1, '2011-10-19 21:42:54', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:54.999', 194.39),
(1649, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:55', -1, '2011-10-19 21:42:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:55.137', 194.39),
(1650, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:55', -1, '2011-10-19 21:42:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:55.221', 194.39),
(1651, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:55', -1, '2011-10-19 21:42:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:55.359', 194.39),
(1652, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:55', -1, '2011-10-19 21:42:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:55.453', 194.39),
(1653, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:55', -1, '2011-10-19 21:42:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:55.547', 194.39),
(1654, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:55', -1, '2011-10-19 21:42:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:55.681', 194.39),
(1655, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:55', -1, '2011-10-19 21:42:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:55.76', 194.39),
(1656, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:55', -1, '2011-10-19 21:42:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:55.849', 194.39),
(1657, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:55', -1, '2011-10-19 21:42:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:55.934', 194.39),
(1658, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:55', -1, '2011-10-19 21:42:55', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:56.021', 194.39),
(1659, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:56', -1, '2011-10-19 21:42:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:56.105', 194.39),
(1660, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:56', -1, '2011-10-19 21:42:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:56.211', 194.39),
(1661, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:56', -1, '2011-10-19 21:42:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:56.315', 194.39),
(1662, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:56', -1, '2011-10-19 21:42:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:56.397', 194.39),
(1663, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:56', -1, '2011-10-19 21:42:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:56.487', 194.39),
(1664, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:56', -1, '2011-10-19 21:42:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:56.578', 194.39),
(1665, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:56', -1, '2011-10-19 21:42:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:56.661', 194.39),
(1666, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:56', -1, '2011-10-19 21:42:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:56.742', 194.39),
(1667, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:56', -1, '2011-10-19 21:42:56', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:56.917', 194.39),
(1668, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:57', -1, '2011-10-19 21:42:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:57.057', 194.39),
(1669, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:57', -1, '2011-10-19 21:42:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:57.138', 194.39),
(1670, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:57', -1, '2011-10-19 21:42:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:57.242', 194.39),
(1671, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:57', -1, '2011-10-19 21:42:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:57.364', 194.39),
(1672, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:57', -1, '2011-10-19 21:42:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:57.509', 194.39),
(1673, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:57', -1, '2011-10-19 21:42:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:57.601', 194.39),
(1674, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:57', -1, '2011-10-19 21:42:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:57.679', 194.39),
(1675, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:57', -1, '2011-10-19 21:42:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:57.763', 194.39),
(1676, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:57', -1, '2011-10-19 21:42:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:57.898', 194.39),
(1677, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:57', -1, '2011-10-19 21:42:57', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:58.026', 194.39),
(1678, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:58', -1, '2011-10-19 21:42:58', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:58.173', 194.39),
(1679, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:58', -1, '2011-10-19 21:42:58', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:58.26', 194.39),
(1680, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:58', -1, '2011-10-19 21:42:58', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:58.375', 194.39),
(1681, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:58', -1, '2011-10-19 21:42:58', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:58.468', 194.39),
(1682, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:58', -1, '2011-10-19 21:42:58', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:58.547', 194.39),
(1683, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:58', -1, '2011-10-19 21:42:58', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:58.625', 194.39),
(1684, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:58', -1, '2011-10-19 21:42:58', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:58.708', 194.39),
(1685, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:58', -1, '2011-10-19 21:42:58', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:58.806', 194.39),
(1686, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:58', -1, '2011-10-19 21:42:58', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:58.882', 194.39),
(1687, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:58', -1, '2011-10-19 21:42:58', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:58.959', 194.39),
(1688, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:59', -1, '2011-10-19 21:42:59', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:59.037', 194.39),
(1689, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:59', -1, '2011-10-19 21:42:59', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:59.127', 194.39),
(1690, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:59', -1, '2011-10-19 21:42:59', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:59.233', 194.39),
(1691, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:59', -1, '2011-10-19 21:42:59', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:59.544', 194.39),
(1692, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:59', -1, '2011-10-19 21:42:59', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:59.64', 194.39),
(1693, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:59', -1, '2011-10-19 21:42:59', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:59.731', 194.39),
(1694, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:59', -1, '2011-10-19 21:42:59', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:59.816', 194.39),
(1695, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:59', -1, '2011-10-19 21:42:59', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:59.9', 194.39),
(1696, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:42:59', -1, '2011-10-19 21:42:59', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:42:59.984', 194.39),
(1697, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:43:00', -1, '2011-10-19 21:43:00', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:43:00.081', 194.39),
(1698, 1, 5, NULL, NULL, '2011-10-19 21:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:43:00', -1, '2011-10-19 21:43:00', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:43:00.195', 194.39),
(1699, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:04', -1, '2011-10-19 21:47:04', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:04.613', 194.39),
(1700, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:04', -1, '2011-10-19 21:47:04', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:04.767', 194.39),
(1701, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:04', -1, '2011-10-19 21:47:04', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:04.88', 194.39),
(1702, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:05', -1, '2011-10-19 21:47:05', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:05.023', 194.39),
(1703, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:05', -1, '2011-10-19 21:47:05', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:05.165', 194.39),
(1704, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:05', -1, '2011-10-19 21:47:05', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:05.296', 194.39),
(1705, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:05', -1, '2011-10-19 21:47:05', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:05.474', 194.39),
(1706, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:05', -1, '2011-10-19 21:47:05', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:05.592', 194.39),
(1707, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:05', -1, '2011-10-19 21:47:05', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:05.708', 194.39),
(1708, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:05', -1, '2011-10-19 21:47:05', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:05.81', 194.39);
INSERT INTO `vehicle_movement_log_all` (`vml_id`, `vml_type_id`, `device_history_id`, `toll_location_id`, `geometry`, `timestamp`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_on`, `last_modified_by`, `created_on`, `client_id`, `latitude`, `longitude`, `status`, `toll_session_id`, `distance`) VALUES
(1709, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:05', -1, '2011-10-19 21:47:05', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:05.913', 194.39),
(1710, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:05', -1, '2011-10-19 21:47:05', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:06.011', 194.39),
(1711, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:06', -1, '2011-10-19 21:47:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:06.172', 194.39),
(1712, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:06', -1, '2011-10-19 21:47:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:06.285', 194.39),
(1713, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:06', -1, '2011-10-19 21:47:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:06.382', 194.39),
(1714, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:06', -1, '2011-10-19 21:47:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:06.534', 194.39),
(1715, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:06', -1, '2011-10-19 21:47:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:06.673', 194.39),
(1716, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:06', -1, '2011-10-19 21:47:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:06.788', 194.39),
(1717, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:06', -1, '2011-10-19 21:47:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:06.967', 194.39),
(1718, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:07', -1, '2011-10-19 21:47:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:07.079', 194.39),
(1719, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:07', -1, '2011-10-19 21:47:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:07.252', 194.39),
(1720, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:07', -1, '2011-10-19 21:47:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:07.359', 194.39),
(1721, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:07', -1, '2011-10-19 21:47:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:07.525', 194.39),
(1722, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:07', -1, '2011-10-19 21:47:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:07.692', 194.39),
(1723, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:07', -1, '2011-10-19 21:47:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:07.791', 194.39),
(1724, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:07', -1, '2011-10-19 21:47:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:07.932', 194.39),
(1725, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:08', -1, '2011-10-19 21:47:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:08.027', 194.39),
(1726, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:08', -1, '2011-10-19 21:47:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:08.107', 194.39),
(1727, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:08', -1, '2011-10-19 21:47:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:08.19', 194.39),
(1728, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:08', -1, '2011-10-19 21:47:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:08.275', 194.39),
(1729, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:08', -1, '2011-10-19 21:47:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:08.366', 194.39),
(1730, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:08', -1, '2011-10-19 21:47:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:08.49', 194.39),
(1731, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:08', -1, '2011-10-19 21:47:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:08.587', 194.39),
(1732, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:08', -1, '2011-10-19 21:47:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:08.711', 194.39),
(1733, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:08', -1, '2011-10-19 21:47:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:08.819', 194.39),
(1734, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:08', -1, '2011-10-19 21:47:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:08.914', 194.39),
(1735, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:08', -1, '2011-10-19 21:47:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:09.018', 194.39),
(1736, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:09', -1, '2011-10-19 21:47:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:09.127', 194.39),
(1737, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:09', -1, '2011-10-19 21:47:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:09.251', 194.39),
(1738, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:09', -1, '2011-10-19 21:47:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:09.411', 194.39),
(1739, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:09', -1, '2011-10-19 21:47:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:09.501', 194.39),
(1740, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:09', -1, '2011-10-19 21:47:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:09.592', 194.39),
(1741, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:09', -1, '2011-10-19 21:47:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:09.682', 194.39),
(1742, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:09', -1, '2011-10-19 21:47:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:09.761', 194.39),
(1743, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:09', -1, '2011-10-19 21:47:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:09.882', 194.39),
(1744, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:09', -1, '2011-10-19 21:47:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:09.967', 194.39),
(1745, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:10', -1, '2011-10-19 21:47:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:10.057', 194.39),
(1746, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:10', -1, '2011-10-19 21:47:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:10.184', 194.39),
(1747, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:10', -1, '2011-10-19 21:47:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:10.26', 194.39),
(1748, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:10', -1, '2011-10-19 21:47:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:10.339', 194.39),
(1749, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:10', -1, '2011-10-19 21:47:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:10.423', 194.39),
(1750, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:10', -1, '2011-10-19 21:47:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:10.556', 194.39),
(1751, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:10', -1, '2011-10-19 21:47:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:10.708', 194.39),
(1752, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:10', -1, '2011-10-19 21:47:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:10.824', 194.39),
(1753, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:10', -1, '2011-10-19 21:47:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:10.922', 194.39),
(1754, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:10', -1, '2011-10-19 21:47:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:11.014', 194.39),
(1755, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:11', -1, '2011-10-19 21:47:11', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:11.11', 194.39),
(1756, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:11', -1, '2011-10-19 21:47:11', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:11.228', 194.39),
(1757, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:11', -1, '2011-10-19 21:47:11', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:11.37', 194.39),
(1758, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:11', -1, '2011-10-19 21:47:11', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:11.452', 194.39),
(1759, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:11', -1, '2011-10-19 21:47:11', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:11.558', 194.39),
(1760, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:11', -1, '2011-10-19 21:47:11', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:11.651', 194.39),
(1761, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:11', -1, '2011-10-19 21:47:11', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:11.748', 194.39),
(1762, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:11', -1, '2011-10-19 21:47:11', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:11.856', 194.39),
(1763, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:11', -1, '2011-10-19 21:47:11', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:11.965', 194.39),
(1764, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:12', -1, '2011-10-19 21:47:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:12.058', 194.39),
(1765, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:12', -1, '2011-10-19 21:47:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:12.136', 194.39),
(1766, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:12', -1, '2011-10-19 21:47:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:12.26', 194.39),
(1767, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:12', -1, '2011-10-19 21:47:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:12.355', 194.39),
(1768, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:12', -1, '2011-10-19 21:47:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:12.452', 194.39),
(1769, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:12', -1, '2011-10-19 21:47:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:12.577', 194.39),
(1770, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:12', -1, '2011-10-19 21:47:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:12.671', 194.39),
(1771, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:12', -1, '2011-10-19 21:47:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:12.753', 194.39),
(1772, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:12', -1, '2011-10-19 21:47:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:12.85', 194.39),
(1773, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:12', -1, '2011-10-19 21:47:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:12.945', 194.39),
(1774, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:13', -1, '2011-10-19 21:47:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:13.027', 194.39),
(1775, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:13', -1, '2011-10-19 21:47:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:13.121', 194.39),
(1776, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:13', -1, '2011-10-19 21:47:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:13.22', 194.39),
(1777, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:13', -1, '2011-10-19 21:47:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:13.311', 194.39),
(1778, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:13', -1, '2011-10-19 21:47:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:13.442', 194.39),
(1779, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:13', -1, '2011-10-19 21:47:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:13.791', 194.39),
(1780, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:13', -1, '2011-10-19 21:47:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:13.931', 194.39),
(1781, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:13', -1, '2011-10-19 21:47:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:14.018', 194.39),
(1782, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:14', -1, '2011-10-19 21:47:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:14.108', 194.39),
(1783, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:14', -1, '2011-10-19 21:47:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:14.198', 194.39),
(1784, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:14', -1, '2011-10-19 21:47:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:14.321', 194.39),
(1785, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:14', -1, '2011-10-19 21:47:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:14.478', 194.39),
(1786, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:14', -1, '2011-10-19 21:47:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:14.632', 194.39),
(1787, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:14', -1, '2011-10-19 21:47:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:14.725', 194.39),
(1788, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:14', -1, '2011-10-19 21:47:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:14.803', 194.39),
(1789, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:14', -1, '2011-10-19 21:47:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:14.899', 194.39),
(1790, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:14', -1, '2011-10-19 21:47:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:14.991', 194.39),
(1791, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:15', -1, '2011-10-19 21:47:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:15.076', 194.39),
(1792, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:15', -1, '2011-10-19 21:47:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:15.217', 194.39),
(1793, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:15', -1, '2011-10-19 21:47:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:15.302', 194.39),
(1794, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:15', -1, '2011-10-19 21:47:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:15.404', 194.39),
(1795, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:15', -1, '2011-10-19 21:47:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:15.482', 194.39),
(1796, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:15', -1, '2011-10-19 21:47:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:15.585', 194.39),
(1797, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:15', -1, '2011-10-19 21:47:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:15.825', 194.39),
(1798, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:15', -1, '2011-10-19 21:47:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:15.994', 194.39),
(1799, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:16', -1, '2011-10-19 21:47:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:16.07', 194.39),
(1800, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:16', -1, '2011-10-19 21:47:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:16.168', 194.39),
(1801, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:16', -1, '2011-10-19 21:47:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:16.253', 194.39),
(1802, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:16', -1, '2011-10-19 21:47:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:16.434', 194.39),
(1803, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:16', -1, '2011-10-19 21:47:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:16.606', 194.39),
(1804, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:16', -1, '2011-10-19 21:47:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:16.684', 194.39),
(1805, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:16', -1, '2011-10-19 21:47:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:16.776', 194.39),
(1806, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:16', -1, '2011-10-19 21:47:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:16.877', 194.39),
(1807, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:16', -1, '2011-10-19 21:47:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:17.04', 194.39),
(1808, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:17', -1, '2011-10-19 21:47:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:17.126', 194.39),
(1809, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:17', -1, '2011-10-19 21:47:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:17.255', 194.39),
(1810, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:17', -1, '2011-10-19 21:47:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:17.336', 194.39),
(1811, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:17', -1, '2011-10-19 21:47:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:17.425', 194.39),
(1812, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:17', -1, '2011-10-19 21:47:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:17.505', 194.39),
(1813, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:17', -1, '2011-10-19 21:47:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:17.617', 194.39),
(1814, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:17', -1, '2011-10-19 21:47:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:17.74', 194.39),
(1815, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:17', -1, '2011-10-19 21:47:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:17.827', 194.39),
(1816, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:17', -1, '2011-10-19 21:47:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:17.919', 194.39),
(1817, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:17', -1, '2011-10-19 21:47:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:18.01', 194.39),
(1818, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:18', -1, '2011-10-19 21:47:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:18.093', 194.39),
(1819, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:18', -1, '2011-10-19 21:47:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:18.177', 194.39),
(1820, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:18', -1, '2011-10-19 21:47:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:18.344', 194.39),
(1821, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:18', -1, '2011-10-19 21:47:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:18.433', 194.39),
(1822, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:18', -1, '2011-10-19 21:47:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:18.521', 194.39),
(1823, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:18', -1, '2011-10-19 21:47:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:18.603', 194.39),
(1824, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:18', -1, '2011-10-19 21:47:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:18.697', 194.39),
(1825, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:18', -1, '2011-10-19 21:47:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:18.775', 194.39),
(1826, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:18', -1, '2011-10-19 21:47:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:18.942', 194.39),
(1827, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:19', -1, '2011-10-19 21:47:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:19.027', 194.39),
(1828, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:19', -1, '2011-10-19 21:47:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:19.122', 194.39),
(1829, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:19', -1, '2011-10-19 21:47:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:19.211', 194.39),
(1830, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:19', -1, '2011-10-19 21:47:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:19.304', 194.39),
(1831, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:19', -1, '2011-10-19 21:47:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:19.463', 194.39),
(1832, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:19', -1, '2011-10-19 21:47:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:19.584', 194.39),
(1833, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:19', -1, '2011-10-19 21:47:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:19.688', 194.39),
(1834, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:19', -1, '2011-10-19 21:47:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:19.772', 194.39),
(1835, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:19', -1, '2011-10-19 21:47:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:19.849', 194.39),
(1836, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:19', -1, '2011-10-19 21:47:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:19.94', 194.39),
(1837, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:19', -1, '2011-10-19 21:47:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:20.015', 194.39),
(1838, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:20', -1, '2011-10-19 21:47:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:20.148', 194.39),
(1839, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:20', -1, '2011-10-19 21:47:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:20.269', 194.39),
(1840, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:20', -1, '2011-10-19 21:47:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:20.349', 194.39),
(1841, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:20', -1, '2011-10-19 21:47:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:20.503', 194.39),
(1842, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:20', -1, '2011-10-19 21:47:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:20.609', 194.39),
(1843, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:20', -1, '2011-10-19 21:47:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:20.697', 194.39),
(1844, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:20', -1, '2011-10-19 21:47:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:20.792', 194.39),
(1845, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:20', -1, '2011-10-19 21:47:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:20.892', 194.39),
(1846, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:20', -1, '2011-10-19 21:47:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:21.009', 194.39),
(1847, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:21', -1, '2011-10-19 21:47:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:21.101', 194.39),
(1848, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:21', -1, '2011-10-19 21:47:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:21.235', 194.39),
(1849, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:21', -1, '2011-10-19 21:47:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:21.315', 194.39),
(1850, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:21', -1, '2011-10-19 21:47:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:21.426', 194.39),
(1851, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:21', -1, '2011-10-19 21:47:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:21.503', 194.39),
(1852, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:21', -1, '2011-10-19 21:47:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:21.59', 194.39),
(1853, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:21', -1, '2011-10-19 21:47:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:21.706', 194.39),
(1854, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:21', -1, '2011-10-19 21:47:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:21.781', 194.39),
(1855, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:21', -1, '2011-10-19 21:47:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:21.862', 194.39),
(1856, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:21', -1, '2011-10-19 21:47:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:21.95', 194.39),
(1857, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:22', -1, '2011-10-19 21:47:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:22.032', 194.39),
(1858, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:22', -1, '2011-10-19 21:47:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:22.118', 194.39),
(1859, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:22', -1, '2011-10-19 21:47:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:22.199', 194.39),
(1860, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:22', -1, '2011-10-19 21:47:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:22.284', 194.39),
(1861, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:22', -1, '2011-10-19 21:47:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:22.359', 194.39),
(1862, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:22', -1, '2011-10-19 21:47:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:22.444', 194.39),
(1863, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:22', -1, '2011-10-19 21:47:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:22.524', 194.39),
(1864, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:22', -1, '2011-10-19 21:47:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:22.617', 194.39),
(1865, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:22', -1, '2011-10-19 21:47:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:22.709', 194.39),
(1866, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:22', -1, '2011-10-19 21:47:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:22.798', 194.39),
(1867, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:22', -1, '2011-10-19 21:47:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:22.91', 194.39),
(1868, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:22', -1, '2011-10-19 21:47:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:22.994', 194.39),
(1869, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:23', -1, '2011-10-19 21:47:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:23.081', 194.39),
(1870, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:23', -1, '2011-10-19 21:47:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:23.174', 194.39),
(1871, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:23', -1, '2011-10-19 21:47:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:23.254', 194.39),
(1872, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:23', -1, '2011-10-19 21:47:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:23.343', 194.39),
(1873, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:23', -1, '2011-10-19 21:47:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:23.432', 194.39),
(1874, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:23', -1, '2011-10-19 21:47:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:23.51', 194.39),
(1875, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:23', -1, '2011-10-19 21:47:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:23.599', 194.39),
(1876, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:23', -1, '2011-10-19 21:47:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:23.684', 194.39),
(1877, 1, 5, NULL, NULL, '2011-10-19 21:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:47:23', -1, '2011-10-19 21:47:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:47:23.783', 194.39),
(1878, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:01', -1, '2011-10-19 21:50:01', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:01.457', 194.39),
(1879, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:01', -1, '2011-10-19 21:50:01', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:01.631', 194.39),
(1880, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:01', -1, '2011-10-19 21:50:01', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:01.769', 194.39),
(1881, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:02', -1, '2011-10-19 21:50:02', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:02.029', 194.39),
(1882, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:02', -1, '2011-10-19 21:50:02', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:02.286', 194.39),
(1883, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:02', -1, '2011-10-19 21:50:02', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:02.407', 194.39),
(1884, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:02', -1, '2011-10-19 21:50:02', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:02.53', 194.39),
(1885, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:02', -1, '2011-10-19 21:50:02', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:02.69', 194.39),
(1886, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:02', -1, '2011-10-19 21:50:02', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:02.833', 194.39),
(1887, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:02', -1, '2011-10-19 21:50:02', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:02.942', 194.39),
(1888, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:03', -1, '2011-10-19 21:50:03', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:03.049', 194.39),
(1889, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:03', -1, '2011-10-19 21:50:03', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:03.157', 194.39),
(1890, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:03', -1, '2011-10-19 21:50:03', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:03.293', 194.39),
(1891, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:03', -1, '2011-10-19 21:50:03', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:03.514', 194.39),
(1892, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:03', -1, '2011-10-19 21:50:03', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:03.688', 194.39),
(1893, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:03', -1, '2011-10-19 21:50:03', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:03.849', 194.39),
(1894, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:03', -1, '2011-10-19 21:50:03', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:03.967', 194.39),
(1895, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:04', -1, '2011-10-19 21:50:04', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:04.063', 194.39),
(1896, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:04', -1, '2011-10-19 21:50:04', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:04.158', 194.39),
(1897, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:04', -1, '2011-10-19 21:50:04', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:04.264', 194.39),
(1898, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:04', -1, '2011-10-19 21:50:04', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:04.361', 194.39),
(1899, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:04', -1, '2011-10-19 21:50:04', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:04.484', 194.39),
(1900, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:04', -1, '2011-10-19 21:50:04', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:04.605', 194.39),
(1901, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:04', -1, '2011-10-19 21:50:04', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:04.704', 194.39),
(1902, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:04', -1, '2011-10-19 21:50:04', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:04.791', 194.39),
(1903, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:04', -1, '2011-10-19 21:50:04', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:04.902', 194.39),
(1904, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:04', -1, '2011-10-19 21:50:04', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:05.02', 194.39),
(1905, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:05', -1, '2011-10-19 21:50:05', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:05.172', 194.39),
(1906, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:05', -1, '2011-10-19 21:50:05', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:05.274', 194.39),
(1907, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:05', -1, '2011-10-19 21:50:05', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:05.427', 194.39),
(1908, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:05', -1, '2011-10-19 21:50:05', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:05.523', 194.39),
(1909, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:05', -1, '2011-10-19 21:50:05', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:05.612', 194.39),
(1910, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:05', -1, '2011-10-19 21:50:05', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:05.711', 194.39),
(1911, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:05', -1, '2011-10-19 21:50:05', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:05.817', 194.39),
(1912, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:05', -1, '2011-10-19 21:50:05', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:05.937', 194.39),
(1913, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:06', -1, '2011-10-19 21:50:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:06.031', 194.39),
(1914, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:06', -1, '2011-10-19 21:50:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:06.117', 194.39),
(1915, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:06', -1, '2011-10-19 21:50:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:06.215', 194.39),
(1916, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:06', -1, '2011-10-19 21:50:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:06.354', 194.39),
(1917, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:06', -1, '2011-10-19 21:50:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:06.449', 194.39),
(1918, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:06', -1, '2011-10-19 21:50:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:06.538', 194.39),
(1919, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:06', -1, '2011-10-19 21:50:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:06.689', 194.39),
(1920, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:06', -1, '2011-10-19 21:50:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:06.799', 194.39),
(1921, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:06', -1, '2011-10-19 21:50:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:06.878', 194.39);
INSERT INTO `vehicle_movement_log_all` (`vml_id`, `vml_type_id`, `device_history_id`, `toll_location_id`, `geometry`, `timestamp`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_on`, `last_modified_by`, `created_on`, `client_id`, `latitude`, `longitude`, `status`, `toll_session_id`, `distance`) VALUES
(1922, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:06', -1, '2011-10-19 21:50:06', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:07.005', 194.39),
(1923, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:07', -1, '2011-10-19 21:50:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:07.098', 194.39),
(1924, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:07', -1, '2011-10-19 21:50:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:07.205', 194.39),
(1925, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:07', -1, '2011-10-19 21:50:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:07.297', 194.39),
(1926, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:07', -1, '2011-10-19 21:50:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:07.406', 194.39),
(1927, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:07', -1, '2011-10-19 21:50:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:07.489', 194.39),
(1928, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:07', -1, '2011-10-19 21:50:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:07.582', 194.39),
(1929, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:07', -1, '2011-10-19 21:50:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:07.682', 194.39),
(1930, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:07', -1, '2011-10-19 21:50:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:07.773', 194.39),
(1931, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:07', -1, '2011-10-19 21:50:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:07.87', 194.39),
(1932, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:07', -1, '2011-10-19 21:50:07', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:07.975', 194.39),
(1933, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:08', -1, '2011-10-19 21:50:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:08.083', 194.39),
(1934, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:08', -1, '2011-10-19 21:50:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:08.191', 194.39),
(1935, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:08', -1, '2011-10-19 21:50:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:08.301', 194.39),
(1936, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:08', -1, '2011-10-19 21:50:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:08.402', 194.39),
(1937, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:08', -1, '2011-10-19 21:50:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:08.485', 194.39),
(1938, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:08', -1, '2011-10-19 21:50:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:08.592', 194.39),
(1939, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:08', -1, '2011-10-19 21:50:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:08.703', 194.39),
(1940, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:08', -1, '2011-10-19 21:50:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:08.818', 194.39),
(1941, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:08', -1, '2011-10-19 21:50:08', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:08.924', 194.39),
(1942, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:09', -1, '2011-10-19 21:50:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:09.035', 194.39),
(1943, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:09', -1, '2011-10-19 21:50:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:09.133', 194.39),
(1944, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:09', -1, '2011-10-19 21:50:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:09.234', 194.39),
(1945, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:09', -1, '2011-10-19 21:50:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:09.334', 194.39),
(1946, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:09', -1, '2011-10-19 21:50:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:09.425', 194.39),
(1947, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:09', -1, '2011-10-19 21:50:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:09.531', 194.39),
(1948, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:09', -1, '2011-10-19 21:50:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:09.622', 194.39),
(1949, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:09', -1, '2011-10-19 21:50:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:09.716', 194.39),
(1950, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:09', -1, '2011-10-19 21:50:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:09.834', 194.39),
(1951, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:09', -1, '2011-10-19 21:50:09', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:09.93', 194.39),
(1952, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:10', -1, '2011-10-19 21:50:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:10.024', 194.39),
(1953, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:10', -1, '2011-10-19 21:50:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:10.116', 194.39),
(1954, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:10', -1, '2011-10-19 21:50:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:10.219', 194.39),
(1955, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:10', -1, '2011-10-19 21:50:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:10.31', 194.39),
(1956, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:10', -1, '2011-10-19 21:50:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:10.39', 194.39),
(1957, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:10', -1, '2011-10-19 21:50:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:10.485', 194.39),
(1958, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:10', -1, '2011-10-19 21:50:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:10.619', 194.39),
(1959, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:10', -1, '2011-10-19 21:50:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:10.711', 194.39),
(1960, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:10', -1, '2011-10-19 21:50:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:10.817', 194.39),
(1961, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:10', -1, '2011-10-19 21:50:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:10.915', 194.39),
(1962, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:10', -1, '2011-10-19 21:50:10', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:10.999', 194.39),
(1963, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:11', -1, '2011-10-19 21:50:11', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:11.15', 194.39),
(1964, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:11', -1, '2011-10-19 21:50:11', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:11.331', 194.39),
(1965, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:11', -1, '2011-10-19 21:50:11', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:11.435', 194.39),
(1966, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:11', -1, '2011-10-19 21:50:11', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:11.545', 194.39),
(1967, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:11', -1, '2011-10-19 21:50:11', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:11.709', 194.39),
(1968, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:11', -1, '2011-10-19 21:50:11', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:11.79', 194.39),
(1969, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:11', -1, '2011-10-19 21:50:11', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:11.886', 194.39),
(1970, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:11', -1, '2011-10-19 21:50:11', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:11.979', 194.39),
(1971, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:12', -1, '2011-10-19 21:50:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:12.076', 194.39),
(1972, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:12', -1, '2011-10-19 21:50:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:12.17', 194.39),
(1973, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:12', -1, '2011-10-19 21:50:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:12.305', 194.39),
(1974, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:12', -1, '2011-10-19 21:50:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:12.436', 194.39),
(1975, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:12', -1, '2011-10-19 21:50:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:12.535', 194.39),
(1976, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:12', -1, '2011-10-19 21:50:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:12.627', 194.39),
(1977, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:12', -1, '2011-10-19 21:50:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:12.757', 194.39),
(1978, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:12', -1, '2011-10-19 21:50:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:12.858', 194.39),
(1979, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:12', -1, '2011-10-19 21:50:12', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:13.021', 194.39),
(1980, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:13', -1, '2011-10-19 21:50:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:13.118', 194.39),
(1981, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:13', -1, '2011-10-19 21:50:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:13.231', 194.39),
(1982, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:13', -1, '2011-10-19 21:50:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:13.343', 194.39),
(1983, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:13', -1, '2011-10-19 21:50:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:13.531', 194.39),
(1984, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:13', -1, '2011-10-19 21:50:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:13.797', 194.39),
(1985, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:13', -1, '2011-10-19 21:50:13', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:13.98', 194.39),
(1986, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:14', -1, '2011-10-19 21:50:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:14.295', 194.39),
(1987, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:14', -1, '2011-10-19 21:50:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:14.407', 194.39),
(1988, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:14', -1, '2011-10-19 21:50:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:14.487', 194.39),
(1989, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:14', -1, '2011-10-19 21:50:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:14.586', 194.39),
(1990, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:14', -1, '2011-10-19 21:50:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:14.692', 194.39),
(1991, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:14', -1, '2011-10-19 21:50:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:14.776', 194.39),
(1992, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:14', -1, '2011-10-19 21:50:14', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:14.883', 194.39),
(1993, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:15', -1, '2011-10-19 21:50:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:15.059', 194.39),
(1994, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:15', -1, '2011-10-19 21:50:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:15.144', 194.39),
(1995, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:15', -1, '2011-10-19 21:50:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:15.238', 194.39),
(1996, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:15', -1, '2011-10-19 21:50:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:15.322', 194.39),
(1997, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:15', -1, '2011-10-19 21:50:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:15.413', 194.39),
(1998, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:15', -1, '2011-10-19 21:50:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:15.554', 194.39),
(1999, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:15', -1, '2011-10-19 21:50:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:15.641', 194.39),
(2000, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:15', -1, '2011-10-19 21:50:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:15.723', 194.39),
(2001, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:15', -1, '2011-10-19 21:50:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:15.809', 194.39),
(2002, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:15', -1, '2011-10-19 21:50:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:15.915', 194.39),
(2003, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:15', -1, '2011-10-19 21:50:15', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:16.003', 194.39),
(2004, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:16', -1, '2011-10-19 21:50:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:16.087', 194.39),
(2005, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:16', -1, '2011-10-19 21:50:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:16.179', 194.39),
(2006, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:16', -1, '2011-10-19 21:50:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:16.294', 194.39),
(2007, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:16', -1, '2011-10-19 21:50:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:16.393', 194.39),
(2008, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:16', -1, '2011-10-19 21:50:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:16.495', 194.39),
(2009, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:16', -1, '2011-10-19 21:50:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:16.585', 194.39),
(2010, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:16', -1, '2011-10-19 21:50:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:16.683', 194.39),
(2011, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:16', -1, '2011-10-19 21:50:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:16.889', 194.39),
(2012, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:16', -1, '2011-10-19 21:50:16', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:16.983', 194.39),
(2013, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:17', -1, '2011-10-19 21:50:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:17.073', 194.39),
(2014, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:17', -1, '2011-10-19 21:50:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:17.181', 194.39),
(2015, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:17', -1, '2011-10-19 21:50:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:17.311', 194.39),
(2016, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:17', -1, '2011-10-19 21:50:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:17.428', 194.39),
(2017, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:17', -1, '2011-10-19 21:50:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:17.509', 194.39),
(2018, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:17', -1, '2011-10-19 21:50:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:17.605', 194.39),
(2019, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:17', -1, '2011-10-19 21:50:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:17.702', 194.39),
(2020, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:17', -1, '2011-10-19 21:50:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:17.803', 194.39),
(2021, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:17', -1, '2011-10-19 21:50:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:17.913', 194.39),
(2022, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:17', -1, '2011-10-19 21:50:17', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:18.007', 194.39),
(2023, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:18', -1, '2011-10-19 21:50:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:18.131', 194.39),
(2024, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:18', -1, '2011-10-19 21:50:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:18.235', 194.39),
(2025, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:18', -1, '2011-10-19 21:50:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:18.359', 194.39),
(2026, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:18', -1, '2011-10-19 21:50:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:18.455', 194.39),
(2027, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:18', -1, '2011-10-19 21:50:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:18.549', 194.39),
(2028, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:18', -1, '2011-10-19 21:50:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:18.632', 194.39),
(2029, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:18', -1, '2011-10-19 21:50:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:18.722', 194.39),
(2030, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:18', -1, '2011-10-19 21:50:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:18.813', 194.39),
(2031, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:18', -1, '2011-10-19 21:50:18', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:18.961', 194.39),
(2032, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:19', -1, '2011-10-19 21:50:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:19.066', 194.39),
(2033, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:19', -1, '2011-10-19 21:50:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:19.163', 194.39),
(2034, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:19', -1, '2011-10-19 21:50:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:19.286', 194.39),
(2035, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:19', -1, '2011-10-19 21:50:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:19.385', 194.39),
(2036, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:19', -1, '2011-10-19 21:50:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:19.54', 194.39),
(2037, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:19', -1, '2011-10-19 21:50:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:19.675', 194.39),
(2038, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:19', -1, '2011-10-19 21:50:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:19.788', 194.39),
(2039, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:19', -1, '2011-10-19 21:50:19', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:19.954', 194.39),
(2040, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:20', -1, '2011-10-19 21:50:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:20.103', 194.39),
(2041, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:20', -1, '2011-10-19 21:50:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:20.192', 194.39),
(2042, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:20', -1, '2011-10-19 21:50:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:20.291', 194.39),
(2043, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:20', -1, '2011-10-19 21:50:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:20.4', 194.39),
(2044, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:20', -1, '2011-10-19 21:50:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:20.551', 194.39),
(2045, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:20', -1, '2011-10-19 21:50:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:20.665', 194.39),
(2046, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:20', -1, '2011-10-19 21:50:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:20.777', 194.39),
(2047, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:20', -1, '2011-10-19 21:50:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:20.873', 194.39),
(2048, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:20', -1, '2011-10-19 21:50:20', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:20.947', 194.39),
(2049, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:21', -1, '2011-10-19 21:50:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:21.034', 194.39),
(2050, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:21', -1, '2011-10-19 21:50:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:21.118', 194.39),
(2051, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:21', -1, '2011-10-19 21:50:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:21.23', 194.39),
(2052, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:21', -1, '2011-10-19 21:50:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:21.356', 194.39),
(2053, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:21', -1, '2011-10-19 21:50:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:21.448', 194.39),
(2054, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:21', -1, '2011-10-19 21:50:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:21.545', 194.39),
(2055, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:21', -1, '2011-10-19 21:50:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:21.643', 194.39),
(2056, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:21', -1, '2011-10-19 21:50:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:21.736', 194.39),
(2057, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:21', -1, '2011-10-19 21:50:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:21.817', 194.39),
(2058, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:21', -1, '2011-10-19 21:50:21', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:21.901', 194.39),
(2059, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:22', -1, '2011-10-19 21:50:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:22.039', 194.39),
(2060, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:22', -1, '2011-10-19 21:50:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:22.12', 194.39),
(2061, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:22', -1, '2011-10-19 21:50:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:22.19', 194.39),
(2062, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:22', -1, '2011-10-19 21:50:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:22.281', 194.39),
(2063, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:22', -1, '2011-10-19 21:50:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:22.361', 194.39),
(2064, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:22', -1, '2011-10-19 21:50:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:22.45', 194.39),
(2065, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:22', -1, '2011-10-19 21:50:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:22.531', 194.39),
(2066, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:22', -1, '2011-10-19 21:50:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:22.607', 194.39),
(2067, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:22', -1, '2011-10-19 21:50:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:22.686', 194.39),
(2068, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:22', -1, '2011-10-19 21:50:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:22.796', 194.39),
(2069, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:22', -1, '2011-10-19 21:50:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:22.872', 194.39),
(2070, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:22', -1, '2011-10-19 21:50:22', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:22.947', 194.39),
(2071, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:23', -1, '2011-10-19 21:50:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:23.033', 194.39),
(2072, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:23', -1, '2011-10-19 21:50:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:23.119', 194.39),
(2073, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:23', -1, '2011-10-19 21:50:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:23.2', 194.39),
(2074, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:23', -1, '2011-10-19 21:50:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:23.315', 194.39),
(2075, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:23', -1, '2011-10-19 21:50:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:23.447', 194.39),
(2076, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:23', -1, '2011-10-19 21:50:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:23.56', 194.39),
(2077, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:23', -1, '2011-10-19 21:50:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:23.642', 194.39),
(2078, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:23', -1, '2011-10-19 21:50:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:23.718', 194.39),
(2079, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:23', -1, '2011-10-19 21:50:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:23.812', 194.39),
(2080, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:23', -1, '2011-10-19 21:50:23', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:23.895', 194.39),
(2081, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:24', -1, '2011-10-19 21:50:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:24.037', 194.39),
(2082, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:24', -1, '2011-10-19 21:50:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:24.118', 194.39),
(2083, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:24', -1, '2011-10-19 21:50:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:24.198', 194.39),
(2084, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:24', -1, '2011-10-19 21:50:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:24.271', 194.39),
(2085, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:24', -1, '2011-10-19 21:50:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:24.355', 194.39),
(2086, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:24', -1, '2011-10-19 21:50:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:24.455', 194.39),
(2087, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:24', -1, '2011-10-19 21:50:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:24.728', 194.39),
(2088, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:24', -1, '2011-10-19 21:50:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:24.814', 194.39),
(2089, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:24', -1, '2011-10-19 21:50:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:24.896', 194.39),
(2090, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:24', -1, '2011-10-19 21:50:24', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:24.988', 194.39),
(2091, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:25', -1, '2011-10-19 21:50:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:25.086', 194.39),
(2092, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:25', -1, '2011-10-19 21:50:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:25.165', 194.39),
(2093, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:25', -1, '2011-10-19 21:50:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:25.274', 194.39),
(2094, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:25', -1, '2011-10-19 21:50:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:25.4', 194.39),
(2095, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:25', -1, '2011-10-19 21:50:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:25.488', 194.39),
(2096, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:25', -1, '2011-10-19 21:50:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:25.562', 194.39),
(2097, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:25', -1, '2011-10-19 21:50:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:25.644', 194.39),
(2098, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:25', -1, '2011-10-19 21:50:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:25.729', 194.39),
(2099, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:25', -1, '2011-10-19 21:50:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:25.811', 194.39),
(2100, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:25', -1, '2011-10-19 21:50:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:25.936', 194.39),
(2101, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:25', -1, '2011-10-19 21:50:25', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:26.036', 194.39),
(2102, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:26', -1, '2011-10-19 21:50:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:26.135', 194.39),
(2103, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:26', -1, '2011-10-19 21:50:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:26.249', 194.39),
(2104, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:26', -1, '2011-10-19 21:50:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:26.391', 194.39),
(2105, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:26', -1, '2011-10-19 21:50:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:26.474', 194.39),
(2106, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:26', -1, '2011-10-19 21:50:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:26.579', 194.39),
(2107, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:26', -1, '2011-10-19 21:50:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:26.773', 194.39),
(2108, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:26', -1, '2011-10-19 21:50:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:26.845', 194.39),
(2109, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:26', -1, '2011-10-19 21:50:26', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:26.968', 194.39),
(2110, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:27', -1, '2011-10-19 21:50:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:27.062', 194.39),
(2111, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:27', -1, '2011-10-19 21:50:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:27.139', 194.39),
(2112, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:27', -1, '2011-10-19 21:50:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:27.255', 194.39),
(2113, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:27', -1, '2011-10-19 21:50:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:27.398', 194.39),
(2114, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:27', -1, '2011-10-19 21:50:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:27.475', 194.39),
(2115, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:27', -1, '2011-10-19 21:50:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:27.56', 194.39),
(2116, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:27', -1, '2011-10-19 21:50:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:27.645', 194.39),
(2117, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:27', -1, '2011-10-19 21:50:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:27.73', 194.39),
(2118, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:27', -1, '2011-10-19 21:50:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:27.813', 194.39),
(2119, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:27', -1, '2011-10-19 21:50:27', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:28.01', 194.39),
(2120, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:28', -1, '2011-10-19 21:50:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:28.101', 194.39),
(2121, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:28', -1, '2011-10-19 21:50:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:28.181', 194.39),
(2122, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:28', -1, '2011-10-19 21:50:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:28.269', 194.39),
(2123, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:28', -1, '2011-10-19 21:50:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:28.349', 194.39),
(2124, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:28', -1, '2011-10-19 21:50:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:28.425', 194.39),
(2125, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:28', -1, '2011-10-19 21:50:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:28.616', 194.39),
(2126, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:28', -1, '2011-10-19 21:50:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:28.712', 194.39),
(2127, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:28', -1, '2011-10-19 21:50:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:28.796', 194.39),
(2128, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:28', -1, '2011-10-19 21:50:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:28.872', 194.39),
(2129, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:28', -1, '2011-10-19 21:50:28', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:28.949', 194.39),
(2130, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:29', -1, '2011-10-19 21:50:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:29.029', 194.39),
(2131, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:29', -1, '2011-10-19 21:50:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:29.103', 194.39),
(2132, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:29', -1, '2011-10-19 21:50:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:29.218', 194.39),
(2133, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:29', -1, '2011-10-19 21:50:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:29.365', 194.39),
(2134, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:29', -1, '2011-10-19 21:50:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:29.45', 194.39);
INSERT INTO `vehicle_movement_log_all` (`vml_id`, `vml_type_id`, `device_history_id`, `toll_location_id`, `geometry`, `timestamp`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_on`, `last_modified_by`, `created_on`, `client_id`, `latitude`, `longitude`, `status`, `toll_session_id`, `distance`) VALUES
(2135, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:29', -1, '2011-10-19 21:50:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:29.534', 194.39),
(2136, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:29', -1, '2011-10-19 21:50:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:29.619', 194.39),
(2137, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:29', -1, '2011-10-19 21:50:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:29.695', 194.39),
(2138, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:29', -1, '2011-10-19 21:50:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:29.813', 194.39),
(2139, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:29', -1, '2011-10-19 21:50:29', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:29.935', 194.39),
(2140, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:30', -1, '2011-10-19 21:50:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:30.031', 194.39),
(2141, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:30', -1, '2011-10-19 21:50:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:30.133', 194.39),
(2142, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:30', -1, '2011-10-19 21:50:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:30.217', 194.39),
(2143, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:30', -1, '2011-10-19 21:50:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:30.298', 194.39),
(2144, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:30', -1, '2011-10-19 21:50:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:30.388', 194.39),
(2145, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:30', -1, '2011-10-19 21:50:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:30.457', 194.39),
(2146, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:30', -1, '2011-10-19 21:50:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:30.61', 194.39),
(2147, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:30', -1, '2011-10-19 21:50:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:30.701', 194.39),
(2148, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:30', -1, '2011-10-19 21:50:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:30.781', 194.39),
(2149, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:30', -1, '2011-10-19 21:50:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:30.865', 194.39),
(2150, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:30', -1, '2011-10-19 21:50:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:30.938', 194.39),
(2151, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:30', -1, '2011-10-19 21:50:30', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:31.018', 194.39),
(2152, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:31', -1, '2011-10-19 21:50:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:31.108', 194.39),
(2153, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:31', -1, '2011-10-19 21:50:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:31.184', 194.39),
(2154, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:31', -1, '2011-10-19 21:50:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:31.325', 194.39),
(2155, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:31', -1, '2011-10-19 21:50:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:31.442', 194.39),
(2156, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:31', -1, '2011-10-19 21:50:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:31.517', 194.39),
(2157, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:31', -1, '2011-10-19 21:50:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:31.601', 194.39),
(2158, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:31', -1, '2011-10-19 21:50:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:31.683', 194.39),
(2159, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:31', -1, '2011-10-19 21:50:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:31.759', 194.39),
(2160, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:31', -1, '2011-10-19 21:50:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:31.842', 194.39),
(2161, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:31', -1, '2011-10-19 21:50:31', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:31.916', 194.39),
(2162, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:32', -1, '2011-10-19 21:50:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:32.043', 194.39),
(2163, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:32', -1, '2011-10-19 21:50:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:32.176', 194.39),
(2164, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:32', -1, '2011-10-19 21:50:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:32.262', 194.39),
(2165, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:32', -1, '2011-10-19 21:50:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:32.355', 194.39),
(2166, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:32', -1, '2011-10-19 21:50:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:32.466', 194.39),
(2167, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:32', -1, '2011-10-19 21:50:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:32.54', 194.39),
(2168, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:32', -1, '2011-10-19 21:50:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:32.624', 194.39),
(2169, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:32', -1, '2011-10-19 21:50:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:32.726', 194.39),
(2170, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:32', -1, '2011-10-19 21:50:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:32.864', 194.39),
(2171, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:32', -1, '2011-10-19 21:50:32', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:32.951', 194.39),
(2172, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:33', -1, '2011-10-19 21:50:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:33.032', 194.39),
(2173, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:33', -1, '2011-10-19 21:50:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:33.104', 194.39),
(2174, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:33', -1, '2011-10-19 21:50:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:33.2', 194.39),
(2175, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:33', -1, '2011-10-19 21:50:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:33.284', 194.39),
(2176, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:33', -1, '2011-10-19 21:50:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:33.455', 194.39),
(2177, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:33', -1, '2011-10-19 21:50:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:33.589', 194.39),
(2178, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:33', -1, '2011-10-19 21:50:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:33.706', 194.39),
(2179, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:33', -1, '2011-10-19 21:50:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:33.78', 194.39),
(2180, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:33', -1, '2011-10-19 21:50:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:33.878', 194.39),
(2181, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:33', -1, '2011-10-19 21:50:33', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:33.96', 194.39),
(2182, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:34', -1, '2011-10-19 21:50:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:34.049', 194.39),
(2183, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:34', -1, '2011-10-19 21:50:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:34.245', 194.39),
(2184, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:34', -1, '2011-10-19 21:50:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:34.337', 194.39),
(2185, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:34', -1, '2011-10-19 21:50:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:34.431', 194.39),
(2186, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:34', -1, '2011-10-19 21:50:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:34.526', 194.39),
(2187, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:34', -1, '2011-10-19 21:50:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:34.607', 194.39),
(2188, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:34', -1, '2011-10-19 21:50:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:34.684', 194.39),
(2189, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:34', -1, '2011-10-19 21:50:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:34.768', 194.39),
(2190, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:34', -1, '2011-10-19 21:50:34', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:34.854', 194.39),
(2191, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:35', -1, '2011-10-19 21:50:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:35.143', 194.39),
(2192, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:35', -1, '2011-10-19 21:50:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:35.272', 194.39),
(2193, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:35', -1, '2011-10-19 21:50:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:35.346', 194.39),
(2194, 1, 5, NULL, NULL, '2011-10-19 21:49:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-19 21:50:35', -1, '2011-10-19 21:50:35', 1, '-122.135672', '-122.135672', NULL, '1#2011-10-19 21:50:35.43', 194.39);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Payment to be done by each vehicle and other details' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `vehicle_toll_usage_all`
--


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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `model` AS select `model_all`.`model_id` AS `model_id`,`model_all`.`name` AS `name`,`model_all`.`description` AS `description`,`model_all`.`make_id` AS `make_id`,`model_all`.`udf1` AS `udf1`,`model_all`.`udf2` AS `udf2`,`model_all`.`udf3` AS `udf3`,`model_all`.`udf4` AS `udf4`,`model_all`.`udf5` AS `udf5`,`model_all`.`flag1` AS `flag1`,`model_all`.`flag2` AS `flag2`,`model_all`.`flag3` AS `flag3`,`model_all`.`flag4` AS `flag4`,`model_all`.`flag5` AS `flag5`,`model_all`.`client_id` AS `client_id`,`model_all`.`created_on` AS `created_on`,`model_all`.`last_modified_on` AS `last_modified_on`,`model_all`.`last_modified_by` AS `last_modified_by` from `model_all` where (`model_all`.`model_id` > 0);

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
-- Structure for view `toll_location`
--
DROP TABLE IF EXISTS `toll_location`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `toll_location` AS select `toll_location_all`.`toll_location_id` AS `toll_location_id`,`toll_location_all`.`toll_operator_id` AS `toll_operator_id`,`toll_location_all`.`geometry` AS `geometry`,`toll_location_all`.`is_covered` AS `is_covered`,`toll_location_all`.`is_cash_only` AS `is_cash_only`,`toll_location_all`.`address1` AS `address1`,`toll_location_all`.`address2` AS `address2`,`toll_location_all`.`city` AS `city`,`toll_location_all`.`state` AS `state`,`toll_location_all`.`country` AS `country`,`toll_location_all`.`zip` AS `zip`,`toll_location_all`.`udf1` AS `udf1`,`toll_location_all`.`udf2` AS `udf2`,`toll_location_all`.`udf3` AS `udf3`,`toll_location_all`.`udf4` AS `udf4`,`toll_location_all`.`udf5` AS `udf5`,`toll_location_all`.`flag1` AS `flag1`,`toll_location_all`.`flag2` AS `flag2`,`toll_location_all`.`flag3` AS `flag3`,`toll_location_all`.`flag4` AS `flag4`,`toll_location_all`.`flag5` AS `flag5`,`toll_location_all`.`last_modified_by` AS `last_modified_by`,`toll_location_all`.`last_modified_on` AS `last_modified_on`,`toll_location_all`.`created_on` AS `created_on`,`toll_location_all`.`client_id` AS `client_id`,`toll_location_all`.`latitude` AS `latitude`,`toll_location_all`.`longitude` AS `longitude`,`toll_location_all`.`direction` AS `direction`,`toll_location_all`.`type` AS `type` from `toll_location_all` where (`toll_location_all`.`toll_location_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `toll_location_history`
--
DROP TABLE IF EXISTS `toll_location_history`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `toll_location_history` AS select `toll_location_history_all`.`tlh_id` AS `tlh_id`,`toll_location_history_all`.`toll_location_id` AS `toll_location_id`,`toll_location_history_all`.`toll_operator_id` AS `toll_operator_id`,`toll_location_history_all`.`geometry` AS `geometry`,`toll_location_history_all`.`is_covered` AS `is_covered`,`toll_location_history_all`.`is_cash_only` AS `is_cash_only`,`toll_location_history_all`.`address1` AS `address1`,`toll_location_history_all`.`address2` AS `address2`,`toll_location_history_all`.`city` AS `city`,`toll_location_history_all`.`state` AS `state`,`toll_location_history_all`.`country` AS `country`,`toll_location_history_all`.`zip` AS `zip`,`toll_location_history_all`.`udf1` AS `udf1`,`toll_location_history_all`.`udf2` AS `udf2`,`toll_location_history_all`.`udf3` AS `udf3`,`toll_location_history_all`.`udf4` AS `udf4`,`toll_location_history_all`.`udf5` AS `udf5`,`toll_location_history_all`.`flag1` AS `flag1`,`toll_location_history_all`.`flag2` AS `flag2`,`toll_location_history_all`.`flag3` AS `flag3`,`toll_location_history_all`.`flag4` AS `flag4`,`toll_location_history_all`.`flag5` AS `flag5`,`toll_location_history_all`.`created_on` AS `created_on`,`toll_location_history_all`.`last_modified_on` AS `last_modified_on`,`toll_location_history_all`.`last_modified_by` AS `last_modified_by`,`toll_location_history_all`.`start_date` AS `start_date`,`toll_location_history_all`.`end_date` AS `end_date`,`toll_location_history_all`.`action` AS `action`,`toll_location_history_all`.`client_id` AS `client_id`,`toll_location_history_all`.`latitude` AS `latitude`,`toll_location_history_all`.`longitude` AS `longitude` from `toll_location_history_all` where (`toll_location_history_all`.`tlh_id` > 0);

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_notification` AS select `user_notification_all`.`user_notification_id` AS `user_notification_id`,`user_notification_all`.`device_id` AS `device_id`,`user_notification_all`.`notification_type` AS `notification_type`,`user_notification_all`.`udf1` AS `udf1`,`user_notification_all`.`udf2` AS `udf2`,`user_notification_all`.`udf3` AS `udf3`,`user_notification_all`.`udf4` AS `udf4`,`user_notification_all`.`udf5` AS `udf5`,`user_notification_all`.`flag1` AS `flag1`,`user_notification_all`.`flag2` AS `flag2`,`user_notification_all`.`flag3` AS `flag3`,`user_notification_all`.`flag4` AS `flag4`,`user_notification_all`.`flag5` AS `flag5`,`user_notification_all`.`created_on` AS `created_on`,`user_notification_all`.`last_modified_on` AS `last_modified_on`,`user_notification_all`.`last_modified_by` AS `last_modified_by`,`user_notification_all`.`client_id` AS `client_id`,`user_notification_all`.`status` AS `status`,`user_notification_all`.`send_at` AS `send_at`,`user_notification_all`.`notification` AS `notification`,`user_notification_all`.`ack_mesage` AS `ack_mesage`,`user_notification_all`.`ack_result` AS `ack_result`,`user_notification_all`.`add_timestamp` AS `add_timestamp`,`user_notification_all`.`sent_timestamp` AS `sent_timestamp`,`user_notification_all`.`ack_timestamp` AS `ack_timestamp` from `user_notification_all` where (`user_notification_all`.`user_notification_id` > 0);

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_vehicle` AS select `user_vehicle_all`.`user_vehicle_id` AS `user_vehicle_id`,`user_vehicle_all`.`user_id` AS `user_id`,`user_vehicle_all`.`vehicle_type_id` AS `vehicle_type_id`,`user_vehicle_all`.`vehicle_start_date` AS `vehicle_start_date`,`user_vehicle_all`.`vehicle_end_date` AS `vehicle_end_date`,`user_vehicle_all`.`is_active` AS `is_active`,`user_vehicle_all`.`registration_no` AS `registration_no`,`user_vehicle_all`.`registered_state` AS `registered_state`,`user_vehicle_all`.`owner_type_id` AS `owner_type_id`,`user_vehicle_all`.`udf1` AS `udf1`,`user_vehicle_all`.`udf2` AS `udf2`,`user_vehicle_all`.`udf3` AS `udf3`,`user_vehicle_all`.`udf4` AS `udf4`,`user_vehicle_all`.`udf5` AS `udf5`,`user_vehicle_all`.`flag1` AS `flag1`,`user_vehicle_all`.`flag2` AS `flag2`,`user_vehicle_all`.`flag3` AS `flag3`,`user_vehicle_all`.`flag4` AS `flag4`,`user_vehicle_all`.`flag5` AS `flag5`,`user_vehicle_all`.`last_modified_by` AS `last_modified_by`,`user_vehicle_all`.`last_modified_on` AS `last_modified_on`,`user_vehicle_all`.`created_on` AS `created_on`,`user_vehicle_all`.`client_id` AS `client_id`,`user_vehicle_all`.`model_id` AS `model_id`,`user_vehicle_all`.`vin` AS `vin` from `user_vehicle_all` where (`user_vehicle_all`.`user_vehicle_id` > 0);

-- --------------------------------------------------------

--
-- Structure for view `user_vehicle_history`
--
DROP TABLE IF EXISTS `user_vehicle_history`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_vehicle_history` AS select `user_vehicle_history_all`.`uvh_id` AS `uvh_id`,`user_vehicle_history_all`.`user_vehicle_id` AS `user_vehicle_id`,`user_vehicle_history_all`.`user_id` AS `user_id`,`user_vehicle_history_all`.`vehicle_type_id` AS `vehicle_type_id`,`user_vehicle_history_all`.`is_active` AS `is_active`,`user_vehicle_history_all`.`vehicle_start_date` AS `vehicle_start_date`,`user_vehicle_history_all`.`vehicle_end_date` AS `vehicle_end_date`,`user_vehicle_history_all`.`registration_no` AS `registration_no`,`user_vehicle_history_all`.`registered_state` AS `registered_state`,`user_vehicle_history_all`.`owner_type_id` AS `owner_type_id`,`user_vehicle_history_all`.`udf1` AS `udf1`,`user_vehicle_history_all`.`udf2` AS `udf2`,`user_vehicle_history_all`.`udf3` AS `udf3`,`user_vehicle_history_all`.`udf4` AS `udf4`,`user_vehicle_history_all`.`udf5` AS `udf5`,`user_vehicle_history_all`.`flag1` AS `flag1`,`user_vehicle_history_all`.`flag2` AS `flag2`,`user_vehicle_history_all`.`flag3` AS `flag3`,`user_vehicle_history_all`.`flag4` AS `flag4`,`user_vehicle_history_all`.`flag5` AS `flag5`,`user_vehicle_history_all`.`created_on` AS `created_on`,`user_vehicle_history_all`.`last_modified_on` AS `last_modified_on`,`user_vehicle_history_all`.`last_modified_by` AS `last_modified_by`,`user_vehicle_history_all`.`start_date` AS `start_date`,`user_vehicle_history_all`.`end_date` AS `end_date`,`user_vehicle_history_all`.`action` AS `action`,`user_vehicle_history_all`.`client_id` AS `client_id`,`user_vehicle_history_all`.`model_id` AS `model_id`,`user_vehicle_history_all`.`vin` AS `vin` from `user_vehicle_history_all` where (`user_vehicle_history_all`.`uvh_id` > 0);

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
  ADD CONSTRAINT `fk_last_mod_by_cta` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `client_all`
--
ALTER TABLE `client_all`
  ADD CONSTRAINT `fk_cl_user` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_ca` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `component_all`
--
ALTER TABLE `component_all`
  ADD CONSTRAINT `fk_comp_client` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_comp` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `component_version_all`
--
ALTER TABLE `component_version_all`
  ADD CONSTRAINT `fk_cv_c` FOREIGN KEY (`component_id`) REFERENCES `component_all` (`component_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_cv` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `configuration_all`
--
ALTER TABLE `configuration_all`
  ADD CONSTRAINT `fk_c_cv` FOREIGN KEY (`comp_version_id`) REFERENCES `component_version_all` (`comp_version_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mod_by_config_all` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `device_all`
--
ALTER TABLE `device_all`
  ADD CONSTRAINT `fk_device_client` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_device_user` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_lastmod_device` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `make_all`
--
ALTER TABLE `make_all`
  ADD CONSTRAINT `fk_lmb_make` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_make_client` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `model_all`
--
ALTER TABLE `model_all`
  ADD CONSTRAINT `fk_lmb_model` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_model_client` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_model_make` FOREIGN KEY (`make_id`) REFERENCES `make_all` (`make_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `owner_type_all`
--
ALTER TABLE `owner_type_all`
  ADD CONSTRAINT `fk_client_ot` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_ota` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `payment_gateway_all`
--
ALTER TABLE `payment_gateway_all`
  ADD CONSTRAINT `fk_pg_client` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pg_user` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `payment_token_all`
--
ALTER TABLE `payment_token_all`
  ADD CONSTRAINT `fk_pt_client` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pt_pg` FOREIGN KEY (`payment_gateway_id`) REFERENCES `payment_gateway_all` (`payment_gateway_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pt_upd` FOREIGN KEY (`upd_id`) REFERENCES `user_payment_detail_all` (`upd_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pt_user` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `payment_transaction_all`
--
ALTER TABLE `payment_transaction_all`
  ADD CONSTRAINT `fk_client_pt` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_lat_mod_by_pta` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pt_tlog` FOREIGN KEY (`to_bl_id`) REFERENCES `user_balance_log_all` (`ublog_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pt_ublog` FOREIGN KEY (`user_bl_id`) REFERENCES `user_balance_log_all` (`ublog_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pt_updh` FOREIGN KEY (`updh_id`) REFERENCES `user_payment_detail_history_all` (`updh_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `road_all`
--
ALTER TABLE `road_all`
  ADD CONSTRAINT `fk_last_mod_by_road` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_road_client_all` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `service_plan_all`
--
ALTER TABLE `service_plan_all`
  ADD CONSTRAINT `fk_client_sp` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_spa` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sp_to` FOREIGN KEY (`toll_operator_id`) REFERENCES `toll_operator_all` (`toll_operator_id`) ON UPDATE CASCADE;

--
-- Constraints for table `toll_location_all`
--
ALTER TABLE `toll_location_all`
  ADD CONSTRAINT `fk_client_tl` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_tla` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_toll_op_id` FOREIGN KEY (`toll_operator_id`) REFERENCES `toll_operator_all` (`toll_operator_id`) ON UPDATE CASCADE;

--
-- Constraints for table `toll_operator_all`
--
ALTER TABLE `toll_operator_all`
  ADD CONSTRAINT `fk_client_to` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_last_mod_by_toa` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_toll_user` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `toll_price_all`
--
ALTER TABLE `toll_price_all`
  ADD CONSTRAINT `fk_client_tp` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_tpa` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tp_tl` FOREIGN KEY (`toll_location_id`) REFERENCES `toll_location_all` (`toll_location_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tp_vt` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_type_all` (`vehicle_type_id`) ON UPDATE CASCADE;

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
  ADD CONSTRAINT `fk_last_mod_by_uba` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ubal_users` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_balance_log_all`
--
ALTER TABLE `user_balance_log_all`
  ADD CONSTRAINT `fk_client_ubl` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_ubla` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ublog_ubal` FOREIGN KEY (`ubal_id`) REFERENCES `user_balance_all` (`ubal_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `user_notification_all`
--
ALTER TABLE `user_notification_all`
  ADD CONSTRAINT `fk_device` FOREIGN KEY (`device_id`) REFERENCES `device_all` (`device_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_notification` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_unotify_client_all` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_notification_settings_all`
--
ALTER TABLE `user_notification_settings_all`
  ADD CONSTRAINT `fk_last_mod_by_notify_settings` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_not_settings_client_all` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_not_settings_user_all` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_settings_user_notification_type_all` FOREIGN KEY (`user_notification_type_id`) REFERENCES `user_notification_type_all` (`user_notification_type_id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_notification_type_all`
--
ALTER TABLE `user_notification_type_all`
  ADD CONSTRAINT `fk_last_mod_by_not_type` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_noti_type_client_all` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_payment_detail_all`
--
ALTER TABLE `user_payment_detail_all`
  ADD CONSTRAINT `fk_cctype_upd` FOREIGN KEY (`cc_type_id`) REFERENCES `cc_type_all` (`cc_type_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_client_upd` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_upda` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_upd_user` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_service_all`
--
ALTER TABLE `user_service_all`
  ADD CONSTRAINT `fk_client_us` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_las_mod_by` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_us_ser` FOREIGN KEY (`service_id`) REFERENCES `service_plan_all` (`service_plan_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_us_user` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_type_all`
--
ALTER TABLE `user_type_all`
  ADD CONSTRAINT `fk_client_ut` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_uta` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `user_vehicle_all`
--
ALTER TABLE `user_vehicle_all`
  ADD CONSTRAINT `fk_client_uv` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_uva` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_user_vehicle` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_uv_co` FOREIGN KEY (`owner_type_id`) REFERENCES `owner_type_all` (`owner_type_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vehicle_model` FOREIGN KEY (`model_id`) REFERENCES `model_all` (`model_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vt_user_vehicle` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_type_all` (`vehicle_type_id`) ON UPDATE CASCADE;

--
-- Constraints for table `vehicle_movement_log_all`
--
ALTER TABLE `vehicle_movement_log_all`
  ADD CONSTRAINT `fk_client_vml` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_vmla` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vml_toll_location` FOREIGN KEY (`toll_location_id`) REFERENCES `toll_location_all` (`toll_location_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vml_uvh` FOREIGN KEY (`device_history_id`) REFERENCES `user_vehicle_history_all` (`uvh_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vml_vmlt` FOREIGN KEY (`vml_type_id`) REFERENCES `vml_type_all` (`vml_type_id`) ON UPDATE CASCADE;

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
  ADD CONSTRAINT `fk_last_mod_by_all` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;
