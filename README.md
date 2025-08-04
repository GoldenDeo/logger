## Build
```shell
docker build -t log-ui .
```

## Run
```shell
docker run --rm -d \
  --name main \          
  -p 8555:8888 \
  -v "$(pwd)/local.main.log:/app/logs/log.json:ro" \
  log-ui

```