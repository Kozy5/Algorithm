select food_type,
       rest_id,
       rest_name,
       favorites
from
(
select food_type,
       rest_id,
       rest_name,
       favorites,
       rank() over(partition by food_type order by favorites desc) ranking
from rest_info
) a
where ranking = 1
order by food_type desc