SELECT person.address, pizzeria.name AS name , count(*) AS count_of_orders
FROM person_order
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
JOIN person ON person.id = person_order.person_id
GROUP BY person.address, pizzeria.name
ORDER BY 1,2