# tshark 2.6.0
# CVE-2019-10901 (CWE 476)
# CVE-2019-9214  (CWE 476)
# CVE-2019-9208  (CWE 476)
# CVE-2019-5719  (CWE 476)
# CVE-2018-19624 (CWE 476)
# CVE-2018-18227 (CWE 476)
# CVE-2018-11359 (CWE 476)
# CVE-2018-11356 (CWE 476)

FROM binaryanalysisplatform/bap-artifacts:build-wireshark-2.6.0 as builder

FROM debian:stable-slim
WORKDIR /artifact
COPY --from=builder /build/bin/tshark /artifact
