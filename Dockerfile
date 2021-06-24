FROM golang:1.9-alpine3.8

RUN mkdir /api && \
    apk update && \
    apk add git && \
    go get github.com/julienschmidt/httprouter

COPY test.go /api

EXPOSE 8080

CMD ["go", "run", "/api/test.go"]
