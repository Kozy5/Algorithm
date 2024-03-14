select animal_id,
       name,
       case when sex_upon_intake = 'Neutered Male' then 'O'
            when sex_upon_intake = 'Spayed Female' then 'O'
            else 'X' end sex_upon_intake
from animal_ins
order by animal_id