db = require 'mongoose'
async = require 'async'
config = require '../config'

loadModel = (name) -> db.model name, require "./models/#{name}"

db.connect config.mongo.host
loadModel "Board"
loadModel "Thread"
loadModel "Post"

db.wipe = (cb) ->
  async.parallel (m.remove.bind m for _, m of db.models), cb

module.exports = db