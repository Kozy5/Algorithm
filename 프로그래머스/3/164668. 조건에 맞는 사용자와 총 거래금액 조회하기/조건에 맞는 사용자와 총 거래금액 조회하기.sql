select user_id,
       nickname,
       sum_price total_sales
from
(
select u.user_id,
       u.nickname,
       sum(b.price) sum_price
from used_goods_board b left join used_goods_user u on b.WRITER_ID = u.USER_ID
where status ="DONE"
group by 1
order by 3
) a
where sum_price >= "700000"