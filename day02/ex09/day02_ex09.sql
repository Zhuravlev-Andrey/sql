SELECT person.name 
FROM person_order
JOIN person ON person_order.person_id = person.id
JOIN menu ON person_order.menu_id = menu.id
WHERE gender = 'female' AND pizza_name = 'cheese pizza'
INTERSECT
SELECT person.name 
FROM person_order
JOIN person ON person_order.person_id = person.id
JOIN menu ON person_order.menu_id = menu.id
WHERE gender = 'female' AND pizza_name =  'pepperoni pizza'