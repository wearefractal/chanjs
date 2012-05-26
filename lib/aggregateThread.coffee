db = require 'mongoose'
Thread = db.model 'Thread'
async = require 'async'

# TODO: split out aggregateThread
module.exports = (id, cb) ->
  Thread.findById id, (err, thread) ->
    return cb err if err?
    return cb "No thread found" unless thread?
    thread.posts (err, posts) ->
      return cb err if err?
      thread.original = posts[0]
      thread.replies = posts[1..]
      cb null, thread
