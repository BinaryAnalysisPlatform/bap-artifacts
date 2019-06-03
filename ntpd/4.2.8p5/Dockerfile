# CVE-2016-9311 (CWE 476)

FROM binaryanalysisplatform/bap-artifacts:build-ntpd-4.2.8p5 as builder

FROM debian:stable-slim
WORKDIR /artifact
COPY --from=builder /build/sbin/ntpd /artifact
