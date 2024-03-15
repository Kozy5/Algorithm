select book_id,
       date_format(date(PUBLISHED_DATE),'%Y-%m-%d')
from book
where PUBLISHED_DATE like "%2021%" and category ="인문"
order by PUBLISHED_DATE desc