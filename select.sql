SELECT name, year FROM albums
WHERE year = 2018;

SELECT name, length FROM tracks
ORDER BY length DESC
LIMIT 1;

SELECT name FROM tracks
WHERE length >= 3.5;

SELECT name FROM collections
WHERE year BETWEEN 2018 AND 2020;

SELECT name FROM musicians
WHERE NOT name LIKE '%% %%';

SELECT name FROM tracks
WHERE name ILIKE '%my%';