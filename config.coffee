try
  dotcloud = require('./environment.json').DOTCLOUD_DATA_MONGODB_URL

module.exports =
  app:
    port: process.env.PORT_WWW or process.env.PORT or 8080
  images:
    location: __dirname + '/store/'
    maxsize: '3mb'
    thumbnails:
      original:
        height: 250
        width: 250
      reply:
        height: 150
        width: 150
  mongo:
    host: dotcloud or "mongodb://localhost:27017/chanjs"