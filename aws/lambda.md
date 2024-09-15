# Lambda

## Template

### Environment

```yaml
    Properties:
      Variables:
          FOO: 'blur'
          BAR: |
            lime1
            line2
```

### POST/GET

```yaml
    Properties:
      Events:
        GetPage:
          Type: Api
          Properties:
            Path: /hello
            Method: get
        PostPage:
          Type: Api
          Properties:
            Path: /hello
            Method: post
```

## Functional URL

Add FunctionUrlConfig and HelloWorldFunctionURL.

```yaml
Resources:
  HelloWorldFunction:
    Type: AWS::Serverless::Function # More info about Function Resource: https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#awsserverlessfunction
    Properties:
      CodeUri: hello_world/
      Handler: app.lambda_handler
      Runtime: python3.12
      Architectures:
        - x86_64
      Events:
        HelloWorld:
          Type: Api # More info about API Event Source: https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#api
          Properties:
            Path: /hello
            Method: get
      FunctionUrlConfig:
        AuthType: NONE

Outputs:
  # ServerlessRestApi is an implicit API created out of Events key under Serverless::Function
  # Find out more about other implicit resources you can reference within SAM
  # https://github.com/awslabs/serverless-application-model/blob/master/docs/internals/generated_resources.rst#api
  HelloWorldApi:
    Description: "API Gateway endpoint URL for Prod stage for Hello World function"
    Value: !Sub "https://${ServerlessRestApi}.execute-api.${AWS::Region}.amazonaws.com/Prod/hello/"
  HelloWorldFunction:
    Description: "Hello World Lambda Function ARN"
    Value: !GetAtt HelloWorldFunction.Arn
  HelloWorldFunctionIamRole:
    Description: "Implicit IAM Role created for Hello World function"
    Value: !GetAtt HelloWorldFunctionRole.Arn
  HelloWorldFunctionUrl:
    Description: "Function URL endpoint"
    Value: !GetAtt HelloWorldFunctionUrl.FunctionUrl
```

- <https://docs.aws.amazon.com/lambda/latest/dg/lambda-urls.html>
- <https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/sam-property-function-functionurlconfig.html>

## Ruby

### Bundle

```shell
bundle config set --local path 'vendor/bundle' && bundle install
```

<https://docs.aws.amazon.com/lambda/latest/dg/ruby-package.html>

### Header

```ruby
  headers = {
    'Content-Type': 'text/html'
  }

  {
    statusCode: 200,
    headers:,
    body:
  }
```

### Params

```ruby
  # form
  params = event['queryStringParameters'] || {}

  # json
  params = JSON.parse(event['body'] || {})
```

## Resource

- [Lambda Cold Starts analysis](https://maxday.github.io/lambda-perf/)

