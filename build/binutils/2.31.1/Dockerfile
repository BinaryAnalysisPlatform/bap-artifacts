# binutils 2.31.1

FROM debian:stable-slim as builder

WORKDIR /build
RUN apt-get update && apt-get install -y build-essential wget

RUN wget https://ftp.gnu.org/gnu/binutils/binutils-2.31.1.tar.gz && \
    tar xzf binutils-2.31.1.tar.gz && \
    cd binutils-2.31.1 && \
    ./configure --prefix=/build --enable-shared && make && make install
