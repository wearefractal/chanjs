async = require 'async'
mongo = require './lib/mongo'
Board = mongo.model 'Board'
Thread = mongo.model 'Thread'
Post = mongo.model 'Post'

boards = [
  name: 'Random'
  id: 'b'
  category: 'Misc.'
,
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
    image: 'http://boards.420chan.org/b/thumb/1337648245849s.jpg'
    title: 'i believe i can fly'
    text: 'so high i could touch the sky'
  ,
    text: 'op is a [jolly good fella]'
  ,
    image: 'http://boards.420chan.org/b/thumb/1337733880451s.jpg'
    text: 'You’ve got to be kidding me. I’ve been further even more decided to use even go need to do look more as anyone can. Can you really be far even as decided half as much to use go wish for that? My guess is that when one really been far even as decided once to use even go want, it is then that he has really been far even as decided to use even go want to do look more like. It’s just common sense.'
  ,
    author: 'sage'
    text: 'sage goes in all fields sage goes in all fields sage goes in all fields sage goes in all fields'
  ,
    image: 'http://boards.420chan.org/weed/thumb/1337733093829s.jpg'
    text: 'no'
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