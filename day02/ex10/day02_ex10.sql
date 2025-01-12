SELECT person.name AS person_name1,person_2.name AS person_name2, person.address AS common_address
FROM person
JOIN person AS person_2 ON person_2.id < person.id AND person_2.address = person.address
WHERE person_2.id <> person.id
ORDER BY 1,2,3