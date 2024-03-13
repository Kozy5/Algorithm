select warehouse_id,warehouse_name,address,if(freezer_yn is null,'N',freezer_yn)
from food_warehouse
where warehouse_name like '%경기%'
order by warehouse_id