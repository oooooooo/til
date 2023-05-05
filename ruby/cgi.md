# CGI

## Server

### Gemfile

```ruby
# frozen_string_literal: true

source 'https://rubygems.org'

gem 'webrick'
```

### cgi_server.rb

```ruby
# frozen_string_literal: true

require 'webrick'

options = {
  DocumentRoot: './',
  CGIInterpreter: WEBrick::HTTPServlet::CGIHandler::Ruby,
  Port: 3000
}
server = WEBrick::HTTPServer.new(options)

server.mount('/', WEBrick::HTTPServlet::CGIHandler, './app.rb')

server.start
```
