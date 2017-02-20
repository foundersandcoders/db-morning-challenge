## Databases morning challenge

The purpose of this challenge is to construct complicated queries, learn about joins
and use sub-queries.

#### 5 - minutes setup:
 - Go to [elephantsql](https://www.elephantsql.com/).
 - Login via github.
 - Create a new instance , in order to create the new database.
 - Clone / fork this repo.
 - Type `cd db-morning-challenge` into your command line.
 - Type `npm install` in your command line.
 - Create a `config.env` file.
  - You can do so by typing `touch config.env` in the command line or manually in your favorite editor.
 - In the `config.env` file add a variable called `DB_URL`, and its value is the
  url provided after creating the database on elephantsql (clicking on the database
    created, Details tab and copying the url).
  - Run `node database/db_build.js`. (This step should log database created to your
    terminal and may take a few moments to finish).

By doing these steps you will have created a database and then running `db_build.js`
will create the tables.
Going to browser tab in elephantsql will allow you to view the tables and manipulate
them.

#### Warm up challenge:

One of the tables you have created is a books table:

| book_id | book_name | year | max_reservation_time | library |
| ------- | --------- | ---- | -------------------- | ------- |

your challenge is to construct a query that returns the book_id, book_name, max_reservation_time
of books that can be reserved for time that is greater than the avg reservation time
in the book's library.

*Hint: try using sub queries*

#### Level 2 challenge:

You have created 3 tables, mentors table, it includes the mentor's name and the
location where they're based:

| name | location |
| ---- |--------- |

a posts table, which includes the post's number and the name of the mentor who
posted it:

| num | mentor_name |
| --- |------------ |

a likes table, which includes the mentor's name who liked the post and the number
of the post they liked:

| mentor_name | post_num |
| ----------- |--------- |

The challenge:
- Construct a query that returns the number of likes every person got.
- Construct a query that returns the location and the post number, for posts that
  have been liked by a mentor from that location.

#### Level 3 challenge (bonus):

Building on the queries you just wrote (Level 2), Construct a query that returns
the average number of likes per post in each location.
