FROM dockage/confd:alpine3.7
MAINTAINER Mohammad Abdoli Rad <m.abdolirad@gmail.com>

LABEL org.label-schema.name="php" \
        org.label-schema.vendor="Dockage" \
        org.label-schema.description="Docker PHP image built on Alpine Linux" \
        org.label-schema.vcs-url="https://github.com/dockage/php" \
        org.label-schema.license="MIT"

COPY assets/root/ /

RUN apk --no-cache --update add php7-fpm=7.1.17-r0 \
    && rc-update add php-fpm7 default

EXPOSE 9000
