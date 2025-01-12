# sql

## day00
### Exercise 00 
Let’s make our first task. 
Please make a select statement which returns all person's names and person's ages from the city ‘Kazan’.

### Exercise 01
Please make a select statement which returns names , ages for all women from the city ‘Kazan’. Yep, and please sort result by name.

### Exercise 02
Please make 2 syntax different select statements which return a list of pizzerias (pizzeria name and rating) with rating between 3.5 and 5 points (including limit points) and ordered by pizzeria rating.
- the 1st select statement must contain comparison signs  (<=, >=);
- the 2nd select statement must contain `BETWEEN` keyword.

### Exercise 03
Please make a select statement that returns the person identifiers (without duplicates) who visited pizzerias in a period from January 6, 2022 to January 9, 2022 (including all days) or visited pizzerias with identifier 2. Also include ordering clause by person identifier in descending mode.

### Exercise 04
Please make a select statement which returns one calculated field with name ‘person_information’ in one string like described in the next sample:
`Anna (age:16,gender:'female',address:'Moscow')`
Finally, please add the ordering clause by calculated column in ascending mode.
Please pay attention to the quotation marks in your formula!

### Exercise 05 
Write a select statement that returns the names of people (based on an internal query in the `SELECT` clause) who placed orders for the menu with identifiers 13, 14, and 18, and the date of the orders should be January 7, 2022. Be careful with "Denied Section" before your work.
Please take a look at the pattern of internal query.
   ` SELECT 
	    (SELECT ... ) AS NAME  -- this is an internal query in a main SELECT clause
    FROM ...
    WHERE ...`
    
### Exercise 06
Use the SQL construction from Exercise 05 and add a new calculated column (use column name ‘check_name’) with a check statement a pseudocode for this check is given below) in the `SELECT` clause.

    if (person_name == 'Denis') then return true
        else return false

### Exercise 07
Let's apply data intervals to the `person` table. 
Please make an SQL statement that returns the identifiers of a person, the person's names, and the interval of the person's ages (set a name of a new calculated column as 'interval_info') based on the pseudo code below.

    if (age >= 10 and age <= 20) then return 'interval #1'
    else if (age > 20 and age < 24) then return 'interval #2'
    else return 'interval #3'

And yes... please sort a result by ‘interval_info’ column in ascending mode.

### Exercise 08
Create an SQL statement that returns all columns from the `person_order` table with rows whose identifier is an even number. The result must be ordered by the returned identifier.

### Exercise 09
Please make a select statement that returns person names and pizzeria names based on the `person_visits` table with a visit date in a period from January 07 to January 09, 2022 (including all days) (based on an internal query in the `FROM' clause).

Please take a look at the pattern of the final query.

    SELECT (...) AS person_name ,  -- this is an internal query in a main SELECT clause
            (...) AS pizzeria_name  -- this is an internal query in a main SELECT clause
    FROM (SELECT … FROM person_visits WHERE …) AS pv -- this is an internal query in a main FROM clause
    ORDER BY ...

## day01

## day02

## day03

## day04

## day05

## day06

## day07

## day08

## day09
