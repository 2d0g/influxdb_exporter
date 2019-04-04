FROM harbor.meitu-int.com/alpine/golang:1.10

ARG GOPATH="/go"

RUN apk update && \
    apk upgrade && \
    apk --virtual build-deps add \
      go>1.10 curl git gcc musl-dev make && \
    apk add \
      python py-pip bash && \
    pip install --upgrade pip envtpl && \
    go get -u github.com/2d0g/influxdb_exporter && \
    cp $GOPATH/bin/influxdb_exporter /usr/local/bin && \
    apk del build-deps && \
    rm -rf /var/cache/apk/* $GOPATH/*

EXPOSE 80

CMD ["/usr/local/bin/influxdb_exporter", "--web.listen-address=:80", "--timestamps"]

