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
      ratio = img.width/img.height
      height = img.height
      width = img.width
      while height > rule.height or width > rule.width
        height = height/ratio
        width = width/ratio

      canvas = new Canvas width, height
      ctx = canvas.getContext '2d'
      ctx.drawImage img, 0, 0, width, height
      canvas.toDataURL (err, uri) ->
        cb err, uri, basename file.path
    img.src = imgsrc