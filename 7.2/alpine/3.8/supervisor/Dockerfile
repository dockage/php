FROM dockage/alpine:3.8
MAINTAINER Mohammad Abdoli Rad <m.abdolirad@gmail.com>

STOPSIGNAL SIGTERM

LABEL org.label-schema.name="php" \
        org.label-schema.vendor="Dockage" \
        org.label-schema.description="Docker PHP image built on Alpine Linux" \
        org.label-schema.vcs-url="https://github.com/dockage/php" \
        org.label-schema.license="MIT"

RUN apk --no-cache --update add supervisor php7=7.2.10-r0 \
    && sed -i \
        -e 's#logfile=/var/log/supervisord.log#logfile=/proc/self/fd/2#g' \
        -e 's#;nodaemon=\w*\(\s*\)\(.*\)#nodaemon=true\1\2#g' \
        -e 's#;user=\w*\(\s*\)\(.*\)#user=root\1\2#g' \
        /etc/supervisord.conf

CMD ["supervisord", "--configuration=/etc/supervisord.conf"]
