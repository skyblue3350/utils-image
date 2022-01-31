FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y \
 && apt-get install -y --no-install-recommends jq curl bash dnsutils ca-certificates \
 && apt-get autoremove -y \
 && apt-get clean -y \
 && rm -rf /tmp/* /var/tmp/* /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/v1.19.15/bin/linux/amd64/kubectl" \
 && chmod +x ./kubectl \
 && mv ./kubectl /usr/local/bin

