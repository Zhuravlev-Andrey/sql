SELECT person.id AS person_id, COUNT(person_visits.visit_date) AS count_of_visits
FROM person
JOIN person_visits ON person_visits.person_id = person.id
GROUP BY person.id, person_id
ORDER BY count_of_visits DESC, person_id