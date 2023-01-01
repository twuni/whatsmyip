FROM docker.io/library/golang:1.19.4-alpine3.17 as builder

COPY . /app

WORKDIR /app

RUN go build .

FROM docker.io/library/alpine:3.17.0 AS production

LABEL org.opencontainers.image.authors="Devin Canterberry <devin@canterberry.cc>"
LABEL org.opencontainers.image.url="https://github.com/twuni/whatsmyip"
LABEL org.opencontainers.image.documentation="https://twuni.github.io/whatsmyip/"
LABEL org.opencontainers.image.source="https://github.com/twuni/whatsmyip"
LABEL org.opencontainers.image.vendor="Twuni"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.title="WhatsMyIP"
LABEL org.opencontainers.image.description="A simple HTTPS server that replies to any request with the client IP."

COPY --from=builder /app/whatsmyip /sbin/whatsmyip

RUN chmod 0555 /sbin/whatsmyip

CMD ["/sbin/whatsmyip"]

