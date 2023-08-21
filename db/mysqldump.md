# mysqldump

```shell
mysqldump                  -u root -p -h host database table
# INSERT
mysqldump --no-create-info -u root -p -h host database table
# Schema only
mysqldump --no-data        -u root -p -h host database table
# where
mysqldump                  -u root -p -h host database table --where 'created_at > "2000-01-02 00:00:00"'
```

<https://dev.mysql.com/doc/refman/en/mysqldump.html>
