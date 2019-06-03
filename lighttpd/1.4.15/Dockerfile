# CWE 252

FROM binaryanalysisplatform/bap-artifacts:build-lighttpd-1.4.15 as builder

FROM debian:stable-slim
WORKDIR /artifact
COPY --from=builder /build/sbin/lighttpd /artifact/
