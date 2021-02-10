const mysql = require('mysql');
const mongoose = require('mongoose');


const mysqlConnection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'heros'
});

mysqlConnection.connect();
console.log('Mysql is here');

//Mongodb

mongoose.connect('mongodb://localhost/NPCS');





module.exports = {mysqlConnection}

