CREATE VIEW v_price_with_discount AS
SELECT person.name, menu.pizza_name, menu.price, (menu.price - menu.price*0.1 )::INT AS discount_price
from person
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON person_order.menu_id = menu.id
--WHERE discount_price = menu.price - menu.price*0.1
ORDER BY 1,2