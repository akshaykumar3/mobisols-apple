-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 28, 2011 at 08:15 AM
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
-- Table structure for table `user_payment_detail_all`
--

CREATE TABLE IF NOT EXISTS `user_payment_detail_all` (
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
  KEY `fk_client_upd` (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='All the billing details of the user' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_payment_detail_all`
--

INSERT INTO `user_payment_detail_all` (`upd_id`, `user_id`, `cc_type_id`, `cc_ac_name`, `cc_number`, `cc_exp_month`, `cc_exp_year`, `cc_cvv`, `bank_routing`, `bank_account`, `pay_prefer`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(-1, -1, -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 1, 1, 'Harish', '407 445 678 543', 6, 2020, 453, '540', '12345', '1', '10005,Wall street', NULL, 'new york', 'new york', 'US', '54321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-06-24 03:38:34', '2011-06-24 03:38:34', 1);

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_payment_detail_all`
--
ALTER TABLE `user_payment_detail_all`
  ADD CONSTRAINT `fk_cctype_upd` FOREIGN KEY (`cc_type_id`) REFERENCES `cc_type_all` (`cc_type_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_client_upd` FOREIGN KEY (`client_id`) REFERENCES `client_all` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_last_mod_by_upda` FOREIGN KEY (`last_modified_by`) REFERENCES `user_all` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_upd_user` FOREIGN KEY (`user_id`) REFERENCES `user_all` (`user_id`) ON UPDATE CASCADE;
