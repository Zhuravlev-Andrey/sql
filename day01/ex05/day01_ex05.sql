SELECT person.id "person.id", person.name "person.name", age, gender, address, pizzeria.id "pizzeria.id", pizzeria.name "pizzeria.name", rating
    FROM person
    CROSS JOIN pizzeria
ORDER BY person.id, pizzeria.id