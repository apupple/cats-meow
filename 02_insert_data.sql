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
  (20,'Lance','Hunter','ladieshunter@gmail.com','2000-02-03','12 Alchemy St','Salt Lake City','UT','84101'),
  (21,'Lieutenant','Columbo','ltcolombo@gmail.com','2001-08-15','14 Alchemy St','Minneapolis','MN','55401'), -- COLUMBO --
  (22,'Oscar','Finch','oscar.finch@gmail.com','1995-09-01','88 Flame Ave','Sacramento','CA','95814'),
  (23,'Cathleen','Calvert','cathleen.calvert@gmail.com','1995-09-01','88 Flame Ave','Sacramento','CA','95814'),
  (24,'George','Kramer','georgie.k@gmail.com','2001-06-09','77 Gearsmith Ln','Raleigh','NC','27601'),
  (25,'Bart','Keppel','barty.k@gmail.com','1996-04-19','89 Flame Ave','Charlotte','NC','28202'),
  (26,'Michael','Robinavitch','robbyray@gmail.com','2002-07-15','600 Soul Reaper Rd','San Jose','CA','95101'), -- THE PITT --
  (27,'Heather','Collins','heather.c@gmail.com','2002-01-14','601 Soul Reaper Rd','Oakland','CA','94601'),
  (28,'Frank','Langdon','frank.l@gmail.com','2001-09-04','602 Soul Reaper Rd','St. Louis','MO','63101'),
  (29,'Dana','Evans','dana.e@gmail.com','1998-01-31','900 Noble Crest','Kansas City','MO','64101'),
  (30,'Samira','Mohan','samira.m@gmail.com','2003-09-03','88 Kind Heart Ln','Indianapolis','IN','46201'),
  (31,'Violet','Baudelaire','theinventor@gmail.com','2008-05-05','101 Hunter Trail','Boulder','CO','80301'), -- SERIES OF UNFORTUNATE EVENTS --
  (32,'Klaus','Baudelaire','theresearcher@gmail.com','2008-07-07','102 Hunter Trail','Tucson','AZ','85701'),
  (33,'Sunny','Baudelaire','thebiter@gmail.com','2004-04-04','103 Hunter Trail','Albuquerque','NM','87101'),
  (34,'Count','Olaf','iamnotasnowman@gmail.com','1999-03-03','104 Hunter Trail','Omaha','NE','68101'),
  (35,'Esme','Squalor','esme.s@gmail.com','1995-06-06','999 Phantom Ln','Las Vegas','NV','89109'),
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
  (46,'Connor','Lassiter','erobert.mullard@gmail.com','1993-02-10','66 Scarlet Ln','Salem','MA','01970'), -- UNWIND --
  (47,'Risa','Ward','risa.ward@gmail.com','1995-01-01','67 Scarlet Ln','Hartford','CT','06103'),
  (48,'Levi','Calder','clapperwhodoesntclap@gmail.com','1980-02-18','177 Mystic Ave','New Orleans','LA','70112'),
  (49,'Hayden','Upchurch','radiofreehayden@gmail.com','1989-04-06','12 Quantum Rd','San Francisco','CA','94102'),
  (50,'Miracolina','Roselli','theogqueen@gmail.com','1990-03-20','13 Quantum Rd','Las Vegas','NV','89104'),
  (51,'Wednesday','Addams','wednesday.addams@gmail.com','2006-10-13','13 Nevermore Lane','Salem','MA','01970'), -- WEDNESDAY --
  (52,'Morticia','Addams','morticia.addams@gmail.com','1985-03-01','13 Nevermore Lane','Salem','MA','01970'),
  (53,'Gomez','Addams','gomez.addams@gmail.com','1983-09-25','13 Nevermore Lane','Salem','MA','01970'),
  (54,'Pugsley','Addams','pugsley.addams@gmail.com','2008-06-10','13 Nevermore Lane','Salem','MA','01970'),
  (55,'Percy','Jackson','percy.jackson@gmail.com','2004-08-18','600 Olympus Dr','New York','NY','10027'), -- PERCY JACKSON --
  (56,'Annabeth','Chase','annabeth.chase@gmail.com','2004-07-12','601 Olympus Dr','New York','NY','10027'),
  (57,'Grover','Underwood','grover.u@gmail.com','2003-04-01','602 Olympus Dr','New York','NY','10027'),
  (58,'Harry','Potter','harry.potter@gmail.com','2000-07-31','4 Privet Drive','Orlando','FL','32819'), -- HARRY POTTER --
  (59,'Hermione','Granger','hermione.g@gmail.com','2000-09-19','5 Privet Drive','Orlando','FL','32819'),
  (60,'Ron','Weasley','ron.weasley@gmail.com','2000-03-01','6 Privet Drive','Orlando','FL','32819'),
  (61,'Katniss','Everdeen','katniss.e@gmail.com','2002-05-08','12 District Rd','Charlotte','NC','28202'), -- HUNGER GAMES --
  (62,'Peeta','Mellark','peeta.m@gmail.com','2002-11-20','13 District Rd','Charlotte','NC','28202'),
  (63,'Gale','Hawthorne','gale.h@gmail.com','2001-01-15','14 District Rd','Charlotte','NC','28202'),
  (64,'Ross','Geller','indianageller@gmail.com','1990-05-15','1 Swamp Way','Orlando','FL','32830'), -- FRIENDS --
  (65,'Chandler','Bing','chanandler.bong@gmail.com','1992-08-22','2 Swamp Way','Orlando','FL','32830'),
  (66,'Joey','Tribbiani',' friendofhugsy@gmail.com','1995-04-04','3 Swamp Way','Orlando','FL','32830'),
  (67,'Mario','Nintendo','mario.bros@gmail.com','1985-09-13','100 Mushroom Rd','Brooklyn','NY','11211'),-- SUPER MARIO --
  (68,'Luigi','Nintendo','luigi.bros@gmail.com','1987-07-14','101 Mushroom Rd','Brooklyn','NY','11211'),
  (69,'Peach','Mario','princess.peach@gmail.com','1990-02-14','102 Castle Rd','Brooklyn','NY','11211'),
  (70,'Ash','Ketchum','ash.ketchum@gmail.com','2005-05-22','1 Pallet Town Rd','San Jose','CA','95112'), -- POKEMON --
  (71,'Misty','Waterflower','misty.water@gmail.com','2005-07-10','2 Cerulean Ln','San Jose','CA','95112'),
  (72,'Brock','Harrison','brock.harrison@gmail.com','2003-01-15','3 Pewter Ave','San Jose','CA','95112');
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
  (4, 'Golden Retriever', 'Canis Lupus Familiaris'),
  (5, 'Siamese', 'Felis Catus'),
  (6, 'Persian', 'Felis Catus'),
  (7, 'Maine Coon', 'Felis Catus'),
  (8, 'Bengal', 'Felis Catus'),
  (9, 'Ragdoll', 'Felis Catus'),
  (10, 'Scottish Fold', 'Felis Catus'),
  (11, 'Labrador Retriever', 'Canis Lupus Familiaris'),
  (12, 'German Shepherd', 'Canis Lupus Familiaris'),
  (13, 'Bulldog', 'Canis Lupus Familiaris'),
  (14, 'Poodle', 'Canis Lupus Familiaris'),
  (15, 'Shih Tzu', 'Canis Lupus Familiaris'),
  (16, 'Rottweiler', 'Canis Lupus Familiaris');
-- 4) ENCLOSURE (enclosure_id, enclosure_sanitation_status, enclosure_max_capacity) --
-- Enclosures 1 & 2 = cats (young/old), 3 & 4 = dogs (young/old)
INSERT INTO enclosure VALUES
  (1, 'Clean', 10),
  (2, 'Dirty', 10),
  (3, 'Dirty', 10),
  (4, 'Clean', 10);
-- 5) RENT INFO (rent_info_id, is_rented, charge_of_rent, landlord_phone_number, landlord_first_name, landlord_last_name) --
INSERT INTO rent_info VALUES
  (1, False, NULL, NULL, NULL, NULL),
  (2, True, 1200.00, '210-896-2488', 'Bob', 'Ross');
-- 6) ANIMAL (animal_id, breed_id, enclosure_id, medical_history_id, animal_name, animal_age, animal_sex, animal_desc) --
INSERT INTO animal VALUES
  (1,  1,  1, 1,  'Bella',    2,  'F', 'small brown fluffy baby'),
  (2,  2,  1, 2,  'Miso',     3,  'M', 'adult white orange and black short hair'),
  (3,  3,  3, 3,  'Turbo',    1,  'M', 'baby spotted'),
  (4,  4,  4, 4,  'Goldie',   4,  'F', 'adult large playful and fluffy'),
  (5,  5,  2, 5,  'Shadow',   36, 'M', 'senior sleek dark brown short hair'),
  (6,  6,  1, 6,  'Mango',    5,  'F', 'young white and orange long fluffy coat'),
  (7,  7,  1, 7,  'Luna',     8,  'F', 'adult large tufted ears bushy tail'),
  (8,  8,  2, 8,  'Biscuit',  14, 'M', 'adult spotted golden and black short hair'),
  (9,  9,  2, 9,  'Whiskers', 48, 'M', 'senior blue eyes large and docile long hair'),
  (10, 10, 1, 10, 'Cleo',     7,  'F', 'adult folded ears gray and white short hair'),
  (11, 5,  1, 11, 'Oreo',     4,  'M', 'young dark brown with cream points'),
  (12, 6,  1, 12, 'Hazel',    2,  'F', 'baby white flat face fluffy'),
  (13, 7,  1, 13, 'Pumpkin',  6,  'M', 'young orange large shaggy coat'),
  (14, 8,  2, 14, 'Nala',     10, 'F', 'adult rosette patterned sleek golden'),
  (15, 11, 3, 15, 'Peanut',   3,  'M', 'baby yellow short coat floppy ears'),
  (16, 12, 3, 16, 'Daisy',    6,  'F', 'young tan and black alert and lean'),
  (17, 13, 4, 17, 'Rex',      18, 'M', 'adult stocky wrinkled face brindle'),
  (18, 14, 3, 18, 'Maple',    9,  'F', 'young apricot curly coat medium size'),
  (19, 15, 4, 19, 'Bruno',    24, 'M', 'adult black and white long silky coat'),
  (20, 16, 4, 20, 'Rosie',    12, 'F', 'adult black and tan large muscular build'),
  (21, 11, 3, 21, 'Zeus',     10, 'M', 'young chocolate short coat energetic'),
  (22, 12, 3, 22, 'Coco',     3,  'F', 'baby sable with black saddle pattern'),
  (23, 13, 4, 23, 'Buster',   30, 'M', 'adult white and brown stocky and calm'),
  (24, 14, 3, 24, 'Penny',    7,  'F', 'young silver curly coat playful'),
 
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
  INSERT INTO adopter VALUES
  (1, 2, 1, '2 story house with partner', FALSE, '8 hours M-F'),
  (2, 3, 2, 'apartment alone', TRUE, '9 hours M-F'),
  (3, 4, 3, 'condo with roommates', TRUE, '6 hours M-F'),
  (4, 5, 4, 'single story house with family', FALSE, '8 hours M-F & weekends'),
  (5, 6, 5, 'townhouse with spouse', TRUE, '10 hours M-F'),
  (6, 7, 6, 'apartment with parents', TRUE, 'flexible hours'),
  (7, 10, 7, '2 story house alone', FALSE, '7 hours M-F'),
  (8, 12, 8, 'studio apartment', TRUE, 'part time 4 hours daily'),
  (9, 18, 9, 'house with spouse and kids', TRUE, '8 hours M-F'),
  (10, 23, 10, 'apartment with partner', FALSE, '9 hours M-F'),
  (11, 27, 11, 'condo alone', TRUE, '6 hours M-F'),
  (12, 30, 12, 'house with roommates', TRUE, '8 hours M-F & weekends'),
  (13, 31, 13, '2 story house with family', FALSE, '10 hours M-F'),
  (14, 34, 14, 'mobile home alone', TRUE, 'flexible hours'),
  (15, 36, 15, 'townhouse with roommates', TRUE, '7 hours M-F'),
  (16, 39, 16, 'apartment with siblings', FALSE, 'part time 4 hours daily'),
  (17, 44, 17, 'house with partner and kids', TRUE, '8 hours M-F'),
  (18, 45, 18, 'studio with roommate', TRUE, '9 hours M-F'),
  (19, 47, 19, '2 story house with spouse', FALSE, '6 hours M-F'),
  (20, 49, 20, 'condo with partner', TRUE, '8 hours M-F & weekends'),
  (21, 63, 21, 'house alone', TRUE, '10 hours M-F'),
  (22, 64, 22, 'apartment with kids', FALSE, 'flexible hours'),
  (23, 67, 23, 'townhouse alone', TRUE, '7 hours M-F'),
  (24, 68, 24, 'house with grandparents', TRUE, 'part time 4 hours daily');
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
  (5, 3, 'Pet CPR and First Aid', 'American Red Cross', '2021-02-14'),
  (6, 3, 'Fear Free Veterinary Certification', 'Fear Free LLC', '2022-09-10'),
  (7, 4, 'Certified Veterinary Assistant (CVA)', 'NAVTA', '2020-05-01'),
  (8, 4, 'Animal Handling Certification', 'AVMA', '2021-07-07'),
  (9, 5, 'Pet CPR and First Aid', 'American Red Cross', '2022-03-03'),
  (10, 5, 'Fear Free Veterinary Certification', 'Fear Free LLC', '2023-04-04'),
  (11, 6, 'Certified Veterinary Assistant (CVA)', 'NAVTA', '2021-06-06'),
  (12, 6, 'Animal Behavior Certification', 'IAABC', '2022-08-08'),
  (13, 7, 'Pet CPR and First Aid', 'American Red Cross', '2023-01-01'),
  (14, 7, 'Fear Free Veterinary Certification', 'Fear Free LLC', '2023-05-05'),
  (15, 8, 'Certified Veterinary Assistant (CVA)', 'NAVTA', '2020-09-09'),
  (16, 8, 'Animal Handling Certification', 'AVMA', '2021-11-11'),
  (17, 9, 'Pet CPR and First Aid', 'American Red Cross', '2022-12-12'),
  (18, 9, 'Fear Free Veterinary Certification', 'Fear Free LLC', '2023-02-02'),
  (19, 10, 'Certified Veterinary Assistant (CVA)', 'NAVTA', '2021-03-03'),
  (20, 10, 'Animal Behavior Certification', 'IAABC', '2022-04-04'),
  (21, 11, 'Pet CPR and First Aid', 'American Red Cross', '2023-06-06'),
  (22, 12, 'Fear Free Veterinary Certification', 'Fear Free LLC', '2023-07-07'),
  (23, 13, 'Certified Veterinary Assistant (CVA)', 'NAVTA', '2021-08-08'),
  (24, 14, 'Animal Handling Certification', 'AVMA', '2022-10-10');
-- 12) PREFERRED TASK (preferred_task_id, volunteer_id, preferred_task_name) --
INSERT INTO preferred_task VALUES
  (1, 1, 'cleaning and playing with animals'),
  (2, 2, 'playing with animals'),
  (3, 2, 'logistical tasks'),
  (4, 2, 'adoption paperwork');
  (5, 3, 'feeding animals'),
  (6, 3, 'cleaning cages'),
  (7, 4, 'walking dogs'),
  (8, 4, 'playing with animals'),
  (9, 5, 'cleaning and playing with animals'),
  (10, 5, 'adoption paperwork'),
  (11, 6, 'logistical tasks'),
  (12, 6, 'feeding animals'),
  (13, 7, 'walking dogs'),
  (14, 7, 'cleaning cages'),
  (15, 8, 'playing with animals'),
  (16, 8, 'feeding animals'),
  (17, 9, 'logistical tasks'),
  (18, 9, 'adoption paperwork'),
  (19, 10, 'walking dogs'),
  (20, 10, 'cleaning cages'),
  (21, 11, 'feeding animals'),
  (22, 12, 'playing with animals'),
  (23, 13, 'cleaning and playing with animals'),
  (24, 14, 'logistical tasks');
-- 13) VET REFERENCES (vet_id, adopter_id, vet_first_name, vet_last_name, vet_phone_number) --
INSERT INTO vet_references VALUES
  (1, 1, 'James', 'Harrington', '210-555-0174'),
  (2, 2, 'Sandra', 'Kowalski', '210-555-0392');
  (3, 3, 'Michael', 'Reynolds', '512-555-1122'),
  (4, 4, 'Laura', 'Stevens', '713-555-2233'),
  (5, 5, 'Robert', 'Chen', '972-555-3344'),
  (6, 6, 'Emily', 'Garcia', '214-555-4455'),
  (7, 7, 'David', 'Nguyen', '817-555-5566'),
  (8, 8, 'Jessica', 'Martinez', '281-555-6677'),
  (9, 9, 'Daniel', 'Lopez', '830-555-7788'),
  (10, 10, 'Ashley', 'White', '956-555-8899'),
  (11, 11, 'Christopher', 'Hall', '325-555-9900'),
  (12, 12, 'Amanda', 'Allen', '409-555-1010'),
  (13, 13, 'Matthew', 'Young', '361-555-2020'),
  (14, 14, 'Sarah', 'Hernandez', '254-555-3030'),
  (15, 15, 'Joshua', 'King', '936-555-4040'),
  (16, 16, 'Megan', 'Wright', '432-555-5050'),
  (17, 17, 'Andrew', 'Scott', '915-555-6060'),
  (18, 18, 'Rachel', 'Green', '806-555-7070'),
  (19, 19, 'Kevin', 'Baker', '903-555-8080'),
  (20, 20, 'Nicole', 'Adams', '940-555-9090'),
  (21, 21, 'Justin', 'Nelson', '210-555-1111'),
  (22, 22, 'Stephanie', 'Carter', '210-555-2222'),
  (23, 23, 'Brandon', 'Mitchell', '210-555-3333'),
  (24, 24, 'Olivia', 'Perez', '210-555-4444');
-- 14) ADOPTION (adoption_id, animal_id, adopter_id, adoption_status, adoption_start_date, adoption_end_date) --
INSERT INTO adoption VALUES
  (1, 4, 1, 'COMPLETED', '2025-01-10', '2025-01-24'),
  (2, 1, 2, 'RETURNED', '2025-03-15', NULL);
  (3, 2, 3, 'COMPLETED', '2025-02-01', '2025-02-14'),
  (4, 3, 4, 'PENDING', '2025-02-20', NULL),
  (5, 5, 5, 'APPROVED', '2025-03-01', '2025-03-12'),
  (6, 6, 6, 'RETURNED', '2025-03-10', NULL),
  (7, 7, 7, 'COMPLETED', '2025-03-15', '2025-03-28'),
  (8, 8, 8, 'PENDING', '2025-04-01', NULL),
  (9, 9, 9, 'COMPLETED', '2025-04-05', '2025-04-18'),
  (10, 10, 10, 'COMPLETED', '2025-04-10', '2025-04-22'),
  (11, 11, 11, 'RETURNED', '2025-04-15', NULL),
  (12, 12, 12, 'APPROVED', '2025-04-20', '2025-05-02'),
  (13, 13, 13, 'PENDING', '2025-05-01', NULL),
  (14, 14, 14, 'COMPLETED', '2025-05-05', '2025-05-18'),
  (15, 15, 15, 'COMPLETED', '2025-05-10', '2025-05-22'),
  (16, 16, 16, 'RETURNED', '2025-05-15', NULL),
  (17, 17, 17, 'COMPLETED', '2025-05-20', '2025-06-02'),
  (18, 18, 18, 'PENDING', '2025-06-01', NULL),
  (19, 19, 19, 'COMPLETED', '2025-06-05', '2025-06-18'),
  (20, 20, 20, 'APPROVED', '2025-06-10', '2025-06-22'),
  (21, 21, 21, 'RETURNED', '2025-06-15', NULL),
  (22, 22, 22, 'COMPLETED', '2025-06-20', '2025-07-02'),
  (23, 23, 23, 'PENDING', '2025-07-01', NULL),
  (24, 24, 24, 'COMPLETED', '2025-07-05', '2025-07-18');
-- 15) VACCINATIONS (vaccination_id, medical_history_id, vaccination_name, vaccination_date) --
INSERT INTO vaccinations VALUES
  (1, 1, 'FVRCP', '2023-03-10'),
  (2, 2, 'Rabies', '2024-03-10'),
  (1, 3, 'FVRCP', '2023-08-15'),
  (2, 4, 'Rabies', '2023-08-15'),
  (3, 5, 'DHPP (First Round)', '2023-01-20'),
  (3, 4, 'DHPP', '2024-06-05'),
  (2, 6, 'Rabies', '2024-06-05'),
  (1, 7, 'FVRCP', '2023-05-12'),
  (2, 8, 'Rabies', '2024-05-12'),
  (3, 9, 'DHPP', '2023-09-01'),
  (4, 9, 'Bordetella', '2023-09-01'),
  (1, 10, 'FVRCP', '2024-02-14'),
  (2, 11, 'Rabies', '2024-02-14'),
  (3, 12, 'DHPP', '2024-07-19'),
  (5, 13, 'Leptospirosis', '2024-07-19'),
  (1, 14, 'FVRCP', '2023-11-03'),
  (2, 15, 'Rabies', '2023-11-03'),
  (3, 16, 'DHPP', '2024-01-25'),
  (4, 17, 'Bordetella', '2024-01-25'),
  (1, 18, 'FVRCP', '2023-06-18'),
  (2, 19, 'Rabies', '2023-10-10'),
  (3, 20, 'DHPP', '2024-03-03'),
  (1, 21, 'FVRCP', '2024-08-08'),
  (2, 22, 'Rabies', '2024-09-09'),
  (1, 23, 'FVRCP', '2023-11-03'),
  (2, 24, 'Rabies', '2023-11-03'),
  (3, 24, 'DHPP', '2024-01-25'),
  (4, 25, 'Bordetella', '2024-01-25');
-- 16) MEDICATIONS (medication_id, medical_history_id, medication_name, prescription_date, prescribed_duration) --
INSERT INTO medications VALUES
  (1, 1, 'Revolution Plus (flea/tick)', '2024-03-10', 'Ongoing monthly'),
  (1, 2, 'Revolution Plus (flea/tick)', '2023-08-15', 'Ongoing monthly'),
  (2, 3, 'Panacur (dewormer)', '2025-01-02', '3 days'),
  (3, 4, 'Simparica Trio', '2024-06-05', 'Ongoing monthly'),
  (4, 5, 'Capstar', '2023-05-12', 'Single dose'),
  (5, 6, 'Metronidazole', '2023-09-01', '7 days'),
  (6, 7, 'Doxycycline', '2024-02-14', '10 days'),
  (7, 8, 'Ivermectin', '2024-07-19', '5 days'),
  (8, 9, 'Amoxicillin', '2023-11-03', '10 days'),
  (9, 10, 'Prednisone', '2024-01-25', '5 days'),
  (1, 11, 'Revolution Plus (flea/tick)', '2023-06-18', 'Ongoing monthly'),
  (3, 12, 'Simparica Trio', '2023-10-10', 'Ongoing monthly'),
  (2, 13, 'Panacur (dewormer)', '2024-03-03', '3 days'),
  (6, 14, 'Doxycycline', '2024-08-08', '10 days'),
  (5, 15, 'Metronidazole', '2024-09-09', '7 days'),
  (8, 16, 'Amoxicillin', '2023-12-12', '10 days'),
  (4, 17, 'Capstar', '2024-02-02', 'Single dose'),
  (7, 18, 'Ivermectin', '2024-04-04', '5 days'),
  (9, 19, 'Prednisone', '2024-06-06', '5 days'),
  (1, 20, 'Revolution Plus (flea/tick)', '2024-07-07', 'Ongoing monthly'),
  (3, 21, 'Simparica Trio', '2024-08-08', 'Ongoing monthly'),
  (2, 22, 'Panacur (dewormer)', '2024-09-09', '3 days'),
  (5, 23, 'Metronidazole', '2024-10-10', '7 days'),
  (6, 24, 'Doxycycline', '2024-11-11', '10 days');
-- 17) SURGERIES (surgery_id, medical_history_id, surgery_name, surgery_desc, surgery_date) --
INSERT INTO surgeries VALUES
  (1, 1, 'SPAY', 'Routine ovariohysterectomy performed without complications', '2024-05-12'),
  (2, 2, 'NEUTER', 'Routine orchiectomy performed without complications', '2023-10-03'),
  (3, 4, 'SPAY', 'Routine ovariohysterectomy performed without complications','2024-08-14');
  (4, 5, 'NEUTER', 'Routine orchiectomy performed without complications', '2023-06-10'),
  (5, 6, 'SPAY', 'Routine spay surgery completed successfully', '2023-09-15'),
  (6, 7, 'NEUTER', 'Routine neuter surgery completed successfully', '2024-02-20'),
  (7, 8, 'SPAY', 'Routine ovariohysterectomy completed successfully', '2024-07-01'),
  (8, 9, 'NEUTER', 'Routine orchiectomy completed successfully', '2023-11-11'),
  (9, 10, 'SPAY', 'Routine spay surgery without complications', '2024-01-18'),
  (10, 11, 'NEUTER', 'Routine neuter surgery without complications', '2023-05-22'),
  (11, 12, 'SPAY', 'Routine spay surgery completed successfully', '2023-10-30'),
  (12, 13, 'NEUTER', 'Routine neuter surgery completed successfully', '2024-03-12'),
  (13, 14, 'SPAY', 'Routine spay surgery completed successfully', '2024-08-19'),
  (14, 15, 'NEUTER', 'Routine neuter surgery completed successfully', '2024-09-21'),
  (15, 16, 'SPAY', 'Routine spay surgery completed successfully', '2023-12-05'),
  (16, 17, 'NEUTER', 'Routine neuter surgery completed successfully', '2024-02-14'),
  (17, 18, 'SPAY', 'Routine spay surgery completed successfully', '2024-04-18'),
  (18, 19, 'NEUTER', 'Routine neuter surgery completed successfully', '2024-06-22'),
  (19, 20, 'SPAY', 'Routine spay surgery completed successfully', '2024-07-30'),
  (20, 21, 'NEUTER', 'Routine neuter surgery completed successfully', '2024-08-25'),
  (21, 22, 'SPAY', 'Routine spay surgery completed successfully', '2024-09-10'),
  (22, 23, 'NEUTER', 'Routine neuter surgery completed successfully', '2024-10-12'),
  (23, 24, 'SPAY', 'Routine spay surgery completed successfully', '2024-11-15');
-- 18) DIAGNOSIS (diagnosis_id, medical_history_id, diagnosis_name, diagnosis_date, diagnosis_desc, diagnosis_status) --
INSERT INTO diagnosis VALUES
  (1, 1, 'Ear Mites', '2024-07-22', 'Infestation of Otodectes cynotis detected in both ears treated with topical medication', 'ERADICATED'),
  (2, 2, 'Ear Mites', '2023-11-10', 'Infestation of Otodectes cynotis detected in both ears treated with topical medication', 'ERADICATED'),
  (3, 3, 'Intestinal Parasites', '2025-01-20', 'Roundworm infection detected via fecal float test in routine puppy screening', 'ERADICATED'),
  (4, 4, 'Kennel Cough', '2024-06-05', 'Mild bordetella infection presenting with persistent cough and nasal discharge treated with antibiotics', 'ERADICATED');
   (5, 3, 'Flea Allergy Dermatitis', '2023-05-12', 'Severe itching and skin irritation due to flea allergy treated successfully', 'MANAGED'),
  (6, 16, 'Ear Infection', '2023-09-15', 'Bacterial otitis externa treated with antibiotic drops', 'ERADICATED'),
  (7, 7, 'Skin Infection', '2024-02-20', 'Localized dermatitis treated with antibiotics and medicated shampoo', 'ERADICATED'),
  (8, 3, 'Worm Infestation', '2024-07-01', 'Hookworms detected and treated with dewormer', 'ERADICATED'),
  (9, 2, 'Allergic Reaction', '2023-11-11', 'Mild food allergy causing itching and inflammation', 'MANAGED'),
  (10, 10, 'Respiratory Infection', '2024-01-18', 'Upper respiratory infection treated with antibiotics', 'ERADICATED'),
  (11, 15, 'Ear Mites', '2023-05-22', 'Parasite infestation treated successfully', 'ERADICATED'),
  (12, 5, 'Parvovirus Exposure', '2023-10-30', 'Suspected exposure, quarantine and monitoring', 'RESOLVED'),
  (13, 23, 'Intestinal Parasites', '2024-03-12', 'Roundworms detected and treated', 'ERADICATED'),
  (14, 1, 'Kennel Cough', '2024-08-19', 'Mild infection treated with antibiotics', 'ERADICATED'),
  (15, 15, 'Skin Allergy', '2024-09-21', 'Environmental allergy causing rash and itching', 'MANAGED'),
  (16, 18, 'Ear Infection', '2023-12-05', 'Bacterial infection treated with drops', 'ERADICATED'),
  (17, 12, 'Worms', '2024-02-14', 'Hookworm infection treated successfully', 'ERADICATED'),
  (18, 20, 'Respiratory Infection', '2024-04-18', 'Mild infection treated with antibiotics', 'ERADICATED'),
  (19, 19, 'Flea Infestation', '2024-06-22', 'Fleas treated with topical medication', 'ERADICATED'),
  (20, 20, 'Ear Mites', '2024-07-30', 'Parasites eliminated with treatment', 'ERADICATED'),
  (21, 21, 'Skin Rash', '2024-08-25', 'Allergic reaction treated with steroids', 'MANAGED'),
  (22, 22, 'Intestinal Parasites', '2024-09-10', 'Roundworm infection treated', 'ERADICATED'),
  (23, 23, 'Kennel Cough', '2024-10-12', 'Mild infection treated with antibiotics', 'ERADICATED'),
  (24, 24, 'Ear Infection', '2024-11-15', 'Otitis externa treated successfully', 'ERADICATED'),
  (25, 15, 'Skin Allergy', '2024-09-21', 'Environmental allergy causing rash and itching', 'MANAGED'),
  (26, 16, 'Ear Infection', '2023-12-05', 'Bacterial infection treated with drops', 'ERADICATED'),
  (27, 17, 'Worms', '2024-02-14', 'Hookworm infection treated successfully', 'ERADICATED'),
  (28, 18, 'Respiratory Infection', '2024-04-18', 'Mild infection treated with antibiotics', 'ERADICATED'),
  (29, 24, 'Flea Infestation', '2024-06-22', 'Fleas treated with topical medication', 'ERADICATED');
-- 19) ENCLOSURE TYPE (enclosure_type_id, enclosure_id, enclosure_type_desc) --
INSERT INTO enclosure_type VALUES
  (1, 1, 'Indoor feline enclosure with multi-level climbing shelves - cozy bedding - and enrichment toys for small to medium-sized cats'),
  (2, 2, 'Indoor canine enclosure with spacious kennel runs - padded flooring - and play area suitable for small to large breed dogs');
