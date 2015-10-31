FROM php:5.6-cli
MAINTAINER Mohammad Abdoli Rad <m.abdolirad@gmail.com>

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y nano git wget php5-tidy php5-intl \
 && rm -rf /var/lib/apt/lists/*

 COPY /assets/install.sh /usr/bin/install.sh
 RUN chmod 755 /usr/bin/install.sh && /usr/bin/install.sh
