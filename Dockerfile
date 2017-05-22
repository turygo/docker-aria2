FROM alpine:edge
MAINTAINER OpenGG <liy099@gmail.com>

COPY root/ /

RUN set -xe \
    && echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories \
    && apk add --no-cache aria2@edge \
    && chmod +x /init.sh

VOLUME /config /downloads

EXPOSE 6800

ENTRYPOINT ["/init.sh"]
