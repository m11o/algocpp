FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y build-essential cmake clang libssl-dev vim

ENV $PATH /project
WORKDIR $PATH

ADD . $PATH