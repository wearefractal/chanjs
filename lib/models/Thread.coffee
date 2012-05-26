db = require 'mongoose'
{Schema} = db

thread = new Schema
  created:
    type: Date
    required: true
    default: Date.now

  bumped:
    type: Date
    required: true
    default: Date.now

  board:
    type: Schema.ObjectId
    ref: 'Board'
  
  original: {}
  replies: {}

thread.methods.posts = (cb) ->
  Post = db.model 'Post'
  Post.find({thread: @_id}).asc('created').exec cb

module.exports = thread