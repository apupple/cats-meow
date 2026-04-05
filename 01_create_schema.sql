-- CREATE P.A.W.S. DATABASE --
CREATE DATABASE PAWS;
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
    FOREIGN KEY (medical_history_id) REFERENCES medical_history(medical_history_id)
);
-- 4) SURGERIES --
	CREATE TABLE surgeries (
    surgery_id INT PRIMARY KEY,
    medical_history_id INT,
    surgery_desc TEXT,
    surgery_date DATE,
    FOREIGN KEY (medical_history_id) REFERENCES medical_history(medical_history_id)
);
-- 5) DIAGNOSIS --
	CREATE TABLE diagnosis (
    diagnosis_id INT PRIMARY KEY,
    medical_history_id INT,
    diagnosis_name VARCHAR(200),
    diagnosis_date DATE,
    diagnosis_desc TEXT,
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
    volunteer_status VARCHAR(200),
    volunteer_start_date DATE,
	FOREIGN KEY (person_id) REFERENCES person(person_id),
    FOREIGN KEY (enclosure_id) REFERENCES enclosure(enclosure_id)
);
-- 4) EMPLOYEE --
CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    person_id INT,
    employee_work_sched TEXT,
    employee_dept VARCHAR(200),
    employee_background_check BOOLEAN,
    employee_job_title VARCHAR(200),
    employee_status VARCHAR(200),
    employee_hourly_rate DECIMAL(10,2),
    employee_start_date DATE,
	FOREIGN KEY (person_id) REFERENCES person(person_id)
);
-- 5) PREFERRED TASK --
CREATE TABLE preferred_task (
	preferred_task_id INT PRIMARY KEY,
    volunteer_id INT,
    preferred_task_name VARCHAR(200)
);
-- 6) ADOPTER --
CREATE TABLE adopter (
	employee_id INT PRIMARY KEY,
    person_id INT,
    rent_info_id INT,
    adopter_housing_info VARCHAR(200),
    adopter_is_fenced BOOLEAN,
    adopter_hours_outside_of_home VARCHAR(200),
	FOREIGN KEY (person_id) REFERENCES person(person_id),
    FOREIGN KEY (rent_info_id) REFERENCES rent_info(rent_info_id)
);
-- 7) RENT INFO --
CREATE TABLE rent_info (
	rent_info_id INT PRIMARY KEY,
    is_rented BOOLEAN,
    landlord_phone_number VARCHAR(200),
    landlord_first_name VARCHAR(200),
    landlord_last_name VARCHAR(200)
);
-- 8) VET REFERENCES --
CREATE TABLE vet_references (
	vet_id INT PRIMARY KEY,
    adopter_id INT,
    vet_first_name VARCHAR(200),
    vet_last_name VARCHAR(200),
    vet_phone_number VARCHAR(200)
);
			
