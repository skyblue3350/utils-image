FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y \
 && apt-get install -y --no-install-recommends jq curl bash dnsutils ca-certificates \
 && apt-get autoremove -y \
 && apt-get clean -y \
 && rm -rf /tmp/* /var/tmp/* /var/cache/apt/archives/* /var/lib/apt/lists/*

