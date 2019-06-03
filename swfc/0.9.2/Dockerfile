# CVE-2017-11097 (CWE 476)
# CVE-2017-16711 (CWE 476)

FROM binaryanalysisplatform/bap-artifacts:build-swftools-0.9.2 as builder

FROM debian:stable-slim
WORKDIR /artifact
COPY --from=builder /build/bin/swfc /artifact
