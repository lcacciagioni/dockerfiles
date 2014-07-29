FROM ubuntu:14.04
MAINTAINER Leandro Cacciagioni <leandro.21.2008@gmail.com>

# Here we will change from dash to bash for the default /bin/sh
ENV DEBIAN_FRONTEND noninteractive
ENV INSTALLER_URL https://github.com/lcacciagioni/cf_nise_installer.git
ENV CF_RELEASE_BRANCH v176
ENV NISE_IP_ADDRESS 192.168.55.55
ENV NISE_DOMAIN 192.168.55.55.xip.io
RUN apt-get -qqy update
RUN mkdir -p /opt/installer
WORKDIR /opt/installer

# Here we will try to install all the dependencies that came with the system

RUN apt-get -qqy install curl sudo
RUN curl -s -k -B https://raw.githubusercontent.com/yudai/cf_nise_installer/${INSTALLER_BRANCH:-master}/scripts/bootstrap.sh | bash
RUN apt-get -qqy clean && apt-get -qqy autoremove
