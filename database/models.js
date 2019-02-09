const Sequelize = require('sequelize');
const sequelize = require('./index.js');

const Product = sequelize.define('product', {
  id: {
    type: Sequelize.STRING,
    unique: true,
    primaryKey: true
  },
  product_name: {
    type: Sequelize.STRING,
    unique: true
  },
  more_info: Sequelize.STRING,
  product_img: Sequelize.STRING,
  price: Sequelize.STRING,
  sales: Sequelize.BOOLEAN,
  sales_price: Sequelize.STRING
});

const Review = sequelize.define('review', {
  id: {
    type: Sequelize.INTEGER,
    unique: true,
    primaryKey: true,
    autoIncrement: true
  },
  size: Sequelize.INTEGER,
  comfort: Sequelize.INTEGER,
  durability: Sequelize.INTEGER,
  rate: Sequelize.INTEGER,
  username: Sequelize.STRING,
  location: Sequelize.STRING,
  upvote: Sequelize.INTEGER,
  downvote: Sequelize.INTEGER,
  comment: Sequelize.STRING,
  title: Sequelize.STRING,
  response: Sequelize.STRING,
  pre_launch: Sequelize.BOOLEAN,
});

Product.Reviews = Product.hasMany(Review);

module.exports = {
  saveDummyData: (req, res) => {
    return sequelize.sync({ force: true })
      .then(() => Product.create({
        id: req.body.id,
        product_name: req.body.product_name,
        more_info: req.body.more_info,
        product_img: req.body.product_img,
        price: req.body.price,
        sales: req.body.sales,
        sales_price: req.body.sales_price,
        reviews: [{
          size: req.body.size,
          comfort: req.body.comfort,
          durability: req.body.durability,
          rate: req.body.rate,
          username: req.body.username,
          location: req.body.location,
          upvote: req.body.upvote,
          downvote: req.body.downvote,
          comment: req.body.comment,
          title: req.body.title,
          response: req.body.response,
          pre_launch: req.body.pre_launch
        }]
      }, {
        include: [{
          association: Product.Reviews
        }]
      }))
      .then(() => {
        console.log('saved');
      })
      .catch((err) => {
        console.error(err);
      })
  },
  load: (req, res) => {

  }
}