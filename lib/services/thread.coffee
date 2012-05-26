aggregateThread = require '../aggregateThread'

module.exports = (res, id) ->
  return res.send 'Missing Id' unless typeof id is 'string'

  aggregateThread id, res.send