select dr_name,
       dr_id,
       case when mcdp_cd = 'CS' then mcdp_cd
            when mcdp_cd = 'GS' then mcdp_cd end,
      substr(hire_ymd,1,10)
from doctor
where case when mcdp_cd = 'CS' then mcdp_cd
            when mcdp_cd = 'GS' then mcdp_cd end is not null
order by hire_ymd desc,dr_name