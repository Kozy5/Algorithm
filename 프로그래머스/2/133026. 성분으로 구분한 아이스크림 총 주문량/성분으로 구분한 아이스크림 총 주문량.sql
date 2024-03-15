select i.ingredient_type,
       sum(total_order) TOTAL_ORDER
from icecream_info i inner join first_half f on i.flavor = f.flavor
group by 1
order by 2