FROM golang:alpine

RUN echo "package main; \
import \"fmt\"; \
func main() { \
fmt.Println(\"Code.education Rocks!\") }" > hello_world.go

ENTRYPOINT ["go", "run", "hello_world.go"]

CMD ["echo", "end"]

