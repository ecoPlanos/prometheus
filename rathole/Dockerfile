FROM alpine:latest

RUN apk update
RUN apk upgrade
RUN apk add curl wget

WORKDIR /app

COPY get_rathole.sh /app/
RUN sh get_rathole.sh
RUN rm get_rathole.sh
