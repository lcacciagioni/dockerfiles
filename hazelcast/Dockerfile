FROM ubuntu:14.04
MAINTAINER Leandro David Cacciagioni <leandro.21.2008@gmail.com>
ENV DEBIAN_FRONTEND noninteractive
RUN mkdir -p /opt/hazelcast
WORKDIR /opt/hazelcast
RUN apt-get -qqy update
RUN apt-get -qqy install openjdk-7-jre-headless wget unzip
RUN wget -q -O hazelcast.zip https://s3.amazonaws.com/docker-amg-dsp/hazelcast-3.2.5.zip
RUN unzip -qq hazelcast.zip && rm hazelcast.zip
ADD hazelcast-conf.xml /opt/hazelcast
ADD start.sh /opt/hazelcast
RUN chmod 755 /opt/hazelcast/start.sh
EXPOSE 5701:5801
CMD /opt/hazelcast/start.sh
