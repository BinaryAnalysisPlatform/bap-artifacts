# wpa_supplicant 2.2
# CVE-2019-11555 (CWE 476)
# CVE-2015-5316  (CWE 476)

FROM binaryanalysisplatform/bap-artifacts:build-wpa_supplicant-2.2 as builder

FROM debian:stable-slim
WORKDIR /artifact
COPY --from=builder /build/wpa_supplicant /artifact
