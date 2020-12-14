FROM golang:alpine as goalpine

RUN mkdir /app
COPY hello.go /app
WORKDIR /app
RUN go build hello.go

FROM alpine

COPY --from=goalpine /app/hello /
WORKDIR /
CMD ["./hello"]


