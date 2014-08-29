http = require 'http'
url = require 'url'

methods = require 'methods'
{capitalize} = require './utils'

class RequestWrapper
  constructor: (@type, @url, @app)->


class App
  constructor: ->
    @queryMap = {}

  listen: (server)->
    if server instanceof http.Server
      @server = server
    else
      @server = http.createServer()
      @server.listen arguments...

    @server.on 'request', @_onRequest


  _onRequest: (request, responce)=>


  when: (type, url)->
    new RequestWrapper type, url, @


  methods.forEach (m)=>
    @::['when'+capitalize(m)] = (url)->
      @when m, url

  #doThe: ->

a = new App
a.listen 1234
