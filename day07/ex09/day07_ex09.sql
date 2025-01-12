SELECT address, round(MAX(age)-(MIN(age)/MAX(age::NUMERIC)),2) AS formula,ROUND(AVG(age),2) AS average, MAX(age)-(MIN(age)/MAX(age))>ROUND(AVG(age)) AS comparison
FROM person
GROUP BY address
ORDER BY 1