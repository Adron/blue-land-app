FROM golang:1.9-alpine

ENV GOPATH /go

ADD . /go/src/github.com/Adron/blue-land-app

RUN go install github.com/Adron/blue-land-app

ENTRYPOINT /go/bin/blue-land-app

EXPOSE 8080
