# Hash

## ネストした hash のキー確認

```ruby
hash = { a: {a: "A"} }
hash.dig(:b, :b) #=> nil
```

[Rubyでネストしたhashの未定義の要素にnilを返させる方法まとめ #Ruby - Qiita](https://qiita.com/ko-he-8/items/6819e93f76a302bf7597?utm_source=pocket_reader)
