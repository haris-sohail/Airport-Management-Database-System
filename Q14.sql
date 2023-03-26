use A2

SELECT person.name, person.tel_number
FROM PERSON
JOIN OWNS ON person.SSN = owns.owner_id_person
JOIN AIRPLANE ON owns.plane_id = airplane.reg#
JOIN CORPORATION ON owns.owner_id_corporation = corporation.id
JOIN HANGAR ON airplane.hangar_id = hangar.number
WHERE coporation.location = hangar.location;
