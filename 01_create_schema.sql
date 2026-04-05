-- CREATE P.A.W.S. DATABASE --
CREATE DATABASE PAWS;
USE PAWS;
-- P.A.W.S. TABLES --
-- MEDICAL HISTORY --
-- 1) MEDICAL HISTORY --
	CREATE TABLE medical_history (
	medical_history_id INT PRIMARY KEY,
    needs_desc TEXT
);
-- 2) VACCINATIONS --
	CREATE TABLE vaccinations (
    vaccination_id INT PRIMARY KEY,
    medical_history_id INT,
    vaccination_name VARCHAR(200),
    vaccination_date DATE,
    FOREIGN KEY (medical_history_id) REFERENCES medical_history(medical_history_id)
);
-- 3) MEDICATIONS --
	CREATE TABLE medication (
    medication_id INT PRIMARY KEY,
    medical_history_id INT,
    medication_name VARCHAR(200),
    prescription_date DATE,
	prescribed_duration VARCHAR(200), -- NEW ATTRIBUTE --
    FOREIGN KEY (medical_history_id) REFERENCES medical_history(medical_history_id)
);
-- 4) SURGERIES --
	CREATE TABLE surgeries (
    surgery_id INT PRIMARY KEY,
    medical_history_id INT,
	surgery_name VARCHAR(200), -- NEW ATTRIBUTE --
    surgery_desc TEXT,
    surgery_date DATE,
	surgery_start_time TIME, -- NEW ATTRIBUTE --
	surgery_end_time TIME, -- NEW ATTRIBUTE --
    FOREIGN KEY (medical_history_id) REFERENCES medical_history(medical_history_id)
);
-- 5) DIAGNOSIS --
	CREATE TABLE diagnosis (
    diagnosis_id INT PRIMARY KEY,
    medical_history_id INT,
    diagnosis_name VARCHAR(200),
    diagnosis_date DATE,
    diagnosis_desc TEXT,
	diagnosis_status VARCHAR(200), -- NEW ATTRIBUTE (ERADICATED, TERMINAL)--
    FOREIGN KEY (medical_history_id) REFERENCES medical_history(medical_history_id)
);
-- PERSON --
-- 1) PERSON --
CREATE TABLE person (
    person_id INT PRIMARY KEY,
    person_first_name VARCHAR(200),
    person_last_name VARCHAR(200),
    person_email VARCHAR(200),
    person_dob DATE,
    person_street VARCHAR(200),
    person_city VARCHAR(200),
    person_state VARCHAR(200),
    person_zipCode VARCHAR(200)
);
-- 2) PHONE --
CREATE TABLE phone (
    phone_id INT PRIMARY KEY,
    person_id INT,
    phone_number VARCHAR(200),
    FOREIGN KEY (person_id) REFERENCES person(person_id)
);
-- 3) VOLUNTEER --
CREATE TABLE volunteer (
    volunteer_id INT PRIMARY KEY,
    person_id INT,
    enclosure_id INT,
    volunteer_avaliability_sched TEXT,
    volunteer_training_complete BOOLEAN,
    volunteer_background_check BOOLEAN,
    volunteer_total_hours INT,
    volunteer_status VARCHAR(200), -- TRAINEE, CERTIFIED --
    volunteer_start_date DATE,
	volunteer_end_date DATE, -- NEW ATTRIBUTE --
	FOREIGN KEY (person_id) REFERENCES person(person_id),
    FOREIGN KEY (enclosure_id) REFERENCES enclosure(enclosure_id)
);
-- 4) PREFERRED TASK --
CREATE TABLE preferred_task (
	preferred_task_id INT PRIMARY KEY,
    volunteer_id INT,
    preferred_task_name VARCHAR(200),
	FOREIGN KEY (volunteer_id) REFERENCES volunteer(volunteer_id)
);
-- 5) EMPLOYEE --
CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    person_id INT,
	enclosure_id INT,
    employee_work_sched TEXT,
    employee_dept VARCHAR(200),
    employee_background_check BOOLEAN,
    employee_job_title VARCHAR(200),
    employee_status VARCHAR(200),
    employee_hourly_rate DECIMAL(10,2),
    employee_start_date DATE,
	employee_end_date DATE, -- NEW ATTRIBUTE --
	FOREIGN KEY (person_id) REFERENCES person(person_id),
	FOREIGN KEY (enclosure_id) REFERENCES enclosure(enclosure_id)
);
-- 6) CERTIFICATION --
CREATE TABLE certification (
	certification_id INT PRIMARY KEY,
	employee_id INT,
	certification_name VARCHAR(200),
	issuer_name VARCHAR(200),
	issued_date DATE,
	FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);
-- 7) ADOPTER --
CREATE TABLE adopter (
	adopter_id INT PRIMARY KEY,
    person_id INT,
    rent_info_id INT,
    adopter_housing_info VARCHAR(200),
    adopter_is_fenced BOOLEAN,
    adopter_hours_outside_of_home VARCHAR(200),
	FOREIGN KEY (person_id) REFERENCES person(person_id),
    FOREIGN KEY (rent_info_id) REFERENCES rent_info(rent_info_id)
);
-- 8) RENT INFO --
CREATE TABLE rent_info (
	rent_info_id INT PRIMARY KEY,
    is_rented BOOLEAN,
	charge_of_rent DECIMAL(10,2), -- NEW ATTRIBUTE --
    landlord_phone_number VARCHAR(200),
    landlord_first_name VARCHAR(200),
    landlord_last_name VARCHAR(200)
);
-- 9) VET REFERENCES --
CREATE TABLE vet_references (
	vet_id INT PRIMARY KEY,
    adopter_id INT,
    vet_first_name VARCHAR(200),
    vet_last_name VARCHAR(200),
    vet_phone_number VARCHAR(200),
	FOREIGN KEY (adopter_id) REFERENCES adopter(adopter_id)
);
-- ANIMAL --
-- 1) ANIMAL --
CREATE TABLE animal (
	animal_id INT PRIMARY KEY,
	breed_id INT,
	enclosure_id INT,
	medical_history_id INT,
	animal_name VARCHAR(200),
	animal_age INT,
	animal_sex VARCHAR(200),
	animal_desc TEXT,
	FOREIGN KEY (breed_id) REFERENCES breed(breed_id),
	FOREIGN KEY (enclosure_id) REFERENCES enclosure(enclosure_id),
	FOREIGN KEY (medical_history_id) REFERENCES medical_history(medical_history_id)
);
-- 2) BREED --
CREATE TABLE breed (
	breed_id INT PRIMARY KEY,
	breed_name VARCHAR(200),
	breed_species VARCHAR(200)
);
-- ENCLOSURE --
-- 1) ENCLOSURE --
CREATE TABLE enclosure (
	enclosure_id INT PRIMARY KEY,
	enclosure_sanitation BOOLEAN,
	enclosure_current_capacity INT, -- NEW ATTRIBUTE --
	enclosure_max_capacity INT
);
-- 2) ENCLOSURE TYPE --
CREATE TABLE enclosure_type (
	enclosure_type_id INT PRIMARY KEY,
	enclosure_id INT,
	enclosure_type_desc TEXT,
	FOREIGN KEY (enclosure_id) REFERENCES enclosure(enclosure_id)
);
-- ADOPTION --
CREATE TABLE adoption (
	adoption_id INT PRIMARY KEY,
	animal_id INT,
	adopter_id INT,
	adoption_status BOOLEAN,
	adoption_start_date DATE,
	adoption_end_date DATE,
	FOREIGN KEY (animal_id) REFERENCES animal(animal_id),
	FOREIGN KEY (adopter_id) REFERENCES adopter(adopter_id)
);

