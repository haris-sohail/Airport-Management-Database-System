use A2


--Task 19

select HANGAR.number ,count(airplane.hangar_id) as 'total planes'
from HANGAR left join AIRPLANE 
on HANGAR.number = AIRPLANE.hangar_id
GROUP BY HANGAR.number;