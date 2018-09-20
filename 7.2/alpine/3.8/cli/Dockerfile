FROM php:7.2.10-cli-alpine3.8 as official-image

FROM dockage/alpine3.8
MAINTAINER Mohammad Abdoli Rad <m.abdolirad@gmail.com>

LABEL org.label-schema.name="php" \
        org.label-schema.vendor="Dockage" \
        org.label-schema.description="Docker PHP image built on Alpine Linux" \
        org.label-schema.vcs-url="https://github.com/dockage/php" \
        org.label-schema.license="MIT"

COPY --from=official-image /usr/local/bin/docker-php-entrypoint /usr/local/bin/entrypoint

RUN apk --no-cache --update add php7=7.2.10-r0

CMD ["php", "-a"]
