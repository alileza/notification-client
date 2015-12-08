# Mail Client

This is just a simple http request, to simplify trigger [Mail Server](https://github.com/alileza/mail-server) send an email.

### Installation

```sh
$ npm install mail-client --save
```

### Example
#### Using Coffeescript
```
#!coffeescript

MailClient = require 'mail-client'

client = new MailClient
			host: "localhost"
			port: 1312

client.sendmail {}, (err, response) ->
	if err
		return console.error err

	console.log response

```
	
### Mail Server
[NodeJS Mail Server](https://github.com/alileza/mail-server)
