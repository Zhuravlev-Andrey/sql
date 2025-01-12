SELECT person.name AS person_name, pizza_name, pizzeria.name AS pizzeria_name
FROM pizzeria
JOIN menu ON menu.pizzeria_id = pizzeria.id
JOIN person_order ON menu.id = person_order.menu_id 
JOIN person ON person.id = person_order.person_id
WHERE menu_id = menu.id
ORDER BY 1,2,3