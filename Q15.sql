use A2

-- task 15

SELECT distinct PILOT.name
FROM PILOT
INNER JOIN FLIES
ON PILOT.SSN = FLIES.pilot_id
INNER JOIN PLANE_TYPE
ON FLIES.plane_id = PLANE_TYPE.model_no
INNER JOIN AIRPLANE
ON AIRPLANE.planeType_id = PLANE_TYPE.model_no
INNER JOIN SERVICE
ON SERVICE.plane_id = AIRPLANE.reg#