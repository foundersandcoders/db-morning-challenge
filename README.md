**Author**: [@shiryz](https://github.com/shiryz)  

**Maintainer**: [@shiryz](https://github.com/shiryz)  

## Contents

- [Intro](#Databases-morning-challenge)
- [Basic set up](#Basic-set-up)
- [Connect to Remote DB](#Connect-to-a-remote-database)
  - [CLI or Website](#pick-one)
  - [How to use](#Using-Heroku-databases)
- [Challenge 1](#Challenge-1)
- [Challenge 2](#Challenge-2)
  - [Challenge 2.I](#Challenge-pt-1)
  - [Challenge 2.II](#Challenge-pt-2)
- [Challenge 3](#challenge-3-bonus-you-can-try-this-one-at-home)

## Databases morning challenge

The purpose of this challenge is to connect to a remote database, construct complicated queries, learn about joins and use some subqueries.

### Basic set-up
- Fork this repo
- Clone your forked version.
- `cd` into the repo in your command line `$ cd db-morning-challenge`
- Install dependencies with `$ npm install`

### Connect to a remote database:

Using a local database is ok, but only you have access to it, as it is on your PC.

To share a database between multiple developers, we can use remote databases - databases that are hosted on the cloud. We then connect to them the same way we connect to our local ones, just using a different URL - each database will have its own unique url. 

Heroku has a service for hosting SQL databases - once you've create a heroku app (as you have been doing since week 4), you can then use a heroku `add-on` to add a database, either using the heroku command line interface (CLI) or on the website:

**NOTE: We are just creating a heroku `app` so that we can use the heroku remote database - our code doesn't actually make a usable website**


These should happen _after_ you have cloned and ran `npm i`

### Pick One:
<details>
<summary> Using the CLI </summary> 
<p>

- Create an app on Heroku `heroku create app-name-here --region eu` (If you haven't yet installed Heroku CLI see [here](https://devcenter.heroku.com/articles/heroku-cli)
- Push to Heroku `git push heroku master`
- Create a new database on Heroku: `heroku addons:create heroku-postgresql:hobby-dev --as USERS_DB`
- Find the database url, either on the heroku dashboard for your project, under settings (click reveal config vars), or by using `heroku config -s | grep USERS_DB` (note: make sure to remove the quotations around the url when using this method).
- Back in your command line, create a config.env file with the url of your new database. You can do that like this
  `$ echo "export DATABASE_URL = {YOUR_COPIED_DATABASE_URL}" >> "config.env"`
- Build your database by running: `$ node database/db_build.js`

</p>
</details>

<details>
<summary> Using the website </summary> 

<p>

- Log into the heroku website
- On the heroku dashboard, create a new app, giving it a unique name
- Go to the `Resources` table and search `postgres` in the `Add-ons` - select the free version of `Heroku Postgres` and click `Provision`
- Go to `Settings->Reveal Config Variables` to get the url of your database
- Back in your command line, create a config.env file with the url of your new database. You can do that like this:
  `$ echo "export DATABASE_URL = {YOUR_COPIED_DATABASE_URL}" >> "config.env"`
- Build your database by running: `$ node database/db_build.js`

</p>
</details>

### Using Heroku databases

You and your partner now both have access to the same database from the command line with `psql {YOUR_COPIED_DATABASE_URL}`

For each of the challenges below, write and test your queries in the command line and save them in a text editor when you're happy with them, so you can refer back to them later.

### Challenge 1

One of the tables you have created is a books table that looks like this:

| book_id | book_name | year | max_reservation_time | library |
| ------- | --------- | ---- | -------------------- | ------- |

your challenge is to construct a query that returns the following columns:
* `book_id`,
* `book_name`,
* `max_reservation_time`

**AND** to return only the books that can be reserved for a time greater than the **average** reservation time of *its own* library group. (hint: We're not trying to find the overall average across all libraries)

*Hint: try using sub queries*

You should expect to see this:

| book_id | book_name                                | max_reservation_time |
|---------|------------------------------------------|----------------------|
| 1       | Javascript: The Good Parts               | 21                   |
| 5       | Pride and Prejudice                      | 21                   |


### Challenge 2:

Your database contains 3 more tables:

**Mentors**
For storing details of FAC mentors.

| name | location |
| ---- |--------- |

**Posts**
For things that have been posted by mentors:

| id | mentor_name |
| --- |------------ |

**Likes**
For the likes posts have received, and the *person who liked it*

| mentor_name | post_id |
| ----------- |--------- |

#### Challenge Pt 1
- Construct a query that returns the names of mentors and the number of likes each mentor got, in total, for all their posts.

  You should expect to see this:

| mentor_name | count |
|-------------|-------|
| Shireen     | 9     |
| Tom         | 4     |
| Steve       | 4     |

#### Challenge Pt 2
- Construct a query that returns the location and the post id, for each of the likes. The post_id is the id of the post that has been liked and the location is the location of the mentor that did the liking.

  You should expect to see this:

| location | post_id |
|----------|----------|
| Nazareth | 20       |
| Nazareth | 44       |
| Nazareth | 19       |
| Nazareth | 57       |
| Nazareth | 32       |
| Nazareth | 20       |
| Nazareth | 19       |
| Nazareth | 44       |
| Nazareth | 20       |
| Nazareth | 19       |
| London   | 19       |
| London   | 57       |
| London   | 32       |
| London   | 44       |
| London   | 32       |
| London   | 44       |
| London   | 20       |

### Challenge 3 (bonus, you can try this one at home!)

Building on the queries you wrote in level 2, construct another query that returns the **average number of likes per post** in each location.

You should expect to see this:

| location | avg |
|----------|-----|
| London   | 4   |
| Nazareth | 3   |

