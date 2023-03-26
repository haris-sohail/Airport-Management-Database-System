use A2

--Task 21

select SERVICE.plane_id, count(SERVICE.plane_id) as 'no of services'
from SERVICE left join AIRPLANE 
on SERVICE.plane_id = AIRPLANE.reg#
group by SERVICE.plane_id;