aggregateBoard = require '../aggregateBoard'

module.exports = (res, id, page) ->
  return res.send 'Missing Id' unless typeof id is 'string'
  return res.send 'Missing page' unless typeof page is 'number'

  aggregateBoard id, page, res.send