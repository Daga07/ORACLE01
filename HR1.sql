select * 
from dep80;

create table uceva

SELECT * FROM uceva;

ALTER TABLE dep80
ADD uceva VARCHAR(255);

create table uceva
as
SELECT *
from employees
WHERE department_id = 80;
