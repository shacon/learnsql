-- deleting an entry

SELECT name, age FROM pet WHERE dead = 1;

-- delete all rows in pet table that have the value 1 for dead
DELETE FROM pet WHERE dead = 1;

SELECT * FROM pet;

INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 0);

SELECT * FROM pet;
