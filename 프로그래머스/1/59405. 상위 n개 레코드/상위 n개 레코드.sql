select name
from
(
select name,rank() over(order by datetime) ranking
from animal_ins
) a
where ranking = 1