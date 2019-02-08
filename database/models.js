const sequelize = require('./index.js');

const Product = sequelize.define('product', {
  product_id: {
    type: Sequelize.STRING,
    unique: true
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
  _id: {
    type: Sequelize.INTEGER,
    unique: true,
    autoIncrement: true
  },
  product_id: Sequelize.STRING,
  size: Sequelize.INTEGER,
  comfort: Sequelize.INTEGER,
  durability: Sequelize.INTEGER,
  rate: Sequelize.INTEGER,
  username: Sequelize.STRING,
  date: Sequelize.DATE,
  location: Sequelize.STRING,
  upvote: Sequelize.INTEGER,
  downvote: Sequelize.INTEGER,
  comment: Sequelize.STRING,
  title: Sequelize.STRING,
  response: Sequelize.STRING,
  pre_launch: Sequelize.BOOLEAN,
  response_date: Sequelize.DATE
});

Product.hasmany(Review, {foreignKey: 'product_id', sourceKey: 'product_id'});
Review.belongsTo(Product, {foreignKey: 'product_id', targetKey: 'product_id'});

module.exports = {
  saveDummyData: (req, res) => {
    return sequelize.sync()
      .then(() => Review.create({
        product_id: req.body.product_id,
        size: req.body.size,
        comfort: req.body.comfort,
        durability: req.body.durability,
        rate: req.body.rate,
        username: req.body.username,
        date: req.body.date,
        location: req.body.location,
        upvote: req.body.upvote,
        downvote: req.body.downvote,
        comment: req.body.comment,
        title: req.body.title,
        response: req.body.response,
        pre_launch: req.body.pre_launch,
        response_date: req.body.response_date
      }))
      .then(() => Product.create({
        product_id: req.body.product_id,
        product_name: req.body.product_name,
        more_info: req.body.more_info,
        product_img: req.body.product_img,
        price: req.body.price,
        sales: req.body.sales,
        sales_price: req.body.sales_price
      }))
  },
  load: (req, res) => {

  }
}