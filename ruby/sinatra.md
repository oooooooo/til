# Sinatra

## Template

### Gemfile

```ruby
# frozen_string_literal: true

source 'https://rubygems.org'

gem 'sinatra'

gem 'activerecord'
gem 'activesupport'
# gem 'mysql2'
# gem 'pg'
# gem 'sqlite3'

gem 'puma'
gem 'rackup'

group :development do
  gem 'rerun'
  gem 'rubocop'
  gem 'ruby-lsp', require: false
end
```

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


get '/' do
  content_type :json
  puts params.to_json
end

post '/' do
  params = JSON.parse(request.body.read)
  content_type :json
  { foo: params.foo }.to_json
end
```

## Logger

```ruby
# frozen_string_literal: true

require 'sinatra'

get '/' do
  logger.info params # QueryString and/or x-www-form-urlencoded
  logger.info request.body.read # e.g. application/json
  erb :index
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
    <link rel="stylesheet" href="https://unpkg.com/bamboo.css/dist/dark.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="shortcut icon" href="/favicon.ico">
  </head>
  <body>
  </body>
</html>
```

## DB

### [SQLite] db/connect.rb

```ruby
# frozen_string_literal: true

require 'active_record'

ActiveRecord.default_timezone = :utc
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: ENV.fetch('APP_DB_NAME', nil) # db/foo.db
)
```

### [MySQL] db/connect.rb

```ruby
# frozen_string_literal: true

require 'active_record'

host = ENV.fetch('RDS_HOSTNAME', nil)
username = ENV.fetch('RDS_USERNAME', nil)
password = ENV.fetch('RDS_PASSWORD', nil)
database = ENV.fetch('RDS_DB_NAME', nil)
port = ENV.fetch('RDS_PORT', nil)

ActiveRecord.default_timezone = :utc
ActiveRecord::Base.establish_connection(
  adapter: 'mysql2',
  host:,
  username:,
  password:,
  database:,
  port:
)
```

### db/schema.rb

```ruby
# frozen_string_literal: true

require './connect'

# User
class CreateUserTable < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
CreateUserTable.migrate(:up) unless ActiveRecord::Base.connection.table_exists?(:users)
```

- <https://guides.rubyonrails.org/active_record_migrations.html>
- <https://guides.rubyonrails.org/active_record_basics.html>

### models/user.rb

```ruby
# frozen_string_literal: true

require 'active_record'

# User
class User < ActiveRecord::Base
  self.table_name = 'users'
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
