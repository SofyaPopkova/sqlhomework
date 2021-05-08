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


ДЗ к лекции «Группировки, выборки из нескольких таблиц»:

SELECT j.name, COUNT(m.name) FROM jenres j
INNER JOIN jenres_musicians jm ON j.id = jm.jenres_id
INNER JOIN musicians m ON jm.musicians_id = m.id
GROUP BY j.name
ORDER BY COUNT(m.id);

SELECT COUNT(t.name), a.year FROM albums a
INNER JOIN tracks t ON a.id = t.id
GROUP BY a.year
HAVING a.year BETWEEN 2019 AND 2020
ORDER BY COUNT(t.name);

SELECT a.name, AVG(t.length) FROM albums a
INNER JOIN tracks t ON t.albums_id = a.id
GROUP BY a.name
ORDER BY AVG(t.length);

SELECT m.name FROM musicians m
WHERE m.name NOT IN
(SELECT m.name FROM musicians m
INNER JOIN musicians_albums ma ON m.id = ma.musicians_id
INNER JOIN albums a ON a.id = ma.albums_id
WHERE a.year = 2020)
ORDER BY m.name;

SELECT c.name FROM collections c
INNER JOIN collections_tracks ct ON c.id = ct.collections_id
INNER JOIN tracks t ON t.id = ct.tracks_id
INNER JOIN albums a ON a.id = t.albums_id
INNER JOIN musicians_albums ma ON ma.albums_id = a.id
INNER JOIN musicians m ON ma.musicians_id = m.id
WHERE m.name ILIKE '%%INXS%%'
ORDER BY c.name;

SELECT a.name FROM albums a
INNER JOIN musicians_albums ma ON a.id = ma.albums_id
INNER JOIN musicians m ON m.id = ma.musicians_id
INNER JOIN jenres_musicians jm ON jm.musicians_id = m.id
INNER JOIN jenres j ON j.id = jm.jenres_id
GROUP BY a.name
HAVING COUNT(j.name) > 1
ORDER BY a.name;

SELECT t.name FROM tracks t
LEFT JOIN collections_tracks ct ON t.id = ct.tracks_id
WHERE ct.tracks_id IS null
ORDER BY t.name;

SELECT m.name, t.length FROM tracks t
INNER JOIN albums a ON a.id = t.albums_id
INNER JOIN musicians_albums ma ON ma.albums_id = a.id
INNER JOIN musicians m ON m.id = ma.musicians_id
GROUP BY m.name, t.length
HAVING t.length = (SELECT MIN(length) FROM tracks)
ORDER BY m.name;

SELECT a.name FROM albums a
INNER JOIN tracks t ON t.albums_id = a.id
WHERE t.albums_id IN
(SELECT albums_id FROM tracks
GROUP BY albums_id
HAVING COUNT(id) = 
(SELECT COUNT(id) FROM tracks
GROUP BY albums_id
ORDER BY COUNT
LIMIT 1))
ORDER BY a.name;