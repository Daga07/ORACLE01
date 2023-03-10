create SYNONYM employees_synonym for hr.employees;
SELECT * from employees;

CREATE user HR
IDENTIFIED BY HR;

GRANT create session, create table,
create sequence, create view
TO hr;

GRANT create session, create table,
create sequence, create view
TO hr
WITH ADMIN OPTION;

CREATE ROLE manager;
GRANT create table, create view
TO manager;

ALTER USER HR
IDENTIFIED BY employ;

GRANT select
ON employees
TO sue, rich;

ALTER USER HR QUOTA 10G ON USERS;
ALTER USER HR QUOTA UNLIMITED ON USERS;

create table dep80;

SELECT * FROM hr.dep80;
ALTER TABLE dept80
DROP (column);

ALTER TABLE dept80
DROP COLUMN job_id;

create table uceva
as
SELECT *
from employees
WHERE department_id = 80;


