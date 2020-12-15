FROM golang:alpine as goalpine

RUN mkdir /app
COPY hello.go /app
WORKDIR /app
RUN go build -ldflags="-s -w" hello.go

FROM scratch

COPY --from=goalpine /app/hello /
WORKDIR /
CMD ["./hello"]

