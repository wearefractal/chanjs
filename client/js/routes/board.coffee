define ["chan/server", "chan/notify"], (server, notify) ->
  ({id, page}, templ) ->
    page = (if page then parseInt page else 0)
    server.ready ->
      server.board id, page, (err, threads) ->
        return notify.error "Error grabbing threads: #{err}" if err?
        $("#content").html templ threads: threads