BEGIN;

DROP TABLE IF EXISTS books;

CREATE TABLE IF NOT EXISTS books (
    book_id          SERIAL     PRIMARY KEY,
    book_name    TEXT       NOT NULL,
    year        INTEGER,
    max_reservation_time   INTEGER,
    library     TEXT           
);

COMMIT;
