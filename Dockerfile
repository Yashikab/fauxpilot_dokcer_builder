FROM nvidia/cuda:12.2.0-devel-ubuntu22.04

RUN apt-get update
RUN apt-get install git curl zstd -y

RUN git clone https://github.com/fauxpilot/fauxpilot.git
