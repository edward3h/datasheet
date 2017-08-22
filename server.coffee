express = require 'express'
app = express()
fs = require 'fs'
PORT = process.env.PORT

app.use(express.static('public'))


app.set 'view engine', 'jade'

app.listen PORT, ->
  console.log "Your app is running on #{PORT}"

# ROUTES

app.get '/', (request, response) ->
  response.render 'index',
    title: 'Detachmentizer',
    messages: ["a"]
