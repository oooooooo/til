# CSV

<https://docs.ruby-lang.org/ja/latest/class/CSV.html>

## Invalid byte sequence in UTF-8

```ruby
require 'csv'

File.open(csv_file, 'r:bom|utf-8').each do |line|
  line.encode!('UTF-8', 'binary', invalid: :replace, undef: :replace, replace: '')
  CSV.parse(line) do |row|
  end
end
```
