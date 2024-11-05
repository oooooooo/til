# John the Ripper

<https://github.com/openwall/john/tree/bleeding-jumbo>

```shell
zip2john foo.zip > foo.hash
john --incremental=Digits --min-length=1 --max-length=8 foo.hash
# OR
john --incremental=ASCII --min-length=1 --max-length=8 foo.hash
```

<https://github.com/openwall/john/blob/bleeding-jumbo/doc/OPTIONS>
