FROM dockage/alpine:3.8

STOPSIGNAL SIGTERM

LABEL maintainer="m.abdolirad@gmail.com" \
    org.label-schema.name="php" \
    org.label-schema.vendor="Dockage" \
    org.label-schema.description="Docker PHP image built on Alpine Linux" \
    org.label-schema.version="7.3" \
    org.label-schema.license="MIT"

RUN  wget -O /etc/apk/keys/phpearth.rsa.pub https://repos.php.earth/alpine/phpearth.rsa.pub \
    && echo "https://repos.php.earth/alpine/v3.8" >> /etc/apk/repositories \
    &&  apk --no-cache --update add php7.3=7.3.3-r0 php7.3-fpm=7.3.3-r0 \
    && sed -i \
        -e 's#;error_log =.*#error_log = /proc/self/fd/2#g' \
        -e 's#;daemonize =.*#daemonize = no#g' \
        /etc/php/7.3/php-fpm.conf \
    && sed -i \
        # if we send this to /proc/self/fd/1, it never appears
        -e 's#;access.log =.*#access.log = /proc/self/fd/2#g' \
        -e 's#;clear_env =.*#clear_env = no#g' \
        # Ensure worker stdout and stderr are sent to the main error log.
        -e 's#;catch_workers_output =.*#catch_workers_output = yes#g' \
        -e 's#listen =.*#listen = 9000#g' \
        /etc/php/7.3/php-fpm.d/www.conf

COPY assets/root/ /

EXPOSE 9000

ENTRYPOINT ["entrypoint"]
CMD ["cli"]
