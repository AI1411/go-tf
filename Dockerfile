FROM golang:1.17.6

WORKDIR /go/src/ecs-go
COPY go.mod go.sum ./
RUN go mod download

COPY ./ ./
RUN CGO_ENABLED=0 go build -o /work/api .

ENTRYPOINT ["/work/api"]