<<<<<<< HEAD
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
=======
INSERT INTO vaccination_data.parents(parentid,parentname,gender,phonenumber,identificationnumber)VALUES
(004,'janet meena','female','+254765289','45368290'),
(006,'milicent odhiambo','female','+254765438','65473892'),
(007,'nelson mandela','male','+254768590','67499322'),
(009,'becky willy','female','+254754325','65437822'),
(010,'immaculate','female','+254765899','45271891'),
(011,'joan bongo','female','+254754342','23456778'),
(012,'joseph juma','male','+254677888','56377780'),
(013,'hassan joel','male','+254754256','24536797'),
(014,'rajab maulid','male','+254723454','65378294'),
(015,'eliza beth','female','+254754355','66738929')

SELECT * FROM vaccination_data.parents

select
  max(gender) as total_count,
  count(case when gender='Male'  then 1 end) as male_cnt,
  count(case when gender='Female'  then 1 end) as female_cnt,
  count(*) as total_cnt
from vaccination_data.parents


SELECT COUNT (*) AS children_under_4yrs1M20D FROM vaccination_data.child
WHERE dob > date_sub(CURRENT_DATE(),INTERVAL 4 YEAR) OR
(dob > date_sub(CURRENT_DATE(),INTERVAL 4 YEAR) AND dob > date_sub(CURRENT_DATE(),interval 1 MONTH)) OR
(dob > date_sub(CURRENT_DATE(),INTERVAL 4 YEAR) AND dob >date_sub(CURRENT_DATE(),INTERVAL 1 MONTH) AND dob > date_sub(CURRENT_DATE(),INTERVAL 20 DAY))

>>>>>>> d5f72f53340c2bb348b078589dfd36f864e225fe
