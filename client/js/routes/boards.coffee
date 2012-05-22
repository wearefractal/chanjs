define ["chan/server", "chan/notify"], (server, notify) ->
  (_, templ) ->
    server.ready ->
      server.boards (err, boards) ->
        return notify.error "Error grabbing boards: #{err}" if err?
        $("#content").html templ boards: boards