CREATE FUNCTION fnc_person_visits_and_eats_on_date(
    pperson VARCHAR DEFAULT 'Dmitriy',
    pprice numeric DEFAULT 500,
    pdate date DEFAULT '2022-01-08')
RETURNS TABLE(name VARCHAR) AS $$
BEGIN
RETURN QUERY
    SELECT pizzeria.name
    FROM person
    JOIN person_visits ON person_visits.person_id = person.id
    JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
    JOIN menu ON menu.pizzeria_id = pizzeria.id
    WHERE person.name = pperson AND price<pprice AND visit_date = pdate;
END;
$$ LANGUAGE PLPGSQL;

select *
from fnc_person_visits_and_eats_on_date(pprice := 800);

select *
from fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');