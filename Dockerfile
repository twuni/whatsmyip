FROM docker.io/library/golang:1.19.4-alpine3.17 as builder

COPY . /app

WORKDIR /app

RUN go build .

FROM docker.io/library/alpine:3.17.0 AS production

COPY --from=builder /app/whatsmyip /sbin/whatsmyip

RUN chmod 0555 /sbin/whatsmyip

CMD ["/sbin/whatsmyip"]

