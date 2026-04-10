-- ===============================
-- P.A.W.S. TRIGGERS, PROCEDURES, FUNCTIONS --
-- ===============================

-- TRIGGERS --


-- PROCEDURES --


-- FUNCTIONS --
DELIMITER //
CREATE FUNCTION f_get_full_name(first_name VARCHAR(200), last_name VARCHAR(200))
RETURNS VARCHAR(200)
DETERMINISTIC
BEGIN
	RETURN CONCAT(first_name, " ", last_name);
END //
DELIMITER ;