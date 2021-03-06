const path = require('path');

module.exports = {
  entry: {
    app: path.join(__dirname, './frontend/src/index.js')
  },
  output: {
    path: path.join(__dirname, './frontend/static/frontend'),
    filename: 'main.js'
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader'
        }
      }
    ]
  }
}