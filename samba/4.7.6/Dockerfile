# samba 4.7.6
# CVE-2018-10918 (CWE 476)

FROM servercontainers/samba:4.7.6 as builder

FROM debian:stable-slim
WORKDIR /artifact
COPY --from=builder /sbin/samba /artifact/
