FROM ubuntu:16.04

# Avoid interactive prompts during build
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y sudo git mercurial scons swig gcc m4 python python-dev libgoogle-perftools-dev g++ && \
    git clone https://github.com/CSL-KU/detmem && \
    cd detmem && \
    git submodule update --init && \
    apt-get install bc && \
    apt-get install && \
    apt-get install -y zlib1g-dev
# Default command when container starts
CMD ["bash"]
