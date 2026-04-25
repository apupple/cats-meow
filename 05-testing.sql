INSERT INTO animal VALUES (49, 1, 1, 49, 'Test Dog', 2,  'F', 'this dog is for testing!');

UPDATE animal SET enclosure_id = 1 WHERE animal_id = 3;

DELETE FROM enclosure WHERE enclosure_id = 1;