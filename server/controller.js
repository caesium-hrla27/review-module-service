const dbHelper = require('../database/dbHelper.js')

module.exports = {
  getCount: (req, res) => {
    var id = req.query.productId;
    dbHelper.getCount(id)
      .then((count) => {
        res.status(200).send(count);
      })
      .catch((err) => {
        console.error(err);
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
      })
  },
  getFullview: (req, res) => {

  },
  getInfo: (req, res) => {
    
  }
}