SELECT  pizza_name,name pizzeria_name, price
FROM menu
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE pizza_name IN ('mushroom pizza' , 'pepperoni pizza')
ORDER BY 1,2