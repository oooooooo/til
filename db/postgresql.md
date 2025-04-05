# PostgreSQL

## dump & restore

```shell
pg_dump -h $DB_HOST -U $DB_USER -d $DB_NAME --schema-only --file=schema.sql
pg_restore -h $DB_HOST -U $DB_USER -d $DB_NAME schema.sql
```

## cursor

[afair/postgresql_cursor: ActiveRecord PostgreSQL Adapter extension for using a cursor to return a large result set](https://github.com/afair/postgresql_cursor)
