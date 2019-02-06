const path = require('path');

module.exports = {
  entry: path.resolve(__dirname, './client/'),
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, './client/static')
  },
  module: {
    rules: [{
      test: /\.(js|jsx)$/,
      exclude: /node-module/,
      use: 'babel-loader',
    }]
  },
  context: __dirname,
  devServer: {
    proxy: {
      '/side-bar': 'http://localhost:3000'
    },
    contentBase: path.join(__dirname, './client/static'),
    https: false
  }
}