module.exports =
  app:
    port: process.env.PORT or 8080
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
    host: (if process.env.NODE_ENV is 'production' then 'mongodb://nodejitsu:1d4fb321f6375e4882f107c4d69f61d8@staff.mongohq.com:10036/nodejitsudb851707505678' else "mongodb://localhost:27017/chanjs")