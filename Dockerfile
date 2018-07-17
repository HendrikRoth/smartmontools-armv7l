FROM resnullius/alpine-armv7l:3.3

ARG VERSION

LABEL maintainer="Hendrik Roth" \
        org.label-schema.name="Smartmontools" \
        org.label-schema.version=$VERSION

# Let's roll
RUN set -xe && \
    apk add --no-cache \
    smartmontools ssmtp

ENTRYPOINT ["/usr/sbin/smartd", "--debug"]