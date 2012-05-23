gm = require 'gm'
config = require '../config'
{basename} = require 'path'

module.exports = (file, cb) ->
  return cb null, null unless file? and file.path and file.size isnt 0
  npath = "#{file.path}-thumb"
  gm(file.path).resize(240, 240).noProfile().write npath, (err) ->
    return cb err if err?
    cb null, basename file.path #npath