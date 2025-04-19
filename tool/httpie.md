# httpie

## Authentication

```shell
# Basic auth
http -a $USERNAME:$PASSWORD example.com
# Bearer auth
https -A bearer -a $JWT example.com
```

```shell
# NG
http GET -A bearer -a $JWT example.com
# OK
http -A bearer -a $JWT GET example.com
```

<https://httpie.io/docs/cli/authentication>

## Forms

```shell
# <input type="text" name="name" />
http --form POST example.com name='John Smith'
```

```shell
# <input type="file" name="file" />
http --form POST example.com file@sample.txt
```

<https://httpie.io/docs/cli/forms>

## HTTP headers

``Header:value``

```shell
# Chrome
http example.com User-Agent:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36"
# Firefox
http example.com User-Agent:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:137.0) Gecko/20100101 Firefox/137.0"
```

<https://httpie.io/docs/cli/http-headers>

## JSON

```shell
http PUT pie.dev/put \
    name=John \                        # String (default)
    age:=29 \                          # Raw JSON — Number
    married:=false \                   # Raw JSON — Boolean
    hobbies:='["http", "pies"]' \      # Raw JSON — Array
    favorite:='{"tool": "HTTPie"}' \   # Raw JSON — Object
    bookmarks:=@files/data.json \      # Embed JSON file
    description=@files/text.txt        # Embed text file
```

```shell
http POST example.com @sample.json
# or
cat sample.json | http POST example.com
```

<https://httpie.io/docs/cli/non-string-json-fields>

## Proxy

```shell
http --proxy=http:socks5://user:pass@localhost:8888 example.com
```

<https://httpie.io/docs/cli/proxies>
