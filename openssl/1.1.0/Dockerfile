# openssl 1.1.0
# CVE-2016-7053 (CWE 476)
# CVE-2017-3730 (CWE 476)

FROM binaryanalysisplatform/bap-artifacts:build-openssl-1.1.0 as builder

FROM debian:stable-slim
WORKDIR /artifact
COPY --from=builder /build/bin/openssl /artifact
