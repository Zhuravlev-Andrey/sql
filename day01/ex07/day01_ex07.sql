SELECT order_date, (name || ' (age:' || age || ')') AS person_information
FROM person_order
JOIN person ON person.id = person_order.person_id
ORDER BY order_date, person_information