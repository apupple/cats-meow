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
-- ORDER OUTPUT: # person_id, name, phone_numbers, person_email, address
-- EX OUTPUT: '1', 'Light Yagami', '210-123-4567', 'light.yagami@gmail.com', '1024 Shadow Lane, Los Angeles, CA 90012'

-- 2) Adopter Information --
SELECT
    f_get_full_name(p.person_first_name, p.person_last_name) AS full_name,
    p.person_email,
    ph.phone_number,
    f_get_address(p.person_street, p.person_city, p.person_state, p.person_zipCode) AS address,
    a.adopter_housing_info,
    a.adopter_is_fenced,
    ri.is_rented,
    ri.charge_of_rent
FROM adopter a
JOIN person p ON a.person_id = p.person_id
JOIN phone ph ON p.person_id = ph.person_id
LEFT JOIN rent_info ri ON a.rent_info_id = ri.rent_info_id
ORDER BY p.person_last_name, p.person_first_name;
-- ORDER OUTPUT: # full_name, person_email, phone_number, address, adopter_housing_info, adopter_is_fenced, is_rented, charge_of_rent
-- EX OUTPUT: 'Barry Allen', 'barry.allen@gmail.com', '940-508-6930', '400 Speedster Dr, Cleveland, OH 44101', 'apartment with siblings', '0', '1', '800.00'

-- 3) What species and breeds are currently in the shelter?
SELECT DISTINCT
    b.breed_species,
    b.breed_name,
    COUNT(a.animal_id) AS animals_in_shelter
FROM breed b
JOIN animal a ON b.breed_id = a.breed_id
GROUP BY b.breed_species, b.breed_name
ORDER BY b.breed_species, animals_in_shelter DESC;
-- ORDER OUTPUT: # breed_species, breed_name, animals_in_shelter
-- EX OUTPUT: 'Canis Lupus Familiaris', 'German Shepherd', '2'

-- 4) How full is each enclosure?
SELECT
    enclosure_id,
    enclosure_sanitation_status,
    enclosure_max_capacity,
    f_calculate_current_occupancy(enclosure_id) AS current_occupancy,
    (enclosure_max_capacity - f_calculate_current_occupancy(enclosure_id)) AS available_spots,
    ROUND(f_calculate_current_occupancy(enclosure_id) / enclosure_max_capacity * 100, 1) AS pct_full
FROM enclosure
ORDER BY pct_full DESC;
-- ORDER OUTPUT: # enclosure_id, enclosure_sanitation_status, enclosure_max_capacity, current_occupancy, available_spots, pct_full
-- EX OUTPUT: '1', 'Clean', '12', '8', '4', '66.7'


-- 5) Employee Payroll
SELECT
    e.employee_dept,
    COUNT(e.employee_id) AS staff_count,
    MIN(e.employee_hourly_rate) AS lowest_rate,
    MAX(e.employee_hourly_rate) AS highest_rate,
    ROUND(AVG(e.employee_hourly_rate), 2) AS avg_rate,
    f_get_full_name(p.person_first_name, p.person_last_name) AS top_earner,
    e.employee_job_title AS top_earner_title
FROM employee e
JOIN person p ON e.person_id = p.person_id
WHERE e.employee_status = 'EMPLOYED'
  AND e.employee_hourly_rate = (
      SELECT MAX(e2.employee_hourly_rate)
      FROM employee e2
      WHERE e2.employee_dept = e.employee_dept
        AND e2.employee_status = 'EMPLOYED'
  )
GROUP BY e.employee_dept, p.person_first_name, p.person_last_name, e.employee_job_title
ORDER BY avg_rate DESC;
-- ORDER OUTPUT: employee_dept, staff_count, lowest_rate, highest_rate, avg_rate, top_earner, top_earner_title
-- EX OUTPUT: 'adoption', '1', '20.00', '20.00', '20.00', 'Wednesday Addams', 'COORDINATOR'
WITH dept_stats AS (
	SELECT
		employee_dept,
		COUNT(employee_id) AS staff_count,
		MIN(employee_hourly_rate) AS lowest_rate,
		MAX(employee_hourly_rate) AS highest_rate,
		ROUND(AVG(employee_hourly_rate), 2) AS avg_rate
	FROM employee
	WHERE employee_status = 'EMPLOYED'
	GROUP BY employee_dept
)
SELECT
	dept_stats.employee_dept,
    dept_stats.staff_count,
    dept_stats.lowest_rate,
    dept_stats.highest_rate,
    dept_stats.avg_rate,
    f_get_full_name(person.person_first_name, person.person_last_name) AS top_earner,
    employee.employee_job_title AS top_earner_title
FROM dept_stats
JOIN employee ON employee.employee_dept = dept_stats.employee_dept AND employee.employee_hourly_rate = dept_stats.highest_rate
JOIN person ON employee.person_id = person.person_id
WHERE employee.employee_status = 'EMPLOYED'
ORDER BY dept_stats.highest_rate DESC;

-- 6) Volunteer Hours Leaderboard
SELECT
    f_get_full_name(p.person_first_name, p.person_last_name) AS volunteer_name,
    v.volunteer_total_hours,
    v.volunteer_status,
    v.volunteer_training_complete,
    v.volunteer_start_date,
    GROUP_CONCAT(pt.preferred_task_name ORDER BY pt.preferred_task_name SEPARATOR ', ') AS preferred_tasks
FROM volunteer v
JOIN person p ON v.person_id = p.person_id
LEFT JOIN preferred_task pt ON v.volunteer_id = pt.volunteer_id
WHERE v.volunteer_status = 'ACTIVE'
  AND v.volunteer_total_hours >= (
      SELECT AVG(volunteer_total_hours)
      FROM volunteer
      WHERE volunteer_status = 'ACTIVE'
  )
GROUP BY v.volunteer_id, p.person_first_name, p.person_last_name,
         v.volunteer_total_hours, v.volunteer_status,
         v.volunteer_training_complete, v.volunteer_start_date
ORDER BY v.volunteer_total_hours DESC;
-- ORDER OUTPUT: volunteer_name, volunteer_total_hours, volunteer_status, volunteer_training_complete, volunteer_start_date, preferred_tasks
-- EX OUTPUT: 'Clark Kent', '20', 'ACTIVE', '1', '2025-09-20', 'playing with animals, walking dogs'

