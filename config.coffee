try
  mongo = JSON.parse(process.env.VCAP_SERVICES)["mongodb-1.8"][0]["credentials"]
  appfog = "mongodb://#{mongo.username}:#{mongo.password}@#{mongo.hostname}:#{mongo.port}/#{mongo.db}"

module.exports =
  app:
    port: process.env.VCAP_APP_PORT or process.env.PORT or 8080
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
    host: appfog or "mongodb://localhost:27017/chanjs"