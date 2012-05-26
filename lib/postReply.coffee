config = require '../config'
postToThread = require './postToThread'
postToBoard = require './postToBoard'

module.exports = (req, res, next) ->
  return next() unless req.files?.file?
  {file} = req.files
  if req.body?.thread?
    postToThread req, res, req.body, file
  else if req.body?.board?
    postToBoard req, res, req.body, file
  else res.end 'Invalid upload'