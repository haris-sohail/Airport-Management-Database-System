-- Get the name, model number, and capacity of all airplanes along with the name of the company that makes them
SELECT AIRPLANE.name, PLANE_TYPE.model_no, PLANE_TYPE.capacity, PLANE_TYPE.company
FROM AIRPLANE
INNER JOIN PLANE_TYPE
ON AIRPLANE.planeType_id = PLANE_TYPE.model_no;

-- Get the names of all pilots who are licensed to fly a particular plane type (given by its model number)
SELECT PILOT.name
FROM PILOT
INNER JOIN FLIES
ON PILOT.SSN = FLIES.pilot_id
INNER JOIN PLANE_TYPE
ON FLIES.plane_id = PLANE_TYPE.model_no
WHERE PLANE_TYPE.model_no = 737;

-- Get the names and addresses of all employees who maintain planes that are owned by a particular corporation (given by its id)
SELECT EMPLOYEE.name, EMPLOYEE.address
FROM EMPLOYEE
INNER JOIN MAINTAINS
ON EMPLOYEE.SSN = MAINTAINS.employee_id
INNER JOIN SERVICE
ON MAINTAINS.service_id = SERVICE.id
INNER JOIN AIRPLANE
ON AIRPLANE.reg# = SERVICE.plane_id
INNER JOIN OWNS
ON SERVICE.plane_id = OWNS.plane_id
WHERE OWNS.owner_id_corporation = 4;

-- The number of services done on each plane, along with the total number of hours spent on those services
SELECT AIRPLANE.name, AIRPLANE.reg#, COUNT(SERVICE.id) AS NO_OF_SERVICES, SUM(SERVICE.hours) AS TOTAL_HOURS_SPENT
FROM AIRPLANE
INNER JOIN SERVICE
ON AIRPLANE.reg# = SERVICE.plane_id
GROUP BY AIRPLANE.name, AIRPLANE.reg#;




