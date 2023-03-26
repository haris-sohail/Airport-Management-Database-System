SELECT AIRPLANE.reg#, PLANE_TYPE.model_no AS PLANE_TYPE_MODEL_NUMBER, AVG(SERVICE.hours) AS AVG_MAINTENANCE_HOURS
FROM SERVICE
INNER JOIN AIRPLANE
ON AIRPLANE.reg# = SERVICE.plane_id
INNER JOIN PLANE_TYPE
ON PLANE_TYPE.model_no = AIRPLANE.planeType_id
GROUP BY AIRPLANE.reg#, PLANE_TYPE.model_no