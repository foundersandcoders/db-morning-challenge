BEGIN;

DROP TABLE IF EXISTS books;

CREATE TABLE IF NOT EXISTS books (
    book_id          SERIAL     PRIMARY KEY,
    book_name    TEXT       NOT NULL,
    year        INTEGER,
    max_reservation_time   INTEGER,
    library     TEXT
);

INSERT INTO books (book_name, year, max_reservation_time, library) VALUES ('Javascript: The Good Parts', 2008, 14, 'The British Library');
INSERT INTO books (book_name, year, max_reservation_time, library) VALUES ('Linux in a Nutshell', 2009, 7, 'Abu-Salma library');
INSERT INTO books (book_name, year, max_reservation_time, library) VALUES ('PostgreSQL Server Programming - Second Edition', 2015, 10, 'The British Library');
INSERT INTO books (book_name, year, max_reservation_time, library) VALUES ('Don''t Make Me Think', 2000, 7, 'Finland national library');
INSERT INTO books (book_name, year, max_reservation_time, library) VALUES ('Pride and Prejudice', 1813, 21, 'The British Library');
INSERT INTO books (book_name, year, max_reservation_time, library) VALUES ('Harry Potter and the Philosopher''s Stone', 1998, 14, 'The British Library');

COMMIT;
