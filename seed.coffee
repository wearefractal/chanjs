async = require 'async'
mongo = require './lib/mongo'
Board = mongo.model 'Board'

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

mongo.wipe ->
  createBoard = (board, cb) ->
    Board.create board, -> cb()

  async.forEach boards, createBoard, (err) ->
    console.log err if err?
    console.log 'Done'
    #process.exit()