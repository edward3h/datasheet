var webpack = require("webpack");

module.exports = {
  entry: './lib/client.coffee',
  output: {
    filename: 'public/client.js'
  },
  module: {
    loaders: [{
      test: /\.coffee$/,
      loader: 'coffee-loader'
    }]
  }
}