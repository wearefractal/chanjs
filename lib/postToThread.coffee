db = require 'mongoose'
Thread = db.model 'Thread'
Post = db.model 'Post'
transformImage = require './transformImage'
{publish} = require './services/newPost'

module.exports = (req, res, {thread, author, title, text}, file) ->
  Thread.findById thread, (err, t) ->
    return res.end "Error querying thread: #{err}" if err?
    return res.end 'Invalid thread' unless t?
    transformImage file, 'reply', (err, thumb, img) ->
      return res.end "Error resizing image: #{err}" if err?
      Post.create
        title: title
        author: author
        text: text
        thread: t
        thumbnail: thumb
        image: img
      , (err, p) ->
        return res.end "Error saving post: #{err}" if err?
        res.statusCode = 200
        res.setHeader 'Content-Type', 'application/json'
        res.end JSON.stringify
          thread: t._id
          post: p._id
        publish t, p
