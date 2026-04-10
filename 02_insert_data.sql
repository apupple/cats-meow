-- ===============================
-- P.A.W.S. DATA --
-- ===============================
-- 1) PERSON (person_id, person_first_name, person_last_name, person_email, person_dob, person_street, person_city, person_state, person_zipCode)--
INSERT INTO person VALUES
  (1,'Light','Yagami','light.yagami@gmail.com','2004-02-28','1024 Shadow Lane','Los Angeles','CA','90012'), -- ANIME --
  (2,'Gojo','Satoru','imgojo@gmail.com','2001-12-07','583 Infinity Drive','Seattle','WA','98101'),
  (3,'Tanjiro','Kamado','tanjiro.kamado@gmail.com','2008-03-18','771 Cedar Blossom St','Denver','CO','80203'),
  (4,'Langa','Hasegawa','langa.hasegawa@gmail.com','2007-07-12','445 Frost Rail Ave','Portland','OR','97205'),
  (5,'Naruto','Uzumaki','naruto.uzumaki@gmail.com','2001-10-10','777 Hokage Hill Rd','Las Vegas','NV','89101'),
  (6,'Nancy','Wheeler','notnancydrew@gmail.com','1999-08-27','210 Maple Hollow Rd','Chicago','IL','60601'), -- STRANGER THINGS --
  (7,'Will','Byers','will.byers123@gmail.com','2007-06-15','319 Pine Shadow Dr','Austin','TX','73301'),
  (8,'Eleven','Hopper','eleven.hopper@gmail.com','2006-11-03','888 Hawkins Crest','Nashville','TN','37201'),
  (9,'Dustin','Henderson','dustin.h@gmail.com','2005-09-10','147 Campfire Trail','New York','NY','10001'),
  (10,'Lucas','Sinclair','lucas.s@gmail.com','2005-01-30','664 Red Oak Blvd','Philadelphia','PA','19103'),
  (11,'Hend','Alkittawi','hendprogrammer@gmail.com','2002-12-27','501 Gentle Breeze Way','San Diego','CA','92101'), -- PROFESSORS --
  (12,'Samuel','Ang','notthekingsamang@gmail.com','2001-07-23','333 Raven Crest Ln','Phoenix','AZ','85001'),
  (13,'Ramin','Sabha','sabhathegoat@gmail.com','2002-03-28','199 Blossom Path','Miami','FL','33101'),
  (14,'Keith','Harrison','hackerharrison@gmail.com','1995-09-15','615 Silver Mask Dr','Dallas','TX','75201'),
  (15,'Anthony','Rios','therealrios@gmail.com','1998-12-25','911 Titan Wall Rd','Atlanta','GA','30301'),
  (16,'Daisy','Johnson','skyethequake@gmail.com','2003-03-30','420 Freedom Run','Houston','TX','77001'), -- A.o.S --
  (17,'Grant','Ward','hailhydra@gmail.com','2003-02-10','421 Freedom Run','Orlando','FL','32801'),
  (18,'Leo','Fitz','leopold.fitzy@gmail.com','2003-11-03','422 Freedom Run','Detroit','MI','48201'),
  (19,'Jemma','Simmons','ughhfitz@gmail.com','2002-06-07','433 Scout Way','Columbus','OH','43004'),
  (20,'Lance','Hunter','ladyshunter@gmail.com','2000-02-03','12 Alchemy St','Salt Lake City','UT','84101'),
  (22,'Alphonse','Elric','alphonse.elric@gmail.com','2001-08-15','14 Alchemy St','Minneapolis','MN','55401'),
  (23,'Roy','Mustang','roy.mustang@gmail.com','1995-09-01','88 Flame Ave','Sacramento','CA','95814'),
  (24,'Winry','Rockbell','winry.r@gmail.com','2001-06-09','77 Gearsmith Ln','Raleigh','NC','27601'),
  (25,'Riza','Hawkeye','riza.h@gmail.com','1996-04-19','89 Flame Ave','Charlotte','NC','28202'),
  
  (26,'Ichigo','Kurosaki','ichigo.k@gmail.com','2002-07-15','600 Soul Reaper Rd','San Jose','CA','95101'),
  (27,'Rukia','Kuchiki','rukia.k@gmail.com','2002-01-14','601 Soul Reaper Rd','Oakland','CA','94601'),
  (28,'Renji','Abarai','renji.a@gmail.com','2001-09-04','602 Soul Reaper Rd','St. Louis','MO','63101'),
  (29,'Byakuya','Kuchiki','byakuya.k@gmail.com','1998-01-31','900 Noble Crest','Kansas City','MO','64101'),
  (30,'Orihime','Inoue','orihime.i@gmail.com','2003-09-03','88 Kind Heart Ln','Indianapolis','IN','46201'),
  
  (31,'Gon','Freecss','gon.f@gmail.com','2008-05-05','101 Hunter Trail','Boulder','CO','80301'),
  (32,'Killua','Zoldyck','killua.z@gmail.com','2008-07-07','102 Hunter Trail','Tucson','AZ','85701'),
  (33,'Kurapika','Kurta','kurapika.k@gmail.com','2004-04-04','103 Hunter Trail','Albuquerque','NM','87101'),
  (34,'Leorio','Paradinight','leorio.p@gmail.com','1999-03-03','104 Hunter Trail','Omaha','NE','68101'),
  (35,'Hisoka','Morrow','hisoka.m@gmail.com','1995-06-06','999 Phantom Ln','Las Vegas','NV','89109'),
  
  (36,'Bruce','Wayne','bruce.wayne@gmail.com','1990-02-19','100 Gotham Ave','Newark','NJ','07102'), -- DC --
  (37,'Clark','Kent','clark.kent@gmail.com','1988-06-18','200 Krypton Way','Metropolis','IL','62960'),
  (38,'Diana','Prince','diana.prince@gmail.com','1992-03-22','300 Amazon Blvd','Washington','DC','20001'),
  (39,'Barry','Allen','barry.allen@gmail.com','1995-03-14','400 Speedster Dr','Cleveland','OH','44101'),
  (40,'Hal','Jordan','hal.jordan@gmail.com','1991-02-20','500 Lantern Ln','Fort Worth','TX','76101'),
  (41,'Peter','Parker','peter.parker@gmail.com','2001-08-10','20 Queens Blvd','New York','NY','11368'), -- MARVEL --
  (42,'Tony','Stark','tony.stark@gmail.com','1985-05-29','108 Stark Tower','Malibu','CA','90265'),
  (43,'Steve','Rogers','steve.rogers@gmail.com','1918-07-04','1776 Freedom St','Brooklyn','NY','11201'),
  (44,'Natasha','Romanoff','natasha.r@gmail.com','1987-11-22','88 Red Room Rd','Chicago','IL','60605'),
  (45,'Thor','Odinson','thor.odinson@gmail.com','1980-05-01','1 Asgard Way','Seattle','WA','98109'),
  
  (46,'Wanda','Maximoff','wanda.m@gmail.com','1993-02-10','66 Scarlet Ln','Salem','MA','01970'),
  (47,'Vision','Synth','vision.s@gmail.com','1995-01-01','67 Scarlet Ln','Hartford','CT','06103'),
  (48,'Stephen','Strange','dr.strange@gmail.com','1980-02-18','177 Mystic Ave','New Orleans','LA','70112'),
  (49,'Scott','Lang','scott.lang@gmail.com','1989-04-06','12 Quantum Rd','San Francisco','CA','94102'),
  (50,'Hope','Van Dyne','hope.vd@gmail.com','1990-03-20','13 Quantum Rd','Las Vegas','NV','89104');
-- 2) MEDICAL HISTORY (medical_history_id, needs_desc) --
INSERT INTO medical_history VALUES
  (1, 'Routine wellness care for young small breed cat'),
  (2, 'General health maintenance for adult domestic shorthair cat'),
  (3, 'Early development monitoring for puppy'),
  (4, 'Senior health management for large adult dog'),
  (5, 'Post-surgery recovery and monitoring for knee procedure'),
  (6, 'Chronic skin allergy management and treatment'),
  (7, 'Obesity management and dietary regulation'),
  (8, 'Dental care and gum disease prevention'),
  (9, 'Respiratory infection treatment and follow-up'),
  (10, 'Vaccination schedule tracking for young animal'),
  (11, 'Arthritis pain management in senior dog'),
  (12, 'Digestive issues and food sensitivity monitoring'),
  (13, 'Ear infection treatment and prevention'),
  (14, 'Behavioral observation for anxiety-related issues'),
  (15, 'Fracture recovery and mobility rehabilitation'),
  (16, 'Heart condition monitoring and medication management'),
  (17, 'Parasite prevention and routine deworming'),
  (18, 'Eye infection treatment and vision monitoring'),
  (19, 'Routine checkups for healthy adult animal'),
  (20, 'Kidney disease monitoring and fluid therapy'),
  (21, 'Post-adoption health evaluation and adjustment'),
  (22, 'Injury care from minor trauma and wounds'),
  (23, 'Allergy testing and environmental sensitivity tracking'),
  (24, 'Nutritional deficiency correction and supplement plan');
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
  (1, 1, 1, 'M-F opening to closing', 'adoption', TRUE, 'MANAGER', 'EMPLOYED', 18.5, '2022-07-23', NULL),
  (2, 2, 2, 'M-F opening to closing & weekends as needed', 'animal care', TRUE,'MANAGER', 'EMPLOYED', 18.5, '2022-07-23', NULL);
-- 10) VOLUNTEER (volunteer_id, person_id, enclosure_id, volunteer_availability_sched, volunteer_training_complete, volunteer_background_check, volunteer_total_hours, volunteer_status, volunteer_start_date, volunteer_end_date) --
INSERT INTO volunteer VALUES
  (1, 3, 1, 'MWF 1 PM to 6 PM', TRUE, TRUE, 10,  'ACTIVE', '2025-12-03', NULL),
  (2, 5, 2, 'TTh 9 AM to 5 PM', FALSE, TRUE, 0, 'INACTIVE', NULL, NULL);
-- 11) CERTIFICATION (certification_id, employee_id, certification_name, issuer_name, issued_date) --
INSERT INTO certification VALUES
  (1, 1, 'Veterinary Technician National Exam (VTNE)', 'American Association of Veterinary State Boards', '2021-03-15'),
  (2, 1, 'Pet CPR and First Aid', 'American Red Cross', '2022-06-10'),
  (3, 2, 'Certified Veterinary Assistant (CVA)', 'National Association of Veterinary Technicians in America', '2020-08-22'),
  (4, 2, 'Fear Free Veterinary Certification', 'Fear Free LLC', '2023-11-05');
-- 12) PREFERRED TASK (preferred_task_id, volunteer_id, preferred_task_name) --
INSERT INTO preferred_task VALUES
  (1, 1, 'cleaning and playing with animals'),
  (2, 2, 'playing with animals'),
  (3, 2, 'logistical tasks'),
  (4, 2, 'adoption paperwork');
-- 13) VET REFERENCES (vet_id, adopter_id, vet_first_name, vet_last_name, vet_phone_number) --
INSERT INTO vet_references VALUES
  (1, 1, 'James', 'Harrington', '210-555-0174'),
  (2, 2, 'Sandra', 'Kowalski', '210-555-0392');
-- 14) ADOPTION (adoption_id, animal_id, adopter_id, adoption_status, adoption_start_date, adoption_end_date) --
INSERT INTO adoption VALUES
  (1, 4, 1, 'COMPLETED', '2025-01-10', '2025-01-24'),
  (2, 1, 2, 'RETURNED', '2025-03-15', NULL);
-- 15) VACCINATIONS (vaccination_id, medical_history_id, vaccination_name, vaccination_date) --
INSERT INTO vaccinations VALUES
  (1, 1, 'FVRCP', '2023-03-10'),
  (2, 1, 'Rabies', '2024-03-10'),
  (3, 2, 'FVRCP', '2023-08-15'),
  (4, 2, 'Rabies', '2023-08-15'),
  (5, 3, 'DHPP (First Round)', '2023-01-20'),
  (6, 4, 'DHPP', '2024-06-05'),
  (7, 4, 'Rabies', '2024-06-05');
-- 16) MEDICATIONS (medication_id, medical_history_id, medication_name, prescription_date, prescribed_duration) --
INSERT INTO medications VALUES
  (1, 1, 'Revolution Plus (flea/tick)', '2024-03-10', 'Ongoing monthly'),
  (2, 2, 'Revolution Plus (flea/tick)', '2023-08-15', 'Ongoing monthly'),
  (3, 3, 'Panacur (dewormer)', '2025-01-02', '3 days'),
  (4, 4, 'Simparica Trio (flea/tick/heartworm)', '2024-06-05', 'Ongoing monthly');
-- 17) SURGERIES (surgery_id, medical_history_id, surgery_name, surgery_desc, surgery_date) --
INSERT INTO surgeries VALUES
  (1, 1, 'SPAY', 'Routine ovariohysterectomy performed without complications', '2024-05-12'),
  (2, 2, 'NEUTER', 'Routine orchiectomy performed without complications', '2023-10-03'),
  (3, 4, 'SPAY', 'Routine ovariohysterectomy performed without complications','2024-08-14');
-- 18) DIAGNOSIS (diagnosis_id, medical_history_id, diagnosis_name, diagnosis_date, diagnosis_desc, diagnosis_status) --
INSERT INTO diagnosis VALUES
  (1, 1, 'Ear Mites', '2024-07-22', 'Infestation of Otodectes cynotis detected in both ears treated with topical medication', 'ERADICATED'),
  (2, 2, 'Ear Mites', '2023-11-10', 'Infestation of Otodectes cynotis detected in both ears treated with topical medication', 'ERADICATED'),
  (3, 3, 'Intestinal Parasites', '2025-01-20', 'Roundworm infection detected via fecal float test in routine puppy screening', 'ERADICATED'),
  (4, 4, 'Kennel Cough', '2024-06-05', 'Mild bordetella infection presenting with persistent cough and nasal discharge treated with antibiotics', 'ERADICATED');
-- 19) ENCLOSURE TYPE (enclosure_type_id, enclosure_id, enclosure_type_desc) --
INSERT INTO enclosure_type VALUES
  (1, 1, 'Indoor feline enclosure with multi-level climbing shelves - cozy bedding - and enrichment toys for small to medium-sized cats'),
  (2, 2, 'Indoor canine enclosure with spacious kennel runs - padded flooring - and play area suitable for small to large breed dogs');
