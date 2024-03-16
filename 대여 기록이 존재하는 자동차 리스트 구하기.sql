select h.car_id
from CAR_RENTAL_COMPANY_RENTAL_HISTORY h inner join CAR_RENTAL_COMPANY_CAR c on c.car_id = h.car_id
where c.car_type = "세단" and start_date like "%2022-10%" and h.start_date is not null
group by 1
order by 1 desc