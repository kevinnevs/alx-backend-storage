-- Creates a function SafeDiv that divides (and returns)
-- the first by the second number orreturs 0 if the 
-- second number is equal to 0.
DROP FUNCTION IF EXISTS SafeDiv;
DELIMITER $$
CREATE FUNCTION SafeDiv(a INT, b INT) RETURNS DECIMAL(10, 4)
BEGIN
    RETURN CASE
        WHEN b = 0 THEN 0.0
	ELSE a / b
    END;
END $$
DELIMITER ;
