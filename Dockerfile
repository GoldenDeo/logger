FROM node:18-alpine

RUN apk add --no-cache \
      git \
      python3 \
      make \
      g++

WORKDIR /app

RUN git clone https://github.com/allproxy/json-log-viewer.git . \
 && npm install --production

EXPOSE 8080

ENTRYPOINT ["npm","start"]
