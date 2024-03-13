select FIRST_VALUE(name) over(order by datetime)
from animal_ins limit 1



