SELECT action_date, person.name AS person_name
FROM (
    SELECT order_date AS action_date, person_id FROM person_order 
    INTERSECT ALL
    SELECT visit_date AS action_date, person_id FROM person_visits ) AS sum
JOIN person ON person.id = sum.person_id
ORDER BY action_date,  person_name DESC;