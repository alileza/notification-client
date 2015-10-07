request = require 'request'

class NotificationClient
	constructor: ({ host, port }) ->
		@host = host
		@port = port

	sendmail: (body, cb) ->
		request 
			method: 'POST'
			uri: "http://#{@host}:#{@port}/send-mail?#{Math.random()}"
			headers: { 'Content-Type' : 'application/json' }
			body: JSON.stringify body
		, (err, response, body) ->
			try
				message = JSON.parse body
			
			return cb null, message

NC = new NotificationClient
			host: "localhost"
			port: 1312

NC.sendmail {}, (err, response) ->
	console.dir response
	# console.dir response