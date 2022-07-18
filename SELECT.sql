SELECT name, year
FROM albums
WHERE year = 2018;

SELECT name, time FROM track
    WHERE time = (SELECT max(time) FROM track);

SELECT name FROM track
WHERE time >= 210;

SELECT name FROM collection
WHERE year BETWEEN 2018 AND 2020;

SELECT name FROM track
WHERE name LIKE '%MY%' or name like '%My%' or name like '%Мой%' or name like '%мой%';

SELECT name FROM artist
WHERE name NOT LIKE '% %';