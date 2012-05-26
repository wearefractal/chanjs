// Generated by CoffeeScript 1.3.3
(function() {

  define(["chan/server", "chan/notify", "templates/board", "templates/reply"], function(server, notify, board, reply) {
    return function(_arg, templ) {
      var id, post;
      id = _arg.id, post = _arg.post;
      return server.ready(function() {
        return server.thread(id, function(err, thread) {
          if (err != null) {
            return notify.error("Error grabbing thread: " + err);
          }
          if (!$("#threadview")[0]) {
            $("#content").html(board({
              board: thread.board
            }));
          }
          $('#reply').html(reply({
            type: 'thread',
            id: id
          }));
          $("#threadview").html(templ(thread));
          if (post != null) {
            return scroll(0, $("#" + post).position().top);
          }
        });
      });
    };
  });

}).call(this);
