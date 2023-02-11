# Net::HTTP

## GET with Multiple Values featuring Basic Auth

```ruby
require 'json'
require 'net/http'
require 'uri'

uri = URI('https://api.example.com/path')
uri.user = ENV['user']
uri.password = ENV['password']

params = { id: 1 }

uri.query = URI.encode_www_form(params) if params
req = Net::HTTP::Get.new(uri)
req.basic_auth(uri.user, uri.password)

res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') do |http|
  http.request(req)
end
raise StandardError.new, [res.code, res.message] unless res.code == '200'

puts JSON.parse(res.body)
```

<https://github.com/ruby/net-http/blob/master/lib/net/http.rb>

## POST with Multiple Values featuring Basic Auth

```ruby
require 'json'
require 'net/http'
require 'uri'

uri = URI('https://api.example.com/path')
uri.user = ENV['user']
uri.password = ENV['password']

params = { id: 1 }

res = Net::HTTP.post_form(uri, params)
raise StandardError.new, [res.code, res.message] unless res.code == '200'

puts JSON.parse(res.body)
```

<https://github.com/ruby/net-http>

## POST with Multiple Values featuring Basic Auth for JSON

```ruby
require 'json'
require 'net/http'
require 'uri'

uri = URI('https://api.example.com/path')
uri.user = ENV['user']
uri.password = ENV['password']

params = { id: 1 }

req = Net::HTTP::Post.new(uri)
req.basic_auth(uri.user, uri.password)
req.body = params.to_json
req.content_type = 'application/json'

res = Net::HTTP.start(uri.hostname, uri.post, use_ssl: uri.scheme == 'https') do |http|
  http.request(req)
end
raise StandardError.new, [res.code, res.message] unless res.code == '200'

puts JSON.parse(res.body)
```

<https://github.com/ruby/net-http/blob/master/lib/net/http/requests.rb>
