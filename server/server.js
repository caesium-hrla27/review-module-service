const express = require('express');
const PORT = 3003;
const path = require('path');
const router = require('./routes.js')
const data = require('../database/dataGenerator.js')

const app = express();

const morgan = require('morgan');
const parser = require('body-parser');
const cors = require('cors');

app.use(parser.json());
app.use(parser.urlencoded({ extended: true }));

app.use(morgan('dev'));
app.use(cors());

app.use(express.static(path.resolve(__dirname, '../client/static')));

app.use('/api', router);

app.listen(PORT, () => console.log(`Listenting to port: ${PORT}...`));