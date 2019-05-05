FROM dockage/alpine:3.7

LABEL maintainer="m.abdolirad@gmail.com" \
    org.label-schema.name="php" \
    org.label-schema.vendor="Dockage" \
    org.label-schema.description="Docker PHP image built on Alpine Linux" \
    org.label-schema.version="7.0" \
    org.label-schema.license="MIT"

RUN wget -O /etc/apk/keys/phpearth.rsa.pub https://repos.php.earth/alpine/phpearth.rsa.pub \
    && echo "https://repos.php.earth/alpine/v3.7" >> /etc/apk/repositories \
    && apk --no-cache --update add php7.0=7.0.33-r1

COPY assets/root/ /

ENTRYPOINT ["entrypoint"]
CMD ["php", "-a"]
