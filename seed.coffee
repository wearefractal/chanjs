async = require 'async'
redis = require './lib/redis'
mongo = require './lib/mongo'
Board = mongo.model 'Board'
Thread = mongo.model 'Thread'
Post = mongo.model 'Post'

boards = [
  name: 'Video Games'
  id: 'v'
  category: 'Interests'
,
  name: 'Comics & Cartoons'
  id: 'co'
  category: 'Interests'
,
  name: 'Technology'
  id: 'g'
  category: 'Interests'
,
  name: 'Television & Film'
  id: 'tv'
  category: 'Interests'
,
  name: 'Weapons'
  id: 'k'
  category: 'Interests'
,
  name: 'Auto'
  id: 'o'
  category: 'Interests'
,
  name: 'Animals & Nature'
  id: 'an'
  category: 'Interests'
,
  name: 'Traditional Games'
  id: 'tg'
  category: 'Interests'
,
  name: 'Sports'
  id: 'sp'
  category: 'Interests'
,
  name: 'Science & Math'
  id: 'sci'
  category: 'Interests'
,
  name: 'International'
  id: 'int'
  category: 'Interests'
]

threads = [
    board: 'v'
  ,
    board: 'v'
]

posts = [
    title: 'so high i can fly'
    image: 'http://boards.420chan.org/b/thumb/1337641580894s.jpg'
    text: 'so twisted rite now idonteven'
  ,
    text: 'op is a faggot'
  ,
    author: 'sage'
    image: 'http://boards.420chan.org/stim/src/1337636391955.jpg'
    text: 'sage goes in all fields sage goes in all fields sage goes in all fields sage goes in all fields'
  ,
    image: 'http://boards.420chan.org/weed/thumb/1337638078647s.jpg'
    text: 'i am disappoint'
]

mongo.wipe ->
  createBoard = (board, cb) ->
    Board.create board, (err, b) ->
      return cb err if err?

      createThread = (thread, cb) ->
        thread.board = b
        Thread.create thread, (err, t) ->
          return cb err if err?

          createPost = (post, cb) ->
            post.thread = t
            Post.create post, cb
          async.forEach posts, createPost, cb

      async.forEach threads, createThread, cb

  async.forEach boards, createBoard, (err) ->
    console.log err if err?
    console.log 'Done'
    process.exit()