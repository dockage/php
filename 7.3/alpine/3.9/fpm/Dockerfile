FROM dockage/alpine:3.9

LABEL maintainer="m.abdolirad@gmail.com" \
    org.label-schema.name="php" \
    org.label-schema.vendor="Dockage" \
    org.label-schema.description="Docker PHP image built on Alpine Linux" \
    org.label-schema.version="7.3" \
    org.label-schema.license="MIT"

RUN wget -O /etc/apk/keys/phpearth.rsa.pub https://repos.php.earth/alpine/phpearth.rsa.pub \
    && echo "https://repos.php.earth/alpine/v3.9" >> /etc/apk/repositories \
    && apk --no-cache --update add php7.3-fpm=7.3.4-r0 \
    && sed -i -e 's#pid =\(.*\)#;pid =\1#g' /etc/php/7.3/php-fpm.conf

COPY assets/root/ /

# Override stop signal to stop process gracefully
# https://github.com/php/php-src/blob/17baa87faddc2550def3ae7314236826bc1b1398/sapi/fpm/php-fpm.8.in#L163
STOPSIGNAL SIGQUIT

EXPOSE 9000

ENTRYPOINT ["entrypoint"]
CMD ["php-fpm"]
