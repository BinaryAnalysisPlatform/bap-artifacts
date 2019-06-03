# sqlite3 3.27.2
# CVE-2019-9937 (CWE 476)

FROM binaryanalysisplatform/bap-artifacts:build-sqlite-3.27.2 as builder

FROM debian:stable-slim
WORKDIR /artifact
COPY --from=builder /build/sqlite3 /artifact
