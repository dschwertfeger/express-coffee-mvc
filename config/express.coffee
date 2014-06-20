# Module dependencies
express = require 'express'
path = require 'path'

module.exports = (app) ->

  # all environments
  app.set 'port', process.env.PORT or 3000
  app.set 'views', 'app/views'
  app.set 'view engine', 'jade'
  app.use express.favicon()
  app.use express.logger('dev')
  app.use express.json()
  app.use express.urlencoded()
  app.use express.methodOverride()
  app.use app.router
  app.use express.static 'public'

  # development only
  app.use express.errorHandler() if  app.get 'env' is 'development'
