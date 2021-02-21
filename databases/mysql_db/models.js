const { Sequelize } = require('sequelize');

const sequelize = new Sequelize(
  'heros',
  'student',
  'student',
  {
    host: 'localhost',
    dialect: 'mysql'
  }
);

sequelize.authenticate();
