define ["dermis"], (dermis) ->
  dermis.route '/'
  dermis.route '/create'
  dermis.route '/thread/:id'
  dermis.route '/reply/:id'
  dermis.route '/image/:id'

  dermis.init()