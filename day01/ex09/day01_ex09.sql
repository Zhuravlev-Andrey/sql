SELECT name 
from pizzeria
WHERE NOT EXISTS
(
    SELECT pizzeria_id
    FROM person_visits
    where pizzeria_id = pizzeria.id
)

SELECT name 
from pizzeria
WHERE id NOT IN
(
    SELECT pizzeria_id
    FROM person_visits
)