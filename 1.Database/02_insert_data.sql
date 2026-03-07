insert into books (id, title, publication_year, pages) values
(1, 'Flower for Algernon', 1959, 311),
(2, 'Frankenstein', 1818, 352),
(3, 'Essensialism', 2014, 234),
(4, 'The Godfather', 1969, 400),
(5, 'The Collectot', 1963, 304),
(6, 'The Cruel Prince', 2017, 399),
(7, 'The Wicked King', 2019, 336),
(8, 'The Queen of Nothing', 2019, 320),
(9, 'Then She Was Gone', 2017, 304),
(10, 'The Shadow of the Wind', 2001, 576);

insert into authors(id, name, coutry) values
(1, 'Daniel Keyes', 'USA'),
(2, 'Marry Wollstinecraft Shelley', 'England'),
(3, 'Greg McKeown', 'England'),
(4, 'Mario Puzo', 'USA'),
(5, 'John Fowles', 'England'),
(6, 'Holly Black', 'USA'),
(7, 'Lisa Jewell', 'England'),
(8, 'Carlos Ruiz Zafon', 'Spain');

INSERT INTO genres (id, name) VALUES
(1, 'Science Fiction'),
(2, 'Gothic Fiction'),
(3, 'Self-Help'),
(4, 'Crime'),
(5, 'Psychological Thriller'),
(6, 'Fantasy'),
(7, 'Thriller'),
(8, 'Historical Fiction');

insert into languages (id, name) values
(1, 'English'),
(2, 'Polish');

INSERT INTO book_authors (book_id, authors_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 6),
(8, 6),
(9, 7),
(10, 8);

INSERT INTO book_genres (book_id, genre_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 6),
(8, 6),
(9, 7),
(10, 8);

INSERT INTO book_languages (book_id, language_id) VALUES
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1),
(8,1),
(9,1),
(10,1);
