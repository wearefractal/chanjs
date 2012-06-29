define ["chan/server", "chan/notify", "templates/board", "templates/reply", "templates/post"], (server, notify, board, reply, postTempl) ->
  ({id, post}, templ) ->
    server.ready ->
      server.boards (err, boards) ->
        return notify.error "Error grabbing boards: #{err}" if err?
        server.thread id, (err, thread) ->
          return notify.error "Error grabbing thread: #{err}" if err?
          $("#content").html board board: thread.board, boards: boards unless $("#threadview")[0]
          $('#reply').html reply type: 'thread', id: id
          $("#replyForm").ajaxForm 
            dataType: 'json'
            error: (req, err, erra) -> notify.error req.responseText
          $("#threadview").html templ thread
          #$('.lazy').jail effect: 'fadeIn'
          if post?
            $('html,body').animate
              scrollTop: $("##{post._id}").offset()?.top
            , 1000

          server.subscribe.newPost (nthread, post) ->
            return unless nthread._id is thread._id
            nthread.post = post
            $("##{nthread._id}").append postTempl nthread
            $('html,body').animate
              scrollTop: $("##{post._id}").offset()?.top
            , 1000
