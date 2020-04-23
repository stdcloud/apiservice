FROM golang:alpine as dev
WORKDIR /
COPY *.mod .
COPY *.go .
RUN go env -w GO111MODULE=on
RUN go env -w GOPROXY=https://goproxy.cn,direct
RUN go build -o apiservice

FROM alpine:latest as prod
MAINTAINER dev
WORKDIR /
COPY --from=dev /apiservice .
EXPOSE 8080
EXPOSE 8081
EXPOSE 8082
ENTRYPOINT ["/apiservice"]
