FROM golang:1.10-alpine

WORKDIR /go/src/app
COPY . .

RUN go install -v ./...

CMD ["app"]
