# CVE-2015-7977 (CWE 476)

FROM binaryanalysisplatform/bap-artifacts:build-ntpd-4.2.8p5 as builder

FROM debian:stable-slim
WORKDIR /artifact
COPY --from=builder /build/bin/ntpdc /artifact