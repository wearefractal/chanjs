db = require 'mongoose'
Board = db.model 'Board'
async = require 'async'

# TODO: split out aggregateThread
module.exports = (id, page, cb) ->
  Board.findOne {id: id}, (err, board) ->
    return cb err if err?
    return cb "No board found" unless board?
    board.threads page, (err, threads) ->
      return cb err if err?
      aggregate = (thread, cb) ->
        thread.posts (err, posts) ->
          return cb err if err?
          thread.original = posts[0]
          thread.replies = posts[1..]
          cb()

      async.forEach threads, aggregate, (err) ->
        return cb err if err?
        cb null, board: board, threads: threads