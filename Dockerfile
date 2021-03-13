FROM golang:1.16-alpine

ADD . /go/src/app

WORKDIR /go/src/app

RUN  go mod init && go mod tidy && go build -o server main.go

CMD ["./server"]


