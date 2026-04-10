===============================
-- CREATE P.A.W.S. DATABASE --
CREATE DATABASE PAWS;
USE PAWS;
===============================
-- P.A.W.S. TABLES --
===============================
-- 1) MEDICAL HISTORY --
-- 1.1) MEDICAL HISTORY --
CREATE TABLE medical_history (
	medical_history_id INT PRIMARY KEY,
    needs_desc TEXT
);
-- 1.2) VACCINATIONS --
CREATE TABLE vaccinations (
    vaccination_id INT PRIMARY KEY,
    medical_history_id INT NOT NULL,
    vaccination_name VARCHAR(200) NOT NULL,
    vaccination_date DATE NOT NULL,
    FOREIGN KEY (medical_history_id) REFERENCES medical_history(medical_history_id) ON DELETE CASCADE
);
-- 1.3) MEDICATIONS --
	CREATE TABLE medications (
    medication_id INT PRIMARY KEY,
    medical_history_id INT NOT NULL,
    medication_name VARCHAR(200) NOT NULL,
    prescription_date DATE NOT NULL,
	prescribed_duration TEXT NOT NULL, -- NEW ATTRIBUTE --
    FOREIGN KEY (medical_history_id) REFERENCES medical_history(medical_history_id) ON DELETE CASCADE
);
-- 1.4) SURGERIES --
	CREATE TABLE surgeries (
    surgery_id INT PRIMARY KEY,
    medical_history_id INT NOT NULL,
	surgery_name VARCHAR(200) NOT NULL, -- NEW ATTRIBUTE --
    surgery_desc TEXT NOT NULL,
    surgery_date DATE NOT NULL,
	surgery_start_time TIME NOT NULL, -- NEW ATTRIBUTE --
	surgery_end_time TIME NOT NULL, -- NEW ATTRIBUTE --
    FOREIGN KEY (medical_history_id) REFERENCES medical_history(medical_history_id) ON DELETE CASCADE
);
-- 1.5) DIAGNOSIS --
	CREATE TABLE diagnosis (
    diagnosis_id INT PRIMARY KEY,
    medical_history_id INT NOT NULL,
    diagnosis_name VARCHAR(200) NOT NULL,
    diagnosis_date DATE NOT NULL,
    diagnosis_desc TEXT NOT NULL,
	diagnosis_status VARCHAR(200) NOT NULL, -- NEW ATTRIBUTE (ERADICATED, TERMINAL)--
    FOREIGN KEY (medical_history_id) REFERENCES medical_history(medical_history_id) ON DELETE CASCADE
);
===============================
-- 2) PERSON --
-- 2.1) PERSON --
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
-- 2.2) PHONE --
CREATE TABLE phone (
    phone_id INT PRIMARY KEY,
    person_id INT NOT NULL,
    phone_number VARCHAR(200) NOT NULL UNIQUE,
    FOREIGN KEY (person_id) REFERENCES person(person_id)
);
-- 2.3) VOLUNTEER --
CREATE TABLE volunteer (
    volunteer_id INT PRIMARY KEY,
    person_id INT UNIQUE NOT NULL,
    enclosure_id INT,
    volunteer_avaliability_sched TEXT,
    volunteer_training_complete BOOLEAN DEFAULT FALSE,
    volunteer_background_check BOOLEAN DEFAULT FALSE,
    volunteer_total_hours INT DEFAULT 0 CHECK (volunteer_total_hours >= 0),
    volunteer_status VARCHAR(200) CHECK (volunteer_status IN ('TRAINEE', 'CERTIFIED')), -- TRAINEE, CERTIFIED --
    volunteer_start_date DATE,
	volunteer_end_date DATE, -- NEW ATTRIBUTE --
	FOREIGN KEY (person_id) REFERENCES person(person_id),
    FOREIGN KEY (enclosure_id) REFERENCES enclosure(enclosure_id)
);
-- 2.4) PREFERRED TASK --
CREATE TABLE preferred_task (
	preferred_task_id INT PRIMARY KEY,
    volunteer_id INT NOT NULL,
    preferred_task_name VARCHAR(200) NOT NULL,
	FOREIGN KEY (volunteer_id) REFERENCES volunteer(volunteer_id)
);
-- 2.5) EMPLOYEE --
CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    person_id INT UNIQUE NOT NULL,
	enclosure_id INT,
    employee_work_sched TEXT,
    employee_dept VARCHAR(200),
    employee_background_check BOOLEAN DEFAULT FALSE,
    employee_job_title VARCHAR(200),
    employee_status VARCHAR(200) CHECK (employee_status IN ('EMPLOYEE', 'MANAGER')),
    employee_hourly_rate DECIMAL(10,2) CHECK (employee_hourly_rate >= 0),
    employee_start_date DATE,
	employee_end_date DATE, -- NEW ATTRIBUTE --
	FOREIGN KEY (person_id) REFERENCES person(person_id),
	FOREIGN KEY (enclosure_id) REFERENCES enclosure(enclosure_id)
);
-- 2.6) CERTIFICATION --
CREATE TABLE certification (
	certification_id INT PRIMARY KEY,
	employee_id INT,
	certification_name VARCHAR(200),
	issuer_name VARCHAR(200),
	issued_date DATE,
	FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);
-- 2.7) ADOPTER --
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
-- 2.8) RENT INFO --
CREATE TABLE rent_info (
	rent_info_id INT PRIMARY KEY,
    is_rented BOOLEAN,
	charge_of_rent DECIMAL(10,2), -- NEW ATTRIBUTE --
    landlord_phone_number VARCHAR(200),
    landlord_first_name VARCHAR(200),
    landlord_last_name VARCHAR(200)
);
-- 2.9) VET REFERENCES --
CREATE TABLE vet_references (
	vet_id INT PRIMARY KEY,
    adopter_id INT,
    vet_first_name VARCHAR(200),
    vet_last_name VARCHAR(200),
    vet_phone_number VARCHAR(200),
	FOREIGN KEY (adopter_id) REFERENCES adopter(adopter_id)
);
===============================
-- 3) ANIMAL --
-- 3.1) ANIMAL --
CREATE TABLE animal (
	animal_id INT PRIMARY KEY,
	breed_id INT NOT NULL,
	enclosure_id INT NOT NULL,
	medical_history_id INT NOT NULL,
	animal_name VARCHAR(200) NOT NULL,
	animal_age INT CHECK (animal_age > 0),
	animal_sex VARCHAR(200) CHECK (animal_sex IN ('Male', 'Female')),
	animal_desc TEXT,
	FOREIGN KEY (breed_id) REFERENCES breed(breed_id),
	FOREIGN KEY (enclosure_id) REFERENCES enclosure(enclosure_id),
	FOREIGN KEY (medical_history_id) REFERENCES medical_history(medical_history_id)
);
-- 3.2) BREED --
CREATE TABLE breed (
	breed_id INT PRIMARY KEY,
	breed_name VARCHAR(200) NOT NULL,
	breed_species VARCHAR(200) NOT NULL,
	CONSTRAINT unique_breed UNIQUE (breed_name, breed_species)
);
===============================
-- 4) ENCLOSURE --
-- 4.1) ENCLOSURE --
CREATE TABLE enclosure (
	enclosure_id INT PRIMARY KEY,
	enclosure_sanitation VARCHAR(200) DEFAULT 'CLEAN' CHECK (enclosure_sanitation IN ('CLEAN', 'DIRTY')),
	enclosure_current_capacity INT NOT NULL CHECK (enclosure_current_capacity <= enclosure_max_capacity), -- NEW ATTRIBUTE --
	enclosure_max_capacity INT NOT NULL CHECK (enclosure_max_capacity > 0)
);
-- 4.2) ENCLOSURE TYPE --
CREATE TABLE enclosure_type (
	enclosure_type_id INT PRIMARY KEY,
	enclosure_id INT NOT NULL,
	enclosure_type_desc TEXT NOT NULL,
	FOREIGN KEY (enclosure_id) REFERENCES enclosure(enclosure_id) ON DELETE CASCADE
);
===============================
-- 5) ADOPTION --
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

