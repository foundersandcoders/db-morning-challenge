BEGIN;

DROP TABLE IF EXISTS books, mentors, posts, likes;

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

CREATE TABLE IF NOT EXISTS mentors (
    name    TEXT,
    location    TEXT
);

INSERT INTO mentors (name, location) VALUES ('Tom', 'London');
INSERT INTO mentors (name, location) VALUES ('Shireen', 'Nazareth');
INSERT INTO mentors (name, location) VALUES ('Emily', 'Nazareth');
INSERT INTO mentors (name, location) VALUES ('Steve', 'London');
INSERT INTO mentors (name, location) VALUES ('Jack', 'Nazareth');

CREATE TABLE IF NOT EXISTS posts (
    num    INTEGER,
    mentor_name    TEXT
);

INSERT INTO posts (num, mentor_name) VALUES (20, 'Steve');
INSERT INTO posts (num, mentor_name) VALUES (32, 'Shireen');
INSERT INTO posts (num, mentor_name) VALUES (44, 'Shireen');
INSERT INTO posts (num, mentor_name) VALUES (19, 'Tom');
INSERT INTO posts (num, mentor_name) VALUES (57, 'Shireen');

COMMIT;
