DELIMITER $$

DROP FUNCTION IF EXISTS GetInfFuture $$

CREATE FUNCTION GetInfFuture() #function to get infinite future date of the record
	RETURNS DATETIME
BEGIN
	RETURN '3000-01-01';
END$$



DROP FUNCTION IF EXISTS GetStartDate $$

CREATE FUNCTION GetStartDate() #function to get start date of the record
	RETURNS DATETIME
BEGIN
	RETURN sysdate();
END$$


DROP FUNCTION IF EXISTS GetEndDate$$

CREATE FUNCTION GetEndDate() #function to get End date of the record
	RETURNS DATETIME
BEGIN
	Return sysdate()- Interval 1 second ;
END$$


DELIMITER ;

