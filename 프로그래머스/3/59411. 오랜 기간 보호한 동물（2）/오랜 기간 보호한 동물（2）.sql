select animal_id,
       name
from
(
select animal_id,
       name,
       howlong,
       rank() over(order by howlong desc) ranking
from
(
select o.animal_id,
       o.name,
       date_format(date(o.datetime),'%y%m%d')-date_format(date(i.datetime),'%y%m%d') howlong
from animal_ins i left join animal_outs o on i.animal_id = o.animal_id
) a
) b
where ranking <= 2
order by howlong desc

 