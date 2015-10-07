request = require 'request'

class NotificationClient
	constructor: ({ host, port }) ->
		@host = if host then host else 'localhost'
		@port = if port then port else 1312
 
	sendmail: (body, cb) ->
		request 
			method: 'POST'
			uri: "http://#{@host}:#{@port}/send-mail"
			headers: { 'Content-Type' : 'application/json' }
			body: JSON.stringify body
		, (err, response, body) ->
			try
				message = JSON.parse body
			
			return cb null, message


exports.NotificationClient = NotificationClient