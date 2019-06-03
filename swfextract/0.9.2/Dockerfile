# CVE-2017-11100 (CWE 476)

FROM binaryanalysisplatform/bap-artifacts:build-swftools-0.9.2 as builder

FROM debian:stable-slim
WORKDIR /artifact
COPY --from=builder /build/bin/swfextract /artifact
