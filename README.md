This is a docker image for smartmontools on an armv7l architecture.

#### Custom usage:
    docker run \
        -d \
        --privileged \
        --name smartmontools \
        hendrikroth/smartmontools-armv7l

#### Compose with your own configuration:

    smartmontools:
        image: hendrikroth/smartmontools-armv7l
        privileged: true
        volumes:
            - ./smartd.conf:/etc/smartd.conf
            - ./ssmtp.conf:/etc/ssmtp/ssmtp.conf
            - ./revaliases:/etc/ssmtp/revaliases
        restart: always
