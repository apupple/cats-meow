===============================
-- CREATE P.A.W.S. DATABASE --
CREATE DATABASE PAWS;
USE PAWS;
===============================
-- P.A.W.S. TABLES --
===============================
-- 1) PERSON --
CREATE TABLE person (
    person_id INT PRIMARY KEY,
    person_first_name VARCHAR(200) NOT NULL,
    person_last_name VARCHAR(200) NOT NULL,
    person_email VARCHAR(200) UNIQUE,
    person_dob DATE NOT NULL,
    person_street VARCHAR(200) NOT NULL,
    person_city VARCHAR(200) NOT NULL,
    person_state VARCHAR(200) NOT NULL,
    person_zipCode VARCHAR(200) NOT NULL
);                                                               
-- 2) MEDICAL HISTORY --
CREATE TABLE medical_history (
	medical_history_id INT PRIMARY KEY,
    needs_desc TEXT
);
-- 3) BREED --
CREATE TABLE breed (
	breed_id INT PRIMARY KEY,
	breed_name VARCHAR(200) NOT NULL,
	breed_species VARCHAR(200) NOT NULL,
	UNIQUE (breed_name, breed_species)
);
-- 4) ENCLOSURE --
CREATE TABLE enclosure (
	enclosure_id INT PRIMARY KEY,
	enclosure_sanitation_status VARCHAR(200) DEFAULT 'CLEAN' CHECK (enclosure_sanitation IN ('CLEAN', 'DIRTY')),
	enclosure_max_capacity INT NOT NULL CHECK (enclosure_max_capacity > 0),
	enclosure_current_capacity INT DEFAULT 0 CHECK (enclosure_current_capacity <= enclosure_max_capacity) -- NEW ATTRIBUTE --
);
-- 5) RENT INFO --
CREATE TABLE rent_info (
	rent_info_id INT PRIMARY KEY,
    is_rented BOOLEAN NOT NULL,
	charge_of_rent DECIMAL(10,2), -- NEW ATTRIBUTE --
    landlord_phone_number VARCHAR(200),
    landlord_first_name VARCHAR(200),
    landlord_last_name VARCHAR(200)
);
-- 6) ANIMAL --
CREATE TABLE animal (
	animal_id INT PRIMARY KEY,
	breed_id INT NOT NULL,
	enclosure_id INT NOT NULL,
	medical_history_id INT NOT NULL,
	animal_name VARCHAR(200) NOT NULL,
	animal_age INT CHECK (animal_age > 0),
	animal_sex VARCHAR(200) CHECK (animal_sex IN ('MALE', 'FEMALE')),
	animal_desc TEXT,
	FOREIGN KEY (breed_id) REFERENCES breed(breed_id),
	FOREIGN KEY (enclosure_id) REFERENCES enclosure(enclosure_id),
	FOREIGN KEY (medical_history_id) REFERENCES medical_history(medical_history_id)
);
-- 7) PHONE --
CREATE TABLE phone (
    phone_id INT PRIMARY KEY,
    person_id INT NOT NULL,
    phone_number VARCHAR(200) NOT NULL UNIQUE,
    FOREIGN KEY (person_id) REFERENCES person(person_id) ON DELETE CASCADE
);
-- 8) ADOPTER --
CREATE TABLE adopter (
	adopter_id INT PRIMARY KEY,
    person_id INT UNIQUE NOT NULL,
    rent_info_id INT,
    adopter_housing_info VARCHAR(200),
    adopter_is_fenced BOOLEAN DEFAULT FALSE,
    adopter_hours_outside_of_home VARCHAR(200),
	FOREIGN KEY (person_id) REFERENCES person(person_id),
    FOREIGN KEY (rent_info_id) REFERENCES rent_info(rent_info_id)
);
-- 9) EMPLOYEE --
CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    person_id INT UNIQUE NOT NULL,
	enclosure_id INT,
    employee_work_sched TEXT,
    employee_dept VARCHAR(200),
    employee_background_check BOOLEAN DEFAULT FALSE,
    employee_job_title VARCHAR(200),
    employee_status VARCHAR(200) CHECK (employee_status IN ('EMPLOYED', 'TERMINATED')),
    employee_hourly_rate DECIMAL(10,2) CHECK (employee_hourly_rate >= 0),
    employee_start_date DATE,
	employee_end_date DATE CHECK (employee_end_date IS NULL OR employee_end_date >= employee_start_date), -- NEW ATTRIBUTE --
	FOREIGN KEY (person_id) REFERENCES person(person_id),
	FOREIGN KEY (enclosure_id) REFERENCES enclosure(enclosure_id) ON DELETE SET NULL
);
-- 10) VOLUNTEER --
CREATE TABLE volunteer (
    volunteer_id INT PRIMARY KEY,
    person_id INT UNIQUE NOT NULL,
    enclosure_id INT NOT NULL,
    volunteer_avaliability_sched TEXT,
    volunteer_training_complete BOOLEAN DEFAULT FALSE,
    volunteer_background_check BOOLEAN DEFAULT FALSE,
    volunteer_total_hours INT DEFAULT 0 CHECK (volunteer_total_hours >= 0),
    volunteer_status VARCHAR(200) CHECK (volunteer_status IN ('TRAINEE', 'CERTIFIED')), -- TRAINEE, CERTIFIED --
    volunteer_start_date DATE,
	volunteer_end_date DATE CHECK (volunteer_end_date IS NULL OR volunteer_end_date >= volunteer_start_date), -- NEW ATTRIBUTE --
	FOREIGN KEY (person_id) REFERENCES person(person_id),
    FOREIGN KEY (enclosure_id) REFERENCES enclosure(enclosure_id) ON DELETE SET NULL
);
-- 11) CERTIFICATION --
CREATE TABLE certification (
	certification_id INT PRIMARY KEY,
	employee_id INT NOT NULL,
	certification_name VARCHAR(200) NOT NULL,
	issuer_name VARCHAR(200),
	issued_date DATE,
	FOREIGN KEY (employee_id) REFERENCES employee(employee_id) ON DELETE CASCADE 
);
-- 12) PREFERRED TASK --
CREATE TABLE preferred_task (
	preferred_task_id INT PRIMARY KEY,
    volunteer_id INT NOT NULL,
    preferred_task_name VARCHAR(200) NOT NULL,
	FOREIGN KEY (volunteer_id) REFERENCES volunteer(volunteer_id) ON DELETE CASCADE
);
-- 13) VET REFERENCES --
CREATE TABLE vet_references (
	vet_id INT PRIMARY KEY,
    adopter_id INT NOT NULL,
    vet_first_name VARCHAR(200),
    vet_last_name VARCHAR(200),
    vet_phone_number VARCHAR(200),
	FOREIGN KEY (adopter_id) REFERENCES adopter(adopter_id) ON DELETE CASCADE
);
-- 14) ADOPTION --
CREATE TABLE adoption (
	adoption_id INT PRIMARY KEY,
	animal_id INT NOT NULL,
	adopter_id INT NOT NULL,
	adoption_status CHECK (adoption_status IN ('PENDING', 'APPROVED', 'COMPLETED', 'REJECTED', 'RETURNED')),
	adoption_start_date DATE,
	adoption_end_date DATE CHECK (adoption_end_date IS NULL OR adoption_end_date >= adoption_start_date),
	FOREIGN KEY (animal_id) REFERENCES animal(animal_id),
	FOREIGN KEY (adopter_id) REFERENCES adopter(adopter_id)
);
-- 15) VACCINATIONS --
CREATE TABLE vaccinations (
    vaccination_id INT PRIMARY KEY,
    medical_history_id INT NOT NULL,
    vaccination_name VARCHAR(200) NOT NULL,
    vaccination_date DATE NOT NULL,
    FOREIGN KEY (medical_history_id) REFERENCES medical_history(medical_history_id) ON DELETE CASCADE
);
-- 16) MEDICATIONS --
	CREATE TABLE medications (
    medication_id INT PRIMARY KEY,
    medical_history_id INT NOT NULL,
    medication_name VARCHAR(200) NOT NULL,
    prescription_date DATE NOT NULL,
	prescribed_duration TEXT NOT NULL, -- NEW ATTRIBUTE --
    FOREIGN KEY (medical_history_id) REFERENCES medical_history(medical_history_id) ON DELETE CASCADE
);
-- 17) SURGERIES --
	CREATE TABLE surgeries (
    surgery_id INT PRIMARY KEY,
    medical_history_id INT NOT NULL,
	surgery_name VARCHAR(200) NOT NULL, -- NEW ATTRIBUTE --
    surgery_desc TEXT NOT NULL,
    surgery_date DATE NOT NULL,
	surgery_start_time TIME NOT NULL, -- NEW ATTRIBUTE --
	surgery_end_time TIME NOT NULL CHECK (surgery_end_time IS NOT NULL OR surgery_end_time >= surgery_start_time), -- NEW ATTRIBUTE --
    FOREIGN KEY (medical_history_id) REFERENCES medical_history(medical_history_id) ON DELETE CASCADE
);
-- 18) DIAGNOSIS --
	CREATE TABLE diagnosis (
    diagnosis_id INT PRIMARY KEY,
    medical_history_id INT NOT NULL,
    diagnosis_name VARCHAR(200) NOT NULL,
    diagnosis_date DATE NOT NULL,
    diagnosis_desc TEXT NOT NULL,
	diagnosis_status VARCHAR(200) NOT NULL, -- NEW ATTRIBUTE (ERADICATED, TERMINAL)--
    FOREIGN KEY (medical_history_id) REFERENCES medical_history(medical_history_id) ON DELETE CASCADE
);
-- 19) ENCLOSURE TYPE --
CREATE TABLE enclosure_type (
	enclosure_type_id INT PRIMARY KEY,
	enclosure_id INT NOT NULL,
	enclosure_type_desc TEXT NOT NULL,
	FOREIGN KEY (enclosure_id) REFERENCES enclosure(enclosure_id) ON DELETE CASCADE
);
