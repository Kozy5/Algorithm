select car_type,cars
from
(
select case when options like '%통풍시트%' then car_type
            when options like '%열선시트%' then car_type
            when options like '%가죽시트%' then car_type end car_type,
            count(1) cars
from car_rental_company_car
group by 1
) a
where car_type is not null
order by car_type


