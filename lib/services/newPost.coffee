getAnonymousMessage = (args...) =>
  JSON.stringify
    service: 'newPost'
    args: args if args?

module.exports = ->

module.exports.publish = (thread, post) ->
  socket.send getAnonymousMessage thread, post for id, socket of vein.server.clients