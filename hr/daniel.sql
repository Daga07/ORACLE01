create table dep80;

create table uceva
as
SELECT *
from employees
WHERE department_id = 80;
