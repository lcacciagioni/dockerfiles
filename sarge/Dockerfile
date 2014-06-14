# Sarge Image Build File
FROM wyaeld/sarge
MAINTAINER Leandro Cacciagioni <leandro.cacciagioni@surhive.com>

# Here we update the system and install the base packages that we will need
RUN apt-get -qq update
RUN apt-get -qqy install apache-perl mysql-client-4.1 libmysqlclient14 openssl libapache-dbi-perl libhtml-embperl-perl libtemplate-perl libcache-memcached-perl libxml-libxml-perl libwww-curl-perl libnet-ssleay-perl libmd5-perl libdigest-sha1-perl libmath-round-perl libdatetime-perl libdate-calc-perl libdate-manip-perl libmail-bulkmail-perl liblocale-maketext-lexicon-perl libexception-class-perl libtest-class-perl libtest-exception-perl libyaml-perl libapache-sessionx-perl libbsd-resource-perl libdbi-perl wget
# Here we download from our Amazon S3 account our custom compiled packages and install them
RUN wget https://s3-eu-west-1.amazonaws.com/surhivedebs/sarge/libjson-xs-perl_2.300-1_i386.deb && dpkg -i libjson-xs-perl_2.300-1_i386.deb
RUN wget https://s3-eu-west-1.amazonaws.com/surhivedebs/sarge/libmath-clipper-perl_1.09-1_i386.deb && dpkg -i libmath-clipper-perl_1.09-1_i386.deb
RUN wget https://s3-eu-west-1.amazonaws.com/surhivedebs/sarge/libno-worries-perl_1.1-1_all.deb && dpkg -i libno-worries-perl_1.1-1_all.deb
RUN wget https://s3-eu-west-1.amazonaws.com/surhivedebs/sarge/libnet-stomp-client-perl_2.2-1_all.deb && dpkg -i libnet-stomp-client-perl_2.2-1_all.deb

