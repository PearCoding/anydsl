#! /bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
DOCKER_USER=pearcoding

cd $SCRIPT_DIR
# Build all docker image flavours
docker build -t $DOCKER_USER/anydsl:latest-avx2-jit -f Dockerfile-AVX2-JIT ..
docker build -t $DOCKER_USER/anydsl:latest-cuda-jit -f Dockerfile-CUDA-JIT ..
