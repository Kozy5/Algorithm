select member_id,
       member_name,
       gender,
       date_format(date(date_of_birth),'%Y-%m-%d')
from MEMBER_PROFILE
where gender ="W" and date_of_birth like "%03%" and tlno is not null