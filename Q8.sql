SELECT * FROM PAST

CREATE VIEW PAST AS 
SELECT CORPORATION.name, CORPORATION.tel_number
FROM OWNS
LEFT JOIN CORPORATION 
ON CORPORATION.id = OWNS.owner_id_corporation AND OWNS.owner_id_person IS NULL
LEFT JOIN PERSON 
ON PERSON.SSN = OWNS.owner_id_person AND OWNS.owner_id_corporation IS NULL
WHERE Pdate >= '2023-02-26' and Pdate <= '2023-03-26' 
AND CORPORATION.name IS NOT NULL
AND CORPORATION.tel_number IS NOT NULL

UNION ALL

SELECT PERSON.name, PERSON.tel_number
FROM OWNS
LEFT JOIN CORPORATION 
ON CORPORATION.id = OWNS.owner_id_corporation AND OWNS.owner_id_person IS NULL
LEFT JOIN PERSON 
ON PERSON.SSN = OWNS.owner_id_person AND OWNS.owner_id_corporation IS NULL
WHERE Pdate >= '2023-02-26' and Pdate <= '2023-03-26' 
AND PERSON.name IS NOT NULL
AND PERSON.tel_number IS NOT NULL


