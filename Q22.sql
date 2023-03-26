use A2

--Task 21

select EMPLOYEE.shifts as shift, avg(EMPLOYEE.salary) as 'avg salary'
from EMPLOYEE
group by EMPLOYEE.shifts;