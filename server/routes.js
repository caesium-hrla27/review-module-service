const router = require('express').Router();
const controller = require('./controller.js')

router
  .route('/review/preview')
  .get(controller.getPreview)

router
  .route('/review/fullview')
  .get(controller.getFullview)

router
  .route('/more-info')
  .get(controller.getInfo)

module.exports = router;