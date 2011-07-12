DROP TABLE IF EXISTS `globaltoll`.`device_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`device_all` (
  `device_id` INT NOT NULL AUTO_INCREMENT ,
  `user_id` INT NOT NULL ,
  `device_uuid` VARCHAR(100) NOT NULL ,
  `device_type` VARCHAR(100) NOT NULL ,
  `vehicle_id` INT NULL ,
  `is_active` VARCHAR(1) NOT NULL ,
  `last_login_time` TIMESTAMP NOT NULL ,
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
  `created_on` TIMESTAMP NULL ,
  `last_modified_on` TIMESTAMP NULL ,
  `last_modified_by` INT NULL ,
  `client_id` INT NOT NULL ,
  PRIMARY KEY (`device_id`) ,
  INDEX `fk_device_user` (`user_id` ASC) ,
  INDEX `fk_device_client` (`client_id` ASC) ,
  INDEX `fk_lastmod_device` (`last_modified_by` ASC) ,
  INDEX `fk_device_vehicle` (`vehicle_id` ASC) ,
  UNIQUE INDEX `uq_device_name` (`device_uuid` ASC, `device_type` ASC) ,
  CONSTRAINT `fk_device_user`
    FOREIGN KEY (`user_id` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_device_client`
    FOREIGN KEY (`client_id` )
    REFERENCES `globaltoll`.`client_all` (`client_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_lastmod_device`
    FOREIGN KEY (`last_modified_by` )
    REFERENCES `globaltoll`.`user_all` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_device_vehicle`
    FOREIGN KEY (`vehicle_id` )
    REFERENCES `globaltoll`.`user_vehicle_all` (`user_vehicle_id` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `globaltoll`.`device_history_all`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `globaltoll`.`device_history_all` ;

CREATE  TABLE IF NOT EXISTS `globaltoll`.`device_history_all` (
  `device_history_id` INT NOT NULL AUTO_INCREMENT ,
  `device_id` INT NULL ,
  `user_id` INT NULL ,
  `device_uuid` VARCHAR(100) NULL ,
  `device_type` VARCHAR(100) NULL ,
  `vehicle_id` INT NULL ,
  `is_active` VARCHAR(1) NULL ,
  `last_login_time` TIMESTAMP NULL ,
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
  `client_id` INT NULL ,
  `last_modified_by` INT NULL ,
  `last_modified_on` TIMESTAMP NULL ,
  `created_on` TIMESTAMP NULL ,
  `start_date` TIMESTAMP NULL ,
  `end_date` TIMESTAMP NULL ,
  `action` VARCHAR(20) NULL ,
  PRIMARY KEY (`device_history_id`) )
ENGINE = InnoDB;

DROP VIEW IF EXISTS `globaltoll`.`device` ;
DROP TABLE IF EXISTS `globaltoll`.`device`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`device` AS
select * from device_all where device_id>0;

-- -----------------------------------------------------
-- View `globaltoll`.`device_history`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `globaltoll`.`device_history` ;
DROP TABLE IF EXISTS `globaltoll`.`device_history`;
USE `globaltoll`;
CREATE  OR REPLACE VIEW `globaltoll`.`device_history` AS
select * from device_history_all where device_history_id>0;
