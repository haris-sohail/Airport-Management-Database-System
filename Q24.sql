use A2

--Task 24

select PILOT.SSN as 'Pilot ID',count(FLIES.pilot_id) as 'No of Planes'
from FLIES join PILOT 
on FLIES.pilot_id = PILOT.SSN
group by PILOT.SSN;