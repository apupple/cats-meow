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

-- PROCEDURES --

-- 1) Create adoption: Add a new pending adoption to the database
DELIMITER //
CREATE PROCEDURE create_adoption (IN p_adoption_id INT, IN p_animal_id INT, IN p_adopter_id INT)
BEGIN
    INSERT INTO adoption (adoption_id, animal_id, adopter_id, adoption_status, adoption_start_date, adoption_end_date)
    VALUES (p_adoption_id, p_animal_id, p_adopter_id, 'PENDING', NULL, NULL);
END //
DELIMITER ;

-- TRIGGERS --

-- 1) Insert animal check: check occupancy before inserting an animal
-- If the enclosure is full, the animal will not be added and there'll be an error
DELIMITER //
CREATE TRIGGER trg_insert_animal_check
BEFORE INSERT ON animal
FOR EACH ROW
BEGIN
	DECLARE max_cap INT;

    SELECT enclosure_max_capacity
    INTO max_cap
    FROM enclosure
    WHERE enclosure_id = NEW.enclosure_id;

    IF f_calculate_current_occupancy(NEW.enclosure_id) >= max_cap THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot add animal: enclosure is full.';
    END IF;
END //
DELIMITER ;

-- 2) Update animal check: check occupancy before updating an animal
-- If the enclosure is full, the animal will not be updated and there'll be an error
DELIMITER //
CREATE TRIGGER trg_update_animal_check
BEFORE UPDATE ON animal
FOR EACH ROW
BEGIN
    DECLARE max_cap INT;

    IF NEW.enclosure_id <> OLD.enclosure_id THEN
        SELECT enclosure_max_capacity
        INTO max_cap
        FROM enclosure
        WHERE enclosure_id = NEW.enclosure_id;

        IF f_calculate_current_occupancy(NEW.enclosure_id) >= max_cap THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Cannot move animal: target enclosure is full.';
        END IF;
    END IF;
END//
DELIMITER ;

-- 3) Delete enclosure check: check if animals are in enclosure before deletion
-- If there are animals, the enclosure will not be deleted and there'll be an error
DELIMITER //
CREATE TRIGGER trg_delete_enclosure_check
BEFORE DELETE ON enclosure
FOR EACH ROW
BEGIN
    DECLARE animal_count INT;

    SELECT COUNT(*)
    INTO animal_count
    FROM animal
    WHERE enclosure_id = OLD.enclosure_id;

    IF animal_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete enclosure: animals are still assigned to it.';
    END IF;
END//
DELIMITER ;

