-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 15, 2011 at 03:34 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `device_all`
--

INSERT INTO `device_all` (`device_id`, `user_id`, `device_uuid`, `device_type`, `is_active`, `last_login_time`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `client_id`) VALUES
(3, 1, '0:0:0:0:0:0:0:12011-10-12 22:17:11.112', 'desktop', 'N', '2011-10-12 22:17:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:17:11', '2011-10-12 22:17:11', -1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `device_history_all`
--

INSERT INTO `device_history_all` (`device_history_id`, `device_id`, `user_id`, `device_uuid`, `device_type`, `is_active`, `last_login_time`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `client_id`, `last_modified_by`, `last_modified_on`, `created_on`, `start_date`, `end_date`, `action`) VALUES
(1, 3, -1, '0:0:0:0:0:0:0:12011-10-12 22:17:11.112', 'desktop', 'N', '2011-10-12 22:17:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-12 22:17:11', '2011-10-12 22:17:11', '2011-10-12 22:17:11', '2011-10-12 22:22:33', 'insert'),
(2, 3, 1, '0:0:0:0:0:0:0:12011-10-12 22:17:11.112', 'desktop', 'N', '2011-10-12 22:17:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, -1, '2011-10-12 22:17:11', '2011-10-12 22:17:11', '2011-10-12 22:22:34', '3000-01-01 00:00:00', 'update');

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
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  PRIMARY KEY (`tlh_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table maps the location with corresponding toll operato' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `toll_location_history_all`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='List of all the toll operators , their banking details etc' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `toll_operator_all`
--


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
(1, 1, 1, 'harish@mobisols.com', 'mobisols', '', 'I', NULL, '2011-10-12 22:22:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This table has all details about the users' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_history_all`
--

INSERT INTO `user_history_all` (`user_his_id`, `user_id`, `user_name`, `password`, `locale`, `utype_id`, `last_login_time`, `is_active`, `contact_no`, `client_id`, `action`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `start_date`, `end_date`) VALUES
(1, -1, 'test', 'test', NULL, 1, NULL, 'N', NULL, 1, 'insert', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 21:20:18', '2011-10-12 21:20:21', -1, '2011-10-12 21:20:24', '3000-01-01 00:00:00'),
(2, 1, 'harish@mobisols.com', 'mobisols', '', 1, '2011-10-12 22:22:34', 'I', NULL, 1, 'insert', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-12 22:22:34', '3000-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_notification`
--
DROP VIEW IF EXISTS `user_notification`;
CREATE TABLE IF NOT EXISTS `user_notification` (
`user_notification_id` int(11)
,`user_id` int(11)
,`user_notification_type_id` int(11)
,`timestamp` datetime
,`description` varchar(1000)
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
-- Table structure for table `user_notification_all`
--

DROP TABLE IF EXISTS `user_notification_all`;
CREATE TABLE IF NOT EXISTS `user_notification_all` (
  `user_notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_notification_type_id` int(11) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
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
  PRIMARY KEY (`user_notification_id`),
  KEY `fk_user_all` (`user_id`),
  KEY `fk_user_notification_type_all` (`user_notification_type_id`),
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
  `cc_number` varchar(16) DEFAULT NULL,
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
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-10-12 22:22:34', '2011-10-12 22:22:34', 1);

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
,`cc_number` varchar(15)
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
  `cc_number` varchar(15) DEFAULT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_payment_detail_history_all`
--

INSERT INTO `user_payment_detail_history_all` (`updh_id`, `upd_id`, `user_id`, `cc_type_id`, `cc_ac_name`, `cc_number`, `cc_exp_month`, `cc_exp_year`, `cc_cvv`, `bank_routing`, `bank_account`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `pay_prefer`, `action`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `start_date`, `end_date`, `client_id`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c', 'insert', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 22:22:34', '2011-10-12 22:22:34', -1, '2011-10-12 22:22:34', '3000-01-01 00:00:00', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_type_all`
--

INSERT INTO `user_type_all` (`user_type_id`, `name`, `description`, `min_balance`, `min_balance_type`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `client_id`) VALUES
(1, 'user', NULL, '000000000000010.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12 21:18:49', '2011-10-12 21:18:52', -1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='List of vehicles registered by the user' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_vehicle_all`
--

INSERT INTO `user_vehicle_all` (`user_vehicle_id`, `user_id`, `vehicle_type_id`, `vehicle_start_date`, `vehicle_end_date`, `is_active`, `registration_no`, `registered_state`, `owner_type_id`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`, `model_id`, `vin`) VALUES
(1, 1, 3, '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'N', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='List of vehicles registered by the user' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_vehicle_history_all`
--

INSERT INTO `user_vehicle_history_all` (`uvh_id`, `user_vehicle_id`, `user_id`, `vehicle_type_id`, `is_active`, `vehicle_start_date`, `vehicle_end_date`, `registration_no`, `registered_state`, `owner_type_id`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `start_date`, `end_date`, `action`, `client_id`, `model_id`, `vin`) VALUES
(1, 1, 1, 3, 'N', '2011-10-14 01:01:46', '2012-01-01 00:00:00', 'abcdef', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 01:02:24', '2011-10-14 01:02:24', 1, '2011-10-14 01:02:24', '3000-01-01 00:00:00', 'insert', 1, NULL, NULL),
(2, 2, 1, 3, 'N', '2011-10-14 08:23:24', '2013-01-01 00:00:00', 'qwerty', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 08:23:56', '2011-10-14 08:23:56', 1, '2011-10-14 08:23:56', '2011-10-14 22:14:01', 'insert', 1, NULL, NULL),
(3, 2, 1, 3, 'N', '2011-10-14 08:23:24', '2013-01-01 00:00:00', 'qwerty', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 08:23:56', '2011-10-14 08:23:56', 1, '2011-10-14 22:14:02', '2011-10-14 22:14:02', 'delete', 1, NULL, NULL),
(4, 3, 1, 3, 'N', '2011-10-14 22:15:18', '2012-01-01 00:00:00', 'qwerty', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 22:15:42', '2011-10-14 22:15:42', 1, '2011-10-14 22:15:42', '2011-10-14 22:17:05', 'insert', 1, NULL, NULL),
(5, 3, 1, 3, 'N', '2011-10-14 22:15:18', '2012-01-01 00:00:00', 'qwerty', 'AL', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-14 22:15:42', '2011-10-14 22:15:42', 1, '2011-10-14 22:17:06', '2011-10-14 22:17:06', 'delete', 1, NULL, NULL);

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
  `geometry` geometry NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Trackiing the vehicle movement ' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `vehicle_movement_log_all`
--


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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_notification` AS select `user_notification_all`.`user_notification_id` AS `user_notification_id`,`user_notification_all`.`user_id` AS `user_id`,`user_notification_all`.`user_notification_type_id` AS `user_notification_type_id`,`user_notification_all`.`timestamp` AS `timestamp`,`user_notification_all`.`description` AS `description`,`user_notification_all`.`udf1` AS `udf1`,`user_notification_all`.`udf2` AS `udf2`,`user_notification_all`.`udf3` AS `udf3`,`user_notification_all`.`udf4` AS `udf4`,`user_notification_all`.`udf5` AS `udf5`,`user_notification_all`.`flag1` AS `flag1`,`user_notification_all`.`flag2` AS `flag2`,`user_notification_all`.`flag3` AS `flag3`,`user_notification_all`.`flag4` AS `flag4`,`user_notification_all`.`flag5` AS `flag5`,`user_notification_all`.`created_on` AS `created_on`,`user_notification_all`.`last_modified_on` AS `last_modified_on`,`user_notification_all`.`last_modified_by` AS `last_modified_by`,`user_notification_all`.`client_id` AS `client_id` from `user_notification_all`;

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
  ADD CONSTRAINT `fk_last_mod_by_notification` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_unotify_client_all` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_all` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_notification_type_all` FOREIGN KEY (`user_notification_type_id`) REFERENCES `user_notification_type_all` (`user_notification_type_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

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
