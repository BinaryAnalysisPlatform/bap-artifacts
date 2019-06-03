# CVE-2018-20651 (CWE 476)
# CVE-2018-18607 (CWE 476)
# CVE-2018-18606 (CWE 476)
# CVE-2018-17794 (CWE 476)
# CVE-2018-17360 (CWE 476)

FROM binaryanalysisplatform/bap-artifacts:build-binutils-2.31.1 as builder

FROM debian:stable-slim
WORKDIR /artifact
COPY --from=builder /build/lib/libbfd-2.31.1.so /artifact
