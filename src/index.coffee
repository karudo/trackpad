App = require './app'
Router = require './router'

createApp = ->
  new App

createApp.App = App
createApp.Router =  Router


module.exports = createApp

