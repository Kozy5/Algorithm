select b.book_id,
       a.author_name,
       substr(b.published_date,1,10)
from book b left join author a on b.author_id = a.author_id
where b.category ='경제'
order by b.published_date