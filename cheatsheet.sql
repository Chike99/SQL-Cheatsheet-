select * 
from bigtable
where column3 > 4
limit 10;
------ comment
SELECT * 
FROM movies
WHERE name LIKE 'T_e';
------
SELECT * 
FROM movies
WHERE name LIKE 'The %';
----
SELECT *
FROM movies 
WHERE imdb_rating IS NULL;
---
SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979;
-----
SELECT *
FROM movies
WHERE year <1985
AND genre = 'horror';
---
SELECT name, year, imdb_rating 
FROM movies
ORDER BY  imdb_rating ASC;
---
SELECT name,
 CASE
  WHEN imdb_rating > 8 THEN 'Fantastic'
  WHEN imdb_rating > 6 THEN 'Poorly Received'
  ELSE 'Avoid at All Costs'
 END AS 'Review'
FROM movies;
---
SELECT COUNT(*)
FROM movies;
---round up average to two decimal places
SELECT ROUND (AVG(price),2)
FROM fake_apps;
---
SELECT category, SUM(downloads)
FROM fake_apps
GROUP BY category;

---
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10; ---where there are more than 10 orders
---