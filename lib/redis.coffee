back = require 'redback'
config = require '../config'

redback = back.createClient config.redis.port, config.redis.host
redback.client.auth config.redis.auth if config.redis.auth?

module.exports = redback