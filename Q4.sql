SELECT CORPORATION.name, CORPORATION.address -- NAME AND ADDRESS
FROM CORPORATION

-- JOINING TO OWNS TABLE

INNER JOIN OWNS 
ON owner_id_corporation = CORPORATION.id

-- JOINING TO AIRPLANE TABLE FOR REG#

INNER JOIN AIRPLANE
ON OWNS.plane_id = AIRPLANE.reg#

-- JOINING TO PLANE_TYPE TABLE FOR CAPACITY
INNER JOIN PLANE_TYPE
ON PLANE_TYPE.model_no = AIRPLANE.planeType_id

-- CAPACITY REQUIREMENT
WHERE PLANE_TYPE.capacity > 200