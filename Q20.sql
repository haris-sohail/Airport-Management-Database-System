use A2

--Task 20

select PLANE_TYPE.model_no as model, count(AIRPLANE.planeType_id) as 'no of planes'
from AIRPLANE left join PLANE_TYPE 
on AIRPLANE.planeType_id = PLANE_TYPE.model_no
group by PLANE_TYPE.model_no;