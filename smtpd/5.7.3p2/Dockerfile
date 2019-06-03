# smtpd 5.7.3p2

FROM binaryanalysisplatform/bap-artifacts:build-opensmtpd-5.7.3p2 as builder

FROM debian:stable-slim
WORKDIR /artifact
COPY --from=builder /build/sbin/smtpd /artifact
