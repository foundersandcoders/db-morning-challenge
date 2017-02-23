## Databases morning challenge

The purpose of this challenge is to construct complicated queries, learn about joins and use some subqueries.

#### 5-minute setup:
- Clone / fork this repo: `$ git@github.com:shiryz/db-morning-challenge.git`
- cd into the repo in your command line `$ cd db-morning-challenge`
- Install dependencies with `$ npm install`
- In your browser, go to [ElephantSQL](https://www.elephantsql.com/)
- Log into ElephantSQL via GitHub
- Click on 'Create new instance' to create a new database
- Give your database a name, choose the 'Tiny Turtly' free plan, and select any data center from the list
- Click on the name of your new new database to see details; you'll need the URL. Copy this to your clipboard!
- Back in your command line, create a config.env file with the url of your new database. You can do that like this
  `$ echo "export DB_URL = {YOUR_COPIED_URL}" >> "config.env"`
- Build your database by running: `$ node database/db_build.js`

You're done!

#### Using ElephantSQL

Go to the 'browser' tab in ElephantSQL to view your tables and manipulate them.

For each of the challenges below, write and test your queries in ElephantSQL and save them in a text editor when you're happy with them.

#### Challenge 1

One of the tables you have created is a books table that looks like this:

| book_id | book_name | year | max_reservation_time | library |
| ------- | --------- | ---- | -------------------- | ------- |

your challenge is to construct a query that returns the following columns:
* `book_id`, 
* `book_name`, 
* `max_reservation_time`,
* `book_name max_reservation_time`
**AND** to return only the books that can be reserved for a time greater than the **average** reservation time for all books at the library *this* book is in.

*Hint: try using sub queries*

#### Challenge 2:

Your database contains 3 more tables:

**Mentors**
For storing details of FAC mentors.

| name | location |
| ---- |--------- |

**Posts**
For things that have been posted by mentors:

| num | mentor_name |
| --- |------------ |

**Likes**
For the likes posts have received, and the *person who liked it*

| mentor_name | post_num |
| ----------- |--------- |

**The challenge:**
- Construct a query that returns the names of mentors and the number of likes each mentor got, in total, for all their posts
- Construct a query that returns the location and the post number of posts that have been liked by a mentor from the same location as the author

#### Challenge 3 (bonus, you can try this one at home!)

Building on the queries you wrote in level 2, construct another query that returns the **average number of likes per post** in each location.
