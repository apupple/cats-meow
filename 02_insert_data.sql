-- ===============================
-- P.A.W.S. DATA --
-- ===============================
-- 1) PERSON (person_id, person_first_name, person_last_name, person_email, person_dob, person_street, person_city, person_state, person_zipCode)--
INSERT INTO person VALUES
-- TO:DO Zip codes strings or numbers?
  (1, 'Light', 'Yagami', 'light.yagami@gmail.com', '2004-02-28', 'Street 1', 'San Antonio', 'TX', '78249'),
  (2, 'Gojo', 'Satoru', 'imGojo@gmail.com', '2001-12-07', 'Street 2', 'San Antonio', 'TX', '78249'),
  (3, 'Tanjiro', 'Kamado', 'tanjiro.kamado@gmail.com', '2008-03-18', 'Street 3', 'San Antonio', 'TX', '78249'),
  (4, 'Langa', 'Hasegawa', 'langa.hasegawa@gmail.com', '2007-07-12', 'Street 4', 'San Antonio', 'TX', '78249'),
  (5, 'Nancy', 'Wheeler', 'notNancyDrew@gmail.com', '1999-08-27', 'Street 5', 'San Antonio', 'TX', '78249'),
  (6, 'Will', 'Byers', 'will.byers123@gmail.com', '2007-06-15', 'Street 6', 'San Antonio', 'TX', '78249');
-- 2) MEDICAL HISTORY (medical_history_id, needs_desc) --
INSERT INTO medical_history VALUES
  (1, 'Routine wellness care for young small breed cat'),
  (2, 'General health maintenance for adult domestic shorthair cat'),
  (3, 'Early development monitoring for puppy'),
  (4, 'Senior health management for large adult dog');
-- 3) BREED (breed_id, breed_name, breed_species) --
INSERT INTO breed VALUES
  (1, 'Burmese', 'Felis Catus'),
  (2, 'Japanese Bobtail', 'Felis Catus'),
  (3, 'Beagle', 'Canis Lupus Familiaris'),
  (4, 'Golden Retriever', 'Canis Lupus Familiaris');
-- 4) ENCLOSURE (enclosure_id, enclosure_sanitation_status, enclosure_max_capacity) --
INSERT INTO enclosure VALUES
  (1, 'Clean', 10),
  (2, 'Dirty', 10);
-- 5) RENT INFO (rent_info_id, is_rented, charge_of_rent, landlord_phone_number, landlord_first_name, landlord_last_name) --
INSERT INTO rent_info VALUES
  (1, False, NULL, NULL, NULL, NULL),
  (2, True, 1200.00, '210-896-2488', 'Bob', 'Ross');
-- 6) ANIMAL (animal_id, breed_id, enclosure_id, medical_history_id, animal_name, animal_age, animal_sex, animal_desc) --
INSERT INTO animal VALUES
  (1, 1, 1, 1, 'Bella', 2, 'FEMALE', 'small brown fluffy baby'),
  (2,2,1,2, 'Miso', 3, 'MALE', 'adult white orange and black short hair'),
  (3, 3, 2, 3, 'Turbo', 1, 'MALE', 'baby spotted'),
  (4, 4, 2, 4, 'Goldie', 4, 'FEMALE', 'adult large playful and fluffy');
-- 7) PHONE (phone_id, person_id, phone_number) --
INSERT INTO phone VALUES
  (1, 1, '210-123-4567'),
  (2, 2, '210-098-7654'),
  (3, 3, '210-675-2345'),
  (4, 4, '210-897-7834'),
  (5, 5, '210-386-1567'),
  (6, 6, '210-786-2054');
-- 8) ADOPTER (adopter_id, person_id, rent_info_id, adopter_housing_info, adopter_is_fenced, adopter_hours_outside_of_home) --
INSERT INTO adopter VALUES
  (1, 4, 1, '2 story house with mom only', TRUE, '8 hours M-F'),
  (2, 6, 2, 'apartment with mom and brother', FALSE, '8 hours M-F');
-- 9) EMPLOYEE (employee_id, person_id, enclosure_id, employee_work_sched, employee_dept, employee_background_check, employee_job_title, employee_status, employee_hourly_rate, employee_start_date, employee_end_date) --
INSERT INTO employee VALUES
  (1, 1, 1, 'M-F opening to closing', 'adoption', TRUE, 'MANAGER', 'EMPLOYED', 18.5, '07/23/22', NULL),
  (1, 2, 2, 'M-F opening to closing & weekends as needed', 'animal care', TRUE, 'MANAGER', 'EMPLOYED', 18.5, '07/23/22', NULL);
-- 10) VOLUNTEER (volunteer_id, person_id, enclosure_id, volunteer_availability_sched, volunteer_training_complete, volunteer_background_check, volunteer_total_hours, volunteer_status, volunteer_start_date, volunteer_end_date) --
INSERT INTO volunteer VALUES
  (1, 3, 1, 'MWF 1 PM to 6 PM', TRUE, TRUE, 10,  'ACTIVE', '12/03/25', NULL),
  (2, 5, 2, 'TTh 9 AM to 5 PM', FALSE, TRUE, 0, 'INACTIVE', NULL, NULL);
-- 11) CERTIFICATION (certification_id, employee_id, certification_name, issuer_name, issued_date) --
INSERT INTO certification VALUES
  (1, 1, 'Veterinary Technician National Exam (VTNE)', 'American Association of Veterinary State Boards', '03/15/21'),
  (2, 1, 'Pet CPR and First Aid', 'American Red Cross', '06/10/22'),
  (3, 2, 'Certified Veterinary Assistant (CVA)', 'National Association of Veterinary Technicians in America', '08/22/20'),
  (4, 2, 'Fear Free Veterinary Certification', 'Fear Free LLC', '11/05/23');
-- 12) PREFERRED TASK (preferred_task_id, volunteer_id, preferred_task_name) --
INSERT INTO preferred_task VALUES
  (1, 1, 'cleaning and playing with animals'),
  (1, 2, 'playing with animals'),
  (2, 2, 'logistical tasks'),
  (3, 2, 'adoption paperwork');
-- 13) VET REFERENCES (vet_id, adopter_id, vet_first_name, vet_last_name, vet_phone_number) --
INSERT INTO vet_references VALUES
  (1, 1, 'James', 'Harrington', '210-555-0174'),
  (2, 2, 'Sandra', 'Kowalski', '210-555-0392');
-- 14) ADOPTION (adoption_id, animal_id, adopter_id, adoption_status, adoption_start_date, adoption_end_date) --
INSERT INTO adoption VALUES
  (1, 4, 1, TRUE, '01/10/25', '01/24/25'),
  (2, 1, 2, FALSE, '03/15/25', NULL);
-- 15) VACCINATIONS (vaccination_id, medical_history_id, vaccination_name, vaccination_date) --
INSERT INTO vaccinations VALUES
  (1, 1, 'FVRCP', '03/10/23'),
  (2, 1, 'Rabies', '03/10/24'),
  (1, 2, 'FVRCP', '08/15/23'),
  (2, 2, 'Rabies', '08/15/23'),
  (3, 3, 'DHPP (First Round)', '01/20/23'),
  (3, 4, 'DHPP', '06/05/24'),
  (2, 4, 'Rabies', '06/05/24');
-- 16) MEDICATIONS (medication_id, medical_history_id, medication_name, prescription_date, prescribed_duration) --
INSERT INTO medications VALUES
  (1, 1, 'Revolution Plus (flea/tick)', '03/10/24', 'Ongoing monthly'),
  (1, 2, 'Revolution Plus (flea/tick)', '08/15/23', 'Ongoing monthly'),
  (3, 3, 'Panacur (dewormer)', 01/02/25, '3 days'),
  (4, 4, 'Simparica Trio (flea/tick/heartworm)', '06/05/24', 'Ongoing monthly');
-- 17) SURGERIES (surgery_id, medical_history_id, surgery_name, surgery_desc, surgery_date) --
INSERT INTO surgeries VALUES
  (1, 1, 'SPAY', 'Routine ovariohysterectomy performed without complications', '05/12/24'),
  (2, 2, 'NEUTER', 'Routine orchiectomy performed without complications', '10/03/23'),
  (1, 4, 'SPAY', 'Routine ovariohysterectomy performed without complications', '08/14/24');
-- 18) DIAGNOSIS (diagnosis_id, medical_history_id, diagnosis_name, diagnosis_date, diagnosis_desc, diagnosis_status) --
INSERT INTO diagnosis VALUES
  (1, 1, 'Ear Mites', '07/22/24', 'Infestation of Otodectes cynotis detected in both ears treated with topical medication', 'ERADICATED'),
  (1, 2, 'Ear Mites', '11/10/23', 'Infestation of Otodectes cynotis detected in both ears treated with topical medication', 'ERADICATED'),
  (3, 3, 'Intestinal Parasites', '01/20/25', 'Roundworm infection detected via fecal float test in routine puppy screening', 'ERADICATED'),
  (4, 4, 'Kennel Cough', '06/05/24', 'Mild bordetella infection presenting with persistent cough and nasal discharge treated with antibiotics', 'ERADICATED');
-- 19) ENCLOSURE TYPE (enclosure_type_id, enclosure_id, enclosure_type_desc) --
INSERT INTO enclosure_type VALUES
  (1, 1, 'Indoor feline enclosure with multi-level climbing shelves - cozy bedding - and enrichment toys for small to medium-sized cats'),
  (2, 2, 'Indoor canine enclosure with spacious kennel runs - padded flooring - and play area suitable for small to large breed dogs');
