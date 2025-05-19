set
SEARCH_PATH to vaccination_data;

create table vaccination_data.details_data(
     details_dataId SERIAL primary key,
     parentid INT not null,
     Locatione CHAR(50),
     Employement_status CHAR(50),
     constraint fk_parentid
     foreign key (parentid) references vaccination_data.parents(parentid)
     on
delete
	cascade
  );

insert
	into
	vaccination_data.details_data(parentid, 
	Locatione,
	Employement_status)
values
    (1 ,
'Nairobi',
'Employee'),
    (2,
'Nakuru',
'Non-employee'),
    (3,
'Kolefa',
'Employee'),
   (4,
'Nefas',
'Non-employee'),
   (5,
'Nakuru',
'Employee'),
   (6,
'Nakuru',
'Non-employee'),
    (7,
'Addis',
'Employee'),
    (8,
'Kampla',
'Non-employee'),
   (9,
'Nakuru',
'Employee'),
   (10,
'Zanzibar',
'Non-employee'),
   (11,
'Bahir',
'Non-employee'),
   (12,
'Bole',
'Non-employee'),
  (13,
'Kara',
'Non-employee'),
(14,
'Hawassa',
'Non-employee'),
(15,
'Ketema',
'Non-employee')
;

select
	*
from
	vaccination_data.details_data;

drop table vaccination_data.details_data;