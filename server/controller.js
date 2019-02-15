const dbHelper = require('../database/dbHelper.js')

module.exports = {
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
      })
  },
  getFullview: (req, res) => {

  },
  getInfo: (req, res) => {
    
  }
}