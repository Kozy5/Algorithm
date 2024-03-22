select i.REST_ID,
       i.rest_name,
       i.food_type,
       i.favorites,
       i.address,
       round(avg(r.review_score),2) score
from REST_info i
inner join rest_review r on i.rest_id = r.rest_id
where substr(address,1,2) = "서울"
group by 1,2
order by score desc ,i.favorites desc

