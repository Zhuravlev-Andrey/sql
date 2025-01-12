select t1.name, coalesce(t1.count,0) + coalesce(t2.count,0)AS total_count
FROM (SELECT pizzeria.name AS name , count(*) AS count
FROM person_order
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
GROUP BY name) AS t1
FULL JOIN
(SELECT pizzeria.name AS name , count(*) AS count
FROM person_visits
JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
GROUP BY name ) AS t2 ON t1.name = t2.name
ORDER BY 2 DESC,1