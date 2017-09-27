FROM golang:1.9-alpine

ENV GOPATH /go

ADD . /go/src/github.com/Adron/blue-land-app
WORKDIR /go/src/github.com/Adron/blue-land-app
