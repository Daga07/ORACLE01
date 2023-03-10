CREATE USER hr IDENTIFIED BY hr;

GRANT SELECT ON hr.employees TO daniel;

SELECT * from hr.employees;

create SYNONYM employees_synonym for hr.employees;

SELECT * from hr.employees;

'C:\Users\Daga\Documents\oracle4'

select * 
from dep80;

create table dep80
as
SELECT *
from employees
WHERE department_id = 80;





CREATE OR REPLACE DIRECTORY emp_dir 
AS '\\wsl.localhost\docker-desktop\tmp';
GRANT READ ON DIRECTORY emp_dir TO hr;

CREATE TABLE oldemp (
fname char(25),
lname CHAR(25))
ORGANIZATION EXTERNAL(TYPE ORACLE_LOADER
 DEFAULT DIRECTORY emp_dir
 ACCESS PARAMETERS
 (RECORDS DELIMITED BY NEWLINE
  NOBADFILE
  NOLOGFILE
  FIELDS TERMINATED BY ',')
 LOCATION ('emp.dat'))
PARALLEL 5
REJECT LIMIT 200;

SELECT *
FROM oldemp;

drop table oldemp PURGE;