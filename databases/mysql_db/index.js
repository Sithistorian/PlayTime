let mysql = require('mysql');

let connection = mysql.createConnection({
  host: 'localhost',
  user: 'student',
  password: 'student',
  database: 'heros'
})

connection.connect()

module.exports.connection = connection;