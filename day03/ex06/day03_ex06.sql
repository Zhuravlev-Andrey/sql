SELECT menu.pizza_name, pizzeria_1.name pizzeria_name_1, pizzeria_2.name pizzeria_name_2, menu.price
FROM menu
JOIN menu AS menu_2 ON menu_2.id <> menu.id AND menu.pizza_name = menu_2.pizza_name AND menu.price = menu_2.price AND menu.pizzeria_id > menu_2.pizzeria_id  
JOIN pizzeria AS pizzeria_1 ON pizzeria_1.id = menu.pizzeria_id
JOIN pizzeria AS pizzeria_2 ON pizzeria_2.id = menu_2.pizzeria_id
ORDER BY 1