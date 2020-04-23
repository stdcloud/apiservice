FROM golang:alpine as dev
WORKDIR /
COPY *.mod .
COPY *.go .
RUN go build -o apiservice
