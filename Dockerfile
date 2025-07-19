FROM golang:1.24.3-alpine3.21 AS builder

WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o glance .

FROM alpine:3.21

WORKDIR /app
COPY --from=builder /app/glance .
COPY --from=builder /app/glance.yml .
COPY --from=builder /app/start.sh .

RUN chmod +x start.sh

EXPOSE 8080/tcp
ENTRYPOINT ["./start.sh"]
