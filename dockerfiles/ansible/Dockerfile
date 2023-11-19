FROM ubuntu:latest

ARG USER_NAME="ansible"
ARG USER_UID=1000
ARG GROUP_NAME="ansible"
ARG GROUP_GID=1000
ARG USER_PASSWORD="ansible"

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
    git
# Requires software-properties-common
RUN apt-add-repository -y ppa:ansible/ansible
RUN apt-get update && apt-get install -y \
    ansible

# Create a new group
RUN groupadd -g ${GROUP_GID} ${GROUP_NAME}

# Create a new user and add them to the group
RUN useradd -m -s /bin/bash -u ${USER_UID} -g ${GROUP_NAME} -G sudo ${USER_NAME}

RUN echo ${USER_NAME}:${USER_PASSWORD} | chpasswd

# Add the user to sudoers with NOPASSWD
RUN echo "${USER_NAME} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Switch to the new user
USER ${USER_NAME}
