--delete is like select but it removes rows from the tables
--so, how do we delete from multiple tables at once?

--subquery that selects the ids you want based on another query
DELETE FROM pet WHERE id IN (
    SELECT pet.id
    FROM pet, person_pet, person
    WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person.first_name = "Zed"
);

SELECT * FROM pet;
SELECT * FROM person_pet;

DELETE FROM person_pet
    WHERE pet_id NOT IN (
        SELECT id FROM pet_id
        );
SELECT * FROM person_pet;