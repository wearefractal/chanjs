gm = require 'gm'
config = require '../config'
{basename} = require 'path'

module.exports = (file, type, cb) ->
  return cb null, null unless file? and file.path and file.size isnt 0
  rule = config.images.thumbnails[type]
  npath = "#{file.path}-thumb"

  # semi-proportional resize
  gm(file.path).size (err, size) ->
    return cb err if err?
    ratio = size.width/size.height
    nheight = size.width/ratio
    nwidth = size.height/ratio

    gm(file.path)
    .resize(nheight, nwidth)
    .noProfile()
    .write npath, (err) ->
      return cb err if err?
      cb null, basename file.path #npath