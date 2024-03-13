select first_value(datetime) over(order by datetime)
from animal_ins limit 1