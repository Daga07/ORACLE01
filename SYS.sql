CREATE user hr
IDENTIFIED BY hr;

GRANT create session, create table,
create sequence, create view
TO hr;

GRANT create session, create table,
create sequence, create view
TO hr
WITH ADMIN OPTION;
