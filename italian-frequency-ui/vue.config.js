const { defineConfig } = require("@vue/cli-service");
const Dotenv = require("dotenv-webpack");

module.exports = defineConfig({
  transpileDependencies: true,
  configureWebpack: {
    plugins: [
      new Dotenv({
        systemvars: true,
      }),
    ],
    performance: {
      maxAssetSize: 1000000, // or whatever size limit you want to set
    },
  },
});
