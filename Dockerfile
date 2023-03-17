FROM golang:latest

WORKDIR /app
RUN apt update -y && apt upgrade -y
