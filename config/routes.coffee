# Controllers
application = require '../app/controllers/application_controller'

# Expose application routes

module.exports = (app) ->

  app.get '/', application.index
