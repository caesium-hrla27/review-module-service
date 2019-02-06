const express = require('express');
const PORT = 3000;
const path = require('path');
const router = require('./routes.js')

const app = express();

const morgan = require('morgan');
const parser = require('body-parser');
const cors = require('cors');

app.use(parser.json());
app.use(parser.urlencoded({ extended: true }));

app.use(morgan('dev'));
app.use(cors());

app.use(express.static(path.resolve(__dirname, '../client/static')));

app.use('/side-bar', router);

app.listen(PORT, () => console.log(`Listenting to port: ${PORT}...`));