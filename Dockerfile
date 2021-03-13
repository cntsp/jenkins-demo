FROM golang:1.16-alpine

ENV GOPROXY="https://goproxy.cn,direct"

ADD . /go/src/app

WORKDIR /go/src/app

RUN rm -rf go.mod go.sum && go mod init && go mod tidy && go build -o server main.go

CMD ["./server"]


