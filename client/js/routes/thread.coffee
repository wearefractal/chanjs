define ["chan/server", "chan/notify", "templates/reply"], (server, notify, reply) ->
  ({id}, templ) ->
    server.ready ->
      server.thread id, (err, thread) ->
        return notify.error "Error grabbing threads: #{err}" if err?
        $("#threadview").html templ thread
        $('#threadreply').html reply type: 'thread', id: id