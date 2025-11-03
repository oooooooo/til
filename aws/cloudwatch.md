# CloudWatch

## Logs

### awslogs

```shell
pip install awslogs
awslogs groups
awslogs get /aws/lambda/... --watch
awslogs get /aws/lambda/... --start='3m'
awslogs get /aws/lambda/... --start='1w' --filter-pattern='DEBUG'
awslogs get /aws/lambda/... --query=message
```

> Using specific dates:
> 
> --start='23/1/2015 12:00' Events generated after midday on the 23th of January 2015.
> --start='1/1/2015' Events generated after midnight on the 1st of January 2015.
> --start='Sat Oct 11 17:13:46 UTC 2003' You can use detailed dates too.

- [jorgebastida/awslogs: AWS CloudWatch logs for Humans™](https://github.com/jorgebastida/awslogs)
