config = require '../config'
postToBoard = require './postToBoard'

module.exports = (req, res, next) ->
  return next() unless req.files?.file?
  {file} = req.files
  return res.send 'File too large' if file.size > config.images.full.size
  if req.body?.thread?
    replyToThread req, res, req.body, file
  else if req.body?.board?
    postToBoard req, res, req.body, file
  else res.end 'Invalid upload'