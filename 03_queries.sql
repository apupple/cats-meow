-- ==========================
-- P.A.W.S QUERIES --
-- ==========================
-- 1) Display Contact Info of All Persons --

SELECT	p.person_id,
		f_get_full_name(p.person_first_name, p.person_last_name) AS "name", 
		GROUP_CONCAT(n.phone_number SEPARATOR ', ') AS "phone_numbers",
		p.person_email,
		f_get_address(p.person_street, p.person_city, p.person_state, p.person_zipCode) as "address"
FROM PAWS.person p
LEFT JOIN PAWS.phone n ON p.person_ID = n.person_ID
GROUP BY p.person_ID;

-- 2) Min/Max --
