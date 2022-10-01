FROM golang:1.16.3-alpine3.13 AS builder

WORKDIR /go/src/app
COPY . .

RUN go mod download
RUN go build -o /go/bin/app

FROM alpine:3.13

COPY --from=builder /go/bin/app /go/bin/app

ENTRYPOINT ["/go/bin/app"]
