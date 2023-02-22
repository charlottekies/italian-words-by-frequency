const HtmlWebpackPlugin = require("html-webpack-plugin");
const DotenvPlugin = require("webpack-dotenv-plugin");
const path = require("path");

module.exports = {
  // ...
  entry: "./src/index.js",
  output: {
    path: path.resolve(__dirname, "dist"),
    filename: "bundle.js",
  },
  plugins: [
    new DotenvPlugin({
      path: "./.env",
      safe: true,
      systemvars: true,
      silent: true,
      defaults: false,
    }),
    new HtmlWebpackPlugin({
      template: "./src/index.html",
      filename: "index.html",
      inject: "body",
    }),
  ],
  // ...
};
