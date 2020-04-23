FROM golang:alpine as dev
WORKDIR /
COPY *.go .
RUN go build -o apiservice
