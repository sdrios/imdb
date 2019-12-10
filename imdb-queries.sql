SELECT * FROM title_basics 
WHERE "runtime_minutes" > 180;

SELECT * FROM title_basics
WHERE "start_year" > 2010;

SELECT * FROM title_basics
WHERE "primary_title" = 'The Dark Knight';

SELECT * FROM title_basics
WHERE ("start_year" > 2000
AND ("genres" LIKE '%Comedy%' AND "genres" LIKE '%Horror%'));

SELECT DISTINCT "title_type" FROM title_basics;

SELECT title_type, COUNT(title_type)
FROM title_basics
GROUP BY title_type
ORDER BY "count" ASC;

SELECT * FROM title_basics
WHERE "primary_title" IS DISTINCT FROM "original_title";

SELECT "primary_title", length(primary_title) AS "length"
FROM title_basics
ORDER BY "length" DESC;

SELECT * FROM title_basics
WHERE ("genres" LIKE '%Comedy%' AND "start_year" = 2018 AND runtime_minutes < 60)
OR ("genres" LIKE '%Documentary%' AND "start_year" = 1800);

SELECT * FROM title_basics
WHERE "tconst" = 'tt3467114';



