define ["dermis"], (dermis) ->
  dermis.route '/'
  dermis.route '/boards'
  dermis.route '/board/:id'
  dermis.route '/board/:id/:page'
  dermis.route '/thread/:id'
  dermis.route '/reply/:id'
  dermis.route '/image/:id'

  dermis.init()