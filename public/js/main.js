// Generated by CoffeeScript 1.3.1
(function() {

  define(["chan/server", "chan/routes", "chan/notify"], function(server, routes, notify) {
    return server.ready(function(services) {
      return console.log("Connected - Available services: " + services);
    });
  });

}).call(this);
