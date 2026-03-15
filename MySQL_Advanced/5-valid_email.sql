-- Reset valid_email only when the email is changed
-- If the email remains the same, valid_email should not change

CREATE TRIGGER reset_valid_email
BEFORE UPDATE ON users
FOR EACH ROW
IF OLD.email <> NEW.email THEN
    SET NEW.valid_email = 0;
END IF;
