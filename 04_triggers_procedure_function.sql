-- ===============================
-- P.A.W.S. TRIGGERS, PROCEDURES, FUNCTIONS --
-- ===============================

-- FUNCTIONS --
-- 1) Get Full Name: Combines first and last names for full name string --
DELIMITER //
CREATE FUNCTION f_get_full_name(first_name VARCHAR(200), last_name VARCHAR(200))
RETURNS VARCHAR(200)
DETERMINISTIC
BEGIN
	RETURN CONCAT(first_name, " ", last_name);
END //
DELIMITER ;

-- 2) Get Address: Combines street, city, state, and zip code for full address string --
DELIMITER //
CREATE FUNCTION f_get_address(street VARCHAR(200), city VARCHAR(200), state VARCHAR(200), zipCode INT)
RETURNS VARCHAR(200)
DETERMINISTIC
BEGIN
	RETURN CONCAT(street, ", ", city, ", ", state, " ", zipCode);
END //
DELIMITER ;

-- 3) Calculate Current Occupancy: Counts animals in an enclosure to get its current occupancy --
DELIMITER //
CREATE FUNCTION f_calculate_current_occupancy(p_enclosure_id INT)
RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
	DECLARE occupancy INT;

    SELECT COUNT(*)
    INTO occupancy
    FROM animal
    WHERE enclosure_id = p_enclosure_id;

    RETURN occupancy;
END //
DELIMITER ;

-- TRIGGERS --


-- PROCEDURES --
