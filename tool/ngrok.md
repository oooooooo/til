# Ngrok

## Silent mode

```shell
ngrok http 3000 --log=stdout > ngrok.log &
```

```shell
pkill ngrok
```

## Get a public_url

```shell
export NGROK=$(curl -s http://localhost:4040/api/tunnels | jq  -r .tunnels[0].public_url | sed 's/^http:/https:/')
 ```
