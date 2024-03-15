select substr(avg(daily_fee),1,5) AVERAGE_FEE
from car_rental_company_car
where car_type = "SUV"