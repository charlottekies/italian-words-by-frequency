const { defineConfig } = require("@vue/cli-service");
const Dotenv = require("dotenv-webpack");

module.exports = defineConfig({
  publicPath:
    process.env.NODE_ENV === "production"
      ? "/italian-words-by-frequency/"
      : "/",
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
