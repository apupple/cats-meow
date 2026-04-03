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

			