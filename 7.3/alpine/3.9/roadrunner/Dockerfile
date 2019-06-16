FROM dockage/alpine:3.9

ENV ROADRUNNER_VERSION=1.4.3

LABEL maintainer="m.abdolirad@gmail.com" \
    org.label-schema.name="php" \
    org.label-schema.vendor="Dockage" \
    org.label-schema.description="Docker PHP image built on Alpine Linux" \
    org.label-schema.version="7.3" \
    org.label-schema.license="MIT"

RUN wget -O /etc/apk/keys/phpearth.rsa.pub https://repos.php.earth/alpine/phpearth.rsa.pub \
    && echo "https://repos.php.earth/alpine/v3.9" >> /etc/apk/repositories \
    && apk --no-cache --update add php7.3=7.3.4-r0 \
    ## Installing RoadRunner
    && wget https://github.com/spiral/roadrunner/releases/download/v${ROADRUNNER_VERSION}/roadrunner-${ROADRUNNER_VERSION}-linux-amd64.tar.gz \
    && tar -xzvf roadrunner-${ROADRUNNER_VERSION}-linux-amd64.tar.gz \
    && cp ./roadrunner-${ROADRUNNER_VERSION}-linux-amd64/rr /usr/bin/ \
    && rm -rf ./roadrunner-${ROADRUNNER_VERSION}-linux-amd64/ && rm ./roadrunner-${ROADRUNNER_VERSION}-linux-amd64.tar.gz

COPY assets/root/ /

EXPOSE 80

ENTRYPOINT ["entrypoint"]
CMD ["/usr/bin/rr", "serve", "-c", "/etc/roadrunner/rr.yaml", "-v"]
