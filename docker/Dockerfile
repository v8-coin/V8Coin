FROM debian:stretch
LABEL maintainer="V8COIN Developers <dev@v8coin.org>"
LABEL description="Dockerised V8COINCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
