select name,datetime
from
(
select i.name,i.datetime,
       rank() over(order by datetime) ranking
from animal_ins i left join  animal_outs o on i.animal_id = o.animal_id
where o.animal_id is null
) a
where ranking <= 3