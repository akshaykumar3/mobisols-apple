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
-- Table structure for table `user_vehicle_all`
--

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
  PRIMARY KEY (`user_vehicle_id`),
  UNIQUE KEY `uk_user_reg_vehicle` (`user_id`,`registration_no`),
  KEY `fk_vt_user_vehicle` (`vehicle_type_id`),
  KEY `fk_user_user_vehicle` (`user_id`),
  KEY `fk_mod_on` (`last_modified_by`),
  KEY `fk_uv_co` (`owner_type_id`),
  KEY `fk_client_uv` (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='List of vehicles registered by the user' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_vehicle_all`
--

INSERT INTO `user_vehicle_all` (`user_vehicle_id`, `user_id`, `vehicle_type_id`, `vehicle_start_date`, `vehicle_end_date`, `is_active`, `registration_no`, `registered_state`, `owner_type_id`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(-1, -1, -1, NULL, NULL, '1', '1234', 'xyz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-06-24 01:13:26', '2011-06-24 01:13:32', -1),
(1, 1, 1, '2011-06-24 03:44:17', NULL, 'Y', '123', 'san diego', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 03:44:17', '2011-06-24 03:44:17', 1);

--
-- Triggers `user_vehicle_all`
--
DROP TRIGGER IF EXISTS `trg_user_vehicle_aft_ins`;
DELIMITER //
CREATE TRIGGER `trg_user_vehicle_aft_ins` AFTER INSERT ON `user_vehicle_all`
 FOR EACH ROW begin
insert into user_vehicle_history_all (uvh_id,user_vehicle_id,user_id,vehicle_type_id,is_active,vehicle_start_date,vehicle_end_date,registration_no,registered_state,owner_type_id,
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action,client_id) 
values(null,new.user_vehicle_id,new.user_id,new.vehicle_type_id,new.is_active,new.vehicle_start_date,new.vehicle_end_date,new.registration_no,new.registered_state,new.owner_type_id,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,
GetStartDate(),GetInfFuture(),'insert',new.client_id);
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
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action,client_id) 
values(null,new.user_vehicle_id,new.user_id,new.vehicle_type_id,new.is_active,new.vehicle_start_date,new.vehicle_end_date,new.registration_no,new.registered_state,new.owner_type_id,
new.udf1,new.udf2,new.udf3,new.udf4,new.udf5,new.flag1,new.flag2,new.flag3,new.flag4,new.flag5,new.created_on,new.last_modified_on,new.last_modified_by,
GetStartDate(),GetInfFuture(),'update',new.client_id);
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
udf1,udf2,udf3,udf4,udf5,flag1,flag2,flag3,flag4,flag5,created_on,last_modified_on,last_modified_by,start_date,end_date,action,client_id) 
values(null,old.user_vehicle_id,old.user_id,old.vehicle_type_id,old.is_active,old.vehicle_start_date,old.vehicle_end_date,old.registration_no,old.registered_state,old.owner_type_id,
old.udf1,old.udf2,old.udf3,old.udf4,old.udf5,old.flag1,old.flag2,old.flag3,old.flag4,old.flag5,old.created_on,old.last_modified_on,old.last_modified_by,
GetStartDate(),GetStartDate(),'delete',old.client_id);
end
//
DELIMITER ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_vehicle_all`
--
ALTER TABLE `user_vehicle_all`
  ADD CONSTRAINT `fk_client_uv` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_uva` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_user_vehicle` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_uv_co` FOREIGN KEY (`owner_type_id`) REFERENCES `owner_type_all` (`owner_type_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vt_user_vehicle` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_type_all` (`vehicle_type_id`) ON UPDATE CASCADE;
