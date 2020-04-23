FROM golang:alpine as dev
WORKDIR /
COPY *.mod .
COPY *.go .
RUN go env -w GO111MODULE=on
RUN go env -w GOPROXY=https://goproxy.cn,direct
RUN go build -o apiservice
