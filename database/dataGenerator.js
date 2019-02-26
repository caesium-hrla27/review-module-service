const db = require('./dbHelper.js');
const fs = require('fs');
const csv = require('csv-parse')
const path = require('path');

// let data = {
//   id: 'M1',
//   product_name: 'Air Jordan 1 Retro High OG',
//   size: 1,
//   comfort: 1,
  // durability: 1,
  // rate: 5,
  // username: 'mikekoo',
  // location: 'Los Angeles, CA, US',
  // upvote: 2,
  // downvote: 0,
  // comment: 'This shoe is great and comfy',
  // title: 'Legendary Jordan',
  // response: 'true',
  // pre_launch: false,
  // more_info: 'see if there are more products like Air Jordan 1',
  // product_img: 'https://s3-us-west-1.amazonaws.com/cs-nike-fec/air-jordan-1-retro-high-og-shoe-WR35rK.jpg',
  // price: '$160',
  // sales: true,
  // sales_price: '$105.97'
// }

// db.saveDummyData(data);

let data = {
  productId: 'M1',
  size: 1,
  comfort: 1,
  durability: 1,
  rate: 3,
  username: 'grumpyCat',
  location: 'Los Angeles, CA, US',
  upvote: 10,
  downvote: 3,
  comment: `Meow… meooooow.. grumpymeowwww..`,
  title: 'Meoow',
  response: 'Cool',
  pre_launch: false
}

// db.seedDummy(req);

// Parse CSV
let productLog = path.resolve(__dirname, './Nike_data_scraping.csv');
var csvData=[];

// Function checkAndSeedProducts does not really work

// const checkAndSeedProducts = () => {
//   db.checkProducts((result) => {
//     if (result.count < 20) {
//       console.log('Seeding product data');
//     } else {
//       console.log('Data already sown');
//     }
//   })
// }

// Separated data seeding function to seed products

// fs.createReadStream(productLog)
// .pipe(csv({ 
//   delimiter: ',',
//   comment: '#',
// }))
// .on('data', function(csvrow) {
//     console.log(csvrow);
//     //do something with csvrow
//     csvData.push(csvrow);   
//     let product = {
//       id: csvrow[0],
//       product_name: csvrow[2],
//       product_img: csvrow[1],
//       price: csvrow[3],
//     }
//     db.seedProducts(product)
// })
// .on('error', (err) => {
//   console.error(err);
// })
// .on('end',function() {
//   //do something wiht csvData
//   console.log(csvData);
// });

// db.seedProducts
// checkAndSeedProducts();

// Initialize word bank
let subjectVerb = [
  "I feel", 
  "I am", 
  "I wish", 
  "I have", 
  "I got",
  "I need",
  "I wanted",
  "I grasp",
  "This was",
  "This pair was",
  "Those were",
  "This has",
  "This is",
  "This shoe is",
  "It looks",
  "This shoe is great and comfy that I ",
  "This shoe is horrible that I "
];
let adj = [
  "happy.", 
  "delighted.", 
  "grateful.", 
  "dreaded.", 
  "wasted.", 
  "white color.", 
  "meticulous.", 
  "miraculous.",
  "touched.",
  "disappointed.",
  "black color.",
  "red color.",
  "green color.",
  "more.",
  "great and comfy.",
  "good.",
  "meow"
];

// Initialize scale bank and product Id bank
let productTag = ["M", "W"];
let productDigit = [1,2,3,4,5,6,7,8,9,10];
let scale = [0, 0.5, 1];
let starRate = [0, 1, 2, 3, 4, 5];

// use open source id generator for user id
var mongoObjectId = function () {
  var timestamp = (new Date().getTime() / 1000 | 0).toString(16);
  return timestamp + 'xxxxxx'.replace(/[x]/g, function() {
      return (Math.random() * 16 | 0).toString(16);
  }).toLowerCase();
};

// Initialize location bank
let locationBank = [
  'Los Angeles, CA, USA', 
  'Paris, France', 
  'Seoul, Korea', 
  'San Francisco, CA, USA', 
  'Tokyo, Japan',
  'Taipei, Taiwan',
  'Beijing, China',
  'Princeton, NJ, USA',
  'New York, NY, USA',
  'Boston, MA, USA',
  'Denver, CO, USA',
  'Busan, Korea',
  'Mexico City, Mexico',
  'Rome, Italy'
]

// Create random integer generator
const randomIntGen = (myN) => {
  let rand = Math.floor(Math.random() * myN);
  if (rand === myN) {
    return myN - 1;
  } else {
    return rand;
  }
}

// create random sentence generator
const sentenceGen = (numb) => {
  let sentence = '';
  for (i = 0; i < numb; i++) {
    sentence += subjectVerb[randomIntGen(17)] + ' ' + adj[randomIntGen(17)] + ' ';
  }
  return sentence;
}

// Create random comment generator
const commentGenerator = function(numb) {
  let reviewsData = [];
  for (let i = 0; i < numb; i++) {
    let comment = sentenceGen(randomIntGen(10));
    let body = {
      size: scale[randomIntGen(3)],
      comfort: scale[randomIntGen(3)],
      durability: scale[randomIntGen(3)],
      rate: starRate[randomIntGen(5)],
      username: mongoObjectId(),
      location: locationBank[randomIntGen(14)],
      upvote: randomIntGen(100),
      downvote: randomIntGen(30),
      comment: comment,
      title: subjectVerb[randomIntGen(17)] + ' ' + adj[randomIntGen(17)],
      response: subjectVerb[randomIntGen(17)] + ' ' + adj[randomIntGen(17)],
      pre_launch: false,
      productId: `${productTag[randomIntGen(2)] + productDigit[randomIntGen(10)]}`,
    }
    reviewsData.push(body);
  }
  reviewsData.map((review) => {
    db.seedDummy(review)
    .then(() => console.log('saving comment'))
    .catch((err) => console.error(err));
  })
}

// commentGenerator(300);

let getAnyProduct = () => productTag[randomIntGen(2)] + productDigit[randomIntGen(10)];

module.exports = {
  getAnyProduct
}