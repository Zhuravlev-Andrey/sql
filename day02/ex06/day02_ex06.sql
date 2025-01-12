SELECT menu.pizza_name AS pizza_name, pizzeria.name AS pizzeria_name
FROM person_order
JOIN menu ON person_order.menu_id = menu.id
JOIN person ON person_order.person_id = person.id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE person_order.person_id IN (1,4)
ORDER BY 1,2
