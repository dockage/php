FROM dockage/alpine:3.9

LABEL maintainer="m.abdolirad@gmail.com" \
    org.label-schema.name="php" \
    org.label-schema.vendor="Dockage" \
    org.label-schema.description="Docker PHP image built on Alpine Linux" \
    org.label-schema.version="7.2" \
    org.label-schema.license="MIT"

RUN wget -O /etc/apk/keys/phpearth.rsa.pub https://repos.php.earth/alpine/phpearth.rsa.pub \
    && echo "https://repos.php.earth/alpine/v3.9" >> /etc/apk/repositories \
    && apk --no-cache --update add php7.2=7.2.17-r0

COPY assets/root/ /

ENTRYPOINT ["entrypoint"]
CMD ["php", "-a"]
