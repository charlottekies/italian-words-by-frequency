const DotenvPlugin = require("webpack-dotenv-plugin");

module.exports = {
  // ...
  plugins: [
    new DotenvPlugin({
      path: "./.env",
      safe: true,
      systemvars: true,
      silent: true,
      defaults: false,
    }),
    // ...
  ],
  // ...
};
