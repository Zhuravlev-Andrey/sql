SELECT person.name AS person_id, COUNT(*) AS count_of_visits
FROM person_visits
JOIN person ON person_visits.person_id = person.id
GROUP BY person.name
ORDER BY 2 DESC, 1
LIMIT 4