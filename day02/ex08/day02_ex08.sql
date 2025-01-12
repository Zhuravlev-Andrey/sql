SELECT name
FROM person
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON person_order.menu_id = menu.id
WHERE address IN ('Moscow', 'Samara') AND gender = 'male' AND menu.pizza_name IN ('mushroom pizza', 'pepperoni pizza')
ORDER BY 1 DESC