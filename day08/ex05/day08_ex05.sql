BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

SELECT SUM(rating) FROM pizzeria;

INSERT INTO pizzeria (id,name,rating) VALUES(10,'Kazan Pizza', 5);

