# Main application entry file. Please note, the order of loading is important.

# Module dependencies.
express = require 'express'

app = express()

# Express settings
require('./config/express')(app)

# Bootstrap routes
require('./config/routes')(app)

port = app.get 'port'
app.listen port, ->
  console.log "Express server listening on port #{port}"
