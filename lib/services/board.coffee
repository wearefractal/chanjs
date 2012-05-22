db = require 'mongoose'
Board = db.model 'Board'
async = require 'async'

module.exports = (res, id, page) ->
  return res.send 'Missing Id' unless typeof id is 'string'
  return res.send 'Missing page' unless typeof page is 'number'

  Board.findOne {id: id}, (err, board) ->
    return res.send err if err?
    board.threads page, (err, threads) ->
      return res.send err if err?
      aggregate = (thread, cb) ->
        thread.posts (err, posts) ->
          return cb err if err?
          thread.original = posts[0]
          thread.replies = posts[1..]
          cb()

      async.forEach threads, aggregate, (err) ->
        return res.send err if err?
        res.send null, threads