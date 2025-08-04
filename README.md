## Build
```shell
docker build -t log-ui .
```

## Run
```shell
docker run --rm -d \
  --name logviewer-main \
  -p 8555:8888 \
  -v "$(pwd)/local.main.log:/root/.jlogviewer/data/local.main.log:ro" \
  log-ui
```