FROM dockage/alpine:3.8
MAINTAINER Mohammad Abdoli Rad <m.abdolirad@gmail.com>

LABEL org.label-schema.name="php" \
        org.label-schema.vendor="Dockage" \
        org.label-schema.description="Docker PHP image built on Alpine Linux" \
        org.label-schema.vcs-url="https://github.com/dockage/php" \
        org.label-schema.license="MIT"

RUN apk --no-cache --update add php7-fpm=7.2.10-r0 \
    && ln -s /usr/sbin/php-fpm7 /usr/sbin/php-fpm \
    && sed -i \
        -e 's#;error_log =.*#error_log = /proc/self/fd/2#g' \
        -e 's#;daemonize =.*#daemonize = no#g' \
        /etc/php7/php-fpm.conf \
    && sed -i \
        # if we send this to /proc/self/fd/1, it never appears
        -e 's#;access.log =.*#access.log = /proc/self/fd/2#g' \
        -e 's#;clear_env =.*#clear_env = no#g' \
        # Ensure worker stdout and stderr are sent to the main error log.
        -e 's#;catch_workers_output =.*#catch_workers_output = yes#g' \
        -e 's#listen =.*#listen = 9000#g' \
        /etc/php7/php-fpm.d/www.conf

COPY assets/root/ /

EXPOSE 9000

ENTRYPOINT ["entrypoint"]
CMD ["php-fpm"]
