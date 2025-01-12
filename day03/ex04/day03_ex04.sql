SELECT DISTINCT pizzeria.name AS pizzeria_name
FROM person
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE person.gender = 'male'
EXCEPT
SELECT DISTINCT pizzeria.name
FROM person 
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE person.gender = 'female'
UNION
SELECT DISTINCT pizzeria.name AS pizzeria_name
FROM person 
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE person.gender = 'female'
EXCEPT
SELECT DISTINCT pizzeria.name
FROM person 
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE person.gender = 'male'
ORDER BY 1