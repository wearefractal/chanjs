// Generated by CoffeeScript 1.3.3
(function() {

  define(["chan/server", "chan/notify", "templates/reply"], function(server, notify, reply) {
    return function(_arg, templ) {
      var id;
      id = _arg.id;
      return server.ready(function() {
        return server.thread(id, function(err, thread) {
          if (err != null) {
            return notify.error("Error grabbing threads: " + err);
          }
          $("#threadview").html(templ(thread));
          return $('#threadreply').html(reply({
            type: 'thread',
            id: id
          }));
        });
      });
    };
  });

}).call(this);
