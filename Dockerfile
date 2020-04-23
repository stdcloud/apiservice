FROM golang:alpine as dev
WORKDIR /
COPY *.mod .
COPY *.go .
RUN export GO111MODULE=on
RUN export GOPROXY=https://goproxy.cn
RUN go build -o apiservice
