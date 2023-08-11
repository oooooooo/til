# Sinatra

## Template

### Simple

```ruby
# frozen_string_literal: true
require 'sinatra'

set :bind, '0.0.0.0'
set :port, ENV['PORT'] || 3000

get '/' do
  'Hi'
end
```

### JSON

```ruby
# frozen_string_literal: true
require 'sinatra'

set :bind, '0.0.0.0'
set :port, ENV['PORT'] || 3000

configure do
  mime_type :json, 'application/json'
end

get '/' do
  content_type :json
  puts params.to_json
end

post '/' do
  params = JSON.parse(request.body.read)
  content_type :json
  { foo: params.foo }
end
```

## HTML

```html
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <title></title>
    <link rel="stylesheet" href="https://unpkg.com/bamboo.css@1.3.11/dist/dark.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="shortcut icon" href="/favicon.ico">
  </head>
  <body>
  </body>
</html>
```

## Run

```shell
rerun nohup ruby app.rb &
```

```shell
$ crontab -l
@reboot $HOME/foo/reboot.sh

$ cat $HOME/foo/reboot.sh
#!/usr/bin/bash

set -ex

source "$HOME/.envrc"
source "$HOME/.asdf/asdf.sh"

cd "$HOME/foo" || exit
nohup ruby app.rb &
```
