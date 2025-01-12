SELECT 
CASE WHEN person.name is NULL THEN '-' else person.name
    END AS person_name, 
    visit_date, 
CASE WHEN pizzeria.name is NULL THEN '-' else pizzeria.name
    END AS pizzeria_name
FROM person
FULL JOIN (
SELECT *
FROM person_visits
WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03' 
) AS dates ON dates.person_id = person.id
FULL JOIN pizzeria ON dates.pizzeria_id = pizzeria.id
ORDER BY 1,2,3