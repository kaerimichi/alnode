FROM alpine:edge
MAINTAINER Gabriel Rimes <self@gabrielrimes.net>

RUN apk add --no-cache vim bash nodejs
RUN mkdir -p /app

VOLUME /app

EXPOSE 80
EXPOSE 443

ENTRYPOINT cd /app && npm start
