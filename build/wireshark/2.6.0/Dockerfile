# wireshark 2.6.0

FROM debian:stable-slim as builder

WORKDIR /build
RUN apt-get update && apt-get install -y build-essential wget

RUN apt-get install -y \
        doxygen bison cmake python libgcrypt20-dev libglib2.0-dev flex libpcap0.8-dev

RUN wget https://www.wireshark.org/download/src/all-versions/wireshark-2.6.0.tar.xz && \
    tar xf wireshark-2.6.0.tar.xz && \
    cd wireshark-2.6.0 && \
    ./configure --prefix=/build --disable-wireshark && make && make install
