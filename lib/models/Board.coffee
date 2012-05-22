db = require 'mongoose'
{Schema} = db

board = new Schema
  id:
    type: String
    required: true
    index:
      unique: true

  name:
    type: String
    required: true
    index:
      unique: true
      
  category:
    type: String
    required: true

board.methods.threads = (page, cb) ->
  Thread = db.model 'Thread'
  Thread.find({board: @_id}).desc('bumped').skip(page*10).exec cb
  return

module.exports = board