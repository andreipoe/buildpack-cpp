FROM ubuntu:focal
LABEL maintainer "Andrei Poenaru <docker@simd.stream>"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
        g++ clang \
        make cmake ninja-build \
        python3 python3-pip \
        protobuf-compiler libprotobuf-dev && \
    apt-get clean && \
    pip3 --no-cache-dir install meson

