SELECT person.name, menu.pizza_name, menu.price,menu.price::INT * (100 - person_discounts.discount)::INT / 100 AS discount_price, pizzeria.name AS pizzeria_name
FROM person_order
JOIN person ON person_order.person_id = person.id
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
JOIN person_discounts ON person_discounts.person_id = person.id
ORDER BY 1,2