-- Creates a trigger that resets 'valid_email' when the email has been changed
-- Change the delimiter to allow for trigger creation
-- If the email has changed, reset 'valid_email' to false (or 0)

DELIMITER $$

CREATE TRIGGER reset_email_on_change
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
	IF NEW.email != OLD.email THEN
		SET NEW.valid_email = 0;
	END IF;
END$$
DELIMITER ;
