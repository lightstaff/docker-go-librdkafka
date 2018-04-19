FROM golang:1.10-alpine

RUN apk add --no-cache git openssh make bash build-base

WORKDIR /tmp

RUN git clone https://github.com/edenhill/librdkafka.git && \
    cd librdkafka && \
    ./configure --prefix /usr && \
    make && \
    make install

WORKDIR $GOPATH