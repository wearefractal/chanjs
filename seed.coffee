async = require 'async'
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

threads = []
threads.push [
    title: 'so high i can fly'
    text: 'so twisted rite now idonteven'
  ,
    text: 'op is a faggot'
  ,
    author: 'sage'
    text: 'sage goes in all fields sage goes in all fields sage goes in all fields sage goes in all fields'
  ,
    text: 'i am disappoint'
]


mongo.wipe ->
  createBoard = (board, cb) ->
    Board.create board, (err, b) ->
      return cb err if err?

      createThread = (posts, cb) ->
        Thread.create {board: b}, (err, t) ->
          return cb err if err?

          createPost = (post, cb) ->
            post.thread = t
            Post.create post, cb
          async.forEachSeries posts, createPost, cb

      async.forEachSeries threads, createThread, cb

  async.forEach boards, createBoard, (err) ->
    console.log err if err?
    console.log 'Done'
    process.exit()