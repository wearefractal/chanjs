connect = require "connect"
Vein = require "vein"
mongo = require "./lib/mongo"
postReply = require "./lib/postReply"
config = require './config'

# Web server
app = connect()
app.use connect.responseTime()
app.use connect.favicon()
app.use connect.limit config.images.maxsize
app.use connect.staticCache()
app.use connect.static __dirname + '/public/'
app.use connect.static config.images.location
app.use connect.multipart 
  uploadDir: config.images.location
  limit: config.images.maxsize
  keepExtensions: true
app.use postReply

server = app.listen process.env.PORT or 8080

# Vein
vein = new Vein server
vein.addFolder __dirname + '/lib/services/'

console.log "Server started on 8080"