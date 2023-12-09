FROM ubuntu:latest


ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC
ENV LANGUAGE=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8

RUN apt-get update && apt-get install -y \
    sudo \
    iputils-ping \
    dnsutils \
    openssh-client \
    software-properties-common \
    git \
    pip

# Requires software-properties-common
RUN apt-add-repository -y ppa:ansible/ansible
RUN apt-get update && apt-get install -y \
    ansible

RUN pip install --upgrade pip

RUN pip install \
    google-auth
