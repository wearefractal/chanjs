define ["chan/server", "chan/notify", "templates/thread", "templates/reply"], (server, notify, thread, reply) ->
  ({id, page}, templ) ->
    page = (if page then parseInt page else 0)
    server.ready ->
      server.board id, page, (err, {board, threads}) ->
        return notify.error "Error grabbing threads: #{err}" if err?
        $("#content").html templ board: board
        $('#reply').html reply type: 'board', id: id
        $('#threadview').append thread t for t in threads