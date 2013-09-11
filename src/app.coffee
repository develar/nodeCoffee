http = require 'http'
myutil = require('./sub/aaa')
server = http.createServer (request, response) ->
  request.addListener 'end', ->
  response.writeHead 200, {'Content-Type': 'text/plain'}
  response.write myutil.helper(' My Coffee')
  response.end()
server.listen 9000


console.log('Server running at http://localhost:8000/')
