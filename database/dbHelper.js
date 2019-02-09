const Sequelize = require('sequelize');
const sequelize = require('./index.js');

const { Product, Review } = require('./models.js')

module.exports = {
  saveDummyData: (req) => {
    return sequelize.sync({ force: true })
      .then(() => Product.create({
        id: req.id,
        product_name: req.product_name,
        more_info: req.more_info,
        product_img: req.product_img,
        price: req.price,
        sales: req.sales,
        sales_price: req.sales_price,
        reviews: [{
          size: req.size,
          comfort: req.comfort,
          durability: req.durability,
          rate: req.rate,
          username: req.username,
          location: req.location,
          upvote: req.upvote,
          downvote: req.downvote,
          comment: req.comment,
          title: req.title,
          response: req.response,
          pre_launch: req.pre_launch
        }]
      }, {
        include: [{
          association: Product.Reviews
        }]
    }))
  },
  seedDummy: (req) => {
    return sequelize.sync()
      .then(() => Review.create({
        size: req.size,
        comfort: req.comfort,
        durability: req.durability,
        rate: req.rate,
        username: req.username,
        location: req.location,
        upvote: req.upvote,
        downvote: req.downvote,
        comment: req.comment,
        title: req.title,
        response: req.response,
        pre_launch: req.pre_launch,
        productId: req.productId
      }))
  },
  getPreview: (reqProductId) => {
    return Review.findAll({
      limit: 3,
      where: {
        productId: reqProductId
      },
      order:[['createdAt', 'DESC']]
    })
  }
}