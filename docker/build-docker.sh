#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-v8coinpay/v8coind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/v8coind docker/bin/
cp $BUILD_DIR/src/v8coin-cli docker/bin/
cp $BUILD_DIR/src/v8coin-tx docker/bin/
strip docker/bin/v8coind
strip docker/bin/v8coin-cli
strip docker/bin/v8coin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
