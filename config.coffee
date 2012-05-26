module.exports =
  images:
    location: __dirname + '/store/'
    maxsize: '3mb'
    full:
      height: 5000
      width: 5000
    thumbnails:
      height: 200
      width: 200
  mongo:
    host: "mongodb://localhost:27017/chanjs"