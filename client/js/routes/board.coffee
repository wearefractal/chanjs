define ["chan/server", "chan/notify", "templates/reply"], (server, notify, reply) ->
  ({id, page}, templ) ->
    page = (if page then parseInt page else 0)
    server.ready ->
      server.board id, page, (err, {board, threads}) ->
        return notify.error "Error grabbing threads: #{err}" if err?
        $("#content").html templ board: board, threads: threads
        $('#reply').html reply board: id