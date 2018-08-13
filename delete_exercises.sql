USE codeup_test_db;
SELECT 'Not my favorite year in music' AS 'Opinion';
SELECT 'Release date before 1991' AS ' ';
DELETE FROM albums WHERE release_date > 1991;
SELECT * FROM albums WHERE release_date > 1991;

SELECT 'This was a good time' AS 'Opinion';
SELECT 'Disco Genre' AS ' ';
DELETE FROM albums WHERE genre LIKE '%disco%';
SELECT * FROM albums WHERE genre = 'disco';

SELECT 'Way before my time' AS 'comment';
SELECT 'Albums by The Beatles' AS ' ';
DELETE FROM albums WHERE artist LIKE 'The Beatles';
SELECT * FROM albums WHERE artist = 'The Beatles';
