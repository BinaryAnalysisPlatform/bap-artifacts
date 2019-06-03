# wpa_cli 2.2

FROM binaryanalysisplatform/bap-artifacts:build-wpa_supplicant-2.2 as builder

FROM debian:stable-slim
WORKDIR /artifact
COPY --from=builder /build/wpa_cli /artifact
