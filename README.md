# mail-client

## coffee example
{ NotificationClient } = require 'mail-client'

NC = new NotificationClient
			host: "localhost"
			port: 1312

NC.sendmail {}, (err, response) ->
	console.dir response
	
