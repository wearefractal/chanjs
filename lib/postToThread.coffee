db = require 'mongoose'
Thread = db.model 'Thread'
Post = db.model 'Post'
transformImage = require './transformImage'

module.exports = (req, res, {thread, author, title, text}, file) ->
  Thread.findById thread, (err, t) ->
    return res.end "Error querying thread: #{err}" if err?
    return res.end 'Invalid thread' unless t?
    transformImage file, (err, img) ->
      return res.end "Error resizing image: #{err}" if err?
      Post.create
        title: title
        author: author
        text: text
        thread: t
        image: img
      , (err, p) ->
        return res.end "Error saving post: #{err}" if err?
        res.statusCode = 301
        res.setHeader 'Location', "/#/thread/#{t._id}/#{p._id}"
        return res.end()