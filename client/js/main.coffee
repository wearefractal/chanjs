define ["chan/server", "chan/routes", "chan/notify"], (server, routes, notify) ->

  server.ready (services) ->
    console.log "Connected - Available services: #{services}"

  server.close ->
    notify.error 'Connection lost - reload to re-establish'