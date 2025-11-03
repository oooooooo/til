# CloudWatch

## Logs

### awslogs

```shell
pip install awslogs
awslogs groups
awslogs get /aws/lambda/... --watch
awslogs get /aws/lambda/... --start='3m'
awslogs get /aws/lambda/... --start='2025-01-02 3:00'
awslogs get /aws/lambda/... --start='1w' --filter-pattern='DEBUG'
awslogs get /aws/lambda/... --query=message
```

[jorgebastida/awslogs: AWS CloudWatch logs for Humans™](https://github.com/jorgebastida/awslogs)
