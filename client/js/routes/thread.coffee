define ["chan/server", "chan/notify", "templates/board", "templates/reply"], (server, notify, board, reply) ->
  ({id, post}, templ) ->
    server.ready ->
      server.thread id, (err, thread) ->
        return notify.error "Error grabbing thread: #{err}" if err?
        $("#content").html board board: thread.board unless $("#threadview")[0]
        $('#reply').html reply type: 'thread', id: id
        $("#replyForm").ajaxForm
          dataType: 'json'
          success: (data) -> rooter.hash.value "#/thread/#{data.thread}/#{data.post}"
        $("#threadview").html templ thread
        #$('.lazy').jail effect: 'fadeIn'
        scroll(0, $("##{post}").position().top) if post?