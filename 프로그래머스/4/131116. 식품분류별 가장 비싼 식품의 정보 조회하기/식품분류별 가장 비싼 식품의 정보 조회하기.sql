select category,
       price,
       product_name
from
(
select case when category ="과자" then category
            when category = "국" then category
            when category ="김치" then category
            when category ="식용유" then category end category,
       price,
       product_name,
       rank() over(partition by category order by price desc) ranking
from food_product
) a
where category is not null and ranking = 1
order by price desc
