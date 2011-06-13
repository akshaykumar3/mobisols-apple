DELIMITER $$

DROP FUNCTION IF EXISTS GetInfFuture $$

CREATE FUNCTION GetInfFuture() #function to get infinite future date of the record
	RETURNS DATETIME
BEGIN
	DECLARE dInfFuture DATETIME;
	SET @dInfFuture = '3000-01-01 00:00:00';
	RETURN dInfFuture;
END$$



DROP FUNCTION IF EXISTS GetStartDate $$

CREATE FUNCTION GetStartDate() #function to get start date of the record
	RETURNS DATETIME
BEGIN
	DECLARE dStartDate DATETIME;
	SET @dStartDate = sysdate();
	RETURN dStartDate;
END$$


DROP FUNCTION IF EXISTS GetEndDate$$

CREATE FUNCTION GetEndDate() #function to get End date of the record
	RETURNS DATETIME
BEGIN
	DECLARE dEndDate DATETIME;
	SET @dEndDate = SUBDATE(sysdate(),INTERVAL '1' SECOND);
	RETURN dEndDate;
END$$


DELIMITER ;

