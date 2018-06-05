FROM alpine:edge
MAINTAINER Gabriel Rimes <self@gabrielrimes.net>

EXPOSE 8080

RUN apk add --no-cache vim bash tzdata nodejs yarn
RUN cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
RUN echo "America/Sao_Paulo" > /etc/timezone
RUN apk del tzdata
RUN mkdir -p /app

WORKDIR /app
VOLUME /app
