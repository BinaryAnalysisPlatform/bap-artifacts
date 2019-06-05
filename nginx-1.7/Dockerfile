
FROM nginx:1.7 as builder

FROM debian:stable-slim
WORKDIR /
COPY --from=builder /usr/sbin/nginx  /artifact
