select mcdp_cd '진료과 코드',
       count(1) '5월예약건수'
from appointment
where apnt_ymd like '%2022-05%'
group by 1
order by count(1),1