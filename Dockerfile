FROM ubuntu:focal
LABEL maintainer "Andrei Poenaru <docker@simd.stream>"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
        g++ clang \
        make cmake ninja-build \
        python3 python3-pip \
        pkg-config \
        protobuf-compiler libprotobuf-dev && \
    pip3 --no-cache-dir install meson && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

