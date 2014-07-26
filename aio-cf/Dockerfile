FROM ubuntu:12.04
MAINTAINER Leandro Cacciagioni <leandro.21.2008@gmail.com>

# Here we will change from dash to bash for the default /bin/sh
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -qqy update

# Here we will try to install all the dependencies that came with the system

RUN apt-get -qqy install curl sudo
RUN curl -s -k -B https://raw.githubusercontent.com/yudai/cf_nise_installer/${INSTALLER_BRANCH:-master}/scripts/bootstrap.sh | bash
