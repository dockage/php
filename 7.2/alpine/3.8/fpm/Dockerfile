FROM php:7.2.10-fpm-alpine3.8 as official-image

FROM dockage/alpine:3.8
MAINTAINER Mohammad Abdoli Rad <m.abdolirad@gmail.com>

LABEL org.label-schema.name="php" \
        org.label-schema.vendor="Dockage" \
        org.label-schema.description="Docker PHP image built on Alpine Linux" \
        org.label-schema.vcs-url="https://github.com/dockage/php" \
        org.label-schema.license="MIT"

RUN apk --no-cache --update add php7-fpm=7.2.10-r0 \
    && ln -s /usr/sbin/php-fpm7 /usr/sbin/php-fpm

COPY --from=official-image /usr/local/bin/docker-php-entrypoint /usr/local/bin/entrypoint
COPY --from=official-image /usr/local/etc/php-fpm.d/docker.conf /etc/php7/php-fpm.d
COPY --from=official-image /usr/local/etc/php-fpm.d/zz-docker.conf /etc/php7/php-fpm.d

EXPOSE 9000

ENTRYPOINT ["entrypoint"]
CMD ["php-fpm"]
