-- 1. Show all books with their authors
SELECT b.title, a.name AS author
FROM books b
JOIN book_authors ba ON ba.book_id = b.id
JOIN authors a ON ba.authors_id = a.id;


-- 2. Show books with their genres
SELECT b.title, g.name AS genre
FROM books b
JOIN book_genres bg ON bg.book_id = b.id
JOIN genres g ON bg.genre_id = g.id;


-- 3. Show books published after 2000
SELECT title, publication_year
FROM books
WHERE publication_year > 2000;


-- 4. Count how many books each author wrote
SELECT a.name, COUNT(*) AS books_written
FROM authors a
JOIN book_authors ba ON a.id = ba.authors_id
GROUP BY a.name;


-- 5. Count books by genre
SELECT g.name, COUNT(*) AS books_count
FROM genres g
JOIN book_genres bg ON g.id = bg.genre_id
GROUP BY g.name;


-- 6. Show books in the Fantasy genre
SELECT b.title, g.name AS genre
FROM books b
JOIN book_genres bg ON bg.book_id = b.id
JOIN genres g ON bg.genre_id = g.id
WHERE g.name = 'Fantasy';


-- 7. Show full information about books
SELECT 
b.title,
a.name AS author,
g.name AS genre,
l.name AS language
FROM books b
JOIN book_authors ba ON ba.book_id = b.id
JOIN authors a ON ba.authors_id = a.id
JOIN book_genres bg ON bg.book_id = b.id
JOIN genres g ON bg.genre_id = g.id
JOIN book_languages bl ON bl.book_id = b.id
JOIN languages l ON bl.language_id = l.id;

-- Business Question 1
-- Which authors wrote the most books?

SELECT a.name, COUNT(*) AS books_written
FROM authors a
JOIN book_authors ba ON a.id = ba.authors_id
GROUP BY a.name
ORDER BY books_written DESC;
LIMIT 1;

-- Business Question 2
-- Which genre contains the most books?

SELECT g.name, COUNT(*) AS books_count
FROM genres g
JOIN book_genres bg ON g.id = bg.genre_id
GROUP BY g.name
ORDER BY books_count DESC;

-- Business Question 3
-- What are the newest books in the library?

SELECT title, publication_year
FROM books
ORDER BY publication_year DESC;

-- Business Question 4
-- Which books belong to the Fantasy genre?

SELECT b.title
FROM books b
JOIN book_genres bg ON bg.book_id = b.id
JOIN genres g ON bg.genre_id = g.id
WHERE g.name = 'Fantasy';

-- Business Question 5
-- Which languages are available in the library?

SELECT l.name, COUNT(*) AS books_available
FROM languages l
JOIN book_languages bl ON l.id = bl.language_id
GROUP BY l.name;



