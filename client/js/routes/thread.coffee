define ["chan/server", "chan/notify", "templates/board", "templates/reply", "templates/post"], (server, notify, board, reply, postTempl) ->
  ({id, post}, templ) ->
    server.ready ->
      server.thread id, (err, thread) ->
        return notify.error "Error grabbing thread: #{err}" if err?
        $("#content").html board board: thread.board unless $("#threadview")[0]
        $('#reply').html reply type: 'thread', id: id
        $("#replyForm").ajaxForm 
          dataType: 'json'
        $("#threadview").html templ thread
        #$('.lazy').jail effect: 'fadeIn'
        scroll(0, $("##{post}").position().top) if post?

        server.subscribe.newPost (nthread, post) ->
          return unless nthread._id is thread._id
          nthread.post = post
          $("##{nthread._id}").append postTempl nthread
