INSERT INTO person_order (id, person_id, menu_id, order_date) 
(
    SELECT MAX(id + 1)
        generate_series
),(
    generate_series(1,(select count(*) from person))
), (
    SELECT id
    FROM menu
    WHERE pizza_name = 'sicilian pizza'
), '2022-02-25';

INSERT INTO person_order (id, person_id, menu_id, order_date) 
    SELECT
        generate_series(max(id) + 1, max(id) + (SELECT count(*) FROM person)) AS id,
        generate_series(1,(select count(*) from person)) AS person_id,
        (SELECT id
            FROM menu
            WHERE pizza_name = 'sicilian pizza') AS menu_id,
        '2022-02-25'
        FROM person_order