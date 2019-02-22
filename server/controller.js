const dbHelper = require('../database/dbHelper.js')

module.exports = {
  getProductDetail: (req, res) => {
    var id = req.params.id;
    dbHelper.getProductDetail(id)
      .then((productDetail) => {
        res.status(200).json(productDetail);
      })
      .catch((err) => {
        console.error(err);
        res.sendStatus(404);
      })
  },
  getCount: (req, res) => {
    var id = req.params.id;
    dbHelper.getCount(id)
      .then((count) => {
        res.status(200).json(count);
      })
      .catch((err) => {
        console.error(err);
        res.sendStatus(404);
      })
  },
  getPreview: (req, res) => {
    var id = req.query.productId;
    dbHelper.getPreview(id)
      .then((data) => {
        res.status(200).send(data);
      })
      .catch((err) => {
        console.error(err);
        res.sendStatus(404);
      });
  },
  getFullview: (req, res) => {
    var id = req.query.productId;
    dbHelper.getFullReviews(id)
      .then((reviews) => {
        res.status(200).send(reviews);
      })
      .catch((err) => {
        console.error(err);
        res.sendStatus(400);
      });
  },
  getInfo: (req, res) => {
    
  }
}