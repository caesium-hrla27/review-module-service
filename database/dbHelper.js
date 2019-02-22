const Sequelize = require('sequelize');
const sequelize = require('./index.js');

const { Product, Review } = require('./models.js');

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
          pre_launch: req.pre_launch,
        }],
      }, {
        include: [{
          association: Product.Reviews,
        }],
      }));
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
        productId: req.productId,
      }));
  },
  getProductDetail: (reqProductId) => {
    return Product.find({
      where: {
        id: reqProductId,
      },
    });
  },
  getPreview: (reqProductId) => {
    return Review.findAll({
      limit: 10,
      where: {
        productId: reqProductId,
      },
      order: [['createdAt', 'DESC']],
    });
  },
  getCount: (reqProductId) => {
    return Review.count({
      where: {
        productId: reqProductId,
      },
    });
  },
  getFullReviews: (reqProductId) => {
    return Review.findAll({
      limit: 3,
      where: {
        productId: reqProductId,
      },
      // include: [{
      //   model: Product,
      //   required: false,
      //   as: 'productID',
      //   attributes: ['ShoeID'],
      // }],
      order: [[ 'createdAt', 'DESC' ]],
    })
    // .then((err, reviews) => {
    //   if (err) {
    //     console.error(err);
    //   } else {
    //     console.log(reviews);
    //   }
    // })
  },
};

module.exports.getFullReviews('M1');
