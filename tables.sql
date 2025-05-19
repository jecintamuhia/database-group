CREATE SCHEMA vaccination_data ;
CREATE TABLE vaccination_data.medical_records(
 medical_recordsID  SERIAL PRIMARY KEY,
 child_id  INT  NOT NULL,
 height INT  NOT NULL ,
 weight VARCHAR (30) NOT NULL,
 existing_conditions  VARCHAR (30) NOT NULL,
 CONSTRAINT  fk_child_Id
 FOREIGN KEY (child_Id) REFERENCES  vaccination_data.child(child_Id)
 ON DELETE CASCADE 
 );

 CREATE TABLE vaccination_data.child(
 child_Id SERIAL PRIMARY KEY ,
 childName CHAR(50) NOT NULL,
 gender CHAR(20) NOT NULL,
 DOB DATE NOT NULL
 );

 SELECT * FROM vaccination_data.child
 
 DROP TABLE vaccination_data.child

INSERT INTO vaccination_data.medical_records(child_id, height, weight, existing_conditions ) VALUES 
(1, 120,10, 'normal'),
(2, 110,30, 'normal'),
(3, 70,13, 'normal'),
(4, 80,12, 'diabetes'),
(5, 70 ,30, 'normal'),
(6, 80,20, 'asthma'),
(7, 60,27, 'normal'),
(8,89 ,20, 'goiter'),
(9, 90,15, 'diabetes'),
(10, 94,18, 'normal'),
(11,78 ,34, 'kwashiakor'),
(12,84 ,18, 'normal'),
(13,60 ,15, 'anaemia'),
(14,78 ,35, 'normal'),
(15, 67,30, 'normal')


SELECT * FROM vaccination_data.medical_records
