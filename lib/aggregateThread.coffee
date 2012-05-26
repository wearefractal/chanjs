db = require 'mongoose'
Thread = db.model 'Thread'
async = require 'async'

module.exports = (id, cb) ->
  Thread.findById(id).populate('board').run (err, thread) ->
    return cb err if err?
    return cb "No thread found" unless thread?
    thread.posts (err, posts) ->
      return cb err if err?
      thread.original = posts[0]
      thread.replies = posts[1..]
      cb null, thread
