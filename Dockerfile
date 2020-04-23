FROM golang:alpine as dev
WORKDIR $PWD
RUN go build -o apiservice
