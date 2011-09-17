-- MySQL dump 10.13  Distrib 5.5.9, for Win32 (x86)
--
-- Host: localhost    Database: globaltoll
-- ------------------------------------------------------
-- Server version	5.1.54-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `globaltoll`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `globaltoll` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `globaltoll`;

--
-- Temporary table structure for view `cc_type`
--

DROP TABLE IF EXISTS `cc_type`;
/*!50001 DROP VIEW IF EXISTS `cc_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `cc_type` (
  `cc_type_id` int(11),
  `name` varchar(45),
  `description` varchar(1000),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` datetime,
  `last_modified_on` datetime,
  `last_modified_by` int(11),
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cc_type_all`
--

DROP TABLE IF EXISTS `cc_type_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_type_all` (
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
  KEY `fk_client_cct` (`client_id`),
  CONSTRAINT `fk_client_cct` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_cta` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_type_all`
--

LOCK TABLES `cc_type_all` WRITE;
/*!40000 ALTER TABLE `cc_type_all` DISABLE KEYS */;
INSERT INTO `cc_type_all` VALUES (-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-06-24 00:37:46','2011-06-24 00:37:53',-1,-1),(1,'gold',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-06-24 03:34:00','2011-06-24 03:34:00',-1,1);
/*!40000 ALTER TABLE `cc_type_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `client`
--

DROP TABLE IF EXISTS `client`;
/*!50001 DROP VIEW IF EXISTS `client`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `client` (
  `client_id` int(11),
  `client_name` varchar(45),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` datetime,
  `last_modified_on` datetime,
  `last_modified_by` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `client_all`
--

DROP TABLE IF EXISTS `client_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_all` (
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
  KEY `fk_last_mod_by_ca` (`last_modified_by`),
  CONSTRAINT `fk_cl_user` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_ca` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_all`
--

LOCK TABLES `client_all` WRITE;
/*!40000 ALTER TABLE `client_all` DISABLE KEYS */;
INSERT INTO `client_all` VALUES (-1,'tollways',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-06-24 00:25:20','2011-06-24 00:25:30',-1),(1,'test drive',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-06-24 03:27:53','2011-06-24 03:27:53',1);
/*!40000 ALTER TABLE `client_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `component`
--

DROP TABLE IF EXISTS `component`;
/*!50001 DROP VIEW IF EXISTS `component`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `component` (
  `component_id` int(11),
  `name` varchar(45),
  `description` varchar(45),
  `client_id` int(11),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` datetime,
  `last_modified_on` datetime,
  `last_modified_by` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `component_all`
--

DROP TABLE IF EXISTS `component_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `component_all` (
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
  KEY `fk_last_mod_comp` (`last_modified_by`),
  CONSTRAINT `fk_comp_client` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_comp` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table store different components(client, server, portal';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component_all`
--

LOCK TABLES `component_all` WRITE;
/*!40000 ALTER TABLE `component_all` DISABLE KEYS */;
INSERT INTO `component_all` VALUES (-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-06-24 00:38:36','2011-06-24 00:38:42',-1);
/*!40000 ALTER TABLE `component_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `component_version`
--

DROP TABLE IF EXISTS `component_version`;
/*!50001 DROP VIEW IF EXISTS `component_version`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `component_version` (
  `comp_version_id` int(11),
  `component_id` int(11),
  `description` varchar(45),
  `list_of_changes` varchar(4000),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` datetime,
  `last_modified_on` datetime,
  `last_modified_by` int(11),
  `version` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `component_version_all`
--

DROP TABLE IF EXISTS `component_version_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `component_version_all` (
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
  KEY `fk_last_mod_cv` (`last_modified_by`),
  CONSTRAINT `fk_cv_c` FOREIGN KEY (`component_id`) REFERENCES `component_all` (`component_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_cv` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component_version_all`
--

LOCK TABLES `component_version_all` WRITE;
/*!40000 ALTER TABLE `component_version_all` DISABLE KEYS */;
INSERT INTO `component_version_all` VALUES (-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-06-24 00:39:08','2011-06-24 00:39:14',-1,NULL);
/*!40000 ALTER TABLE `component_version_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `configuration`
--

DROP TABLE IF EXISTS `configuration`;
/*!50001 DROP VIEW IF EXISTS `configuration`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `configuration` (
  `config_id` int(11),
  `comp_version_id` int(11),
  `key` varchar(45),
  `value` varchar(1000),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` datetime,
  `last_modified_on` datetime,
  `last_modified_by` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `configuration_all`
--

DROP TABLE IF EXISTS `configuration_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuration_all` (
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
  KEY `fk_mod_by_config_all` (`last_modified_by`),
  CONSTRAINT `fk_c_cv` FOREIGN KEY (`comp_version_id`) REFERENCES `component_version_all` (`comp_version_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_mod_by_config_all` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_all`
--

LOCK TABLES `configuration_all` WRITE;
/*!40000 ALTER TABLE `configuration_all` DISABLE KEYS */;
INSERT INTO `configuration_all` VALUES (-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-06-24 00:39:48','2011-06-24 00:39:54',-1);
/*!40000 ALTER TABLE `configuration_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `device`
--

DROP TABLE IF EXISTS `device`;
/*!50001 DROP VIEW IF EXISTS `device`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `device` (
  `device_id` int(11),
  `user_id` int(11),
  `device_uuid` varchar(100),
  `device_type` varchar(100),
  `vehicle_id` int(11),
  `is_active` varchar(1),
  `last_login_time` timestamp,
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` timestamp,
  `last_modified_on` timestamp,
  `last_modified_by` int(11),
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `device_all`
--

DROP TABLE IF EXISTS `device_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_all` (
  `device_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `device_uuid` varchar(100) NOT NULL,
  `device_type` varchar(100) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
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
  KEY `fk_lastmod_device` (`last_modified_by`),
  KEY `fk_device_vehicle` (`vehicle_id`),
  CONSTRAINT `fk_device_client` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_device_user` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_device_vehicle` FOREIGN KEY (`vehicle_id`) REFERENCES `user_vehicle_all` (`user_vehicle_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_lastmod_device` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_all`
--

LOCK TABLES `device_all` WRITE;
/*!40000 ALTER TABLE `device_all` DISABLE KEYS */;
INSERT INTO `device_all` VALUES (1,1,'123456789','iphone',1,'Y','2011-07-12 07:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-12 16:48:39','2011-07-12 16:48:39',1,1),(2,-1,'0234568','android',NULL,'Y','2011-07-13 04:48:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-13 04:48:44','2011-07-13 04:48:44',NULL,1);
/*!40000 ALTER TABLE `device_all` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_dev_his_aft_ins
after insert on device_all
for each row begin
insert into device_history_all(device_history_id,device_id,user_id,device_uuid,device_type,vehicle_id,is_active,
last_login_time,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,client_id,last_modified_by,last_modified_on,
created_on,start_date,end_date,action)
values(null,new.device_id,new.user_id,new.device_uuid,new.device_type,new.vehicle_id,new.is_active,
new.last_login_time,new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,
new.flag4,new.flag5,new.client_id,new.last_modified_by,new.last_modified_on,new.created_on,GetStartDate(),GetInfFuture(),'insert');
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_dev_his_aft_upd 
after update on device_all
for each row begin
update device_history_all
set end_date = GetEndDate()
where 
device_id = new.device_id
and end_date = GetInfFuture();
insert into device_history_all(device_history_id,device_id,user_id,device_uuid,device_type,vehicle_id,is_active,
last_login_time,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,client_id,last_modified_by,last_modified_on,
created_on,start_date,end_date,action)
values(null,new.device_id,new.user_id,new.device_uuid,new.device_type,new.vehicle_id,new.is_active,
new.last_login_time,new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,
new.flag4,new.flag5,new.client_id,new.last_modified_by,new.last_modified_on,new.created_on,GetStartDate(),GetInfFuture(),'update');
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_dev_his_bfr_del
before delete on device_all
for each row begin
update device_history_all
set end_date = GetEndDate()
where 
device_id = old.device_id
and end_date = GetInfFuture();
insert into device_history_all(device_history_id,device_id,user_id,device_uuid,device_type,vehicle_id,is_active,
last_login_time,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,client_id,last_modified_by,last_modified_on,
created_on,start_date,end_date,action)
values(null,old.device_id,old.user_id,old.device_uuid,old.device_type,old.vehicle_id,old.is_active,
old.last_login_time,old.udf1,old.udf2,old.udf3,old.udf4,old.udf5,old.flag1,old.flag2,old.flag3,
old.flag4,old.flag5,old.client_id,old.last_modified_by,old.last_modified_on,old.created_on,GetStartDate(),GetStartDate(),'delete');
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `device_history`
--

DROP TABLE IF EXISTS `device_history`;
/*!50001 DROP VIEW IF EXISTS `device_history`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `device_history` (
  `device_history_id` int(11),
  `device_id` int(11),
  `user_id` int(11),
  `device_uuid` varchar(100),
  `device_type` varchar(100),
  `vehicle_id` int(11),
  `is_active` varchar(1),
  `last_login_time` timestamp,
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `client_id` int(11),
  `last_modified_by` int(11),
  `last_modified_on` timestamp,
  `created_on` timestamp,
  `start_date` timestamp,
  `end_date` timestamp,
  `action` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `device_history_all`
--

DROP TABLE IF EXISTS `device_history_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_history_all` (
  `device_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `device_uuid` varchar(100) DEFAULT NULL,
  `device_type` varchar(100) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
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
  `last_modified_on` timestamp NULL DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `action` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`device_history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_history_all`
--

LOCK TABLES `device_history_all` WRITE;
/*!40000 ALTER TABLE `device_history_all` DISABLE KEYS */;
INSERT INTO `device_history_all` VALUES (1,2,-1,'0234568','android',NULL,'Y','2011-07-13 04:48:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2011-07-13 04:48:44','2011-07-13 04:48:44','2011-07-13 04:48:44','0000-00-00 00:00:00','insert');
/*!40000 ALTER TABLE `device_history_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `owner_type`
--

DROP TABLE IF EXISTS `owner_type`;
/*!50001 DROP VIEW IF EXISTS `owner_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `owner_type` (
  `owner_type_id` int(11),
  `name` varchar(45),
  `description` varchar(100),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `falg1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` datetime,
  `last_modifiede_on` datetime,
  `last_modified_by` int(11),
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `owner_type_all`
--

DROP TABLE IF EXISTS `owner_type_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner_type_all` (
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
  KEY `fk_client_ot` (`client_id`),
  CONSTRAINT `fk_client_ot` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_ota` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner_type_all`
--

LOCK TABLES `owner_type_all` WRITE;
/*!40000 ALTER TABLE `owner_type_all` DISABLE KEYS */;
INSERT INTO `owner_type_all` VALUES (-1,'xyz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-06-24 00:40:39','2011-06-24 00:41:08',-1,-1),(1,'primary owner',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-06-24 03:42:58','2011-06-24 03:42:58',1,1);
/*!40000 ALTER TABLE `owner_type_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `payment_transaction`
--

DROP TABLE IF EXISTS `payment_transaction`;
/*!50001 DROP VIEW IF EXISTS `payment_transaction`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `payment_transaction` (
  `ptran_id` int(11),
  `user_bl_id` int(11),
  `to_bl_id` int(11),
  `updh_id` int(11),
  `timestamp` datetime,
  `status` varchar(10),
  `amount` decimal(19,4),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `last_modified_by` int(11),
  `last_modified_on` datetime,
  `created_on` datetime,
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `payment_transaction_all`
--

DROP TABLE IF EXISTS `payment_transaction_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_transaction_all` (
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
  KEY `fk_client_pt` (`client_id`),
  CONSTRAINT `fk_client_pt` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_lat_mod_by_pta` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_pt_tlog` FOREIGN KEY (`to_bl_id`) REFERENCES `user_balance_log_all` (`ublog_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_pt_ublog` FOREIGN KEY (`user_bl_id`) REFERENCES `user_balance_log_all` (`ublog_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_pt_updh` FOREIGN KEY (`updh_id`) REFERENCES `user_payment_detail_history_all` (`updh_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='All the payment transactions up to the date';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_transaction_all`
--

LOCK TABLES `payment_transaction_all` WRITE;
/*!40000 ALTER TABLE `payment_transaction_all` DISABLE KEYS */;
INSERT INTO `payment_transaction_all` VALUES (-1,1,1,1,'2011-06-24 01:17:04','test',0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,'2011-06-24 00:34:47','2011-06-24 00:25:20',-1);
/*!40000 ALTER TABLE `payment_transaction_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `road`
--

DROP TABLE IF EXISTS `road`;
/*!50001 DROP VIEW IF EXISTS `road`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `road` (
  `road_id` int(11),
  `name` varchar(50),
  `type` varchar(30),
  `start_location` varchar(70),
  `end_location` varchar(70),
  `udf1` varchar(500),
  `udf2` varchar(500),
  `udf3` varchar(500),
  `udf4` varchar(500),
  `udf5` varchar(500),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` datetime,
  `last_modified_on` datetime,
  `last_modified_by` int(11),
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `road_all`
--

DROP TABLE IF EXISTS `road_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `road_all` (
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
  KEY `fk_road_client_all` (`client_id`),
  CONSTRAINT `fk_last_mod_by_road` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_road_client_all` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `road_all`
--

LOCK TABLES `road_all` WRITE;
/*!40000 ALTER TABLE `road_all` DISABLE KEYS */;
/*!40000 ALTER TABLE `road_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `service_plan`
--

DROP TABLE IF EXISTS `service_plan`;
/*!50001 DROP VIEW IF EXISTS `service_plan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `service_plan` (
  `service_plan_id` int(11),
  `toll_operator_id` int(11),
  `name` varchar(100),
  `description` varchar(1000),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `last_modified_on` datetime,
  `last_modified_by` int(11),
  `created_on` datetime,
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `service_plan_all`
--

DROP TABLE IF EXISTS `service_plan_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_plan_all` (
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
  KEY `fk_client_sp` (`client_id`),
  CONSTRAINT `fk_client_sp` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_spa` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_sp_to` FOREIGN KEY (`toll_operator_id`) REFERENCES `toll_operator_all` (`toll_operator_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_plan_all`
--

LOCK TABLES `service_plan_all` WRITE;
/*!40000 ALTER TABLE `service_plan_all` DISABLE KEYS */;
INSERT INTO `service_plan_all` VALUES (-1,NULL,'free',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-06-24 00:42:58',-1,'2011-06-24 00:43:11',-1);
/*!40000 ALTER TABLE `service_plan_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `toll_location`
--

DROP TABLE IF EXISTS `toll_location`;
/*!50001 DROP VIEW IF EXISTS `toll_location`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `toll_location` (
  `toll_location_id` int(11),
  `toll_operator_id` int(11),
  `geometry` geometry,
  `is_covered` varchar(1),
  `is_cash_only` varchar(1),
  `address1` varchar(45),
  `address2` varchar(45),
  `city` varchar(50),
  `state` varchar(50),
  `country` varchar(70),
  `zip` varchar(30),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `last_modified_by` int(11),
  `last_modified_on` datetime,
  `created_on` datetime,
  `client_id` int(11),
  `latitude` decimal(9,6),
  `longitude` decimal(9,6),
  `direction` varchar(45),
  `type` varchar(30)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `toll_location_all`
--

DROP TABLE IF EXISTS `toll_location_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toll_location_all` (
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
  KEY `fk_client_tl` (`client_id`),
  CONSTRAINT `fk_client_tl` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_tla` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_toll_op_id` FOREIGN KEY (`toll_operator_id`) REFERENCES `toll_operator_all` (`toll_operator_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table maps the location with corresponding toll operato';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toll_location_all`
--

LOCK TABLES `toll_location_all` WRITE;
/*!40000 ALTER TABLE `toll_location_all` DISABLE KEYS */;
INSERT INTO `toll_location_all` VALUES (-1,-1,'\0\0\0\0\0\0\0\0\0\0\0\0\0d?\0\0\0\0\0\0d?','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,'2011-06-24 00:34:47','2011-06-24 00:25:20',-1,0.000000,0.000000,NULL,NULL),(1,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-24 16:56:15','2011-06-24 16:56:20',1,33.043205,-117.077179,NULL,NULL),(2,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-24 23:25:38','2011-06-24 23:25:30',1,32.948885,-117.243336,NULL,NULL),(3,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-24 23:28:15','2011-06-24 23:28:07',1,32.978422,-117.252373,NULL,NULL),(4,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-24 23:29:33','2011-06-24 23:29:28',1,33.019540,-117.272702,NULL,NULL),(5,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-24 23:31:47','2011-06-24 23:31:39',1,33.133323,-117.328511,NULL,NULL),(6,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-24 23:33:03','2011-06-24 23:32:56',1,33.299231,-117.464852,NULL,NULL),(7,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-24 23:34:51','2011-06-24 23:34:45',1,33.384683,-117.580699,NULL,NULL),(8,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-24 23:36:29','2011-06-24 23:36:22',1,33.472008,-117.674562,NULL,NULL),(9,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-24 23:37:55','2011-06-24 23:37:49',1,33.616529,-117.709292,NULL,NULL),(10,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-24 23:39:33','2011-06-24 23:39:27',1,33.713199,-117.785564,NULL,NULL),(11,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-24 23:40:53','2011-06-24 23:40:47',1,33.807397,-117.906723,NULL,NULL),(12,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-24 23:42:07','2011-06-24 23:42:01',1,33.939459,-118.095372,NULL,NULL),(13,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-24 23:44:10','2011-06-24 23:44:03',1,32.948930,-117.243648,NULL,NULL),(14,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-24 23:45:22','2011-06-24 23:45:16',1,32.978371,-117.252636,NULL,NULL),(15,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-24 23:46:46','2011-06-24 23:46:40',1,33.019505,-117.272976,NULL,NULL),(16,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-24 23:52:55','2011-06-24 23:52:48',1,33.133256,-117.328823,NULL,NULL),(17,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-24 23:56:48','2011-06-24 23:56:43',1,33.299065,-117.465183,NULL,NULL),(18,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-24 23:58:14','2011-06-24 23:58:06',1,33.384491,-117.580956,NULL,NULL),(19,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-25 00:00:08','2011-06-25 00:00:02',1,33.472007,-117.674805,NULL,NULL),(20,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-25 00:02:01','2011-06-25 00:01:53',1,33.616402,-117.709683,NULL,NULL),(21,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-25 00:03:17','2011-06-25 00:03:11',1,33.713059,-117.785911,NULL,NULL),(22,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-25 00:04:32','2011-06-25 00:04:27',1,33.807268,-117.907111,NULL,NULL),(23,1,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-25 00:06:09','2011-06-25 00:06:04',1,33.939427,-118.095533,NULL,NULL);
/*!40000 ALTER TABLE `toll_location_all` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_tol_loc_aft_ins 
after insert on toll_location_all 
for each row begin
insert into toll_location_history_all(tlh_id,toll_location_id,toll_operator_id,geometry,is_covered,is_cash_only,address1,address2,city,state,country,zip,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action,client_id,latitude,longitude,direction,type) 
values(null,new.toll_location_id,new.toll_operator_id,new.geometry,new.is_covered,new.is_cash_only,new.address1,new.address2,new.city,new.state,new.country,zip,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,
GetStartDate(),GetInfFuture(),'insert',new.client_id,new.latitude,new.longitude,new.direction,new.type);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_tol_loc_aft_upd 
after update on toll_location_all
for each row begin
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
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_tol_loc_bfr_del 
before delete on toll_location_all 
for each row begin
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
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `toll_location_history`
--

DROP TABLE IF EXISTS `toll_location_history`;
/*!50001 DROP VIEW IF EXISTS `toll_location_history`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `toll_location_history` (
  `tlh_id` int(11),
  `toll_location_id` int(11),
  `toll_operator_id` int(11),
  `geometry` geometry,
  `is_covered` varchar(1),
  `is_cash_only` varchar(1),
  `address1` varchar(45),
  `address2` varchar(45),
  `city` varchar(50),
  `state` varchar(50),
  `country` varchar(70),
  `zip` varchar(6),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` datetime,
  `last_modified_on` datetime,
  `last_modified_by` int(11),
  `start_date` datetime,
  `end_date` datetime,
  `action` varchar(20),
  `client_id` int(11),
  `latitude` decimal(9,6),
  `longitude` decimal(9,6)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `toll_location_history_all`
--

DROP TABLE IF EXISTS `toll_location_history_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toll_location_history_all` (
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
  PRIMARY KEY (`tlh_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table maps the location with corresponding toll operato';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toll_location_history_all`
--

LOCK TABLES `toll_location_history_all` WRITE;
/*!40000 ALTER TABLE `toll_location_history_all` DISABLE KEYS */;
/*!40000 ALTER TABLE `toll_location_history_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `toll_operator`
--

DROP TABLE IF EXISTS `toll_operator`;
/*!50001 DROP VIEW IF EXISTS `toll_operator`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `toll_operator` (
  `toll_operator_id` int(11),
  `user_id` int(11),
  `name` varchar(100),
  `is_active` varchar(1),
  `website` varchar(2100),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` datetime,
  `last_modified_on` datetime,
  `last_modified_by` int(11),
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `toll_operator_all`
--

DROP TABLE IF EXISTS `toll_operator_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toll_operator_all` (
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
  KEY `fk_client_to` (`client_id`),
  CONSTRAINT `fk_client_to` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_last_mod_by_toa` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_toll_user` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='List of all the toll operators , their banking details etc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toll_operator_all`
--

LOCK TABLES `toll_operator_all` WRITE;
/*!40000 ALTER TABLE `toll_operator_all` DISABLE KEYS */;
INSERT INTO `toll_operator_all` VALUES (-1,NULL,'freeways','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-06-24 00:44:38','2011-06-24 00:44:44',-1,-1),(1,1,'los angeles gateways','1','www.losangeles.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-06-24 03:46:43','2011-06-24 03:46:43',1,1);
/*!40000 ALTER TABLE `toll_operator_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `toll_price`
--

DROP TABLE IF EXISTS `toll_price`;
/*!50001 DROP VIEW IF EXISTS `toll_price`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `toll_price` (
  `toll_price_id` int(11),
  `toll_location_id` int(11),
  `vehicle_type_id` int(11),
  `cost_price` decimal(19,4),
  `selling_price` decimal(19,4),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `last_modified_by` int(11),
  `last_modified_on` datetime,
  `created_on` datetime,
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `toll_price_all`
--

DROP TABLE IF EXISTS `toll_price_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toll_price_all` (
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
  KEY `fk_client_tp` (`client_id`),
  CONSTRAINT `fk_client_tp` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_tpa` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_tp_tl` FOREIGN KEY (`toll_location_id`) REFERENCES `toll_location_all` (`toll_location_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_tp_vt` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_type_all` (`vehicle_type_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='toll price for each transaction';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toll_price_all`
--

LOCK TABLES `toll_price_all` WRITE;
/*!40000 ALTER TABLE `toll_price_all` DISABLE KEYS */;
INSERT INTO `toll_price_all` VALUES (-1,-1,-1,2.0000,2.2500,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,'2011-06-24 00:45:59','2011-06-24 00:46:05',-1);
/*!40000 ALTER TABLE `toll_price_all` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_toll_price_all_aft_ins 
after insert on toll_price_all 
for each row begin
insert into toll_price_history_all(tph_id,toll_price_id,toll_location_id,vehicle_type_id,cost_price,selling_price,action,udf1,udf2,udf3,udf4,udf5,
flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,client_id)
values(null,new.toll_price_id,new.toll_location_id,new.vehicle_type_id,new.cost_price,new.selling_price,'insert',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,
new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,GetStartDate(),GetInfFuture(),new.client_id);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_toll_price_aft_upd 
after update on toll_price_all
for each row begin
update toll_price_history_all
set end_date = GetEndDate()
where 
toll_price_id = new.toll_price_id
and end_date = GetInfFuture();
insert into toll_price_history_all(tph_id,toll_price_id,toll_location_id,vehicle_type_id,cost_price,selling_price,action,udf1,udf2,udf3,udf4,udf5,
flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,client_id)
values(null,new.toll_price_id,new.toll_location_id,new.vehicle_type_id,new.cost_price,new.selling_price,'update',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,
new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,GetStartDate(),GetInfFuture(),new.client_id);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_tol_price_bfr_del 
before delete on toll_price_all
for each row begin
update toll_price_history_all
set end_date = GetEndDate()
where 
toll_price_id = old.toll_price_id
and end_date = GetInfFuture(); 
insert into toll_price_history_all(tph_id,toll_price_id,toll_location_id,vehicle_type_id,cost_price,selling_price,action,udf1,udf2,udf3,udf4,udf5,
flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,client_id)
values(null,old.toll_price_id,old.toll_location_id,old.vehicle_type_id,old.cost_price,old.selling_price,'delete',old.udf1,old.udf2,old.udf3,old.udf4,old.udf5,
old.flag1,old.flag2,old.flag3,old.flag4,old.flag5,old.created_on,old.last_modified_on,old.last_modified_by,GetStartDate(),GetStartDate(),old.client_id);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `toll_price_history`
--

DROP TABLE IF EXISTS `toll_price_history`;
/*!50001 DROP VIEW IF EXISTS `toll_price_history`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `toll_price_history` (
  `tph_id` int(11),
  `toll_price_id` int(11),
  `toll_location_id` int(11),
  `vehicle_type_id` int(11),
  `direction` varchar(25),
  `cost_price` decimal(19,4),
  `selling_price` decimal(19,4),
  `action` varchar(20),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` datetime,
  `last_modified_on` datetime,
  `last_modified_by` int(11),
  `start_date` datetime,
  `end_date` datetime,
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `toll_price_history_all`
--

DROP TABLE IF EXISTS `toll_price_history_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toll_price_history_all` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='toll price for each transaction';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toll_price_history_all`
--

LOCK TABLES `toll_price_history_all` WRITE;
/*!40000 ALTER TABLE `toll_price_history_all` DISABLE KEYS */;
/*!40000 ALTER TABLE `toll_price_history_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udf_data_all`
--

DROP TABLE IF EXISTS `udf_data_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `udf_data_all` (
  `udf_data_id` int(11) NOT NULL AUTO_INCREMENT,
  `udf_value` varchar(1000) DEFAULT NULL,
  `udf_def_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`udf_data_id`),
  KEY `fk_udfdata_udfdef` (`udf_def_id`),
  CONSTRAINT `fk_udfdata_udfdef` FOREIGN KEY (`udf_def_id`) REFERENCES `udf_definition_all` (`udf_def_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udf_data_all`
--

LOCK TABLES `udf_data_all` WRITE;
/*!40000 ALTER TABLE `udf_data_all` DISABLE KEYS */;
/*!40000 ALTER TABLE `udf_data_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udf_definition_all`
--

DROP TABLE IF EXISTS `udf_definition_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `udf_definition_all` (
  `udf_def_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`udf_def_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udf_definition_all`
--

LOCK TABLES `udf_definition_all` WRITE;
/*!40000 ALTER TABLE `udf_definition_all` DISABLE KEYS */;
INSERT INTO `udf_definition_all` VALUES (-1,NULL);
/*!40000 ALTER TABLE `udf_definition_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `user`
--

DROP TABLE IF EXISTS `user`;
/*!50001 DROP VIEW IF EXISTS `user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user` (
  `user_id` int(11),
  `client_id` int(11),
  `utype_id` int(11),
  `user_name` varchar(320),
  `password` varchar(40),
  `locale` varchar(20),
  `is_active` varchar(1),
  `contact_no` varchar(20),
  `last_login_time` datetime,
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` datetime,
  `last_modified_on` datetime,
  `last_modified_by` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_all`
--

DROP TABLE IF EXISTS `user_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_all` (
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
  KEY `fk_client_id_user` (`client_id`),
  CONSTRAINT `fk_client_id_user` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_utype_user` FOREIGN KEY (`utype_id`) REFERENCES `user_type_all` (`user_type_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='This table has all details about the users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_all`
--

LOCK TABLES `user_all` WRITE;
/*!40000 ALTER TABLE `user_all` DISABLE KEYS */;
INSERT INTO `user_all` VALUES (-1,-1,-1,'test@gmail.com','test',NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-06-24 00:34:38','2011-06-24 00:34:47',-1),(1,1,1,'harish@mobisols.com','mobisols',NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-06-24 03:31:23','2011-06-24 03:31:23',1);
/*!40000 ALTER TABLE `user_all` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_user_all_aft_ins 
after insert on user_all 
for each row begin
insert into user_history_all(user_his_id,user_id,user_name,password,locale,utype_id,last_login_time,is_active,contact_no,client_id,action,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date) 
values(null,new.user_id,new.user_name,new.password,new.locale,new.utype_id,new.last_login_time,new.is_active,new.contact_no,new.client_id,'insert',
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,GetStartDate(),GetInfFuture());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_user_all_aft_upd 
after update on user_all
for each row begin
update user_history_all
set end_date = GetEndDate()
where 
user_id = new.user_id
and end_date =GetInfFuture();
insert into user_history_all(user_his_id,user_id,user_name,password,locale,utype_id,last_login_time,is_active,contact_no,client_id,action,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date) 
values(null,new.user_id,new.user_name,new.password,new.locale,new.utype_id,new.last_login_time,new.is_active,new.contact_no,new.client_id,'update',
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,GetStartDate(),GetInfFuture());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_user_all_bfr_del 
before delete on user_all
for each row begin
update user_history_all
set end_date = GetEndDate()
where 
user_id = old.user_id
and end_date = GetInfFuture(); 
insert into user_history_all(user_his_id,user_id,user_name,password,locale,utype_id,last_login_time,is_active,contact_no,client_id,action,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date) 
values(null,old.user_id,old.user_name,old.password,old.locale,old.utype_id,old.last_login_time,old.is_active,old.contact_no,old.client_id,'delete',
old.udf1,old.udf2,old.udf3,old.udf4,old.udf5,old.flag1,old.flag2,old.flag3,old.flag4,old.flag5,old.created_on,old.last_modified_on,old.last_modified_by,GetStartDate(),GetStartDate());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `user_balance`
--

DROP TABLE IF EXISTS `user_balance`;
/*!50001 DROP VIEW IF EXISTS `user_balance`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_balance` (
  `ubal_id` int(11),
  `user_id` int(11),
  `balance` decimal(19,4),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `last_modified_by` int(11),
  `last_modified_on` datetime,
  `created_on` datetime,
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_balance_all`
--

DROP TABLE IF EXISTS `user_balance_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_balance_all` (
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
  KEY `fk_client_ub` (`client_id`),
  CONSTRAINT `fk_client_ub` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_uba` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_ubal_users` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_balance_all`
--

LOCK TABLES `user_balance_all` WRITE;
/*!40000 ALTER TABLE `user_balance_all` DISABLE KEYS */;
INSERT INTO `user_balance_all` VALUES (-1,-1,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,'2011-06-24 00:53:41','2011-06-24 00:53:48',-1),(1,1,20.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,'2011-06-24 03:32:21','2011-06-24 03:32:21',1);
/*!40000 ALTER TABLE `user_balance_all` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_bal_log_aft_ins 
after insert on user_balance_all
for each row begin
insert into user_balance_log_all(ublog_id,ubal_id,delta,timestamp,action,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,last_modified_by,last_modified_on,created_on,client_id)
values(null,new.ubal_id,0,sysdate(),'new account created',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,
new.last_modified_by,new.last_modified_on,new.created_on,new.client_id);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_bal_log_aft_upd 
after update on user_balance_all
for each row begin
insert into user_balance_log_all (ublog_id,ubal_id,delta,timestamp,action,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,last_modified_by,last_modified_on,created_on,client_id)
values(null,new.ubal_id,(new.balanceold.balance),sysdate(),'update',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,
new.last_modified_by,new.last_modified_on,new.created_on,new.client_id);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_bal_log_bfr_del 
before delete on user_balance_all
for each row begin
insert into user_balance_log_all (ublog_id,ubal_id,delta,timestamp,action,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,last_modified_by,last_modified_on,created_on,client_id)
values(null,old.ubal_id,old.balanceold.balance,sysdate(),'delete',old.udf1,old.udf2,old.udf3,old.udf4,old.udf5,old.flag1,old.flag2,old.flag3,old.flag4,old.flag5,
old.last_modified_by,old.last_modified_on,old.created_on,old.client_id);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `user_balance_log`
--

DROP TABLE IF EXISTS `user_balance_log`;
/*!50001 DROP VIEW IF EXISTS `user_balance_log`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_balance_log` (
  `ublog_id` int(11),
  `ubal_id` int(11),
  `delta` decimal(19,4),
  `timestamp` datetime,
  `action` varchar(200),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `last_modified_by` int(11),
  `last_modified_on` datetime,
  `created_on` datetime,
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_balance_log_all`
--

DROP TABLE IF EXISTS `user_balance_log_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_balance_log_all` (
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
  KEY `fk_client_ubl` (`client_id`),
  CONSTRAINT `fk_client_ubl` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_ubla` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_ublog_ubal` FOREIGN KEY (`ubal_id`) REFERENCES `user_balance_all` (`ubal_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_balance_log_all`
--

LOCK TABLES `user_balance_log_all` WRITE;
/*!40000 ALTER TABLE `user_balance_log_all` DISABLE KEYS */;
INSERT INTO `user_balance_log_all` VALUES (1,-1,0.0000,'2011-06-24 00:54:05','new account created',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,'2011-06-24 00:53:41','2011-06-24 00:53:48',-1),(2,1,0.0000,'2011-06-24 03:32:21','new account created',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,'2011-06-24 03:32:21','2011-06-24 03:32:21',1);
/*!40000 ALTER TABLE `user_balance_log_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `user_history`
--

DROP TABLE IF EXISTS `user_history`;
/*!50001 DROP VIEW IF EXISTS `user_history`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_history` (
  `user_his_id` int(11),
  `user_id` int(11),
  `user_name` varchar(320),
  `password` varchar(40),
  `locale` varchar(20),
  `utype_id` int(11),
  `last_login_time` datetime,
  `is_active` varchar(1),
  `contact_no` varchar(20),
  `client_id` int(11),
  `action` varchar(20),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` datetime,
  `last_modified_on` datetime,
  `last_modified_by` int(11),
  `start_date` datetime,
  `end_date` datetime
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_history_all`
--

DROP TABLE IF EXISTS `user_history_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_history_all` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table has all details about the users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_history_all`
--

LOCK TABLES `user_history_all` WRITE;
/*!40000 ALTER TABLE `user_history_all` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_history_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `user_notification`
--

DROP TABLE IF EXISTS `user_notification`;
/*!50001 DROP VIEW IF EXISTS `user_notification`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_notification` (
  `user_notification_id` int(11),
  `user_id` int(11),
  `user_notification_type_id` int(11),
  `timestamp` datetime,
  `description` varchar(1000),
  `udf1` varchar(500),
  `udf2` varchar(500),
  `udf3` varchar(500),
  `udf4` varchar(500),
  `udf5` varchar(500),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` datetime,
  `last_modified_on` datetime,
  `last_modified_by` int(11),
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_notification_all`
--

DROP TABLE IF EXISTS `user_notification_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_notification_all` (
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
  KEY `fk_unotify_client_all` (`client_id`),
  CONSTRAINT `fk_last_mod_by_notification` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_unotify_client_all` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_user_all` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_user_notification_type_all` FOREIGN KEY (`user_notification_type_id`) REFERENCES `user_notification_type_all` (`user_notification_type_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notification_all`
--

LOCK TABLES `user_notification_all` WRITE;
/*!40000 ALTER TABLE `user_notification_all` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_notification_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `user_notification_settings`
--

DROP TABLE IF EXISTS `user_notification_settings`;
/*!50001 DROP VIEW IF EXISTS `user_notification_settings`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_notification_settings` (
  `user_notification_settings_id` int(11),
  `user_id` int(11),
  `user_notification_type_id` int(11),
  `udf1` varchar(500),
  `udf2` varchar(500),
  `udf3` varchar(500),
  `udf4` varchar(500),
  `udf5` varchar(500),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` datetime,
  `last_modified_on` datetime,
  `last_modified_by` int(11),
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_notification_settings_all`
--

DROP TABLE IF EXISTS `user_notification_settings_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_notification_settings_all` (
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
  KEY `fk_not_settings_client_all` (`client_id`),
  CONSTRAINT `fk_last_mod_by_notify_settings` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_not_settings_client_all` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_not_settings_user_all` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_settings_user_notification_type_all` FOREIGN KEY (`user_notification_type_id`) REFERENCES `user_notification_type_all` (`user_notification_type_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notification_settings_all`
--

LOCK TABLES `user_notification_settings_all` WRITE;
/*!40000 ALTER TABLE `user_notification_settings_all` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_notification_settings_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `user_notification_type`
--

DROP TABLE IF EXISTS `user_notification_type`;
/*!50001 DROP VIEW IF EXISTS `user_notification_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_notification_type` (
  `user_notification_type_id` int(11),
  `notification_type` varchar(100),
  `description` varchar(500),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` datetime,
  `last_modified_on` datetime,
  `last_modified_by` int(11),
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_notification_type_all`
--

DROP TABLE IF EXISTS `user_notification_type_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_notification_type_all` (
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
  KEY `fk_user_noti_type_client_all` (`client_id`),
  CONSTRAINT `fk_last_mod_by_not_type` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_user_noti_type_client_all` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notification_type_all`
--

LOCK TABLES `user_notification_type_all` WRITE;
/*!40000 ALTER TABLE `user_notification_type_all` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_notification_type_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `user_payment_detail`
--

DROP TABLE IF EXISTS `user_payment_detail`;
/*!50001 DROP VIEW IF EXISTS `user_payment_detail`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_payment_detail` (
  `upd_id` int(11),
  `user_id` int(11),
  `cc_type_id` int(11),
  `cc_ac_name` varchar(45),
  `cc_number` varchar(15),
  `cc_exp_month` int(11),
  `cc_exp_year` year(4),
  `cc_cvv` int(11),
  `bank_routing` decimal(9,0),
  `bank_account` decimal(10,0),
  `pay_prefer` varchar(1),
  `address1` varchar(100),
  `address2` varchar(100),
  `city` varchar(100),
  `state` varchar(100),
  `country` varchar(100),
  `zip` varchar(10),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `last_modified_by` int(11),
  `last_modified_on` datetime,
  `created_on` datetime,
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_payment_detail_all`
--

DROP TABLE IF EXISTS `user_payment_detail_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_payment_detail_all` (
  `upd_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `cc_type_id` int(11) DEFAULT NULL,
  `cc_ac_name` varchar(45) DEFAULT NULL,
  `cc_number` varchar(15) DEFAULT NULL,
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
  KEY `fk_client_upd` (`client_id`),
  CONSTRAINT `fk_cctype_upd` FOREIGN KEY (`cc_type_id`) REFERENCES `cc_type_all` (`cc_type_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_client_upd` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_upda` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_upd_user` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='All the billing details of the user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_payment_detail_all`
--

LOCK TABLES `user_payment_detail_all` WRITE;
/*!40000 ALTER TABLE `user_payment_detail_all` DISABLE KEYS */;
INSERT INTO `user_payment_detail_all` VALUES (-1,-1,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1,1,1,'Harish','407 445 678 543',6,2020,453,540,12345,'1','10005,Wall street',NULL,'new york','new york','US','54321',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,'2011-06-24 03:38:34','2011-06-24 03:38:34',1);
/*!40000 ALTER TABLE `user_payment_detail_all` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_user_payment_aft_ins after insert on user_payment_detail_all 
FOR EACH ROW
begin
insert into user_payment_detail_history_all(updh_id,upd_id,user_id,cc_type_id,cc_ac_name,cc_number,cc_exp_month,cc_exp_year,cc_cvv,bank_routing,bank_account,address1,address2,city,
state,country,zip,pay_prefer,action,udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,client_id) 
values(null,new.upd_id,new.user_id,new.cc_type_id,new.cc_ac_name,new.cc_number,new.cc_exp_month,new.cc_exp_year,new.cc_cvv,new.bank_routing,new.bank_account,new.address1,new.address2,
new.city,new.state,new.country,new.zip,new.pay_prefer,'insert',new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,
new.last_modified_on,new.last_modified_by,GetStartDate(),GetInfFuture(),new.client_id);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_user_payment_aft_upd 
after update on user_payment_detail_all
for each row
begin
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
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_user_payment_bfr_del 
before delete on user_payment_detail_all 
for each row
begin
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
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `user_payment_detail_history`
--

DROP TABLE IF EXISTS `user_payment_detail_history`;
/*!50001 DROP VIEW IF EXISTS `user_payment_detail_history`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_payment_detail_history` (
  `updh_id` int(11),
  `upd_id` int(11),
  `user_id` int(11),
  `cc_type_id` int(11),
  `cc_ac_name` varchar(45),
  `cc_number` varchar(15),
  `cc_exp_month` int(11),
  `cc_exp_year` year(4),
  `cc_cvv` int(11),
  `bank_routing` decimal(9,0),
  `bank_account` decimal(10,0),
  `address1` varchar(100),
  `address2` varchar(100),
  `city` varchar(100),
  `state` varchar(100),
  `country` varchar(100),
  `zip` varchar(10),
  `pay_prefer` varchar(1),
  `action` varchar(20),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` datetime,
  `last_modified_on` datetime,
  `last_modified_by` int(11),
  `start_date` datetime,
  `end_date` datetime,
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_payment_detail_history_all`
--

DROP TABLE IF EXISTS `user_payment_detail_history_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_payment_detail_history_all` (
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_payment_detail_history_all`
--

LOCK TABLES `user_payment_detail_history_all` WRITE;
/*!40000 ALTER TABLE `user_payment_detail_history_all` DISABLE KEYS */;
INSERT INTO `user_payment_detail_history_all` VALUES (1,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','insert',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-12 13:24:09','2011-07-12 13:24:03',1,'2011-07-12 13:24:21','2011-07-12 13:26:38',1),(2,2,NULL,NULL,NULL,NULL,7,2020,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','update',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-12 13:24:09','2011-07-12 13:24:03',1,'2011-07-12 13:26:39','2011-07-12 13:27:17',1),(3,2,NULL,NULL,NULL,NULL,7,2020,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','delete',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-12 13:24:09','2011-07-12 13:24:03',1,'2011-07-12 13:27:18','2011-07-12 13:27:18',1);
/*!40000 ALTER TABLE `user_payment_detail_history_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `user_service`
--

DROP TABLE IF EXISTS `user_service`;
/*!50001 DROP VIEW IF EXISTS `user_service`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_service` (
  `user_service_id` int(11),
  `user_id` int(11),
  `service_id` int(11),
  `start_date` datetime,
  `end_date` datetime,
  `priority` int(11),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` datetime,
  `last_modified_on` datetime,
  `last_modified_by` int(11),
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_service_all`
--

DROP TABLE IF EXISTS `user_service_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_service_all` (
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
  KEY `fk_client_us` (`client_id`),
  CONSTRAINT `fk_client_us` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_las_mod_by` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_us_ser` FOREIGN KEY (`service_id`) REFERENCES `service_plan_all` (`service_plan_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_us_user` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_service_all`
--

LOCK TABLES `user_service_all` WRITE;
/*!40000 ALTER TABLE `user_service_all` DISABLE KEYS */;
INSERT INTO `user_service_all` VALUES (-1,-1,-1,'2011-06-24 01:08:22','2011-06-25 01:08:30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-06-24 01:09:15','2011-06-24 01:09:23',-1,-1);
/*!40000 ALTER TABLE `user_service_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!50001 DROP VIEW IF EXISTS `user_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_type` (
  `user_type_id` int(11),
  `name` varchar(45),
  `description` varchar(200),
  `min_balance` decimal(19,4) unsigned zerofill,
  `min_balance_type` varchar(45),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` datetime,
  `last_modified_on` datetime,
  `last_modified_by` int(11),
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_type_all`
--

DROP TABLE IF EXISTS `user_type_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_type_all` (
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
  KEY `fk_client_ut` (`client_id`),
  CONSTRAINT `fk_client_ut` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_uta` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_type_all`
--

LOCK TABLES `user_type_all` WRITE;
/*!40000 ALTER TABLE `user_type_all` DISABLE KEYS */;
INSERT INTO `user_type_all` VALUES (-1,'free',NULL,000000000000000.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-06-24 00:36:40','2011-06-24 00:36:45',-1,-1),(1,'owner',NULL,000000000000000.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-06-24 03:29:49','2011-06-24 03:29:49',-1,1);
/*!40000 ALTER TABLE `user_type_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `user_vehicle`
--

DROP TABLE IF EXISTS `user_vehicle`;
/*!50001 DROP VIEW IF EXISTS `user_vehicle`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_vehicle` (
  `user_vehicle_id` int(11),
  `user_id` int(11),
  `vehicle_type_id` int(11),
  `vehicle_start_date` datetime,
  `vehicle_end_date` datetime,
  `is_active` varchar(1),
  `registration_no` varchar(45),
  `registered_state` varchar(45),
  `owner_type_id` int(11),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `last_modified_by` int(11),
  `last_modified_on` datetime,
  `created_on` datetime,
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_vehicle_all`
--

DROP TABLE IF EXISTS `user_vehicle_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_vehicle_all` (
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
  PRIMARY KEY (`user_vehicle_id`),
  UNIQUE KEY `uk_user_reg_vehicle` (`user_id`,`registration_no`),
  KEY `fk_vt_user_vehicle` (`vehicle_type_id`),
  KEY `fk_user_user_vehicle` (`user_id`),
  KEY `fk_mod_on` (`last_modified_by`),
  KEY `fk_uv_co` (`owner_type_id`),
  KEY `fk_client_uv` (`client_id`),
  CONSTRAINT `fk_client_uv` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_uva` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_user_user_vehicle` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_uv_co` FOREIGN KEY (`owner_type_id`) REFERENCES `owner_type_all` (`owner_type_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_vt_user_vehicle` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_type_all` (`vehicle_type_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='List of vehicles registered by the user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_vehicle_all`
--

LOCK TABLES `user_vehicle_all` WRITE;
/*!40000 ALTER TABLE `user_vehicle_all` DISABLE KEYS */;
INSERT INTO `user_vehicle_all` VALUES (-1,-1,-1,NULL,NULL,'1','1234','xyz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,'2011-06-24 01:13:26','2011-06-24 01:13:32',-1),(1,1,1,'2011-06-24 03:44:17',NULL,'Y','123','san diego',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-06-24 03:44:17','2011-06-24 03:44:17',1);
/*!40000 ALTER TABLE `user_vehicle_all` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_user_vehicle_aft_ins 
after insert on user_vehicle_all 
for each row begin
insert into user_vehicle_history_all (uvh_id,user_vehicle_id,user_id,vehicle_type_id,is_active,vehicle_start_date,vehicle_end_date,registration_no,registered_state,owner_type_id,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action,client_id) 
values(null,new.user_vehicle_id,new.user_id,new.vehicle_type_id,new.is_active,new.vehicle_start_date,new.vehicle_end_date,new.registration_no,new.registered_state,new.owner_type_id,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,
GetStartDate(),GetInfFuture(),'insert',new.client_id);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_user_vehicle_aft_upd 
after update on user_vehicle_all
for each row begin
update user_vehicle_history_all
set end_date = GetEndDate()
where 
user_vehicle_id = new.user_vehicle_id
and end_date = GetInfFuture();
insert into user_vehicle_history_all(uvh_id,user_vehicle_id,user_id,vehicle_type_id,is_active,vehicle_start_date,vehicle_end_date,registration_no,registered_state,owner_type_id,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action,client_id) 
values(null,new.user_vehicle_id,new.user_id,new.vehicle_type_id,new.is_active,new.vehicle_start_date,new.vehicle_end_date,new.registration_no,new.registered_state,new.owner_type_id,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,
GetStartDate(),GetInfFuture(),'update',new.client_id);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_user_vehicle_bfr_del 
before delete on user_vehicle_all
for each row begin
update user_vehicle_history_all
set end_date = GetEndDate()
where 
user_vehicle_id = old.user_vehicle_id
and end_date = GetInfFuture(); 
insert into user_vehicle_history_all(uvh_id,user_vehicle_id,user_id,vehicle_type_id,is_active,vehicle_start_date,vehicle_end_date,registration_no,registered_state,owner_type_id,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action,client_id) 
values(null,old.user_vehicle_id,old.user_id,old.vehicle_type_id,old.is_active,old.vehicle_start_date,old.vehicle_end_date,old.registration_no,old.registered_state,old.owner_type_id,
old.udf1,old.udf2,old.udf3,old.udf4,old.udf5,old.flag1,old.flag2,old.flag3,old.flag4,old.flag5,old.created_on,old.last_modified_on,old.last_modified_by,
GetStartDate(),GetStartDate(),'delete',old.client_id);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `user_vehicle_history`
--

DROP TABLE IF EXISTS `user_vehicle_history`;
/*!50001 DROP VIEW IF EXISTS `user_vehicle_history`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_vehicle_history` (
  `uvh_id` int(11),
  `user_vehicle_id` int(11),
  `user_id` int(11),
  `vehicle_type_id` int(11),
  `is_active` varchar(1),
  `vehicle_start_date` datetime,
  `vehicle_end_date` datetime,
  `registration_no` varchar(45),
  `registered_state` varchar(45),
  `owner_type_id` int(11),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` datetime,
  `last_modified_on` datetime,
  `last_modified_by` int(11),
  `start_date` datetime,
  `end_date` datetime,
  `action` varchar(20),
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_vehicle_history_all`
--

DROP TABLE IF EXISTS `user_vehicle_history_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_vehicle_history_all` (
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
  PRIMARY KEY (`uvh_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='List of vehicles registered by the user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_vehicle_history_all`
--

LOCK TABLES `user_vehicle_history_all` WRITE;
/*!40000 ALTER TABLE `user_vehicle_history_all` DISABLE KEYS */;
INSERT INTO `user_vehicle_history_all` VALUES (1,1,1,1,'Y','2011-07-12 09:59:41','2011-07-12 09:59:45','123','san diego',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2011-07-12 10:00:22','2011-07-27 10:00:27','insert',1);
/*!40000 ALTER TABLE `user_vehicle_history_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vehicle_movement_log`
--

DROP TABLE IF EXISTS `vehicle_movement_log`;
/*!50001 DROP VIEW IF EXISTS `vehicle_movement_log`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vehicle_movement_log` (
  `vml_id` int(11),
  `vml_type_id` int(11),
  `uvh_id` int(11),
  `toll_location_id` int(11),
  `geometry` geometry,
  `timestamp` datetime,
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `last_modified_on` datetime,
  `last_modified_by` int(11),
  `created_on` datetime,
  `client_id` int(11),
  `latitude` decimal(9,6),
  `longitude` decimal(9,6),
  `status` varchar(45),
  `toll_session_id` varchar(1000),
  `distance` float
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vehicle_movement_log_all`
--

DROP TABLE IF EXISTS `vehicle_movement_log_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_movement_log_all` (
  `vml_id` int(11) NOT NULL AUTO_INCREMENT,
  `vml_type_id` int(11) NOT NULL,
  `uvh_id` int(11) NOT NULL,
  `toll_location_id` int(11) NOT NULL,
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
  `toll_session_id` varchar(1000) NOT NULL,
  `distance` float NOT NULL,
  PRIMARY KEY (`vml_id`),
  KEY `fk_vml_uvh` (`uvh_id`),
  KEY `fk_vml_vmlt` (`vml_type_id`),
  KEY `fk_last_mod_by_vmla` (`last_modified_by`),
  KEY `fk_client_vml` (`client_id`),
  KEY `fk_vml_toll_location` (`toll_location_id`),
  CONSTRAINT `fk_client_vml` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_vmla` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_vml_toll_location` FOREIGN KEY (`toll_location_id`) REFERENCES `toll_location_all` (`toll_location_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_vml_uvh` FOREIGN KEY (`uvh_id`) REFERENCES `user_vehicle_history_all` (`uvh_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_vml_vmlt` FOREIGN KEY (`vml_type_id`) REFERENCES `vml_type_all` (`vml_type_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=723 DEFAULT CHARSET=latin1 COMMENT='Trackiing the vehicle movement ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_movement_log_all`
--

LOCK TABLES `vehicle_movement_log_all` WRITE;
/*!40000 ALTER TABLE `vehicle_movement_log_all` DISABLE KEYS */;
INSERT INTO `vehicle_movement_log_all` VALUES (-1,-1,1,-1,'\0\0\0\0\0\0\0\0\0\0\0\0\0d?\0\0\0\0\0\0d?','2011-06-24 01:17:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-06-24 01:17:14',-1,'2011-06-24 01:17:28',-1,0.000000,0.000000,'tentative','',0),(1,1,1,1,NULL,'2020-01-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-12 20:32:25',1,'2011-07-12 20:32:25',1,37.134500,-122.345650,NULL,'1#2011-07-12 20:32:25.223',117.149),(2,1,1,1,NULL,'2020-01-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-12 21:21:58',1,'2011-07-12 21:21:58',1,37.134500,-122.345650,NULL,'1#2011-07-12 21:21:58.354',117.149),(3,1,1,1,NULL,'2020-01-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-13 04:57:01',1,'2011-07-13 04:57:01',1,37.134500,-122.345650,NULL,'1#2011-07-13 04:57:01.417',117.149),(4,1,1,1,NULL,'2020-01-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-14 23:28:21',1,'2011-07-14 23:28:21',1,37.134500,-122.345650,NULL,'1#2011-07-14 23:28:21.113',117.149),(5,1,1,1,NULL,'2020-01-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-14 23:28:56',1,'2011-07-14 23:28:56',1,37.134500,-122.345650,NULL,'1#2011-07-14 23:28:56.39',117.149),(6,1,1,1,NULL,'2020-01-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-14 23:33:43',1,'2011-07-14 23:33:43',1,37.134500,-122.345650,NULL,'1#2011-07-14 23:33:43.744',117.149),(7,1,1,1,NULL,'2020-01-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-14 23:57:24',1,'2011-07-14 23:57:24',1,37.134500,-122.345650,NULL,'1#2011-07-14 23:57:24.922',117.149),(8,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-14 23:57:59',1,'2011-07-14 23:57:59',1,31.223400,-122.121300,NULL,'1#2011-07-14 23:57:59.861',117.091),(9,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-14 23:58:07',1,'2011-07-14 23:58:07',1,31.223400,-122.121300,NULL,'1#2011-07-14 23:58:07.308',117.091),(10,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-14 23:58:14',1,'2011-07-14 23:58:14',1,31.223400,-122.121300,NULL,'1#2011-07-14 23:58:14.911',117.091),(11,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-14 23:58:22',1,'2011-07-14 23:58:22',1,31.223400,-122.121300,NULL,'1#2011-07-14 23:58:22.62',117.091),(12,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-14 23:58:29',1,'2011-07-14 23:58:29',1,31.223400,-122.121300,NULL,'1#2011-07-14 23:58:29.915',117.091),(13,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-14 23:58:37',1,'2011-07-14 23:58:37',1,31.223400,-122.121300,NULL,'1#2011-07-14 23:58:37.262',117.091),(14,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-14 23:58:44',1,'2011-07-14 23:58:44',1,31.223400,-122.121300,NULL,'1#2011-07-14 23:58:44.747',117.091),(15,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-14 23:58:53',1,'2011-07-14 23:58:53',1,31.223400,-122.121300,NULL,'1#2011-07-14 23:58:53.101',117.091),(16,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-14 23:59:00',1,'2011-07-14 23:59:00',1,31.223400,-122.121300,NULL,'1#2011-07-14 23:59:00.79',117.091),(17,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-14 23:59:08',1,'2011-07-14 23:59:08',1,31.223400,-122.121300,NULL,'1#2011-07-14 23:59:08.761',117.091),(18,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-14 23:59:15',1,'2011-07-14 23:59:15',1,31.223400,-122.121300,NULL,'1#2011-07-14 23:59:15.956',117.091),(19,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-14 23:59:23',1,'2011-07-14 23:59:23',1,31.223400,-122.121300,NULL,'1#2011-07-14 23:59:23.162',117.091),(20,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-14 23:59:30',1,'2011-07-14 23:59:30',1,31.223400,-122.121300,NULL,'1#2011-07-14 23:59:30.849',117.091),(21,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-14 23:59:38',1,'2011-07-14 23:59:38',1,31.223400,-122.121300,NULL,'1#2011-07-14 23:59:38.365',117.091),(22,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-14 23:59:45',1,'2011-07-14 23:59:45',1,31.223400,-122.121300,NULL,'1#2011-07-14 23:59:45.833',117.091),(23,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-14 23:59:53',1,'2011-07-14 23:59:53',1,31.223400,-122.121300,NULL,'1#2011-07-14 23:59:53.144',117.091),(24,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:00:01',1,'2011-07-15 00:00:01',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:00:01.214',117.091),(25,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:00:08',1,'2011-07-15 00:00:08',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:00:08.782',117.091),(26,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:00:17',1,'2011-07-15 00:00:17',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:00:17.01',117.091),(27,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:00:24',1,'2011-07-15 00:00:24',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:00:24.363',117.091),(28,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:00:31',1,'2011-07-15 00:00:31',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:00:31.693',117.091),(29,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:00:38',1,'2011-07-15 00:00:38',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:00:38.963',117.091),(30,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:00:46',1,'2011-07-15 00:00:46',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:00:46.694',117.091),(31,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:00:54',1,'2011-07-15 00:00:54',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:00:54.126',117.091),(32,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:01:01',1,'2011-07-15 00:01:01',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:01:01.599',117.091),(33,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:01:09',1,'2011-07-15 00:01:09',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:01:09.123',117.091),(34,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:01:17',1,'2011-07-15 00:01:17',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:01:17.115',117.091),(35,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:01:25',1,'2011-07-15 00:01:25',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:01:25.062',117.091),(36,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:01:32',1,'2011-07-15 00:01:32',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:01:32.514',117.091),(37,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:01:39',1,'2011-07-15 00:01:39',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:01:39.7',117.091),(38,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:01:47',1,'2011-07-15 00:01:47',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:01:47.056',117.091),(39,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:01:54',1,'2011-07-15 00:01:54',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:01:54.626',117.091),(40,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:02:01',1,'2011-07-15 00:02:01',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:02:01.977',117.091),(41,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:02:09',1,'2011-07-15 00:02:09',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:02:09.727',117.091),(42,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:02:17',1,'2011-07-15 00:02:17',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:02:17.417',117.091),(43,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:02:25',1,'2011-07-15 00:02:25',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:02:25.065',117.091),(44,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:02:32',1,'2011-07-15 00:02:32',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:02:32.741',117.091),(45,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:02:40',1,'2011-07-15 00:02:40',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:02:40.211',117.091),(46,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:02:48',1,'2011-07-15 00:02:48',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:02:48.102',117.091),(47,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:02:55',1,'2011-07-15 00:02:55',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:02:55.427',117.091),(48,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:03:02',1,'2011-07-15 00:03:02',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:03:02.678',117.091),(49,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:03:10',1,'2011-07-15 00:03:10',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:03:10.153',117.091),(50,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:03:17',1,'2011-07-15 00:03:17',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:03:17.582',117.091),(51,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:03:25',1,'2011-07-15 00:03:25',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:03:25.151',117.091),(52,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:03:32',1,'2011-07-15 00:03:32',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:03:32.302',117.091),(53,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:03:39',1,'2011-07-15 00:03:39',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:03:39.614',117.091),(54,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:03:46',1,'2011-07-15 00:03:46',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:03:46.843',117.091),(55,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:03:54',1,'2011-07-15 00:03:54',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:03:54.694',117.091),(56,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:04:02',1,'2011-07-15 00:04:02',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:04:02.462',117.091),(57,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:04:09',1,'2011-07-15 00:04:09',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:04:09.618',117.091),(58,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:04:17',1,'2011-07-15 00:04:17',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:04:17.166',117.091),(59,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:04:24',1,'2011-07-15 00:04:24',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:04:24.576',117.091),(60,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:04:31',1,'2011-07-15 00:04:31',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:04:31.929',117.091),(61,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:04:39',1,'2011-07-15 00:04:39',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:04:39.596',117.091),(62,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:04:47',1,'2011-07-15 00:04:47',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:04:47.248',117.091),(63,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:04:54',1,'2011-07-15 00:04:54',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:04:54.861',117.091),(64,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:05:02',1,'2011-07-15 00:05:02',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:05:02.727',117.091),(65,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:05:09',1,'2011-07-15 00:05:09',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:05:09.917',117.091),(66,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:05:17',1,'2011-07-15 00:05:17',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:05:17.828',117.091),(67,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:05:25',1,'2011-07-15 00:05:25',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:05:25.218',117.091),(68,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:05:32',1,'2011-07-15 00:05:32',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:05:32.373',117.091),(69,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:05:39',1,'2011-07-15 00:05:39',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:05:39.583',117.091),(70,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:05:47',1,'2011-07-15 00:05:47',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:05:47.375',117.091),(71,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:05:55',1,'2011-07-15 00:05:55',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:05:55.159',117.091),(72,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:06:02',1,'2011-07-15 00:06:02',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:06:02.725',117.091),(73,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:06:10',1,'2011-07-15 00:06:10',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:06:10.664',117.091),(74,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:06:17',1,'2011-07-15 00:06:17',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:06:17.712',117.091),(75,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:06:25',1,'2011-07-15 00:06:25',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:06:25.122',117.091),(76,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:06:32',1,'2011-07-15 00:06:32',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:06:32.556',117.091),(77,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:06:40',1,'2011-07-15 00:06:40',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:06:40.62',117.091),(78,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:06:47',1,'2011-07-15 00:06:47',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:06:47.816',117.091),(79,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:06:55',1,'2011-07-15 00:06:55',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:06:55.482',117.091),(80,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:07:02',1,'2011-07-15 00:07:02',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:07:02.715',117.091),(81,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:07:10',1,'2011-07-15 00:07:10',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:07:10.404',117.091),(82,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:07:18',1,'2011-07-15 00:07:18',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:07:18.293',117.091),(83,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:07:25',1,'2011-07-15 00:07:25',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:07:25.921',117.091),(84,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:07:33',1,'2011-07-15 00:07:33',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:07:33.152',117.091),(85,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:07:42',1,'2011-07-15 00:07:42',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:07:42.436',117.091),(86,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:07:49',1,'2011-07-15 00:07:49',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:07:49.631',117.091),(87,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:07:57',1,'2011-07-15 00:07:57',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:07:57.56',117.091),(88,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:08:05',1,'2011-07-15 00:08:05',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:08:05.29',117.091),(89,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:08:12',1,'2011-07-15 00:08:12',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:08:12.916',117.091),(90,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:08:21',1,'2011-07-15 00:08:21',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:08:21.069',117.091),(91,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:08:28',1,'2011-07-15 00:08:28',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:08:28.225',117.091),(92,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:08:35',1,'2011-07-15 00:08:35',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:08:35.413',117.091),(93,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:08:43',1,'2011-07-15 00:08:43',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:08:43.084',117.091),(94,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:08:51',1,'2011-07-15 00:08:51',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:08:51.02',117.091),(95,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:08:58',1,'2011-07-15 00:08:58',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:08:58.42',117.091),(96,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:09:05',1,'2011-07-15 00:09:05',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:09:05.641',117.091),(97,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:09:14',1,'2011-07-15 00:09:14',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:09:14.258',117.091),(98,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:09:21',1,'2011-07-15 00:09:21',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:09:21.631',117.091),(99,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:09:29',1,'2011-07-15 00:09:29',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:09:29.444',117.091),(100,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:09:37',1,'2011-07-15 00:09:37',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:09:37.005',117.091),(101,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:09:44',1,'2011-07-15 00:09:44',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:09:44.78',117.091),(102,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:09:52',1,'2011-07-15 00:09:52',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:09:52.061',117.091),(103,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:10:00',1,'2011-07-15 00:10:00',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:10:00.038',117.091),(104,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:10:07',1,'2011-07-15 00:10:07',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:10:07.658',117.091),(105,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:10:15',1,'2011-07-15 00:10:15',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:10:15.083',117.091),(106,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:10:22',1,'2011-07-15 00:10:22',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:10:22.736',117.091),(107,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:10:30',1,'2011-07-15 00:10:30',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:10:30.872',117.091),(108,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:10:38',1,'2011-07-15 00:10:38',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:10:38.973',117.091),(109,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:10:46',1,'2011-07-15 00:10:46',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:10:46.746',117.091),(110,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:10:56',1,'2011-07-15 00:10:56',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:10:56.604',117.091),(111,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:11:03',1,'2011-07-15 00:11:03',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:11:03.818',117.091),(112,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:11:11',1,'2011-07-15 00:11:11',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:11:11.743',117.091),(113,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:11:18',1,'2011-07-15 00:11:18',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:11:18.927',117.091),(114,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:11:26',1,'2011-07-15 00:11:26',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:11:26.756',117.091),(115,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:11:33',1,'2011-07-15 00:11:33',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:11:33.786',117.091),(116,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:11:41',1,'2011-07-15 00:11:41',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:11:41.252',117.091),(117,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:11:48',1,'2011-07-15 00:11:48',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:11:48.878',117.091),(118,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:12:00',1,'2011-07-15 00:12:00',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:12:00.35',117.091),(119,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:12:07',1,'2011-07-15 00:12:07',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:12:07.627',117.091),(120,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:12:15',1,'2011-07-15 00:12:15',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:12:15.39',117.091),(121,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:12:23',1,'2011-07-15 00:12:23',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:12:23.217',117.091),(122,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:12:30',1,'2011-07-15 00:12:30',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:12:30.785',117.091),(123,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:12:38',1,'2011-07-15 00:12:38',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:12:38.11',117.091),(124,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:12:45',1,'2011-07-15 00:12:45',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:12:45.552',117.091),(125,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:12:52',1,'2011-07-15 00:12:52',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:12:52.913',117.091),(126,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:13:02',1,'2011-07-15 00:13:02',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:13:02.639',117.091),(127,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:13:13',1,'2011-07-15 00:13:13',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:13:13.408',117.091),(128,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:13:20',1,'2011-07-15 00:13:20',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:13:20.705',117.091),(129,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:13:28',1,'2011-07-15 00:13:28',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:13:28.059',117.091),(130,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:13:35',1,'2011-07-15 00:13:35',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:13:35.464',117.091),(131,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:13:42',1,'2011-07-15 00:13:42',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:13:42.819',117.091),(132,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:13:50',1,'2011-07-15 00:13:50',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:13:50.229',117.091),(133,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:13:57',1,'2011-07-15 00:13:57',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:13:57.983',117.091),(134,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:14:06',1,'2011-07-15 00:14:06',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:14:06.056',117.091),(135,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:14:13',1,'2011-07-15 00:14:13',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:14:13.522',117.091),(136,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:14:20',1,'2011-07-15 00:14:20',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:14:20.74',117.091),(137,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:14:28',1,'2011-07-15 00:14:28',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:14:28.104',117.091),(138,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:14:35',1,'2011-07-15 00:14:35',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:14:35.787',117.091),(139,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:14:43',1,'2011-07-15 00:14:43',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:14:43.378',117.091),(140,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:14:50',1,'2011-07-15 00:14:50',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:14:50.872',117.091),(141,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:14:58',1,'2011-07-15 00:14:58',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:14:58.688',117.091),(142,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:15:06',1,'2011-07-15 00:15:06',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:15:06.498',117.091),(143,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:15:14',1,'2011-07-15 00:15:14',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:15:14.201',117.091),(144,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:15:21',1,'2011-07-15 00:15:21',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:15:21.693',117.091),(145,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:15:29',1,'2011-07-15 00:15:29',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:15:30.004',117.091),(146,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:15:38',1,'2011-07-15 00:15:38',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:15:38.189',117.091),(147,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:15:45',1,'2011-07-15 00:15:45',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:15:45.618',117.091),(148,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:15:53',1,'2011-07-15 00:15:53',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:15:53.296',117.091),(149,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:16:00',1,'2011-07-15 00:16:00',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:16:00.497',117.091),(150,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:16:08',1,'2011-07-15 00:16:08',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:16:08.318',117.091),(151,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:16:15',1,'2011-07-15 00:16:15',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:16:15.818',117.091),(152,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:16:23',1,'2011-07-15 00:16:23',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:16:23.049',117.091),(153,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:16:31',1,'2011-07-15 00:16:31',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:16:31.217',117.091),(154,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:16:38',1,'2011-07-15 00:16:38',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:16:38.531',117.091),(155,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:16:46',1,'2011-07-15 00:16:46',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:16:46.08',117.091),(156,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:16:53',1,'2011-07-15 00:16:53',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:16:53.27',117.091),(157,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:17:01',1,'2011-07-15 00:17:01',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:17:01.234',117.091),(158,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:17:09',1,'2011-07-15 00:17:09',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:17:09.087',117.091),(159,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:17:16',1,'2011-07-15 00:17:16',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:17:16.6',117.091),(160,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:17:24',1,'2011-07-15 00:17:24',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:17:24.391',117.091),(161,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:17:31',1,'2011-07-15 00:17:31',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:17:31.601',117.091),(162,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:17:39',1,'2011-07-15 00:17:39',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:17:39.29',117.091),(163,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:17:47',1,'2011-07-15 00:17:47',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:17:47.561',117.091),(164,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:17:55',1,'2011-07-15 00:17:55',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:17:55.189',117.091),(165,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:18:03',1,'2011-07-15 00:18:03',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:18:03.119',117.091),(166,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:18:10',1,'2011-07-15 00:18:10',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:18:10.708',117.091),(167,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:18:17',1,'2011-07-15 00:18:17',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:18:17.958',117.091),(168,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:18:25',1,'2011-07-15 00:18:25',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:18:25.448',117.091),(169,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:18:32',1,'2011-07-15 00:18:32',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:18:32.939',117.091),(170,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:18:41',1,'2011-07-15 00:18:41',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:18:41.069',117.091),(171,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:18:48',1,'2011-07-15 00:18:48',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:18:48.359',117.091),(172,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:18:55',1,'2011-07-15 00:18:55',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:18:55.927',117.091),(173,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:19:03',1,'2011-07-15 00:19:03',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:19:03.441',117.091),(174,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:19:10',1,'2011-07-15 00:19:10',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:19:10.849',117.091),(175,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:19:18',1,'2011-07-15 00:19:18',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:19:18.62',117.091),(176,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:19:25',1,'2011-07-15 00:19:25',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:19:25.91',117.091),(177,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 00:19:33',1,'2011-07-15 00:19:33',1,31.223400,-122.121300,NULL,'1#2011-07-15 00:19:33.004',117.091),(178,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:21:14',1,'2011-07-15 23:21:14',1,32.715329,-117.157255,NULL,'1#2011-07-15 23:21:14.154',117.078),(179,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:21:20',1,'2011-07-15 23:21:20',1,32.715329,-117.157255,NULL,'1#2011-07-15 23:21:20.258',117.078),(180,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:21:26',1,'2011-07-15 23:21:26',1,32.715329,-117.157255,NULL,'1#2011-07-15 23:21:26.346',117.078),(181,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:21:32',1,'2011-07-15 23:21:32',1,32.715329,-117.157255,NULL,'1#2011-07-15 23:21:32.444',117.078),(182,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:21:38',1,'2011-07-15 23:21:38',1,32.715329,-117.157255,NULL,'1#2011-07-15 23:21:38.939',117.078),(183,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:21:44',1,'2011-07-15 23:21:44',1,32.715329,-117.157255,NULL,'1#2011-07-15 23:21:44.997',117.078),(184,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:21:51',1,'2011-07-15 23:21:51',1,32.715329,-117.157255,NULL,'1#2011-07-15 23:21:51.064',117.078),(185,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:24:49',1,'2011-07-15 23:24:49',1,31.223400,-122.121300,NULL,'1#2011-07-15 23:24:49.074',117.091),(186,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:24:57',1,'2011-07-15 23:24:57',1,31.223400,-122.121300,NULL,'1#2011-07-15 23:24:57.205',117.091),(187,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:25:05',1,'2011-07-15 23:25:05',1,31.223400,-122.121300,NULL,'1#2011-07-15 23:25:05.042',117.091),(188,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:25:20',1,'2011-07-15 23:25:20',1,31.223400,-122.121300,NULL,'1#2011-07-15 23:25:20.093',117.091),(189,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:26:01',1,'2011-07-15 23:26:01',1,31.223400,-122.121300,NULL,'1#2011-07-15 23:26:01.305',117.091),(190,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:26:10',1,'2011-07-15 23:26:10',1,31.223400,-122.121300,NULL,'1#2011-07-15 23:26:10.254',117.091),(191,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:26:18',1,'2011-07-15 23:26:18',1,31.223400,-122.121300,NULL,'1#2011-07-15 23:26:18.442',117.091),(192,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:26:25',1,'2011-07-15 23:26:25',1,31.223400,-122.121300,NULL,'1#2011-07-15 23:26:25.752',117.091),(193,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:29:00',1,'2011-07-15 23:29:00',1,32.715329,-117.157255,NULL,'1#2011-07-15 23:29:00.715',117.078),(194,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:29:06',1,'2011-07-15 23:29:06',1,32.715329,-117.157255,NULL,'1#2011-07-15 23:29:06.809',117.078),(195,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:29:12',1,'2011-07-15 23:29:12',1,32.715329,-117.157255,NULL,'1#2011-07-15 23:29:12.861',117.078),(196,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:29:18',1,'2011-07-15 23:29:18',1,32.715329,-117.157255,NULL,'1#2011-07-15 23:29:18.903',117.078),(197,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:29:24',1,'2011-07-15 23:29:24',1,32.715329,-117.157255,NULL,'1#2011-07-15 23:29:24.962',117.078),(198,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:41:30',1,'2011-07-15 23:41:30',1,31.223400,-122.121300,NULL,'1#2011-07-15 23:41:30.359',117.091),(199,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:49:03',1,'2011-07-15 23:49:03',1,31.223400,-122.121300,NULL,'1#2011-07-15 23:49:03.621',117.091),(200,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:50:10',1,'2011-07-15 23:50:10',1,31.223400,-122.121300,NULL,'1#2011-07-15 23:50:10.861',117.091),(201,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:52:39',1,'2011-07-15 23:52:39',1,31.223400,-122.121300,NULL,'1#2011-07-15 23:52:39.543',117.091),(202,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-15 23:53:59',1,'2011-07-15 23:53:59',1,31.223400,-122.121300,NULL,'1#2011-07-15 23:53:59.827',117.091),(203,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 00:04:07',1,'2011-07-16 00:04:07',1,31.223400,-122.121300,NULL,'1#2011-07-16 00:04:07.223',117.091),(204,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 00:14:09',1,'2011-07-16 00:14:09',1,31.223400,-122.121300,NULL,'1#2011-07-16 00:14:09.6',117.091),(205,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 00:24:11',1,'2011-07-16 00:24:11',1,17.347667,77.905851,NULL,'1#2011-07-16 00:24:11.804',118.125),(206,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 00:34:13',1,'2011-07-16 00:34:13',1,17.347667,77.905851,NULL,'1#2011-07-16 00:34:13.963',118.125),(207,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 00:41:35',1,'2011-07-16 00:41:35',1,17.347667,77.905851,NULL,'1#2011-07-16 00:41:35.801',118.125),(208,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 00:49:53',1,'2011-07-16 00:49:53',1,17.347667,77.905851,NULL,'1#2011-07-16 00:49:53.706',118.125),(209,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 00:59:56',1,'2011-07-16 00:59:56',1,17.347667,77.905851,NULL,'1#2011-07-16 00:59:56.341',118.125),(210,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 01:10:03',1,'2011-07-16 01:10:03',1,17.347667,77.905851,NULL,'1#2011-07-16 01:10:03.625',118.125),(211,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 01:20:08',1,'2011-07-16 01:20:08',1,17.347667,77.905851,NULL,'1#2011-07-16 01:20:08.872',118.125),(212,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 02:53:10',1,'2011-07-16 02:53:10',1,17.347667,77.905851,NULL,'1#2011-07-16 02:53:10.364',118.125),(213,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 03:04:11',1,'2011-07-16 03:04:11',1,17.347667,77.905851,NULL,'1#2011-07-16 03:04:11.508',118.125),(214,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 03:14:20',1,'2011-07-16 03:14:20',1,17.347667,77.905851,NULL,'1#2011-07-16 03:14:20.927',118.125),(215,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 03:24:25',1,'2011-07-16 03:24:25',1,17.347667,77.905851,NULL,'1#2011-07-16 03:24:25.067',118.125),(216,1,1,1,NULL,'2020-01-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 03:29:21',1,'2011-07-16 03:29:21',1,37.134500,-122.345650,NULL,'1#2011-07-16 03:29:21.467',117.149),(217,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 03:34:27',1,'2011-07-16 03:34:27',1,17.347667,77.905851,NULL,'1#2011-07-16 03:34:27.949',118.125),(218,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 03:35:48',1,'2011-07-16 03:35:48',1,32.715329,-117.157255,NULL,'1#2011-07-16 03:35:48.072',117.078),(219,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 03:44:32',1,'2011-07-16 03:44:32',1,17.347667,77.905851,NULL,'1#2011-07-16 03:44:32.181',118.125),(220,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 03:45:48',1,'2011-07-16 03:45:48',1,32.715329,-117.157255,NULL,'1#2011-07-16 03:45:48.418',117.078),(221,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 03:54:36',1,'2011-07-16 03:54:36',1,17.347667,77.905851,NULL,'1#2011-07-16 03:54:36.116',118.125),(222,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 03:55:48',1,'2011-07-16 03:55:48',1,32.715329,-117.157255,NULL,'1#2011-07-16 03:55:48.682',117.078),(223,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 04:04:40',1,'2011-07-16 04:04:40',1,17.347667,77.905851,NULL,'1#2011-07-16 04:04:40.676',118.125),(224,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 04:05:49',1,'2011-07-16 04:05:49',1,32.715329,-117.157255,NULL,'1#2011-07-16 04:05:49.262',117.078),(225,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 04:14:44',1,'2011-07-16 04:14:44',1,17.347667,77.905851,NULL,'1#2011-07-16 04:14:44.227',118.125),(226,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 04:15:49',1,'2011-07-16 04:15:49',1,32.715329,-117.157255,NULL,'1#2011-07-16 04:15:49.558',117.078),(227,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 04:25:21',1,'2011-07-16 04:25:21',1,17.347667,77.905851,NULL,'1#2011-07-16 04:25:21.659',118.125),(228,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 04:25:50',1,'2011-07-16 04:25:50',1,32.715329,-117.157255,NULL,'1#2011-07-16 04:25:50.63',117.078),(229,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 04:35:39',1,'2011-07-16 04:35:39',1,17.347667,77.905851,NULL,'1#2011-07-16 04:35:39.754',118.125),(230,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 04:35:51',1,'2011-07-16 04:35:51',1,32.715329,-117.157255,NULL,'1#2011-07-16 04:35:51.301',117.078),(231,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 04:45:51',1,'2011-07-16 04:45:51',1,32.715329,-117.157255,NULL,'1#2011-07-16 04:45:51.579',117.078),(232,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 04:46:00',1,'2011-07-16 04:46:00',1,17.347667,77.905851,NULL,'1#2011-07-16 04:46:00.937',118.125),(233,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 04:55:53',1,'2011-07-16 04:55:53',1,32.715329,-117.157255,NULL,'1#2011-07-16 04:55:53.073',117.078),(234,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 05:05:53',1,'2011-07-16 05:05:53',1,32.715329,-117.157255,NULL,'1#2011-07-16 05:05:53.343',117.078),(235,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 05:15:53',1,'2011-07-16 05:15:53',1,32.715329,-117.157255,NULL,'1#2011-07-16 05:15:53.607',117.078),(236,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 05:25:53',1,'2011-07-16 05:25:53',1,32.715329,-117.157255,NULL,'1#2011-07-16 05:25:53.869',117.078),(237,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 05:35:54',1,'2011-07-16 05:35:54',1,32.715329,-117.157255,NULL,'1#2011-07-16 05:35:54.124',117.078),(238,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 05:45:54',1,'2011-07-16 05:45:54',1,32.715329,-117.157255,NULL,'1#2011-07-16 05:45:54.55',117.078),(239,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 05:55:54',1,'2011-07-16 05:55:54',1,32.715329,-117.157255,NULL,'1#2011-07-16 05:55:54.819',117.078),(240,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 06:05:55',1,'2011-07-16 06:05:55',1,32.715329,-117.157255,NULL,'1#2011-07-16 06:05:55.092',117.078),(241,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 06:15:55',1,'2011-07-16 06:15:55',1,32.715329,-117.157255,NULL,'1#2011-07-16 06:15:55.332',117.078),(242,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 06:25:55',1,'2011-07-16 06:25:55',1,32.715329,-117.157255,NULL,'1#2011-07-16 06:25:55.607',117.078),(243,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 06:35:55',1,'2011-07-16 06:35:55',1,32.715329,-117.157255,NULL,'1#2011-07-16 06:35:55.885',117.078),(244,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 06:45:56',1,'2011-07-16 06:45:56',1,32.715329,-117.157255,NULL,'1#2011-07-16 06:45:56.197',117.078),(245,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 06:55:56',1,'2011-07-16 06:55:56',1,32.715329,-117.157255,NULL,'1#2011-07-16 06:55:56.446',117.078),(246,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 07:05:56',1,'2011-07-16 07:05:56',1,32.715329,-117.157255,NULL,'1#2011-07-16 07:05:56.718',117.078),(247,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 07:15:56',1,'2011-07-16 07:15:56',1,32.715329,-117.157255,NULL,'1#2011-07-16 07:15:56.988',117.078),(248,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 07:25:57',1,'2011-07-16 07:25:57',1,32.715329,-117.157255,NULL,'1#2011-07-16 07:25:57.242',117.078),(249,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 07:35:57',1,'2011-07-16 07:35:57',1,32.715329,-117.157255,NULL,'1#2011-07-16 07:35:57.555',117.078),(250,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-16 07:45:58',1,'2011-07-16 07:45:58',1,32.715329,-117.157255,NULL,'1#2011-07-16 07:45:58.325',117.078),(251,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 01:23:18',1,'2011-07-18 01:23:18',1,31.223400,-122.121300,NULL,'1#2011-07-18 01:23:18.654',117.091),(252,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 01:23:27',1,'2011-07-18 01:23:27',1,31.223400,-122.121300,NULL,'1#2011-07-18 01:23:27.316',117.091),(253,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 01:24:32',1,'2011-07-18 01:24:32',1,31.223400,-122.121300,NULL,'1#2011-07-18 01:24:33.006',117.091),(254,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 01:24:48',1,'2011-07-18 01:24:48',1,31.223400,-122.121300,NULL,'1#2011-07-18 01:24:48.827',117.091),(255,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 01:29:58',1,'2011-07-18 01:29:58',1,31.223400,-122.121300,NULL,'1#2011-07-18 01:29:58.093',117.091),(256,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 01:31:47',1,'2011-07-18 01:31:47',1,31.223400,-122.121300,NULL,'1#2011-07-18 01:31:47.821',117.091),(257,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 01:36:08',1,'2011-07-18 01:36:08',1,31.223400,-122.121300,NULL,'1#2011-07-18 01:36:08.197',117.091),(258,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 01:46:09',1,'2011-07-18 01:46:09',1,31.223400,-122.121300,NULL,'1#2011-07-18 01:46:09.329',117.091),(259,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 01:56:09',1,'2011-07-18 01:56:09',1,31.223400,-122.121300,NULL,'1#2011-07-18 01:56:09.804',117.091),(260,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 02:06:10',1,'2011-07-18 02:06:10',1,31.223400,-122.121300,NULL,'1#2011-07-18 02:06:10.393',117.091),(261,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 02:16:11',1,'2011-07-18 02:16:11',1,31.223400,-122.121300,NULL,'1#2011-07-18 02:16:11.413',117.091),(262,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 02:26:12',1,'2011-07-18 02:26:12',1,31.223400,-122.121300,NULL,'1#2011-07-18 02:26:12.118',117.091),(263,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 02:36:12',1,'2011-07-18 02:36:12',1,31.223400,-122.121300,NULL,'1#2011-07-18 02:36:12.797',117.091),(264,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 02:46:13',1,'2011-07-18 02:46:13',1,31.223400,-122.121300,NULL,'1#2011-07-18 02:46:13.447',117.091),(265,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 02:56:14',1,'2011-07-18 02:56:14',1,31.223400,-122.121300,NULL,'1#2011-07-18 02:56:14.283',117.091),(266,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 03:06:14',1,'2011-07-18 03:06:14',1,31.223400,-122.121300,NULL,'1#2011-07-18 03:06:14.865',117.091),(267,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 03:16:15',1,'2011-07-18 03:16:15',1,31.223400,-122.121300,NULL,'1#2011-07-18 03:16:15.634',117.091),(268,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 03:26:16',1,'2011-07-18 03:26:16',1,31.223400,-122.121300,NULL,'1#2011-07-18 03:26:16.668',117.091),(269,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 03:36:17',1,'2011-07-18 03:36:17',1,31.223400,-122.121300,NULL,'1#2011-07-18 03:36:17.21',117.091),(270,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 03:46:18',1,'2011-07-18 03:46:18',1,31.223400,-122.121300,NULL,'1#2011-07-18 03:46:18.226',117.091),(271,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 03:56:18',1,'2011-07-18 03:56:18',1,31.223400,-122.121300,NULL,'1#2011-07-18 03:56:18.766',117.091),(272,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 04:06:19',1,'2011-07-18 04:06:19',1,31.223400,-122.121300,NULL,'1#2011-07-18 04:06:19.376',117.091),(273,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 04:16:20',1,'2011-07-18 04:16:20',1,31.223400,-122.121300,NULL,'1#2011-07-18 04:16:20.572',117.091),(274,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 04:26:21',1,'2011-07-18 04:26:21',1,31.223400,-122.121300,NULL,'1#2011-07-18 04:26:21.216',117.091),(275,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 04:36:22',1,'2011-07-18 04:36:22',1,31.223400,-122.121300,NULL,'1#2011-07-18 04:36:22.096',117.091),(276,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 04:46:23',1,'2011-07-18 04:46:23',1,31.223400,-122.121300,NULL,'1#2011-07-18 04:46:23.105',117.091),(277,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 04:56:24',1,'2011-07-18 04:56:24',1,31.223400,-122.121300,NULL,'1#2011-07-18 04:56:24.006',117.091),(278,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 05:06:24',1,'2011-07-18 05:06:24',1,31.223400,-122.121300,NULL,'1#2011-07-18 05:06:24.871',117.091),(279,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 05:16:25',1,'2011-07-18 05:16:25',1,31.223400,-122.121300,NULL,'1#2011-07-18 05:16:25.611',117.091),(280,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 05:26:26',1,'2011-07-18 05:26:26',1,31.223400,-122.121300,NULL,'1#2011-07-18 05:26:26.424',117.091),(281,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 05:36:27',1,'2011-07-18 05:36:27',1,31.223400,-122.121300,NULL,'1#2011-07-18 05:36:27.102',117.091),(282,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 05:46:27',1,'2011-07-18 05:46:27',1,31.223400,-122.121300,NULL,'1#2011-07-18 05:46:27.986',117.091),(283,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 05:56:28',1,'2011-07-18 05:56:28',1,31.223400,-122.121300,NULL,'1#2011-07-18 05:56:28.621',117.091),(284,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 06:06:29',1,'2011-07-18 06:06:29',1,31.223400,-122.121300,NULL,'1#2011-07-18 06:06:29.371',117.091),(285,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 06:16:30',1,'2011-07-18 06:16:30',1,31.223400,-122.121300,NULL,'1#2011-07-18 06:16:30.299',117.091),(286,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 06:26:31',1,'2011-07-18 06:26:31',1,31.223400,-122.121300,NULL,'1#2011-07-18 06:26:31.146',117.091),(287,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 06:36:31',1,'2011-07-18 06:36:31',1,31.223400,-122.121300,NULL,'1#2011-07-18 06:36:31.766',117.091),(288,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 06:46:32',1,'2011-07-18 06:46:32',1,31.223400,-122.121300,NULL,'1#2011-07-18 06:46:32.838',117.091),(289,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 06:56:33',1,'2011-07-18 06:56:33',1,31.223400,-122.121300,NULL,'1#2011-07-18 06:56:33.917',117.091),(290,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 07:06:34',1,'2011-07-18 07:06:34',1,31.223400,-122.121300,NULL,'1#2011-07-18 07:06:34.925',117.091),(291,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 07:16:35',1,'2011-07-18 07:16:35',1,31.223400,-122.121300,NULL,'1#2011-07-18 07:16:35.723',117.091),(292,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 07:26:36',1,'2011-07-18 07:26:36',1,31.223400,-122.121300,NULL,'1#2011-07-18 07:26:36.921',117.091),(293,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 07:36:37',1,'2011-07-18 07:36:37',1,31.223400,-122.121300,NULL,'1#2011-07-18 07:36:37.605',117.091),(294,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 07:46:38',1,'2011-07-18 07:46:38',1,31.223400,-122.121300,NULL,'1#2011-07-18 07:46:38.23',117.091),(295,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 07:56:38',1,'2011-07-18 07:56:38',1,31.223400,-122.121300,NULL,'1#2011-07-18 07:56:38.832',117.091),(296,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 08:06:39',1,'2011-07-18 08:06:39',1,31.223400,-122.121300,NULL,'1#2011-07-18 08:06:39.488',117.091),(297,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 08:16:40',1,'2011-07-18 08:16:40',1,31.223400,-122.121300,NULL,'1#2011-07-18 08:16:40.367',117.091),(298,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 08:26:41',1,'2011-07-18 08:26:41',1,31.223400,-122.121300,NULL,'1#2011-07-18 08:26:41.053',117.091),(299,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 08:36:41',1,'2011-07-18 08:36:41',1,31.223400,-122.121300,NULL,'1#2011-07-18 08:36:41.61',117.091),(300,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 08:46:42',1,'2011-07-18 08:46:42',1,31.223400,-122.121300,NULL,'1#2011-07-18 08:46:42.178',117.091),(301,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 08:56:42',1,'2011-07-18 08:56:42',1,31.223400,-122.121300,NULL,'1#2011-07-18 08:56:42.951',117.091),(302,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 09:06:43',1,'2011-07-18 09:06:43',1,31.223400,-122.121300,NULL,'1#2011-07-18 09:06:43.871',117.091),(303,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 09:16:44',1,'2011-07-18 09:16:44',1,31.223400,-122.121300,NULL,'1#2011-07-18 09:16:44.917',117.091),(304,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 09:26:45',1,'2011-07-18 09:26:45',1,31.223400,-122.121300,NULL,'1#2011-07-18 09:26:45.512',117.091),(305,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 09:36:46',1,'2011-07-18 09:36:46',1,31.223400,-122.121300,NULL,'1#2011-07-18 09:36:46.479',117.091),(306,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 09:46:47',1,'2011-07-18 09:46:47',1,31.223400,-122.121300,NULL,'1#2011-07-18 09:46:47.31',117.091),(307,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 09:57:14',1,'2011-07-18 09:57:14',1,31.223400,-122.121300,NULL,'1#2011-07-18 09:57:14.723',117.091),(308,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 12:47:42',1,'2011-07-18 12:47:42',1,31.223400,-122.121300,NULL,'1#2011-07-18 12:47:42.74',117.091),(309,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 12:52:39',1,'2011-07-18 12:52:39',1,32.715329,-117.157255,NULL,'1#2011-07-18 12:52:39.538',117.078),(310,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 12:57:43',1,'2011-07-18 12:57:43',1,31.223400,-122.121300,NULL,'1#2011-07-18 12:57:43.733',117.091),(311,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 13:07:51',1,'2011-07-18 13:07:51',1,31.223400,-122.121300,NULL,'1#2011-07-18 13:07:51.307',117.091),(312,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 13:17:58',1,'2011-07-18 13:17:58',1,31.223400,-122.121300,NULL,'1#2011-07-18 13:17:58.465',117.091),(313,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 18:53:46',1,'2011-07-18 18:53:46',1,32.950338,-117.109659,NULL,'1#2011-07-18 18:53:46.227',117.077),(314,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 19:04:04',1,'2011-07-18 19:04:04',1,32.950338,-117.109659,NULL,'1#2011-07-18 19:04:04.582',117.077),(315,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 19:06:00',1,'2011-07-18 19:06:00',1,32.950090,-117.109292,NULL,'1#2011-07-18 19:06:00.58',117.077),(316,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 19:14:07',1,'2011-07-18 19:14:07',1,32.950338,-117.109659,NULL,'1#2011-07-18 19:14:07.794',117.077),(317,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 19:16:03',1,'2011-07-18 19:16:03',1,32.950090,-117.109292,NULL,'1#2011-07-18 19:16:03.905',117.077),(318,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 19:24:08',1,'2011-07-18 19:24:08',1,32.950338,-117.109659,NULL,'1#2011-07-18 19:24:08.924',117.077),(319,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 19:26:04',1,'2011-07-18 19:26:04',1,32.950090,-117.109292,NULL,'1#2011-07-18 19:26:04.712',117.077),(320,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 19:34:09',1,'2011-07-18 19:34:09',1,32.950338,-117.109659,NULL,'1#2011-07-18 19:34:09.489',117.077),(321,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 19:35:35',1,'2011-07-18 19:35:35',1,32.950090,-117.109292,NULL,'1#2011-07-18 19:35:35.878',117.077),(322,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 19:44:09',1,'2011-07-18 19:44:09',1,32.950338,-117.109659,NULL,'1#2011-07-18 19:44:09.742',117.077),(323,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 19:45:35',1,'2011-07-18 19:45:35',1,32.950090,-117.109292,NULL,'1#2011-07-18 19:45:35.958',117.077),(324,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 19:54:09',1,'2011-07-18 19:54:09',1,32.950338,-117.109659,NULL,'1#2011-07-18 19:54:09.784',117.077),(325,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 19:55:36',1,'2011-07-18 19:55:36',1,32.950090,-117.109292,NULL,'1#2011-07-18 19:55:36.03',117.077),(326,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 20:16:05',1,'2011-07-18 20:16:05',1,32.950338,-117.109659,NULL,'1#2011-07-18 20:16:05.861',117.077),(327,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 20:16:44',1,'2011-07-18 20:16:44',1,31.223400,-122.121300,NULL,'1#2011-07-18 20:16:44.195',117.091),(328,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 20:22:15',1,'2011-07-18 20:22:15',1,32.950130,-117.109319,NULL,'1#2011-07-18 20:22:15.37',117.077),(329,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 20:26:23',1,'2011-07-18 20:26:23',1,32.950338,-117.109659,NULL,'1#2011-07-18 20:26:23.396',117.077),(330,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 20:26:44',1,'2011-07-18 20:26:44',1,31.223400,-122.121300,NULL,'1#2011-07-18 20:26:44.326',117.091),(331,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:07:16',1,'2011-07-18 23:07:16',1,32.715329,-117.157255,NULL,'1#2011-07-18 23:07:16.046',117.078),(332,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:08:08',1,'2011-07-18 23:08:08',1,32.950093,-117.109415,NULL,'1#2011-07-18 23:08:08.884',117.077),(333,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:08:26',1,'2011-07-18 23:08:26',1,32.950093,-117.109415,NULL,'1#2011-07-18 23:08:26.943',117.077),(334,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:08:28',1,'2011-07-18 23:08:28',1,32.715329,-117.157255,NULL,'1#2011-07-18 23:08:28.083',117.078),(335,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:08:45',1,'2011-07-18 23:08:45',1,32.715329,-117.157255,NULL,'1#2011-07-18 23:08:45.642',117.078),(336,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:14:43',1,'2011-07-18 23:14:43',1,32.950093,-117.109415,NULL,'1#2011-07-18 23:14:43.33',117.077),(337,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:17:16',1,'2011-07-18 23:17:16',1,32.715329,-117.157255,NULL,'1#2011-07-18 23:17:16.152',117.078),(338,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:18:28',1,'2011-07-18 23:18:28',1,32.715329,-117.157255,NULL,'1#2011-07-18 23:18:28.298',117.078),(339,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:18:45',1,'2011-07-18 23:18:45',1,32.715329,-117.157255,NULL,'1#2011-07-18 23:18:45.718',117.078),(340,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:27:16',1,'2011-07-18 23:27:16',1,32.715329,-117.157255,NULL,'1#2011-07-18 23:27:16.415',117.078),(341,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:28:28',1,'2011-07-18 23:28:28',1,32.715329,-117.157255,NULL,'1#2011-07-18 23:28:28.363',117.078),(342,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:28:46',1,'2011-07-18 23:28:46',1,32.715329,-117.157255,NULL,'1#2011-07-18 23:28:46.198',117.078),(343,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:37:17',1,'2011-07-18 23:37:17',1,32.715329,-117.157255,NULL,'1#2011-07-18 23:37:17.312',117.078),(344,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:38:28',1,'2011-07-18 23:38:28',1,32.715329,-117.157255,NULL,'1#2011-07-18 23:38:28.427',117.078),(345,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:38:46',1,'2011-07-18 23:38:46',1,32.715329,-117.157255,NULL,'1#2011-07-18 23:38:46.251',117.078),(346,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:47:17',1,'2011-07-18 23:47:17',1,32.715329,-117.157255,NULL,'1#2011-07-18 23:47:17.429',117.078),(347,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:48:29',1,'2011-07-18 23:48:29',1,32.715329,-117.157255,NULL,'1#2011-07-18 23:48:29.152',117.078),(348,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:48:46',1,'2011-07-18 23:48:46',1,32.715329,-117.157255,NULL,'1#2011-07-18 23:48:46.299',117.078),(349,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:57:17',1,'2011-07-18 23:57:17',1,32.715329,-117.157255,NULL,'1#2011-07-18 23:57:17.487',117.078),(350,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:58:29',1,'2011-07-18 23:58:29',1,32.715329,-117.157255,NULL,'1#2011-07-18 23:58:29.418',117.078),(351,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-18 23:58:46',1,'2011-07-18 23:58:46',1,32.715329,-117.157255,NULL,'1#2011-07-18 23:58:46.345',117.078),(352,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 00:07:17',1,'2011-07-19 00:07:17',1,32.715329,-117.157255,NULL,'1#2011-07-19 00:07:17.542',117.078),(353,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 00:08:30',1,'2011-07-19 00:08:30',1,32.715329,-117.157255,NULL,'1#2011-07-19 00:08:30.151',117.078),(354,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 00:08:46',1,'2011-07-19 00:08:46',1,32.715329,-117.157255,NULL,'1#2011-07-19 00:08:46.391',117.078),(355,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 00:17:18',1,'2011-07-19 00:17:18',1,32.715329,-117.157255,NULL,'1#2011-07-19 00:17:18.038',117.078),(356,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 00:18:30',1,'2011-07-19 00:18:30',1,32.715329,-117.157255,NULL,'1#2011-07-19 00:18:30.399',117.078),(357,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 00:18:46',1,'2011-07-19 00:18:46',1,32.715329,-117.157255,NULL,'1#2011-07-19 00:18:46.434',117.078),(358,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 00:27:18',1,'2011-07-19 00:27:18',1,32.715329,-117.157255,NULL,'1#2011-07-19 00:27:18.096',117.078),(359,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 00:28:30',1,'2011-07-19 00:28:30',1,32.715329,-117.157255,NULL,'1#2011-07-19 00:28:30.717',117.078),(360,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 00:28:46',1,'2011-07-19 00:28:46',1,32.715329,-117.157255,NULL,'1#2011-07-19 00:28:46.476',117.078),(361,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 00:37:18',1,'2011-07-19 00:37:18',1,32.715329,-117.157255,NULL,'1#2011-07-19 00:37:18.156',117.078),(362,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 00:38:31',1,'2011-07-19 00:38:31',1,32.715329,-117.157255,NULL,'1#2011-07-19 00:38:31.39',117.078),(363,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 00:38:46',1,'2011-07-19 00:38:46',1,32.715329,-117.157255,NULL,'1#2011-07-19 00:38:46.958',117.078),(364,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 00:47:18',1,'2011-07-19 00:47:18',1,32.715329,-117.157255,NULL,'1#2011-07-19 00:47:18.211',117.078),(365,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 00:48:31',1,'2011-07-19 00:48:31',1,32.715329,-117.157255,NULL,'1#2011-07-19 00:48:31.66',117.078),(366,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 00:48:47',1,'2011-07-19 00:48:47',1,32.715329,-117.157255,NULL,'1#2011-07-19 00:48:47.511',117.078),(367,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 00:57:18',1,'2011-07-19 00:57:18',1,32.715329,-117.157255,NULL,'1#2011-07-19 00:57:18.268',117.078),(368,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 00:58:31',1,'2011-07-19 00:58:31',1,32.715329,-117.157255,NULL,'1#2011-07-19 00:58:31.932',117.078),(369,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 00:58:47',1,'2011-07-19 00:58:47',1,32.715329,-117.157255,NULL,'1#2011-07-19 00:58:47.555',117.078),(370,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 01:07:18',1,'2011-07-19 01:07:18',1,32.715329,-117.157255,NULL,'1#2011-07-19 01:07:18.326',117.078),(371,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 01:08:33',1,'2011-07-19 01:08:33',1,32.715329,-117.157255,NULL,'1#2011-07-19 01:08:33.175',117.078),(372,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 01:08:47',1,'2011-07-19 01:08:47',1,32.715329,-117.157255,NULL,'1#2011-07-19 01:08:47.604',117.078),(373,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 01:17:18',1,'2011-07-19 01:17:18',1,32.715329,-117.157255,NULL,'1#2011-07-19 01:17:18.403',117.078),(374,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 01:18:34',1,'2011-07-19 01:18:34',1,32.715329,-117.157255,NULL,'1#2011-07-19 01:18:34.035',117.078),(375,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 01:18:47',1,'2011-07-19 01:18:47',1,32.715329,-117.157255,NULL,'1#2011-07-19 01:18:47.652',117.078),(376,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 01:27:18',1,'2011-07-19 01:27:18',1,32.715329,-117.157255,NULL,'1#2011-07-19 01:27:18.907',117.078),(377,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 01:28:34',1,'2011-07-19 01:28:34',1,32.715329,-117.157255,NULL,'1#2011-07-19 01:28:34.305',117.078),(378,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 01:28:47',1,'2011-07-19 01:28:47',1,32.715329,-117.157255,NULL,'1#2011-07-19 01:28:47.692',117.078),(379,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 01:37:19',1,'2011-07-19 01:37:19',1,32.715329,-117.157255,NULL,'1#2011-07-19 01:37:19.675',117.078),(380,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 01:38:34',1,'2011-07-19 01:38:34',1,32.715329,-117.157255,NULL,'1#2011-07-19 01:38:34.565',117.078),(381,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 01:38:47',1,'2011-07-19 01:38:47',1,32.715329,-117.157255,NULL,'1#2011-07-19 01:38:47.741',117.078),(382,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 01:47:19',1,'2011-07-19 01:47:19',1,32.715329,-117.157255,NULL,'1#2011-07-19 01:47:19.735',117.078),(383,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 01:48:35',1,'2011-07-19 01:48:35',1,32.715329,-117.157255,NULL,'1#2011-07-19 01:48:35.232',117.078),(384,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 01:48:47',1,'2011-07-19 01:48:47',1,32.715329,-117.157255,NULL,'1#2011-07-19 01:48:47.797',117.078),(385,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 01:57:19',1,'2011-07-19 01:57:19',1,32.715329,-117.157255,NULL,'1#2011-07-19 01:57:19.79',117.078),(386,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 01:58:35',1,'2011-07-19 01:58:35',1,32.715329,-117.157255,NULL,'1#2011-07-19 01:58:35.98',117.078),(387,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 01:58:47',1,'2011-07-19 01:58:47',1,32.715329,-117.157255,NULL,'1#2011-07-19 01:58:47.852',117.078),(388,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 02:07:19',1,'2011-07-19 02:07:19',1,32.715329,-117.157255,NULL,'1#2011-07-19 02:07:19.842',117.078),(389,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 02:08:36',1,'2011-07-19 02:08:36',1,32.715329,-117.157255,NULL,'1#2011-07-19 02:08:36.225',117.078),(390,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 02:08:47',1,'2011-07-19 02:08:47',1,32.715329,-117.157255,NULL,'1#2011-07-19 02:08:47.897',117.078),(391,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 02:17:19',1,'2011-07-19 02:17:19',1,32.715329,-117.157255,NULL,'1#2011-07-19 02:17:19.905',117.078),(392,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 02:18:36',1,'2011-07-19 02:18:36',1,32.715329,-117.157255,NULL,'1#2011-07-19 02:18:36.913',117.078),(393,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 02:18:47',1,'2011-07-19 02:18:47',1,32.715329,-117.157255,NULL,'1#2011-07-19 02:18:47.935',117.078),(394,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 02:27:20',1,'2011-07-19 02:27:20',1,32.715329,-117.157255,NULL,'1#2011-07-19 02:27:20.396',117.078),(395,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 02:28:37',1,'2011-07-19 02:28:37',1,32.715329,-117.157255,NULL,'1#2011-07-19 02:28:37.205',117.078),(396,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 02:28:47',1,'2011-07-19 02:28:47',1,32.715329,-117.157255,NULL,'1#2011-07-19 02:28:47.987',117.078),(397,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 02:37:20',1,'2011-07-19 02:37:20',1,32.715329,-117.157255,NULL,'1#2011-07-19 02:37:20.884',117.078),(398,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 02:38:37',1,'2011-07-19 02:38:37',1,32.715329,-117.157255,NULL,'1#2011-07-19 02:38:37.459',117.078),(399,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 02:38:48',1,'2011-07-19 02:38:48',1,32.715329,-117.157255,NULL,'1#2011-07-19 02:38:48.038',117.078),(400,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 02:47:20',1,'2011-07-19 02:47:20',1,32.715329,-117.157255,NULL,'1#2011-07-19 02:47:20.952',117.078),(401,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 02:48:37',1,'2011-07-19 02:48:37',1,32.715329,-117.157255,NULL,'1#2011-07-19 02:48:37.717',117.078),(402,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 02:48:48',1,'2011-07-19 02:48:48',1,32.715329,-117.157255,NULL,'1#2011-07-19 02:48:48.081',117.078),(403,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 02:57:21',1,'2011-07-19 02:57:21',1,32.715329,-117.157255,NULL,'1#2011-07-19 02:57:21.439',117.078),(404,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 02:58:37',1,'2011-07-19 02:58:37',1,32.715329,-117.157255,NULL,'1#2011-07-19 02:58:37.95',117.078),(405,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 02:58:48',1,'2011-07-19 02:58:48',1,32.715329,-117.157255,NULL,'1#2011-07-19 02:58:48.118',117.078),(406,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 03:07:21',1,'2011-07-19 03:07:21',1,32.715329,-117.157255,NULL,'1#2011-07-19 03:07:21.936',117.078),(407,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 03:08:38',1,'2011-07-19 03:08:38',1,32.715329,-117.157255,NULL,'1#2011-07-19 03:08:38.211',117.078),(408,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 03:08:48',1,'2011-07-19 03:08:48',1,32.715329,-117.157255,NULL,'1#2011-07-19 03:08:48.164',117.078),(409,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 03:17:22',1,'2011-07-19 03:17:22',1,32.715329,-117.157255,NULL,'1#2011-07-19 03:17:22.425',117.078),(410,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 03:18:38',1,'2011-07-19 03:18:38',1,32.715329,-117.157255,NULL,'1#2011-07-19 03:18:38.471',117.078),(411,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 03:18:48',1,'2011-07-19 03:18:48',1,32.715329,-117.157255,NULL,'1#2011-07-19 03:18:48.206',117.078),(412,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 03:27:22',1,'2011-07-19 03:27:22',1,32.715329,-117.157255,NULL,'1#2011-07-19 03:27:22.479',117.078),(413,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 03:28:39',1,'2011-07-19 03:28:39',1,32.715329,-117.157255,NULL,'1#2011-07-19 03:28:39.717',117.078),(414,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 03:28:48',1,'2011-07-19 03:28:48',1,32.715329,-117.157255,NULL,'1#2011-07-19 03:28:48.251',117.078),(415,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 03:37:22',1,'2011-07-19 03:37:22',1,32.715329,-117.157255,NULL,'1#2011-07-19 03:37:22.577',117.078),(416,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 03:38:39',1,'2011-07-19 03:38:39',1,32.715329,-117.157255,NULL,'1#2011-07-19 03:38:39.957',117.078),(417,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 03:38:48',1,'2011-07-19 03:38:48',1,32.715329,-117.157255,NULL,'1#2011-07-19 03:38:48.298',117.078),(418,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 03:47:23',1,'2011-07-19 03:47:23',1,32.715329,-117.157255,NULL,'1#2011-07-19 03:47:23.063',117.078),(419,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 03:48:40',1,'2011-07-19 03:48:40',1,32.715329,-117.157255,NULL,'1#2011-07-19 03:48:40.655',117.078),(420,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 03:48:48',1,'2011-07-19 03:48:48',1,32.715329,-117.157255,NULL,'1#2011-07-19 03:48:48.342',117.078),(421,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 03:57:23',1,'2011-07-19 03:57:23',1,32.715329,-117.157255,NULL,'1#2011-07-19 03:57:23.117',117.078),(422,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 03:58:40',1,'2011-07-19 03:58:40',1,32.715329,-117.157255,NULL,'1#2011-07-19 03:58:40.925',117.078),(423,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 03:58:48',1,'2011-07-19 03:58:48',1,32.715329,-117.157255,NULL,'1#2011-07-19 03:58:48.389',117.078),(424,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 04:07:23',1,'2011-07-19 04:07:23',1,32.715329,-117.157255,NULL,'1#2011-07-19 04:07:23.18',117.078),(425,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 04:08:41',1,'2011-07-19 04:08:41',1,32.715329,-117.157255,NULL,'1#2011-07-19 04:08:41.165',117.078),(426,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 04:08:48',1,'2011-07-19 04:08:48',1,32.715329,-117.157255,NULL,'1#2011-07-19 04:08:48.867',117.078),(427,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 04:17:23',1,'2011-07-19 04:17:23',1,32.715329,-117.157255,NULL,'1#2011-07-19 04:17:23.241',117.078),(428,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 04:18:41',1,'2011-07-19 04:18:41',1,32.715329,-117.157255,NULL,'1#2011-07-19 04:18:41.418',117.078),(429,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 04:18:48',1,'2011-07-19 04:18:48',1,32.715329,-117.157255,NULL,'1#2011-07-19 04:18:48.907',117.078),(430,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 04:27:23',1,'2011-07-19 04:27:23',1,32.715329,-117.157255,NULL,'1#2011-07-19 04:27:23.288',117.078),(431,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 04:28:41',1,'2011-07-19 04:28:41',1,32.715329,-117.157255,NULL,'1#2011-07-19 04:28:41.724',117.078),(432,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 04:28:48',1,'2011-07-19 04:28:48',1,32.715329,-117.157255,NULL,'1#2011-07-19 04:28:48.946',117.078),(433,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 04:37:23',1,'2011-07-19 04:37:23',1,32.715329,-117.157255,NULL,'1#2011-07-19 04:37:23.35',117.078),(434,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 04:38:41',1,'2011-07-19 04:38:41',1,32.715329,-117.157255,NULL,'1#2011-07-19 04:38:41.995',117.078),(435,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 04:38:49',1,'2011-07-19 04:38:49',1,32.715329,-117.157255,NULL,'1#2011-07-19 04:38:49.417',117.078),(436,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 04:47:23',1,'2011-07-19 04:47:23',1,32.715329,-117.157255,NULL,'1#2011-07-19 04:47:23.407',117.078),(437,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 04:48:42',1,'2011-07-19 04:48:42',1,32.715329,-117.157255,NULL,'1#2011-07-19 04:48:42.251',117.078),(438,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 04:48:49',1,'2011-07-19 04:48:49',1,32.715329,-117.157255,NULL,'1#2011-07-19 04:48:49.46',117.078),(439,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 04:57:23',1,'2011-07-19 04:57:23',1,32.715329,-117.157255,NULL,'1#2011-07-19 04:57:23.894',117.078),(440,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 04:58:42',1,'2011-07-19 04:58:42',1,32.715329,-117.157255,NULL,'1#2011-07-19 04:58:42.531',117.078),(441,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 04:58:49',1,'2011-07-19 04:58:49',1,32.715329,-117.157255,NULL,'1#2011-07-19 04:58:49.507',117.078),(442,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 05:07:23',1,'2011-07-19 05:07:23',1,32.715329,-117.157255,NULL,'1#2011-07-19 05:07:23.962',117.078),(443,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 05:08:43',1,'2011-07-19 05:08:43',1,32.715329,-117.157255,NULL,'1#2011-07-19 05:08:43.605',117.078),(444,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 05:08:49',1,'2011-07-19 05:08:49',1,32.715329,-117.157255,NULL,'1#2011-07-19 05:08:49.561',117.078),(445,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 05:17:24',1,'2011-07-19 05:17:24',1,32.715329,-117.157255,NULL,'1#2011-07-19 05:17:24.457',117.078),(446,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 05:18:44',1,'2011-07-19 05:18:44',1,32.715329,-117.157255,NULL,'1#2011-07-19 05:18:44.299',117.078),(447,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 05:18:49',1,'2011-07-19 05:18:49',1,32.715329,-117.157255,NULL,'1#2011-07-19 05:18:49.599',117.078),(448,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 05:27:24',1,'2011-07-19 05:27:24',1,32.715329,-117.157255,NULL,'1#2011-07-19 05:27:24.528',117.078),(449,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 05:28:44',1,'2011-07-19 05:28:44',1,32.715329,-117.157255,NULL,'1#2011-07-19 05:28:44.534',117.078),(450,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 05:28:49',1,'2011-07-19 05:28:49',1,32.715329,-117.157255,NULL,'1#2011-07-19 05:28:49.641',117.078),(451,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 05:37:25',1,'2011-07-19 05:37:25',1,32.715329,-117.157255,NULL,'1#2011-07-19 05:37:25.014',117.078),(452,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 05:38:44',1,'2011-07-19 05:38:44',1,32.715329,-117.157255,NULL,'1#2011-07-19 05:38:44.793',117.078),(453,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 05:38:50',1,'2011-07-19 05:38:50',1,32.715329,-117.157255,NULL,'1#2011-07-19 05:38:50.037',117.078),(454,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 05:47:25',1,'2011-07-19 05:47:25',1,32.715329,-117.157255,NULL,'1#2011-07-19 05:47:25.526',117.078),(455,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 05:48:45',1,'2011-07-19 05:48:45',1,32.715329,-117.157255,NULL,'1#2011-07-19 05:48:45.222',117.078),(456,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 05:48:50',1,'2011-07-19 05:48:50',1,32.715329,-117.157255,NULL,'1#2011-07-19 05:48:50.089',117.078),(457,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 05:56:17',1,'2011-07-19 05:56:17',1,32.715329,-117.157255,NULL,'1#2011-07-19 05:56:17.93',117.078),(458,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 05:57:26',1,'2011-07-19 05:57:26',1,32.715329,-117.157255,NULL,'1#2011-07-19 05:57:26.035',117.078),(459,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 05:58:45',1,'2011-07-19 05:58:45',1,32.715329,-117.157255,NULL,'1#2011-07-19 05:58:45.916',117.078),(460,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 05:58:50',1,'2011-07-19 05:58:50',1,32.715329,-117.157255,NULL,'1#2011-07-19 05:58:50.557',117.078),(461,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 06:06:18',1,'2011-07-19 06:06:18',1,32.715329,-117.157255,NULL,'1#2011-07-19 06:06:18.173',117.078),(462,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 06:07:26',1,'2011-07-19 06:07:26',1,32.715329,-117.157255,NULL,'1#2011-07-19 06:07:26.096',117.078),(463,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 06:08:46',1,'2011-07-19 06:08:46',1,32.715329,-117.157255,NULL,'1#2011-07-19 06:08:46.186',117.078),(464,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 06:08:50',1,'2011-07-19 06:08:50',1,32.715329,-117.157255,NULL,'1#2011-07-19 06:08:50.599',117.078),(465,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 06:16:18',1,'2011-07-19 06:16:18',1,32.715329,-117.157255,NULL,'1#2011-07-19 06:16:18.656',117.078),(466,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 06:17:26',1,'2011-07-19 06:17:26',1,32.715329,-117.157255,NULL,'1#2011-07-19 06:17:26.158',117.078),(467,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 06:18:46',1,'2011-07-19 06:18:46',1,32.715329,-117.157255,NULL,'1#2011-07-19 06:18:46.878',117.078),(468,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 06:18:50',1,'2011-07-19 06:18:50',1,32.715329,-117.157255,NULL,'1#2011-07-19 06:18:50.642',117.078),(469,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 06:26:19',1,'2011-07-19 06:26:19',1,32.715329,-117.157255,NULL,'1#2011-07-19 06:26:19.055',117.078),(470,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 23:01:58',1,'2011-07-19 23:01:58',1,31.223400,-122.121300,NULL,'1#2011-07-19 23:01:58.472',117.091),(471,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-19 23:05:26',1,'2011-07-19 23:05:26',1,31.223400,-122.121300,NULL,'1#2011-07-19 23:05:26.051',117.091),(472,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 05:19:56',1,'2011-07-20 05:19:56',1,31.223400,-122.121300,NULL,'1#2011-07-20 05:19:56.799',117.091),(473,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 06:18:36',1,'2011-07-20 06:18:36',1,32.950339,-117.109659,NULL,'1#2011-07-20 06:18:36.85',117.077),(474,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 06:28:33',1,'2011-07-20 06:28:33',1,31.223400,-122.121300,NULL,'1#2011-07-20 06:28:33.821',117.091),(475,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 06:28:36',1,'2011-07-20 06:28:36',1,32.950339,-117.109659,NULL,'1#2011-07-20 06:28:36.953',117.077),(476,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 06:38:49',1,'2011-07-20 06:38:49',1,31.223400,-122.121300,NULL,'1#2011-07-20 06:38:49.757',117.091),(477,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 06:49:11',1,'2011-07-20 06:49:11',1,31.223400,-122.121300,NULL,'1#2011-07-20 06:49:11.953',117.091),(478,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 06:59:19',1,'2011-07-20 06:59:19',1,31.223400,-122.121300,NULL,'1#2011-07-20 06:59:19.278',117.091),(479,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 07:09:20',1,'2011-07-20 07:09:20',1,31.223400,-122.121300,NULL,'1#2011-07-20 07:09:20.359',117.091),(480,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 07:19:27',1,'2011-07-20 07:19:27',1,31.223400,-122.121300,NULL,'1#2011-07-20 07:19:27.461',117.091),(481,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 07:56:16',1,'2011-07-20 07:56:16',1,32.950339,-117.109659,NULL,'1#2011-07-20 07:56:16.698',117.077),(482,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 08:06:17',1,'2011-07-20 08:06:17',1,32.950339,-117.109659,NULL,'1#2011-07-20 08:06:17.027',117.077),(483,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 08:16:17',1,'2011-07-20 08:16:17',1,32.950339,-117.109659,NULL,'1#2011-07-20 08:16:17.297',117.077),(484,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 08:26:27',1,'2011-07-20 08:26:27',1,32.950339,-117.109659,NULL,'1#2011-07-20 08:26:27.893',117.077),(485,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 08:44:35',1,'2011-07-20 08:44:35',1,32.950339,-117.109659,NULL,'1#2011-07-20 08:44:35.088',117.077),(486,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 08:59:26',1,'2011-07-20 08:59:26',1,32.950339,-117.109659,NULL,'1#2011-07-20 08:59:26.234',117.077),(487,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 09:10:36',1,'2011-07-20 09:10:36',1,32.950339,-117.109659,NULL,'1#2011-07-20 09:10:36.456',117.077),(488,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 09:18:28',1,'2011-07-20 09:18:28',1,32.950339,-117.109659,NULL,'1#2011-07-20 09:18:28.281',117.077),(489,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 09:23:55',1,'2011-07-20 09:23:55',1,32.950339,-117.109659,NULL,'1#2011-07-20 09:23:55.04',117.077),(490,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 09:33:55',1,'2011-07-20 09:33:55',1,32.950339,-117.109659,NULL,'1#2011-07-20 09:33:55.414',117.077),(491,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 09:43:56',1,'2011-07-20 09:43:56',1,32.950339,-117.109659,NULL,'1#2011-07-20 09:43:56.59',117.077),(492,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 09:53:56',1,'2011-07-20 09:53:56',1,32.950339,-117.109659,NULL,'1#2011-07-20 09:53:56.65',117.077),(493,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-20 10:03:56',1,'2011-07-20 10:03:56',1,32.950339,-117.109659,NULL,'1#2011-07-20 10:03:56.912',117.077),(494,1,1,1,NULL,'2020-01-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-24 01:08:51',1,'2011-07-24 01:08:51',1,37.134500,-122.345650,NULL,'1#2011-07-24 01:08:52.017',117.149),(495,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-24 02:26:54',1,'2011-07-24 02:26:54',1,32.950087,-117.109622,NULL,'1#2011-07-24 02:26:54.223',117.077),(496,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-24 02:27:10',1,'2011-07-24 02:27:10',1,32.950087,-117.109622,NULL,'1#2011-07-24 02:27:10.704',117.077),(497,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-24 02:27:17',1,'2011-07-24 02:27:17',1,32.950087,-117.109622,NULL,'1#2011-07-24 02:27:17.746',117.077),(498,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-24 02:46:15',1,'2011-07-24 02:46:15',1,32.950087,-117.109622,NULL,'1#2011-07-24 02:46:15.227',117.077),(499,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-24 02:46:30',1,'2011-07-24 02:46:30',1,32.950087,-117.109622,NULL,'1#2011-07-24 02:46:30.63',117.077),(500,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-24 03:02:53',1,'2011-07-24 03:02:53',1,32.950087,-117.109622,NULL,'1#2011-07-24 03:02:53.517',117.077),(501,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-24 03:16:56',1,'2011-07-24 03:16:56',1,32.950087,-117.109622,NULL,'1#2011-07-24 03:16:56.76',117.077),(502,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-24 03:18:15',1,'2011-07-24 03:18:15',1,32.950087,-117.109622,NULL,'1#2011-07-24 03:18:15.42',117.077),(503,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-24 03:20:47',1,'2011-07-24 03:20:47',1,32.950087,-117.109622,NULL,'1#2011-07-24 03:20:47.62',117.077),(504,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-24 03:21:40',1,'2011-07-24 03:21:40',1,32.950087,-117.109622,NULL,'1#2011-07-24 03:21:40.308',117.077),(505,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-24 03:21:49',1,'2011-07-24 03:21:49',1,32.950087,-117.109622,NULL,'1#2011-07-24 03:21:49.558',117.077),(506,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-24 03:21:53',1,'2011-07-24 03:21:53',1,32.950087,-117.109622,NULL,'1#2011-07-24 03:21:53.193',117.077),(507,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-24 03:36:46',1,'2011-07-24 03:36:46',1,32.950087,-117.109622,NULL,'1#2011-07-24 03:36:46.512',117.077),(508,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-24 04:09:37',1,'2011-07-24 04:09:37',1,32.950087,-117.109622,NULL,'1#2011-07-24 04:09:37.666',117.077),(509,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-07-24 04:22:02',1,'2011-07-24 04:22:02',1,32.950087,-117.109622,NULL,'1#2011-07-24 04:22:02.959',117.077),(510,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-08-05 19:04:32',1,'2011-08-05 19:04:32',1,18.000055,79.588167,NULL,'1#2011-08-05 19:04:32.737',118.04),(511,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-08-07 06:10:22',1,'2011-08-07 06:10:22',1,17.410480,78.605118,NULL,'1#2011-08-07 06:10:22.822',118.116),(512,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 00:41:44',1,'2011-09-01 00:41:44',1,32.950420,-117.109168,NULL,'1#2011-09-01 00:41:45.187',117.077),(513,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 00:41:50',1,'2011-09-01 00:41:50',1,32.950420,-117.109168,NULL,'1#2011-09-01 00:41:50.414',117.077),(514,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 00:41:55',1,'2011-09-01 00:41:55',1,32.950420,-117.109168,NULL,'1#2011-09-01 00:41:55.012',117.077),(515,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 00:42:00',1,'2011-09-01 00:42:00',1,32.950420,-117.109168,NULL,'1#2011-09-01 00:42:00.114',117.077),(516,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 00:42:09',1,'2011-09-01 00:42:09',1,32.950420,-117.109168,NULL,'1#2011-09-01 00:42:09.733',117.077),(517,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 00:42:18',1,'2011-09-01 00:42:18',1,32.950420,-117.109168,NULL,'1#2011-09-01 00:42:18.107',117.077),(518,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 00:42:18',1,'2011-09-01 00:42:18',1,32.950420,-117.109168,NULL,'1#2011-09-01 00:42:18.31',117.077),(519,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 00:42:23',1,'2011-09-01 00:42:23',1,32.950420,-117.109168,NULL,'1#2011-09-01 00:42:23.029',117.077),(520,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 00:42:58',1,'2011-09-01 00:42:58',1,32.950420,-117.109168,NULL,'1#2011-09-01 00:42:58.528',117.077),(521,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 00:51:45',1,'2011-09-01 00:51:45',1,32.950420,-117.109168,NULL,'1#2011-09-01 00:51:45.342',117.077),(522,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 00:51:50',1,'2011-09-01 00:51:50',1,32.950420,-117.109168,NULL,'1#2011-09-01 00:51:50.203',117.077),(523,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 00:51:57',1,'2011-09-01 00:51:57',1,32.950420,-117.109168,NULL,'1#2011-09-01 00:51:57.803',117.077),(524,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 00:52:00',1,'2011-09-01 00:52:00',1,32.950420,-117.109168,NULL,'1#2011-09-01 00:52:00.187',117.077),(525,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 00:52:09',1,'2011-09-01 00:52:09',1,32.950420,-117.109168,NULL,'1#2011-09-01 00:52:09.49',117.077),(526,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 00:52:18',1,'2011-09-01 00:52:18',1,32.950420,-117.109168,NULL,'1#2011-09-01 00:52:18.1',117.077),(527,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 00:52:18',1,'2011-09-01 00:52:18',1,32.950420,-117.109168,NULL,'1#2011-09-01 00:52:18.159',117.077),(528,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 00:52:23',1,'2011-09-01 00:52:23',1,32.950420,-117.109168,NULL,'1#2011-09-01 00:52:23.104',117.077),(529,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 00:52:58',1,'2011-09-01 00:52:58',1,32.950420,-117.109168,NULL,'1#2011-09-01 00:52:58.589',117.077),(530,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:01:46',1,'2011-09-01 01:01:46',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:01:46.109',117.077),(531,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:01:50',1,'2011-09-01 01:01:50',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:01:50.733',117.077),(532,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:01:58',1,'2011-09-01 01:01:58',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:01:58.34',117.077),(533,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:02:00',1,'2011-09-01 01:02:00',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:02:00.716',117.077),(534,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:02:10',1,'2011-09-01 01:02:10',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:02:10.03',117.077),(535,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:02:18',1,'2011-09-01 01:02:18',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:02:18.701',117.077),(536,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:02:18',1,'2011-09-01 01:02:18',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:02:18.936',117.077),(537,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:02:23',1,'2011-09-01 01:02:23',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:02:23.647',117.077),(538,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:02:59',1,'2011-09-01 01:02:59',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:02:59.453',117.077),(539,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:11:46',1,'2011-09-01 01:11:46',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:11:46.628',117.077),(540,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:11:51',1,'2011-09-01 01:11:51',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:11:51.287',117.077),(541,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:11:58',1,'2011-09-01 01:11:58',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:11:58.386',117.077),(542,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:12:01',1,'2011-09-01 01:12:01',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:12:01.057',117.077),(543,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:12:10',1,'2011-09-01 01:12:10',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:12:10.095',117.077),(544,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:12:18',1,'2011-09-01 01:12:18',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:12:18.989',117.077),(545,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:12:21',1,'2011-09-01 01:12:21',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:12:21.832',117.077),(546,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:12:23',1,'2011-09-01 01:12:23',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:12:23.694',117.077),(547,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:12:59',1,'2011-09-01 01:12:59',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:12:59.98',117.077),(548,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:21:49',1,'2011-09-01 01:21:49',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:21:49.88',117.077),(549,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:21:51',1,'2011-09-01 01:21:51',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:21:51.352',117.077),(550,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:21:58',1,'2011-09-01 01:21:58',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:21:58.778',117.077),(551,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:22:01',1,'2011-09-01 01:22:01',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:22:01.097',117.077),(552,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:22:10',1,'2011-09-01 01:22:10',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:22:10.14',117.077),(553,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:22:19',1,'2011-09-01 01:22:19',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:22:19.04',117.077),(554,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:22:21',1,'2011-09-01 01:22:21',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:22:21.877',117.077),(555,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:22:23',1,'2011-09-01 01:22:23',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:22:23.736',117.077),(556,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:23:00',1,'2011-09-01 01:23:00',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:23:00.029',117.077),(557,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:31:50',1,'2011-09-01 01:31:50',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:31:50.379',117.077),(558,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:31:51',1,'2011-09-01 01:31:51',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:31:51.389',117.077),(559,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:31:58',1,'2011-09-01 01:31:58',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:31:58.833',117.077),(560,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:32:01',1,'2011-09-01 01:32:01',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:32:01.14',117.077),(561,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:32:10',1,'2011-09-01 01:32:10',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:32:10.702',117.077),(562,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:32:19',1,'2011-09-01 01:32:19',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:32:19.082',117.077),(563,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:32:22',1,'2011-09-01 01:32:22',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:32:22.227',117.077),(564,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:32:23',1,'2011-09-01 01:32:23',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:32:23.781',117.077),(565,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:33:00',1,'2011-09-01 01:33:00',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:33:00.07',117.077),(566,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:41:50',1,'2011-09-01 01:41:50',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:41:50.805',117.077),(567,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:41:51',1,'2011-09-01 01:41:51',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:41:51.426',117.077),(568,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:41:58',1,'2011-09-01 01:41:58',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:41:58.877',117.077),(569,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:42:01',1,'2011-09-01 01:42:01',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:42:01.176',117.077),(570,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:42:10',1,'2011-09-01 01:42:10',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:42:10.77',117.077),(571,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:42:19',1,'2011-09-01 01:42:19',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:42:19.123',117.077),(572,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:42:22',1,'2011-09-01 01:42:22',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:42:22.567',117.077),(573,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:42:23',1,'2011-09-01 01:42:23',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:42:23.823',117.077),(574,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:43:00',1,'2011-09-01 01:43:00',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:43:00.157',117.077),(575,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:51:51',1,'2011-09-01 01:51:51',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:51:51.341',117.077),(576,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:51:51',1,'2011-09-01 01:51:51',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:51:51.486',117.077),(577,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:51:58',1,'2011-09-01 01:51:58',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:51:58.927',117.077),(578,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:52:01',1,'2011-09-01 01:52:01',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:52:01.229',117.077),(579,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:52:10',1,'2011-09-01 01:52:10',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:52:10.819',117.077),(580,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:52:19',1,'2011-09-01 01:52:19',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:52:19.178',117.077),(581,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:52:22',1,'2011-09-01 01:52:22',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:52:22.617',117.077),(582,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:52:23',1,'2011-09-01 01:52:23',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:52:23.866',117.077),(583,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 01:53:00',1,'2011-09-01 01:53:00',1,32.950420,-117.109168,NULL,'1#2011-09-01 01:53:00.317',117.077),(584,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:01:51',1,'2011-09-01 02:01:51',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:01:51.661',117.077),(585,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:01:51',1,'2011-09-01 02:01:51',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:01:51.67',117.077),(586,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:01:58',1,'2011-09-01 02:01:58',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:01:58.971',117.077),(587,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:02:01',1,'2011-09-01 02:02:01',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:02:01.274',117.077),(588,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:02:10',1,'2011-09-01 02:02:10',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:02:10.865',117.077),(589,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:02:19',1,'2011-09-01 02:02:19',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:02:19.228',117.077),(590,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:02:22',1,'2011-09-01 02:02:22',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:02:22.658',117.077),(591,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:02:23',1,'2011-09-01 02:02:23',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:02:23.906',117.077),(592,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:03:00',1,'2011-09-01 02:03:00',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:03:00.365',117.077),(593,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:11:51',1,'2011-09-01 02:11:51',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:11:51.708',117.077),(594,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:11:51',1,'2011-09-01 02:11:51',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:11:51.731',117.077),(595,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:11:59',1,'2011-09-01 02:11:59',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:11:59.016',117.077),(596,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:12:01',1,'2011-09-01 02:12:01',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:12:01.323',117.077),(597,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:12:11',1,'2011-09-01 02:12:11',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:12:11.215',117.077),(598,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:12:19',1,'2011-09-01 02:12:19',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:12:19.28',117.077),(599,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:12:22',1,'2011-09-01 02:12:22',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:12:22.704',117.077),(600,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:12:24',1,'2011-09-01 02:12:24',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:12:24.256',117.077),(601,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:13:00',1,'2011-09-01 02:13:00',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:13:00.902',117.077),(602,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:21:52',1,'2011-09-01 02:21:52',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:21:52.031',117.077),(603,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:21:52',1,'2011-09-01 02:21:52',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:21:52.033',117.077),(604,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:21:59',1,'2011-09-01 02:21:59',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:21:59.101',117.077),(605,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:22:01',1,'2011-09-01 02:22:01',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:22:01.373',117.077),(606,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:22:11',1,'2011-09-01 02:22:11',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:22:11.255',117.077),(607,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:22:19',1,'2011-09-01 02:22:19',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:22:19.337',117.077),(608,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:22:22',1,'2011-09-01 02:22:22',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:22:22.745',117.077),(609,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:22:24',1,'2011-09-01 02:22:24',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:22:24.299',117.077),(610,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:23:03',1,'2011-09-01 02:23:03',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:23:03.955',117.077),(611,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:31:52',1,'2011-09-01 02:31:52',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:31:52.11',117.077),(612,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:31:52',1,'2011-09-01 02:31:52',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:31:52.112',117.077),(613,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:31:59',1,'2011-09-01 02:31:59',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:31:59.141',117.077),(614,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:32:01',1,'2011-09-01 02:32:01',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:32:01.417',117.077),(615,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:32:11',1,'2011-09-01 02:32:11',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:32:11.294',117.077),(616,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:32:19',1,'2011-09-01 02:32:19',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:32:19.385',117.077),(617,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:32:22',1,'2011-09-01 02:32:22',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:32:22.797',117.077),(618,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:32:24',1,'2011-09-01 02:32:24',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:32:24.34',117.077),(619,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:33:03',1,'2011-09-01 02:33:03',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:33:03.997',117.077),(620,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:41:53',1,'2011-09-01 02:41:53',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:41:53.802',117.077),(621,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:41:53',1,'2011-09-01 02:41:53',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:41:53.802',117.077),(622,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:41:59',1,'2011-09-01 02:41:59',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:41:59.619',117.077),(623,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:42:01',1,'2011-09-01 02:42:01',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:42:01.455',117.077),(624,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:42:11',1,'2011-09-01 02:42:11',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:42:11.342',117.077),(625,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:42:19',1,'2011-09-01 02:42:19',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:42:19.758',117.077),(626,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:42:22',1,'2011-09-01 02:42:22',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:42:22.834',117.077),(627,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:42:24',1,'2011-09-01 02:42:24',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:42:24.388',117.077),(628,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:43:04',1,'2011-09-01 02:43:04',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:43:04.038',117.077),(629,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:51:54',1,'2011-09-01 02:51:54',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:51:54.452',117.077),(630,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:51:54',1,'2011-09-01 02:51:54',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:51:54.467',117.077),(631,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:51:59',1,'2011-09-01 02:51:59',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:51:59.676',117.077),(632,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:52:01',1,'2011-09-01 02:52:01',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:52:01.503',117.077),(633,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:52:11',1,'2011-09-01 02:52:11',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:52:11.387',117.077),(634,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:52:19',1,'2011-09-01 02:52:19',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:52:19.804',117.077),(635,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:52:22',1,'2011-09-01 02:52:22',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:52:22.881',117.077),(636,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:52:24',1,'2011-09-01 02:52:24',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:52:24.718',117.077),(637,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 02:53:04',1,'2011-09-01 02:53:04',1,32.950420,-117.109168,NULL,'1#2011-09-01 02:53:04.549',117.077),(638,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:01:54',1,'2011-09-01 03:01:54',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:01:54.712',117.077),(639,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:01:54',1,'2011-09-01 03:01:54',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:01:54.879',117.077),(640,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:02:00',1,'2011-09-01 03:02:00',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:02:00.618',117.077),(641,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:02:01',1,'2011-09-01 03:02:01',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:02:01.629',117.077),(642,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:02:11',1,'2011-09-01 03:02:11',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:02:11.431',117.077),(643,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:02:20',1,'2011-09-01 03:02:20',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:02:20.5',117.077),(644,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:02:22',1,'2011-09-01 03:02:22',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:02:22.919',117.077),(645,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:02:24',1,'2011-09-01 03:02:24',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:02:24.811',117.077),(646,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:03:04',1,'2011-09-01 03:03:04',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:03:04.586',117.077),(647,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:11:54',1,'2011-09-01 03:11:54',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:11:54.76',117.077),(648,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:11:54',1,'2011-09-01 03:11:54',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:11:54.925',117.077),(649,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:12:00',1,'2011-09-01 03:12:00',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:12:00.673',117.077),(650,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:12:01',1,'2011-09-01 03:12:01',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:12:01.67',117.077),(651,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:12:11',1,'2011-09-01 03:12:11',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:12:11.477',117.077),(652,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:12:20',1,'2011-09-01 03:12:20',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:12:20.545',117.077),(653,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:12:22',1,'2011-09-01 03:12:22',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:12:22.964',117.077),(654,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:12:24',1,'2011-09-01 03:12:24',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:12:24.846',117.077),(655,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:13:05',1,'2011-09-01 03:13:05',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:13:05.066',117.077),(656,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:21:55',1,'2011-09-01 03:21:55',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:21:55.267',117.077),(657,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:21:55',1,'2011-09-01 03:21:55',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:21:55.288',117.077),(658,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:22:00',1,'2011-09-01 03:22:00',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:22:00.72',117.077),(659,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:22:01',1,'2011-09-01 03:22:01',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:22:01.712',117.077),(660,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:22:11',1,'2011-09-01 03:22:11',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:22:11.518',117.077),(661,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:22:20',1,'2011-09-01 03:22:20',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:22:20.892',117.077),(662,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:22:22',1,'2011-09-01 03:22:22',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:22:23.004',117.077),(663,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:22:24',1,'2011-09-01 03:22:24',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:22:24.884',117.077),(664,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:23:05',1,'2011-09-01 03:23:05',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:23:05.578',117.077),(665,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:31:55',1,'2011-09-01 03:31:55',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:31:55.326',117.077),(666,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:31:55',1,'2011-09-01 03:31:55',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:31:55.337',117.077),(667,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:32:00',1,'2011-09-01 03:32:00',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:32:00.765',117.077),(668,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:32:01',1,'2011-09-01 03:32:01',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:32:01.759',117.077),(669,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:32:11',1,'2011-09-01 03:32:11',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:32:11.562',117.077),(670,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:32:20',1,'2011-09-01 03:32:20',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:32:20.938',117.077),(671,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:32:23',1,'2011-09-01 03:32:23',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:32:23.046',117.077),(672,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:32:24',1,'2011-09-01 03:32:24',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:32:24.928',117.077),(673,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 03:33:05',1,'2011-09-01 03:33:05',1,32.950420,-117.109168,NULL,'1#2011-09-01 03:33:05.625',117.077),(674,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 08:40:45',1,'2011-09-01 08:40:45',1,32.950420,-117.109168,NULL,'1#2011-09-01 08:40:45.084',117.077),(675,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 08:40:45',1,'2011-09-01 08:40:45',1,32.950420,-117.109168,NULL,'1#2011-09-01 08:40:45.084',117.077),(676,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 08:40:45',1,'2011-09-01 08:40:45',1,32.950420,-117.109168,NULL,'1#2011-09-01 08:40:45.114',117.077),(677,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 08:40:45',1,'2011-09-01 08:40:45',1,32.950420,-117.109168,NULL,'1#2011-09-01 08:40:45.136',117.077),(678,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 08:40:45',1,'2011-09-01 08:40:45',1,32.950420,-117.109168,NULL,'1#2011-09-01 08:40:45.173',117.077),(679,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 08:40:48',1,'2011-09-01 08:40:48',1,32.950420,-117.109168,NULL,'1#2011-09-01 08:40:48.079',117.077),(680,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 08:40:48',1,'2011-09-01 08:40:48',1,32.950420,-117.109168,NULL,'1#2011-09-01 08:40:48.083',117.077),(681,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 20:44:46',1,'2011-09-01 20:44:46',1,32.950420,-117.109168,NULL,'1#2011-09-01 20:44:46.031',117.077),(682,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-01 20:44:46',1,'2011-09-01 20:44:46',1,32.950420,-117.109168,NULL,'1#2011-09-01 20:44:46.043',117.077),(683,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-14 23:58:13',1,'2011-09-14 23:58:13',1,32.950429,-117.109158,NULL,'1#2011-09-14 23:58:13.407',117.077),(684,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-14 23:58:20',1,'2011-09-14 23:58:20',1,32.950429,-117.109158,NULL,'1#2011-09-14 23:58:20.679',117.077),(685,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-14 23:58:39',1,'2011-09-14 23:58:39',1,32.950429,-117.109158,NULL,'1#2011-09-14 23:58:39.556',117.077),(686,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-15 00:02:10',1,'2011-09-15 00:02:10',1,32.950339,-117.109656,NULL,'1#2011-09-15 00:02:10.783',117.077),(687,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-15 00:02:24',1,'2011-09-15 00:02:24',1,32.950339,-117.109656,NULL,'1#2011-09-15 00:02:24.126',117.077),(688,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-15 00:09:26',1,'2011-09-15 00:09:26',1,32.950339,-117.109656,NULL,'1#2011-09-15 00:09:26.274',117.077),(689,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-15 00:09:28',1,'2011-09-15 00:09:28',1,32.950339,-117.109656,NULL,'1#2011-09-15 00:09:28.634',117.077),(690,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-15 00:10:01',1,'2011-09-15 00:10:01',1,32.950339,-117.109656,NULL,'1#2011-09-15 00:10:01.782',117.077),(691,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 06:35:54',1,'2011-09-16 06:35:54',1,32.950338,-117.109658,NULL,'1#2011-09-16 06:35:54.576',117.077),(692,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 06:45:56',1,'2011-09-16 06:45:56',1,32.950338,-117.109658,NULL,'1#2011-09-16 06:45:56.779',117.077),(693,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 06:55:56',1,'2011-09-16 06:55:56',1,32.950338,-117.109658,NULL,'1#2011-09-16 06:55:56.874',117.077),(694,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 07:05:57',1,'2011-09-16 07:05:57',1,32.950338,-117.109658,NULL,'1#2011-09-16 07:05:57.707',117.077),(695,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 07:15:57',1,'2011-09-16 07:15:57',1,32.950338,-117.109658,NULL,'1#2011-09-16 07:15:57.748',117.077),(696,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 07:25:58',1,'2011-09-16 07:25:58',1,32.950338,-117.109658,NULL,'1#2011-09-16 07:25:58.017',117.077),(697,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 07:34:59',1,'2011-09-16 07:34:59',1,32.950338,-117.109658,NULL,'1#2011-09-16 07:34:59.743',117.077),(698,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 07:35:58',1,'2011-09-16 07:35:58',1,32.950338,-117.109658,NULL,'1#2011-09-16 07:35:58.102',117.077),(699,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 08:04:16',1,'2011-09-16 08:04:16',1,32.950338,-117.109658,NULL,'1#2011-09-16 08:04:16.173',117.077),(700,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 08:05:57',1,'2011-09-16 08:05:57',1,32.950338,-117.109658,NULL,'1#2011-09-16 08:05:57.974',117.077),(701,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 08:07:50',1,'2011-09-16 08:07:50',1,32.950338,-117.109658,NULL,'1#2011-09-16 08:07:50.721',117.077),(702,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 08:14:16',1,'2011-09-16 08:14:16',1,32.950338,-117.109658,NULL,'1#2011-09-16 08:14:16.703',117.077),(703,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 08:15:58',1,'2011-09-16 08:15:58',1,32.950338,-117.109658,NULL,'1#2011-09-16 08:15:58.025',117.077),(704,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 08:17:51',1,'2011-09-16 08:17:51',1,32.950338,-117.109658,NULL,'1#2011-09-16 08:17:51.747',117.077),(705,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 08:24:16',1,'2011-09-16 08:24:16',1,32.950338,-117.109658,NULL,'1#2011-09-16 08:24:16.754',117.077),(706,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 08:25:58',1,'2011-09-16 08:25:58',1,32.950338,-117.109658,NULL,'1#2011-09-16 08:25:58.113',117.077),(707,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 08:27:52',1,'2011-09-16 08:27:52',1,32.950338,-117.109658,NULL,'1#2011-09-16 08:27:52.302',117.077),(708,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 08:34:17',1,'2011-09-16 08:34:17',1,32.950338,-117.109658,NULL,'1#2011-09-16 08:34:17.091',117.077),(709,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 08:35:58',1,'2011-09-16 08:35:58',1,32.950338,-117.109658,NULL,'1#2011-09-16 08:35:58.167',117.077),(710,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 08:37:52',1,'2011-09-16 08:37:52',1,32.950338,-117.109658,NULL,'1#2011-09-16 08:37:52.756',117.077),(711,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 08:44:17',1,'2011-09-16 08:44:17',1,32.950338,-117.109658,NULL,'1#2011-09-16 08:44:17.128',117.077),(712,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 08:45:58',1,'2011-09-16 08:45:58',1,32.950338,-117.109658,NULL,'1#2011-09-16 08:45:58.773',117.077),(713,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 08:47:53',1,'2011-09-16 08:47:53',1,32.950338,-117.109658,NULL,'1#2011-09-16 08:47:53.704',117.077),(714,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 08:54:17',1,'2011-09-16 08:54:17',1,32.950338,-117.109658,NULL,'1#2011-09-16 08:54:17.18',117.077),(715,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 08:55:58',1,'2011-09-16 08:55:58',1,32.950338,-117.109658,NULL,'1#2011-09-16 08:55:58.819',117.077),(716,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 08:57:53',1,'2011-09-16 08:57:53',1,32.950338,-117.109658,NULL,'1#2011-09-16 08:57:53.753',117.077),(717,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 09:04:17',1,'2011-09-16 09:04:17',1,32.950338,-117.109658,NULL,'1#2011-09-16 09:04:17.908',117.077),(718,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 09:05:59',1,'2011-09-16 09:05:59',1,32.950338,-117.109658,NULL,'1#2011-09-16 09:05:59.369',117.077),(719,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 09:07:53',1,'2011-09-16 09:07:53',1,32.950338,-117.109658,NULL,'1#2011-09-16 09:07:53.797',117.077),(720,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 09:14:18',1,'2011-09-16 09:14:18',1,32.950338,-117.109658,NULL,'1#2011-09-16 09:14:18.519',117.077),(721,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 09:15:59',1,'2011-09-16 09:15:59',1,32.950338,-117.109658,NULL,'1#2011-09-16 09:15:59.425',117.077),(722,1,1,1,NULL,'2011-07-12 22:40:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-09-16 09:17:54',1,'2011-09-16 09:17:54',1,32.950338,-117.109658,NULL,'1#2011-09-16 09:17:54.209',117.077);
/*!40000 ALTER TABLE `vehicle_movement_log_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vehicle_toll_usage`
--

DROP TABLE IF EXISTS `vehicle_toll_usage`;
/*!50001 DROP VIEW IF EXISTS `vehicle_toll_usage`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vehicle_toll_usage` (
  `vtu_id` int(11),
  `uvh_id` int(11),
  `toll_loc_id` int(11),
  `tph_id` int(11),
  `timestamp` datetime,
  `vml_id` int(11),
  `ptran_id` int(11),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `last_modified_by` int(11),
  `last_modified_on` datetime,
  `created_on` datetime,
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vehicle_toll_usage_all`
--

DROP TABLE IF EXISTS `vehicle_toll_usage_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_toll_usage_all` (
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
  KEY `fk_client_vtu` (`client_id`),
  CONSTRAINT `fk_client_vtu` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_vtu_pt` FOREIGN KEY (`ptran_id`) REFERENCES `payment_transaction_all` (`ptran_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_vtu_tl` FOREIGN KEY (`toll_loc_id`) REFERENCES `toll_location_all` (`toll_location_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_vtu_tp` FOREIGN KEY (`tph_id`) REFERENCES `toll_price_history_all` (`tph_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vtu_uv` FOREIGN KEY (`uvh_id`) REFERENCES `user_vehicle_history_all` (`uvh_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_vtu_vml` FOREIGN KEY (`vml_id`) REFERENCES `vehicle_movement_log_all` (`vml_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Payment to be done by each vehicle and other details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_toll_usage_all`
--

LOCK TABLES `vehicle_toll_usage_all` WRITE;
/*!40000 ALTER TABLE `vehicle_toll_usage_all` DISABLE KEYS */;
INSERT INTO `vehicle_toll_usage_all` VALUES (-1,1,-1,1,'2011-06-24 01:17:04',-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,'2011-06-24 00:34:47','2011-06-24 00:27:09',-1);
/*!40000 ALTER TABLE `vehicle_toll_usage_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vehicle_type`
--

DROP TABLE IF EXISTS `vehicle_type`;
/*!50001 DROP VIEW IF EXISTS `vehicle_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vehicle_type` (
  `vehicle_type_id` int(11),
  `name` varchar(100),
  `description` varchar(1000),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `created_on` datetime,
  `last_modified_on` datetime,
  `last_modified_by` int(11),
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vehicle_type_all`
--

DROP TABLE IF EXISTS `vehicle_type_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_type_all` (
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
  KEY `fk_client_vtp` (`client_id`),
  CONSTRAINT `fk_client_vtp` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_vta` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='The different types of vehicles identified by the toll agenc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_type_all`
--

LOCK TABLES `vehicle_type_all` WRITE;
/*!40000 ALTER TABLE `vehicle_type_all` DISABLE KEYS */;
INSERT INTO `vehicle_type_all` VALUES (-1,'none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-06-24 01:13:32','2011-06-24 01:17:14',-1,-1),(1,'4-wheeler ','car',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-06-24 03:40:04','2011-06-24 03:40:04',-1,1);
/*!40000 ALTER TABLE `vehicle_type_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vml_type`
--

DROP TABLE IF EXISTS `vml_type`;
/*!50001 DROP VIEW IF EXISTS `vml_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vml_type` (
  `vml_type_id` int(11),
  `name` varchar(45),
  `description` varchar(60),
  `udf1` varchar(1000),
  `udf2` varchar(1000),
  `udf3` varchar(1000),
  `udf4` varchar(1000),
  `udf5` varchar(1000),
  `flag1` varchar(1),
  `flag2` varchar(1),
  `flag3` varchar(1),
  `flag4` varchar(1),
  `flag5` varchar(1),
  `last_modified_by` int(11),
  `last_modified_on` datetime,
  `created_on` datetime,
  `client_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vml_type_all`
--

DROP TABLE IF EXISTS `vml_type_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vml_type_all` (
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
  KEY `fk_last_mod_by_all` (`last_modified_by`),
  CONSTRAINT `fk_client_vmlt` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_all` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table has log type(start, stop, toll usage, heart beat ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vml_type_all`
--

LOCK TABLES `vml_type_all` WRITE;
/*!40000 ALTER TABLE `vml_type_all` DISABLE KEYS */;
INSERT INTO `vml_type_all` VALUES (-1,'test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,'2011-06-24 00:36:45','2011-06-24 00:27:09',-1),(1,'test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,'2011-07-12 12:56:33','2011-07-12 12:56:41',1);
/*!40000 ALTER TABLE `vml_type_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'globaltoll'
--
/*!50003 DROP FUNCTION IF EXISTS `GetEndDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `GetEndDate`() RETURNS datetime
BEGIN
	Return sysdate()- Interval 1 second ;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetInfFuture` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `GetInfFuture`() RETURNS datetime
BEGIN
	RETURN '3000-01-01 00:00:00';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetStartDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `GetStartDate`() RETURNS datetime
BEGIN
	RETURN sysdate();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `globaltoll`
--

USE `globaltoll`;

--
-- Final view structure for view `cc_type`
--

/*!50001 DROP TABLE IF EXISTS `cc_type`*/;
/*!50001 DROP VIEW IF EXISTS `cc_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cc_type` AS select `cc_type_all`.`cc_type_id` AS `cc_type_id`,`cc_type_all`.`name` AS `name`,`cc_type_all`.`description` AS `description`,`cc_type_all`.`udf1` AS `udf1`,`cc_type_all`.`udf2` AS `udf2`,`cc_type_all`.`udf3` AS `udf3`,`cc_type_all`.`udf4` AS `udf4`,`cc_type_all`.`udf5` AS `udf5`,`cc_type_all`.`flag1` AS `flag1`,`cc_type_all`.`flag2` AS `flag2`,`cc_type_all`.`flag3` AS `flag3`,`cc_type_all`.`flag4` AS `flag4`,`cc_type_all`.`flag5` AS `flag5`,`cc_type_all`.`created_on` AS `created_on`,`cc_type_all`.`last_modified_on` AS `last_modified_on`,`cc_type_all`.`last_modified_by` AS `last_modified_by`,`cc_type_all`.`client_id` AS `client_id` from `cc_type_all` where (`cc_type_all`.`cc_type_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `client`
--

/*!50001 DROP TABLE IF EXISTS `client`*/;
/*!50001 DROP VIEW IF EXISTS `client`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `client` AS select `client_all`.`client_id` AS `client_id`,`client_all`.`client_name` AS `client_name`,`client_all`.`udf1` AS `udf1`,`client_all`.`udf2` AS `udf2`,`client_all`.`udf3` AS `udf3`,`client_all`.`udf4` AS `udf4`,`client_all`.`udf5` AS `udf5`,`client_all`.`flag1` AS `flag1`,`client_all`.`flag2` AS `flag2`,`client_all`.`flag3` AS `flag3`,`client_all`.`flag4` AS `flag4`,`client_all`.`flag5` AS `flag5`,`client_all`.`created_on` AS `created_on`,`client_all`.`last_modified_on` AS `last_modified_on`,`client_all`.`last_modified_by` AS `last_modified_by` from `client_all` where (`client_all`.`client_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `component`
--

/*!50001 DROP TABLE IF EXISTS `component`*/;
/*!50001 DROP VIEW IF EXISTS `component`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `component` AS select `component_all`.`component_id` AS `component_id`,`component_all`.`name` AS `name`,`component_all`.`description` AS `description`,`component_all`.`client_id` AS `client_id`,`component_all`.`udf1` AS `udf1`,`component_all`.`udf2` AS `udf2`,`component_all`.`udf3` AS `udf3`,`component_all`.`udf4` AS `udf4`,`component_all`.`udf5` AS `udf5`,`component_all`.`flag1` AS `flag1`,`component_all`.`flag2` AS `flag2`,`component_all`.`flag3` AS `flag3`,`component_all`.`flag4` AS `flag4`,`component_all`.`flag5` AS `flag5`,`component_all`.`created_on` AS `created_on`,`component_all`.`last_modified_on` AS `last_modified_on`,`component_all`.`last_modified_by` AS `last_modified_by` from `component_all` where (`component_all`.`component_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `component_version`
--

/*!50001 DROP TABLE IF EXISTS `component_version`*/;
/*!50001 DROP VIEW IF EXISTS `component_version`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `component_version` AS select `component_version_all`.`comp_version_id` AS `comp_version_id`,`component_version_all`.`component_id` AS `component_id`,`component_version_all`.`description` AS `description`,`component_version_all`.`list_of_changes` AS `list_of_changes`,`component_version_all`.`udf1` AS `udf1`,`component_version_all`.`udf2` AS `udf2`,`component_version_all`.`udf3` AS `udf3`,`component_version_all`.`udf4` AS `udf4`,`component_version_all`.`udf5` AS `udf5`,`component_version_all`.`flag1` AS `flag1`,`component_version_all`.`flag2` AS `flag2`,`component_version_all`.`flag3` AS `flag3`,`component_version_all`.`flag4` AS `flag4`,`component_version_all`.`flag5` AS `flag5`,`component_version_all`.`created_on` AS `created_on`,`component_version_all`.`last_modified_on` AS `last_modified_on`,`component_version_all`.`last_modified_by` AS `last_modified_by`,`component_version_all`.`version` AS `version` from `component_version_all` where (`component_version_all`.`comp_version_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `configuration`
--

/*!50001 DROP TABLE IF EXISTS `configuration`*/;
/*!50001 DROP VIEW IF EXISTS `configuration`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `configuration` AS select `configuration_all`.`config_id` AS `config_id`,`configuration_all`.`comp_version_id` AS `comp_version_id`,`configuration_all`.`key` AS `key`,`configuration_all`.`value` AS `value`,`configuration_all`.`udf1` AS `udf1`,`configuration_all`.`udf2` AS `udf2`,`configuration_all`.`udf3` AS `udf3`,`configuration_all`.`udf4` AS `udf4`,`configuration_all`.`udf5` AS `udf5`,`configuration_all`.`flag1` AS `flag1`,`configuration_all`.`flag2` AS `flag2`,`configuration_all`.`flag3` AS `flag3`,`configuration_all`.`flag4` AS `flag4`,`configuration_all`.`flag5` AS `flag5`,`configuration_all`.`created_on` AS `created_on`,`configuration_all`.`last_modified_on` AS `last_modified_on`,`configuration_all`.`last_modified_by` AS `last_modified_by` from `configuration_all` where (`configuration_all`.`config_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `device`
--

/*!50001 DROP TABLE IF EXISTS `device`*/;
/*!50001 DROP VIEW IF EXISTS `device`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `device` AS select `device_all`.`device_id` AS `device_id`,`device_all`.`user_id` AS `user_id`,`device_all`.`device_uuid` AS `device_uuid`,`device_all`.`device_type` AS `device_type`,`device_all`.`vehicle_id` AS `vehicle_id`,`device_all`.`is_active` AS `is_active`,`device_all`.`last_login_time` AS `last_login_time`,`device_all`.`udf1` AS `udf1`,`device_all`.`udf2` AS `udf2`,`device_all`.`udf3` AS `udf3`,`device_all`.`udf4` AS `udf4`,`device_all`.`udf5` AS `udf5`,`device_all`.`flag1` AS `flag1`,`device_all`.`flag2` AS `flag2`,`device_all`.`flag3` AS `flag3`,`device_all`.`flag4` AS `flag4`,`device_all`.`flag5` AS `flag5`,`device_all`.`created_on` AS `created_on`,`device_all`.`last_modified_on` AS `last_modified_on`,`device_all`.`last_modified_by` AS `last_modified_by`,`device_all`.`client_id` AS `client_id` from `device_all` where (`device_all`.`device_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `device_history`
--

/*!50001 DROP TABLE IF EXISTS `device_history`*/;
/*!50001 DROP VIEW IF EXISTS `device_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `device_history` AS select `device_history_all`.`device_history_id` AS `device_history_id`,`device_history_all`.`device_id` AS `device_id`,`device_history_all`.`user_id` AS `user_id`,`device_history_all`.`device_uuid` AS `device_uuid`,`device_history_all`.`device_type` AS `device_type`,`device_history_all`.`vehicle_id` AS `vehicle_id`,`device_history_all`.`is_active` AS `is_active`,`device_history_all`.`last_login_time` AS `last_login_time`,`device_history_all`.`udf1` AS `udf1`,`device_history_all`.`udf2` AS `udf2`,`device_history_all`.`udf3` AS `udf3`,`device_history_all`.`udf4` AS `udf4`,`device_history_all`.`udf5` AS `udf5`,`device_history_all`.`flag1` AS `flag1`,`device_history_all`.`flag2` AS `flag2`,`device_history_all`.`flag3` AS `flag3`,`device_history_all`.`flag4` AS `flag4`,`device_history_all`.`flag5` AS `flag5`,`device_history_all`.`client_id` AS `client_id`,`device_history_all`.`last_modified_by` AS `last_modified_by`,`device_history_all`.`last_modified_on` AS `last_modified_on`,`device_history_all`.`created_on` AS `created_on`,`device_history_all`.`start_date` AS `start_date`,`device_history_all`.`end_date` AS `end_date`,`device_history_all`.`action` AS `action` from `device_history_all` where (`device_history_all`.`device_history_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `owner_type`
--

/*!50001 DROP TABLE IF EXISTS `owner_type`*/;
/*!50001 DROP VIEW IF EXISTS `owner_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `owner_type` AS select `owner_type_all`.`owner_type_id` AS `owner_type_id`,`owner_type_all`.`name` AS `name`,`owner_type_all`.`description` AS `description`,`owner_type_all`.`udf1` AS `udf1`,`owner_type_all`.`udf2` AS `udf2`,`owner_type_all`.`udf3` AS `udf3`,`owner_type_all`.`udf4` AS `udf4`,`owner_type_all`.`udf5` AS `udf5`,`owner_type_all`.`falg1` AS `falg1`,`owner_type_all`.`flag2` AS `flag2`,`owner_type_all`.`flag3` AS `flag3`,`owner_type_all`.`flag4` AS `flag4`,`owner_type_all`.`flag5` AS `flag5`,`owner_type_all`.`created_on` AS `created_on`,`owner_type_all`.`last_modifiede_on` AS `last_modifiede_on`,`owner_type_all`.`last_modified_by` AS `last_modified_by`,`owner_type_all`.`client_id` AS `client_id` from `owner_type_all` where (`owner_type_all`.`owner_type_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `payment_transaction`
--

/*!50001 DROP TABLE IF EXISTS `payment_transaction`*/;
/*!50001 DROP VIEW IF EXISTS `payment_transaction`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `payment_transaction` AS select `payment_transaction_all`.`ptran_id` AS `ptran_id`,`payment_transaction_all`.`user_bl_id` AS `user_bl_id`,`payment_transaction_all`.`to_bl_id` AS `to_bl_id`,`payment_transaction_all`.`updh_id` AS `updh_id`,`payment_transaction_all`.`timestamp` AS `timestamp`,`payment_transaction_all`.`status` AS `status`,`payment_transaction_all`.`amount` AS `amount`,`payment_transaction_all`.`udf1` AS `udf1`,`payment_transaction_all`.`udf2` AS `udf2`,`payment_transaction_all`.`udf3` AS `udf3`,`payment_transaction_all`.`udf4` AS `udf4`,`payment_transaction_all`.`udf5` AS `udf5`,`payment_transaction_all`.`flag1` AS `flag1`,`payment_transaction_all`.`flag2` AS `flag2`,`payment_transaction_all`.`flag3` AS `flag3`,`payment_transaction_all`.`flag4` AS `flag4`,`payment_transaction_all`.`flag5` AS `flag5`,`payment_transaction_all`.`last_modified_by` AS `last_modified_by`,`payment_transaction_all`.`last_modified_on` AS `last_modified_on`,`payment_transaction_all`.`created_on` AS `created_on`,`payment_transaction_all`.`client_id` AS `client_id` from `payment_transaction_all` where (`payment_transaction_all`.`ptran_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `road`
--

/*!50001 DROP TABLE IF EXISTS `road`*/;
/*!50001 DROP VIEW IF EXISTS `road`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `road` AS select `road_all`.`road_id` AS `road_id`,`road_all`.`name` AS `name`,`road_all`.`type` AS `type`,`road_all`.`start_location` AS `start_location`,`road_all`.`end_location` AS `end_location`,`road_all`.`udf1` AS `udf1`,`road_all`.`udf2` AS `udf2`,`road_all`.`udf3` AS `udf3`,`road_all`.`udf4` AS `udf4`,`road_all`.`udf5` AS `udf5`,`road_all`.`flag1` AS `flag1`,`road_all`.`flag2` AS `flag2`,`road_all`.`flag3` AS `flag3`,`road_all`.`flag4` AS `flag4`,`road_all`.`flag5` AS `flag5`,`road_all`.`created_on` AS `created_on`,`road_all`.`last_modified_on` AS `last_modified_on`,`road_all`.`last_modified_by` AS `last_modified_by`,`road_all`.`client_id` AS `client_id` from `road_all` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `service_plan`
--

/*!50001 DROP TABLE IF EXISTS `service_plan`*/;
/*!50001 DROP VIEW IF EXISTS `service_plan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `service_plan` AS select `service_plan_all`.`service_plan_id` AS `service_plan_id`,`service_plan_all`.`toll_operator_id` AS `toll_operator_id`,`service_plan_all`.`name` AS `name`,`service_plan_all`.`description` AS `description`,`service_plan_all`.`udf1` AS `udf1`,`service_plan_all`.`udf2` AS `udf2`,`service_plan_all`.`udf3` AS `udf3`,`service_plan_all`.`udf4` AS `udf4`,`service_plan_all`.`udf5` AS `udf5`,`service_plan_all`.`flag1` AS `flag1`,`service_plan_all`.`flag2` AS `flag2`,`service_plan_all`.`flag3` AS `flag3`,`service_plan_all`.`flag4` AS `flag4`,`service_plan_all`.`flag5` AS `flag5`,`service_plan_all`.`last_modified_on` AS `last_modified_on`,`service_plan_all`.`last_modified_by` AS `last_modified_by`,`service_plan_all`.`created_on` AS `created_on`,`service_plan_all`.`client_id` AS `client_id` from `service_plan_all` where (`service_plan_all`.`service_plan_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `toll_location`
--

/*!50001 DROP TABLE IF EXISTS `toll_location`*/;
/*!50001 DROP VIEW IF EXISTS `toll_location`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `toll_location` AS select `toll_location_all`.`toll_location_id` AS `toll_location_id`,`toll_location_all`.`toll_operator_id` AS `toll_operator_id`,`toll_location_all`.`geometry` AS `geometry`,`toll_location_all`.`is_covered` AS `is_covered`,`toll_location_all`.`is_cash_only` AS `is_cash_only`,`toll_location_all`.`address1` AS `address1`,`toll_location_all`.`address2` AS `address2`,`toll_location_all`.`city` AS `city`,`toll_location_all`.`state` AS `state`,`toll_location_all`.`country` AS `country`,`toll_location_all`.`zip` AS `zip`,`toll_location_all`.`udf1` AS `udf1`,`toll_location_all`.`udf2` AS `udf2`,`toll_location_all`.`udf3` AS `udf3`,`toll_location_all`.`udf4` AS `udf4`,`toll_location_all`.`udf5` AS `udf5`,`toll_location_all`.`flag1` AS `flag1`,`toll_location_all`.`flag2` AS `flag2`,`toll_location_all`.`flag3` AS `flag3`,`toll_location_all`.`flag4` AS `flag4`,`toll_location_all`.`flag5` AS `flag5`,`toll_location_all`.`last_modified_by` AS `last_modified_by`,`toll_location_all`.`last_modified_on` AS `last_modified_on`,`toll_location_all`.`created_on` AS `created_on`,`toll_location_all`.`client_id` AS `client_id`,`toll_location_all`.`latitude` AS `latitude`,`toll_location_all`.`longitude` AS `longitude`,`toll_location_all`.`direction` AS `direction`,`toll_location_all`.`type` AS `type` from `toll_location_all` where (`toll_location_all`.`toll_location_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `toll_location_history`
--

/*!50001 DROP TABLE IF EXISTS `toll_location_history`*/;
/*!50001 DROP VIEW IF EXISTS `toll_location_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `toll_location_history` AS select `toll_location_history_all`.`tlh_id` AS `tlh_id`,`toll_location_history_all`.`toll_location_id` AS `toll_location_id`,`toll_location_history_all`.`toll_operator_id` AS `toll_operator_id`,`toll_location_history_all`.`geometry` AS `geometry`,`toll_location_history_all`.`is_covered` AS `is_covered`,`toll_location_history_all`.`is_cash_only` AS `is_cash_only`,`toll_location_history_all`.`address1` AS `address1`,`toll_location_history_all`.`address2` AS `address2`,`toll_location_history_all`.`city` AS `city`,`toll_location_history_all`.`state` AS `state`,`toll_location_history_all`.`country` AS `country`,`toll_location_history_all`.`zip` AS `zip`,`toll_location_history_all`.`udf1` AS `udf1`,`toll_location_history_all`.`udf2` AS `udf2`,`toll_location_history_all`.`udf3` AS `udf3`,`toll_location_history_all`.`udf4` AS `udf4`,`toll_location_history_all`.`udf5` AS `udf5`,`toll_location_history_all`.`flag1` AS `flag1`,`toll_location_history_all`.`flag2` AS `flag2`,`toll_location_history_all`.`flag3` AS `flag3`,`toll_location_history_all`.`flag4` AS `flag4`,`toll_location_history_all`.`flag5` AS `flag5`,`toll_location_history_all`.`created_on` AS `created_on`,`toll_location_history_all`.`last_modified_on` AS `last_modified_on`,`toll_location_history_all`.`last_modified_by` AS `last_modified_by`,`toll_location_history_all`.`start_date` AS `start_date`,`toll_location_history_all`.`end_date` AS `end_date`,`toll_location_history_all`.`action` AS `action`,`toll_location_history_all`.`client_id` AS `client_id`,`toll_location_history_all`.`latitude` AS `latitude`,`toll_location_history_all`.`longitude` AS `longitude` from `toll_location_history_all` where (`toll_location_history_all`.`tlh_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `toll_operator`
--

/*!50001 DROP TABLE IF EXISTS `toll_operator`*/;
/*!50001 DROP VIEW IF EXISTS `toll_operator`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `toll_operator` AS select `toll_operator_all`.`toll_operator_id` AS `toll_operator_id`,`toll_operator_all`.`user_id` AS `user_id`,`toll_operator_all`.`name` AS `name`,`toll_operator_all`.`is_active` AS `is_active`,`toll_operator_all`.`website` AS `website`,`toll_operator_all`.`udf1` AS `udf1`,`toll_operator_all`.`udf2` AS `udf2`,`toll_operator_all`.`udf3` AS `udf3`,`toll_operator_all`.`udf4` AS `udf4`,`toll_operator_all`.`udf5` AS `udf5`,`toll_operator_all`.`flag1` AS `flag1`,`toll_operator_all`.`flag2` AS `flag2`,`toll_operator_all`.`flag3` AS `flag3`,`toll_operator_all`.`flag4` AS `flag4`,`toll_operator_all`.`flag5` AS `flag5`,`toll_operator_all`.`created_on` AS `created_on`,`toll_operator_all`.`last_modified_on` AS `last_modified_on`,`toll_operator_all`.`last_modified_by` AS `last_modified_by`,`toll_operator_all`.`client_id` AS `client_id` from `toll_operator_all` where (`toll_operator_all`.`toll_operator_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `toll_price`
--

/*!50001 DROP TABLE IF EXISTS `toll_price`*/;
/*!50001 DROP VIEW IF EXISTS `toll_price`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `toll_price` AS select `toll_price_all`.`toll_price_id` AS `toll_price_id`,`toll_price_all`.`toll_location_id` AS `toll_location_id`,`toll_price_all`.`vehicle_type_id` AS `vehicle_type_id`,`toll_price_all`.`cost_price` AS `cost_price`,`toll_price_all`.`selling_price` AS `selling_price`,`toll_price_all`.`udf1` AS `udf1`,`toll_price_all`.`udf2` AS `udf2`,`toll_price_all`.`udf3` AS `udf3`,`toll_price_all`.`udf4` AS `udf4`,`toll_price_all`.`udf5` AS `udf5`,`toll_price_all`.`flag1` AS `flag1`,`toll_price_all`.`flag2` AS `flag2`,`toll_price_all`.`flag3` AS `flag3`,`toll_price_all`.`flag4` AS `flag4`,`toll_price_all`.`flag5` AS `flag5`,`toll_price_all`.`last_modified_by` AS `last_modified_by`,`toll_price_all`.`last_modified_on` AS `last_modified_on`,`toll_price_all`.`created_on` AS `created_on`,`toll_price_all`.`client_id` AS `client_id` from `toll_price_all` where (`toll_price_all`.`toll_price_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `toll_price_history`
--

/*!50001 DROP TABLE IF EXISTS `toll_price_history`*/;
/*!50001 DROP VIEW IF EXISTS `toll_price_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `toll_price_history` AS select `toll_price_history_all`.`tph_id` AS `tph_id`,`toll_price_history_all`.`toll_price_id` AS `toll_price_id`,`toll_price_history_all`.`toll_location_id` AS `toll_location_id`,`toll_price_history_all`.`vehicle_type_id` AS `vehicle_type_id`,`toll_price_history_all`.`direction` AS `direction`,`toll_price_history_all`.`cost_price` AS `cost_price`,`toll_price_history_all`.`selling_price` AS `selling_price`,`toll_price_history_all`.`action` AS `action`,`toll_price_history_all`.`udf1` AS `udf1`,`toll_price_history_all`.`udf2` AS `udf2`,`toll_price_history_all`.`udf3` AS `udf3`,`toll_price_history_all`.`udf4` AS `udf4`,`toll_price_history_all`.`udf5` AS `udf5`,`toll_price_history_all`.`flag1` AS `flag1`,`toll_price_history_all`.`flag2` AS `flag2`,`toll_price_history_all`.`flag3` AS `flag3`,`toll_price_history_all`.`flag4` AS `flag4`,`toll_price_history_all`.`flag5` AS `flag5`,`toll_price_history_all`.`created_on` AS `created_on`,`toll_price_history_all`.`last_modified_on` AS `last_modified_on`,`toll_price_history_all`.`last_modified_by` AS `last_modified_by`,`toll_price_history_all`.`start_date` AS `start_date`,`toll_price_history_all`.`end_date` AS `end_date`,`toll_price_history_all`.`client_id` AS `client_id` from `toll_price_history_all` where (`toll_price_history_all`.`tph_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user`
--

/*!50001 DROP TABLE IF EXISTS `user`*/;
/*!50001 DROP VIEW IF EXISTS `user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user` AS select `user_all`.`user_id` AS `user_id`,`user_all`.`client_id` AS `client_id`,`user_all`.`utype_id` AS `utype_id`,`user_all`.`user_name` AS `user_name`,`user_all`.`password` AS `password`,`user_all`.`locale` AS `locale`,`user_all`.`is_active` AS `is_active`,`user_all`.`contact_no` AS `contact_no`,`user_all`.`last_login_time` AS `last_login_time`,`user_all`.`udf1` AS `udf1`,`user_all`.`udf2` AS `udf2`,`user_all`.`udf3` AS `udf3`,`user_all`.`udf4` AS `udf4`,`user_all`.`udf5` AS `udf5`,`user_all`.`flag1` AS `flag1`,`user_all`.`flag2` AS `flag2`,`user_all`.`flag3` AS `flag3`,`user_all`.`flag4` AS `flag4`,`user_all`.`flag5` AS `flag5`,`user_all`.`created_on` AS `created_on`,`user_all`.`last_modified_on` AS `last_modified_on`,`user_all`.`last_modified_by` AS `last_modified_by` from `user_all` where (`user_all`.`user_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_balance`
--

/*!50001 DROP TABLE IF EXISTS `user_balance`*/;
/*!50001 DROP VIEW IF EXISTS `user_balance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_balance` AS select `user_balance_all`.`ubal_id` AS `ubal_id`,`user_balance_all`.`user_id` AS `user_id`,`user_balance_all`.`balance` AS `balance`,`user_balance_all`.`udf1` AS `udf1`,`user_balance_all`.`udf2` AS `udf2`,`user_balance_all`.`udf3` AS `udf3`,`user_balance_all`.`udf4` AS `udf4`,`user_balance_all`.`udf5` AS `udf5`,`user_balance_all`.`flag1` AS `flag1`,`user_balance_all`.`flag2` AS `flag2`,`user_balance_all`.`flag3` AS `flag3`,`user_balance_all`.`flag4` AS `flag4`,`user_balance_all`.`flag5` AS `flag5`,`user_balance_all`.`last_modified_by` AS `last_modified_by`,`user_balance_all`.`last_modified_on` AS `last_modified_on`,`user_balance_all`.`created_on` AS `created_on`,`user_balance_all`.`client_id` AS `client_id` from `user_balance_all` where (`user_balance_all`.`ubal_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_balance_log`
--

/*!50001 DROP TABLE IF EXISTS `user_balance_log`*/;
/*!50001 DROP VIEW IF EXISTS `user_balance_log`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_balance_log` AS select `user_balance_log_all`.`ublog_id` AS `ublog_id`,`user_balance_log_all`.`ubal_id` AS `ubal_id`,`user_balance_log_all`.`delta` AS `delta`,`user_balance_log_all`.`timestamp` AS `timestamp`,`user_balance_log_all`.`action` AS `action`,`user_balance_log_all`.`udf1` AS `udf1`,`user_balance_log_all`.`udf2` AS `udf2`,`user_balance_log_all`.`udf3` AS `udf3`,`user_balance_log_all`.`udf4` AS `udf4`,`user_balance_log_all`.`udf5` AS `udf5`,`user_balance_log_all`.`flag1` AS `flag1`,`user_balance_log_all`.`flag2` AS `flag2`,`user_balance_log_all`.`flag3` AS `flag3`,`user_balance_log_all`.`flag4` AS `flag4`,`user_balance_log_all`.`flag5` AS `flag5`,`user_balance_log_all`.`last_modified_by` AS `last_modified_by`,`user_balance_log_all`.`last_modified_on` AS `last_modified_on`,`user_balance_log_all`.`created_on` AS `created_on`,`user_balance_log_all`.`client_id` AS `client_id` from `user_balance_log_all` where (`user_balance_log_all`.`ublog_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_history`
--

/*!50001 DROP TABLE IF EXISTS `user_history`*/;
/*!50001 DROP VIEW IF EXISTS `user_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_history` AS select `user_history_all`.`user_his_id` AS `user_his_id`,`user_history_all`.`user_id` AS `user_id`,`user_history_all`.`user_name` AS `user_name`,`user_history_all`.`password` AS `password`,`user_history_all`.`locale` AS `locale`,`user_history_all`.`utype_id` AS `utype_id`,`user_history_all`.`last_login_time` AS `last_login_time`,`user_history_all`.`is_active` AS `is_active`,`user_history_all`.`contact_no` AS `contact_no`,`user_history_all`.`client_id` AS `client_id`,`user_history_all`.`action` AS `action`,`user_history_all`.`udf1` AS `udf1`,`user_history_all`.`udf2` AS `udf2`,`user_history_all`.`udf3` AS `udf3`,`user_history_all`.`udf4` AS `udf4`,`user_history_all`.`udf5` AS `udf5`,`user_history_all`.`flag1` AS `flag1`,`user_history_all`.`flag2` AS `flag2`,`user_history_all`.`flag3` AS `flag3`,`user_history_all`.`flag4` AS `flag4`,`user_history_all`.`flag5` AS `flag5`,`user_history_all`.`created_on` AS `created_on`,`user_history_all`.`last_modified_on` AS `last_modified_on`,`user_history_all`.`last_modified_by` AS `last_modified_by`,`user_history_all`.`start_date` AS `start_date`,`user_history_all`.`end_date` AS `end_date` from `user_history_all` where (`user_history_all`.`user_his_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_notification`
--

/*!50001 DROP TABLE IF EXISTS `user_notification`*/;
/*!50001 DROP VIEW IF EXISTS `user_notification`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_notification` AS select `user_notification_all`.`user_notification_id` AS `user_notification_id`,`user_notification_all`.`user_id` AS `user_id`,`user_notification_all`.`user_notification_type_id` AS `user_notification_type_id`,`user_notification_all`.`timestamp` AS `timestamp`,`user_notification_all`.`description` AS `description`,`user_notification_all`.`udf1` AS `udf1`,`user_notification_all`.`udf2` AS `udf2`,`user_notification_all`.`udf3` AS `udf3`,`user_notification_all`.`udf4` AS `udf4`,`user_notification_all`.`udf5` AS `udf5`,`user_notification_all`.`flag1` AS `flag1`,`user_notification_all`.`flag2` AS `flag2`,`user_notification_all`.`flag3` AS `flag3`,`user_notification_all`.`flag4` AS `flag4`,`user_notification_all`.`flag5` AS `flag5`,`user_notification_all`.`created_on` AS `created_on`,`user_notification_all`.`last_modified_on` AS `last_modified_on`,`user_notification_all`.`last_modified_by` AS `last_modified_by`,`user_notification_all`.`client_id` AS `client_id` from `user_notification_all` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_notification_settings`
--

/*!50001 DROP TABLE IF EXISTS `user_notification_settings`*/;
/*!50001 DROP VIEW IF EXISTS `user_notification_settings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_notification_settings` AS select `user_notification_settings_all`.`user_notification_settings_id` AS `user_notification_settings_id`,`user_notification_settings_all`.`user_id` AS `user_id`,`user_notification_settings_all`.`user_notification_type_id` AS `user_notification_type_id`,`user_notification_settings_all`.`udf1` AS `udf1`,`user_notification_settings_all`.`udf2` AS `udf2`,`user_notification_settings_all`.`udf3` AS `udf3`,`user_notification_settings_all`.`udf4` AS `udf4`,`user_notification_settings_all`.`udf5` AS `udf5`,`user_notification_settings_all`.`flag1` AS `flag1`,`user_notification_settings_all`.`flag2` AS `flag2`,`user_notification_settings_all`.`flag3` AS `flag3`,`user_notification_settings_all`.`flag4` AS `flag4`,`user_notification_settings_all`.`flag5` AS `flag5`,`user_notification_settings_all`.`created_on` AS `created_on`,`user_notification_settings_all`.`last_modified_on` AS `last_modified_on`,`user_notification_settings_all`.`last_modified_by` AS `last_modified_by`,`user_notification_settings_all`.`client_id` AS `client_id` from `user_notification_settings_all` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_notification_type`
--

/*!50001 DROP TABLE IF EXISTS `user_notification_type`*/;
/*!50001 DROP VIEW IF EXISTS `user_notification_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_notification_type` AS select `user_notification_type_all`.`user_notification_type_id` AS `user_notification_type_id`,`user_notification_type_all`.`notification_type` AS `notification_type`,`user_notification_type_all`.`description` AS `description`,`user_notification_type_all`.`udf1` AS `udf1`,`user_notification_type_all`.`udf2` AS `udf2`,`user_notification_type_all`.`udf3` AS `udf3`,`user_notification_type_all`.`udf4` AS `udf4`,`user_notification_type_all`.`udf5` AS `udf5`,`user_notification_type_all`.`flag1` AS `flag1`,`user_notification_type_all`.`flag2` AS `flag2`,`user_notification_type_all`.`flag3` AS `flag3`,`user_notification_type_all`.`flag4` AS `flag4`,`user_notification_type_all`.`flag5` AS `flag5`,`user_notification_type_all`.`created_on` AS `created_on`,`user_notification_type_all`.`last_modified_on` AS `last_modified_on`,`user_notification_type_all`.`last_modified_by` AS `last_modified_by`,`user_notification_type_all`.`client_id` AS `client_id` from `user_notification_type_all` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_payment_detail`
--

/*!50001 DROP TABLE IF EXISTS `user_payment_detail`*/;
/*!50001 DROP VIEW IF EXISTS `user_payment_detail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_payment_detail` AS select `user_payment_detail_all`.`upd_id` AS `upd_id`,`user_payment_detail_all`.`user_id` AS `user_id`,`user_payment_detail_all`.`cc_type_id` AS `cc_type_id`,`user_payment_detail_all`.`cc_ac_name` AS `cc_ac_name`,`user_payment_detail_all`.`cc_number` AS `cc_number`,`user_payment_detail_all`.`cc_exp_month` AS `cc_exp_month`,`user_payment_detail_all`.`cc_exp_year` AS `cc_exp_year`,`user_payment_detail_all`.`cc_cvv` AS `cc_cvv`,`user_payment_detail_all`.`bank_routing` AS `bank_routing`,`user_payment_detail_all`.`bank_account` AS `bank_account`,`user_payment_detail_all`.`pay_prefer` AS `pay_prefer`,`user_payment_detail_all`.`address1` AS `address1`,`user_payment_detail_all`.`address2` AS `address2`,`user_payment_detail_all`.`city` AS `city`,`user_payment_detail_all`.`state` AS `state`,`user_payment_detail_all`.`country` AS `country`,`user_payment_detail_all`.`zip` AS `zip`,`user_payment_detail_all`.`udf1` AS `udf1`,`user_payment_detail_all`.`udf2` AS `udf2`,`user_payment_detail_all`.`udf3` AS `udf3`,`user_payment_detail_all`.`udf4` AS `udf4`,`user_payment_detail_all`.`udf5` AS `udf5`,`user_payment_detail_all`.`flag1` AS `flag1`,`user_payment_detail_all`.`flag2` AS `flag2`,`user_payment_detail_all`.`flag3` AS `flag3`,`user_payment_detail_all`.`flag4` AS `flag4`,`user_payment_detail_all`.`flag5` AS `flag5`,`user_payment_detail_all`.`last_modified_by` AS `last_modified_by`,`user_payment_detail_all`.`last_modified_on` AS `last_modified_on`,`user_payment_detail_all`.`created_on` AS `created_on`,`user_payment_detail_all`.`client_id` AS `client_id` from `user_payment_detail_all` where (`user_payment_detail_all`.`upd_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_payment_detail_history`
--

/*!50001 DROP TABLE IF EXISTS `user_payment_detail_history`*/;
/*!50001 DROP VIEW IF EXISTS `user_payment_detail_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_payment_detail_history` AS select `user_payment_detail_history_all`.`updh_id` AS `updh_id`,`user_payment_detail_history_all`.`upd_id` AS `upd_id`,`user_payment_detail_history_all`.`user_id` AS `user_id`,`user_payment_detail_history_all`.`cc_type_id` AS `cc_type_id`,`user_payment_detail_history_all`.`cc_ac_name` AS `cc_ac_name`,`user_payment_detail_history_all`.`cc_number` AS `cc_number`,`user_payment_detail_history_all`.`cc_exp_month` AS `cc_exp_month`,`user_payment_detail_history_all`.`cc_exp_year` AS `cc_exp_year`,`user_payment_detail_history_all`.`cc_cvv` AS `cc_cvv`,`user_payment_detail_history_all`.`bank_routing` AS `bank_routing`,`user_payment_detail_history_all`.`bank_account` AS `bank_account`,`user_payment_detail_history_all`.`address1` AS `address1`,`user_payment_detail_history_all`.`address2` AS `address2`,`user_payment_detail_history_all`.`city` AS `city`,`user_payment_detail_history_all`.`state` AS `state`,`user_payment_detail_history_all`.`country` AS `country`,`user_payment_detail_history_all`.`zip` AS `zip`,`user_payment_detail_history_all`.`pay_prefer` AS `pay_prefer`,`user_payment_detail_history_all`.`action` AS `action`,`user_payment_detail_history_all`.`udf1` AS `udf1`,`user_payment_detail_history_all`.`udf2` AS `udf2`,`user_payment_detail_history_all`.`udf3` AS `udf3`,`user_payment_detail_history_all`.`udf4` AS `udf4`,`user_payment_detail_history_all`.`udf5` AS `udf5`,`user_payment_detail_history_all`.`flag1` AS `flag1`,`user_payment_detail_history_all`.`flag2` AS `flag2`,`user_payment_detail_history_all`.`flag3` AS `flag3`,`user_payment_detail_history_all`.`flag4` AS `flag4`,`user_payment_detail_history_all`.`flag5` AS `flag5`,`user_payment_detail_history_all`.`created_on` AS `created_on`,`user_payment_detail_history_all`.`last_modified_on` AS `last_modified_on`,`user_payment_detail_history_all`.`last_modified_by` AS `last_modified_by`,`user_payment_detail_history_all`.`start_date` AS `start_date`,`user_payment_detail_history_all`.`end_date` AS `end_date`,`user_payment_detail_history_all`.`client_id` AS `client_id` from `user_payment_detail_history_all` where (`user_payment_detail_history_all`.`updh_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_service`
--

/*!50001 DROP TABLE IF EXISTS `user_service`*/;
/*!50001 DROP VIEW IF EXISTS `user_service`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_service` AS select `user_service_all`.`user_service_id` AS `user_service_id`,`user_service_all`.`user_id` AS `user_id`,`user_service_all`.`service_id` AS `service_id`,`user_service_all`.`start_date` AS `start_date`,`user_service_all`.`end_date` AS `end_date`,`user_service_all`.`priority` AS `priority`,`user_service_all`.`udf1` AS `udf1`,`user_service_all`.`udf2` AS `udf2`,`user_service_all`.`udf3` AS `udf3`,`user_service_all`.`udf4` AS `udf4`,`user_service_all`.`udf5` AS `udf5`,`user_service_all`.`flag1` AS `flag1`,`user_service_all`.`flag2` AS `flag2`,`user_service_all`.`flag3` AS `flag3`,`user_service_all`.`flag4` AS `flag4`,`user_service_all`.`flag5` AS `flag5`,`user_service_all`.`created_on` AS `created_on`,`user_service_all`.`last_modified_on` AS `last_modified_on`,`user_service_all`.`last_modified_by` AS `last_modified_by`,`user_service_all`.`client_id` AS `client_id` from `user_service_all` where (`user_service_all`.`user_service_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_type`
--

/*!50001 DROP TABLE IF EXISTS `user_type`*/;
/*!50001 DROP VIEW IF EXISTS `user_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_type` AS select `user_type_all`.`user_type_id` AS `user_type_id`,`user_type_all`.`name` AS `name`,`user_type_all`.`description` AS `description`,`user_type_all`.`min_balance` AS `min_balance`,`user_type_all`.`min_balance_type` AS `min_balance_type`,`user_type_all`.`udf1` AS `udf1`,`user_type_all`.`udf2` AS `udf2`,`user_type_all`.`udf3` AS `udf3`,`user_type_all`.`udf4` AS `udf4`,`user_type_all`.`udf5` AS `udf5`,`user_type_all`.`flag1` AS `flag1`,`user_type_all`.`flag2` AS `flag2`,`user_type_all`.`flag3` AS `flag3`,`user_type_all`.`flag4` AS `flag4`,`user_type_all`.`flag5` AS `flag5`,`user_type_all`.`created_on` AS `created_on`,`user_type_all`.`last_modified_on` AS `last_modified_on`,`user_type_all`.`last_modified_by` AS `last_modified_by`,`user_type_all`.`client_id` AS `client_id` from `user_type_all` where (`user_type_all`.`user_type_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_vehicle`
--

/*!50001 DROP TABLE IF EXISTS `user_vehicle`*/;
/*!50001 DROP VIEW IF EXISTS `user_vehicle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_vehicle` AS select `user_vehicle_all`.`user_vehicle_id` AS `user_vehicle_id`,`user_vehicle_all`.`user_id` AS `user_id`,`user_vehicle_all`.`vehicle_type_id` AS `vehicle_type_id`,`user_vehicle_all`.`vehicle_start_date` AS `vehicle_start_date`,`user_vehicle_all`.`vehicle_end_date` AS `vehicle_end_date`,`user_vehicle_all`.`is_active` AS `is_active`,`user_vehicle_all`.`registration_no` AS `registration_no`,`user_vehicle_all`.`registered_state` AS `registered_state`,`user_vehicle_all`.`owner_type_id` AS `owner_type_id`,`user_vehicle_all`.`udf1` AS `udf1`,`user_vehicle_all`.`udf2` AS `udf2`,`user_vehicle_all`.`udf3` AS `udf3`,`user_vehicle_all`.`udf4` AS `udf4`,`user_vehicle_all`.`udf5` AS `udf5`,`user_vehicle_all`.`flag1` AS `flag1`,`user_vehicle_all`.`flag2` AS `flag2`,`user_vehicle_all`.`flag3` AS `flag3`,`user_vehicle_all`.`flag4` AS `flag4`,`user_vehicle_all`.`flag5` AS `flag5`,`user_vehicle_all`.`last_modified_by` AS `last_modified_by`,`user_vehicle_all`.`last_modified_on` AS `last_modified_on`,`user_vehicle_all`.`created_on` AS `created_on`,`user_vehicle_all`.`client_id` AS `client_id` from `user_vehicle_all` where (`user_vehicle_all`.`user_vehicle_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_vehicle_history`
--

/*!50001 DROP TABLE IF EXISTS `user_vehicle_history`*/;
/*!50001 DROP VIEW IF EXISTS `user_vehicle_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_vehicle_history` AS select `user_vehicle_history_all`.`uvh_id` AS `uvh_id`,`user_vehicle_history_all`.`user_vehicle_id` AS `user_vehicle_id`,`user_vehicle_history_all`.`user_id` AS `user_id`,`user_vehicle_history_all`.`vehicle_type_id` AS `vehicle_type_id`,`user_vehicle_history_all`.`is_active` AS `is_active`,`user_vehicle_history_all`.`vehicle_start_date` AS `vehicle_start_date`,`user_vehicle_history_all`.`vehicle_end_date` AS `vehicle_end_date`,`user_vehicle_history_all`.`registration_no` AS `registration_no`,`user_vehicle_history_all`.`registered_state` AS `registered_state`,`user_vehicle_history_all`.`owner_type_id` AS `owner_type_id`,`user_vehicle_history_all`.`udf1` AS `udf1`,`user_vehicle_history_all`.`udf2` AS `udf2`,`user_vehicle_history_all`.`udf3` AS `udf3`,`user_vehicle_history_all`.`udf4` AS `udf4`,`user_vehicle_history_all`.`udf5` AS `udf5`,`user_vehicle_history_all`.`flag1` AS `flag1`,`user_vehicle_history_all`.`flag2` AS `flag2`,`user_vehicle_history_all`.`flag3` AS `flag3`,`user_vehicle_history_all`.`flag4` AS `flag4`,`user_vehicle_history_all`.`flag5` AS `flag5`,`user_vehicle_history_all`.`created_on` AS `created_on`,`user_vehicle_history_all`.`last_modified_on` AS `last_modified_on`,`user_vehicle_history_all`.`last_modified_by` AS `last_modified_by`,`user_vehicle_history_all`.`start_date` AS `start_date`,`user_vehicle_history_all`.`end_date` AS `end_date`,`user_vehicle_history_all`.`action` AS `action`,`user_vehicle_history_all`.`client_id` AS `client_id` from `user_vehicle_history_all` where (`user_vehicle_history_all`.`uvh_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vehicle_movement_log`
--

/*!50001 DROP TABLE IF EXISTS `vehicle_movement_log`*/;
/*!50001 DROP VIEW IF EXISTS `vehicle_movement_log`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vehicle_movement_log` AS select `vehicle_movement_log_all`.`vml_id` AS `vml_id`,`vehicle_movement_log_all`.`vml_type_id` AS `vml_type_id`,`vehicle_movement_log_all`.`uvh_id` AS `uvh_id`,`vehicle_movement_log_all`.`toll_location_id` AS `toll_location_id`,`vehicle_movement_log_all`.`geometry` AS `geometry`,`vehicle_movement_log_all`.`timestamp` AS `timestamp`,`vehicle_movement_log_all`.`udf1` AS `udf1`,`vehicle_movement_log_all`.`udf2` AS `udf2`,`vehicle_movement_log_all`.`udf3` AS `udf3`,`vehicle_movement_log_all`.`udf4` AS `udf4`,`vehicle_movement_log_all`.`udf5` AS `udf5`,`vehicle_movement_log_all`.`flag1` AS `flag1`,`vehicle_movement_log_all`.`flag2` AS `flag2`,`vehicle_movement_log_all`.`flag3` AS `flag3`,`vehicle_movement_log_all`.`flag4` AS `flag4`,`vehicle_movement_log_all`.`flag5` AS `flag5`,`vehicle_movement_log_all`.`last_modified_on` AS `last_modified_on`,`vehicle_movement_log_all`.`last_modified_by` AS `last_modified_by`,`vehicle_movement_log_all`.`created_on` AS `created_on`,`vehicle_movement_log_all`.`client_id` AS `client_id`,`vehicle_movement_log_all`.`latitude` AS `latitude`,`vehicle_movement_log_all`.`longitude` AS `longitude`,`vehicle_movement_log_all`.`status` AS `status`,`vehicle_movement_log_all`.`toll_session_id` AS `toll_session_id`,`vehicle_movement_log_all`.`distance` AS `distance` from `vehicle_movement_log_all` where (`vehicle_movement_log_all`.`vml_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vehicle_toll_usage`
--

/*!50001 DROP TABLE IF EXISTS `vehicle_toll_usage`*/;
/*!50001 DROP VIEW IF EXISTS `vehicle_toll_usage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vehicle_toll_usage` AS select `vehicle_toll_usage_all`.`vtu_id` AS `vtu_id`,`vehicle_toll_usage_all`.`uvh_id` AS `uvh_id`,`vehicle_toll_usage_all`.`toll_loc_id` AS `toll_loc_id`,`vehicle_toll_usage_all`.`tph_id` AS `tph_id`,`vehicle_toll_usage_all`.`timestamp` AS `timestamp`,`vehicle_toll_usage_all`.`vml_id` AS `vml_id`,`vehicle_toll_usage_all`.`ptran_id` AS `ptran_id`,`vehicle_toll_usage_all`.`udf1` AS `udf1`,`vehicle_toll_usage_all`.`udf2` AS `udf2`,`vehicle_toll_usage_all`.`udf3` AS `udf3`,`vehicle_toll_usage_all`.`udf4` AS `udf4`,`vehicle_toll_usage_all`.`udf5` AS `udf5`,`vehicle_toll_usage_all`.`flag1` AS `flag1`,`vehicle_toll_usage_all`.`flag2` AS `flag2`,`vehicle_toll_usage_all`.`flag3` AS `flag3`,`vehicle_toll_usage_all`.`flag4` AS `flag4`,`vehicle_toll_usage_all`.`flag5` AS `flag5`,`vehicle_toll_usage_all`.`last_modified_by` AS `last_modified_by`,`vehicle_toll_usage_all`.`last_modified_on` AS `last_modified_on`,`vehicle_toll_usage_all`.`created_on` AS `created_on`,`vehicle_toll_usage_all`.`client_id` AS `client_id` from `vehicle_toll_usage_all` where (`vehicle_toll_usage_all`.`vtu_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vehicle_type`
--

/*!50001 DROP TABLE IF EXISTS `vehicle_type`*/;
/*!50001 DROP VIEW IF EXISTS `vehicle_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vehicle_type` AS select `vehicle_type_all`.`vehicle_type_id` AS `vehicle_type_id`,`vehicle_type_all`.`name` AS `name`,`vehicle_type_all`.`description` AS `description`,`vehicle_type_all`.`udf1` AS `udf1`,`vehicle_type_all`.`udf2` AS `udf2`,`vehicle_type_all`.`udf3` AS `udf3`,`vehicle_type_all`.`udf4` AS `udf4`,`vehicle_type_all`.`udf5` AS `udf5`,`vehicle_type_all`.`flag1` AS `flag1`,`vehicle_type_all`.`flag2` AS `flag2`,`vehicle_type_all`.`flag3` AS `flag3`,`vehicle_type_all`.`flag4` AS `flag4`,`vehicle_type_all`.`flag5` AS `flag5`,`vehicle_type_all`.`created_on` AS `created_on`,`vehicle_type_all`.`last_modified_on` AS `last_modified_on`,`vehicle_type_all`.`last_modified_by` AS `last_modified_by`,`vehicle_type_all`.`client_id` AS `client_id` from `vehicle_type_all` where (`vehicle_type_all`.`vehicle_type_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vml_type`
--

/*!50001 DROP TABLE IF EXISTS `vml_type`*/;
/*!50001 DROP VIEW IF EXISTS `vml_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vml_type` AS select `vml_type_all`.`vml_type_id` AS `vml_type_id`,`vml_type_all`.`name` AS `name`,`vml_type_all`.`description` AS `description`,`vml_type_all`.`udf1` AS `udf1`,`vml_type_all`.`udf2` AS `udf2`,`vml_type_all`.`udf3` AS `udf3`,`vml_type_all`.`udf4` AS `udf4`,`vml_type_all`.`udf5` AS `udf5`,`vml_type_all`.`flag1` AS `flag1`,`vml_type_all`.`flag2` AS `flag2`,`vml_type_all`.`flag3` AS `flag3`,`vml_type_all`.`flag4` AS `flag4`,`vml_type_all`.`flag5` AS `flag5`,`vml_type_all`.`last_modified_by` AS `last_modified_by`,`vml_type_all`.`last_modified_on` AS `last_modified_on`,`vml_type_all`.`created_on` AS `created_on`,`vml_type_all`.`client_id` AS `client_id` from `vml_type_all` where (`vml_type_all`.`vml_type_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-16 18:59:10
