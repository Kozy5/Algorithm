select user_id,
       nickname NICKNAME,
       addr 전체주소,
       concat(tlno_front,'-',tlno_middle,'-',tlno_finish) 전화번호
from 
(
select b.board_id,
       u.user_id,
       u.nickname,
       CONCAT(u.city,' ',u.street_address1,' ',u.street_address2) addr,
       substr(tlno,1,3) tlno_front,
       substr(tlno,4,4) tlno_middle,
       substr(tlno,8,4) tlno_finish,
       count(b.writer_id) cnt_wi
from used_goods_board b inner join used_goods_user u on b.WRITER_ID = u.user_id
group by 2
) a
where cnt_wi >= 3
order by user_id desc
