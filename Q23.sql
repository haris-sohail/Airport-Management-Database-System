use A2

--Task 23

select PERSON.SSN as 'Person ID',CORPORATION.id as 'Co ID', count(person.SSN) as 'No of planes', count(CORPORATION.id) as 'No of planes'
from OWNS
left join PERSON on owns.owner_id_person = PERSON.SSN
left join CORPORATION on OWNS.owner_id_corporation = CORPORATION.id

group by PERSON.SSN,CORPORATION.id;