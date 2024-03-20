select user_id,
       product_id
from
(
select user_id,
       product_id,
       count(product_id) cnt
from online_sale
group by 2,1
) a
where cnt >= 2
order by user_id,product_id desc
