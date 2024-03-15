select animal_id,name,sex_upon_intake
from
(
select animal_id,
    case when name = "Lucy" then name 
        when name = "Ella" then name
        when name = "Pickle" then name
        when name = "Rogan" then name
        when name = "Sabrina" then name
        when name = "Mitty" then name end name,
       sex_upon_intake
from animal_ins
) a 
where name is not null
order by animal_id




