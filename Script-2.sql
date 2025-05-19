set
SEARCH_PATH to vaccination_data;

create table vaccination_data.child(
child_id INT primary key,
childName VARCHAR(50) not null,
childgender VARCHAR (20) not null,
dob DATE,
birth_certificate_number VARCHAR(20) not null,
bloodtype VARCHAR (2) not null
);

drop table vaccination_data.child;

select
	*
from
	vaccination_data.child;

create table vaccination_data.vaccine(
vaccine_id SERIAL primary key,
child_id INT not null,
vaccine_name VARCHAR not null,
supplier VARCHAR not null,
dispatch_date DATE not null,
expiry DATE not null,
dosage VARCHAR not null,

constraint fk_child_id
    foreign key(child_id) references vaccination_data.child(child_id)
    on
delete
	cascade
);

drop table vaccination_data.vaccine;

select
	*
from
	vaccination_data.vaccine;

insert
	into
	vaccination_data.vaccine(child_id,
	vaccine_name,
	supplier,
	dispatch_date,
	expiry,
	dosage)
values
(1,
'Polio',
'Ruby',
'2024-04-25',
'2026-04-30',
'300ml'),
(2,
'Measles',
'Marion',
'2023-05-15',
'2025-06-30',
'5000ml'),
(3,
'BCG',
'Makuto',
'2025-02-08',
'2027-08-13',
'1000ml'),
(4,
'Yellow-fever',
'Angela',
'2025-05-14',
'2027-08-20',
'400ml'),
(5,
'flu',
'Mercy',
'2022-04-03',
'2025-12-21',
'350ml'),
(6,
'HPV',
'Bonnette',
'2023-08-02',
'2026-12-12',
'550ml'),
(7,
'Pneumonia',
'Emeline',
'2023-05-05',
'2025-05-06',
'600ml'),
(8,
'Malaria',
'Emy',
'2022-05-05',
'2025-07-26',
'650ml'),
(9,
'Bilharzia',
'Sage',
'2022-09-09',
'2026-05-06',
'700ml'),
(10,
'Typhoid',
'Beryl',
'2023-05-25',
'2027-05-16',
'750ml'),
(11,
'Chickenpx',
'Mwangi',
'2021-05-05',
'2025-10-06',
'800ml'),
(12,
'Kwashiorkor',
'Winnie',
'2023-10-10',
'2025-05-10',
'850ml'),
(13,
'Rickets',
'Temba',
'2020-10-10',
'2026-11-10',
'900ml'),
(14,
'Rotavirus',
'Leah',
'2023-11-11',
'2028-05-10',
'950ml'),
(15,
'Covid-19',
'Morgan',
'2023-04-10',
'2026-03-10',
'1050ml');

select
	*
from
	vaccination_data.vaccine;
-- SELECT COUNT (*)
-- FROM vaccination_data.vaccine
-- WHERE ;



 create table vaccination_data.vaccination_details(
 vaccination_details_id SERIAL primary key,
 vaccine_id INTEGER not null,
 child_id INTEGER not null,
 vaccine_name VARCHAR not null,
 vaccination_date DATE not null,
 dose VARCHAR not null,
 constraint fk_vaccine
     foreign key(vaccine_id) references vaccination_data.vaccine(vaccine_id)
     on
delete
	cascade,
	constraint fk_child
     foreign key(child_id) references vaccination_data.child(child_id)
     on
	delete
		cascade
     
 );

drop table vaccination_data.vaccination_details;

insert
	into
	vaccination_data.vaccination_details(vaccine_id,
	child_id,
	vaccine_name,
	vaccination_date,
	dose)
values
 (1,
001,
'Polio',
'2025-05-01',
'3ml'),
 (2,
002,
'Measles',
'2025-05-01',
'3ml'),
 (3,
003,
'BCG',
'2025-05-03',
'3ml'),
 (4,
004,
'Yellow-fever',
'2025-05-02',
'3ml'),
 (5,
005,
'flu',
'2025-05-03',
'3ml'),
 (6,
006,
'HPV',
'2025-05-04',
'3ml'),
 (7,
007,
'Pneumonia',
'2025-05-05',
'3ml'),
 (8,
008,
'Malaria',
'2025-05-06',
'3ml'),
 (9,
009,
'Bilharzia',
'2025-05-04',
'3ml'),
 (10,
010,
'Typhoid',
'2025-05-06',
'3ml'),
 (11,
011,
'Chickenpox',
'2025-05-06',
'3ml'),
 (12,
012,
'Kwashiorkor',
'2025-05-07',
'3ml'),
 (13,
013,
'Rickets',
'2025-05-08',
'3ml'),
 (14,
014,
'Rotavirus',
'2025-05-08',
'3ml'),
 (15,
015,
'Covid-19',
'2025-05-09',
'5ml');

select
	*
from
	vaccination_data.vaccination_details;

select
	COUNT(*)
from
	vaccination_data.vaccination_details
where
	;