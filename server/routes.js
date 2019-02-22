const router = require('express').Router();
const controller = require('./controller.js')

router
  .route('/product-detail/:id')
  .get(controller.getProductDetail)

router
  .route('/review/count/:id')
  .get(controller.getCount)
  
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