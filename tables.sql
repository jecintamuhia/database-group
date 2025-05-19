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

