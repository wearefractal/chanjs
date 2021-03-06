define ["chan/server", "chan/notify", "templates/thread", "templates/reply"], (server, notify, thread, reply) ->
  ({id, page}, templ) ->
    page = (if page then parseInt page else 0)
    server.ready ->
      server.boards (err, boards) ->
        return notify.error "Error grabbing boards: #{err}" if err?

        server.board id, page, (err, {board, threads}) ->
          return notify.error "Error grabbing threads: #{err}" if err?
          $("#content").html templ board: board, boards: boards
          $('#reply').html reply type: 'board', id: id
          $("#replyForm").ajaxForm
            dataType: 'json'
            error: (req, err, erra) -> notify.error req.responseText
            success: (data) -> rooter.hash.value "#/thread/#{data.thread}"
          $('#threadview').append thread t for t in threads
          #$('.lazy').jail effect: 'fadeIn'