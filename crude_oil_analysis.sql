/*print out first 10 rows of crude_oil dataset*/
SELECT * 
FROM "Ebuka".crude_oil
LIMIT 10;

/*query to calculate the sum of closing values per month per year*/
SELECT T.month, T.year, SUM("Closing Value")
FROM (
	SELECT DATE_PART('month', "Date") as month,DATE_PART('year', "Date") as year, "Closing Value"
	FROM "Ebuka".crude_oil
) AS T
GROUP BY T.month, T.year
ORDER BY T.year, T.month;


SELECT T.month, T.year, SUM("Closing Value")
FROM (
	SELECT DATE_PART('month', "Date") as month,DATE_PART('year', "Date") as year, "Closing Value"
	FROM "Ebuka".crude_oil
) AS T
GROUP BY T.year, T.month
HAVING T.month = 9
ORDER BY T.year, T.month;

/*QUERY to return the number of closing values per year*/
SELECT T.year, COUNT("Closing Value") AS cnt
FROM (
	SELECT DATE_PART('month', "Date") as month,DATE_PART('year', "Date") as year, "Closing Value"
	FROM "Ebuka".crude_oil
) AS T
GROUP BY T.year
ORDER BY cnt DESC;

/*QUERY to return the number of closing values per month*/
SELECT T.month, COUNT("Closing Value") AS cnt
FROM (
	SELECT DATE_PART('month', "Date") as month,DATE_PART('year', "Date") as year, "Closing Value"
	FROM "Ebuka".crude_oil
) AS T
GROUP BY T.month
ORDER BY cnt DESC;

/*the two immediate queries above is so to see if the number of information collected will have an impact on the results*/


ALTER TABLE "Ebuka".crude_oil
ADD COLUMN month INT,
ADD COLUMN year INT,
ADD COLUMN time_period VARCHAR;

UPDATE "Ebuka".crude_oil
SET month = DATE_PART('month',"Date")

UPDATE "Ebuka".crude_oil
SET year = DATE_PART('year',"Date");

SELECT * 
FROM "Ebuka".crude_oil
WHERE year = 2018
LIMIT 10;

UPDATE "Ebuka".crude_oil
SET time_period = 'first period'
WHERE year BETWEEN 1986 AND 1995;

UPDATE "Ebuka".crude_oil
SET time_period = 'second period'
WHERE year BETWEEN 1996 AND 2005;

UPDATE "Ebuka".crude_oil
SET time_period = 'third period'
WHERE year BETWEEN 2006 AND 2015;

UPDATE "Ebuka".crude_oil
SET time_period = 'fourth period'
WHERE year BETWEEN 2016 AND 2025;

SELECT time_period, SUM("Closing Value") as total
FROM "Ebuka".crude_oil
GROUP BY time_period
ORDER BY total DESC;

SELECT time_period, COUNT("Closing Value") as total
FROM "Ebuka".crude_oil
GROUP BY time_period
ORDER BY total DESC;

SELECT year, SUM("Closing Value") as total
FROM "Ebuka".crude_oil
GROUP BY year
ORDER BY total DESC;

SELECT month, SUM("Closing Value") as total
FROM "Ebuka".crude_oil
GROUP BY month
ORDER BY total;

