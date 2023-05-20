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

