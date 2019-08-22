FROM golang:alpine AS build-env

# Add missing git
RUN apk update && \
    apk upgrade && \
    apk add git

# Install
RUN go get -u github.com/prometheus/influxdb_exporter && \
    mv /go/bin/influxdb_exporter /usr/bin/influxdb_exporter && \
    chmod 755 /usr/bin/influxdb_exporter

FROM alpine:latest

CMD ["/usr/bin/influxdb_exporter", "--web.listen-address=:80", "--timestamps"]
