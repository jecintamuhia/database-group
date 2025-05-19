create schema vaccination_data;
create table vaccination_data.parents(
parentid SERIAL primary key,
parentname VARCHAR not null,
gender VARCHAR not null,
phonenumber VARCHAR(100) not null,
identificationnumber VARCHAR not null
);

INSERT INTO vaccination_data.parents(parentname,gender,phonenumber,identificationnumber)VALUES
('Janet Meena','female','+254765289299','45368290'),
('Milicent Odhiambo','female','+254765438333','65473892'),
('Nelson Mandela','male','+254768590548','67499322'),
('Becky Willy','female','+254754325767','65437822'),
('Immaculate Kamau','female','+254765899453','45271891'),
('joan Bongo','female','+254754342106','23456778'),
('Joseph Juma','male','+254677888223','56377780'),
('Hassan Joel','male','+254754256323','24536797'),
('Rajab Maulid','male','+254723454125','65378294'),
('Eliza Beth','female','+254754355234','66738929'),
('Habtamnesh Marye', 'female', '+251923435243','10232343'),
('Emebet Girmay', 'male', '+251939235242','23541623'),
('Adeday Haftu', 'female', '+25123437658','35263427'),
('Yordanos Hagos','male','+251923092834','78967887'),
('Meron Kahsay','female','+251936253421','34232343');

SELECT * FROM vaccination_data.parents;
drop table vaccination_data.parents;