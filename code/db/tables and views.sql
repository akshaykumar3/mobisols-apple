SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS `globaltoll` ;
CREATE SCHEMA IF NOT EXISTS `globaltoll` DEFAULT CHARACTER SET latin1 ;
USE `globaltoll` ;

-- -----------------------------------------------------
-- Table `globaltoll`.`client_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`client_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`client_all` (
  `client_id` INT NOT NULL AUTO_INCREMENT ,
  `client_name` VARCHAR(45) NOT NULL ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `created_on` DATETIME NOT NULL ,
  `last_modified_on` DATETIME NOT NULL ,
  `last_modified_by` INT NOT NULL ,
  PRIMARY KEY (`client_id`) ,
  INDEX `fk_cl_user` (`last_modified_by` ASC) ,
  INDEX `fk_last_mod_by_ca` (`last_modified_by` ASC) ,
  CONSTRAINT `fk_cl_user`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_ca`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `globaltoll`.`user_type_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`user_type_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`user_type_all` (
  `user_type_id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL COMMENT 'trial/prepaid/premium/postpaid users' ,
  `description` VARCHAR(200) NULL COMMENT 'Description of the differnent user types like toll operatore,normal users etc' ,
  `min_balance` DECIMAL(19,4) ZEROFILL NULL COMMENT 'Min balance amount depending on the type of user' ,
  `min_balance_type` VARCHAR(45) NULL COMMENT 'value, percentage' ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `created_on` DATETIME NOT NULL ,
  `last_modified_on` DATETIME NOT NULL ,
  `last_modified_by` INT NOT NULL ,
  `client_id` INT NULL ,
  PRIMARY KEY (`user_type_id`) ,
  INDEX `fk_last_mod_by_uta` (`last_modified_by` ASC) ,
  INDEX `fk_client_ut` (`client_id` ASC) ,
  CONSTRAINT `fk_last_mod_by_uta`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_client_ut`
    FOREIGN KEY (`client_id` )
    REFERENCES `globaltoll`.`client_all` (`client_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `globaltoll`.`user_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`user_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`user_all` (
  `user_id` INT NOT NULL AUTO_INCREMENT ,
  `client_id` INT NOT NULL COMMENT 'users can register under any client where clients are third party organisations. ' ,
  `utype_id` INT NOT NULL COMMENT 'Specifies whether user is a normal user or admin or premium user' ,
  `user_name` VARCHAR(320) NOT NULL COMMENT 'email id is the user name of the user-- with maximum size of 320 characters' ,
  `password` VARCHAR(40) NOT NULL COMMENT 'alphanumeric --maximun 40 characters are allowed' ,
  `locale` VARCHAR(20) NULL COMMENT 'local language of the user' ,
  `is_active` VARCHAR(1) NOT NULL COMMENT 'column showing whether the user accout is active or inactive' ,
  `contact_no` VARCHAR(20) NULL COMMENT 'user mobile number for sms services' ,
  `last_login_time` DATETIME NULL COMMENT 'Previous login details' ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `created_on` DATETIME NOT NULL COMMENT 'account created date' ,
  `last_modified_on` DATETIME NOT NULL COMMENT 'for history purpose, account last modified date ' ,
  `last_modified_by` INT NOT NULL DEFAULT -1 COMMENT 'user id of who modified the account' ,
  PRIMARY KEY (`user_id`) ,
  UNIQUE INDEX `uk_user_name` (`user_name` ASC, `client_id` ASC) ,
  INDEX `fk_utype_user` (`utype_id` ASC) ,
  INDEX `fk_client_id_user` (`client_id` ASC) ,
  CONSTRAINT `fk_utype_user`
    FOREIGN KEY (`utype_id` )
    REFERENCES `globaltoll`.`user_type_all` (`user_type_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_client_id_user`
    FOREIGN KEY (`client_id` )
    REFERENCES `globaltoll`.`client_all` (`client_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
COMMENT = 'This table has all details about the users' ;


-- -----------------------------------------------------
-- Table `globaltoll`.`cc_type_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`cc_type_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`cc_type_all` (
  `cc_type_id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NULL ,
  `description` VARCHAR(1000) NULL ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `created_on` DATETIME NOT NULL ,
  `last_modified_on` DATETIME NOT NULL ,
  `last_modified_by` INT NOT NULL ,
  `client_id` INT NULL ,
  PRIMARY KEY (`cc_type_id`) ,
  INDEX `fk_last_mod_by_cta` (`last_modified_by` ASC) ,
  INDEX `fk_client_cct` (`client_id` ASC) ,
  CONSTRAINT `fk_last_mod_by_cta`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_client_cct`
    FOREIGN KEY (`client_id` )
    REFERENCES `globaltoll`.`client_all` (`client_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `globaltoll`.`user_payment_detail_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`user_payment_detail_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`user_payment_detail_all` (
  `upd_id` INT NOT NULL AUTO_INCREMENT ,
  `user_id` INT NULL ,
  `cc_type_id` INT NULL ,
  `cc_ac_name` VARCHAR(45) NULL ,
  `cc_number` VARCHAR(15) NULL ,
  `cc_exp_month` INT NULL ,
  `cc_exp_year` YEAR NULL ,
  `cc_cvv` INT NULL ,
  `bank_routing` DECIMAL(9,0) NULL ,
  `bank_account` DECIMAL(10,0) NULL ,
  `pay_prefer` VARCHAR(1) NOT NULL COMMENT 'either credit car or bank payment' ,
  `address1` VARCHAR(100) NULL ,
  `address2` VARCHAR(100) NULL ,
  `city` VARCHAR(100) NULL ,
  `state` VARCHAR(100) NULL ,
  `country` VARCHAR(100) NULL ,
  `zip` VARCHAR(10) NULL ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `last_modified_by` INT NULL ,
  `last_modified_on` DATETIME NULL ,
  `created_on` DATETIME NULL ,
  `client_id` INT NULL ,
  INDEX `fk_upd_user` (`user_id` ASC) ,
  PRIMARY KEY (`upd_id`) ,
  INDEX `fk_last_mod_by_upda` (`last_modified_by` ASC) ,
  UNIQUE INDEX `last_modified_on_UNIQUE` (`last_modified_on` ASC) ,
  UNIQUE INDEX `created_on_UNIQUE` (`created_on` ASC) ,
  UNIQUE INDEX `last_modified_by_UNIQUE` (`last_modified_by` ASC) ,
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC) ,
  INDEX `fk_cctype_upd` (`cc_type_id` ASC) ,
  INDEX `fk_client_upd` (`client_id` ASC) ,
  CONSTRAINT `fk_upd_user`
    FOREIGN KEY (`user_id` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_upda`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_cctype_upd`
    FOREIGN KEY (`cc_type_id` )
    REFERENCES `globaltoll`.`cc_type_all` (`cc_type_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_client_upd`
    FOREIGN KEY (`client_id` )
    REFERENCES `globaltoll`.`client_all` (`client_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB, 
COMMENT = 'All the billing details of the user' ;


-- -----------------------------------------------------
-- Table `globaltoll`.`vehicle_type_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`vehicle_type_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`vehicle_type_all` (
  `vehicle_type_id` INT NOT NULL AUTO_INCREMENT COMMENT 'Primary key of the table' ,
  `name` VARCHAR(100) NOT NULL COMMENT 'A: Auto/sport utility Vehicle/minivan\nP: Pickup truck \nP2: Pickup truck with dual rear tires \nv: Van\nm: motorcycle \nR4: RV with 4 tires\n R6: RV with dual rear tires  ' ,
  `description` VARCHAR(1000) NULL ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `created_on` DATETIME NOT NULL ,
  `last_modified_on` DATETIME NOT NULL ,
  `last_modified_by` INT NOT NULL COMMENT 'user id' ,
  `client_id` INT NULL ,
  PRIMARY KEY (`vehicle_type_id`) ,
  INDEX `fk_last_mod_by_vta` (`last_modified_by` ASC) ,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) ,
  INDEX `fk_client_vtp` (`client_id` ASC) ,
  CONSTRAINT `fk_last_mod_by_vta`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_client_vtp`
    FOREIGN KEY (`client_id` )
    REFERENCES `globaltoll`.`client_all` (`client_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB, 
COMMENT = 'The different types of vehicles identified by the toll agenc' /* comment truncated */ ;


-- -----------------------------------------------------
-- Table `globaltoll`.`owner_type_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`owner_type_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`owner_type_all` (
  `owner_type_id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `description` VARCHAR(100) NULL COMMENT 'details about the car owner' ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `falg1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `created_on` DATETIME NOT NULL ,
  `last_modifiede_on` DATETIME NOT NULL ,
  `last_modified_by` INT NOT NULL ,
  `client_id` INT NULL ,
  PRIMARY KEY (`owner_type_id`) ,
  INDEX `fk_last_mod_by_ota` (`last_modified_by` ASC) ,
  INDEX `fk_client_ot` (`client_id` ASC) ,
  CONSTRAINT `fk_last_mod_by_ota`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_client_ot`
    FOREIGN KEY (`client_id` )
    REFERENCES `globaltoll`.`client_all` (`client_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `globaltoll`.`user_vehicle_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`user_vehicle_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`user_vehicle_all` (
  `user_vehicle_id` INT NOT NULL AUTO_INCREMENT ,
  `user_id` INT NOT NULL COMMENT 'user id-- foreign key to users_all table' ,
  `vehicle_type_id` INT NOT NULL COMMENT 'vehicle type-- foreign key to vehicle_types_all table\n' ,
  `vehicle_start_date` DATETIME NULL ,
  `vehicle_end_date` DATETIME NULL ,
  `is_active` VARCHAR(1) NOT NULL COMMENT 'which vehicle is active when app is switched on' ,
  `registration_no` VARCHAR(45) NOT NULL ,
  `registered_state` VARCHAR(45) NOT NULL ,
  `owner_type_id` INT NULL COMMENT 'to show whether the vehicle is still owned by the user' ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `last_modified_by` INT NOT NULL ,
  `last_modified_on` DATETIME NOT NULL ,
  `created_on` DATETIME NOT NULL ,
  `client_id` INT NULL ,
  PRIMARY KEY (`user_vehicle_id`) ,
  INDEX `fk_vt_user_vehicle` (`vehicle_type_id` ASC) ,
  INDEX `fk_user_user_vehicle` (`user_id` ASC) ,
  INDEX `fk_mod_on` (`last_modified_by` ASC) ,
  UNIQUE INDEX `uk_user_reg_vehicle` (`user_id` ASC, `registration_no` ASC) ,
  INDEX `fk_uv_co` (`owner_type_id` ASC) ,
  INDEX `fk_client_uv` (`client_id` ASC) ,
  CONSTRAINT `fk_vt_user_vehicle`
    FOREIGN KEY (`vehicle_type_id` )
    REFERENCES `globaltoll`.`vehicle_type_all` (`vehicle_type_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_user_user_vehicle`
    FOREIGN KEY (`user_id` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_uva`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_uv_co`
    FOREIGN KEY (`owner_type_id` )
    REFERENCES `globaltoll`.`owner_type_all` (`owner_type_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_client_uv`
    FOREIGN KEY (`client_id` )
    REFERENCES `globaltoll`.`client_all` (`client_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB, 
COMMENT = 'List of vehicles registered by the user' ;


-- -----------------------------------------------------
-- Table `globaltoll`.`toll_operator_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`toll_operator_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`toll_operator_all` (
  `toll_operator_id` INT NOT NULL AUTO_INCREMENT ,
  `user_id` INT NULL ,
  `name` VARCHAR(100) NOT NULL COMMENT 'name of the toll agency' ,
  `is_active` VARCHAR(1) NOT NULL COMMENT 'if the toll agency is still in collabration with us' ,
  `website` VARCHAR(2100) NULL COMMENT 'for automated payment purposes, this has the website of the toll agency' ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `created_on` DATETIME NOT NULL ,
  `last_modified_on` DATETIME NOT NULL COMMENT 'includes user id of the toll operater and the details that are required other than user details' ,
  `last_modified_by` INT NOT NULL ,
  `client_id` INT NULL ,
  PRIMARY KEY (`toll_operator_id`) ,
  INDEX `fk_last_mod_by_toa` (`last_modified_by` ASC) ,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) ,
  INDEX `fk_toll_user` (`user_id` ASC) ,
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC) ,
  INDEX `fk_client_to` (`client_id` ASC) ,
  CONSTRAINT `fk_last_mod_by_toa`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_toll_user`
    FOREIGN KEY (`user_id` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_client_to`
    FOREIGN KEY (`client_id` )
    REFERENCES `globaltoll`.`client_all` (`client_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB, 
COMMENT = 'List of all the toll operators , their banking details etc' ;


-- -----------------------------------------------------
-- Table `globaltoll`.`toll_location_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`toll_location_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`toll_location_all` (
  `toll_location_id` INT NOT NULL ,
  `toll_operator_id` INT NOT NULL COMMENT 'corresponding toll agency -- foreign key to toll_operators_all table' ,
  `geometry` GEOMETRY NOT NULL COMMENT 'Geometrical values  of the location' ,
  `is_covered` VARCHAR(1) NOT NULL COMMENT 'to show whether the toll location is under our area of concern' ,
  `is_cash_only` VARCHAR(1) NOT NULL COMMENT 'toll booths with no expressways' ,
  `address1` VARCHAR(45) NULL COMMENT 'address of the location if known' ,
  `address2` VARCHAR(45) NULL ,
  `city` VARCHAR(50) NULL ,
  `state` VARCHAR(50) NULL ,
  `country` VARCHAR(70) NULL ,
  `zip` VARCHAR(30) NULL ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `last_modified_by` INT NOT NULL ,
  `last_modified_on` DATETIME NOT NULL ,
  `created_on` DATETIME NOT NULL ,
  `client_id` INT NULL ,
  `latitude` DECIMAL(3,3) NOT NULL,
  `longitude` DECIMAL(3,3) NOT NULL,
  PRIMARY KEY (`toll_location_id`) ,
  INDEX `fk_toll_op_id` (`toll_operator_id` ASC) ,
  INDEX `fk_last_mod_by_tla` (`last_modified_by` ASC) ,
  INDEX `fk_client_tl` (`client_id` ASC) ,
  CONSTRAINT `fk_toll_op_id`
    FOREIGN KEY (`toll_operator_id` )
    REFERENCES `globaltoll`.`toll_operator_all` (`toll_operator_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_tla`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_client_tl`
    FOREIGN KEY (`client_id` )
    REFERENCES `globaltoll`.`client_all` (`client_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB, 
COMMENT = 'This table maps the location with corresponding toll operato' /* comment truncated */ ;


-- -----------------------------------------------------
-- Table `globaltoll`.`user_vehicle_history_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`user_vehicle_history_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`user_vehicle_history_all` (
  `uvh_id` INT NOT NULL AUTO_INCREMENT ,
  `user_vehicle_id` INT NULL ,
  `user_id` INT NOT NULL ,
  `vehicle_type_id` INT NOT NULL ,
  `is_active` VARCHAR(1) NOT NULL COMMENT 'which vehicle is active when app is switched on' ,
  `vehicle_start_date` DATETIME NULL ,
  `vehicle_end_date` DATETIME NULL ,
  `registration_no` VARCHAR(45) NOT NULL ,
  `registered_state` VARCHAR(45) NOT NULL ,
  `owner_type_id` INT NULL COMMENT 'to show whether the vehicle is still owned by the user' ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `created_on` DATETIME NULL ,
  `last_modified_on` DATETIME NULL ,
  `last_modified_by` INT NULL ,
  `start_date` DATETIME NOT NULL ,
  `end_date` DATETIME NOT NULL ,
  `action` VARCHAR(20) NOT NULL ,
  `client_id` INT NULL ,
  PRIMARY KEY (`uvh_id`) )
ENGINE = InnoDB, 
COMMENT = 'List of vehicles registered by the user' ;


-- -----------------------------------------------------
-- Table `globaltoll`.`vml_type_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`vml_type_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`vml_type_all` (
  `vml_type_id` INT NOT NULL ,
  `name` VARCHAR(45) NOT NULL ,
  `description` VARCHAR(60) NULL ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `last_modified_by` INT NOT NULL ,
  `last_modified_on` DATETIME NOT NULL ,
  `created_on` DATETIME NOT NULL ,
  `client_id` INT NULL ,
  PRIMARY KEY (`vml_type_id`) ,
  INDEX `fk_client_vmlt` (`client_id` ASC) ,
  CONSTRAINT `fk_last_mod_by_all`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_client_vmlt`
    FOREIGN KEY (`client_id` )
    REFERENCES `globaltoll`.`client_all` (`client_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB, 
COMMENT = 'This table has log type(start, stop, toll usage, heart beat ' /* comment truncated */ ;


-- -----------------------------------------------------
-- Table `globaltoll`.`vehicle_movement_log_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`vehicle_movement_log_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`vehicle_movement_log_all` (
  `vml_id` INT NOT NULL AUTO_INCREMENT ,
  `vml_type_id` INT NOT NULL ,
  `uvh_id` INT NOT NULL ,
  `geometry` GEOMETRY NOT NULL ,
  `timestamp` DATETIME NOT NULL ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `last_modified_on` DATETIME NOT NULL ,
  `last_modified_by` INT NOT NULL ,
  `created_on` DATETIME NOT NULL ,
  `client_id` INT NULL ,
  PRIMARY KEY (`vml_id`) ,
  INDEX `fk_vml_uvh` (`uvh_id` ASC) ,
  INDEX `fk_vml_vmlt` (`vml_type_id` ASC) ,
  INDEX `fk_last_mod_by_vmla` (`last_modified_by` ASC) ,
  INDEX `fk_client_vml` (`client_id` ASC) ,
  CONSTRAINT `fk_vml_uvh`
    FOREIGN KEY (`uvh_id` )
    REFERENCES `globaltoll`.`user_vehicle_history_all` (`uvh_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_vml_vmlt`
    FOREIGN KEY (`vml_type_id` )
    REFERENCES `globaltoll`.`vml_type_all` (`vml_type_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_vmla`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_client_vml`
    FOREIGN KEY (`client_id` )
    REFERENCES `globaltoll`.`client_all` (`client_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB, 
COMMENT = 'Trackiing the vehicle movement ' ;


-- -----------------------------------------------------
-- Table `globaltoll`.`toll_price_history_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`toll_price_history_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`toll_price_history_all` (
  `tph_id` INT NOT NULL AUTO_INCREMENT ,
  `toll_price_id` INT NOT NULL ,
  `toll_location_id` INT NOT NULL ,
  `vehicle_type_id` INT NOT NULL ,
  `direction` VARCHAR(25) NULL ,
  `cost_price` DECIMAL(19,4) NOT NULL ,
  `selling_price` DECIMAL(19,4) NULL ,
  `action` VARCHAR(20) NOT NULL ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `created_on` DATETIME NULL ,
  `last_modified_on` DATETIME NULL ,
  `last_modified_by` INT NULL ,
  `start_date` DATETIME NOT NULL ,
  `end_date` DATETIME NOT NULL ,
  `client_id` INT NULL ,
  PRIMARY KEY (`tph_id`) )
ENGINE = InnoDB, 
COMMENT = 'toll price for each transaction' ;


-- -----------------------------------------------------
-- Table `globaltoll`.`user_balance_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`user_balance_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`user_balance_all` (
  `ubal_id` INT NOT NULL AUTO_INCREMENT ,
  `user_id` INT NULL ,
  `balance` DECIMAL(19,4) NOT NULL ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `last_modified_by` INT NOT NULL ,
  `last_modified_on` DATETIME NOT NULL ,
  `created_on` DATETIME NOT NULL ,
  `client_id` INT NULL ,
  INDEX `fk_ubal_users` (`user_id` ASC) ,
  INDEX `fk_last_mod_by_uba` (`last_modified_by` ASC) ,
  PRIMARY KEY (`ubal_id`) ,
  INDEX `fk_client_ub` (`client_id` ASC) ,
  CONSTRAINT `fk_ubal_users`
    FOREIGN KEY (`user_id` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_uba`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_client_ub`
    FOREIGN KEY (`client_id` )
    REFERENCES `globaltoll`.`client_all` (`client_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `globaltoll`.`user_balance_log_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`user_balance_log_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`user_balance_log_all` (
  `ublog_id` INT NOT NULL AUTO_INCREMENT ,
  `ubal_id` INT NOT NULL ,
  `delta` DECIMAL(19,4) NOT NULL ,
  `timestamp` DATETIME NOT NULL ,
  `action` VARCHAR(200) NOT NULL ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `last_modified_by` INT NULL ,
  `last_modified_on` DATETIME NOT NULL ,
  `created_on` DATETIME NOT NULL ,
  `client_id` INT NULL ,
  PRIMARY KEY (`ublog_id`) ,
  INDEX `fk_ublog_ubal` (`ubal_id` ASC) ,
  INDEX `fk_last_mod_by_ubla` (`last_modified_by` ASC) ,
  INDEX `fk_client_ubl` (`client_id` ASC) ,
  CONSTRAINT `fk_ublog_ubal`
    FOREIGN KEY (`ubal_id` )
    REFERENCES `globaltoll`.`user_balance_all` (`ubal_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_ubla`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_client_ubl`
    FOREIGN KEY (`client_id` )
    REFERENCES `globaltoll`.`client_all` (`client_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `globaltoll`.`user_payment_detail_history_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`user_payment_detail_history_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`user_payment_detail_history_all` (
  `updh_id` INT NOT NULL AUTO_INCREMENT ,
  `upd_id` INT NULL ,
  `user_id` INT NULL ,
  `cc_type_id` INT NULL ,
  `cc_ac_name` VARCHAR(45) NULL ,
  `cc_number` VARCHAR(15) NULL ,
  `cc_exp_month` INT NULL ,
  `cc_exp_year` YEAR NULL ,
  `cc_cvv` INT NULL ,
  `bank_routing` DECIMAL(9,0) NULL ,
  `bank_account` DECIMAL(10,0) NULL ,
  `address1` VARCHAR(100) NULL ,
  `address2` VARCHAR(100) NULL ,
  `city` VARCHAR(100) NULL ,
  `state` VARCHAR(100) NULL ,
  `country` VARCHAR(100) NULL ,
  `zip` VARCHAR(10) NULL ,
  `pay_prefer` VARCHAR(1) NULL ,
  `action` VARCHAR(20) NOT NULL COMMENT 'insert/update/delete' ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `created_on` DATETIME NULL ,
  `last_modified_on` DATETIME NULL ,
  `last_modified_by` INT NULL ,
  `start_date` DATETIME NOT NULL ,
  `end_date` DATETIME NOT NULL ,
  `client_id` INT NULL ,
  PRIMARY KEY (`updh_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `globaltoll`.`payment_transaction_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`payment_transaction_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`payment_transaction_all` (
  `ptran_id` INT NOT NULL AUTO_INCREMENT ,
  `user_bl_id` INT NULL COMMENT 'balance log for the user' ,
  `to_bl_id` INT NULL COMMENT 'balance log for the toll opeator' ,
  `updh_id` INT NULL ,
  `timestamp` DATETIME NOT NULL ,
  `status` VARCHAR(10) NOT NULL COMMENT 'toll amount paid or unpaid' ,
  `amount` DECIMAL(19,4) NOT NULL ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `last_modified_by` INT NOT NULL ,
  `last_modified_on` DATETIME NOT NULL ,
  `created_on` DATETIME NOT NULL ,
  `client_id` INT NULL ,
  PRIMARY KEY (`ptran_id`) ,
  INDEX `fk_lat_mod_by_pta` (`last_modified_by` ASC) ,
  INDEX `fk_pt_ublog` (`user_bl_id` ASC) ,
  INDEX `fk_pt_tlog` (`to_bl_id` ASC) ,
  INDEX `fk_pt_updh` (`updh_id` ASC) ,
  INDEX `fk_client_pt` (`client_id` ASC) ,
  CONSTRAINT `fk_lat_mod_by_pta`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pt_ublog`
    FOREIGN KEY (`user_bl_id` )
    REFERENCES `globaltoll`.`user_balance_log_all` (`ublog_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pt_tlog`
    FOREIGN KEY (`to_bl_id` )
    REFERENCES `globaltoll`.`user_balance_log_all` (`ublog_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pt_updh`
    FOREIGN KEY (`updh_id` )
    REFERENCES `globaltoll`.`user_payment_detail_history_all` (`updh_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_client_pt`
    FOREIGN KEY (`client_id` )
    REFERENCES `globaltoll`.`client_all` (`client_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB, 
COMMENT = 'All the payment transactions up to the date' ;


-- -----------------------------------------------------
-- Table `globaltoll`.`vehicle_toll_usage_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`vehicle_toll_usage_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`vehicle_toll_usage_all` (
  `vtu_id` INT NOT NULL AUTO_INCREMENT ,
  `uvh_id` INT NOT NULL ,
  `toll_loc_id` INT NOT NULL ,
  `tph_id` INT NULL ,
  `timestamp` DATETIME NOT NULL ,
  `vml_id` INT NOT NULL ,
  `ptran_id` INT NULL ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `last_modified_by` INT NOT NULL ,
  `last_modified_on` DATETIME NOT NULL ,
  `created_on` DATETIME NOT NULL ,
  `client_id` INT NULL ,
  PRIMARY KEY (`vtu_id`) ,
  INDEX `fk_vtu_uv` (`uvh_id` ASC) ,
  INDEX `fk_vtu_tl` (`toll_loc_id` ASC) ,
  INDEX `fk_vtu_vml` (`vml_id` ASC) ,
  INDEX `fk_vtu_tp` (`tph_id` ASC) ,
  INDEX `fk_vtu_pt` (`ptran_id` ASC) ,
  INDEX `fk_last_mod_by` (`last_modified_by` ASC) ,
  INDEX `fk_client_vtu` (`client_id` ASC) ,
  CONSTRAINT `fk_vtu_uv`
    FOREIGN KEY (`uvh_id` )
    REFERENCES `globaltoll`.`user_vehicle_history_all` (`uvh_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_vtu_tl`
    FOREIGN KEY (`toll_loc_id` )
    REFERENCES `globaltoll`.`toll_location_all` (`toll_location_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_vtu_vml`
    FOREIGN KEY (`vml_id` )
    REFERENCES `globaltoll`.`vehicle_movement_log_all` (`vml_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_vtu_tp`
    FOREIGN KEY (`tph_id` )
    REFERENCES `globaltoll`.`toll_price_history_all` (`tph_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_vtu_pt`
    FOREIGN KEY (`ptran_id` )
    REFERENCES `globaltoll`.`payment_transaction_all` (`ptran_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_client_vtu`
    FOREIGN KEY (`client_id` )
    REFERENCES `globaltoll`.`client_all` (`client_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB, 
COMMENT = 'Payment to be done by each vehicle and other details' ;


-- -----------------------------------------------------
-- Table `globaltoll`.`toll_price_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`toll_price_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`toll_price_all` (
  `toll_price_id` INT NOT NULL AUTO_INCREMENT ,
  `toll_location_id` INT NOT NULL ,
  `vehicle_type_id` INT NOT NULL ,
  `direction` VARCHAR(25) NOT NULL ,
  `cost_price` DECIMAL(19,4) NOT NULL ,
  `selling_price` DECIMAL(19,4) NOT NULL ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `last_modified_by` INT NOT NULL ,
  `last_modified_on` DATETIME NOT NULL ,
  `created_on` DATETIME NOT NULL ,
  `client_id` INT NULL ,
  PRIMARY KEY (`toll_price_id`) ,
  INDEX `fk_tp_tl` (`toll_location_id` ASC) ,
  INDEX `fk_tp_vt` (`vehicle_type_id` ASC) ,
  INDEX `fk_last_mod_by_tpa` (`last_modified_by` ASC) ,
  UNIQUE INDEX `uk_tl_vt_dir` (`toll_location_id` ASC, `vehicle_type_id` ASC, `direction` ASC) ,
  INDEX `fk_client_tp` (`client_id` ASC) ,
  CONSTRAINT `fk_tp_tl`
    FOREIGN KEY (`toll_location_id` )
    REFERENCES `globaltoll`.`toll_location_all` (`toll_location_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_tp_vt`
    FOREIGN KEY (`vehicle_type_id` )
    REFERENCES `globaltoll`.`vehicle_type_all` (`vehicle_type_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_by_tpa`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_client_tp`
    FOREIGN KEY (`client_id` )
    REFERENCES `globaltoll`.`client_all` (`client_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB, 
COMMENT = 'toll price for each transaction' ;


-- -----------------------------------------------------
-- Table `globaltoll`.`user_history_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`user_history_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`user_history_all` (
  `user_his_id` INT NOT NULL AUTO_INCREMENT ,
  `user_id` INT NULL ,
  `user_name` VARCHAR(320) NOT NULL COMMENT 'email id is the user name' ,
  `password` VARCHAR(40) NULL COMMENT 'maximun 30 characters are allowed' ,
  `locale` VARCHAR(20) NULL COMMENT 'what is locale??' ,
  `utype_id` INT NOT NULL COMMENT 'Specifies whether user is a normal user or admin or premium user' ,
  `last_login_time` DATETIME NULL ,
  `is_active` VARCHAR(1) NULL COMMENT 'column showing whether the user accout is active or inactive' ,
  `contact_no` VARCHAR(20) NULL ,
  `client_id` INT NULL ,
  `action` VARCHAR(20) NOT NULL ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `created_on` DATETIME NULL ,
  `last_modified_on` DATETIME NULL ,
  `last_modified_by` INT NULL COMMENT 'wat does this mean?? useR?' ,
  `start_date` DATETIME NOT NULL ,
  `end_date` DATETIME NOT NULL ,
  PRIMARY KEY (`user_his_id`) )
ENGINE = InnoDB, 
COMMENT = 'This table has all details about the users' ;


-- -----------------------------------------------------
-- Table `globaltoll`.`toll_location_history_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`toll_location_history_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`toll_location_history_all` (
  `tlh_id` INT NOT NULL AUTO_INCREMENT ,
  `toll_location_id` INT NULL ,
  `toll_operator_id` INT NOT NULL ,
  `geometry` GEOMETRY NOT NULL ,
  `is_covered` VARCHAR(1) NULL ,
  `is_cash_only` VARCHAR(1) NULL ,
  `address1` VARCHAR(45) NULL ,
  `address2` VARCHAR(45) NULL ,
  `city` VARCHAR(50) NULL ,
  `state` VARCHAR(50) NULL ,
  `country` VARCHAR(70) NULL ,
  `zip` VARCHAR(6) NULL ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `created_on` DATETIME NULL ,
  `last_modified_on` DATETIME NULL ,
  `last_modified_by` INT NULL ,
  `start_date` DATETIME NOT NULL ,
  `end_date` DATETIME NOT NULL ,
  `action` VARCHAR(20) NOT NULL ,
  `client_id` INT NULL ,
  `latitude` DECIMAL(3,3) NOT NULL,
  `longitude` DECIMAL(3,3) NOT NULL,
  PRIMARY KEY (`tlh_id`) )
ENGINE = InnoDB, 
COMMENT = 'This table maps the location with corresponding toll operato' /* comment truncated */ ;


-- -----------------------------------------------------
-- Table `globaltoll`.`service_plan_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`service_plan_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`service_plan_all` (
  `service_plan_id` INT NOT NULL AUTO_INCREMENT ,
  `toll_operator_id` INT NULL ,
  `name` VARCHAR(100) NOT NULL COMMENT 'service plan name' ,
  `description` VARCHAR(1000) NULL COMMENT 'plan benefits,details etc ' ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `last_modified_on` DATETIME NOT NULL ,
  `last_modified_by` INT NOT NULL ,
  `created_on` DATETIME NOT NULL ,
  `client_id` INT NULL ,
  PRIMARY KEY (`service_plan_id`) ,
  INDEX `fk_last_mod_by_spa` (`last_modified_by` ASC) ,
  INDEX `fk_sp_to` (`toll_operator_id` ASC) ,
  INDEX `fk_client_sp` (`client_id` ASC) ,
  CONSTRAINT `fk_last_mod_by_spa`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_sp_to`
    FOREIGN KEY (`toll_operator_id` )
    REFERENCES `globaltoll`.`toll_operator_all` (`toll_operator_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_client_sp`
    FOREIGN KEY (`client_id` )
    REFERENCES `globaltoll`.`client_all` (`client_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `globaltoll`.`udf_definition_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`udf_definition_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`udf_definition_all` (
  `udf_def_id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(100) NULL ,
  PRIMARY KEY (`udf_def_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `globaltoll`.`udf_data_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`udf_data_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`udf_data_all` (
  `udf_data_id` INT NOT NULL AUTO_INCREMENT ,
  `udf_value` VARCHAR(1000) NULL ,
  `udf_def_id` INT NULL ,
  PRIMARY KEY (`udf_data_id`) ,
  INDEX `fk_udfdata_udfdef` (`udf_def_id` ASC) ,
  CONSTRAINT `fk_udfdata_udfdef`
    FOREIGN KEY (`udf_def_id` )
    REFERENCES `globaltoll`.`udf_definition_all` (`udf_def_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `globaltoll`.`user_service_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`user_service_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`user_service_all` (
  `user_service_id` INT NOT NULL AUTO_INCREMENT ,
  `user_id` INT NULL ,
  `service_id` INT NULL ,
  `start_date` DATETIME NOT NULL ,
  `end_date` DATETIME NOT NULL ,
  `priority` INT NULL ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `created_on` DATETIME NOT NULL ,
  `last_modified_on` DATETIME NOT NULL ,
  `last_modified_by` INT NOT NULL ,
  `client_id` INT NULL ,
  PRIMARY KEY (`user_service_id`) ,
  INDEX `fk_us_user` (`user_id` ASC) ,
  INDEX `fk_us_ser` (`service_id` ASC) ,
  INDEX `fk_las_mod_by` (`last_modified_by` ASC) ,
  INDEX `fk_client_us` (`client_id` ASC) ,
  CONSTRAINT `fk_us_user`
    FOREIGN KEY (`user_id` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_us_ser`
    FOREIGN KEY (`service_id` )
    REFERENCES `globaltoll`.`service_plan_all` (`service_plan_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_las_mod_by`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_client_us`
    FOREIGN KEY (`client_id` )
    REFERENCES `globaltoll`.`client_all` (`client_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `globaltoll`.`component_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`component_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`component_all` (
  `component_id` INT NOT NULL ,
  `name` VARCHAR(45) NULL ,
  `description` VARCHAR(45) NULL ,
  `client_id` INT NULL ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `created_on` DATETIME NOT NULL ,
  `last_modified_on` DATETIME NOT NULL ,
  `last_modified_by` INT NOT NULL ,
  PRIMARY KEY (`component_id`) ,
  INDEX `fk_comp_client` (`client_id` ASC) ,
  INDEX `fk_last_mod_comp` (`last_modified_by` ASC) ,
  CONSTRAINT `fk_comp_client`
    FOREIGN KEY (`client_id` )
    REFERENCES `globaltoll`.`client_all` (`client_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_comp`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB, 
COMMENT = 'This table store different components(client, server, portal' /* comment truncated */ ;


-- -----------------------------------------------------
-- Table `globaltoll`.`component_version_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`component_version_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`component_version_all` (
  `comp_version_id` INT NOT NULL AUTO_INCREMENT ,
  `component_id` INT NULL ,
  `description` VARCHAR(45) NULL ,
  `list_of_changes` VARCHAR(4000) NULL ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `created_on` DATETIME NOT NULL ,
  `last_modified_on` DATETIME NOT NULL ,
  `last_modified_by` INT NOT NULL ,
  `version` VARCHAR(20) NULL ,
  PRIMARY KEY (`comp_version_id`) ,
  INDEX `fk_cv_c` (`component_id` ASC) ,
  INDEX `fk_last_mod_cv` (`last_modified_by` ASC) ,
  CONSTRAINT `fk_cv_c`
    FOREIGN KEY (`component_id` )
    REFERENCES `globaltoll`.`component_all` (`component_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_last_mod_cv`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `globaltoll`.`configuration_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`configuration_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`configuration_all` (
  `config_id` INT NOT NULL ,
  `comp_version_id` INT NULL ,
  `key` VARCHAR(45) NULL ,
  `value` VARCHAR(1000) NULL ,
  `udf1` VARCHAR(1000) NULL ,
  `udf2` VARCHAR(1000) NULL ,
  `udf3` VARCHAR(1000) NULL ,
  `udf4` VARCHAR(1000) NULL ,
  `udf5` VARCHAR(1000) NULL ,
  `flag1` VARCHAR(1) NULL ,
  `flag2` VARCHAR(1) NULL ,
  `flag3` VARCHAR(1) NULL ,
  `flag4` VARCHAR(1) NULL ,
  `flag5` VARCHAR(1) NULL ,
  `created_on` DATETIME NOT NULL ,
  `last_modified_on` DATETIME NOT NULL ,
  `last_modified_by` INT NOT NULL ,
  PRIMARY KEY (`config_id`) ,
  INDEX `fk_c_cv` (`comp_version_id` ASC) ,
  INDEX `fk_mod_by_config_all` (`last_modified_by` ASC) ,
  CONSTRAINT `fk_c_cv`
    FOREIGN KEY (`comp_version_id` )
    REFERENCES `globaltoll`.`component_version_all` (`comp_version_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_mod_by_config_all`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`user` (`user_id` INT, `client_id` INT, `utype_id` INT, `user_name` INT, `password` INT, `locale` INT, `is_active` INT, `contact_no` INT, `last_login_time` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `created_on` INT, `last_modified_on` INT, `last_modified_by` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`vehicle_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`vehicle_type` (`vehicle_type_id` INT, `name` INT, `description` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `created_on` INT, `last_modified_on` INT, `last_modified_by` INT, `client_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`toll_operator`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`toll_operator` (`toll_operator_id` INT, `user_id` INT, `name` INT, `is_active` INT, `website` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `created_on` INT, `last_modified_on` INT, `last_modified_by` INT, `client_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`user_payment_detail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`user_payment_detail` (`upd_id` INT, `user_id` INT, `cc_type_id` INT, `cc_ac_name` INT, `cc_number` INT, `cc_exp_month` INT, `cc_exp_year` INT, `cc_cvv` INT, `bank_routing` INT, `bank_account` INT, `pay_prefer` INT, `address1` INT, `address2` INT, `city` INT, `state` INT, `country` INT, `zip` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `last_modified_by` INT, `last_modified_on` INT, `created_on` INT, `client_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`user_vehicle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`user_vehicle` (`user_vehicle_id` INT, `user_id` INT, `vehicle_type_id` INT, `vehicle_start_date` INT, `vehicle_end_date` INT, `is_active` INT, `registration_no` INT, `registered_state` INT, `owner_type_id` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `last_modified_by` INT, `last_modified_on` INT, `created_on` INT, `client_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`toll_location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`toll_location` (`toll_location_id` INT, `toll_operator_id` INT, `geometry` INT, `is_covered` INT, `is_cash_only` INT, `address1` INT, `address2` INT, `city` INT, `state` INT, `country` INT, `zip` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `last_modified_by` INT, `last_modified_on` INT, `created_on` INT, `client_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`toll_price`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`toll_price` (`toll_price_id` INT, `toll_location_id` INT, `vehicle_type_id` INT, `direction` INT, `cost_price` INT, `selling_price` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `last_modified_by` INT, `last_modified_on` INT, `created_on` INT, `client_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`vehicle_toll_usage`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`vehicle_toll_usage` (`vtu_id` INT, `uvh_id` INT, `toll_loc_id` INT, `tph_id` INT, `timestamp` INT, `vml_id` INT, `ptran_id` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `last_modified_by` INT, `last_modified_on` INT, `created_on` INT, `client_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`vehicle_movement_log`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`vehicle_movement_log` (`vml_id` INT, `vml_type_id` INT, `uvh_id` INT, `geometry` INT, `timestamp` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `last_modified_on` INT, `last_modified_by` INT, `created_on` INT, `client_id` INT,`latitude` DECIMAL(3,3),`longitude` DECIMAL(3,3));

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`vml_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`vml_type` (`vml_type_id` INT, `name` INT, `description` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `last_modified_by` INT, `last_modified_on` INT, `created_on` INT, `client_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`payment_transaction`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`payment_transaction` (`ptran_id` INT, `user_bl_id` INT, `to_bl_id` INT, `updh_id` INT, `timestamp` INT, `status` INT, `amount` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `last_modified_by` INT, `last_modified_on` INT, `created_on` INT, `client_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`user_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`user_type` (`user_type_id` INT, `name` INT, `description` INT, `min_balance` INT, `min_balance_type` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `created_on` INT, `last_modified_on` INT, `last_modified_by` INT, `client_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`user_balance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`user_balance` (`ubal_id` INT, `user_id` INT, `balance` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `last_modified_by` INT, `last_modified_on` INT, `created_on` INT, `client_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`service_plan`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`service_plan` (`service_plan_id` INT, `toll_operator_id` INT, `name` INT, `description` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `last_modified_on` INT, `last_modified_by` INT, `created_on` INT, `client_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`client` (`client_id` INT, `client_name` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `created_on` INT, `last_modified_on` INT, `last_modified_by` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`owner_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`owner_type` (`owner_type_id` INT, `name` INT, `description` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `falg1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `created_on` INT, `last_modifiede_on` INT, `last_modified_by` INT, `client_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`cc_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`cc_type` (`cc_type_id` INT, `name` INT, `description` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `created_on` INT, `last_modified_on` INT, `last_modified_by` INT, `client_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`user_service`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`user_service` (`user_service_id` INT, `user_id` INT, `service_id` INT, `start_date` INT, `end_date` INT, `priority` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `created_on` INT, `last_modified_on` INT, `last_modified_by` INT, `client_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`configuration`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`configuration` (`config_id` INT, `comp_version_id` INT, `key` INT, `value` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `created_on` INT, `last_modified_on` INT, `last_modified_by` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`component_version`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`component_version` (`comp_version_id` INT, `component_id` INT, `description` INT, `list_of_changes` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `created_on` INT, `last_modified_on` INT, `last_modified_by` INT, `version` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`component`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`component` (`component_id` INT, `name` INT, `description` INT, `client_id` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `created_on` INT, `last_modified_on` INT, `last_modified_by` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`user_payment_detail_history`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`user_payment_detail_history` (`updh_id` INT, `upd_id` INT, `user_id` INT, `cc_type_id` INT, `cc_ac_name` INT, `cc_number` INT, `cc_exp_month` INT, `cc_exp_year` INT, `cc_cvv` INT, `bank_routing` INT, `bank_account` INT, `address1` INT, `address2` INT, `city` INT, `state` INT, `country` INT, `zip` INT, `pay_prefer` INT, `action` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `created_on` INT, `last_modified_on` INT, `last_modified_by` INT, `start_date` INT, `end_date` INT, `client_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`toll_price_history`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`toll_price_history` (`tph_id` INT, `toll_price_id` INT, `toll_location_id` INT, `vehicle_type_id` INT, `direction` INT, `cost_price` INT, `selling_price` INT, `action` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `created_on` INT, `last_modified_on` INT, `last_modified_by` INT, `start_date` INT, `end_date` INT, `client_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`user_history`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`user_history` (`user_his_id` INT, `user_id` INT, `user_name` INT, `password` INT, `locale` INT, `utype_id` INT, `last_login_time` INT, `is_active` INT, `contact_no` INT, `client_id` INT, `action` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `created_on` INT, `last_modified_on` INT, `last_modified_by` INT, `start_date` INT, `end_date` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`user_balance_log`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`user_balance_log` (`ublog_id` INT, `ubal_id` INT, `delta` INT, `timestamp` INT, `action` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `last_modified_by` INT, `last_modified_on` INT, `created_on` INT, `client_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`toll_location_history`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`toll_location_history` (`tlh_id` INT, `toll_location_id` INT, `toll_operator_id` INT, `geometry` INT, `is_covered` INT, `is_cash_only` INT, `address1` INT, `address2` INT, `city` INT, `state` INT, `country` INT, `zip` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `created_on` INT, `last_modified_on` INT, `last_modified_by` INT, `start_date` INT, `end_date` INT, `action` INT, `client_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `globaltoll`.`user_vehicle_history`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globaltoll`.`user_vehicle_history` (`uvh_id` INT, `user_vehicle_id` INT, `user_id` INT, `vehicle_type_id` INT, `is_active` INT, `vehicle_start_date` INT, `vehicle_end_date` INT, `registration_no` INT, `registered_state` INT, `owner_type_id` INT, `udf1` INT, `udf2` INT, `udf3` INT, `udf4` INT, `udf5` INT, `flag1` INT, `flag2` INT, `flag3` INT, `flag4` INT, `flag5` INT, `created_on` INT, `last_modified_on` INT, `last_modified_by` INT, `start_date` INT, `end_date` INT, `action` INT, `client_id` INT);

-- -----------------------------------------------------
-- View `globaltoll`.`user`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`user` ;
DROP TABLE IF EXISTS `globaltoll`.`user`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`user` AS
select * from user_all
where user_id >0;

-- -----------------------------------------------------
-- View `globaltoll`.`vehicle_type`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`vehicle_type` ;
DROP TABLE IF EXISTS `globaltoll`.`vehicle_type`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`vehicle_type` AS
select * from vehicle_type_all
where vehicle_type_id >0;
;

-- -----------------------------------------------------
-- View `globaltoll`.`toll_operator`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`toll_operator` ;
DROP TABLE IF EXISTS `globaltoll`.`toll_operator`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`toll_operator` AS
select * from toll_operator_all
where toll_operator_id >0;

-- -----------------------------------------------------
-- View `globaltoll`.`user_payment_detail`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`user_payment_detail` ;
DROP TABLE IF EXISTS `globaltoll`.`user_payment_detail`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`user_payment_detail` AS
select * from user_payment_detail_all
where upd_id >0;
;

-- -----------------------------------------------------
-- View `globaltoll`.`user_vehicle`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`user_vehicle` ;
DROP TABLE IF EXISTS `globaltoll`.`user_vehicle`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`user_vehicle` AS
select * from user_vehicle_all
where user_vehicle_id >0;
;

-- -----------------------------------------------------
-- View `globaltoll`.`toll_location`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`toll_location` ;
DROP TABLE IF EXISTS `globaltoll`.`toll_location`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`toll_location` AS
select `toll_location_all`.`toll_location_id` AS `toll_location_id`,`toll_location_all`.`toll_operator_id` AS `toll_operator_id`,`toll_location_all`.`is_covered` AS `is_covered`,
`toll_location_all`.`is_cash_only` AS `is_cash_only`,`toll_location_all`.`address1` AS `address1`,`toll_location_all`.`address2` AS `address2`,`toll_location_all`.`city` AS `city`,
`toll_location_all`.`state` AS `state`,`toll_location_all`.`country` AS `country`,`toll_location_all`.`zip` AS `zip`,`toll_location_all`.`udf1` AS `udf1`,
`toll_location_all`.`udf2` AS `udf2`,`toll_location_all`.`udf3` AS `udf3`,`toll_location_all`.`udf4` AS `udf4`,`toll_location_all`.`udf5` AS `udf5`,
`toll_location_all`.`flag1` AS `flag1`,`toll_location_all`.`flag2` AS `flag2`,`toll_location_all`.`flag3` AS `flag3`,`toll_location_all`.`flag4` AS `flag4`,
`toll_location_all`.`flag5` AS `flag5`,`toll_location_all`.`last_modified_by` AS `last_modified_by`,`toll_location_all`.`last_modified_on` AS `last_modified_on`,
`toll_location_all`.`created_on` AS `created_on`,`toll_location_all`.`client_id` AS `client_id`,`toll_location_all`.`latitude` AS `latitude`,
`toll_location_all`.`longitude` AS `longitude` from `toll_location_all`
where (`toll_location_all`.`toll_location_id` > 0)

-- -----------------------------------------------------
-- View `globaltoll`.`toll_price`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`toll_price` ;
DROP TABLE IF EXISTS `globaltoll`.`toll_price`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`toll_price` AS
select * from toll_price_all
where toll_price_id >0;
;

-- -----------------------------------------------------
-- View `globaltoll`.`vehicle_toll_usage`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`vehicle_toll_usage` ;
DROP TABLE IF EXISTS `globaltoll`.`vehicle_toll_usage`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`vehicle_toll_usage` AS
select * from vehicle_toll_usage_all
where vtu_id >0;
;

-- -----------------------------------------------------
-- View `globaltoll`.`vehicle_movement_log`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`vehicle_movement_log` ;
DROP TABLE IF EXISTS `globaltoll`.`vehicle_movement_log`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`vehicle_movement_log` AS
select `vehicle_movement_log_all`.`vml_id` AS `vml_id`,`vehicle_movement_log_all`.`vml_type_id` AS `vml_type_id`,`vehicle_movement_log_all`.`uvh_id` AS `uvh_id`,
`vehicle_movement_log_all`.`timestamp` AS `timestamp`,`vehicle_movement_log_all`.`udf1` AS `udf1`,`vehicle_movement_log_all`.`udf2` AS `udf2`,
`vehicle_movement_log_all`.`udf3` AS `udf3`,`vehicle_movement_log_all`.`udf4` AS `udf4`,`vehicle_movement_log_all`.`udf5` AS `udf5`,
`vehicle_movement_log_all`.`flag1` AS `flag1`,`vehicle_movement_log_all`.`flag2` AS `flag2`,`vehicle_movement_log_all`.`flag3` AS `flag3`,
`vehicle_movement_log_all`.`flag4` AS `flag4`,`vehicle_movement_log_all`.`flag5` AS `flag5`,`vehicle_movement_log_all`.`last_modified_on` AS `last_modified_on`,
`vehicle_movement_log_all`.`last_modified_by` AS `last_modified_by`,`vehicle_movement_log_all`.`created_on` AS `created_on`,
`vehicle_movement_log_all`.`client_id` AS `client_id`,`vehicle_movement_log_all`.`latitude` AS `latitude`,
`vehicle_movement_log_all`.`longitude` AS `longitude` from `vehicle_movement_log_all`
where (`vehicle_movement_log_all`.`vml_id` > 0)
;

-- -----------------------------------------------------
-- View `globaltoll`.`vml_type`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`vml_type` ;
DROP TABLE IF EXISTS `globaltoll`.`vml_type`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`vml_type` AS
select * from vml_type_all
where vml_type_id >0;

-- -----------------------------------------------------
-- View `globaltoll`.`payment_transaction`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`payment_transaction` ;
DROP TABLE IF EXISTS `globaltoll`.`payment_transaction`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`payment_transaction` AS
select * from payment_transaction_all
where ptran_id >0;

-- -----------------------------------------------------
-- View `globaltoll`.`user_type`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`user_type` ;
DROP TABLE IF EXISTS `globaltoll`.`user_type`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`user_type` AS
select * from user_type_all
where user_type_id >0;
;

-- -----------------------------------------------------
-- View `globaltoll`.`user_balance`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`user_balance` ;
DROP TABLE IF EXISTS `globaltoll`.`user_balance`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`user_balance` AS
select * from user_balance_all
where ubal_id >0;

-- -----------------------------------------------------
-- View `globaltoll`.`service_plan`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`service_plan` ;
DROP TABLE IF EXISTS `globaltoll`.`service_plan`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`service_plan` AS
select * from service_plan_all
where service_plan_id >0;
;

-- -----------------------------------------------------
-- View `globaltoll`.`client`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`client` ;
DROP TABLE IF EXISTS `globaltoll`.`client`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`client` AS
select * from client_all
where client_id >0;

-- -----------------------------------------------------
-- View `globaltoll`.`owner_type`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`owner_type` ;
DROP TABLE IF EXISTS `globaltoll`.`owner_type`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`owner_type` AS
select * from owner_type_all
where owner_type_id >0;

-- -----------------------------------------------------
-- View `globaltoll`.`cc_type`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`cc_type` ;
DROP TABLE IF EXISTS `globaltoll`.`cc_type`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`cc_type` AS
select * from cc_type_all
where cc_type_id >0;

-- -----------------------------------------------------
-- View `globaltoll`.`user_service`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`user_service` ;
DROP TABLE IF EXISTS `globaltoll`.`user_service`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`user_service` AS
select * from user_service_all
where user_service_id >0;

-- -----------------------------------------------------
-- View `globaltoll`.`configuration`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`configuration` ;
DROP TABLE IF EXISTS `globaltoll`.`configuration`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`configuration` AS
select * from configuration_all
where config_id >0;

-- -----------------------------------------------------
-- View `globaltoll`.`component_version`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`component_version` ;
DROP TABLE IF EXISTS `globaltoll`.`component_version`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`component_version` AS
select * from component_version_all
where comp_version_id >0;

-- -----------------------------------------------------
-- View `globaltoll`.`component`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`component` ;
DROP TABLE IF EXISTS `globaltoll`.`component`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`component` AS
select * from component_all
where component_id >0;

-- -----------------------------------------------------
-- View `globaltoll`.`user_payment_detail_history`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`user_payment_detail_history` ;
DROP TABLE IF EXISTS `globaltoll`.`user_payment_detail_history`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`user_payment_detail_history` AS
select * from user_payment_detail_history_all
where updh_id >0;

-- -----------------------------------------------------
-- View `globaltoll`.`toll_price_history`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`toll_price_history` ;
DROP TABLE IF EXISTS `globaltoll`.`toll_price_history`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`toll_price_history` AS
select * from toll_price_history_all
where tph_id >0;
;

-- -----------------------------------------------------
-- View `globaltoll`.`user_history`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`user_history` ;
DROP TABLE IF EXISTS `globaltoll`.`user_history`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`user_history` AS
select * from user_history_all
where user_his_id >0;
;

-- -----------------------------------------------------
-- View `globaltoll`.`user_balance_log`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`user_balance_log` ;
DROP TABLE IF EXISTS `globaltoll`.`user_balance_log`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`user_balance_log` AS
select * from user_balance_log_all
where ublog_id >0;
;

-- -----------------------------------------------------
-- View `globaltoll`.`toll_location_history`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`toll_location_history` ;
DROP TABLE IF EXISTS `globaltoll`.`toll_location_history`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`toll_location_history` AS
select `toll_location_history_all`.`tlh_id` AS `tlh_id`,`toll_location_history_all`.`toll_location_id` AS `toll_location_id`,
`toll_location_history_all`.`toll_operator_id` AS `toll_operator_id`,`toll_location_history_all`.`is_covered` AS `is_covered`,
`toll_location_history_all`.`is_cash_only` AS `is_cash_only`,`toll_location_history_all`.`address1` AS `address1`,
`toll_location_history_all`.`address2` AS `address2`,`toll_location_history_all`.`city` AS `city`,`toll_location_history_all`.`state` AS `state`,
`toll_location_history_all`.`country` AS `country`,`toll_location_history_all`.`zip` AS `zip`,`toll_location_history_all`.`udf1` AS `udf1`,
`toll_location_history_all`.`udf2` AS `udf2`,`toll_location_history_all`.`udf3` AS `udf3`,`toll_location_history_all`.`udf4` AS `udf4`,
`toll_location_history_all`.`udf5` AS `udf5`,`toll_location_history_all`.`flag1` AS `flag1`,`toll_location_history_all`.`flag2` AS `flag2`,
`toll_location_history_all`.`flag3` AS `flag3`,`toll_location_history_all`.`flag4` AS `flag4`,`toll_location_history_all`.`flag5` AS `flag5`,
`toll_location_history_all`.`created_on` AS `created_on`,`toll_location_history_all`.`last_modified_on` AS `last_modified_on`,
`toll_location_history_all`.`last_modified_by` AS `last_modified_by`,`toll_location_history_all`.`start_date` AS `start_date`,
`toll_location_history_all`.`end_date` AS `end_date`,`toll_location_history_all`.`action` AS `action`,`toll_location_history_all`.`client_id` AS `client_id`,
`toll_location_history_all`.`latitude` AS `latitude`,`toll_location_history_all`.`longitude` AS `longitude` from `toll_location_history_all`
where (`toll_location_history_all`.`tlh_id` > 0)

-- -----------------------------------------------------
-- View `globaltoll`.`user_vehicle_history`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`user_vehicle_history` ;
DROP TABLE IF EXISTS `globaltoll`.`user_vehicle_history`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`user_vehicle_history` AS
select * from user_vehicle_history_all
where uvh_id >0;
;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
