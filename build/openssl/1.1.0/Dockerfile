# openssl 1.1.0

FROM debian:stable-slim

WORKDIR /build
RUN apt-get update && apt-get install -y build-essential wget

RUN wget https://github.com/openssl/openssl/archive/OpenSSL_1_1_0.tar.gz && \
    tar xzf OpenSSL_1_1_0.tar.gz && \
    cd openssl-OpenSSL_1_1_0 && \
    ./config --prefix=/build && make && make install
