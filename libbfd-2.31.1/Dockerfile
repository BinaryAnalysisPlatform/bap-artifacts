# CVE-2018-20651 (CWE 476)
# CVE-2018-18607 (CWE 476)
# CVE-2018-18606 (CWE 476)
# CVE-2018-17794 (CWE 476)
# CVE-2018-17360 (CWE 476)

FROM debian:stable-slim as builder

WORKDIR /build
RUN apt-get update && apt-get install -y build-essential wget

RUN wget https://ftp.gnu.org/gnu/binutils/binutils-2.31.1.tar.gz && \
    tar xzf binutils-2.31.1.tar.gz && \
    cd binutils-2.31.1 && \
    ./configure --prefix=/build --enable-shared && make && make install && \
    cp /build/lib/libbfd-2.31.1.so /build/libbfd.so

FROM debian:stable-slim
WORKDIR /artifact
COPY --from=builder /build/libbfd.so /artifact
