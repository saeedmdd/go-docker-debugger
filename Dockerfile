FROM golang:latest

ARG WWWUSER


WORKDIR /app

RUN apt update -y && apt upgrade -y

RUN mkdir "/.cache"
RUN chown $WWWUSER /.cache

RUN go install github.com/go-delve/delve/cmd/dlv@latest