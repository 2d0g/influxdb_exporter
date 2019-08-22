ARG ARCH="amd64"
ARG OS="linux"
FROM quay.io/prometheus/busybox-${OS}-${ARCH}:latest
LABEL maintainer="The Prometheus Authors <prometheus-developers@googlegroups.com>"

ARG ARCH="amd64"
ARG OS="linux"
RUN make
COPY influxdb_exporter /bin/influxdb_exporter

USER        nobody
EXPOSE      80
CMD ["/bin/influxdb_exporter", "--web.listen-address=:80", "--timestamps"]
