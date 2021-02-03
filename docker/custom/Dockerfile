FROM gpack-base

ARG DEBIAN_FRONTEND=noninteractive

RUN sudo apt-get update -q && sudo apt-get install -y --no-install-recommends \
    vim \
    && sudo rm -rf /var/lib/apt/lists/*

