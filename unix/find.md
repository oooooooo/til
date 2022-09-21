# find

```shell
find . -name '*.html' | xargs -n 10 sed -i 's/OLD/NEW/g'
```

```shell
find . -name '*.html' | xargs -n 10 nkf -w -Lu --overwrite
```
