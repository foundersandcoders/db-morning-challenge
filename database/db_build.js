const fs = require('fs');

const buildDatabase = () => {
  const connection = require('./db_connection');
  const sql = fs.readFileSync(`${__dirname}/db_build.sql`).toString();

  connection.query(sql, (err, result) => {
    if (err) {
      console.log(err, "error");
    } else {
      console.log("database created");
    }
  });
};

buildDatabase();

module.exports = buildDatabase;
