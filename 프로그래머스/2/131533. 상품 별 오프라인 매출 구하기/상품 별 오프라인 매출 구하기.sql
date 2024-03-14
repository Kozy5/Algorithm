select p.product_code,
       p.price * sum(o.sales_amount)
from product p inner join offline_sale o on p.product_id = o.product_id
group by 1
order by 2 desc,1