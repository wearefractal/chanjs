db = require 'mongoose'
Board = db.model 'Board'
Thread = db.model 'Thread'
Post = db.model 'Post'
transformImage = require './transformImage'

module.exports = (req, res, {board, author, title, text}, file) ->
  Board.findOne {id:board}, (err, b) ->
    return res.end "Error querying boards: #{err}" if err?
    return res.end 'Invalid board' unless b?
    transformImage file, 'original', (err, thumb, img) ->
      return res.end "Error resizing image: #{err}" if err?
      Thread.create {board:b}, (err, nthread) ->
        return res.end "Error saving thread: #{err}" if err?
        Post.create
          title: title
          author: author
          text: text
          thread: nthread
          thumbnail: thumb
          image: img
        , (err, p) ->
          return res.end "Error saving post: #{err}" if err?
          res.statusCode = 301
          res.setHeader 'Location', "/#/thread/#{nthread._id}"
          return res.end()