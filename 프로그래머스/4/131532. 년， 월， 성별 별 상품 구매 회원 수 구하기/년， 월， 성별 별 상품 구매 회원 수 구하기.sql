select year(o.sales_date) year,
       month(o.SALES_DATE) as month,
       u.GENDER,
       count(distinct u.user_id)
from ONLINE_SALE o 
inner join USER_INFO u on o.USER_ID = u.USER_ID
where u.gender is not null
group by 1,2,3
order by 1,2,3
