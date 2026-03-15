-- Create a trigger that resets valid_email when the email is changed

CREATE TRIGGER reset_valid_email
BEFORE UPDATE ON users
FOR EACH ROW
SET NEW.valid_email = IF(OLD.email <> NEW.email, 0, NEW.valid_email);
