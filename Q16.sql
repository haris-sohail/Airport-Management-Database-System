use A2

--task 16

select EMPLOYEE.name 
from EMPLOYEE inner join MAINTAINS 
on EMPLOYEE.SSN = MAINTAINS.employee_id
inner join SERVICE 
on MAINTAINS.service_id = SERVICE.id
inner join AIRPLANE
on SERVICE.plane_id = AIRPLANE.reg# -- where service.plane_id refers to the airplane.reg#
inner join OWNS
on AIRPLANE.reg# = OWNS.plane_id  -- owns.plane_id also refers to airplane.reg#
inner join CORPORATION
on owns.owner_id_corporation = CORPORATION.id
where CORPORATION.id = 4;