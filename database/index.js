const Sequelize = require('sequelize');
const sequelize = new Sequelize('review_module', 'kooma', ' ', {
  host: 'localhost',
  dialect: 'postgres',

  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  },

  operatorsAliases: false
});

module.exports = sequelize;