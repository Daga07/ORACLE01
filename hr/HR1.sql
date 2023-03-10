
CREATE TABLE Review(
ID VARCHAR(50),
upadated_at Date,
created_at DATE,
user_id VARCHAR(50),
place_id VARCHAR(50),
text VARCHAR(50)
);





SELECT * FROM Review;

CREATE TABLE usuario(
ID VARCHAR(50),
updated_at Date,
created_at DATE,
email VARCHAR(50),
password VARCHAR(50),
first_name VARCHAR(50), 
last_name VARCHAR(50)
);

alter table usuario
MODIFY ID PRIMARY key;

alter table Place 
ADD CONSTRAINT user_fk_id
FOREIGN key(user_id)
REFERENCES usuario(ID);


SELECT * FROM usuario;

CREATE TABLE Place(
ID VARCHAR(50),
updated_at date,
created_at date,
user_id varchar(50),
name varchar(50),
city_id varchar(50),
description VARCHAR(50),
number_rooms INTEGER,
number_bathrooms INTEGER,
max_guest  INTEGER,
latitude FLOAT,
longitude FLOAT
);

SELECT * FROM PLACE;

alter table PLACE
MODIFY ID PRIMARY key;

alter table Place 
ADD CONSTRAINT city_fk
FOREIGN key(city_id)
REFERENCES City(ID);


CREATE TABLE Amenity(
ID VARCHAR(50),
UPDATED_AT DATE,
CREATED_AT DATE,
NAME VARCHAR(50)
);

ALTER TABLE Amenity
MODIFY ID PRIMARY KEY;

alter table PlaceAmenity 
ADD CONSTRAINT amenity_fk
FOREIGN key(amanity_id)
REFERENCES Amenity(ID);


SELECT * FROM Amenity;


CREATE TABLE PlaceAmenity(
amanity_id VARCHAR(50),
place_id VARCHAR(50)
);
SELECT * FROM PlaceAmenity;

CREATE TABLE State(
ID VARCHAR(50),
UPDATED_AT DATE,
CREATED_AT DATE,
NAME VARCHAR(50)
);

ALTER TABLE State
MODIFY ID PRIMARY KEY;

alter table City 
ADD CONSTRAINT state_fk
FOREIGN key(state_id)
REFERENCES State(ID);


SELECT * FROM State;

CREATE TABLE City(
ID VARCHAR(50),
UPDATED_AT DATE,
CREATED_AT DATE,
STATE_ID VARCHAR(50),
NAME VARCHAR(50)
);

ALTER TABLE City
MODIFY ID PRIMARY KEY;

SELECT * FROM State;
