module.exports =
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
    host: "mongodb://localhost:27017/chanjs"