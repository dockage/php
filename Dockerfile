FROM debian:jessie
MAINTAINER Mohammad Abdoli Rad <m.abdolirad@gmail.com>

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y nano git wget grep mlocate dnsutils \
 php5-cli php5-curl php-pear php5-dev php5-fpm php5-gd php5-intl php5-xdebug php5-xsl php5-tidy \
 && rm -rf /var/lib/apt/lists/*

 COPY /assets/install.sh /usr/bin/install.sh
 RUN chmod 755 /usr/bin/install.sh && /usr/bin/install.sh
