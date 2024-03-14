select substr(datetime,12,2) hour,
       count(1)
from animal_outs
where substr(datetime,12,2) between 09 and 19
group by 1
order by 1