SELECT menu.pizza_name , menu.price, pizzeria.name, person_visits.visit_date
FROM person_visits
JOIN person ON person_visits.person_id = person.id
JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
JOIN menu ON menu.pizzeria_id = pizzeria.id
WHERE menu.price BETWEEN 800 AND 1000 AND person.name = 'Kate'
ORDER BY 1,2,3