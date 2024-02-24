FROM golang:1.22

WORKDIR /app

COPY cmd/go.mod ./cmd/go.mod
COPY cmd/main.go ./cmd/main.go
COPY index.html .

WORKDIR /app/cmd
RUN go build -o bin .

ENTRYPOINT [ "/app/cmd/bin" ]
