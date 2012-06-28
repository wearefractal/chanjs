{Image} = Canvas = require 'canvas'
config = require '../config'
{basename} = require 'path'
{readFile} = require 'fs'

module.exports = (file, type, cb) ->
  return cb() unless file? and file.path and file.size isnt 0
  return res.end "Invalid file type - only images are allowed." unless file.mime.indexOf('image/') is 0
  rule = config.images.thumbnails[type]

  # semi-proportional resize
  readFile file.path, (err, imgsrc) ->
    return cb err if err?
    img = new Image
    img.onerror = cb
    img.onload = ->
      hr = rule.height/img.height
      wr = rule.width/img.width
      ratio = (if (hr > wr) then wr else hr)
      height = ratio*img.height
      width = ratio*img.width

      canvas = new Canvas width, height
      ctx = canvas.getContext '2d'
      ctx.drawImage img, 0, 0, width, height
      canvas.toDataURL (err, uri) ->
        cb err, uri, basename file.path
    img.src = imgsrc