http = require 'http'
url = require 'url'
#events = require 'events'

methods = require './methods'
{capitalize} = require './utils'


class RequestWrapper #extends events.EventEmitter
  constructor: (@type, @url, @app)->
    @_funcs =
      beforeDo: []
      afterDo: []
      beforeEnd: []

  use: (middleware)->
    #middleware
    @


  doIt: (@_func)->
    @



class App
  constructor: ->
    @queryMap = {}

  listen: (server, args...)->
    if server instanceof http.Server
      @server = server
    else
      @server = http.createServer()
      @server.listen server, args...

    @server.on 'request', @_onRequest


  _onRequest: (request, responce)=>


  when: (type, url)->
    new RequestWrapper type, url, @


  methods.forEach (m)=>
    mName = "when + #{capitalize(m)}"
    @::[mName] = (url)->
      @when m, url


a = new App
a.listen 1234
