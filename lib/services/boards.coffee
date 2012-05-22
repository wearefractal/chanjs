db = require 'mongoose'
Board = db.model 'Board'

module.exports = (res) ->
  Board.find {}, res.send