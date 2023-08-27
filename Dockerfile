FROM nvidia/cuda:12.2.0-devel-ubuntu22.04

RUN apt-get update
RUN apt-get install git -y
