// Generated by CoffeeScript 1.3.3
(function() {

  define(["chan/server", "chan/notify", "templates/board", "templates/reply", "templates/post"], function(server, notify, board, reply, postTempl) {
    return function(_arg, templ) {
      var id, post;
      id = _arg.id, post = _arg.post;
      return server.ready(function() {
        return server.boards(function(err, boards) {
          if (err != null) {
            return notify.error("Error grabbing boards: " + err);
          }
          return server.thread(id, function(err, thread) {
            var _ref;
            if (err != null) {
              return notify.error("Error grabbing thread: " + err);
            }
            if (!$("#threadview")[0]) {
              $("#content").html(board({
                board: thread.board,
                boards: boards
              }));
            }
            $('#reply').html(reply({
              type: 'thread',
              id: id
            }));
            $("#replyForm").ajaxForm({
              dataType: 'json',
              error: function(req, err, erra) {
                return notify.error(req.responseText);
              }
            });
            $("#threadview").html(templ(thread));
            if (post != null) {
              $('html,body').animate({
                scrollTop: (_ref = $("#" + post._id).offset()) != null ? _ref.top : void 0
              }, 1000);
            }
            return server.subscribe.newPost(function(nthread, post) {
              var _ref1;
              if (nthread._id !== thread._id) {
                return;
              }
              nthread.post = post;
              $("#" + nthread._id).append(postTempl(nthread));
              return $('html,body').animate({
                scrollTop: (_ref1 = $("#" + post._id).offset()) != null ? _ref1.top : void 0
              }, 1000);
            });
          });
        });
      });
    };
  });

}).call(this);
