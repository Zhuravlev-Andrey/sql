SHOW TRANSACTION ISOLATION LEVEL;

BEGIN TRANSACTION;

UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';

COMMIT;

SELECT * FROM pizzeria WHERE name = 'Pizza Hut';