# Omakase

[Rails is omakase (DHH)](https://dhh.dk/2012/rails-is-omakase.html)

## Rails 8

- [今Rails 8アプリを作るなら何も足さないバニラ味にしよう（翻訳）｜TechRacho by BPS株式会社](https://techracho.bpsinc.jp/hachi8833/2024_12_26/147538)
- [DHH氏がRails 8の新機能を解説。Redisなど不要になり、SQLite対応でよりシンプルな構成に。Rails World 2024 － Publickey](https://www.publickey1.jp/blog/24/dhhrails_8redissqliterails_world_2024.html)

- erb
  - [Railsで使うビューテンプレートエンジンのベンチマーク2025 - おもしろwebサービス開発日記](https://blog.willnet.in/entry/2025/03/16/181923)
- minitest
- Solid Cache
  - Redis ではなく sqlite
- Kamal

## 10 Advanced Ruby on Rails Features

[Pocket - 10 Advanced Ruby on Rails Features](https://getpocket.com/ja/read/d45TWA5egaoW1J9463deb40ve6p1gc3b047GdrJ786R0VHT529485V2bx9fqAc3c_f8d0afa52c38562b2e824e6c5bde52cb)

### Strict Lading

```ruby
class Article < ApplicationRecord
  strict_loading_by_default
end
```

[flyerhzm/bullet: help to kill N+1 queries and unused eager loading](https://github.com/flyerhzm/bullet) 不要

### Multi-Database Connection Switching & Sharding

[Multiple Databases with Active Record — Ruby on Rails Guides](https://guides.rubyonrails.org/active_record_multiple_databases.html)

### Asynchronous Queries

```ruby
pposts   = Post.published.order(created_at: :desc).load_async
authors = Author.popular.limit(10).load_async
```

### Built-in Rate Limiting

```ruby
class Api::SessionsController < ActionController::API
  rate_limit to: 10, within: 1.minute, only: :create
end
```

> Exceeding the limit triggers an automatic HTTP 429.

## 保留 (2025-04-27)

ポスト CoffeeScript

- rubocop-rails-omakase
  - ほとんど何もチェックしない。rubocop デフォルトがよい
  - [rubocop-rails-omakaseとは何か？ - koicの日記](https://koic.hatenablog.com/entry/what-is-rubocop-rails-omakase)
- import maps, Webpacker
  - vite でよくないか
- Hotwire, Turbo, Stimulus
  - Turbolinks のように、また変わりそう
- ActionCable
  - websockets/ws や Gorilla WebSocket に比べて複雑じゃない？
