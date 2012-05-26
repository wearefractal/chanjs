module.exports =
  images:
    location: __dirname + '/store/'
    maxsize: '3mb'
    thumbnails:
      height: 150
      width: 150
  mongo:
    host: "mongodb://localhost:27017/chanjs"