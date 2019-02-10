const Sequelize = require('sequelize');
const sequelize = require('./index.js');

const Product = sequelize.define('product', {
  id: {
    type: Sequelize.STRING,
    unique: true,
    primaryKey: true,
  },
  product_name: {
    type: Sequelize.STRING,
    unique: true,
  },
  more_info: Sequelize.TEXT,
  product_img: Sequelize.STRING,
  price: Sequelize.STRING,
  sales: Sequelize.BOOLEAN,
  sales_price: Sequelize.STRING,
});

const Review = sequelize.define('review', {
  id: {
    type: Sequelize.INTEGER,
    unique: true,
    primaryKey: true,
    autoIncrement: true,
  },
  size: Sequelize.INTEGER,
  comfort: Sequelize.INTEGER,
  durability: Sequelize.INTEGER,
  rate: Sequelize.INTEGER,
  username: Sequelize.STRING,
  location: Sequelize.TEXT,
  upvote: Sequelize.INTEGER,
  downvote: Sequelize.INTEGER,
  comment: Sequelize.TEXT,
  title: Sequelize.TEXT,
  response: Sequelize.TEXT,
  pre_launch: Sequelize.BOOLEAN,
});

Product.Reviews = Product.hasMany(Review);

module.exports = {
  Product,
  Review,
};