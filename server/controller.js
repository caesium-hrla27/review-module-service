const dbHelper = require('../database/dbHelper.js')

module.exports = {
  getPreview: (req, res) => {
    dbHelper.getPreview(req.query.productId)
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