select product_id,
       product_name,
       product_cd,
       category,
first_value(price) over(order by price desc)
from food_product limit 1