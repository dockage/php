FROM dockage/alpine:3.9

STOPSIGNAL SIGTERM

LABEL maintainer="m.abdolirad@gmail.com" \
    org.label-schema.name="php" \
    org.label-schema.vendor="Dockage" \
    org.label-schema.description="Docker PHP image built on Alpine Linux" \
    org.label-schema.version="7.3" \
    org.label-schema.license="MIT"

RUN wget -O /etc/apk/keys/phpearth.rsa.pub https://repos.php.earth/alpine/phpearth.rsa.pub \
    && echo "https://repos.php.earth/alpine/v3.9" >> /etc/apk/repositories \
    && apk --no-cache --update add supervisor php7.3=7.3.3-r0 \
    && mkdir -p /etc/supervisor.d \
    && sed -i \
        -e 's#;nodaemon=\w*\(\s*\)\(.*\)#nodaemon=true\1\2#g' \
        -e 's#;user=\w*\(\s*\)\(.*\)#user=root\1\2#g' \
        /etc/supervisord.conf

COPY assets/root/ /

ENTRYPOINT ["entrypoint"]
CMD ["supervisord", "--configuration=/etc/supervisord.conf"]
