const db = require('./models.js');

let req = {
  body: {
    id: 'M1',
    product_name: 'Air Jordan 1 Retro High OG',
    size: 1,
    comfort: 1,
    durability: 1,
    rate: 5,
    username: 'mikekoo',
    location: 'Los Angeles, CA, US',
    upvote: 2,
    downvote: 0,
    comment: 'This shoe is great and comfy',
    title: 'Legendary Jordan',
    response: 'true',
    pre_launch: false,
    more_info: 'see if there are more products like Air Jordan 1',
    product_img: 'https://s3-us-west-1.amazonaws.com/cs-nike-fec/air-jordan-1-retro-high-og-shoe-WR35rK.jpg',
    price: '$160',
    sales: true,
    sales_price: '$105.97'
  }
}

db.saveDummyData(req);