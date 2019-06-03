# sshd 7.3.p1
# CVE-2016-10708 (CWE 476)

FROM binaryanalysisplatform/bap-artifacts:build-openssh-7.3.p1 as builder
FROM debian:stable-slim
WORKDIR /artifact
COPY --from=builder /build/sbin/sshd /artifact
