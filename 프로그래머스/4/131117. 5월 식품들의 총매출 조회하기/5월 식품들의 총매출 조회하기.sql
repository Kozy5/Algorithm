select p.product_id, p.product_name, sum(p.price*o.amount)
from food_order o inner join food_product p on o.product_id = p.product_id
where o.PRODUCE_DATE like "%2022-05%"
group by 1
order by 3 desc ,1