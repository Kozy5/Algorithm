select order_id,
       product_id,
       substr(out_date,1,10) out_date,  
       case when datediff(out_date,'2022-05-01') <= 0 then '출고완료'
            when datediff(out_date,'2022-05-01') > 0 then '출고대기'
            when datediff(out_date,'2022-05-01') is null then '출고미정'end '출고여부'
from food_order
order by 1