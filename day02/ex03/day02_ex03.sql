WITH dates as(
    SELECT dates::date
    FROM generate_series('2022-01-01','2022-01-10', interval '1 day') as dates)
SELECT dates::date as missing_date
FROM (SELECT *
    FROM person_visits 
    WHERE person_id  = 1 OR person_id  = 2) as idPerson
RIGHT JOIN dates as dates on idPerson.visit_date = dates
where idPerson.id is null
order by 1